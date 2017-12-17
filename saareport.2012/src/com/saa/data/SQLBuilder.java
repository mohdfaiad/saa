/*
 * SQLBuilder.java
 *
 * Created on April 10, 2007, 2:43 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.data;

/**
 *
 * @author Administrator
 */
public class SQLBuilder {
    
    /** Creates a new instance of SQLBuilder */
    private static String user  ="'jrx'";
    private static String EXECUTE_PROCEDURE = "execute procedure\t";
    private static String sp_x_monthly_close = "x_monthly_close\t";
    private static final String NEWLINE ="\n";
    private SQLBuilder() {
    }
    
    /*@return treemenu sql select */
    public static String getTreeMenuSelect(){
        StringBuffer  sb = new StringBuffer() ;
       sb.append("SELECT FORM_caption as ChildName,\n");
       sb.append("MENU_INDEX as Node,\n");
       sb.append("FORM_NAME  as NodeAction,\n");
       sb.append("MENU_ITEM_INDEX as ChildNode,\n");
       sb.append("MAIN_MENU_NAME as RootName,\n");
       sb.append("history_caption as ResourceName\n");
       sb.append("from sys_menus where MODULE_ID = 'JRX'\n");
       sb.append("AND ENABLED = 'Y'\n");
       sb.append("order by MAIN_MENU_NAME,MENU_INDEX,FORM_NAME,MENU_ITEM_INDEX");
       return sb.toString();
    }
    
    public static String getTreeNodeSelect(){
          StringBuffer  sb = new StringBuffer() ;    
          sb.append("select distinct  MENU_INDEX as Node,\n");
          sb.append("MAIN_MENU_NAME as RootName\n");
          sb.append("from sys_menus where update_user = 'jrx'\n");
          sb.append("order by MENU_INDEX\n");
          return sb.toString();
    }
    
    public static String getMontylyCloseExecute(Object[] params){
       StringBuffer  sb = new StringBuffer() ;
       sb.append(EXECUTE_PROCEDURE);
       sb.append(sp_x_monthly_close);
       sb.append(params[0].toString());
       sb.append(",");
       sb.append(params[1].toString());
       sb.append(",");
       sb.append(user);
       return sb.toString(); 
    }
    
    public static String getLoginValidExecute(Object[] params){
        StringBuffer sb = new StringBuffer();
        sb.append("select count(*) as nROW from sys_users\n");
        sb.append("where user_id='"+params[0].toString()+"'\n");
        sb.append("and current_password='"+params[1].toString()+"'");
        return sb.toString();
              
    }
    public static String getAvaliableLots(){
            //    
    //    SELECT  distinct lot_cd as purchase_no
    //FROM   ic_stockcard
    //WHERE DOC_DATE <=  current_timestamp
    //AND GROUP_ID NOT IN ('SG009','SG008')
    //AND PURCHASE_DATE >= '01/01/2006'
    //GROUP BY STOCK_CD,GROUP_ID,UOM_CD,LOT_CD,PURCHASE_DATE,ACCT_CD,REF_NO,REF_DATE
    //HAVING SUM(QTY) > 0
        StringBuffer sb = new StringBuffer();
        sb.append("SELECT  distinct lot_cd as purchase_no\n");
        sb.append("FROM   ic_stockcard\n");
        sb.append("WHERE DOC_DATE <=  current_timestamp\n");
        sb.append("and purchase_date >='1/1/2006'\n");
        sb.append("GROUP BY STOCK_CD,GROUP_ID,UOM_CD,LOT_CD,PURCHASE_DATE,REF_NO,REF_DATE\n");
        sb.append("HAVING SUM(QTY) > 0\n");
        sb.append("order by purchase_date");
        return sb.toString();
    }
    
    public static String getDebtors(){
    	StringBuffer sb = new StringBuffer();
        sb.append("SELECT  name FROM AR_DEBTOR ORDER BY NAME");
        return sb.toString();
    
    	
    }
    
    
    public static String getAvaliableGRNNO(){
//     SELECT DISTINCT GRN_NO
//  FROM PO_GRN_HD
//  WHERE STATUS <>'X'
        StringBuffer sb = new StringBuffer();
        sb.append("SELECT DISTINCT GRN_NO\n");
        sb.append("FROM PO_GRN_HD\n");
        sb.append("WHERE STATUS <>'X'\n");
        return sb.toString();
    }
    /*quotation*/
    public static String getAvalibleQuote(){
    	StringBuffer sb = new StringBuffer();
    	sb.append("select doc_no from so_quotation_hd where status ='A' order by doc_date");
    	return sb.toString();
    }
    /*Aor*/
    public static String getAvalibleAOR(){
    	StringBuffer sb = new StringBuffer();
    	sb.append("select order_no from so_order_hd where status ='A' order by order_date");
    	return sb.toString();
    }
    
