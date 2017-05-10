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
public class PN002Frame extends BaseReportFrame{
    
   protected String subReportName ="\\PNSUB002.jasper";
   protected MeltFromToPanel meltPanel;
   protected String sqlCmd = "";
 
   public  PN002Frame(SubTreeObject node , int w , int h){
      super(node,w,h);
      meltPanel = (MeltFromToPanel)decorator.getMeltFromToPanel();
      centerPanel.add(meltPanel,BorderLayout.NORTH);
      pack();
      // add 2 text fields start melt and end melt
  }
   /**
    * 2 March,2012
    * ignore to call store procedure x_Get_met_summary because java has never return result.
    * 
    * */
    public void processParameters(){
      
      //  sqlCmd = SQLBuilder.getMeltSheetSummary(meltPanel.fromMelt.getText(),meltPanel.toMelt.getText()) ; 
        try{
        	
           errorMsg =    ProcessStatus.SUCCESS;
           success = errorMsg.equals(ProcessStatus.SUCCESS);
        }catch(Exception ex){
            MessageDlg.error(this,ex.getMessage()," Report Error");
        }
        if (!success){
            showError(errorMsg);
        }
        logger.info("Puting... sub report parameter"+subReportName);
        params.put("SUBREPORT_DIR",controller.getTemplateDir()+subReportName);
      
    }
    public boolean validateInput(){
        if ((!meltPanel.fromMelt.getText().equals("") )& (!meltPanel.toMelt.getText().equals(""))){
            success = true;
            return true;
        }
        return false;
    }
    
    
    
}
