/*
 * BaseViewDecorator.java
 *
 * Created on April 20, 2007, 1:54 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.View;

/**
 *
 * @author Administrator
 */

import com.saa.ui.View.panels.AbstractComboPanel;
import com.saa.ui.View.panels.AbstractLookupDialogPanel;
import com.saa.ui.View.panels.AbstractSingleTextFieldPanel;
import com.saa.ui.View.panels.DateFromToPanel;
import com.saa.ui.View.panels.DatePanel;
import com.saa.ui.View.panels.ExportOptionsPanel;
import com.saa.ui.View.panels.MeltFromToPanel;
import com.saa.ui.View.panels.TextAreaPanel;
import com.saa.ui.View.panels.YearMonthPanel;
import com.saa.ui.View.panels.ButtonsPanel;
import com.saa.ui.View.panels.LoginPanel;
import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.FlowLayout;
import java.util.Vector;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
public class BaseViewDecorator {
    public static int CMD_OK = 0;
    public static int CMD_CANCEL = 1;
    public static int CMD_EXIT = 2;
    /**7 July 2010 add more filter command*/
    public static int CMD_FILTER =3;
    public static String[] buttonsCommand ={"OK","Cancel","Exit","Sort"};
    
    private BaseView view;
    /** Creates a new instance of BaseViewDecorator */
    public BaseViewDecorator(BaseView vw) {
        this.view = vw;
    }
    /*additional overload constructor pass standard java component*/
    public BaseViewDecorator(Component com){
    }
    
    
    public JButton createButton(String cmd){
        JButton button = new JButton(cmd);
        return button;
    }
    
    public JPanel getYearMonthPanel(){
        return new YearMonthPanel();
    }
    public JPanel getLoginPanel(){
       return (JPanel)new LoginPanel();
        
    }
    public JPanel getExportOptionsPanel(){
        return new ExportOptionsPanel();
    }
    public JPanel getButtonsPanel(){
        return (JPanel) new ButtonsPanel();
    }
    
    public JPanel getAbstractComboPanel(String title , Vector v){
        return (JPanel)new AbstractComboPanel(title, v);
    }
    
    
    public JPanel getDateFieldPanel(String title){
        return (JPanel)new DatePanel(title);
    }
    public JPanel getMeltFromToPanel(){
        return (JPanel)new MeltFromToPanel();
    }
    public JPanel getDateFromToPanel(String msg , String msg1){
    	return (JPanel)new DateFromToPanel(msg, msg1);
    }
    public JPanel getAbstractSingleTextFieldPanel(String text){
    	return (JPanel)new AbstractSingleTextFieldPanel(text);
    }
    public JPanel getTextAreaPanel(String text,int col , int row){
    	return (JPanel) new TextAreaPanel(text,col,row);
    }
    /**
     * @param title - what is caption you want to display
     * @param dbTable - name of DB table 
     * @param dbSearchColumn - what column with comma delimiter
     * @param dbOrderBy   - what are sort columns
     * **/
    public JPanel getAbstractLookupDialogPanel(String title,String dbTable,String columns,String rColumns){
    	
    	return (JPanel) new AbstractLookupDialogPanel(title,dbTable,columns,rColumns);
    }
   
}
