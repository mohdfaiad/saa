/*
 * ProductionMaterialRequestDetailItem.java
 * 
 * Created on Apr 19, 2008, 3:39:07 AM
 * 
 * To change data template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.saa.ui.warehouse.stockissue.model;

import com.saa.model.auto._PL_REQ_DT;
import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author Administrator
 */
public class ProductionMaterialRequestDetailItem implements Serializable{
    private _PL_REQ_DT data;
    public ProductionMaterialRequestDetailItem() {
    }
    
    public ProductionMaterialRequestDetailItem(ResultSet result)throws SQLException{
        data = new _PL_REQ_DT();
  	data.populate(result);
    }
    public String getACCT_CD() {
        return data.ACCT_CD;
    }

    public void setACCT_CD(String ACCT_CD) {
        data.ACCT_CD = ACCT_CD;
    }

    public Timestamp getDOC_DATE() {
        return data.DOC_DATE;
    }

    public void setDOC_DATE(Timestamp DOC_DATE) {
        data.DOC_DATE = DOC_DATE;
    }

    public String getDOC_NO() {
        return data.DOC_NO;
    }

    public void setDOC_NO(String DOC_NO) {
        data.DOC_NO = DOC_NO;
    }

    public String getGROUP_ID() {
        return data.GROUP_ID;
    }

    public void setGROUP_ID(String GROUP_ID) {
        data.GROUP_ID = GROUP_ID;
    }

    public String getITEM_CODE() {
        return data.ITEM_CODE;
    }

    public void setITEM_CODE(String ITEM_CODE) {
        data.ITEM_CODE = ITEM_CODE;
    }

    public String getITEM_DESCS() {
        return data.ITEM_DESCS;
    }

    public void setITEM_DESCS(String ITEM_DESCS) {
        data.ITEM_DESCS = ITEM_DESCS;
    }

    public String getITEM_TYPE() {
        return data.ITEM_TYPE;
    }

    public void setITEM_TYPE(String ITEM_TYPE) {
        data.ITEM_TYPE = ITEM_TYPE;
    }

    public String getLOT_NO() {
        return data.LOT_NO;
    }

    public void setLOT_NO(String LOT_NO) {
        data.LOT_NO = LOT_NO;
    }

    public float getONHAND_QTY() {
        return data.ONHAND_QTY;
    }

    public void setONHAND_QTY(float ONHAND_QTY) {
        data.ONHAND_QTY = ONHAND_QTY;
    }

    public Timestamp getPURCHASE_DATE() {
        return data.PURCHASE_DATE;
    }

    public void setPURCHASE_DATE(Timestamp PURCHASE_DATE) {
        data.PURCHASE_DATE = PURCHASE_DATE;
    }

    public float getQTY() {
        return data.QTY;
    }

    public void setQTY(float QTY) {
        data.QTY = QTY;
    }

    public Timestamp getREF_DATE() {
        return data.REF_DATE;
    }

    public void setREF_DATE(Timestamp REF_DATE) {
        data.REF_DATE = REF_DATE;
    }

    public String getREF_NO() {
        return data.REF_NO;
    }

    public void setREF_NO(String REF_NO) {
        data.REF_NO = REF_NO;
    }

    public float getTOTAL_COST() {
        return data.TOTAL_COST;
    }

    public void setTOTAL_COST(float TOTAL_COST) {
        data.TOTAL_COST = TOTAL_COST;
    }

    public String getTRX_TYPE() {
        return data.TRX_TYPE;
    }

    public void setTRX_TYPE(String TRX_TYPE) {
        data.TRX_TYPE = TRX_TYPE;
    }

    public float getUNIT_COST() {
        return data.UNIT_COST;
    }

    public void setUNIT_COST(float UNIT_COST) {
        data.UNIT_COST = UNIT_COST;
    }

    public String getUOM() {
        return data.UOM;
    }

    public void setUOM(String UOM) {
        data.UOM = UOM;
    }

    public float getUSAGED_QTY() {
        return data.USAGED_QTY;
    }

    public void setUSAGED_QTY(float USAGED_QTY) {
        data.USAGED_QTY = USAGED_QTY;
    }

}
