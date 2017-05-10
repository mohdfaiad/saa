package com.saa.ui.warehouse.test;

import static javax.swing.GroupLayout.Alignment.BASELINE;
import static javax.swing.GroupLayout.Alignment.LEADING;

import java.awt.Container;

import javax.swing.GroupLayout;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingConstants;

public class TestGroupLayout {

	/**
	 * @param args
	 */
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		JLabel label1,label2,label3,label4;
		JTextField text1,text2,text3,text4;
		JFrame frame = new JFrame("test group layout");
		 JPanel panel = new JPanel();
		 frame.getContentPane().add(panel);
		 GroupLayout layout = new GroupLayout(panel);
	     panel.setLayout(layout);
	     layout.setAutoCreateGaps(true);
	     layout.setAutoCreateContainerGaps(true);
	     label1 = new JLabel("Text 1:");
	     label2 = new JLabel("Text 2:");
	     label3 = new JLabel("Text 3:");
	     label4 = new JLabel("Text 4:");
	     text1 = new JTextField();
	     text2 = new JTextField();
	     text3 = new JTextField();
	     text4 = new JTextField();
	     layout.setHorizontalGroup(layout.createSequentialGroup()
	             .addComponent(label1)
	             .addGroup(layout.createParallelGroup(LEADING)
	            		 .addComponent(text1))
	             .addGroup(layout.createSequentialGroup()	
	            	 .addComponent(label2))	
	              .addGroup(layout.createSequentialGroup()	
	           		 .addComponent(text2))	
	        
	            		
	     );
	     
	     layout.linkSize(SwingConstants.HORIZONTAL, label1, text1);

	         layout.setVerticalGroup(layout.createSequentialGroup()
	             .addGroup(layout.createParallelGroup(BASELINE)
	                 .addComponent(label1)
	                 .addComponent(text1))
	             .addGroup(layout.createParallelGroup(BASELINE)
	                 .addComponent(label2)
	                 .addComponent(text2))
	           
	    	           
	           
	     );
	         
	 	         
	      frame.pack();
	      frame.setVisible(true);


		

	}

}
