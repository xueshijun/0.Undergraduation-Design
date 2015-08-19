package com.graduation.activity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.graduation.R;
import com.graduation.entity.EntityLogLogin;
import com.graduation.model.ModelLogLogin;

public class ActivityCenterSetting extends Activity {
	private ListView mListView;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_center_tab_setting);

		mListView = (ListView) findViewById(R.id.activity_center_tab_setting_item_listView);
		List<EntityLogLogin> list_EntityLogLogin=ModelLogLogin.getLastTenLogLogin();
		List<String> list = new ArrayList<String>();
		for (int i = 0; i <list_EntityLogLogin.size(); i++) { 
			list.add(list_EntityLogLogin.get(i).getLDate());
		}
		mListView.setAdapter(new SettingAdapter(list));
	}

	class SettingAdapter extends BaseAdapter {

		private List<String> list;

		SettingAdapter(List<String> list) {
			this.list = list;
		}

		@Override
		public int getCount() {
			return list.size(); 
		}

		@Override
		public Object getItem(int position) {
			return list.get(position);
		}

		@Override
		public long getItemId(int position) {
			return position;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
  
			LayoutInflater mInflater = LayoutInflater.from(getBaseContext());
			convertView=mInflater.inflate(R.layout.activity_center_tab_setting_item,null);
			TextView textView=(TextView)convertView.findViewById(R.id.activity_center_tab_setting_item_textview);
			textView.setText(list.get(position));
			return convertView;
		} 
	}
}
