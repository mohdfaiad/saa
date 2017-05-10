/*
 * WH009Frame.java
 *
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.wh;

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
import java.sql.Timestamp;

public class WH009Frame extends BaseReportFrame {
   DatePanel datePanel,endDatePanel;
    public  WH009Frame(SubTreeObject node , int w , int h){
      super(node,w,h);
       datePanel = (DatePanel)decorator.getDateFieldPanel("start Date:");
       endDatePanel=(DatePanel)decorator.getDateFieldPanel("End Date:");
       centerPanel.add(datePanel,BorderLayout.LINE_START);
       centerPanel.add(endDatePanel,BorderLayout.LINE_END);
       pack();
  }
    
    
    
      public void processParameters(){
         params.put("pSDate",datePanel.getDate(""));
         params.put("pEDate",endDatePanel.getDate(""));
         params.put("pSysDate", new Timestamp(System.currentTimeMillis()));
    }
    
}
