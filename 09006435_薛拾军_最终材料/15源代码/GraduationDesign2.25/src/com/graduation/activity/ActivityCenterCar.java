package com.graduation.activity;

import java.util.List;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;

import com.graduation.Base;
import com.graduation.R;
import com.graduation.entity.EntityShopingCar;
import com.graduation.model.ModelShopingCar;

@SuppressLint("NewApi")
public class ActivityCenterCar extends Activity {
	List<EntityShopingCar> list_EntityShopingCar;
	SharedPreferences share;

	private GridView mGridView;
	private int NumColumns = 1;
	private int NumRows = 4;
	ImageButton btnUp;
	ImageButton btnDown;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_center_tab_car);

		share = getSharedPreferences("Login_Info", 0);

		list_EntityShopingCar = ModelShopingCar.getShopingCarInfo(share.getInt(
				Base.USERID, 0));

		mGridView = (GridView) findViewById(R.id.activity_center_tab_car_gridView);
		btnUp = (ImageButton) findViewById(R.id.imgKeyUp);
		btnDown = (ImageButton) findViewById(R.id.imgKeyDown);

		mGridView.setNumColumns(NumColumns);
		mGridView.setAdapter(new ShopCarAdapter(this, list_EntityShopingCar));

		mGridView.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> arg0, View arg1,
					int position, long id) {
				Intent intent = new Intent(ActivityCenterCar.this,
						ActivityCenterCarInfo.class);

				list_EntityShopingCar.get(position).printEntityShopCar();

				share.edit()
						.putString(
								EntityShopingCar.CAR_ID,
								list_EntityShopingCar.get(position).getCarID()
										+ "")
						.putString(
								EntityShopingCar.ITEM_ID,
								list_EntityShopingCar.get(position).getItemID()
										+ "")
						.putString(
								EntityShopingCar.USER_ID,
								list_EntityShopingCar.get(position).getUserID()
										+ "")
						.putString(
								EntityShopingCar.ISPAY,
								list_EntityShopingCar.get(position).isIsPay()
										+ "")
						.putString(
								EntityShopingCar.VISIABLE,
								list_EntityShopingCar.get(position).isVisible()
										+ "")
						.putString(
								EntityShopingCar.PRODUCTID,
								list_EntityShopingCar.get(position)
										.getProductID() + "")
						.putString(
								EntityShopingCar.BRANDID,
								list_EntityShopingCar.get(position)
										.getBrandID() + "")
						.putString(EntityShopingCar.ITEM_NAME,
								list_EntityShopingCar.get(position).getName())
						.putString(
								EntityShopingCar.PRICE_MENMBER,
								list_EntityShopingCar.get(position)
										.getMemberPrice() + "")
						.putString(
								EntityShopingCar.PRICE_AGORANCE,
								list_EntityShopingCar.get(position)
										.getAgoraPrice() + "")
						.putString(
								EntityShopingCar.PRICE_VIP,
								list_EntityShopingCar.get(position)
										.getVipPrice() + "")
						.putString(
								EntityShopingCar.PRICE_SECKILL,
								list_EntityShopingCar.get(position)
										.getSeckillPrice() + "")
						.putString(EntityShopingCar.AREA,
								list_EntityShopingCar.get(position).getArea())
						.putString(
								EntityShopingCar.DETAILS,
								list_EntityShopingCar.get(position).getDetails()
										+ "")
						.putString(
								EntityShopingCar.VIEW_TIMES,
								list_EntityShopingCar.get(position)
										.getViewTimes() + "")
						.putString(
								EntityShopingCar.BUY_TIMES,
								list_EntityShopingCar.get(position)
										.getBuyTimes() + "")
						.putString(
								EntityShopingCar.LIMIT_TIME,
								list_EntityShopingCar.get(position)
										.getLimitTime())
						.putString(
								EntityShopingCar.ADD_DATE,
								list_EntityShopingCar.get(position)
										.getAddDate())
						.putString(
								EntityShopingCar.COUNT,
								list_EntityShopingCar.get(position).getCount()
										+ "")
						.commit();

				startActivity(intent);
			}
		});

	}

	class ShopCarAdapter extends BaseAdapter {

		List<EntityShopingCar> list;
		Context context;

		ShopCarAdapter(Context context, List<EntityShopingCar> list) {
			this.context = context;
			this.list = list;
		}

		public int getCount() {
			return list.size();
		}

		public Object getItem(int id) {
			return list.get(id);
		}

		public long getItemId(int id) {
			return id;
		}

		public View getView(int position, View convertView, ViewGroup parent) {
			View view = LayoutInflater.from(ActivityCenterCar.this).inflate(
					R.layout.activity_center_tab_car_item, null);
			view.setMinimumHeight(mGridView.getHeight() / NumRows);
			view.setMinimumWidth(mGridView.getWidth() / NumColumns);

			TextView textViewName = (TextView) view
					.findViewById(R.id.activity_center_tab_car_item_name);
			TextView textViewArea = (TextView) view
					.findViewById(R.id.activity_center_tab_car_item_area);
			TextView textViewPrice = (TextView) view
					.findViewById(R.id.activity_center_tab_car_item_num);

			textViewName.setText(list.get(position).getName());
			textViewArea.setText(list.get(position).getArea());
			textViewPrice.setText(list.get(position).getCount() + "");

			return view;
		}
	}

}
