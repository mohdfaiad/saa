
package com.saa.ui.pn;


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
import java.util.Vector;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
public class PN001Frame extends BaseReportFrame{
   AbstractComboPanel comboPanel; 
   Vector v = new Vector();
   ResultSet rs = null;
   public  PN001Frame(SubTreeObject node , int w , int h){
      super(node,w,h);
      setDefaultCloseOperation(DISPOSE_ON_CLOSE);
       try
         {
            rs = dbmgr.executeQuery(SQLBuilder.getAvaliableDeliveryNo());

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
         
         comboPanel = (AbstractComboPanel)decorator.getAbstractComboPanel("Deliver Order:",v);
         centerPanel.add(comboPanel,BorderLayout.NORTH);
         pack();
  }
    public void processParameters(){
         params.put("pDelivery_No",comboPanel.getSelecttedObject());
         //params.put("pEDate",endDatePanel.getDate(""));
    }
    
}
