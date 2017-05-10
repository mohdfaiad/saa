/*
 * AppMain.java
 *
 * Created on April 5, 2007, 2:12 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.main;

/**
 *
 * @author Administrator
 */

import com.saa.ui.Splash;
import com.saa.ui.Dialogs.LoginDialog;
import com.saa.ui.utils.UIUtils;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Window;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.awt.BorderLayout;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.UIManager;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JScrollPane;

import org.firebirdsql.jdbc.FBSQLException;


import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.io.File;

import com.saa.ui.View.TreeView;
import com.saa.ui.View.MenuModel;

import com.saa.control.*;
import com.saa.data.*;
import com.saa.jdbc.*;
import com.saa.util.*;
import com.saa.logger.*;

public class StartupManager {

    static final class FrameDecorator{
        public static int WIDTH     = 650;
        public static int HEIGHT    = 450;
        public static String TITLE  = "JRX Centre@";
        public static String TREE_ROOT = "JRX Centre@Root";
        public static int GRIDLAYOUT_ROW = 1;
        public static int GRIDLAYOUT_COL = 1;
        
    }
    
    
    static class BasicWindowMonitor extends WindowAdapter {
        public void windowClosing(WindowEvent e) {
            Window w = e.getWindow();
            w.setVisible(false);
            w.dispose();
            try {
                dbctrl.destroy();
                logger.info("Destroyed Controller connection");
                dbmgr.destroy();
                logger.info("Destroyed datamanager connection");
            }catch(Exception ex){
                logger.severe(ex.getMessage());
            }
            System.exit(0);
        }        
    }
    private static RunTimeController runtimeControl =  RunTimeController.getRuntimeController();
    static final  boolean useSystemLookAndFeel = false;
    private static AbstractDBManager dbmgr = null;
    private static SystemConfig config =null;
    private static AppLogger logger = AppLogger.getLogger(StartupManager.class.getName());
    private static DBController dbctrl = null;
    private static JPanel statusPanel= new JPanel(new BorderLayout());
    private static JLabel statusLabel= null;
    private static JLabel userStatusLabel = new JLabel("user");
    
    
    private static    String databaseURL ;
    private static   String driverName;
    
    private static JFrame f ;
    static private LoginDialog loginDlg;
    private static String userID;
    private static String version;
    
    
    private static UIActions actionsMgr = UIActions.getUIActions();
    private static void createAndShowGUI() {
        if (useSystemLookAndFeel) {
            try {
                UIManager.setLookAndFeel(
                        UIManager.getSystemLookAndFeelClassName());
                
            } catch (Exception e) {
            	logger.warn("Couldn't use system look and feel.");
            }
        }
        
        f = new JFrame(FrameDecorator.TITLE+(">>Version="+version+")"));
        TreeView tv = buildTreeMenus(dbmgr);
        f.addWindowListener(new BasicWindowMonitor());
        tv.setFrame(f);
        Container cp = f.getContentPane();
        cp.setLayout(new BorderLayout());
        cp.add(new JScrollPane(tv), BorderLayout.CENTER);
        cp.add(createStatusPanel(),BorderLayout.SOUTH);
        //  cp.add(new JScrollPane());
        f.setSize(FrameDecorator.WIDTH,FrameDecorator.HEIGHT);
        // f.set;
        f.setJMenuBar(createMenuBar());
        UIUtils.setLocationCenter(f);
        setStatatus(databaseURL);
        setUserStatus("Logon ID:"+userID);
        f.setVisible(true);
        
    }
    public static void setStatatus(String msg){
        statusLabel.setText(msg);
        
    }
    public static void setUserStatus(String msg){
        userStatusLabel.setText(msg);
    }
    private static JPanel createStatusPanel(){
        statusLabel = new JLabel("Connection :",SwingConstants.LEFT);
        statusLabel.setBorder(BorderFactory.createLineBorder(Color.BLUE));
        statusPanel.add(new JLabel("Connection:"),BorderLayout.WEST);
        statusPanel.add(statusLabel,BorderLayout.CENTER);
        userStatusLabel.setBorder(BorderFactory.createLoweredBevelBorder());
        statusPanel.add(userStatusLabel,BorderLayout.EAST );
        statusPanel.setBorder(BorderFactory.createLoweredBevelBorder());
        return statusPanel;
    }
    