    public static String getAvaliableDeliveryNo(){
         StringBuffer sb = new StringBuffer();
        sb.append("SELECT DISTINCT delivery_no\n");
        sb.append("FROM so_det_hd\n");
        sb.append("WHERE STATUS <>'X'\n");
        return sb.toString();
    }
    /*pc util functions*/
    public static String getAvaliablePCOrderNo(){
        StringBuffer sb = new StringBuffer();
        sb.append("select ORDER_NO from po_order_hd\n");
       	sb.append("where status ='A'");
    	return sb.toString();
    }
    /*pc*/
    /**@return 
        execute procedure X_GET_MELT_SUMMARY  '01M04','04M04' '@fromMelt' , '@toMelt'
     *@param fromMelt String 
     *@param toMelt String 
     *
     */
    public static String getMeltSheetSummary(String fromMelt , String toMelt){ 
        String s = EXECUTE_PROCEDURE +" X_GET_MELT_SUMMARY "+quotedString(fromMelt)+","+quotedString(toMelt)+NEWLINE;
        return s;     
    }
    
    public static String quotedString(String value){
        return "'"+value+"'";
    }
    
    /***
     * @since 6 April,2010 refer to SAA request remark should overwrite not append
     * **/
    public static String updatePurchaseOrderRemarks(String pc, String updateValue){
    	StringBuffer sb = new StringBuffer();
    	sb.append("update po_order_hd set remarks =");
    	sb.append("'"+updateValue+"'");
    	sb.append("\nwhere order_no="+quotedString(pc));
    	return sb.toString();
    	
    }
    public static String getSaleOrderItems(String docNo){
    	StringBuffer sb = new StringBuffer();
    	sb.append("select cust_code,item_code from so_order_dt where order_no="+quotedString(docNo));
    	return sb.toString();
    }
    public static String getQuotationItems(String docNo){
    	StringBuffer sb = new StringBuffer();
    	sb.append("select cust_code,item_code from so_quotation_dt where doc_no="+quotedString(docNo));
    	return sb.toString();
    	
    }
    public static String getExecuteSaleComponentDetail(String custNo, String itemNo){
    	StringBuffer sb = new StringBuffer();
    	sb.append("execute procedure x_get_saleitem_components "+quotedString(custNo)+", "+quotedString(itemNo));
    	return sb.toString();
    	
    }
    
    
    /**********Account receive Queries*****/
    public static String getUnpostARInvoice(){
    	StringBuffer sb = new StringBuffer();
    	sb.append("select doc_no from ar_invoice_hd where status='N' order by doc_date");
    	return sb.toString();
    }
    
    /**********Account receive Queries*****/
    public static String getUnpostARReceipt(){
    	StringBuffer sb = new StringBuffer();
    	sb.append("select doc_no from ar_receipt_hd where status='N' order by doc_date");
    	return sb.toString();
    }
    
    
    public static String getFinishdGoodsStockAdjust(){
    	StringBuffer sb = new StringBuffer();
    	sb.append("SELECT h.doc_no as \"documentNo\",\n");
    	sb.append("h.doc_date as \"documentDate\",\n");
    	sb.append("h.descs as \"description\",\n");
    	sb.append("h.descs1 as \"remark\",\n");
    	sb.append("h.status as \"staus\",\n");
		sb.append("d.melt_no as \"meltNo\",\n");
		sb.append("d.item_code as \"itemCode\",\n");
		sb.append("d.uom_cd as \"uom\",\n");
		sb.append("d.unknow_melt_flag as \"unknowMelt\",\n");
		sb.append("d.qty as \"qty\",\n");
		sb.append("d.bundle_qty as \"bundleQty\",\n");
		sb.append("d.onhand_qty as \"onhandQty\\n,");
		sb.append("d.onhand_bundle_qty as \"onhandBundleQty\\n");
		sb.append("FROM pl_fng_adj_hd H, pl_fng_adj_dt D");
		sb.append("WHERE H.DOC_NO = D.doc_no");
		sb.append("AND H.STATUS ='N'");
    	return sb.toString();
    }
    
