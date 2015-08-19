package com.graduation.activity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Toast;

import com.baidu.mapapi.BMapManager;
import com.baidu.mapapi.GeoPoint;
import com.baidu.mapapi.ItemizedOverlay;
import com.baidu.mapapi.MapActivity;
import com.baidu.mapapi.MapView;
import com.baidu.mapapi.OverlayItem;
import com.baidu.mapapi.Projection;
import com.graduation.Base;
import com.graduation.R;
import com.graduation.activity.ActivityCenterLocationImage.AdapterLocation;
import com.graduation.entity.EntityImage;
import com.graduation.entity.EntityLogView;
import com.graduation.model.ModelImage;
import com.graduation.model.ModelLogView;
import com.graduation.util.database.sqlserver.ServiceSoap;
import com.graduation.util.maps.BMapAPI;

public class ActivityCenterLocationInfo extends MapActivity {

	public final static int DIALOG_LOADING = 0;

	ArrayList<EntityLogView> list_EntityLogView;
	SharedPreferences share; 

	static View mPopView = null; // 点击mark时弹出的气泡View
	static MapView mMapView = null;
	int iZoom = 0;
	OverItemLayout overitem = null;

	private double mLat_Current_Location = 32.088669;
	private double mLon_Current_Location = 118.778549;

	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_center_tab_location_info);

		share = getSharedPreferences("Login_Info", 0);

		try {
			list_EntityLogView = ModelLogView.getLogViewByItemID(share.getInt(
					"ItemID", 0));
			
			for(EntityLogView item:list_EntityLogView){
				item.printEntityLogView();
			}
		} catch (Exception ex) {
			if (list_EntityLogView == null || list_EntityLogView.size() <= 0) {
				Intent intent = new Intent();
				intent.setClass(ActivityCenterLocationInfo.this,
						ActivityCenterLocationImage.class);
				startActivity(intent);
			}
		}

		BMapAPI app = (BMapAPI) this.getApplication();
		if (app.mBMapMan == null) {
			app.mBMapMan = new BMapManager(getApplication());
			app.mBMapMan.init(app.mStrKey, new BMapAPI.MyGeneralListener());
		}
		app.mBMapMan.start();
		// 如果使用地图SDK，请初始化地图Activity
		super.initMapActivity(app.mBMapMan);

		mMapView = (MapView) findViewById(R.id.bmapView);
		mMapView.setBuiltInZoomControls(true);
		// 设置在缩放动画过程中也显示overlay,默认为不绘制
		mMapView.setDrawOverlayWhenZooming(true);
		mMapView.getController().setCenter(
				new GeoPoint((int) (mLat_Current_Location * 1e6),
						(int) (mLon_Current_Location * 1e6)));

		// 添加ItemizedOverlay
		Drawable marker = getResources().getDrawable(R.drawable.map_iconmarka); // 得到需要标在地图上的资源
		marker.setBounds(0, 0, marker.getIntrinsicWidth(),
				marker.getIntrinsicHeight()); // 为maker定义位置和边界

		overitem = new OverItemLayout(marker, this, list_EntityLogView);
		mMapView.getOverlays().add(overitem); // 添加ItemizedOverlay实例到mMapView

		// 创建点击mark时的弹出泡泡
		mPopView = super.getLayoutInflater().inflate(R.layout.popview, null);
		mMapView.addView(mPopView, new MapView.LayoutParams(
				LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT, null,
				MapView.LayoutParams.TOP_LEFT));
		mPopView.setVisibility(View.GONE);
		iZoom = mMapView.getZoomLevel();
		// mMapView.regMapViewListener(app.mBMapMan, new MKMapViewListener(){
		// public void onMapMoveFinish() {
		// if(iZoom != mMapView.getZoomLevel())
		// {// 比例尺不一样
		// iZoom = mMapView.getZoomLevel();
		// if(overitem.mGeoList.size() > 0)
		// overitem.mGeoList.remove(0);
		// //overitem.updateOverlay();
		// // Drawable marker =
		// getResources().getDrawable(R.drawable.iconmarka); //得到需要标在地图上的资源
		// // marker.setBounds(0, 0, marker.getIntrinsicWidth(), marker
		// // .getIntrinsicHeight()); //为maker定义位置和边界
		// // mMapView.getOverlays().add(new OverItemT(marker,
		// ItemizedOverlayDemo.this, 3));
		// }
		// }
		// });
	}

	@Override
	protected void onPause() {
		BMapAPI app = (BMapAPI) this.getApplication();
		if (app.mBMapMan != null)
			app.mBMapMan.stop();
		super.onPause();
	}

	@Override
	protected void onResume() {
		BMapAPI app = (BMapAPI) this.getApplication();
		app.mBMapMan.start();
		super.onResume();
	}

	@Override
	protected boolean isRouteDisplayed() {
		// TODO Auto-generated method stub
		return false;
	}
}

