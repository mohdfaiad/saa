package com.saa.ui.View;

import java.awt.BorderLayout;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JFrame;

import net.sf.jasperreports.engine.JRField;
import net.sf.jasperreports.engine.JRSortField;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JRDesignQuery;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRSortFieldFactory;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

import java.awt.List;
import java.awt.Panel;
import java.awt.GridBagLayout;
import java.awt.Button;
import java.awt.GridBagConstraints;
import java.awt.Label;
import java.awt.Dimension;
import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Vector;
import net.sf.jasperreports.engine.JRQuery;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.view.JasperViewer;

public class SortFieldListFrame extends JDialog {

	private static final long serialVersionUID = 1L;

	private JPanel jContentPane = null;

	private List avaliableFieldList = new List();

	private List sortFieldList = new List();

	private Panel panel = null;

	private JButton addFieldButton = null;

	private JButton removeFieldButton = null;

	private Label label = null;
	
	private JasperReport report = null;  //  @jve:decl-index=0:
	
	private JRField[] fields,jrNewFields;
	
	
	private Map listFieldsMap = new HashMap();

	private JButton saveFieldButton = null;

	//private Button button3 = null;

	String reportSource ="C:/dev/saareport/report/templates/SA001.jrxml";
	
	
	StringBuffer sortExpression =new StringBuffer();

        Connection con = null;

        Map param = new HashMap();

	/**
	 * This is the default constructor
	 */
	public SortFieldListFrame() {
		super();
		initialize();
	}
	/*
	 * @param jrxml file
	 * @param map ['Customer Code','SO_ORDER_HD.CUST_CODE'] ,['order date','so_order_hd.order_date']

	 * **/
	
	public SortFieldListFrame(String reportFileName, Map map){
		super();
		this.reportSource = reportFileName;
		this.listFieldsMap = map;
	
		initialize();

		
	}

	/**
	 * This method initializes this
	 * 
	 * @return void
	 */
	
	private void initialize() {
		this.setSize(331, 250);
		try{
	          //         createConnection();
			// report = JasperCompileManager.compileReport(reportSource);
		
				 
				 processAvaliableSortField();
			
			}
			catch(Exception e){
				JOptionPane.showMessageDialog(this, "Compile report Error\n"+e.getMessage());
			}
			
		//setDefaultCloseOperation(EXIT_ON_CLOSE);
		this.setContentPane(getJContentPane());
		this.setTitle("Sort Manager");
		
		
	}
	void processAvaliableSortField(){
		
		Iterator it = 	listFieldsMap.keySet().iterator();
			while (it.hasNext()) {
				Object object = it.next();
				avaliableFieldList.add(object.toString());
				//it.next();
			}
			
	}

	/**
	 * This method initializes jContentPane
	 * 
	 * @return javax.swing.JPanel
	 */
	private JPanel getJContentPane() {
		if (jContentPane == null) {
			label = new Label();
			label.setText("Avaliable                                                          Applied Fields");
			jContentPane = new JPanel();
			jContentPane.setLayout(new BorderLayout());
			jContentPane.add(avaliableFieldList, BorderLayout.WEST);
			jContentPane.add(sortFieldList, BorderLayout.EAST);
			jContentPane.add(getPanel(), BorderLayout.CENTER);
			jContentPane.add(label, BorderLayout.NORTH);
		}
		return jContentPane;
	}

	/**
	 * This method initializes list	
	 * 	
	 * @return java.awt.List	
	 */


	/**
	 * This method initializes list1	
	 * 	
	 * @return java.awt.List	
	 */

	/**
	 * This method initializes panel	
	 * 	
	 * @return java.awt.Panel	
	 */
	private Panel getPanel() {
		if (panel == null) {
			GridBagConstraints gridBagConstraints2 = new GridBagConstraints();
			gridBagConstraints2.gridx = 1;
			gridBagConstraints2.gridy = 3;
			GridBagConstraints gridBagConstraints11 = new GridBagConstraints();
			gridBagConstraints11.gridx = 1;
			gridBagConstraints11.gridy = 2;
			GridBagConstraints gridBagConstraints1 = new GridBagConstraints();
			gridBagConstraints1.gridx = 1;
			gridBagConstraints1.gridy = 1;
			GridBagConstraints gridBagConstraints = new GridBagConstraints();
			gridBagConstraints.gridx = 1;
			gridBagConstraints.gridy = 0;
			panel = new Panel();
			panel.setLayout(new GridBagLayout());
			panel.add(getAddFieldButton(), gridBagConstraints);
			panel.add(getRemoveFieldButton(), gridBagConstraints1);
			panel.add(getSaveFieldButton(), gridBagConstraints11);
		//	panel.add(getButton3(), gridBagConstraints2);
		}
		return panel;
	}

	/**
	 * This method initializes button	
	 * 	
	 * @return java.awt.Button	
	 */
	private JButton getAddFieldButton() {
		if (addFieldButton == null) {
			addFieldButton = new JButton();
			addFieldButton.setLabel("Add>>");
			addFieldButton.addActionListener(new java.awt.event.ActionListener() {
				public void actionPerformed(java.awt.event.ActionEvent e) {
					sortFieldList.add(avaliableFieldList.getItem(avaliableFieldList.getSelectedIndex()));
					if (sortExpression.length() ==0){
						sortExpression.append(listFieldsMap.get(avaliableFieldList.getItem(avaliableFieldList.getSelectedIndex())));
					}else {
						sortExpression.append(","+listFieldsMap.get(avaliableFieldList.getItem(avaliableFieldList.getSelectedIndex())));	
					}
				}
			});
		}
		return addFieldButton;
	}

	/**
	 * This method initializes button1	
	 * 	
	 * @return java.awt.Button	
	 */
	private JButton getRemoveFieldButton() {
		if (removeFieldButton == null) {
			removeFieldButton = new JButton();
			removeFieldButton.setLabel("<<remove");
			removeFieldButton.addActionListener(new java.awt.event.ActionListener() {
				public void actionPerformed(java.awt.event.ActionEvent e) {
					sortFieldList.clear();
					sortExpression = new StringBuffer("");
				}
			});
		}
		return removeFieldButton;
	}
	
	/**
	 * This method initializes button2	
	 * 	
	 * @return java.awt.Button	
	 */
	private JButton getSaveFieldButton() {

		if (saveFieldButton == null) {
			saveFieldButton = new JButton("Save");
			saveFieldButton.setLabel("Save");
			saveFieldButton.addActionListener(new java.awt.event.ActionListener() {
				public void actionPerformed(java.awt.event.ActionEvent e) {
						
				     setVisible(false);
				    // dispose();
				}
			});
		}
		return saveFieldButton;
	}

           private  void createConnection(){

    	   try {
    		   String  url = "jdbc:firebirdsql:127.0.01:C:/PROJECT/saa/DATABASE/SAABKKRESTORE.GDB";

               Class.forName("org.firebirdsql.jdbc.FBDriver");
               con =  DriverManager.getConnection(url,"sysdba","masterkey");


           } catch (Exception e) {
               e.printStackTrace();
               //System.out.println(e.getMessage());
           }
    }

		public String getSortExpression() {
			return sortExpression.toString();
		}



	//public static void main(String[] arg){
	//	JasperReportSortField wiget = new JasperReportSortField();
		//wiget.setTitle("Sort field manager");
		//wiget.setVisible(true);
	//}

}  //  @jve:decl-index=0:visual-constraint="44,32"
