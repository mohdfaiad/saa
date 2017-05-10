/*
 * _PL_REQ_DT.java
 * 
 * Created on Apr 19, 2008, 3:35:32 AM
 * 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.saa.model.auto;

import com.saa.util.AutoInitialize;
import java.sql.Timestamp;

/**
 *
 * DOC_NO
DOC_DATE
TRX_TYPE
ITEM_CODE
ITEM_DESCS
LOT_NO
PURCHASE_DATE
QTY
UNIT_COST
UOM
TOTAL_COST
GROUP_ID
USAGED_QTY
ITEM_TYPE
ONHAND_QTY
REF_NO
REF_DATE
ACCT_CD

 */
public class _PL_REQ_DT extends AutoInitialize{
    public String   DOC_NO;
    public Timestamp DOC_DATE;
    public String TRX_TYPE;
    public String ITEM_CODE;
    public String ITEM_DESCS;
    public String LOT_NO;
    public Timestamp PURCHASE_DATE;
    public float QTY;
    public float UNIT_COST;
    public String UOM;
    public float TOTAL_COST;
    public String GROUP_ID;
    public float USAGED_QTY;
    public String ITEM_TYPE;
    public float ONHAND_QTY;
    public String REF_NO;
    public Timestamp REF_DATE;
    public String ACCT_CD;
    

    public _PL_REQ_DT() {
    }

    
    

}
