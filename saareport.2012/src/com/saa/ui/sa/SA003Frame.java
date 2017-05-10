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
import com.saa.data.ui.*;
import com.saa.util.*;
import com.saa.ui.View.panels.AbstractComboPanel;
import com.saa.ui.View.panels.DatePanel;
import com.saa.ui.View.panels.YearMonthPanel;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
public class SA003Frame extends BaseReportFrame{
  AbstractComboPanel quoteCombo;
  ResultSet rs = null;
  Vector v = new Vector();
  public  SA003Frame(SubTreeObject node , int w , int h){
     
	  super(node,w,h);
      
      try{
    	  rs = dbmgr.executeQuery(SQLBuilder.getAvalibleQuote());
    	  while(rs.next()){
    		  v.add(rs.getString(1));
    	  }
      }catch(Exception e){
    	  
      }
      JPanel comboPanel = new JPanel();
      comboPanel.setLayout(new BorderLayout());
      quoteCombo = (AbstractComboPanel)decorator.getAbstractComboPanel("Quote No:", v);
      comboPanel.add(quoteCombo,BorderLayout.NORTH);
      centerPanel.add(comboPanel,BorderLayout.CENTER);

      pack();
    //  setVisible(true);
  }
  
  
  public void processParameters(){
	  String docNo = quoteCombo.getSelecttedObject().toString();
	  params.put("pDocNo",quoteCombo.getSelecttedObject() ) ;  
	  try{
		  rs = dbmgr.executeQuery(SQLBuilder.getQuotationItems(docNo));
		  while( rs.next()){
			  String custNo,itemNo;
			  custNo = rs.getString(1);
			  itemNo = rs.getString(2);
			  if (custNo.equals("") && itemNo.equals("")){
				  showError("Could not get component Detail no detail item Found");
			  }else{
				errorMsg = dbmgr.executeUpdate(SQLBuilder.getExecuteSaleComponentDetail(custNo, itemNo)) ;
			
			    if (errorMsg !=""){
			    	  logger.warning("error trying can not generate component detail"+errorMsg);
			    }
			  }
			  custNo=""; 
			  itemNo="";
		  }
		//  rs.close();
	  }catch(Exception e){
		  errorMsg = e.getMessage();
		  logger.warning(e.getMessage());
	  }
	
  }
  
      
}
