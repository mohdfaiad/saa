package com.saa.report.quries;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import javax.sql.DataSource;

import com.saa.data.SQLBuilder;

import antlr.collections.List;

public class ReportQueryManager implements QueryManagerIF {
	
	private final DataSource dataSource = null;
	private Connection connection = null;
	
	public ReportQueryManager (Connection con){
		this.connection = con;
	}
	
	
	
	
	public List getFinishedGoodItems(String docNo)throws SQLException{
		
		ResultSet rs =null;
		Statement stm = connection.createStatement();
		rs = stm.executeQuery(SQLBuilder.getFinishdGoodsStockAdjust());
		
		List l = null;
		
		return l;
	}
	
	

}
