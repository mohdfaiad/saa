/*
 * WH008Frame.java
 *
 * Created on 30 ����¹ 2550, 15:36 �.
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
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
public class WH008Frame  extends BaseReportFrame {
    
     Vector v = new Vector();
     ResultSet rs =  null;
     AbstractComboPanel comboPanel;
    // String[] copies = {"�鹩�Ѻ(�ѭ��)","����1(������Թ���)" ,"����2(��ѧ)"};
     String[] copies ={"ต้นฉบับ (บัญชี)", "สำเนา 1 ( ผู้ส่งสินค้า)", "สำเนา 2 ( คลัง )"};

     JComboBox copiesCombo;
   //  DatePanel datePanel;
    public  WH008Frame(SubTreeObject node , int w , int h){
      super(node,w,h);
       try
         {
            rs = dbmgr.executeQuery(SQLBuilder.getAvaliableGRNNO());

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
         
         comboPanel = (AbstractComboPanel)decorator.getAbstractComboPanel("GRN No:",v);
         copiesCombo = new JComboBox(copies);
         Font font = new Font("AngsanaUPC", Font.BOLD ,  16);

         copiesCombo.setFont(font);
         JLabel copiesLabel = new JLabel("Grn NO:");
         JPanel copiesPanel = new JPanel();
         copiesPanel.setLayout(new BorderLayout());
         copiesPanel.add(copiesLabel, BorderLayout.WEST);
         copiesPanel.add(copiesCombo,BorderLayout.CENTER);
         centerPanel.add(copiesPanel,BorderLayout.LINE_END);
         centerPanel.add(comboPanel,BorderLayout.CENTER);
         setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
         pack();
   }	 
   
      public void processParameters(){
         params.put("pGRNNO",comboPanel.getSelecttedObject());
         params.put("pCopy", copies[copiesCombo.getSelectedIndex()]);
	   
    }
    
    
}
