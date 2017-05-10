/*
 * WH001Frame.java
 *
 * Created on 21 ����¹ 2550, 15:29 �.
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.pc;
import java.awt.BorderLayout;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.swing.JPanel;

import com.saa.control.report.ReportsController;
import com.saa.data.SQLBuilder;
import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.panels.AbstractComboPanel;
import com.saa.ui.View.panels.DatePanel;
import com.saa.ui.View.panels.TextAreaPanel;
public class PC002Frame extends BaseReportFrame{
  private ResultSet rs = null;
  private Vector v  = new Vector();
  private TextAreaPanel textAreaPanel;
  private AbstractComboPanel abstractCombo;
  public  PC002Frame(SubTreeObject node , int w , int h){
      super(node,w,h);
      try
      {
         rs = dbmgr.executeQuery(SQLBuilder.getAvaliablePCOrderNo());
         
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
         abstractCombo = (AbstractComboPanel)decorator.getAbstractComboPanel("PC NO:",v);
         subPanel.add(abstractCombo,BorderLayout.NORTH);
         textAreaPanel = (TextAreaPanel)decorator.getTextAreaPanel("Remark", 5, 60);
         subPanel.add(textAreaPanel,BorderLayout.CENTER);
         //centerPanel.add(comboPanel,BorderLayout.CENTER);
         centerPanel.add(subPanel,BorderLayout.CENTER);
         pack();
         setVisible(true);
  }
  public void processParameters(){
	  params.put("pOrderNo", abstractCombo.getSelecttedObject());
	  params.put("pRemark", textAreaPanel.getTextObject());
	  String remark =  textAreaPanel.getTextObject().toString();
	  if (!remark.equals("")){
	  try{
		  logger.info("Update purchase order remark value ="+remark);
		  dbmgr.executeUpdate(SQLBuilder.updatePurchaseOrderRemarks(abstractCombo.getSelecttedObject().toString(), textAreaPanel.getTextObject().toString()));
	  	}catch(Exception e){
	  		showError(e.getMessage());
	  	}
	  }
	  //todo update back to po_order_hd add additional comment
	    
  }
      
}
