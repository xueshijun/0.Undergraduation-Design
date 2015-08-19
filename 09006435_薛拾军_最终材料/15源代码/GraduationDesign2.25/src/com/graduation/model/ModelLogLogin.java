package com.graduation.model;

import java.util.ArrayList;

import com.graduation.entity.EntityLogLogin; 
import com.graduation.util.database.sqlserver.ServiceSoap;

public class ModelLogLogin {
	public static boolean addLoginLog(EntityLogLogin entityLoginLog){
		ArrayList<String> param=new ArrayList<String>();
		ArrayList<Object> value=new ArrayList<Object>();
		param.add("LUserID");
		param.add("LLocationX");
		param.add("LLocationY");
		param.add("LDate");
		param.add("LisHidden"); 
		value.add(entityLoginLog.getLUserID());
		value.add(entityLoginLog.getLLocationX()+""); 
		value.add(entityLoginLog.getLLocationY()+"");
		value.add(entityLoginLog.getLDate());
		value.add(entityLoginLog.isLisHidden()+"");
		
		ArrayList<String> list=new ArrayList<String>(); 
		list=ServiceSoap.GetWebServre("addLoginLog",param,value);
		if(list==null||list.size()<1){return false;} 
		for(int i=0;i<list.size();){ 
			return Boolean.parseBoolean(list.get(0));
		}
		return false;
	}
    //LLogID,LUserID,LLocationX,LLocationY,LDate,LisHidden

	 
	public static ArrayList<EntityLogLogin> getLastTenLogLogin(){
		ArrayList<String> param=new ArrayList<String>();
		ArrayList<Object> value=new ArrayList<Object>();
		EntityLogLogin mEntityLogLogin;
		ArrayList<EntityLogLogin> list_EntityLogLogin=new ArrayList<EntityLogLogin>();
		ArrayList<String> list=new ArrayList<String>(); 
		list=ServiceSoap.GetWebServre("getLastTenLogLogin",param,value);
		if(list==null||list.size()<1){return null;} 
		for(int i=0;i<list.size();){  
			mEntityLogLogin=new EntityLogLogin();
			mEntityLogLogin.setLLogID(list.get(i++));
			mEntityLogLogin.setLUserID(list.get(i++));
			mEntityLogLogin.setLLocationX(list.get(i++));
			mEntityLogLogin.setLLocationY(list.get(i++));
			mEntityLogLogin.setLDate(list.get(i++));
			mEntityLogLogin.setLisHidden(list.get(i++)); 
			list_EntityLogLogin.add(mEntityLogLogin);
		}
		return list_EntityLogLogin;
	}
}
