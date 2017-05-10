package com.saa.ui.View.panels;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;

import javax.swing.BorderFactory;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class AbstractSingleTextFieldPanel extends BasePanel {
	
	private JLabel textLabel = new JLabel();
	private JTextField textFiled = new JTextField();
	private JPanel innerPanel = new JPanel();
	
	public AbstractSingleTextFieldPanel(String label){
		super();
	    setLayout(new BorderLayout());
		innerPanel.setLayout(new BorderLayout());
		innerPanel.setBorder(BorderFactory.createLineBorder(Color.BLACK));
		textLabel.setText(label);
		innerPanel.add(textLabel,BorderLayout.WEST);
		textLabel.setLabelFor(textFiled);
		innerPanel.add(textFiled,BorderLayout.CENTER);
		add(innerPanel,BorderLayout.NORTH);
	  
		
	}
	public Object getText(){
		return textFiled.getText();
	}
	
	
	public void setText(String value){
		 textFiled.setText(value);
	}

}
