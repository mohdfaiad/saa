/*
 * UIActions.java
 *
 * Created on April 24, 2007, 11:07 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.main;

import com.saa.logger.AppLogger;
import com.saa.ui.Dialogs.LoginDialog;
import com.saa.ui.utils.DBUpateManager;

import java.awt.event.ActionEvent;
import javax.swing.AbstractAction;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.SwingUtilities;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

/**
 *
 * @author Administrator
 */
public  class UIActions {
    private static  UIActions uiAct = new UIActions();
    /** Creates a new instance of UIActions */
    public static String LF_MOTIF="Motif";
    public static String LF_METAL="Metal";
    public static String LF_WINDOW ="Window" ; 
    public static String APP_EXIT ="Exit";
    
    private static AppLogger logger = AppLogger.getLogger();
    private UIActions(){
    }
    public  static UIActions getUIActions() {
        return uiAct;
    }
   
    public LoginAction getLoginAction(JFrame  frame,String text, ImageIcon icon ){
       return new LoginAction(frame,text,icon);
    }
    /*utils action*/
    //public DBUpdateManagerAction
    public DBUpdateManagerAction getDBUpdateManagerActoin(JFrame frame, String text, ImageIcon icon){
    	return new DBUpdateManagerAction(frame,text,icon);
    }
    public class DBUpdateManagerAction extends AbstractAction{
    	 public JFrame parrentFrame;
    	 public String title ;
    	 public  DBUpdateManagerAction(JFrame frame, String text, ImageIcon icon){
    		 super(text,icon);
    		 title = text;
    		 
    	 }
    	   public void actionPerformed(ActionEvent e) {
    		   DBUpateManager dbMgr = new DBUpateManager(title);
    		   dbMgr.setVisible(true);
    		   
    	   }
    	
    }
    /*utils action*/
    public class LoginAction extends AbstractAction {
        public JFrame parrentFrame;
        public LoginAction(JFrame frame,String text, ImageIcon icon
                         ) {
            super(text, icon);
            this.parrentFrame = frame;
         
        }
        public void actionPerformed(ActionEvent e) {
           LoginDialog frame = new LoginDialog(parrentFrame,"JX@Login");
           frame.setVisible(true);
        }
    }
    public VersionDisplayAction getVesionDisplayAction(JFrame frame,String text, ImageIcon icon,
			  String dialogMessage){
    	return new VersionDisplayAction(frame,text,icon,dialogMessage);
    }
    public class VersionDisplayAction extends AbstractAction{
    	 public JFrame parrentFrame;
    	 private String showMessage = "";
    	  public VersionDisplayAction(JFrame frame,String text, ImageIcon icon,
    			  String dialogMessage
          ) {
    		  	super(text, icon);
    		  	this.parrentFrame = frame;
    		  	this.showMessage = dialogMessage;

    	  }
    	  
    	  public void actionPerformed(ActionEvent e) {
    		 JOptionPane.showMessageDialog(parrentFrame, showMessage, "Version",JOptionPane.INFORMATION_MESSAGE );
    	  }
    	
    }
    /*Application*/
    
    public ExitAction getExitAction(String text, ImageIcon icon,JFrame frame){
        return new ExitAction(text,icon,frame);
    }
    public class ExitAction extends AbstractAction {
        private JFrame uiFrame;
        public ExitAction(String text, ImageIcon icon,JFrame frame
                          ) {
            super(text, icon);
            uiFrame = frame;
        }
        public void actionPerformed(ActionEvent e) {
               uiFrame.setVisible(false);
        }
    }
    /*Application*/
    
    /*look and feel actions*/
     public LookAndFeelAction getLookAndFeelAction(String text, ImageIcon icon,JFrame frame){
        return new LookAndFeelAction(text,icon,frame);
     }
     public class LookAndFeelAction extends AbstractAction {
        JFrame uiFrame ; 
        public LookAndFeelAction(String text, ImageIcon icon,JFrame frame
                          ) {
            super(text, icon);
            this.uiFrame = frame;
        
        }
        public void actionPerformed(ActionEvent e) {
            String lnfName = null;
            if (e.getActionCommand().equals("Metal")) {
                lnfName = "javax.swing.plaf.metal.MetalLookAndFeel";
            } else if (e.getActionCommand().equals("Motif")) {
                lnfName = "com.sun.java.swing.plaf.motif.MotifLookAndFeel";
            } else {
                lnfName = "com.sun.java.swing.plaf.windows.WindowsLookAndFeel";
            }
            try {
                UIManager.setLookAndFeel(lnfName);
                SwingUtilities.updateComponentTreeUI(uiFrame);
            } catch (UnsupportedLookAndFeelException ex1) {
                logger.warning("Unsupported LookAndFeel: " + lnfName);
            } catch (ClassNotFoundException ex2) {
                  logger.warning("LookAndFeel class not found: " + lnfName);
            } catch (InstantiationException ex3) {
                 logger.warning("Could not load LookAndFeel: " + lnfName);
            } catch (IllegalAccessException ex4) {
                  logger.warning("Cannot use LookAndFeel: " + lnfName);
            }
         
        }
    }
    
    /*look and feel actions*/
    
    
}
