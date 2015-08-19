package com.graduation.activity;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.AnimationDrawable;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;

import com.baidu.mapapi.BMapManager;
import com.baidu.mapapi.LocationListener;
import com.graduation.Base;
import com.graduation.R;
import com.graduation.entity.EntityGPS;
import com.graduation.entity.EntityLogLogin;
import com.graduation.entity.EntityUser;
import com.graduation.util.maps.BMapAPI;

public class Copy_2_of_ActivityLogin extends Activity {

	private LocationListener mLocationListener = null;// create时注册此listener，Destroy时需要Remove

	SharedPreferences share;

	private static final int DIALOG_LOGING_PROGRESS = 1;
	//
	private static final int MAX_PROGRESS = 100;
	private ProgressDialog mProgressDialog;
	private int mProgress;
	private Handler mProgressHandler;
	private EntityGPS mEntityGPS;

	AnimationDrawable frameanim;

	EntityUser entityUser;
	EntityLogLogin entityLoginLog;
	EditText name;
	EditText pass;
	Button btnLogin;
	CheckBox cbRemember;
	CheckBox cbVisible;  
  
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_login);
		mEntityGPS = new EntityGPS();
		share = getSharedPreferences("Login_Info", 0);
 
		
		// GPS LOCATION 
		BMapAPI app = (BMapAPI) this.getApplication();
		if (app.mBMapMan == null) {
			app.mBMapMan = new BMapManager(getApplication());
			app.mBMapMan.init(app.mStrKey, new BMapAPI.MyGeneralListener());
		}
		app.mBMapMan.start();
		// 注册定位事件
		mLocationListener = new LocationListener() {
			@Override
			public void onLocationChanged(Location location) {
				if (location != null) {
					mEntityGPS.setLatitude(location.getLatitude());
					mEntityGPS.setLongitude(location.getLongitude());
					mEntityGPS.setAltitude(location.getAltitude());
					mEntityGPS.setBearing(location.getBearing());
					mEntityGPS.setSpeed(location.getSpeed());
				}
			}
		};

		name = (EditText) findViewById(R.id.login_edit_account);
		name.setText(share.getString(Base.USERNAME, "").toString());

		pass = (EditText) findViewById(R.id.login_edit_pwd);
		pass.setText(share.getString(Base.USERPASS, "").toString());

		cbRemember = (CheckBox) findViewById(R.id.login_cb_savepwd);
		cbRemember.setChecked(share.getBoolean(Base.USERREMEMBER, false));

		cbVisible = (CheckBox) findViewById(R.id.login_cb_visible);
		cbVisible.setChecked(!share.getBoolean(Base.USERVISIABLE, false));

		btnLogin = (Button) findViewById(R.id.login_btn_login);
		btnLogin.setOnClickListener(new LoginListener());
	}

	@Override
	protected Dialog onCreateDialog(int id) {
		switch (id) {
		case DIALOG_LOGING_PROGRESS:

			mProgressDialog = new ProgressDialog(Copy_2_of_ActivityLogin.this);
			mProgressDialog.setIcon(R.drawable.sys_alert_note);

			mProgressDialog.setTitle(R.string.login_dialog_title);
			// mProgressDialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
			// mProgressDialog.setInverseBackgroundForced(true);
			// mProgressDialog.setProgressStyle(android.R.attr.progressBarStyleLarge);
			mProgressDialog.setButton(
					getResources().getString(R.string.login_dialog_hidden),
					new DialogInterface.OnClickListener() {
						public void onClick(DialogInterface dialog,
								int whichButton) {
							// mProgressDialog.cancel();
						}
					});
			mProgressDialog.setButton2(
					getResources().getString(R.string.login_dialog_cancel),
					new DialogInterface.OnClickListener() {
						public void onClick(DialogInterface dialog,
								int whichButton) {
							mProgressDialog.dismiss();
						}
					});
			return mProgressDialog;

		default:
			break;
		}
		return null;
	}

	@Override
	protected void onPause() {
		BMapAPI app = (BMapAPI) this.getApplication();
		// 移除listener
		app.mBMapMan.getLocationManager().removeUpdates(mLocationListener);
		app.mBMapMan.stop();
		super.onPause();
	}

	@Override
	protected void onResume() {
		BMapAPI app = (BMapAPI) this.getApplication();
		// 注册Listener
		app.mBMapMan.getLocationManager().requestLocationUpdates(
				mLocationListener);
		app.mBMapMan.start();
		super.onResume();
	}

	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if (event.getKeyCode() == event.KEYCODE_ENTER) {
			login();

		}
		return super.onKeyDown(keyCode, event);

	}

	private class LoginListener implements OnClickListener {
		@Override
		public void onClick(View v) {
			login();
		}
	}

	private void login() {
		String mName = name.getText().toString();
		String mPass = pass.getText().toString();

		if (mPass == null || mName == null || mName.trim().length() == 0
				|| mPass.trim().length() == 0) {
			// Toast.makeText(getBaseContext(),R.string.login_null_account,Toast.LENGTH_SHORT);

		} else {
			
			if (cbRemember.isChecked()) {
				share.edit().putString(Base.USERNAME, mName)
						.putString(Base.USERPASS, mPass)
						.putBoolean(Base.USERREMEMBER, cbRemember.isChecked())
						.putBoolean(Base.USERVISIABLE, cbVisible.isChecked())
						.commit();
			} else {
				share.edit().putString(Base.USERNAME, mName)
						.putBoolean(Base.USERREMEMBER, cbRemember.isChecked())
						.putBoolean(Base.USERVISIABLE, cbVisible.isChecked())
						.commit();
			}
//			Intent intent=new Intent(Copy_2_of_ActivityLogin.this,ActivityLoginLoading.class);
//			startActivity(intent);
		}
	} 
}