    private static JMenuBar createMenuBar(){
        
        
        
        /*System menus*/
        JMenu mm = new JMenu("Systems");
        JMenuItem imm = new JMenuItem("Login@");
        imm.setAction(actionsMgr.getExitAction(UIActions.APP_EXIT,null,f));
        mm.add(imm);
        mm.addSeparator();
        //20070519add version milestone action
        JMenuItem imm1 = new JMenuItem("Version");
        imm1.setAction(actionsMgr.getVesionDisplayAction(f, "Version@", null, version));
        mm.add(imm1);
      //  JMenuItem imm1 = new JMenuItem("Login@");
       // imm1.setAction(actionsMgr.getLoginAction(f,"Login",null));
        //mm.add(imm1);
        mm.addSeparator();
        
        /*System menus*/
        /*Style menus*/
        JMenu mmUI = new JMenu("Styles");
        JMenuItem immUI1 = new JMenuItem();
        immUI1.setAction(actionsMgr.getLookAndFeelAction(UIActions.LF_MOTIF,null,f));
        mmUI.add(immUI1);
        mmUI.addSeparator();
        
        JMenuItem immUI2 = new JMenuItem();
        immUI2.setAction(actionsMgr.getLookAndFeelAction(UIActions.LF_METAL,null,f));
        mmUI.add(immUI2);
        mmUI.addSeparator();
        
        JMenuItem immUI3 = new JMenuItem();
        immUI3.setAction(actionsMgr.getLookAndFeelAction(UIActions.LF_WINDOW,null,f));
        mmUI.add(immUI3);
        mmUI.addSeparator();
        
        /*Style menus*/
        
        /*DB Menus*/
        JMenu mmDB = new JMenu("Utilities");
        JMenuItem immDB1 = new JMenuItem("Upgrade Manager");
        immDB1.setAction(actionsMgr.getDBUpdateManagerActoin(f, "DB Update Manager", null));
        mmDB.add(immDB1);
        /*DB Menus*/
        JMenuBar mb = new JMenuBar();
        mb.add(mm);
        mb.add(mmDB);
        mb.add(mmUI);
        return mb;
    }
    private static void createDBController(){
        try{
            config= new SystemConfig("system");
        }catch(Exception e){
            logger.severe("Could not read system.properties");
        }
        databaseURL =config.getProperty("JDBC_URL");
        driverName = config.getProperty("JDBC_DRIVER");
        SystemConfig vc = new SystemConfig("version",new File("./version"));
        logger.info("Getting.. version information");
        version =  vc.getProperty("version");
        
        logger.info("#################################################");
        logger.info("READ JDBC_DRIVER:\t"+config.getProperty("JDBC_DRIVER"));
        logger.info("READ JDBC_URL:\t"+config.getProperty("JDBC_URL"));
        logger.info("#################################################");
        logger.info("Loding db config");
        logger.info("Creating dbmgr.....");
        
        //= new AbstractDBManager(driverName,databaseURL,user,password);
        try{
           dbctrl = DBController.createDBController(driverName,databaseURL,"","");
           dbmgr = dbctrl.getDBManager();
           runtimeControl.setDBManager(dbmgr);
        }catch(Exception e){
        	JOptionPane.showMessageDialog(f, "Eror processing params "+e.getMessage(), "JRX", 0);
        	
        }
        
        
        
        
        dbmgr.dbPing("select * from rdb$database");
        logger.info("Sending db command");
    }
    private static TreeView buildTreeMenus(AbstractDBManager dgm){
        TreeMenuController treemenu = TreeMenuController.createTreeMenuController(dgm ,SQLBuilder.getTreeMenuSelect());
        // TreeDBData trdata = treemenu.getTreeData();
        ArrayList       nodelist = treemenu.getBuiltNode();
        DefaultMutableTreeNode node = null;
        TreeView tv = new TreeView(FrameDecorator.TREE_ROOT);
        tv.setFont(new Font("AngsanaUPC", Font.BOLD, 50));
        Iterator it = nodelist.iterator();
        while(it.hasNext()){
        	//((DefaultMutableTreeNode)it.next()).
            tv.addNode((DefaultMutableTreeNode)it.next() );
        }
        return  tv;
        
    }
    
    public AbstractDBManager getDBManager(){
        return dbmgr;
    }
    
    
    private static void destroy(){
        runtimeControl.destroy();
    }
    
    public static void main(String[] args) {
        //Schedule a job for the event-dispatching thread:
        //creating and showing this application's GUI.
        final boolean show =false;
 
        javax.swing.SwingUtilities.invokeLater(new Runnable() {
            public void run() {
            	JFrame fakeFrame = new JFrame();
           // logger.info(SystemConfig.getWorkingDirectory()+"/image/1.jpg");
             //Splash sp = new Splash(fakeFrame,SystemConfig.getWorkingDirectory()+"/image/1.jpg"); 
             //sp.setVisible(true);
                createDBController();
               // sp.dispose(); 
                loginDlg = new LoginDialog(fakeFrame,"JX@Login Window");
                logger.info("created login windows");
                loginDlg.setRuntimeController(runtimeControl);
                logger.info("setting... runtime controller");
                loginDlg.setModal(true);
                loginDlg.show();
               
                // loginDlg.get
                if (loginDlg.isLoginSuccess() ){
                    userID = loginDlg.getLogonUserID();
                    runtimeControl.setgetLoggedUser(userID);
                        createAndShowGUI();
                     logger.info("Create main window");
                }else{
                    destroy();
                    System.exit(0);
                }
                
            }
            
        });
    }
    
}
