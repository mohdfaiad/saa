
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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Vector;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class WH004Frame extends BaseReportFrame{
    
    /** Creates a new instance of WH001Frame */
     Vector v = new Vector();
     ResultSet rs =  null;
     AbstractComboPanel comboPanel;
     DatePanel datePanel;
     public WH004Frame(SubTreeObject node , int w , int h){
         super(node,w,h);
         try
         {
            rs = dbmgr.executeQuery(SQLBuilder.getAvaliableLots());
            
             while(rs.next()){
                try{
                 v.add(rs.getObject(1));
                }catch(Exception e){
                    logger.warning(e.getMessage());
                }
             }
            }catch(SQLException e){
             logger.warning(e.getMessage());
         }
         JPanel subPanel = new JPanel(new BorderLayout());
         comboPanel = (AbstractComboPanel)decorator.getAbstractComboPanel("Lot No:",v);
         subPanel.add(comboPanel,BorderLayout.NORTH);
         //centerPanel.add(comboPanel,BorderLayout.CENTER);
         datePanel = (DatePanel)decorator.getDateFieldPanel("As Date:");
         subPanel.add(datePanel,BorderLayout.CENTER);
         centerPanel.add(subPanel,BorderLayout.CENTER);
         pack();
         setVisible(true);
         
         
         
    }
     
     public void processParameters(){
        params.put("pLot_cd",comboPanel.getSelecttedObject());
        params.put("pDate",datePanel.getDate(""));
        params.put("pSysDate", new Timestamp(System.currentTimeMillis()));
    }
}
