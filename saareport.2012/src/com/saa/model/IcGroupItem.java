package com.saa.model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;


import com.saa.model.auto._IC_GROUP;

public class IcGroupItem implements Serializable {
	
	
   private _IC_GROUP data;
	 
	
	
	public IcGroupItem(ResultSet result) throws SQLException {
	        data = new _IC_GROUP();
	        data.populate(result);
   }
   
	public String getDescription(){
		return data.DESCS;
	}
	
	public void setDescription(String value){
		data.DESCS = value;
	}
	
	
	public String getRemark(){
		return data.REMARKS;
	}
	
	public void setRemark(String value){
		data.REMARKS = value;
		
	}
	
	
	public String getGroupID(){
		return data.GROUP_ID;
	}
	
	public void setGroupID(String value){
		data.GROUP_ID = value;
	}
	public String getUpdateUser(){
		return data.UPDATE_USER;
	}
	
	public void setUpdateUser(String value){
		data.UPDATE_USER = value;
	}
	
	
	public Timestamp getUpdateDate(){
		return data.UPDATE_DATE;
	}
	
	public void setUpdateDate(Timestamp value){
		data.UPDATE_DATE = value;
	}
  
}
