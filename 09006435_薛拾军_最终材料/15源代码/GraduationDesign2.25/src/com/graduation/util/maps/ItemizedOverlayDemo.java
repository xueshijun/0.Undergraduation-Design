package com.graduation.util.maps;

import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
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
import com.graduation.R;
import com.graduation.entity.EntityLogView;
import com.graduation.model.ModelLogView;

public class ItemizedOverlayDemo extends MapActivity {
	ArrayList<EntityLogView> list_EntityLogView;
	static View mPopView = null; // ���markʱ����������View
	static MapView mMapView = null;
	int iZoom = 0;
	OverItemT overitem = null;

	private double mLat_Current_Location = 32.088669;
	private double mLon_Current_Location  = 118.778549;
	
	protected void onCreate(Bundle savedInstanceState) { 
		super.onCreate(savedInstanceState);
		setContentView(R.layout.mapviewdemo);
 
		list_EntityLogView = ModelLogView.getLogViewByItemID(3);

		BMapAPI app = (BMapAPI) this.getApplication();
		if (app.mBMapMan == null) {
			app.mBMapMan = new BMapManager(getApplication());
			app.mBMapMan.init(app.mStrKey, new BMapAPI.MyGeneralListener());
		}
		app.mBMapMan.start();
		// ���ʹ�õ�ͼSDK�����ʼ����ͼActivity
		super.initMapActivity(app.mBMapMan);

		mMapView = (MapView) findViewById(R.id.bmapView);
		mMapView.setBuiltInZoomControls(true);
		// ���������Ŷ���������Ҳ��ʾoverlay,Ĭ��Ϊ������
		mMapView.setDrawOverlayWhenZooming(true); 
		mMapView.getController().setCenter(
				new GeoPoint(
						(int) (mLat_Current_Location  * 1e6), 
						(int) (mLon_Current_Location  * 1e6)));

 
		// ���ItemizedOverlay
		Drawable marker = getResources().getDrawable(R.drawable.map_iconmarka); // �õ���Ҫ���ڵ�ͼ�ϵ���Դ
		marker.setBounds(0, 0, marker.getIntrinsicWidth(),
				marker.getIntrinsicHeight()); // Ϊmaker����λ�úͱ߽�

		overitem = new OverItemT(marker, this, 3, list_EntityLogView);
		mMapView.getOverlays().add(overitem); // ���ItemizedOverlayʵ����mMapView

		// �������markʱ�ĵ�������
		mPopView = super.getLayoutInflater().inflate(R.layout.popview, null);
		mMapView.addView(mPopView, new MapView.LayoutParams(
				LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT, null,
				MapView.LayoutParams.TOP_LEFT));
		mPopView.setVisibility(View.GONE);
		iZoom = mMapView.getZoomLevel();
		// mMapView.regMapViewListener(app.mBMapMan, new MKMapViewListener(){
		// public void onMapMoveFinish() {
		// if(iZoom != mMapView.getZoomLevel())
		// {// �����߲�һ��
		// iZoom = mMapView.getZoomLevel();
		// if(overitem.mGeoList.size() > 0)
		// overitem.mGeoList.remove(0);
		// //overitem.updateOverlay();
		// // Drawable marker =
		// getResources().getDrawable(R.drawable.iconmarka); //�õ���Ҫ���ڵ�ͼ�ϵ���Դ
		// // marker.setBounds(0, 0, marker.getIntrinsicWidth(), marker
		// // .getIntrinsicHeight()); //Ϊmaker����λ�úͱ߽�
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

class OverItemT extends ItemizedOverlay<OverlayItem> {
	ArrayList<EntityLogView> list_EntityLogView;
	public List<OverlayItem> mGeoList = new ArrayList<OverlayItem>();
	private Drawable marker;
	private Context mContext;
 

	public OverItemT(Drawable marker, Context context, int count,ArrayList<EntityLogView> list_EntityLogView) {
		super(boundCenterBottom(marker));
		this.marker = marker;
		this.mContext = context; 
		this.list_EntityLogView=list_EntityLogView;
		
//		�ø����ľ�γ�ȹ���GeoPoint����λ��΢�� (�� * 1E6) 
		for(int i=0;i<list_EntityLogView.size();i++){
			GeoPoint geoPoint = new GeoPoint(
					(int) (list_EntityLogView.get(i).getVLocationY() * 1E6),
					(int) (list_EntityLogView.get(i).getVLocationX() * 1E6));
			// ����OverlayItem��������������Ϊ��item��λ�ã������ı�������Ƭ��
			mGeoList.add(new OverlayItem(geoPoint, list_EntityLogView.get(i).getVUserID()+"", "point"+i));//[y,x][32,118] 
		} 
		
		populate(); // createItem(int)��������item��һ���������ݣ��ڵ�����������ǰ�����ȵ����������
	}

	public void updateOverlay() {
		populate();
	}

	@Override
	public void draw(Canvas canvas, MapView mapView, boolean shadow) {

		// Projection�ӿ�������Ļ��������;�γ������֮��ı任
		Projection projection = mapView.getProjection();
		for (int index = size() - 1; index >= 0; index--) { // ����mGeoList
			OverlayItem overLayItem = getItem(index); // �õ�����������item

			String title = overLayItem.getTitle();
			// �Ѿ�γ�ȱ任�������MapView���Ͻǵ���Ļ��������
			Point point = projection.toPixels(overLayItem.getPoint(), null);

			// ���ڴ˴�������Ļ��ƴ���
			Paint paintText = new Paint();
			paintText.setColor(Color.BLUE);
			paintText.setTextSize(15);
			canvas.drawText(title, point.x - 30, point.y, paintText); // �����ı�
		}

		super.draw(canvas, mapView, shadow);
		// ����һ��drawable�߽磬ʹ�ã�0��0�������drawable�ײ����һ�����ĵ�һ������
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
	// ��������¼�
	protected boolean onTap(int i) {
		setFocus(mGeoList.get(i));
		// ��������λ��,��ʹ֮��ʾ
		GeoPoint pt = mGeoList.get(i).getPoint();
		ItemizedOverlayDemo.mMapView.updateViewLayout(
				ItemizedOverlayDemo.mPopView, new MapView.LayoutParams(
						LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT,
						pt, MapView.LayoutParams.BOTTOM_CENTER));
		ItemizedOverlayDemo.mPopView.setVisibility(View.VISIBLE);
		Toast.makeText(this.mContext, mGeoList.get(i).getSnippet(),
				Toast.LENGTH_SHORT).show();
		return true;
	}

	@Override
	public boolean onTap(GeoPoint arg0, MapView arg1) { 
		// ��ȥ����������
		ItemizedOverlayDemo.mPopView.setVisibility(View.GONE);
		return super.onTap(arg0, arg1);
	}
}
