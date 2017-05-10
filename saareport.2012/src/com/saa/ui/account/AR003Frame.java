package com.saa.ui.account;

import java.awt.BorderLayout;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.swing.JOptionPane;
import javax.swing.JPanel;

import com.saa.data.SQLBuilder;
import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.panels.AbstractComboPanel;
import com.saa.ui.View.panels.DatePanel;

public class AR003Frame extends BaseReportFrame {

	 DatePanel datePanel,endDatePanel;
	 ResultSet rs =null;
	 Vector v =new Vector();
	 AbstractComboPanel comboPanel;
	    public  AR003Frame(SubTreeObject node , int w , int h){
	      super(node,w,h);
	      
	      
	      try
	         {
	            rs = dbmgr.executeQuery(SQLBuilder.getDebtors());
	            
	             while(rs.next()){
	                try{
	                 v.add(rs.getObject(1));
	                }catch(Exception e){
	                    logger.warning(e.getMessage());
	                }
	             }
	            }catch(SQLException e){
	             logger.warning(e.getMessage());
	         }
	       datePanel = (DatePanel)decorator.getDateFieldPanel("As Date:");
	    //   endDatePanel=(DatePanel)decorator.getDateFieldPanel("End Date:");
	       JPanel subPanel = new JPanel(new BorderLayout());
	         comboPanel = (AbstractComboPanel)decorator.getAbstractComboPanel("Debtor :",v);
	       subPanel.add(comboPanel,BorderLayout.CENTER);
	       centerPanel.add(subPanel,BorderLayout.NORTH);
	       centerPanel.add(datePanel,BorderLayout.CENTER);
	      // centerPanel.add(endDatePanel,BorderLayout.LINE_END);
	       pack();
	  }

	public void processParameters() {
		try{
		// TODO Auto-generated method stub
		//params.put("pFromeDate", datePanel.dateField.getDate());
		params.put("pToDate", datePanel.getDate(""));
		params.put("pDebtorAcct",comboPanel.getSelecttedObject() );
		}catch(Exception e){
			JOptionPane.showMessageDialog(this, "Error while process param\n"+e.getMessage(), "JRX",0);
		}
		//params.put("pSysDate", new Tim)
	}

}
