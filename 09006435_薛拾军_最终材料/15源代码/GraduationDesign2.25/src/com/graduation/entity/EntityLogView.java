package com.graduation.entity;

import android.util.Log;

public class EntityLogView {
	private int VLogID;
	private int VItemID;
	private int VUserID;
	private double VLocationX;
	private double VLocationY;
	private String VDate;
	private boolean VisHidden;

	public int getVLogID() {
		return VLogID;
	}

	public void setVLogID(String vLogID) {
		this.VLogID = vLogID == null || vLogID.equals("") ? -1 : Integer
				.parseInt(vLogID);
	}

	public int getVItemID() {
		return VItemID;
	}

	public void setVItemID(String vItemID) {
		this.VItemID = vItemID == null || vItemID.equals("") ? -1 : Integer
				.parseInt(vItemID);
	}

	public int getVUserID() {
		return VUserID;
	}

	public void setVUserID(String vUserID) {
		this.VUserID = vUserID == null || vUserID.equals("") ? -1 : Integer
				.parseInt(vUserID);
	}

	public double getVLocationX() {
		return VLocationX;
	}

	public void setVLocationX(String vLocationX) {
		this.VLocationX = vLocationX == null || vLocationX.equals("") ? -1
				: Double.parseDouble(vLocationX);
	}

	public double getVLocationY() {
		return VLocationY;
	}

	public void setVLocationY(String vLocationY) {
		this.VLocationY = vLocationY == null || vLocationY.equals("") ? -1
				: Double.parseDouble(vLocationY);
	}

	public String getVDate() {
		return VDate;
	}

	public void setVDate(String vDate) {
		VDate = vDate;
	}

	public boolean isVisHidden() {
		return VisHidden;
	}

	public void setVisHidden(String visHidden) {
		this.VisHidden = visHidden == null || visHidden.equals("") ? false
				: Boolean.parseBoolean(visHidden);
	}
	
	public void  printEntityLogView() {
		Log.i("EntityLogView", ""+VLogID);
		Log.i("EntityLogView", ""+VItemID);
		Log.i("EntityLogView", ""+VUserID);
		Log.i("EntityLogView", ""+VLocationX);
		Log.i("EntityLogView", ""+VLocationY);
		Log.i("EntityLogView", ""+VDate);
		Log.i("EntityLogView", ""+VisHidden); 
	}
}
