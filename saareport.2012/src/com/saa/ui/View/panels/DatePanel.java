/*
 * DatePanel.java
 *
 * Created on 30 ����¹ 2550, 9:52 �.
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.View.panels;

import com.saa.ui.date.DateField;
import com.saa.ui.date.DatePicker;
import com.saa.ui.date.MicrobaDatePicker;

import java.awt.FlowLayout;
import javax.swing.JLabel;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;


/**
 *
 * @author Administrator
 */
public class DatePanel extends BasePanel{
    
    /** Creates a new instance of DatePanel */
    public JLabel dateLable;
    public MicrobaDatePicker dateField;
    public DatePanel(String msg) {
        setLayout(new FlowLayout());
        dateLable =  new JLabel(msg);
        add(dateLable);
        dateField = new MicrobaDatePicker();
        Calendar cal =  new GregorianCalendar();

 
	    SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
     	cal.add(Calendar.YEAR, 0);	//-1 for subtracting 
	    System.out.println("converting ERA to BC.");

        try{
        	dateField.setDate(new Date( sdf.format(cal.getTime()))); 
        	
        
        }catch(Exception e){
           e.printStackTrace();
        	
        }
        add(dateField);
       // pack();
      //  dp.setHideOnSelect(false);
      // dlg.getContentPane().add(dp);
    }
    
    public Date getDate(String format){
    
  //  SimpleDateFormat sdf = new SimpleDateFormat(format);
   
 //   System.out.println(sdf.format( dateField.getDate()));
    //sdf.format()

        return dateField.getDate();
    }
    public void setDate(Date date) throws Exception{
    	dateField.setDate(date);
    }
   
}
