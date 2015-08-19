package com.graduation.activity;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.graduation.ActivityCenter;
import com.graduation.R;
import com.graduation.entity.EntityImage;
import com.graduation.model.ModelImage;
import com.graduation.util.database.sqlserver.ServiceSoap;

public class CopyOfActivityCenterLocation extends ActivityCenter {
	private final static int LOADING_STATE_FINISH = 1;

	public final static int DIALOG_LOADING = 0; 

	SharedPreferences share;
	
	private GridView mGridView_Location;
	private AdapterLocation adapterLocation;
	private ArrayList<HashMap<Object, Object>> list;
	private Handler mHandler_Location;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_item_lists);

//		showDialog(DIALOG_LOADING);

		mGridView_Location = (GridView) findViewById(R.id.mItemListGridView);

		mGridView_Location.setNumColumns(2);
		DisplayMetrics dm = new DisplayMetrics();
		getWindowManager().getDefaultDisplay().getMetrics(dm);
		if (dm.heightPixels == 1280 && dm.widthPixels == 800) {
			mGridView_Location.setNumColumns(3);
		}

		Thread thread = new Thread() {
			@Override
			public void run() {
				list = new ArrayList<HashMap<Object, Object>>();
				List<EntityImage> list_EntityImage = new ArrayList<EntityImage>();
				list_EntityImage = ModelImage.getImages();
				while (list_EntityImage == null) {// 导入数据
					list_EntityImage = ModelImage.getImages();
				}

				for (int i = 0; i < list_EntityImage.size(); i++) {
					HashMap<Object, Object> map = new HashMap<Object, Object>();
					map.put("ImageID", list_EntityImage.get(i).getIntImageID());
					map.put("ItemID", list_EntityImage.get(i).getItemID());
					map.put("SmallImg", ServiceSoap.DOMAIN
							+ list_EntityImage.get(i).getSmallImg());
					map.put("BigImg", ServiceSoap.DOMAIN
							+ list_EntityImage.get(i).getBigImg());
					map.put("isSelected", false);
					list.add(map);
//					Log.i("Loading Data", "ID" + i);
				}

				Message msg = new Message();
				Bundle b = new Bundle();// 存放数据
				b.putInt("LOADING_STATE_FINISH", LOADING_STATE_FINISH);
				msg.setData(b);
				mHandler_Location.sendMessage(msg); // 发送消息
			}
		};
		thread.start();

		mHandler_Location = new Handler() {
			@Override
			public void handleMessage(Message msg) {
				super.handleMessage(msg);

				Bundle b = msg.getData();
				switch (b.getInt("LOADING_STATE_FINISH")) {
				case LOADING_STATE_FINISH:
//					dismissDialog(DIALOG_LOADING);

					adapterLocation = new AdapterLocation(list,
							CopyOfActivityCenterLocation.this);
					mGridView_Location.setAdapter(adapterLocation);
					break;
				default:
					break;
				}
			}
		};

		mGridView_Location.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> arg0, View view,
					int position, long id) {
				HashMap<Object, Object> map = list.get(position);
				if (Boolean.parseBoolean(map.get("isSelected").toString())) {
					map.put("isSelected", false);
				} else {
					map.put("isSelected", true);
				}

				setTitle(list.get(position).get("ItemID") + "");
//				 Intent intent=new Intent();
//				 intent.setClass(ActivityCenterLocation.this,
//						ActivityCenterLocationInfo.class);
				  
//				 startActivity(intent);
				// adapter.notifyDataSetInvalidated();
			}
		});
	}

	@Override
	protected void onRestart() {
		super.onRestart(); 
	}

	class AdapterLocation extends BaseAdapter {
		class ViewHolder {
			TextView titleTextView;
			ImageView imageView;
			ImageView checkBoxImg;
			ProgressBar itemProgressBar;
		}

		private ArrayList<HashMap<Object, Object>> list;
		private ImageAsynTask mImageAsynTask;
		private Context mContext;

		AdapterLocation(ArrayList<HashMap<Object, Object>> list,
				Context mContext) {
			this.list = list;
			this.mContext = mContext;
		}

		public void setmSelectedID(int mSelectedID) {
			HashMap<Object, Object> hashMap = list.get(mSelectedID);
			hashMap.put("isSelected", true);
		}

		public int getCount() {
			return list.size();
		}

		public Object getItem(int item) {
			return list.get(item);
		}

		public long getItemId(int id) {
			return id;
		}

		public View getView(int position, View convertView, ViewGroup parent) {
			final ViewHolder holder = new ViewHolder();
			convertView = getLayoutInflater().inflate(
					R.layout.activity_item_lists_item, null);
			holder.imageView = (ImageView) convertView
					.findViewById(R.id.imageView);
			holder.checkBoxImg = (ImageView) convertView
					.findViewById(R.id.checkboxImage);
			holder.titleTextView = (TextView) convertView
					.findViewById(R.id.titleTextView);
			holder.itemProgressBar = (ProgressBar) convertView
					.findViewById(R.id.itemprogressBar);

			final HashMap<Object, Object> hashMap = list.get(position);
			EntityImage mEntityImage = new EntityImage();
			mEntityImage.setIntImageID(hashMap.get("ImageID").toString());
			mEntityImage.setItemID(hashMap.get("SmallImg").toString());// hashMap.get("ItemID").toString()
			mEntityImage.setBigImg(hashMap.get("BigImg").toString());
			mEntityImage.setSmallImg(hashMap.get("SmallImg").toString());
			final boolean isSelected = (Boolean) hashMap.get("isSelected");

			holder.imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
			mImageAsynTask = new ImageAsynTask(mEntityImage.getSmallImg(),
					holder);
			mImageAsynTask.execute();
			holder.imageView.setAdjustViewBounds(false);

			holder.titleTextView.setText(mEntityImage.getItemID() + "");

			Resources res = getResources();
			if (isSelected == true) {
				holder.imageView
						.setBackgroundColor(Color.parseColor("#87CEFA"));
				// Bitmap bmp_select_after=BitmapFactory.decodeResource(res,
				// R.drawable.select_after);
				// holder.checkBoxImg.setImageBitmap(bmpwater_sel);
				holder.checkBoxImg
						.setImageResource(R.drawable.item_list_select_after);

				hashMap.put("isSelected", true);
			} else {
				holder.imageView
						.setBackgroundColor(Color.parseColor("#FFFFFF"));
				// Bitmap bmp_select_before=BitmapFactory.decodeResource(res,
				// R.drawable.select_before);
				// holder.checkBoxImg.setImageBitmap(bmpwater_sel);
				holder.checkBoxImg
						.setImageResource(R.drawable.item_list_select_before);

				hashMap.put("isSelected", false);
			}

			// holder.imageView.setOnClickListener(new OnClickListener() {
			// @Override
			// public void onClick(View v) {
			// Toast.makeText(ActivityCenterLocation.this, "<OK>",
			// Toast.LENGTH_LONG);
			// Resources res = getResources();
			// if (isSelected == true) {
			// holder.imageView.setBackgroundColor(Color
			// .parseColor("#87CEFA"));
			// // Bitmap
			// //
			// bmp_select_after=BitmapFactory.decodeResource(res,R.drawable.item_list_select_after);
			// // holder.checkBoxImg.setImageBitmap(bmpwater_sel);
			// holder.checkBoxImg.setImageResource(R.drawable.item_list_select_after);
			//
			// hashMap.put("isSelected", true);
			// } else {
			// holder.imageView.setBackgroundColor(Color.parseColor("#FFFFFF"));
			// // Bitmap
			// // bmp_select_before=BitmapFactory.decodeResource(res,
			// // R.drawable.item_list_select_before);
			// // holder.checkBoxImg.setImageBitmap(bmpwater_sel);
			// holder.checkBoxImg.setImageResource(R.drawable.item_list_select_before);
			// hashMap.put("isSelected", false);
			// }
			// Log.i("CLICK","CLICK");
			// Intent intent=new Intent();
			// intent.setClass(ActivityCenterLocation.this,
			// ActivityCenterLocationInfo.class);
			// startActivity(intent);
			// }
			// });

			return convertView;
		}

		private class ItemsListener implements
				android.view.View.OnClickListener {
			ViewHolder holder;
			ArrayList<HashMap<Object, Object>> list;
			int position;

			public ItemsListener(ViewHolder holder,
					ArrayList<HashMap<Object, Object>> list, int position) {
				this.holder = holder;
				this.list = list;
				this.position = position;
			}

			@Override
			public void onClick(View v) {
				HashMap<Object, Object> hashMap = list.get(position);
				if ((Boolean) hashMap.get("isSelected") == true) {
					holder.imageView.setBackgroundColor(Color
							.parseColor("#87CEFA"));
					// Bitmap bmp_select_after=BitmapFactory.decodeResource(res,
					// R.drawable.select_after);
					// holder.checkBoxImg.setImageBitmap(bmpwater_sel);
					holder.checkBoxImg
							.setImageResource(R.drawable.item_list_select_after);

					hashMap.put("isSelected", true);
				} else {
					holder.imageView.setBackgroundColor(Color
							.parseColor("#FFFFFF"));
					// Bitmap
					// bmp_select_before=BitmapFactory.decodeResource(res,
					// R.drawable.select_before);
					// holder.checkBoxImg.setImageBitmap(bmpwater_sel);
					holder.checkBoxImg
							.setImageResource(R.drawable.item_list_select_before);

					hashMap.put("isSelected", false);
				}
			}
		}

		private class ImageAsynTask extends AsyncTask<Void, Void, Drawable> {
			private String url;
			private ViewHolder holder;

			public ImageAsynTask(String url, ViewHolder holder) {
				this.url = url;
				this.holder = holder;
			}

			@Override
			protected Drawable doInBackground(Void... params) {
				return loadImages(url);
			}

			@Override
			protected void onPostExecute(Drawable result) {
				super.onPostExecute(result);
				this.holder.itemProgressBar
						.setVisibility(ProgressBar.INVISIBLE);
				this.holder.checkBoxImg.setVisibility(CheckBox.VISIBLE);
				this.holder.imageView.setImageDrawable(result);
			}

			@Override
			protected void onPreExecute() {
				super.onPreExecute();
				// dis
			}
		}

		public Drawable loadImages(String url) {
			try {
				return Drawable.createFromStream(
						(InputStream) (new URL(url)).openStream(), "test");
			} catch (IOException e) {
				e.printStackTrace();
			}

			Resources res = mContext.getResources();
			return res.getDrawable(R.drawable.item_photo_bad);

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
			return new AlertDialog.Builder(this)
			.setTitle("开始")
					.setView(view).create();
		}
		return super.onCreateDialog(id, bundle);
	}
}