package com.graduation.entity;

import android.util.Log;

public class EntityGPS{
	private double latitude;//纬度
	private double longitude;//经度
	private double altitude;//高度
	private double bearing;//方向
	private double speed;//速度
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public double getAltitude() {
		return altitude;
	}
	public void setAltitude(double altitude) {
		this.altitude = altitude;
	}
	public double getBearing() {
		return bearing;
	}
	public void setBearing(double bearing) {
		this.bearing = bearing;
	}
	public double getSpeed() {
		return speed;
	}
	public void setSpeed(double speed) {
		this.speed = speed;
	}
	
	public void print(){
		Log.i("EntityGPS", "纬度"+latitude);
		Log.i("EntityGPS", "经度"+longitude);
		Log.i("EntityGPS", "高度"+altitude);
		Log.i("EntityGPS", "方向"+bearing);
		Log.i("EntityGPS", "速度"+speed); 
	}
}