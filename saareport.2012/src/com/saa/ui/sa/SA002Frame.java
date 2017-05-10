

package com.saa.ui.sa;

import com.saa.control.report.ReportsController;
import com.saa.data.ProcessStatus;
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
public class SA002Frame extends BaseReportFrame{
	
	 AbstractComboPanel quoteCombo;
	  ResultSet rs = null;
	  Vector v = new Vector();
  public  SA002Frame(SubTreeObject node , int w , int h){
      super(node,w,h);
      try{
    	  rs = dbmgr.executeQuery(SQLBuilder.getAvalibleAOR());
    	  while(rs.next()){
    		  v.add(rs.getString(1));
    	  }
    	  rs.close();
      }catch(Exception e){
    	  
      }
      JPanel comboPanel = new JPanel();
      comboPanel.setLayout(new BorderLayout());
      quoteCombo = (AbstractComboPanel)decorator.getAbstractComboPanel("Order No:", v);
      comboPanel.add(quoteCombo,BorderLayout.NORTH);
      centerPanel.add(comboPanel,BorderLayout.CENTER);
      pack();
  }
  public void processParameters(){
	  String docNo = quoteCombo.getSelecttedObject().toString();
	  params.put("pDocNo",quoteCombo.getSelecttedObject() ) ;  
	  try{
		  rs = dbmgr.executeQuery(SQLBuilder.getSaleOrderItems(docNo));
		  while( rs.next()){
			  String custNo,itemNo;
			  custNo = rs.getString(1);
			  itemNo = rs.getString(2);
			  if (custNo.equals("") && itemNo.equals("")){
				  showError("Could not get component Detail no detail item Found");
			  }else{
				errorMsg = dbmgr.executeUpdate(SQLBuilder.getExecuteSaleComponentDetail(custNo, itemNo)) ;
			
			  }
			  
		  }
		 // rs.close();
	  }catch(Exception e){
		  errorMsg = e.getMessage();
		  logger.warning(e.getMessage());
	  }
	
  }
  
      
}
