/**
 * 
 */
package com.saa.ui.pn;

import java.awt.BorderLayout;
import java.util.HashMap;
import java.util.Map;

import net.sf.jasperreports.engine.JRSortField;

import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.panels.AbstractLookupDialogPanel;
import com.saa.ui.View.panels.DateFromToPanel;
import com.saa.ui.View.panels.DatePanel;

/**
 * @author atinnarat
 * ingot release report.
 *
 */
public class PN014Frame extends BaseReportFrame {
	
	protected String subReportName ="\\PN014P1.jasper";

	// DateFromToPanel datePanel;


		DateFromToPanel datePanel;
		  Map map = new HashMap();

		AbstractLookupDialogPanel supplierLookupPanel;
	//	String replaceSyntax ="and PO_ORDER_HD.supp_code =$P{pSuppCode}";
		//String originalTitle ="";
	 
	  public PN014Frame(SubTreeObject node , int w , int h){
	      super(node,w,h);
	      supplierLookupPanel =  (AbstractLookupDialogPanel)decorator.getAbstractLookupDialogPanel("Customer:","AR_DEBTOR","NAME,DEBTOR_ACCT","NAME");
	      //supplierLookupPanel.setValue("*");
	   //   datePanel = (DateFromToPanel)decorator.getDateFromToPanel("From Date :", "To Date:");
	      
	     // centerPanel.add(datePanel,BorderLayout.NORTH);
	      centerPanel.add(supplierLookupPanel,BorderLayout.NORTH);
	     // removeExpression = replaceSyntax;
	     // originalTitle = this.getTitle();
	      //centerPanel.add(datePanel,BorderLayout.CENTER);
	      pack();
	  }
	  public void processParameters(){
		  
		  String s = supplierLookupPanel.getValue();
		  Object supCode=null,order=null;
		  if (s.indexOf(";") >0){
			  String []ss =s.split(";");
			  logger.warning(" found "+ss[1]);
			  supCode = ss[1];
			  // order = new String("CUST_CODE,ORDER_NO");
		
		  logger.info("Extract param.....");
		  }
		   String strSubreportSource =  controller.getTemplateDir()+subReportName;
		   String strImageSource = controller.getTemplateDir()+"\\image\\saa.jpg";
		   logger.info("Set subreport parameter="+strSubreportSource+" customer code:="+supCode);
		   params.put("PCustCode", supCode);
           params.put("SUB_REPORTDIR",strSubreportSource);
           params.put("ImageDir", strImageSource);
		    
	  }
	  public boolean validateInput(){
		  retriveAll = (supplierLookupPanel.getValue().equals("*") ||  supplierLookupPanel.getValue().equals(""));
		  success = true;
		  logger.info("Opening retrive all mode");

		  return success;
	  }
	  
	   
	

}
