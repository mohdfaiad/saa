/*
 * LoginDialog.java
 *
 * Created on April 23, 2007, 6:18 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.Dialogs;

import com.saa.util.MessageDlg;
import com.saa.data.SQLBuilder;
import com.saa.jdbc.AbstractDBManager;
import com.saa.main.RunTimeController;
import com.saa.ui.View.BaseView;
import com.saa.ui.View.panels.LoginPanel;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JDialog;
import javax.swing.JFrame;

/**
 *
 * @author Administrator
 */
public class LoginDialog extends  BaseDialog implements ActionListener{
    
    /**
     * Creates a new instance of LoginDialog
     */
    LoginPanel loginPanel;
    private RunTimeController runtimeControl = null;
    private AbstractDBManager dbmgr;
    private Object[] formParms;
    private String userID ="";
    private boolean loginSuccess = false;
    public LoginDialog(JFrame frame,String title) {
        super(frame,title);
        areaPanel.setLayout(new FlowLayout());
        //areaPanel.setSize(600,600);
        loginPanel = (LoginPanel)decorator.getLoginPanel();
        
        areaPanel.add(loginPanel,BorderLayout.CENTER);
        
        
        loginPanel.passwordField.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
            	passwordFieldKeyPressed(evt);
            }
        });
        // areaPanel.add(decorator.getExportOptionsPanel(),BorderLayout.CENTER);
        setSize(1000,1000);
      //  setModal(true);
        pack();
        
        
        
    }
    //2 July,2010 support enter keypress Aon
    public void passwordFieldKeyPressed(KeyEvent evt){
    	int key = evt.getKeyCode();
  
    	 if (key == evt.VK_ENTER){
    		 modalResult =  ModalResult.MR_OK;
    		 validateLogin();
    	 }
           
      }
    	
    public void setRuntimeController(Object object){
        runtimeControl= (RunTimeController)object;
        if (runtimeControl != null){
            dbmgr = runtimeControl.getDBManager();
        }
    }
    
    public void validateLogin(){
    	String msg ="";
    	  if (getModalResult() == ModalResult.MR_OK){
              msg ="User:" +loginPanel.getLoginUser()+" Password :"+loginPanel.getLoginPassword();
              Object[] params = {loginPanel.getLoginUser(),loginPanel.getLoginPassword()};
              formParms = params;
              if (isValidUser()){
                  userID = params[0].toString(); 
                  setVisible(false);
              }else{
                  MessageDlg.warning(this,"Invalid User login or Password miss match\n Please Contract system administrator","Login Fail");
              }
          }
    	
    }
    public void actionPerformed(ActionEvent e){
        super.actionPerformed(e);
        String msg ="";
        validateLogin();
      
    }
    private boolean isValidUser(){
         int count =0;
        try{
          count  = dbmgr.executeQueryCount(SQLBuilder.getLoginValidExecute(formParms));
            
       
        }catch(SQLException ex){
            MessageDlg.error(this,ex.getMessage(),"SQL Error");
        }
         loginSuccess = (count>0);
        return loginSuccess;
    }
    public String getLogonUserID(){
        return userID;
    }
    public boolean isLoginSuccess(){
        return loginSuccess;
    }
    
}
