package com.graduation.model;

import java.util.ArrayList;
import java.util.List;

import com.graduation.entity.EntityImage;
import com.graduation.entity.EntityLogLogin; 
import com.graduation.entity.EntityLogView;
import com.graduation.util.database.sqlserver.ServiceSoap;

public class ModelLogView {
	public static boolean addViewLog(EntityLogView entityLogView){
		ArrayList<String> param=new ArrayList<String>();
		ArrayList<Object> value=new ArrayList<Object>();
		param.add("VItemID");
		param.add("VUserID");
		param.add("VLocationX");
		param.add("VLocationY"); 
		param.add("VDate"); 
		param.add("VisHidden"); 
		
		value.add(entityLogView.getVItemID());
		value.add(entityLogView.getVUserID());
		value.add(entityLogView.getVLocationX());
		value.add(entityLogView.getVLocationY());
		value.add(entityLogView.getVDate());
		value.add(entityLogView.isVisHidden());
		
		ArrayList<String> list=new ArrayList<String>(); 
		list=ServiceSoap.GetWebServre("addViewLog",param,value);
		if(list==null||list.size()<1){return false;} 
		for(int i=0;i<list.size();){ 
			return Boolean.parseBoolean(list.get(0));
		}
		return false;
	}
	
	public static ArrayList<EntityLogView> getLogViewByItemID (int itemID){
		ArrayList<String> param=new ArrayList<String>();
		ArrayList<Object> value=new ArrayList<Object>();
		param.add("ItemID"); 
		value.add(itemID); 
		ArrayList<EntityLogView> list_EntityLogView =new ArrayList<EntityLogView>();
		ArrayList<String> list_String=new ArrayList<String>(); 
		list_String=ServiceSoap.GetWebServre("getLogViewByItemID",param,value);
		if(list_String==null||list_String.size()<1){return null;} 
		
		for(int i=0;i<list_String.size();){ 
			EntityLogView mEntityLogView=new EntityLogView(); 
			mEntityLogView.setVLogID(list_String.get(i++));
			mEntityLogView.setVItemID(list_String.get(i++));
			mEntityLogView.setVUserID(list_String.get(i++));
			mEntityLogView.setVLocationX(list_String.get(i++));
			mEntityLogView.setVLocationY(list_String.get(i++));
			mEntityLogView.setVDate(list_String.get(i++));
			mEntityLogView.setVisHidden(list_String.get(i++)); 
			list_EntityLogView.add(mEntityLogView);
		}
		return list_EntityLogView; 
	}	 
	public static ArrayList<EntityLogView> getLastTenLogViewByItemID (int itemID){
		ArrayList<String> param=new ArrayList<String>();
		ArrayList<Object> value=new ArrayList<Object>();
		param.add("ItemID"); 
		value.add(itemID); 
		ArrayList<EntityLogView> list_EntityLogView =new ArrayList<EntityLogView>();
		ArrayList<String> list_String=new ArrayList<String>(); 
		list_String=ServiceSoap.GetWebServre("getLastTenLogViewByItemID",param,value);
		if(list_String==null||list_String.size()<1){return null;} 
		
		for(int i=0;i<list_String.size();){ 
			EntityLogView mEntityLogView=new EntityLogView(); 
			mEntityLogView.setVLogID(list_String.get(i++));
			mEntityLogView.setVItemID(list_String.get(i++));
			mEntityLogView.setVUserID(list_String.get(i++));
			mEntityLogView.setVLocationX(list_String.get(i++));
			mEntityLogView.setVLocationY(list_String.get(i++));
			mEntityLogView.setVDate(list_String.get(i++));
			mEntityLogView.setVisHidden(list_String.get(i++)); 
			list_EntityLogView.add(mEntityLogView);
		}
		return list_EntityLogView; 
	}
	 
}
