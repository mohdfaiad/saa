

package com.saa.ui.wh;

import com.saa.control.report.ReportsController;
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

import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
public class WH002Frame extends BaseReportFrame{
    
    /** Creates a new instance of WH001Frame */
     YearMonthPanel yearMonthPanel;
     public WH002Frame(SubTreeObject node , int w , int h){
         super(node,w,h);
         yearMonthPanel = (YearMonthPanel)decorator.getYearMonthPanel();
         centerPanel.add(yearMonthPanel,BorderLayout.CENTER);
         pack();
    }
   

    
    public void processParameters(){
        params.put("pYear",yearMonthPanel.getYear());
        params.put("pMonth",yearMonthPanel.getMonth());
        params.put("pSysDate", new Timestamp(System.currentTimeMillis()));
    }
    
    
}
