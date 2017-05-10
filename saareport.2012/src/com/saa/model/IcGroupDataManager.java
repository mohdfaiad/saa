package com.saa.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class IcGroupDataManager  {
	

	
	
	
	static public IcGroupItemSet retreiveAll(Connection con) throws SQLException{
		IcGroupItemSet set = new IcGroupItemSet();
		IcGroupItem item = null;
		PreparedStatement stmt = con.prepareStatement("select * from IC_GROUP");
		ResultSet rs = stmt.executeQuery();
		while(rs.next()){
			item = new  IcGroupItem(rs);
			set.addItem(item);
		}
		return set;
			
	}
	
	static public IcGroupItem retrieveByGroupID(Connection con,String groupID) throws SQLException{
		IcGroupItem item = null;
		PreparedStatement stmt = con.prepareStatement("select * from IC_GROUP WHERE GROUP_ID =?");
		stmt.setString(1, groupID);
		ResultSet rs = stmt.executeQuery();
		if(rs.next()){
			item = new  IcGroupItem(rs);
		
		}
		return item;
			
	}

}