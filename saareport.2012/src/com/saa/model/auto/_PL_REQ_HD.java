package com.saa.model.auto;

import java.io.Serializable;
import java.sql.Timestamp;

import com.saa.util.AutoInitialize;

public class _PL_REQ_HD extends AutoInitialize {
	    /*DOC_NO       VARCHAR15 NOT NULL,
	    DOC_DATE     TIMESTAMP NOT NULL,
	    DESCS        VARCHAR60,
	    REQ_BY       VARCHAR(60) NOT NULL,
	    REQ_DATE     TIMESTAMP NOT NULL,
	    UPDATE_USER  VARCHAR10,
	    UPDATE_DATE  TIMESTAMP,
	    TRX_TYPE     VARCHAR2 NOT NULL,
	    IC_MODE      FLAG,
	    REMARKS      VARCHAR60,
	    MELT_NO      VARCHAR(10) NOT NULL,
	    STATUS       VARCHAR(1) NOT NULL,
	    PLAN_DOC     VARCHAR15 NOT NULL,
	    PLAN_DATE    TIMESTAMP NOT NULL,
	    ALLOY_CODE   VARCHAR15 NOT NULL,
	    ISSUE_BY     VARCHAR60*/
	
	public String DOC_NO;
	public Timestamp DOC_DATE;
	public String DESCS;
	public String REQ_BY;
	public Timestamp REQ_DATE;
	public String UPDATE_USER;
	public Timestamp UPDATE_DATE;
	public String TRX_TYPE;
	public String IC_MODE;
	public String REMARKS;
	public String MELT_NO;
	public String STATUS;
	public String PLAN_DOC;
	public Timestamp PLAN_DATE;
	public String ALLOY_CODE;
	public String ISSUE_BY;
	public String getALLOY_CODE() {
		return ALLOY_CODE;
	}
	public void setALLOY_CODE(String alloy_code) {
		ALLOY_CODE = alloy_code;
	}
	public String getDESCS() {
		return DESCS;
	}
	public void setDESCS(String descs) {
		DESCS = descs;
	}
	public Timestamp getDOC_DATE() {
		return DOC_DATE;
	}
	public void setDOC_DATE(Timestamp doc_date) {
		DOC_DATE = doc_date;
	}
	public String getDOC_NO() {
		return DOC_NO;
	}
	public void setDOC_NO(String doc_no) {
		DOC_NO = doc_no;
	}
	public String getIC_MODE() {
		return IC_MODE;
	}
	public void setIC_MODE(String ic_mode) {
		IC_MODE = ic_mode;
	}
	public String getISSUE_BY() {
		return ISSUE_BY;
	}
	public void setISSUE_BY(String issue_by) {
		ISSUE_BY = issue_by;
	}
	}
