package com.graduation.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Toast;

import com.graduation.Base;
import com.graduation.R;

public class ActivityLogin extends Activity {

	SharedPreferences share;
	//
	EditText name;
	EditText pass;
	Button btnLogin;
	CheckBox cbRemember;
	CheckBox cbVisible;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_login);

		share = getSharedPreferences("Login_Info", 0);

		name = (EditText) findViewById(R.id.login_edit_account);
		name.setText(share.getString(Base.USERNAME, "").toString());

		pass = (EditText) findViewById(R.id.login_edit_pwd);
		pass.setText(share.getString(Base.USERPASS, "").toString());

		cbRemember = (CheckBox) findViewById(R.id.login_cb_savepwd);
		cbRemember.setChecked(share.getBoolean(Base.USERREMEMBER, false));

		cbVisible = (CheckBox) findViewById(R.id.login_cb_visible);
		cbVisible.setChecked(!share.getBoolean(Base.USERVISIABLE, false));

		btnLogin = (Button) findViewById(R.id.login_btn_login);
		btnLogin.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				login();
			}
		});
	}

	@Override
	protected void onPause() {
		super.onPause();
	}

	@Override
	protected void onResume() {
		super.onResume();
	}

	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if (event.getKeyCode() == event.KEYCODE_ENTER) {
			login();
		}
		return super.onKeyDown(keyCode, event);
	}

	private void login() {
		String mName = name.getText().toString();
		String mPass = pass.getText().toString();

		if (mPass == null || mName == null || mName==""|| mPass=="") {
			Toast.makeText(ActivityLogin.this, R.string.login_null_account,
					Toast.LENGTH_SHORT);
		} else {
			if (cbRemember.isChecked()) {
				share.edit()
						.putBoolean(Base.USERREMEMBER, cbRemember.isChecked())
						.putBoolean(Base.USERVISIABLE, cbVisible.isChecked())
						.commit();
			} else {
				share.edit()
						.putBoolean(Base.USERREMEMBER, cbRemember.isChecked())
						.putBoolean(Base.USERVISIABLE, cbVisible.isChecked())
						.commit();
			}
			Log.i("ActivityLogin", mName);
			Log.i("ActivityLogin", mPass);

			Intent intent = new Intent();
			intent.putExtra("mName", mName);
			intent.putExtra("mPass", mPass);
			intent.setClass(ActivityLogin.this, ActivityLoginLoading.class);
			startActivity(intent);
		}
	}

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		super.onActivityResult(requestCode, resultCode, data);
		switch (requestCode) {
		case 0:
			Toast.makeText(ActivityLogin.this, R.string.login_wrong_account, Toast.LENGTH_LONG).show();
			break;
		default:
			Toast.makeText(ActivityLogin.this, R.string.login_bye, Toast.LENGTH_SHORT).show();
			break;
		}
	}

}
