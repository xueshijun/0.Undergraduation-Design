package com.graduation.activity.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.location.LocationManager;

import com.baidu.mapapi.BMapManager;
import com.baidu.mapapi.LocationListener;
import com.graduation.entity.EntityGPS;
import com.graduation.util.GPS;
import com.graduation.util.maps.BMapAPI;

public class ReceiverMaps extends BroadcastReceiver{

	LocationListener mLocationListener = null;//create时注册此listener，Destroy时需要Remove
	private Context mContext;
	@Override
	public void onReceive(Context context, Intent intent) {
		this.mContext=context;
	}
	
	
	public void shouwNotification(){

	}

}
