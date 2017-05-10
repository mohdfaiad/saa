package com.saa.model;

import java.sql.Timestamp;

public class PurchaseOrderStatusItem extends AbstractModel {
	
	
	
	private String VERSION="0.0";
	
	public String SUPP_CODE;
	public String ORDER_NO;
	public Timestamp ORDER_DATE;
	public String REF_NO;
	public Timestamp REF_DATE;
	public String STATUS;
	public double ORDER_AMT;
	public String DESCS;
	public int TERM_OF_PAYMENT;
	public Timestamp DELIVERY_DATE;
	public String REMARKS;
	public String ITEM_CODE;
	public String UOM;
	public String ITEM_DESCS;
	public double UNIT_COST;
	public double TOTAL_AMT;
	public double BASE_AMT;
	public double QTY;
	public String ITEMSTATUS;
	public double GRN_QTY;
	public double DISCS_AMT;
	
	public String NAME;
	public String EN_DESCS;
	public double getBASE_AMT() {
		return BASE_AMT;
	}
	public void setBASE_AMT(double base_amt) {
		BASE_AMT = base_amt;
	}
	public Timestamp getDELIVERY_DATE() {
		return DELIVERY_DATE;
	}
	public void setDELIVERY_DATE(Timestamp delivery_date) {
		DELIVERY_DATE = delivery_date;
	}
	public String getDESCS() {
		return DESCS;
	}
	public void setDESCS(String descs) {
		DESCS = descs;
	}
	public String getEN_DESCS() {
		return EN_DESCS;
	}
	public void setEN_DESCS(String en_descs) {
		EN_DESCS = en_descs;
	}
	public double getGRN_QTY() {
		return GRN_QTY;
	}
	public void setGRN_QTY(float grn_qty) {
		GRN_QTY = grn_qty;
	}
	public String getITEM_CODE() {
		return ITEM_CODE;
	}
	public void setITEM_CODE(String item_code) {
		ITEM_CODE = item_code;
	}
	public String getITEM_DESCS() {
		return ITEM_DESCS;
	}
	public void setITEM_DESCS(String item_descs) {
		ITEM_DESCS = item_descs;
	}
	public String getITEMSTATUS() {
		return ITEMSTATUS;
	}
	public void setITEMSTATUS(String itemstatus) {
		ITEMSTATUS = itemstatus;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String name) {
		NAME = name;
	}
	public double getORDER_AMT() {
		return ORDER_AMT;
	}
	public void setORDER_AMT(double order_amt) {
		ORDER_AMT = order_amt;
	}
	public Timestamp getORDER_DATE() {
		return ORDER_DATE;
	}
	public void setORDER_DATE(Timestamp order_date) {
		ORDER_DATE = order_date;
	}
	public String getORDER_NO() {
		return ORDER_NO;
	}
	public void setORDER_NO(String order_no) {
		ORDER_NO = order_no;
	}

	public Timestamp getREF_DATE() {
		return REF_DATE;
	}
	public void setREF_DATE(Timestamp ref_date) {
		REF_DATE = ref_date;
	}
	public String getREF_NO() {
		return REF_NO;
	}
	public void setREF_NO(String ref_no) {
		REF_NO = ref_no;
	}
	public String getREMARKS() {
		return REMARKS;
	}
	public void setREMARKS(String remarks) {
		REMARKS = remarks;
	}
	public String getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(String status) {
		STATUS = status;
	}
	public String getSUPP_CODE() {
		return SUPP_CODE;
	}
	public void setSUPP_CODE(String supp_code) {
		SUPP_CODE = supp_code;
	}
	public double getTOTAL_AMT() {
		return TOTAL_AMT;
	}
	public void setTOTAL_AMT(double total_amt) {
		TOTAL_AMT = total_amt;
	}
	public double getUNIT_COST() {
		return UNIT_COST;
	}
	public void setUNIT_COST(float unit_cost) {
		UNIT_COST = unit_cost;
	}
	public String getUOM() {
		return UOM;
	}
	public void setUOM(String uom) {
		UOM = uom;
	}
	public String getVERSION() {
		return VERSION;
	}
	public void setVERSION(String version) {
		VERSION = version;
	}
	public double getDISCS_AMT() {
		return DISCS_AMT;
	}
	public void setDISCS_AMT(double discs_amt) {
		DISCS_AMT = discs_amt;
	}
	public int getTERM_OF_PAYMENT() {
		return TERM_OF_PAYMENT;
	}
	public void setTERM_OF_PAYMENT(int term_of_payment) {
		TERM_OF_PAYMENT = term_of_payment;
	}
	public void setGRN_QTY(double grn_qty) {
		GRN_QTY = grn_qty;
	}
	public void setQTY(double qty) {
		QTY = qty;
	}
	public void setUNIT_COST(double unit_cost) {
		UNIT_COST = unit_cost;
	}
	public double getQTY() {
		return QTY;
	}
	
	
	


}
