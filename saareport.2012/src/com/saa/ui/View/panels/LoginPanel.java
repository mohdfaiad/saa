/*
 * LoginPanel.java
 *
 * Created on April 23, 2007, 6:13 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.View.panels;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.KeyEvent;

import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.SpringLayout;

/**
 *
 * @author Administrator
 */
public class LoginPanel extends   BasePanel{
    
    
    public JLabel userLabel, passwordLabel;
    public JTextField userField;
    public JPasswordField passwordField;
    public JPanel areaPanel;
    /** Creates a new instance of LoginPanel */
    public LoginPanel() {
        setLayout(new FlowLayout());
        userLabel = new JLabel("User ID:        ");
        passwordLabel = new JLabel("Password:   ");
        userField = new JTextField();
        
        
      
       // userField.set = 100;
        passwordField = new JPasswordField();
        
    
        //passwordField.WIDTH = 100;
        //add left panel
        areaPanel = new JPanel(new GridLayout(2,2));
        add(new JPanel(),BorderLayout.PAGE_START);
        areaPanel.add(userLabel);
        areaPanel.add(userField);
        areaPanel.add(passwordLabel);
        areaPanel.add(passwordField);
        add(areaPanel,BorderLayout.CENTER);
        add(new JPanel(),BorderLayout.PAGE_END);
               
    }
    public String getLoginUser(){
        return userField.getText();
    }
    public String getLoginPassword(){
        return new String(passwordField.getPassword());
    }
   
    	
    
    
}
