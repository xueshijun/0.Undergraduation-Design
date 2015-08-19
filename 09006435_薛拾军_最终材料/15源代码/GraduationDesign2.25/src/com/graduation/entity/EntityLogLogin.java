package com.graduation.entity;

public class EntityLogLogin {
    private int LLogID; 
    private int LUserID;
    private double LLocationX;
    private double LLocationY;
    private String LDate;
    private boolean LisHidden;
    
	public int getLLogID() {
		return LLogID;
	}
	public void setLLogID(String LLogID) {
		
		this.LLogID = LLogID==null?-1:Integer.parseInt(LLogID);
	} 
	public int getLUserID() {
		return LUserID;
	}
	public void setLUserID(String LUserID) {
		this.LUserID = LUserID==null?-1:Integer.parseInt(LUserID);
	}
	public double getLLocationX() {
		return LLocationX;
	}
	public void setLLocationX(String LLocationX) {
		this.LLocationX = LLocationX==null?0.0:Double.parseDouble(LLocationX);
	}
	public double getLLocationY() {
		return LLocationY;
	}
	public void setLLocationY(String LLocationY) {
		this.LLocationY = LLocationY==null?0.0:Double.parseDouble(LLocationY);
	}
	public String getLDate() {
		return LDate;
	}
	public void setLDate(String LDate) {
		this.LDate = LDate;
	}
	public boolean isLisHidden() {
		return LisHidden;
	}
	public void setLisHidden(String LisHidden) {
		this.LisHidden = LisHidden==null?false:Boolean.parseBoolean(LisHidden);
	}
    
}
