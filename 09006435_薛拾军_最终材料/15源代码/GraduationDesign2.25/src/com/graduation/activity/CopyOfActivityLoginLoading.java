package com.graduation.activity;

import java.util.Date;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.AnimationDrawable;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

import com.baidu.mapapi.BMapManager;
import com.baidu.mapapi.LocationListener;
import com.graduation.Base;
import com.graduation.R;
import com.graduation.entity.EntityGPS;
import com.graduation.entity.EntityLogLogin;
import com.graduation.entity.EntityUser;
import com.graduation.model.ModelUser;
import com.graduation.util.maps.BMapAPI;

public class CopyOfActivityLoginLoading extends Activity {

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


		mProgressHandler = new ProgressHandler();
		//
		// new Handler().postDelayed(new Runnable() {
		// @Override
		// public void run() {
		// Intent intent = new Intent
		// (ActivityLoginLoading.this,ActivityCenterHome.class);
		// startActivity(intent);
		// ActivityLoginLoading.this.finish();
		// Toast.makeText(getApplicationContext(), "登录成功",
		// Toast.LENGTH_SHORT).show();
		// }
		// }, 500); 
		View mView = LayoutInflater.from(CopyOfActivityLoginLoading.this).inflate( R.layout.activity_login_loading, null);
		ImageView mImageView = (ImageView) mView
				.findViewById(R.id.imageViewLoding);
		frameanim = (AnimationDrawable) mImageView.getDrawable();
		frameanim.start();
		mProgressDialog.setContentView(mView);// 一定要写在showDialog()之后，否则抛异常

		showDialog(DIALOG_LOGING_PROGRESS);
		
		mProgress = 0;
		mProgressDialog.setProgress(0);
		mProgressHandler.sendEmptyMessage(0);


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

	private class LoginListener implements OnClickListener {
		@Override
		public void onClick(View v) {

			String mName = name.getText().toString();
			String mPass = pass.getText().toString();

			if (mPass == null || mName == null || mName.trim().length() == 0
					|| mPass.trim().length() == 0) {
				// Toast.makeText(getBaseContext(),R.string.login_null_account,Toast.LENGTH_SHORT);
			} else {

			}
		}
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
					// Toast.makeText(ActivityLogin.this, "登录失败",
					// Toast.LENGTH_LONG);
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

							// if (ModelLogLogin.addLoginLog(entityLoginLog)) {
							// // Toast.makeText(ActivityLogin.this,
							// //
							// "新增登录日志成功"+"["+mEntityGPS.getLongitude()+","+mEntityGPS.getLatitude()+"]",Toast.LENGTH_LONG);
							// Log.i("ACTIVITY_MAIN",
							// "INSERT LOG_INFO SUCCESS");
							// } else {
							// // Toast.makeText(ActivityLogin.this,
							// //
							// "新增登录日志失败"+"["+mEntityGPS.getLongitude()+","+mEntityGPS.getLatitude()+"]",Toast.LENGTH_LONG);
							// Log.i("ACTIVITY_MAIN",
							// "INSERT LOG_INFO FAILURE");
							// }
							share.edit()
									.putInt(Base.USERID,
											entityLoginLog.getLUserID())
									.putString(Base.USERNAME,
											entityUser.getMyName())
									.putString(Base.USERPASS,
											entityUser.getMyPass())
									.putString(Base.USEREMAIL,
											entityUser.getMyEmail())
									.putString(Base.USERPHONE,
											entityUser.getMyPhone())
									.putString(Base.USERTEL,
											entityUser.getMyTel())
									.putString(Base.USERADDRESS,
											entityUser.getMyAddress())
									.putString(Base.USERIP,
											entityUser.getMyIP())
									.putString(Base.USERVIPNAME,
											entityUser.getMyVipName())
									.putString(Base.USERVIPIMG,
											entityUser.getMyVipImg()).commit();

						}
					}.start();
					Intent intent = new Intent(CopyOfActivityLoginLoading.this,
							ActivityCenterHome.class);
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
}
