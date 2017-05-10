

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
import java.sql.Timestamp;
import java.util.Vector;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
public class SA004Frame extends BaseReportFrame{
	 DatePanel datePanel,endDatePanel;
	    public  SA004Frame(SubTreeObject node , int w , int h){
		      super(node,w,h);
		       datePanel = (DatePanel)decorator.getDateFieldPanel("As Date:");
		       endDatePanel=(DatePanel)decorator.getDateFieldPanel("End Date:");
		       centerPanel.add(datePanel,BorderLayout.LINE_START);
		       centerPanel.add(endDatePanel,BorderLayout.LINE_END);
		       pack();
		  }

		public void processParameters() {
			try{
		
			params.put("pStartDate", datePanel.getDate(""));
			params.put("pEndDate", endDatePanel.getDate(""));
			params.put("pSysDate", new Timestamp(System.currentTimeMillis()));
			}catch(Exception e){
				JOptionPane.showMessageDialog(this, "Error while process param\n"+e.getMessage(), "JRX",0);
			}
			//params.put("pSysDate", new Tim)
		}

      
}
