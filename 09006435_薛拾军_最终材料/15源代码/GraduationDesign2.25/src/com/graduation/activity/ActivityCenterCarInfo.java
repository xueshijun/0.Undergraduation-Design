package com.graduation.activity;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

import com.graduation.R;
import com.graduation.entity.EntityShopingCar;

public class ActivityCenterCarInfo extends Activity {

	SharedPreferences share;

	TextView activity_center_tab_car_item_name;
	TextView activity_center_tab_car_item_area;
	TextView activity_center_tab_car_item_count;
	TextView activity_center_tab_car_item_view_time;
	TextView activity_center_tab_car_item_buy_time;
	TextView activity_center_tab_car_item_add_date;
	TextView activity_center_tab_car_item_detail;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_center_tab_car_info);

		share = getSharedPreferences("Login_Info", 0);

		Log.e("=====ActivityCenterCarInfo=============", "");

		Bundle extras = getIntent().getExtras();
		activity_center_tab_car_item_name = (TextView) findViewById(R.id.activity_center_tab_car_item_name);
		activity_center_tab_car_item_area = (TextView) findViewById(R.id.activity_center_tab_car_item_area);
		activity_center_tab_car_item_count = (TextView) findViewById(R.id.activity_center_tab_car_item_num);
		activity_center_tab_car_item_view_time = (TextView) findViewById(R.id.activity_center_tab_car_item_view_time);
		activity_center_tab_car_item_buy_time = (TextView) findViewById(R.id.activity_center_tab_car_item_buy_time);
		activity_center_tab_car_item_add_date = (TextView) findViewById(R.id.activity_center_tab_car_item_add_date);
		activity_center_tab_car_item_detail = (TextView) findViewById(R.id.activity_center_tab_car_item_details);

		activity_center_tab_car_item_name.setText(share.getString(
				EntityShopingCar.ITEM_NAME, ""));
		activity_center_tab_car_item_area.setText(share.getString(
				EntityShopingCar.AREA, ""));
		activity_center_tab_car_item_count.setText(share.getString(
				EntityShopingCar.COUNT,""));
		activity_center_tab_car_item_view_time.setText(share.getString(
				EntityShopingCar.VIEW_TIMES, ""));
		activity_center_tab_car_item_buy_time.setText(share.getString(
				EntityShopingCar.BUY_TIMES, ""));
		activity_center_tab_car_item_add_date.setText(share.getString(
				EntityShopingCar.ADD_DATE, ""));
		activity_center_tab_car_item_detail.setText(share.getString(
				EntityShopingCar.DETAILS, ""));

		Log.e("=====ActivityCenterCarInfo=============", "");

	}
}
