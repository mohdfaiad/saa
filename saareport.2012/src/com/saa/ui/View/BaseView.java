/*
 * BaseView.java
 *
 * Created on April 20, 2007, 1:51 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.View;

import com.saa.util.MessageDlg;
import com.saa.data.SubTreeObject;
import com.saa.logger.AppLogger;
import com.saa.main.RunTimeController;
import com.saa.ui.utils.UIUtils;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;

/**
 *
 * @author Administrator
 */
import com.saa.jdbc.AbstractDBManager;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

import java.util.ArrayList;
public class BaseView extends JFrame implements ActionListener{
    protected AppLogger logger = AppLogger.getLogger();
    private static BaseView owner; 
    /** Creates a new instance of BaseView */
    private static RunTimeController runtimeControl = RunTimeController.getRuntimeController();
    /*store database access*/
    protected AbstractDBManager dbmgr;
    protected BaseViewDecorator decorator;
    private String viewTitle ="Title";
    private int height = 450;
    private int width = 450;
    protected JFrame parrentFrame = null;
    /*button collection */
    private ArrayList buttons = new ArrayList();
    /**7 July added filter button*/
    private JButton okButton,cancelButton,exitButton,filterButton;
    protected JPanel buttonsPanel = null;
    protected JPanel centerPanel = null;
    protected JPanel headerPanel = null;
    protected JPanel statusPanel = null;
    protected JPanel buttomPanel = null;
    protected JProgressBar progress = null;
    protected JLabel progressLabel = null;
    protected JPanel progressHintPanel = null;

    
    protected SubTreeObject actionObject;
    public static boolean RIGHT_TO_LEFT = false;
    protected boolean success = false;
    protected String errorMsg = "";
    private BaseView() {
        super();
    }
    public  BaseView (SubTreeObject nodeObject , int w , int h){
        super();
        actionObject = nodeObject;
        viewTitle = nodeObject.getSubName();
        width = w;
        height = h;
        //set size
        setSize(width,height);
        //set display title
        setTitle(viewTitle);
        decorator = new BaseViewDecorator(this);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
       // setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        logger.info("creating BaseView");
        /*set database access manager*/
        setDBManager();
       logger.info("created DB Manager");
        //Set up the content pane.
        addComponentsToPane(getContentPane());
        //create header section
        getContentPane(). setLayout(new BorderLayout());
        getContentPane().add(createHeaderPanel() , BorderLayout.NORTH);
        //create center area
        getContentPane().add(createCenterPanel() , BorderLayout.CENTER);
        //create footer area
        buttomPanel = new JPanel(new BorderLayout());
        buttomPanel.add(createButtonsPanel(),BorderLayout.NORTH);
        buttomPanel.add(createStatusBar() , BorderLayout.SOUTH);
        getContentPane().add( buttomPanel , BorderLayout.SOUTH);
      
      
        
        UIUtils.setLocationCenter(this);
        WindowListener wndCloser = new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
              setVisible(false);
            }
          };
          addWindowListener(wndCloser);
        pack();
        setVisible(true);
    }
    private void setDBManager(){
        this.dbmgr = runtimeControl.getDBManager();
        System.out.println("Base from test set dbmger");
    }
    public void setParrent(JFrame frame){
        parrentFrame = frame;
        
    }
    public JFrame getParrentFrame(){
        return parrentFrame;
    }
    private void setLocationCenter(){
        Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
        Dimension windowSize = this.getSize();
        
        int windowX = Math.max(0, (screenSize.width  - windowSize.width ) / 2);
        int windowY = Math.max(0, (screenSize.height - windowSize.height) / 2);
        setLocation(windowX, windowY);  
    
    }
    protected JPanel createStatusBar(){
      progressHintPanel = new JPanel(new BorderLayout());;
      progressLabel = new JLabel("Ready",SwingConstants.CENTER);
      progressHintPanel.add(progressLabel,BorderLayout.CENTER);
      progress = new JProgressBar();

      //  progress.setValue(50);
       statusPanel = new JPanel(new BorderLayout());
       statusPanel.add(progressHintPanel,BorderLayout.NORTH);
       statusPanel.add(progress , BorderLayout.SOUTH);
       statusPanel.setBorder(BorderFactory.createLineBorder(Color.BLACK,1));
       return statusPanel;
    }
    protected  void setProgress(int value){
        if (value < progress.getMaximum()){
          progressLabel.setText("Processing..("+value+"%)");  
     
        }else{
           progressLabel.setText("Done");
        }
        if (value == 0){
            progressLabel.setText("Ready");
        }
         progress.setValue(value);
       //  repaint();
    }
    /*@return buttonsPanel instance that contains created buttons*/
    protected final JPanel createButtonsPanel(){
     buttonsPanel   = new JPanel(new FlowLayout());
     okButton       = decorator.createButton(decorator.buttonsCommand[decorator.CMD_OK]);
     okButton.addActionListener(this);
     cancelButton   = decorator.createButton(decorator.buttonsCommand[decorator.CMD_CANCEL]);
     cancelButton.setVisible(false);
     cancelButton.addActionListener(this);
     exitButton     = decorator.createButton(decorator.buttonsCommand[decorator.CMD_EXIT]);
     exitButton.addActionListener(this);
     filterButton = decorator.createButton(decorator.buttonsCommand[decorator.CMD_FILTER]);
     filterButton.addActionListener(this);
     cancelButton.setVisible(true);
     buttonsPanel.add(okButton);
     buttons.add(okButton);
     buttonsPanel.add(cancelButton);
     buttons.add(cancelButton);
     buttonsPanel.add(exitButton);
     buttons.add(exitButton);
     buttonsPanel.add(filterButton);
     buttons.add(filterButton);
     buttonsPanel.setBorder(BorderFactory.createLineBorder(Color.BLACK,1));
     return buttonsPanel;
    }
    /*@return centerPanel instance*/
    protected  JPanel createCenterPanel(){
        centerPanel = new JPanel();
        centerPanel.setBorder(BorderFactory.createLineBorder(Color.BLACK,1));
        return centerPanel;
    }
    /*@return headerPanel instance*/
    protected JPanel createHeaderPanel(){
        headerPanel = new JPanel();
      //  headerPanel.setBorder(BorderFactory.createLineBorder(Color.BLUE,1));
        return headerPanel;
    }
   /* set visivility of button
     @param showOK
     @param showCancel
     @param showExit*/ 
   public void showHideButton(boolean showOK , boolean showCancel , boolean showExit) {
       okButton.setVisible(showOK);
       cancelButton.setVisible(showCancel);
       exitButton.setVisible(showExit);
   }
   /*@param visible flag of fram visible
    */
  
   

    public void dispose() {
    }
    
    
    public  void addComponentsToPane(Container pane) {
        if (!(pane.getLayout() instanceof BorderLayout)) {
            pane.add(new JLabel("Container doesn't use BorderLayout!"));
            return;
        }

        if (RIGHT_TO_LEFT) {
            pane.setComponentOrientation(
                java.awt.ComponentOrientation.RIGHT_TO_LEFT);
        }
    }
  
    
    public void actionPerformed(ActionEvent e){
       if (e.getActionCommand().equals(decorator.buttonsCommand[decorator.CMD_EXIT])){
           this.setVisible(false);
            this.dispose();
       }
        //
    }
    
    
}
