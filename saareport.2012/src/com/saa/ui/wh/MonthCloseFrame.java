/*
 * MonthCloseFrame.java
 *
 * Created on April 20, 2007, 3:06 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.wh;

import com.saa.data.SQLBuilder;
import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseView;
import com.saa.data.ui.*;
import com.saa.util.MessageDlg;
import com.saa.ui.View.panels.YearMonthPanel;
import java.awt.BorderLayout;
import java.awt.Cursor;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;

/**
 *
 * @author Administrator
 */
public class MonthCloseFrame extends BaseView{
  
    /** Creates a new instance of MonthCloseFrame */
    String sqlcmd = "";
    YearMonthPanel yearMonthPanel;
    
    public MonthCloseFrame(SubTreeObject node , int w , int h) {
        super(node,w,h);
        yearMonthPanel = (YearMonthPanel)decorator.getYearMonthPanel();
        centerPanel.add(yearMonthPanel ,BorderLayout.PAGE_END);
        pack();
        setVisible(true);
              
        
    }
    public void actionPerformed(ActionEvent e){
        super.actionPerformed(e);
   
        if (e.getActionCommand().equals(decorator.buttonsCommand[decorator.CMD_OK])){
           // dbmgr.dbPing()
            
           if( MessageDlg.confirm(this,"Please confirm \nyear = "+yearMonthPanel.yearCombo.getSelectedItem()+"\n month="+(yearMonthPanel.monthCombo.getSelectedItem()),"Monthly closing")){
      
           try
           {
               
              setCursor(Cursor.WAIT_CURSOR);
               Integer year     = new Integer(yearMonthPanel.yearCombo.getSelectedItem().toString());
               Integer month    = new Integer(yearMonthPanel.monthCombo.getSelectedIndex()+1);
               Object[] param ={year,month};
               sqlcmd = SQLBuilder.getMontylyCloseExecute(param) ; 
              //MessageDlg.debug(null,sqlcmd);
               
            try{
               errorMsg = dbmgr.executeUpdate(sqlcmd);
               success = errorMsg.equals("success");
             }catch(Exception ex){
                 success = false;
                 errorMsg = ex.getMessage();
                      
             }  
           }finally{
               setProgress(100);
               setCursor(Cursor.DEFAULT_CURSOR);
             if (success ) {
                 MessageDlg.info(this,"Monthly close completed","Complete");
             }else{
                 MessageDlg.error(this,errorMsg,"Posting error");
             
             }
           }
           }
        }
    }
    
}
