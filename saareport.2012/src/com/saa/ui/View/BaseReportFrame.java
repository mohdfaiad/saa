/*
 * BaseReportFrame.java
 *
 * Created on 25 ����¹ 2550, 12:38 �.
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.View;

import com.saa.control.report.ReportsController;
import com.saa.data.ReportOptions;
import com.saa.data.SQLBuilder;
import com.saa.data.SubTreeObject;
import com.saa.logger.AppLogger;
import com.saa.ui.Dialogs.ProgressDialog;
import com.saa.ui.View.BaseView;
import com.saa.data.ui.*;
import com.saa.util.*;
import com.saa.ui.View.panels.ExportOptionsPanel;
import com.saa.ui.View.panels.YearMonthPanel;
import java.awt.BorderLayout;
import java.awt.Cursor;
import java.awt.FlowLayout;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.util.HashMap;
import java.util.Map;
import javax.swing.JComboBox;
import javax.swing.JComponent;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;

import net.sf.jasperreports.engine.JRException;
public abstract class BaseReportFrame extends BaseView{
    
    /** Creates a new instance of BaseReportFrame */
    protected ExportOptionsPanel exportPanel;
    protected ReportsController controller;
    protected JPanel centerinnerPanel;
    protected  Map params = new HashMap();
    protected AppLogger logger = AppLogger.getLogger();
    protected ProgressDialog progressDlg = null;
    protected boolean success = false;
    protected Cursor hourGlassCursor = new Cursor(Cursor.WAIT_CURSOR);
    protected Cursor defaultCursor = new Cursor(Cursor.DEFAULT_CURSOR);
    
    protected boolean retriveAll =false;
    /**puting the entire line of the expression we like to remove from query**/
    protected String removeExpression="";
   
    


    public BaseReportFrame(SubTreeObject node , int w , int h) {
        super(node,w,h);
        //
        centerPanel.setLayout(new BorderLayout());
        centerinnerPanel = new JPanel();
        
        exportPanel = (ExportOptionsPanel)decorator.getExportOptionsPanel();
        centerinnerPanel.add(exportPanel,BorderLayout.SOUTH);
       // centerPanel.add(new JPanel(),BorderLayout.SOUTH);
        centerPanel.add(centerinnerPanel,BorderLayout.SOUTH);
        //centerPanel.add(new JPanel(),BorderLayout.PAGE_END);
       // controller.setBaseComponent(this);
        controller = new ReportsController(actionObject.getResourceName(),0);
        //  getContentPane().add(decorator.getExportOptionsPanel() );
        pack();
        setVisible(true);
        
        
    }
    public abstract void processParameters();
    
   
 
    public  void  filterExecute(){
    	  // showError("do Filter Execute");
    }
   
    public  boolean validateInput(){
        success = true;
        return true;
    }
    
    private void precessReport(){
    	
    	  setProgress(60);
          pack();
          logger.info("Setting params.."+actionObject.getResourceName()); 
          setProgress(100);
          pack();
          if (success){

          	controller.loadReport();
          }
    }
    public void actionPerformed(ActionEvent e) {
       super.actionPerformed(e);
       if (e.getActionCommand().equals(decorator.buttonsCommand[decorator.CMD_OK])){
         try {
            this.setCursor(hourGlassCursor);
             logger.info("Loading report.."+actionObject.getResourceName()); 
             setProgress(10);
             SwingUtilities.invokeLater(new Runnable() {
               public void run() {
            	   setProgress(25);
            	    pack();
       
                    controller.setExportOption(exportPanel.exportOptionsCombo.getSelectedIndex());
                    setProgress(30);
                    pack();
                    if (validateInput()){
                        if (success ) {
                       
                           if (!retriveAll){
                        	   		controller.setRecompileUsingDesing(false);
                        	   	    processParameters();
		                            controller.setParameters(params) ;
		                           
		                          
		                     } else{
		                    	 try{
		                    	
			 
		                    		 controller.processExistQuery();
		                    		 logger.info("remove syntax ="+removeExpression);
		                    		 controller.removeIgnoreQuerySyntax(removeExpression);
		                    		 controller.setRecompileUsingDesing(true);	
		                    		 processParameters();
		                    	     controller.setParameters(params) ;
		                    		 logger.info("Retrive all information"+params.toString());
		                    	
		               
		                    	 }catch(JRException e){
		                    		logger.warning("Error when processing new Query"+e.getMessage());
		                    		 
		                    	 }
		                    	 
		                     }
                           precessReport();
                     
                       }else{
                            showError("Invalid operation process has canceled");
                                  setProgress(0);
                        }
                    }else{
                        showError("Invalid Input parameters");
                        setProgress(0);
                 
                    }
               }
            });
            
        }finally{
        	this.setCursor(defaultCursor);
           // progressDlg.setVisible(false);
        }
    }else if(e.getActionCommand().equals(decorator.buttonsCommand[decorator.CMD_FILTER])){
    	//
    	//  MessageDlg.info(this,"Open Filter here!!!!! do filter execute abstract here method","Filter window");
    	  filterExecute();
      }
    }
    protected void showError(String msg){
        MessageDlg.warning(this,msg,"");
    }
    protected void showSuccess(String msg){
        MessageDlg.info(this,msg,"");
    }
}





