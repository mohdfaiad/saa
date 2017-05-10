/*
 * ProductMaterialRequestViewItem.java
 * 
 * Created on May 2, 2008, 3:20:54 PM
 * 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.saa.ui.warehouse.stockissue.model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author Administrator
 */
public class ProductionMaterialRequestViewItem implements Serializable{

    
    private ProductionMaterialRequestViewData data;
    
    
    public ProductionMaterialRequestViewItem() {
    }
    
    public ProductionMaterialRequestViewItem(ResultSet result)throws SQLException{
             data = new ProductionMaterialRequestViewData();
             data.populate(result);
    }
     public Timestamp getDOC_DATE() {
        return data.DOC_DATE;
    }

    public void setDOC_DATE(Timestamp DOC_DATE) {
        this.data.DOC_DATE = DOC_DATE;
    }

    public String getDOC_NO() {
        return data.DOC_NO;
    }

    public void setDOC_NO(String DOC_NO) {
        this.data.DOC_NO = DOC_NO;
    }

    public String getISSUE_BY() {
        return data.ISSUE_BY;
    }

    public void setISSUE_BY(String ISSUE_BY) {
        this.data.ISSUE_BY = ISSUE_BY;
    }

    public String getMELT_NO() {
        return data.MELT_NO;
    }

    public void setMELT_NO(String MELT_NO) {
        this.data.MELT_NO = MELT_NO;
    }

    public String getREQ_BY() {
        return data.REQ_BY;
    }

    public void setREQ_BY(String REQ_BY) {
        this.data.REQ_BY = REQ_BY;
    }

    public String getSTATUS() {
        return data.STATUS;
    }

    public void setSTATUS(String STATUS) {
        this.data.STATUS = STATUS;
    }
 

    

}
