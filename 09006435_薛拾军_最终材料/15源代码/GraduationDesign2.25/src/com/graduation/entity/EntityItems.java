package com.graduation.entity;

import android.util.Log;

public class EntityItems {
	private int ItemID;// 2013.1.5

	private int ProductID;
	private String ProductName;

	private int BrandID;
	private String BrandName;

	private int CategoryID;
	private String CategoryName;

	private String Name;
	private String AgoraPrice;
	private String MemberPrice;
	private String VipPrice;
	private String SeckillPrice;
	private String Area;
	private String Fresh;// 2013.1.5
	private int ClickTimes;// 2013.1.5
	private int Sale;// 2013.1.5
	private int Remant;// 2013.1.5
	private int SmallImg;// 2013.1.5
	private int BigImg;// 2013.1.5
	private String Details;// 2013.1.5
	private int ViewTimes;// 2013.1.5
	private int BuyTimes;// 2013.1.5
	private String Days;
	private String Hours;
	private String Minutes;
	private String Seconds;
	private String IsSecondKill;
	private String LimitTime;// 2013.1.5

	public int getItemID() {
		return ItemID;
	}

	public void setItemID(String itemID) {
		try {
			ItemID = itemID == null ? -1 : Integer.parseInt(itemID);
		} catch (Exception e) {
			ItemID = -1;
		}
	}

	public int getProductID() {
		return ProductID;
	}

	public void setProductID(String productID) {
		try {
			ProductID = productID == null ? -1 : Integer.parseInt(productID);
		} catch (Exception e) {
			ProductID = -1;
		}
	}

	public String getProductName() {
		return ProductName;
	}

	public void setProductName(String productName) {
		try {
			ProductName = productName == null ? "" : productName;
		} catch (Exception e) {
			ProductName = "";
		}
	}

	public int getBrandID() {
		return BrandID;
	}

	public void setBrandID(String brandID) {
		try {
			BrandID = brandID == null ? -1 : Integer.parseInt(brandID);
		} catch (Exception e) {
			BrandID = -1;
		}
	}

	public String getBrandName() {
		return BrandName;
	}

	public void setBrandName(String brandName) {
		BrandName = brandName == null ? "" : brandName;
	}

	public int getCategoryID() {
		return CategoryID;
	}

	public void setCategoryID(String categoryID) {
		try {
			CategoryID = categoryID == null ? -1 : Integer.parseInt(categoryID);
		} catch (Exception e) {
			CategoryID = -1;
		}
	}

	public String getCategoryName() {
		return CategoryName;
	}

	public void setCategoryName(String categoryName) {
		CategoryName = categoryName == null ? "" : categoryName;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getAgoraPrice() {
		return AgoraPrice;
	}

	public void setAgoraPrice(String agoraPrice) {
		AgoraPrice = agoraPrice;
	}

	public String getMemberPrice() {
		return MemberPrice;
	}

	public void setMemberPrice(String memberPrice) {
		MemberPrice = memberPrice;
	}

	public String getVipPrice() {
		return VipPrice;
	}

	public void setVipPrice(String vipPrice) {
		VipPrice = vipPrice;
	}

	public String getSeckillPrice() {
		return SeckillPrice;
	}

	public void setSeckillPrice(String seckillPrice) {
		SeckillPrice = seckillPrice;
	}

	public String getArea() {
		return Area;
	}

	public void setArea(String area) {
		Area = area;
	}

	public String getFresh() {
		return Fresh;
	}

	public void setFresh(String fresh) {
		Fresh = fresh;
	}

	public int getClickTimes() {
		return ClickTimes;
	}

	public void setClickTimes(String clickTimes) {
		try {
			ClickTimes = Integer.parseInt(clickTimes);
		} catch (Exception e) {
			ClickTimes = 1;
		}
	}

	public int getSale() {
		return Sale;
	}

	public void setSale(String sale) {
		try {
			Sale = Integer.parseInt(sale);
		} catch (Exception e) {
			this.Sale = 10;
		}
	}

	public int getRemant() {
		return Remant;
	}

	public void setRemant(String remant) {
		Remant = Integer.parseInt(remant);
	}

	public int getSmallImg() {
		return SmallImg;
	}

	public void setSmallImg(int smallImg) {
		SmallImg = smallImg;
	}

	public int getBigImg() {
		return BigImg;
	}

	public void setBigImg(int bigImg) {
		BigImg = bigImg;
	}

	public String getDetails() {
		return Details;
	}

	public void setDetails(String details) {
		Details = details;
	}

	public int getViewTimes() {
		return ViewTimes;
	}

	public void setViewTimes(int viewTimes) {
		ViewTimes = viewTimes;
	}

	public int getBuyTimes() {
		return BuyTimes;
	}

	public void setBuyTimes(int buyTimes) {
		BuyTimes = buyTimes;
	}

	public String getDays() {
		return Days;
	}

	public void setDays(String days) {
		Days = days;
	}

	public String getHours() {
		return Hours;
	}

	public void setHours(String hours) {
		Hours = hours;
	}

	public String getMinutes() {
		return Minutes;
	}

	public void setMinutes(String minutes) {
		Minutes = minutes;
	}

	public String getSeconds() {
		return Seconds;
	}

	public void setSeconds(String seconds) {
		Seconds = seconds;
	}

	public String getIsSecondKill() {
		return IsSecondKill;
	}

	public void setIsSecondKill(String isSecondKill) {
		IsSecondKill = isSecondKill;
	}

	public String getLimitTime() {
		return LimitTime;
	}

	public void setLimitTime(String limitTime) {
		LimitTime = limitTime;
	}

	public void printEntityItems() {
		Log.i("EntityItems ItemID", "" + ItemID);
		Log.i("EntityItems ProductID", "" + ProductID);
		Log.i("EntityItems ProductName", "" + ProductName);
		Log.i("EntityItems BrandID", "" + BrandID);
		Log.i("EntityItems BrandName", "" + BrandName);
		Log.i("EntityItems CategoryID", "" + CategoryID);
		Log.i("EntityItems CategoryName", "" + CategoryName);
		Log.i("EntityItems AgoraPrice", "" + AgoraPrice);
		Log.i("EntityItems MemberPrice", "" + MemberPrice);
		Log.i("EntityItems VipPrice", "" + VipPrice);
		Log.i("EntityItems SeckillPrice", "" + SeckillPrice);
		Log.i("EntityItems Area", "" + Area);
		Log.i("EntityItems Name", "" + Name);
		Log.i("EntityItems Fresh", "" + Fresh);
		Log.i("EntityItems ClickTimes", "" + ClickTimes);
		Log.i("EntityItems Sale", "" + Sale);
		Log.i("EntityItems Remant", "" + Remant);
		Log.i("EntityItems SmallImg", "" + SmallImg);
		Log.i("EntityItems BigImg", "" + BigImg);
		Log.i("EntityItems ViewTimes", "" + ViewTimes);
		Log.i("EntityItems BuyTimes", "" + BuyTimes);
		Log.i("EntityItems Days", "" + Days);
		Log.i("EntityItems Hours", "" + Hours);
		Log.i("EntityItems Minutes", "" + Minutes);
		Log.i("EntityItems Seconds", "" + Seconds);
		Log.i("EntityItems IsSecondKill", "" + IsSecondKill);
		Log.i("EntityItems LimitTime", "" + LimitTime);

		Log.i("EntityItems Details", "" + Details);
	}
}
