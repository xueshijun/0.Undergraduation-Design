package com.graduation.activity;

import java.util.Date;

import android.app.Activity;
import android.app.Application;
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
import android.widget.ImageView;

import com.baidu.mapapi.BMapManager;
import com.baidu.mapapi.LocationListener;
import com.graduation.Base;
import com.graduation.R;
import com.graduation.entity.EntityGPS;
import com.graduation.entity.EntityLogLogin;
import com.graduation.entity.EntityUser;
import com.graduation.model.ModelLogLogin;
import com.graduation.model.ModelUser;
import com.graduation.util.maps.BMapAPI;

public class ActivityLoginLoading extends Activity {
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
	Bundle extras;
	EntityUser entityUser;
	EntityLogLogin entityLoginLog;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_login_loading);
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

		mProgressHandler = new ProgressHandler();
		extras = getIntent().getExtras();
		if (extras != null) {
			login(extras.getString("mName"), extras.getString("mPass"));
		}
	}

	@Override
	protected Dialog onCreateDialog(int id) {
		switch (id) {
		case DIALOG_LOGING_PROGRESS:

			mProgressDialog = new ProgressDialog(ActivityLoginLoading.this);
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
		Intent intent=new Intent();
		
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
			if (extras != null) {
				login(extras.getString("mName"), extras.getString("mPass"));
			}else if(event.getKeyCode() == event.KEYCODE_BACK){
				finish();
			}
		}
		return super.onKeyDown(keyCode, event);

	}

	private class ProgressHandler extends Handler {
		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);

			if (mProgress >= MAX_PROGRESS) {// 一轮请求结束
				if (entityUser == null) {
					Log.i("ActivityLogin mProgress >= MAX_PROGRESS entityUser=NULL FAILURE",
							"mProgress" + mProgress);
					// mProgress=0;//不断的请求登录
					Intent intent = new Intent();
					intent.putExtra(Base.USERNAME, extras.getString("mName"));
					intent.putExtra(Base.USERPASS, extras.getString("mPass"));
					intent.setClass(ActivityLoginLoading.this,ActivityLogin.class);

					new Thread() {
						public void run() {
							mProgressDialog.dismiss();
						}
					}.start();
					startActivityForResult(intent, 0);
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

							share.edit()
									.putString("LOCATION_X",
											mEntityGPS.getLongitude() + "")
									.putString("LOCATION_Y",
											mEntityGPS.getLatitude() + "")
											.commit();

							entityLoginLog.setLDate(new Date().toString());
							entityLoginLog.setLisHidden(share.getBoolean(
									Base.USERVISIABLE, false)+"");

							 if (ModelLogLogin.addLoginLog(entityLoginLog)) {
							 // Toast.makeText(ActivityLogin.this, "新增登录日志成功"+"["+mEntityGPS.getLongitude()+","+mEntityGPS.getLatitude()+"]",Toast.LENGTH_LONG);
							 Log.i("ACTIVITY_MAIN",
							 "INSERT LOG_INFO SUCCESS");
							 } else {
//							  Toast.makeText(ActivityLogin.this, "新增登录日志失败"+"["+mEntityGPS.getLongitude()+","+mEntityGPS.getLatitude()+"]",Toast.LENGTH_LONG);
							 Log.i("ACTIVITY_MAIN",
							 "INSERT LOG_INFO FAILURE");
							 }
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
					Intent intent = new Intent(ActivityLoginLoading.this,
							ActivityCenter.class);
					new Thread() {
						public void run() {
							mProgressDialog.dismiss();
						}
					}.start();
					startActivity(intent);

				}
			} else {
				mProgress++;
				mProgressDialog.incrementProgressBy(1);
				mProgressHandler.sendEmptyMessageDelayed(0, 100);
				Log.i("ActivityLogin mProgress < MAX_PROGRESS entityUser=NULL FAILURE",
						"mProgress" + mProgress);
//				if ((entityUser == null) && (mProgress % 30 == 0)) {
				if ((entityUser == null) && (mProgress ==30)) {
					new Thread() {
						public void run() {
							entityUser = ModelUser.getUserInfo(
									extras.getString("mName"),
									extras.getString("mPass"));
						}
					}.start();
				}
			}
		}
	}

	private void login(String mName, String mPass) {
		if (mPass == null || mName == null || mName.trim().length() == 0
				|| mPass.trim().length() == 0) {
			// Toast.makeText(getBaseContext(),R.string.login_null_account,Toast.LENGTH_SHORT);
		} else {
			showDialog(DIALOG_LOGING_PROGRESS);
			View mView = LayoutInflater.from(ActivityLoginLoading.this)
					.inflate(R.layout.activity_login_loading_dialog, null);
			mProgressDialog.setContentView(mView);// 一定要写在showDialog()之后，否则抛异常

			ImageView mImageView = (ImageView) mView
					.findViewById(R.id.imageViewLoding);
			frameanim = (AnimationDrawable) mImageView.getDrawable();
			frameanim.start();
			mProgressDialog.setContentView(mView);// 一定要写在showDialog()之后，否则抛异常

			mProgress = 0;
			mProgressDialog.setProgress(0);
			mProgressHandler.sendEmptyMessage(0);

			if (share.getBoolean(Base.USERREMEMBER, false)) {
				share.edit().putString(Base.USERNAME, mName)
						.putString(Base.USERPASS, mPass).commit();
			} else {
				share.edit().putString(Base.USERNAME, mName).commit();
			}
		}
	}
}
