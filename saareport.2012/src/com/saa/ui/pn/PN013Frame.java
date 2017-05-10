/*
 * PN002Frame.java
 *
 * Created on 7 ����Ҥ� 2550, 15:28 �.
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.pn;


import com.saa.control.report.ReportsController;
import com.saa.data.ProcessStatus;
import com.saa.data.SQLBuilder;
import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.BaseView;
import com.saa.data.ui.*;
import com.saa.util.*;
import com.saa.ui.View.panels.AbstractComboPanel;
import com.saa.ui.View.panels.AbstractSingleTextFieldPanel;
import com.saa.ui.View.panels.DatePanel;
import com.saa.ui.View.panels.MeltFromToPanel;
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
public class PN013Frame extends BaseReportFrame{
    
   protected String subReportName ="\\PNSUB002.jasper";
   protected  AbstractSingleTextFieldPanel meltPanel;
   protected String sqlCmd = "";
 
   public  PN013Frame(SubTreeObject node , int w , int h){
      super(node,w,h);
      meltPanel = (AbstractSingleTextFieldPanel)decorator.getAbstractSingleTextFieldPanel("MeltNO:");
      centerPanel.add(meltPanel,BorderLayout.NORTH);
      pack();
      // add 2 text fields start melt and end melt
  }
    public void processParameters(){
        
    	params.put("pMeltNo",meltPanel.getText());
        params.put("SUBREPORT_DIR",controller.getTemplateDir()+subReportName);
      
    }
    public boolean validateInput(){
        if ((!meltPanel.getText().equals("") )){
            success = true;
            return true;
        }
        return false;
    }
    
    
    
}
