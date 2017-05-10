/*
 * ProductMaterialRequestBrowseManager.java
 * 
 * Created on Apr 18, 2008, 11:00:42 PM
 * 
 * Working closely with GUI component to manipulate data from service package. 
 *  * and open the template in the editor.
 */

package com.saa.ui.warehouse.stockissue.manager;


import com.saa.ui.warehouse.stockissue.model.ProductionMaterialRequestHeaderItem;
import com.saa.ui.warehouse.stockissue.model.ProductionMaterialRequestViewItemSet;
import com.saa.ui.warehouse.stockissue.service.ProductionMaterialRequestDataManager;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Administrator
 */
public class ProductionMaterialRequestBrowseManager {
    private static ProductionMaterialRequestBrowseManager self = null;
    private ProductionMaterialRequestDataManager manager ;
    //private Connection dbCon = RunTimeController.getDBManager().getConnection();
    private Connection dbCon = null;
    private ProductionMaterialRequestBrowseManager(Connection conn) {
        this.dbCon = conn;
    }
    public static ProductionMaterialRequestBrowseManager getInstance(Connection conn){
        if (self == null){
            self = new ProductionMaterialRequestBrowseManager(conn);
        } 
        return self;
    }
    /**@return single record of PL_REQ_HD where status not posted*/
    public ProductionMaterialRequestHeaderItem getMaterialRequestByDocumentNo(String docNo) throws SQLException {
        return manager.retrieveByPK(dbCon, docNo);
    }
    public ArrayList getNonePostList()throws SQLException{
        return manager.retrieveNonePost(dbCon).getList();
    }
    
    public ArrayList getMaterialRequestDetail(String docNo) throws SQLException{
        return manager.retrieveProductionMaterialRequestDetail(dbCon, docNo).getList();
    }
    
}
