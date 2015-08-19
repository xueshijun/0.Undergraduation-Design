package com.graduation.activity;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.TextView;

import com.graduation.ActivityCenter;
import com.graduation.Base;
import com.graduation.R;
import com.graduation.entity.EntityItems;
import com.graduation.entity.EntityLogView;
import com.graduation.model.ModelItems;
import com.graduation.model.ModelLogView;

public class ActivityCenterLocation extends ActivityCenter {
	private final static int LOADING_STATE_FINISH = 1;

	public final static int DIALOG_LOADING = 0;

	private GridView mGridView_Location;

	SharedPreferences share;

	private AdapterLocation adapterLocation;
	private ArrayList<HashMap<Object, Object>> list;
	ArrayList<EntityItems> list_EntityItems;

	private Handler mHandler_Location;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_center_tab_location);

		share = getSharedPreferences("Login_Info", 0);
		mGridView_Location = (GridView) findViewById(R.id.activity_center_tab_location_gridView);

		list_EntityItems = ModelItems.getItemsWithNoImg();

		// EntityItems mEntityItems=ModelItems.getItemsWithNoImgByID(21);
		// mEntityItems.printEntityItems();

		adapterLocation = new AdapterLocation(ActivityCenterLocation.this,
				list_EntityItems);
		mGridView_Location.setAdapter(adapterLocation);
		mGridView_Location.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> arg0, View view,
					int position, long id) {
				Log.e("=====浏览历史=====", "=====浏览历史 登记=Preparing==");
				final Intent intent = new Intent();
				share.edit()
						.putInt("ItemID",
								list_EntityItems.get(position).getItemID())
						.commit();
				intent.setClass(ActivityCenterLocation.this,
						ActivityCenterLocationImage.class);
				new Thread() {
					public void run() {
						Log.e("=====浏览历史=====", "=====浏览历史 登记=Begin==");

						EntityLogView entityLogView = new EntityLogView();
						entityLogView.setVDate(new Date().toString());
						entityLogView.setVLocationX(share.getString(
								"LOCATION_X", "32.088669"));
						entityLogView.setVLocationY(share.getString(
								"LOCATION_Y", "118.778549"));
						entityLogView.setVisHidden(share.getBoolean(
								Base.USERVISIABLE, false) + "");
						entityLogView.setVItemID(share.getInt("ItemID", 0) + "");
						entityLogView.setVUserID(share.getInt(Base.USERID, 0)
								+ "");

						 if (ModelLogView.addViewLog(entityLogView)) {
						 Log.i("=====浏览历史=====", "=====浏览历史 登记=成功=="); 
						 startActivity(intent);
						 } else {
						 Log.i("=====浏览历史=====", "=====浏览历史 登记=失败==");
						 }
					}
				}.start(); 
			}
		});
	}

	@Override
	protected void onRestart() {
		super.onRestart();
	}

	class AdapterLocation extends BaseAdapter {

		class ViewHolder {
			TextView nameTextView;
			TextView categoryTextView;
			TextView brandTextView;
			TextView areaTextView;
			TextView agroaPriceTextView;
			TextView seckillPriceTextView;
			TextView vipPriceTextView;
			TextView menberPriceTextView;
		}

		ArrayList<EntityItems> list_EntityItems;

		AdapterLocation(Context mContext,
				ArrayList<EntityItems> list_EntityItems) {
			this.list_EntityItems = list_EntityItems;

		}

		public int getCount() {
			return list_EntityItems.size();
		}

		public Object getItem(int item) {
			return list_EntityItems.get(item);
		}

		public long getItemId(int id) {
			return id;
		}

		public View getView(int position, View convertView, ViewGroup parent) {
			final ViewHolder holder = new ViewHolder();
			convertView = getLayoutInflater().inflate(
					R.layout.activity_center_tab_location_item, null);

			holder.nameTextView = (TextView) convertView
					.findViewById(R.id.activity_center_tab_location_item_name);
			holder.categoryTextView = (TextView) convertView
					.findViewById(R.id.activity_center_tab_location_item_category);
			holder.brandTextView = (TextView) convertView
					.findViewById(R.id.activity_center_tab_location_item_brand_name);
			holder.areaTextView = (TextView) convertView
					.findViewById(R.id.activity_center_tab_location_item_area);
			holder.agroaPriceTextView = (TextView) convertView
					.findViewById(R.id.activity_center_tab_location_item_agora_price);
			holder.seckillPriceTextView = (TextView) convertView
					.findViewById(R.id.activity_center_tab_location_item_seckill_price);
			holder.vipPriceTextView = (TextView) convertView
					.findViewById(R.id.activity_center_tab_location_item_vip_price);
			holder.menberPriceTextView = (TextView) convertView
					.findViewById(R.id.activity_center_tab_location_item_member_price);

			holder.nameTextView.setText(list_EntityItems.get(position)
					.getName());
			holder.categoryTextView.setText(list_EntityItems.get(position)
					.getCategoryName());
			holder.brandTextView.setText(list_EntityItems.get(position)
					.getBrandName());
			holder.areaTextView.setText(list_EntityItems.get(position)
					.getArea());
			holder.agroaPriceTextView.setText(list_EntityItems.get(position)
					.getAgoraPrice());
			holder.seckillPriceTextView.setText(list_EntityItems.get(position)
					.getSeckillPrice());
			holder.vipPriceTextView.setText(list_EntityItems.get(position)
					.getVipPrice());
			holder.menberPriceTextView.setText(list_EntityItems.get(position)
					.getMemberPrice());
			return convertView;
		}
	}

	@Override
	protected Dialog onCreateDialog(int id, Bundle bundle) {
		switch (id) {
		case DIALOG_LOADING:
			// View view = getLayoutInflater().inflate(
			// R.layout.activity_item_lists_item_loading, null);
			View view = getLayoutInflater().inflate(
					R.layout.activity_item_lists_item_loading, null);
			return new AlertDialog.Builder(this).setTitle("开始").setView(view)
					.create();
		}
		return super.onCreateDialog(id, bundle);
	}
}