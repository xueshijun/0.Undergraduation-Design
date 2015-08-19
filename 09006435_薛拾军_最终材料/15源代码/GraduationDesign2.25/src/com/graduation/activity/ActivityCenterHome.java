package com.graduation.activity;

import android.app.ActivityGroup;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;

import com.graduation.Base;
import com.graduation.R;
 
public class ActivityCenterHome extends ActivityGroup {

	SharedPreferences share;
	
	TextView textView_activity_center_tab_home_username;
	TextView textView_activity_center_tab_home_email;
	TextView textView_activity_center_tab_home_phone;
	TextView textView_activity_center_tab_home_address;
	ImageView activity_center_tab_home_imageView;
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_center_tab_home);
		
		share = getSharedPreferences("Login_Info", 0);
		textView_activity_center_tab_home_username=(TextView)findViewById(R.id.activity_center_tab_home_username);
		textView_activity_center_tab_home_email=(TextView)findViewById(R.id.activity_center_tab_home_email);
		textView_activity_center_tab_home_phone=(TextView)findViewById(R.id.activity_center_tab_home_phone);
		textView_activity_center_tab_home_address=(TextView)findViewById(R.id.activity_center_tab_home_address);
		activity_center_tab_home_imageView=(ImageView)findViewById(R.id.activity_center_tab_home_imageView);
		
		textView_activity_center_tab_home_username.setText(share.getString(Base.USERNAME,"设置"));
		textView_activity_center_tab_home_email.setText(share.getString(Base.USEREMAIL,"设置"));
		textView_activity_center_tab_home_phone.setText(share.getString(Base.USERPHONE,"设置"));
		textView_activity_center_tab_home_address.setText(share.getString(Base.USERADDRESS,"设置"));
		
		activity_center_tab_home_imageView.setImageResource(getVip());
		
//		VIP0
	}
	private int getVip(){
		if(share.getString(Base.USERVIPNAME,"VIP0").equals("VIP0")) {
			return R.drawable.vip0;
		}else if(share.getString(Base.USERVIPNAME,"VIP0").equals("VIP1")) {
			return R.drawable.vip1;
		}else if(share.getString(Base.USERVIPNAME,"VIP0").equals("VIP2")) {
			return R.drawable.vip2;
		}else if(share.getString(Base.USERVIPNAME,"VIP0").equals("VIP3")) {
			return R.drawable.vip3;
		}else if(share.getString(Base.USERVIPNAME,"VIP0").equals("VIP4")) {
			return R.drawable.vip4;
		}else if(share.getString(Base.USERVIPNAME,"VIP0").equals("VIP5")) {
			return R.drawable.vip5;
		}else if(share.getString(Base.USERVIPNAME,"VIP0").equals("VIP6")) {
			return R.drawable.vip6;
		}
		return R.drawable.vip0;
	}
}