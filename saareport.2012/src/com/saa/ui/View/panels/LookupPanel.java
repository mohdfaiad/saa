package com.saa.ui.View.panels;

import java.awt.BorderLayout;
import java.awt.GridLayout;
import java.awt.LayoutManager;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

public class LookupPanel extends BasePanel implements ActionListener{
	
	JLabel label1,label2;
	JTextField textField;
	JButton OKButton;
	public LookupPanel(String label){
		
		 setLayout(new GridLayout(1,3));
	      label1 = new JLabel(label+":");

	        textField = new JTextField();
	        label1.setLabelFor(textField);
	        OKButton = new JButton("OK");
	        OKButton.addActionListener(this);
	        add(label1);
	        add(textField);
	        add(OKButton);
	        repaint();
	}
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		JOptionPane.showMessageDialog(null, "Open Customer Dialog here");
		
	}
	
	
	
	

}
