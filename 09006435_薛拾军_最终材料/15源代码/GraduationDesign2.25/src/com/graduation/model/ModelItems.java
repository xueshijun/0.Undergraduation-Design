package com.graduation.model;

import java.util.ArrayList;

import com.graduation.entity.EntityItems;
import com.graduation.entity.EntityUser;
import com.graduation.util.database.sqlserver.ServiceSoap;

public class ModelItems {

    /* 
    BID,ProductID,ItemID,VipPrice,MemberPrice,Details,Minutes
    Seconds,AgoraPrice,Area,SeckillPrice,Days 
    Hours,CategoryID,PName,PID,CName,ItemName,BrandName,Fresh,IsSecondKill 
     */
	public static ArrayList<EntityItems> getItemsWithNoImg(){ 
		ArrayList<String> param=new ArrayList<String>();
		ArrayList<Object> value=new ArrayList<Object>();

 		ArrayList<EntityItems> list_EntityItems=new ArrayList<EntityItems>();
 		
 		ArrayList<String> list_String=new ArrayList<String>(); 
		list_String=ServiceSoap.GetWebServre("getItemsWithNoImg",param,value);
		
		if(list_String.size()<1){return null;}
		for(int i=0;i<list_String.size();){ 
			EntityItems item=new EntityItems();
			item.setBrandID(list_String.get(i++));
			item.setProductID(list_String.get(i++)); 
			item.setItemID(list_String.get(i++));
			item.setVipPrice(list_String.get(i++));
			item.setMemberPrice(list_String.get(i++));
			item.setDetails(list_String.get(i++));
			item.setMinutes(list_String.get(i++));
			item.setSeconds(list_String.get(i++));
			item.setAgoraPrice(list_String.get(i++));
			item.setArea(list_String.get(i++));
			item.setSeckillPrice(list_String.get(i++));
			item.setDays(list_String.get(i++));
			item.setHours(list_String.get(i++));
			item.setCategoryID(list_String.get(i++));
			item.setProductName(list_String.get(i++));
			item.setProductID(list_String.get(i++));
			item.setCategoryName(list_String.get(i++));
			item.setName(list_String.get(i++));
			item.setBrandName(list_String.get(i++));
			item.setFresh(list_String.get(i++));
			item.setIsSecondKill(list_String.get(i++));
			
			item.printEntityItems();
			
			list_EntityItems.add(item);
		}
		return list_EntityItems;
	}
	public static EntityItems getItemsWithNoImgByID(int itemID){ 
		ArrayList<String> param=new ArrayList<String>();
		ArrayList<Object> value=new ArrayList<Object>();
		param.add("itemID");
		value.add(itemID);
		  		
 		ArrayList<String> list_String=new ArrayList<String>(); 
		list_String=ServiceSoap.GetWebServre("getItemsWithNoImgByItemID",param,value);
		
		if(list_String.size()<1){return null;}

		EntityItems item=new EntityItems();
		for(int i=0;i<list_String.size();){ 
			item.setBrandID(list_String.get(i++));
			item.setProductID(list_String.get(i++)); 
			item.setItemID(list_String.get(i++));
			item.setVipPrice(list_String.get(i++));
			item.setMemberPrice(list_String.get(i++));
			item.setDetails(list_String.get(i++));
			item.setMinutes(list_String.get(i++));
			item.setSeconds(list_String.get(i++));
			item.setAgoraPrice(list_String.get(i++));
			item.setArea(list_String.get(i++));
			item.setSeckillPrice(list_String.get(i++));
			item.setDays(list_String.get(i++));
			item.setHours(list_String.get(i++));
			item.setCategoryID(list_String.get(i++));
			item.setProductName(list_String.get(i++));
			item.setProductID(list_String.get(i++));
			item.setCategoryName(list_String.get(i++));
			item.setName(list_String.get(i++));
			item.setBrandName(list_String.get(i++));
			item.setFresh(list_String.get(i++));
			item.setIsSecondKill(list_String.get(i++)); 
		}
		item.printEntityItems();
 		return item;
	}	
}



















