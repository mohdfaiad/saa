package com.saa.ui.account;

import java.awt.BorderLayout;

import javax.swing.JOptionPane;

import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.panels.DatePanel;

public class AR006Frame extends BaseReportFrame {

	 DatePanel datePanel,endDatePanel;
	    public  AR006Frame(SubTreeObject node , int w , int h){
		      super(node,w,h);
		       datePanel = (DatePanel)decorator.getDateFieldPanel("As Date:");
		      endDatePanel=(DatePanel)decorator.getDateFieldPanel("End Date:");
		       centerPanel.add(datePanel,BorderLayout.LINE_START);
		       centerPanel.add(endDatePanel,BorderLayout.LINE_END);
		       pack();
		  }

		public void processParameters() {
			try{
		
			params.put("pFromDate", datePanel.getDate(""));
			params.put("pToDate", endDatePanel.getDate(""));
			}catch(Exception e){
				JOptionPane.showMessageDialog(this, "Error while process param\n"+e.getMessage(), "JRX",0);
			}
			//params.put("pSysDate", new Tim)
		}

}
