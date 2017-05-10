

package com.saa.ui.pn;


import com.saa.control.report.ReportsController;
import com.saa.data.SQLBuilder;
import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.BaseView;
import com.saa.data.ui.*;
import com.saa.logger.AppLogger;
import com.saa.util.*;
import com.saa.ui.View.panels.AbstractComboPanel;
import com.saa.ui.View.panels.AbstractSingleTextFieldPanel;
import com.saa.ui.View.panels.DatePanel;
import com.saa.ui.View.panels.YearMonthPanel;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.LayoutManager;
import java.awt.event.ActionEvent;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
public class PN012Frame extends BaseReportFrame{
	
   private  AppLogger logger = AppLogger.getLogger(this.getName());
   DatePanel datePanel;
   AbstractSingleTextFieldPanel remarkPanel,revisionPanel;
   JPanel subPanel = new JPanel();
   
   


   public  PN012Frame(SubTreeObject node , int w , int h){
      super(node,w,h);
      
      datePanel = (DatePanel)decorator.getDateFieldPanel("AsDate:");
      remarkPanel = (AbstractSingleTextFieldPanel)decorator.getAbstractSingleTextFieldPanel("Remarks:");
      revisionPanel =(AbstractSingleTextFieldPanel)decorator.getAbstractSingleTextFieldPanel("Rev:");
      revisionPanel.setText("Rev:00");
      subPanel.setLayout(new GridLayout(2,1));
      subPanel.add(remarkPanel,BorderLayout.NORTH);
      subPanel.add(revisionPanel,BorderLayout.SOUTH);
      centerPanel.add(subPanel,BorderLayout.NORTH); 
      centerPanel.add(datePanel,BorderLayout.CENTER);
      logger.info("Creating.. remark panel ");
   
      pack();
  }
    public void processParameters(){
         params.put("pEndDate",datePanel.getDate(""));
         params.put("pRemark", remarkPanel.getText());
         logger.info("Puting... remaks parameter");
         params.put("pRev", revisionPanel.getText());
        logger.info("Puting... revision parameter");
         //params.put("pEDate",endDatePanel.getDate(""));
    }
    
}
