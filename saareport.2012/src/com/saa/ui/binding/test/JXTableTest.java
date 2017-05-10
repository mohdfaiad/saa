package com.saa.ui.binding.test;


import java.awt.Color;
import java.util.Vector;
import java.util.regex.Pattern;
 
import javax.swing.*;
import javax.swing.table.AbstractTableModel;
 

public class JXTableTest {
 
	private static String[] data = { "This is the 1st String", "String 2", "Another String",
			"The Final String" };
	
	private static String[] data2 = { "Refresh column1", "String 2", "Refresh Column2",
	"The Final String" };
	public class RowData {
		public String value1;
		public String value2;
		public String value3;
		public RowData(String v1 , String v2 ,String v3){
			value1 = 	v1;
			value2 = 	v2;
			value3  =	v3;
		}
		
	}
 
	private static String[] columns = { "Name", "Length", "Upper-case" };
 
	public static void main(String[] args) {
		//Vector v = new Vector()
		SampleTableModel model = new SampleTableModel(columns,data);
		JTable table = new JTable(model);
		setLookAndFeel();
		
		JFrame frame = new JFrame();
		frame.getContentPane().add(new JScrollPane(table));
		frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		frame.pack();
		model.setData(data2);
		frame.setVisible(true);
	}
 
	private static void setLookAndFeel() {
		try {
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		}
		catch(Exception e) {
		}
	}
 
	private static class SampleTableModel extends AbstractTableModel {
		private Object[] columns;
		private String[] data  ;
		public void setData(String[] d){
			data = d;
		}
		public SampleTableModel(Object[] column, String[] rowdata){
			this.columns = column;
			this.data = rowdata;
			
		}
		public int getColumnCount() {
			return columns.length;
		}
 
		@Override public String getColumnName(int column) {
			return columns[column].toString();
		}
 
		public int getRowCount() {
			return data.length;
		}
 
		public Object getValueAt(int rowIndex, int columnIndex) {
			String theData = data[columnIndex];
			Object result = null;
			switch (columnIndex) {
			case 1:
				result = theData.length(); // auto-boxing.
				break;
			case 2:
				result = theData.toUpperCase();
				break;
			default:
				result = theData;
			}
 
			return result;
		}
	}
 
}
 