    public static String getPurchaseOrderStatusSQL(){
    	StringBuffer sb = new StringBuffer();
    	
    	sb.append("SELECT PO_ORDER_HD.SUPP_CODE,\n");
    	sb.append("PO_ORDER_HD.ORDER_NO,\n");
        sb.append("PO_ORDER_HD.ORDER_DATE,\n");
    	sb.append("PO_ORDER_HD.REF_NO,\n"); 
    	sb.append("PO_ORDER_HD.REF_DATE,\n");
    	sb.append("PO_ORDER_HD.term_of_payment,\n");
    	sb.append("case PO_ORDER_HD.STATUS when 'A' then 'Approved'\n");
    	sb.append("when 'C' then 'Canceledl' when 'O' then 'Closed'\n");
    	sb.append("end as STATUS,\n");
    	sb.append("PO_ORDER_HD.ORDER_AMT,\n");
    	sb.append("PO_ORDER_HD.DESCS,\n"); 
    	sb.append("PO_ORDER_HD.DELIVERY_DATE,\n");
    	sb.append("PO_ORDER_HD.REMARKS,\n");
    	sb.append("PO_ORDER_DT.ITEM_CODE,\n");
    	sb.append("PO_ORDER_DT.LINE_NO,\n");
    	sb.append("PO_ORDER_DT.UOM,\n");
    	sb.append("PO_ORDER_DT.ITEM_DESCS,\n");
    	sb.append("PO_ORDER_DT.UNIT_COST,\n");
    	sb.append("PO_ORDER_DT.TOTAL_AMT,\n");
     	sb.append("PO_ORDER_DT.BASE_AMT,\n");
      	sb.append("PO_ORDER_DT.DISCS_AMT,\n");
    	sb.append("PO_ORDER_DT.QTY,\n");
    	sb.append("case PO_ORDER_DT.STATUS when 'A' then 'Approved'\n");
    	sb.append("when 'C' then 'Canceledl' when 'O' then 'Closed'\n");
    	sb.append("end as ITEMSTATUS,\n");
    	sb.append("PO_ORDER_DT.GRN_QTY,\n");
    	sb.append("PO_SUPPLIER.NAME,\n");
    	sb.append("ic_mat_stk_hd.en_descs\n"); 
    	sb.append("FROM PO_ORDER_HD, PO_SUPPLIER, PO_ORDER_DT, IC_MAT_STK_HD\n");
    	sb.append("WHERE PO_ORDER_HD.SUPP_CODE = PO_SUPPLIER.SUPPLIER_CD\n");
    	sb.append("AND  PO_ORDER_HD.SUPP_CODE = PO_ORDER_DT.SUPP_CODE\n");
    	sb.append("AND  PO_ORDER_HD.ORDER_NO = PO_ORDER_DT.ORDER_NO\n");
    	sb.append(" AND  PO_ORDER_HD.ORDER_DATE = PO_ORDER_DT.ORDER_DATE\n");
    	sb.append("AND  PO_ORDER_DT.ITEM_CODE = IC_MAT_STK_HD.STOCK_CD\n");
    	sb.append("AND PO_ORDER_HD.ORDER_NO LIKE '%PO%/10'");
    	return sb.toString();
    	
    	
    }
    
    public static String getUnpostCreditNote(){
    	
    	StringBuffer sb = new StringBuffer();
    	sb.append("SELECT DOC_NO FROM AR_CREDIT_NOTE_HD\n");
    	sb.append("where MODE ='C' AND STATUS ='N' order by doc_date");
    		return sb.toString();
    }
	 public static String getUnpostDebitNote(){
	    	
	    	StringBuffer sb = new StringBuffer();
	    	sb.append("SELECT DOC_NO FROM AR_CREDIT_NOTE_HD\n");
	    	sb.append("where MODE ='D' AND STATUS ='N'");
	    	return sb.toString();
	    }
	 // 12 Nov,2010 11:00 am
	 public static String getAvaliableSaleRevision(){
			StringBuffer sb = new StringBuffer(); 
			
			sb.append("select  doc_no from so_order_revision_hd\n");
			sb.append("where status ='A'"); //17 Nov,2010 change from ''N to A only approved status will be displayed.
			sb.append("order by doc_no");
			return sb.toString();
		 
	 }
	 
	 
	 //9 Feb,2011 Check plate result.
	 
	 public static String getCheckPlateResult(	 String fromMelt , String toMelt){

		 StringBuffer sb = new StringBuffer();
		 sb.append(" execute procedure x_get_result_check_plate "+quotedString(fromMelt)+","+quotedString(toMelt));
		 return sb.toString();
		 
	 }
        public static String getUnpostStockAdjust(){
         StringBuffer sb = new StringBuffer();
        sb.append("SELECT  doc_no\n");
        sb.append("FROM ic_stock_adjust_hd\n");
        sb.append("WHERE STATUS <>'X'\n");
        return sb.toString();
    }
	   
	   

  
    
}
