package com.graduation.activity;

import java.util.Date;

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
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;

import com.baidu.mapapi.BMapManager;
import com.baidu.mapapi.LocationListener;
import com.graduation.Base;
import com.graduation.R;
import com.graduation.entity.EntityGPS;
import com.graduation.entity.EntityLogLogin;
import com.graduation.entity.EntityUser;
import com.graduation.model.ModelUser;
import com.graduation.util.maps.BMapAPI;

public class CopyOfActivityLogin extends ActivityCenter {

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

		mProgressHandler = new ProgressHandler();

		btnLogin = (Button) findViewById(R.id.login_btn_login);
		btnLogin.setOnClickListener(new LoginListener());
	}

	@Override
	protected Dialog onCreateDialog(int id) {
		switch (id) {
		case DIALOG_LOGING_PROGRESS:

			mProgressDialog = new ProgressDialog(CopyOfActivityLogin.this);
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

	private class ProgressHandler extends Handler {
		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);

			if (mProgress >= MAX_PROGRESS) {
				if (entityUser == null) {
					Log.i("ActivityLogin mProgress >= MAX_PROGRESS entityUser=NULL FAILURE",
							"mProgress" + mProgress);
					// mProgress=0;//不断的请求登录
					mProgressDialog.dismiss();
//					Toast.makeText(ActivityLogin.this, "登录失败", Toast.LENGTH_LONG);
				} else {
					Log.i("ActivityLogin mProgress >= MAX_PROGRESS entityUser!=NULL SUCCESS",
							"mProgress" + mProgress); 
						new Thread() {
							public void run() {
								entityLoginLog = new EntityLogLogin();
								entityLoginLog.setLUserID(entityUser.getMyUserID()+"");
								entityLoginLog.setLLocationX(mEntityGPS
										.getLongitude()+"");
								entityLoginLog.setLLocationY(mEntityGPS
										.getLatitude()+"");
								entityLoginLog.setLDate(new Date().toString());
								entityLoginLog.setLisHidden(share.getBoolean(
										Base.USERVISIABLE, false)+"");

								Log.i("GPS", entityLoginLog.getLUserID() + "");
								Log.i("GPS", entityLoginLog.getLLocationX() + "");
								Log.i("GPS", entityLoginLog.getLLocationY() + "");
								Log.i("GPS", entityLoginLog.getLDate() + "");
								Log.i("GPS", entityLoginLog.isLisHidden() + "");
								
//								if (ModelLogLogin.addLoginLog(entityLoginLog)) {
//									// Toast.makeText(ActivityLogin.this,
//									// "新增登录日志成功"+"["+mEntityGPS.getLongitude()+","+mEntityGPS.getLatitude()+"]",Toast.LENGTH_LONG);
//									Log.i("ACTIVITY_MAIN",
//											"INSERT LOG_INFO SUCCESS");
//								} else {
//									// Toast.makeText(ActivityLogin.this,
//									// "新增登录日志失败"+"["+mEntityGPS.getLongitude()+","+mEntityGPS.getLatitude()+"]",Toast.LENGTH_LONG);
//									Log.i("ACTIVITY_MAIN",
//											"INSERT LOG_INFO FAILURE");
//								}
								share.edit()
								.putInt(Base.USERID, entityLoginLog.getLUserID())
								.putString(Base.USERNAME, entityUser.getMyName())
								.putString(Base.USERPASS,entityUser.getMyPass())
								.putString(Base.USEREMAIL,entityUser.getMyEmail())
								.putString(Base.USERPHONE,entityUser.getMyPhone())
								.putString(Base.USERTEL,entityUser.getMyTel()) 
								.putString(Base.USERADDRESS,entityUser.getMyAddress())
								.putString(Base.USERIP,entityUser.getMyIP())
								.putString(Base.USERVIPNAME,entityUser.getMyVipName())
								.putString(Base.USERVIPIMG,entityUser.getMyVipImg())
								.commit(); 
								
								
							}
						}.start();  
					Intent intent = new Intent(CopyOfActivityLogin.this, ActivityCenter.class);
//					intent.putExtra(name, value)
					mProgressDialog.dismiss();
					startActivity(intent);
				}
			} else {
				mProgress++;
				mProgressDialog.incrementProgressBy(1);
				mProgressHandler.sendEmptyMessageDelayed(0, 100);
				Log.i("ActivityLogin mProgress < MAX_PROGRESS entityUser=NULL FAILURE",
						"mProgress" + mProgress);
				if ((entityUser == null) && (mProgress % 30 == 0)) {
					new Thread() {
						public void run() {
							entityUser = ModelUser.getUserInfo(name.getText()
									.toString(), pass.getText().toString());
						}
					}.start();
				} 
			}
		}
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
			showDialog(DIALOG_LOGING_PROGRESS);
			mProgressDialog.setContentView(R.layout.activity_login_loading);// 一定要写在showDialog()之后，否则抛异常
			View mView = LayoutInflater.from(CopyOfActivityLogin.this).inflate(
					R.layout.activity_login_loading, null);
			ImageView mImageView = (ImageView) mView
					.findViewById(R.id.imageViewLoding);
			frameanim = (AnimationDrawable) mImageView.getDrawable();
			frameanim.start();
			mProgressDialog.setContentView(mView);// 一定要写在showDialog()之后，否则抛异常

			mProgress = 0;
			mProgressDialog.setProgress(0);
			mProgressHandler.sendEmptyMessage(0);

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
		}
	}
}
