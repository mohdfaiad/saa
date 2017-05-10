package com.saa.ui.warehouse.stockissue.service;

import com.saa.model.*;
import com.saa.ui.warehouse.stockissue.model.ProductionMaterialRequestDetailItem;
import com.saa.ui.warehouse.stockissue.model.ProductionMaterialRequestDetailItemSet;
import com.saa.ui.warehouse.stockissue.model.ProductionMaterialRequestHeaderItem;
import com.saa.ui.warehouse.stockissue.model.ProductionMaterialRequestHeaderItemSet;
import com.saa.ui.warehouse.stockissue.model.ProductionMaterialRequestViewItem;
import com.saa.ui.warehouse.stockissue.model.ProductionMaterialRequestViewItemSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductionMaterialRequestDataManager {

	static public ProductionMaterialRequestHeaderItemSet retreiveAll(Connection con) throws SQLException{
		ProductionMaterialRequestHeaderItemSet set = new ProductionMaterialRequestHeaderItemSet();
		ProductionMaterialRequestHeaderItem item = null;
		PreparedStatement stmt = con.prepareStatement("SELECT * FROM PL_REQ_HD WHERE Status='N'");
		ResultSet rs = stmt.executeQuery();
		while(rs.next()){
			item = new  ProductionMaterialRequestHeaderItem(rs);
			set.addItem(item);
		}
		return set;
			
	}
	
	static public ProductionMaterialRequestHeaderItem retrieveByPK(Connection con,String pkID) throws SQLException{
		ProductionMaterialRequestHeaderItem item = null;
		PreparedStatement stmt = con.prepareStatement("SELECT * FROM PL_REQ_HD WHERE DOC_NO =?");
		stmt.setString(1, pkID);
		ResultSet rs = stmt.executeQuery();
		if(rs.next()){
			item = new  ProductionMaterialRequestHeaderItem(rs);
		
		}
		return item;
			
	}
        /**
         * @return 
         **/
        static public ProductionMaterialRequestViewItemSet retrieveNonePost(Connection con)throws SQLException{
            ProductionMaterialRequestViewItemSet set = new ProductionMaterialRequestViewItemSet();
            ProductionMaterialRequestViewItem item = null;
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM V_MATERIAL_REQUEST WHERE STATUS='N'");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
			item = new  ProductionMaterialRequestViewItem(rs);
			set.addItem(item);
		}
		return set;
        }
        
        /**
         @return set of PL_REQ_DT 
         * @param documentNo of material request 
         */
        static public ProductionMaterialRequestDetailItemSet retrieveProductionMaterialRequestDetail(Connection con,String docNo) throws SQLException{
            ProductionMaterialRequestDetailItemSet set = new ProductionMaterialRequestDetailItemSet();
            ProductionMaterialRequestDetailItem item = null;
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM PL_REQ_DT WHERE DOC_NO=?");
            stmt.setString(1, docNo);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
			item = new  ProductionMaterialRequestDetailItem(rs);
			set.addItem(item);
		}
            
            
            
            return set;
            
            
        }


}
