

package com.saa.ui.wh;

import com.saa.control.report.ReportsController;
import com.saa.data.ReportOptions;
import com.saa.data.SQLBuilder;
import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.BaseView;
import com.saa.data.ui.*;
import com.saa.util.*;
import com.saa.ui.View.panels.YearMonthPanel;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
public class WH003Frame extends BaseReportFrame{
    
    /** Creates a new instance of WH001Frame */
  
   // Map params = new HashMap();
    YearMonthPanel yearMonthPanel;
     public WH003Frame(SubTreeObject node , int w , int h){
         super(node,w,h);
       
       //  headerPanel.setLayout(new FlowLayout());
        // headerPanel.add(decorator.getExportOptionsPanel(),BorderLayout.PAGE_END);
         yearMonthPanel = (YearMonthPanel)decorator.getYearMonthPanel();
         centerPanel.add(yearMonthPanel,BorderLayout.NORTH);
         pack();
    }
   

    
    public void processParameters(){
        params.put("pYear",yearMonthPanel.getYear());
        params.put("pMonth",yearMonthPanel.getMonth());
        params.put("pSysDate", new Timestamp(System.currentTimeMillis()));
    }
    
    
   
    
}
