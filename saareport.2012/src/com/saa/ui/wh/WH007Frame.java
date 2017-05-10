/*
 * WH007Frame.java
 *
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.wh;

import com.saa.data.SQLBuilder;
import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.BaseView;
import com.saa.data.ui.*;
import com.saa.util.MessageDlg;
import com.saa.ui.View.panels.AbstractComboPanel;
import com.saa.ui.View.panels.DateFromToPanel;
import com.saa.ui.View.panels.DatePanel;
import com.saa.ui.View.panels.YearMonthPanel;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;

import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
public class WH007Frame  extends BaseReportFrame {
    
    /** Creates a new instance of WH008Frame */
	DateFromToPanel dateRangePanel;
	JTextField lot = new JTextField();
	JLabel lotLabel = new JLabel("Lot No:");
	JPanel lotPanel = new JPanel();
    public  WH007Frame(SubTreeObject node , int w , int h){
      super(node,w,h);
      dateRangePanel = (DateFromToPanel)decorator.getDateFromToPanel("From :", "To :");
      lotPanel.setLayout(new BorderLayout());
      lotPanel.add(lotLabel,BorderLayout.LINE_START);
      lotPanel.add(lot,BorderLayout.CENTER);
      centerPanel.add(lotPanel,BorderLayout.PAGE_START);
      centerPanel.add(dateRangePanel,BorderLayout.CENTER);
      pack();
      setVisible(true);
      
   }
   
      public void processParameters(){
    	  if (lot.getText().equals("")){
    	     MessageDlg.warning(this, "Please spacify Lot No", "Lot Could not be Blank");
    	     success = false;
    	  }else{
    		  params.put("pLotNo",lot.getText());
    		  params.put("pSDate",dateRangePanel.getDate(""));
    		  params.put("pEDate",dateRangePanel.getEndDate());
    		  params.put("pSysDate", new Timestamp(System.currentTimeMillis()));
    	  }
    	
    }
    
}