class OverItemLayout extends ItemizedOverlay<OverlayItem> {
	ArrayList<EntityLogView> list_EntityLogView;
	public List<OverlayItem> mGeoList = new ArrayList<OverlayItem>();
	private Drawable marker;
	private Context mContext;

	public OverItemLayout(Drawable marker, Context context,
			ArrayList<EntityLogView> list_EntityLogView) {
		super(boundCenterBottom(marker));
		this.marker = marker;
		this.mContext = context;
		this.list_EntityLogView = list_EntityLogView;

		// 用给定的经纬度构造GeoPoint，单位是微度 (度 * 1E6)
		for (int i = 0; i < list_EntityLogView.size(); i++) {
			GeoPoint geoPoint = new GeoPoint((int) (list_EntityLogView.get(i)
					.getVLocationY() * 1E6), (int) (list_EntityLogView.get(i)
					.getVLocationX() * 1E6));
			// 构造OverlayItem的三个参数依次为：item的位置，标题文本，文字片段
			mGeoList.add(new OverlayItem(geoPoint, list_EntityLogView.get(i)
					.getVUserID() + "", "point" + i));// [y,x][32,118]
		}

		populate(); // createItem(int)方法构造item。一旦有了数据，在调用其它方法前，首先调用这个方法
	}

	public void updateOverlay() {
		populate();
	}

	@Override
	public void draw(Canvas canvas, MapView mapView, boolean shadow) {

		// Projection接口用于屏幕像素坐标和经纬度坐标之间的变换
		Projection projection = mapView.getProjection();
		for (int index = size() - 1; index >= 0; index--) { // 遍历mGeoList
			OverlayItem overLayItem = getItem(index); // 得到给定索引的item

			String title = overLayItem.getTitle();
			// 把经纬度变换到相对于MapView左上角的屏幕像素坐标
			Point point = projection.toPixels(overLayItem.getPoint(), null);

			// 可在此处添加您的绘制代码
			Paint paintText = new Paint();
			paintText.setColor(Color.BLUE);
			paintText.setTextSize(15);
			canvas.drawText(title, point.x - 30, point.y, paintText); // 绘制文本
		}

		super.draw(canvas, mapView, shadow);
		// 调整一个drawable边界，使得（0，0）是这个drawable底部最后一行中心的一个像素
		boundCenterBottom(marker);
	}

	@Override
	protected OverlayItem createItem(int i) {
		// TODO Auto-generated method stub
		return mGeoList.get(i);
	}

	@Override
	public int size() {
		// TODO Auto-generated method stub
		return mGeoList.size();
	}

	@Override
	// 处理当点击事件
	protected boolean onTap(int i) {
		setFocus(mGeoList.get(i));
		// 更新气泡位置,并使之显示
		GeoPoint pt = mGeoList.get(i).getPoint();
		ActivityCenterLocationInfo.mMapView.updateViewLayout(
				ActivityCenterLocationInfo.mPopView, new MapView.LayoutParams(
						LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT,
						pt, MapView.LayoutParams.BOTTOM_CENTER));
		ActivityCenterLocationInfo.mPopView.setVisibility(View.VISIBLE);
		Toast.makeText(this.mContext, mGeoList.get(i).getSnippet(),
				Toast.LENGTH_SHORT).show();
		return true;
	}

	@Override
	public boolean onTap(GeoPoint arg0, MapView arg1) {
		// 消去弹出的气泡
		ActivityCenterLocationInfo.mPopView.setVisibility(View.GONE);
		return super.onTap(arg0, arg1);
	}
}
