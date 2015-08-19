package com.graduation.util;

import com.graduation.entity.EntityGPS;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;


public class GPS {
	private LocationManager mLocationManager;
	private static GPS gps;
	private GPS(LocationManager mLocationManager){
		this.mLocationManager=mLocationManager;
	}
	
	public static GPS getInstance(LocationManager mLocationManager){
		if(gps==null){
			gps =new GPS(mLocationManager);
		}
		return gps;
	}
	
//	public EntityGPS getEntityGPS(){ 
//		EntityGPS mEntityGPS=new EntityGPS(); 
//		
//		LocationListener mLocationListener=new LocationListener() {
//			
//			@Override
//			public void onStatusChanged(String provider, int status, Bundle extras) {
//				// TODO Auto-generated method stub
//				
//			}
//			
//			@Override
//			public void onProviderEnabled(String provider) {
//				// TODO Auto-generated method stub
//				
//			}
//			
//			@Override
//			public void onProviderDisabled(String provider) {
//				// TODO Auto-generated method stub
//				
//			}
//			
//			@Override
//			public void onLocationChanged(Location location) {
//				// TODO Auto-generated method stub
//				
//			}
//		};
//		
//		String provider= LocationManager.GPS_PROVIDER;
//		mLocationManager.requestLocationUpdates(provider, 0, 1000, mLocationListener);
//		Location location=mLocationManager.getLastKnownLocation(provider);
//		if(location!=null){
//			mEntityGPS.setLatitude(location.getLatitude());
//			mEntityGPS.setLongitude(location.getLongitude());
//			mEntityGPS.setAltitude(location.getAltitude());
//			mEntityGPS.setBearing(location.getBearing());
//			mEntityGPS.setSpeed(location.getSpeed());
//		}
//		return mEntityGPS;
//	}
}
