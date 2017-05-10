package com.saa.ui.utils;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.FileDialog;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextArea;

import com.saa.ui.View.BaseView;
import com.saa.ui.View.BaseViewDecorator;

public class DBUpateManager extends JFrame implements ActionListener {
	private JPanel centerPanel;
	private JPanel buttonPanel;
	private JPanel resultPanel = new JPanel();
	private JPanel editorPanel = new JPanel();
	private JButton openScriptButton,runScriptButton;
	private String displayTitle; 

	private JTextArea sqlEditor = new JTextArea(30,100);
	private JTextArea result = new JTextArea(5,100);

	public DBUpateManager(String title){
		super();
		this.displayTitle = title;
		setTitle(title);
		buttonPanel = new JPanel();
		buttonPanel.setLayout(new FlowLayout());
		buttonPanel.setBorder(BorderFactory.createLineBorder(Color.BLACK,1));
		openScriptButton = new JButton("Open");
		openScriptButton.addActionListener(this);
		//openScriptButton.set
		runScriptButton = new JButton("Run");
		runScriptButton.addActionListener(this);
		centerPanel = new JPanel();
		buttonPanel.add(openScriptButton);
		buttonPanel.add(runScriptButton);
		editorPanel.setLayout(new BorderLayout());
		editorPanel.setBorder(BorderFactory.createLineBorder(Color.BLACK,1));
		sqlEditor.setAutoscrolls(true);
		//sqlEditor.setL
		editorPanel.add(sqlEditor,BorderLayout.CENTER);
		
		resultPanel.setLayout(new BorderLayout());
		resultPanel.add(result,BorderLayout.CENTER);
		resultPanel.setBorder(BorderFactory.createLineBorder(Color.BLACK,1));
		centerPanel.setLayout(new BorderLayout());
		centerPanel.add(buttonPanel,BorderLayout.NORTH);
		centerPanel.add(editorPanel,BorderLayout.CENTER);
		centerPanel.add(resultPanel,BorderLayout.SOUTH);
		Container c = this.getContentPane();
	
		c.add(centerPanel);
		pack();
		setSize(500, 300);
		UIUtils.setLocationCenter(this);
		
		setVisible(true);
		
		
	}
	public void actionPerformed(ActionEvent e){
		if (e.getActionCommand().equals("Open")){
			FileDialog fd = new FileDialog(this);
			//FilenameFilter fl = new FilenameFilter();
			//fl.accept(new File("./"),"*.sql");
			
			//fd.setFilenameFilter( fl);
			fd.show();
			result.append("Open SriptFile");
			try{
		//	FileInputStream fin = new FileInputStream(fd.get());
		
			}catch(Exception ee){
				ee.printStackTrace();
				
			}
		
			
			
		}else if (e.getActionCommand().equals("Run")){
			result.append("Run");
			
		}
		System.out.println(e.getActionCommand());
		
	}

}
