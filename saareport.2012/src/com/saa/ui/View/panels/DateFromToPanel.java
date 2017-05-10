package com.saa.ui.View.panels;

import java.util.Date;

import javax.swing.JLabel;

import com.saa.ui.date.DateField;
import com.saa.ui.date.MicrobaDatePicker;

public class DateFromToPanel extends DatePanel {
	public MicrobaDatePicker dateEnd = new MicrobaDatePicker();
	public DateFromToPanel(String msg , String msg1){
		super(msg);
		add(new JLabel(msg1));
		add(dateEnd);
		repaint();
		
	}	
	public Date getEndDate(){
		return dateEnd.getDate();
	}

}
