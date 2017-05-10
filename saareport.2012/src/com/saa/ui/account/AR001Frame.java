package com.saa.ui.account;

import java.awt.BorderLayout;
import java.awt.Font;
import java.sql.SQLException;

import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

import com.saa.data.SQLBuilder;
import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.panels.AbstractComboPanel;
import com.saa.ui.View.panels.DatePanel;
import java.sql.ResultSet;
import java.util.*;
public class AR001Frame extends BaseReportFrame {
	private ResultSet rs;
	private Vector v = new Vector();
	private AbstractComboPanel comboPanel;
	String[] copies ={"ต้นฉบับใบกำกับภาษี/ใบส่งของ/ใบแจ้งหนี้\nORIGINAL TAX INVOICE/DELIVERY ORDER/INVOICE", 
					  "สำเนาใบกำกับภาษี/ใบส่งของ/ใบแจ้งหนี้\nCOPY TAX INVOICE/DELIVERY ORDER/INVOICE"};
    JComboBox copiesCombo;
	
	public AR001Frame(SubTreeObject node, int w, int h) {
		super(node, w, h);
		 
	         try{   
			     rs = dbmgr.executeQuery(SQLBuilder.getUnpostARInvoice());
	            
	             while(rs.next()){
	                try{
	                 v.add(rs.getObject(1));
	                }catch(Exception e){
	                    logger.warning(e.getMessage());
	                    JOptionPane.showMessageDialog(this, "Null vector "+e.getMessage());
	                }
	             }
	            }catch(SQLException e){
	             logger.warning(e.getMessage());
	         }
	         comboPanel = (AbstractComboPanel)decorator.getAbstractComboPanel("Invoice No:",v);
	         copiesCombo = new JComboBox(copies);
	         Font font = new Font("AngsanaUPC", Font.BOLD ,  16);

	         copiesCombo.setFont(font);
	         JLabel copiesLabel = new JLabel("Copy:");
	         JPanel copiesPanel = new JPanel();
	         copiesPanel.setLayout(new BorderLayout());
	         copiesPanel.add(copiesLabel, BorderLayout.WEST);
	         copiesPanel.add(copiesCombo,BorderLayout.CENTER);
	         centerPanel.add(copiesPanel,BorderLayout.LINE_END);
	         centerPanel.add(comboPanel,BorderLayout.CENTER);

	         centerPanel.add(comboPanel,BorderLayout.CENTER);
	         pack();
	         
	
	}

	public void filterExecute(){
		super.filterExecute();
		showError("Concreate class extended filkte method here");
	}
	public void processParameters() {
		params.put("pDocNo",comboPanel.getSelecttedObject());
        params.put("pCopy", copies[copiesCombo.getSelectedIndex()]);
        String imagedir =System.getProperty("user.dir");
		imagedir =imagedir+"\\report\\templates\\image\\";
		logger.info(imagedir);
		params.put("pLogo1", imagedir+"saa.jpg");
	}

}
