/*
 * WH001Frame.java
 *
 * Created on 21 ����¹ 2550, 15:29 �.
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.sa;

import com.saa.control.report.ReportsController;
import com.saa.data.SQLBuilder;
import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.BaseView;
import com.saa.ui.View.SortFieldListFrame;
import com.saa.data.ui.*;
import com.saa.util.*;
import com.saa.ui.View.panels.AbstractComboPanel;
import com.saa.ui.View.panels.AbstractLookupDialogPanel;
import com.saa.ui.View.panels.DateFromToPanel;
import com.saa.ui.View.panels.DatePanel;
import com.saa.ui.View.panels.LookupPanel;
import com.saa.ui.View.panels.YearMonthPanel;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class SA006Frame extends BaseReportFrame{
  DateFromToPanel dateFromtoPanel;	
  AbstractLookupDialogPanel customerLookupPanel;

  /**when user select display all this should innore to retrive by customerCode*/
   private final String replaceSyntax="and (SO_QUOTATION_HD.cust_code =$P{pCustCode})";

  
  
  Map map = new HashMap();
 String originalTitle=""; 
  public  SA006Frame(SubTreeObject node , int w , int h){
      super(node,w,h);
    
      customerLookupPanel =  (AbstractLookupDialogPanel)decorator.getAbstractLookupDialogPanel("Customer:","AR_DEBTOR","NAME,DEBTOR_ACCT","NAME");
      dateFromtoPanel = (DateFromToPanel)decorator.getDateFromToPanel("From:", "To:");
     
      centerPanel.add(dateFromtoPanel,BorderLayout.NORTH);
      centerPanel.add(customerLookupPanel,BorderLayout.BEFORE_LINE_BEGINS);
      removeExpression = replaceSyntax;
      originalTitle = this.getTitle();
      pack();
  }
  public void processParameters(){
	  String s = customerLookupPanel.getValue();
	  Object custCode=null,order=null;
	  if (s.indexOf(";") >0){
		  String []ss =s.split(";");
		  logger.warning(" found "+ss[1]);
		   custCode = ss[1];
		   order = new String("CUST_CODE,DOC_NO");
	
	  logger.info("Extract param.....");
	  }
	  params.put("pStartDate", dateFromtoPanel.getDate(""));
	  params.put("pEndDate", dateFromtoPanel.getEndDate());
	  params.put("pCustCode", custCode);
	  params.put("pOrderBy",order);
  }
  /**overwrite parrent behaiver**/
  public  void  filterExecute(){
	   //showError("do Filter Execute");
	   createSortFieldsMap() ;
	   logger.info("Create sort field list");
	   SortFieldListFrame sortFieldDialog = new SortFieldListFrame("",map);
	   sortFieldDialog.setModal(true);
	   sortFieldDialog.setVisible(true);
	
	   String orderBy = sortFieldDialog.getSortExpression();
	   this.setTitle(originalTitle+"SORTING BY["+orderBy+"]");
	   logger.info("New order by value ="+orderBy);
	   if (orderBy !=""){
		   	controller.setOrderbyExpression(orderBy);
	   }
  }
  public boolean validateInput(){
	  retriveAll = customerLookupPanel.getValue().equals("*") || customerLookupPanel.getValue().equals("");
	  success = true;
	  logger.info("Opening retrive all mode");

	  return success;
  }
  
  private void createSortFieldsMap(){
	  map.put("Customer Code", "SO_QUOTATION_HD.CUST_CODE");
	  map.put("Order No", "SO_QUOTATION_HD.DOC_NO");
	  map.put("ORDER_DATE", "SO_QUOTATION_HD.DOC_DATE");
	  map.put("Item Description","SO_QUOTATION_DT.ITEM_DESCS");//added 1 Sept,2010 as per user requested
	  
  }
  


  
  public static void main(String[] arg){
	  StringBuffer sb = new StringBuffer();
	  String s="6789";
	  sb.append("123456789");
	  System.out.println(sb.substring(0, sb.length() - s.length()));
	  
  }
  
  
      
}
