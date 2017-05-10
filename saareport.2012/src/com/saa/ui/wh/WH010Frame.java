

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

public class WH010Frame extends BaseReportFrame {
   DatePanel datePanel;
    public  WH010Frame(SubTreeObject node , int w , int h){
      super(node,w,h);
       datePanel = (DatePanel)decorator.getDateFieldPanel("As Date:");
       centerPanel.add(datePanel);
       pack();
  }
    
      public void processParameters(){
         params.put("pDate",datePanel.getDate(""));
         params.put("pSysDate", new Timestamp(System.currentTimeMillis()));
    }
    
    
}
