package com.saa.ui.warehouse.stockissue.model;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import com.saa.model.auto._PL_REQ_HD;

public class ProductionMaterialRequestHeaderItem implements Serializable {
	
	private _PL_REQ_HD data;
	
	public ProductionMaterialRequestHeaderItem(ResultSet rs)throws SQLException{
		data = new _PL_REQ_HD();
		data.populate(rs);
	}
	
	
	/**
	 * @return the aLLOY_CODE
	 */
	public String getALLOY_CODE() {
		return data.ALLOY_CODE;
	}
	/**
	 * @param alloy_code the aLLOY_CODE to set
	 */
	public void setALLOY_CODE(String alloy_code) {
		data.ALLOY_CODE = alloy_code;
	}
	/**
	 * @return the dESCS
	 */
	public String getDESCS() {
		return data.DESCS;
	}
	/**
	 * @param descs the dESCS to set
	 */
	public void setDESCS(String descs) {
		data.DESCS = descs;
	}
	/**
	 * @return the dOC_DATE
	 */
	public Timestamp getDOC_DATE() {
		return data.DOC_DATE;
	}
	/**
	 * @param doc_date the dOC_DATE to set
	 */
	public void setDOC_DATE(Timestamp doc_date) {
		data.DOC_DATE = doc_date;
	}
	/**
	 * @return the dOC_NO
	 */
	public String getDOC_NO() {
		return data.DOC_NO;
	}
	/**
	 * @param doc_no the dOC_NO to set
	 */
	public void setDOC_NO(String doc_no) {
		data.DOC_NO = doc_no;
	}
	/**
	 * @return the iC_MODE
	 */
	public String getIC_MODE() {
		return data.IC_MODE;
	}
	/**
	 * @param ic_mode the iC_MODE to set
	 */
	public void setIC_MODE(String ic_mode) {
		data.IC_MODE = ic_mode;
	}
	/**
	 * @return the iSSUE_BY
	 */
	public String getISSUE_BY() {
		return data.ISSUE_BY;
	}
	/**
	 * @param issue_by the iSSUE_BY to set
	 */
	public void setISSUE_BY(String issue_by) {
		data.ISSUE_BY = issue_by;
	}
	/**
	 * @return the mELT_NO
	 */
	public String getMELT_NO() {
		return data.MELT_NO;
	}
	/**
	 * @param melt_no the mELT_NO to set
	 */
	public void setMELT_NO(String melt_no) {
		data.MELT_NO = melt_no;
	}
	/**
	 * @return the pLAN_DATE
	 */
	public Timestamp getPLAN_DATE() {
		return data.PLAN_DATE;
	}
	/**
	 * @param plan_date the pLAN_DATE to set
	 */
	public void setPLAN_DATE(Timestamp plan_date) {
		data.PLAN_DATE = plan_date;
	}
	/**
	 * @return the pLAN_DOC
	 */
	public String getPLAN_DOC() {
		return data.PLAN_DOC;
	}
	/**
	 * @param plan_doc the pLAN_DOC to set
	 */
	public void setPLAN_DOC(String plan_doc) {
		data.PLAN_DOC = plan_doc;
	}
	/**
	 * @return the rEMARKS
	 */
	public String getREMARKS() {
		return data.REMARKS;
	}
	/**
	 * @param remarks the rEMARKS to set
	 */
	public void setREMARKS(String remarks) {
		data.REMARKS = remarks;
	}
	/**
	 * @return the rEQ_BY
	 */
	public String getREQ_BY() {
		return data.REQ_BY;
	}
	/**
	 * @param req_by the rEQ_BY to set
	 */
	public void setREQ_BY(String req_by) {
		data.REQ_BY = req_by;
	}
	/**
	 * @return the rEQ_DATE
	 */
	public Timestamp getREQ_DATE() {
		return data.REQ_DATE;
	}
	/**
	 * @param req_date the rEQ_DATE to set
	 */
	public void setREQ_DATE(Timestamp req_date) {
		data.REQ_DATE = req_date;
	}
	/**
	 * @return the sTATUS
	 */
	public String getSTATUS() {
		return data.STATUS;
	}
	/**
	 * @param status the sTATUS to set
	 */
	public void setSTATUS(String status) {
		data.STATUS = status;
	}
	/**
	 * @return the tRX_TYPE
	 */
	public String getTRX_TYPE() {
		return data.TRX_TYPE;
	}
	/**
	 * @param trx_type the tRX_TYPE to set
	 */
	public void setTRX_TYPE(String trx_type) {
		data.TRX_TYPE = trx_type;
	}
	/**
	 * @return the uPDATE_DATE
	 */
	public Timestamp getUPDATE_DATE() {
		return data.UPDATE_DATE;
	}
	/**
	 * @param update_date the uPDATE_DATE to set
	 */
	public void setUPDATE_DATE(Timestamp update_date) {
		data.UPDATE_DATE = update_date;
	}
	/**
	 * @return the uPDATE_USER
	 */
	public String getUPDATE_USER() {
		return data.UPDATE_USER;
	}
	/**
	 * @param update_user the uPDATE_USER to set
	 */
	public void setUPDATE_USER(String update_user) {
		data.UPDATE_USER = update_user;
	}



	

}
