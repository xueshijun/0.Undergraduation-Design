package com.graduation.activity;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ProgressBar;

import com.graduation.Base;
import com.graduation.R;
import com.graduation.entity.EntityImage;
import com.graduation.entity.EntityLogView;
import com.graduation.model.ModelImage;
import com.graduation.model.ModelLogView;
import com.graduation.util.database.sqlserver.ServiceSoap;

public class ActivityCenterLocationImage extends Activity {

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
		setContentView(R.layout.activity_center_tab_location_item_image);

		mGridView_Location = (GridView) findViewById(R.id.activity_center_tab_location_item_image_gridView);
		mGridView_Location.setNumColumns(1);
		share = getSharedPreferences("Login_Info", 0);

		Thread thread = new Thread() {
			@Override
			public void run() {
				list = new ArrayList<HashMap<Object, Object>>();
				List<EntityImage> list_EntityImage = new ArrayList<EntityImage>();
				list_EntityImage = ModelImage.getImageByItemID(share.getInt(
						"ItemID", 0));
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
					// dismissDialog(DIALOG_LOADING);

					adapterLocation = new AdapterLocation(list,
							ActivityCenterLocationImage.this);
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
				Intent intent = new Intent();
				intent.setClass(ActivityCenterLocationImage.this,
						ActivityCenterLocationInfo.class);
				startActivity(intent);
			}
		});
	}

	@Override
	protected void onRestart() {
		super.onRestart();
	}

	class AdapterLocation extends BaseAdapter {
		class ViewHolder {
			ImageView imageView;
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
			convertView = getLayoutInflater()
					.inflate(
							R.layout.activity_center_tab_location_item_image_item,
							null);

			holder.imageView = (ImageView) convertView
					.findViewById(R.id.activity_center_tab_location_item_image_item_imageView);
			holder.itemProgressBar = (ProgressBar) convertView
					.findViewById(R.id.activity_center_tab_location_item_image_item_itemprogressBar);

			final HashMap<Object, Object> hashMap = list.get(position);
			EntityImage mEntityImage = new EntityImage();
			mEntityImage.setIntImageID(hashMap.get("ImageID").toString());
			mEntityImage.setItemID(hashMap.get("SmallImg").toString());// hashMap.get("ItemID").toString()
			mEntityImage.setBigImg(hashMap.get("BigImg").toString());
			mEntityImage.setSmallImg(hashMap.get("SmallImg").toString());

			holder.imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
			mImageAsynTask = new ImageAsynTask(mEntityImage.getSmallImg(),
					holder);
			mImageAsynTask.execute();
			holder.imageView.setAdjustViewBounds(false);
			return convertView;

		}

		// private class ItemsListener implements
		// android.view.View.OnClickListener {
		// ViewHolder holder;
		// ArrayList<HashMap<Object, Object>> list;
		// int position;
		//
		// public ItemsListener(ViewHolder holder,
		// ArrayList<HashMap<Object, Object>> list, int position) {
		// this.holder = holder;
		// this.list = list;
		// this.position = position;
		// }
		//
		// @Override
		// public void onClick(View v) {
		// HashMap<Object, Object> hashMap = list.get(position);
		// if ((Boolean) hashMap.get("isSelected") == true) {
		// holder.imageView.setBackgroundColor(Color
		// .parseColor("#87CEFA"));
		// // Bitmap bmp_select_after=BitmapFactory.decodeResource(res,
		// // R.drawable.select_after);
		// // holder.checkBoxImg.setImageBitmap(bmpwater_sel);
		//
		// hashMap.put("isSelected", true);
		// } else {
		// holder.imageView.setBackgroundColor(Color
		// .parseColor("#FFFFFF"));
		// // Bitmap
		// // bmp_select_before=BitmapFactory.decodeResource(res,
		// // R.drawable.select_before);
		// // holder.checkBoxImg.setImageBitmap(bmpwater_sel);
		//
		// hashMap.put("isSelected", false);
		// }
		// }
		// }

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

	public static Bitmap toRoundCorner(Bitmap bitmap, int pixels) {
		Bitmap output = Bitmap.createBitmap(bitmap.getWidth(),
				bitmap.getHeight(), Config.ARGB_8888);
		Canvas canvas = new Canvas(output);

		final int color = 0xff424242;
		final Paint paint = new Paint();
		final Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
		final RectF rectF = new RectF(rect);
		final float roundPx = pixels;

		paint.setAntiAlias(true);
		canvas.drawARGB(0, 0, 0, 0);
		paint.setColor(color);
		canvas.drawRoundRect(rectF, roundPx, roundPx, paint);

		paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
		canvas.drawBitmap(bitmap, rect, rect, paint);

		return output;
	}

	// @Override
	// protected Dialog onCreateDialog(int id, Bundle bundle) {
	// switch (id) {
	// case DIALOG_LOADING:
	// // View view = getLayoutInflater().inflate(
	// // R.layout.activity_item_lists_item_loading, null);
	// View view = getLayoutInflater().inflate(
	// R.layout.activity_item_lists_item_loading, null);
	// return new AlertDialog.Builder(this).setTitle("开始").setView(view)
	// .create();
	// }
	// return super.onCreateDialog(id, bundle);
	// }
}