/*
 * WH001Frame.java
 *
 * Created on 21 ����¹ 2550, 15:29 �.
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.pc;

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
import com.saa.ui.View.panels.YearMonthPanel;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
public class PC001Frame extends BaseReportFrame{

	DateFromToPanel datePanel;
	  Map map = new HashMap();

	AbstractLookupDialogPanel supplierLookupPanel;
	String replaceSyntax ="and PO_ORDER_HD.supp_code =$P{pSuppCode}";
	String originalTitle ="";
	Object supCode=new String("*"),order=new String("");
  public  PC001Frame(SubTreeObject node , int w , int h){
      super(node,w,h);
      supplierLookupPanel =  (AbstractLookupDialogPanel)decorator.getAbstractLookupDialogPanel("Supplier:","AP_CREDITOR","NAME,CREDITOR_ACCT","NAME");
      //supplierLookupPanel.setValue("*");
      datePanel = (DateFromToPanel)decorator.getDateFromToPanel("From Date :", "To Date:");
      
      centerPanel.add(datePanel,BorderLayout.NORTH);
      centerPanel.add(supplierLookupPanel,BorderLayout.BEFORE_LINE_BEGINS);
      removeExpression = replaceSyntax;
      originalTitle = this.getTitle();
      //centerPanel.add(datePanel,BorderLayout.CENTER);
      pack();
  }
  public void processParameters(){
	  
	  String s = supplierLookupPanel.getValue();
	  if (s.indexOf(";") >0){
		  String []ss =s.split(";");
		  logger.warning(" found "+ss[1]);
		  supCode = ss[1];
	  if (supCode =="") supCode ="*";   //22-Jan-2014 in anycase  
	  logger.info("Extract param.....");
	  }
	  logger.info("START DATE="+datePanel.getDate("") +"/ ENDDATE="+datePanel.getEndDate());
	  
	  params.put("pStartDate",datePanel.getDate(""));
	  params.put("pEndDate",datePanel.getEndDate());
	  params.put("pSuppCode", supCode);
	    
  }
  public boolean validateInput(){
	  retriveAll = (supplierLookupPanel.getValue().equals("*") ||  supplierLookupPanel.getValue().equals(""));
	  success = true;
	  logger.info("Opening retrive all mode");

	  return success;
  }
  
  /**overwrite parrent behaiver**/
  public  void  filterExecute(){
	   //showError("do Filter Execute");
	   createSortFieldsMap() ;
	   logger.info("Create sort field list");
	   SortFieldListFrame sortFieldDialog = new SortFieldListFrame("",map);
	   //sortFieldDialog.se
	   sortFieldDialog.setModal(true);
	   sortFieldDialog.setVisible(true);
	
	   String orderBy = sortFieldDialog.getSortExpression();
	   this.setTitle(originalTitle+"SORTING BY["+orderBy+"]");
	   logger.info("New order by value ="+orderBy);
	   if (orderBy !=""){
		   	controller.setOrderbyExpression(orderBy);
	   }
  }
  private void createSortFieldsMap(){
	  map.put("Supplier Code", "PO_ORDER_HD.SUPP_CODE");
	  map.put("Order No", "PO_ORDER_HD.ORDER_NO");
	  map.put("ORDER_DATE", "PO_ORDER_HD.ORDER_DATE");
	  map.put("ITEM CODE","PO_ORDER_DT.ITEM_CODE");
	  
  }
  
      
}
