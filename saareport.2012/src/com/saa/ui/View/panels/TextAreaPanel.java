package com.saa.ui.View.panels;

import java.awt.BorderLayout;

import javax.swing.JLabel;
import javax.swing.JTextArea;
import javax.swing.text.JTextComponent;

public class TextAreaPanel extends BasePanel {
	protected JTextArea textArea ;
	protected JLabel label;
	private String lableCaption;
	private int textRow = 5;
	private int textCol = 150;
	public TextAreaPanel(String caption, int row , int col){
		super();
		lableCaption = caption;
		textRow = row;
		textCol = col;
		label = new JLabel(lableCaption);
		textArea = new JTextArea();
		textArea.setColumns(textCol);
		textArea.setRows(textRow);
		setLayout(new BorderLayout());
		add(label,BorderLayout.NORTH);
		add(textArea,BorderLayout.CENTER);
		
		
	}
	public Object getTextObject(){
		return (Object)textArea.getText();
	}

}
