package com.graduation.entity;

public class EntityLogBuy {

    private int BLogID;
    private int BItemID;
    private int BUserID;
    private double BLocationX;
    private double BLocationY;
    private String BDate;
    private boolean BisHidden;
	public int getBLogID() {
		return BLogID;
	}
	public void setBLogID(int bLogID) {
		this.BLogID = bLogID;
	}
	public int getBItemID() {
		return BItemID;
	}
	public void setBItemID(int bItemID) {
		this.BItemID = bItemID;
	}
	public int getBUserID() {
		return BUserID;
	}
	public void setBUserID(int bUserID) {
		this.BUserID = bUserID;
	}
	public double getBLocationX() {
		return BLocationX;
	}
	public void setBLocationX(double bLocationX) {
		this.BLocationX = bLocationX;
	}
	public double getBLocationY() {
		return BLocationY;
	}
	public void setBLocationY(double bLocationY) {
		this.BLocationY = bLocationY;
	}
	public String getBDate() {
		return BDate;
	}
	public void setBDate(String bDate) {
		this.BDate = bDate;
	}
	public boolean isBisHidden() {
		return BisHidden;
	}
	public void setBisHidden(boolean bisHidden) {
		this.BisHidden = bisHidden;
	}
    
}
