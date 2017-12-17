/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.saa.ui.wh;

import com.saa.data.SQLBuilder;
import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.panels.AbstractComboPanel;
import com.saa.ui.View.panels.TextAreaPanel;
import java.awt.BorderLayout;
import java.sql.SQLException;
import java.sql.ResultSet;
import javax.swing.JPanel;
import java.util.Vector;

/**
 *
 * @author tinnarat
 */
public class WH012Frame  extends BaseReportFrame{
    private Vector v = new Vector();
    private AbstractComboPanel abstractCombo ;
    public WH012Frame(SubTreeObject node , int w , int h){
	 super(node,w,h);
         try
      {
       ResultSet  rs = dbmgr.executeQuery(SQLBuilder.getUnpostStockAdjust());
    
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
         abstractCombo= (AbstractComboPanel)decorator.getAbstractComboPanel("Doc NO:",v);
         subPanel.add(abstractCombo,BorderLayout.NORTH);
       //  textAreaPanel = (TextAreaPanel)decorator.getTextAreaPanel("Remark", 5, 60);
         //subPanel.add(textAreaPanel,BorderLayout.CENTER);
         //centerPanel.add(comboPanel,BorderLayout.CENTER);
         centerPanel.add(subPanel,BorderLayout.CENTER);
         pack();
         setVisible(true);
  
    }
    public void processParameters(){
         String docNo = abstractCombo.getSelecttedObject().toString();
	 params.put("pDocNo",docNo ) ;  
    }
    
}
