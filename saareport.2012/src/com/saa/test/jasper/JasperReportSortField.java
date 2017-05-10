package com.saa.test.jasper;

import java.awt.BorderLayout;

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
import java.util.Map;
import java.util.Vector;
import net.sf.jasperreports.engine.JRQuery;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.view.JasperViewer;

public class JasperReportSortField extends JFrame {

	private static final long serialVersionUID = 1L;

	private JPanel jContentPane = null;

	private List list = null;

	private List list1 = null;

	private Panel panel = null;

	private Button button = null;

	private Button button1 = null;

	private Label label = null;
	
	private JasperReport report = null;  //  @jve:decl-index=0:
	
	private JRField[] fields,jrNewFields;
	private Vector v = new Vector();  //  @jve:decl-index=0:

	private Button button2 = null;

	private Button button3 = null;

	String reportSource ="C:/dev/saareport/report/templates/SA001.jrxml";

        Connection con = null;

        Map param = new HashMap();

	/**
	 * This is the default constructor
	 */
	public JasperReportSortField() {
		super();
		initialize();
	}
	
	
	

	/**
	 * This method initializes this
	 * 
	 * @return void
	 */
	private void initialize() {
		this.setSize(331, 200);
		this.setContentPane(getJContentPane());
		this.setTitle("Jasper Sorting Options");
		try{
                   createConnection();
		 report = JasperCompileManager.compileReport(reportSource);
		}
		catch(Exception e){
			JOptionPane.showMessageDialog(this, "Compile report Error\n"+e.getMessage());
		}
		if (report!=null){
			fields = report.getFields();
			if (fields!=null){
				if (fields.length>0){
					for (int i =0; i<fields.length;i++){
						list.add(fields[i].getName());
						v.add(fields[i]);
					}
				}
					
			}
		}else {
			JOptionPane.showMessageDialog(this, "Could not compile report");
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
			jContentPane.add(getList(), BorderLayout.WEST);
			jContentPane.add(getList1(), BorderLayout.EAST);
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
	private List getList() {
		if (list == null) {
			list = new List();
		}
		return list;
	}

	/**
	 * This method initializes list1	
	 * 	
	 * @return java.awt.List	
	 */
	private List getList1() {
		if (list1 == null) {
			list1 = new List();
		}
		return list1;
	}

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
			panel.add(getButton(), gridBagConstraints);
			panel.add(getButton1(), gridBagConstraints1);
			panel.add(getButton2(), gridBagConstraints11);
			panel.add(getButton3(), gridBagConstraints2);
		}
		return panel;
	}

	/**
	 * This method initializes button	
	 * 	
	 * @return java.awt.Button	
	 */
	private Button getButton() {
		if (button == null) {
			button = new Button();
			button.setLabel(">");
			button.addActionListener(new java.awt.event.ActionListener() {
				public void actionPerformed(java.awt.event.ActionEvent e) {
					list1.add(list.getItem(list.getSelectedIndex()));
				}
			});
		}
		return button;
	}

	/**
	 * This method initializes button1	
	 * 	
	 * @return java.awt.Button	
	 */
	private Button getButton1() {
		if (button1 == null) {
			button1 = new Button();
			button1.setLabel("<<");
                        button1.addActionListener(new java.awt.event.ActionListener() {
				public void actionPerformed(java.awt.event.ActionEvent e) {
					list1.clear();
				}
			});
		}
		return button1;
	}
	
	/**
	 * This method initializes button2	
	 * 	
	 * @return java.awt.Button	
	 */
	private Button getButton2() {

		if (button2 == null) {
			button2 = new Button();
			button2.setLabel("Save");
			button2.addActionListener(new java.awt.event.ActionListener() {
				public void actionPerformed(java.awt.event.ActionEvent e) {
					
					
					   String replaceSyntax="and (so_order_hd.cust_code =$P{pCustCode})";
/*
					JRSortField[] s;
					//JasperDesign jrd = JasperDesign.;

                                        String props = report.getProperty("sortField");
                                        JRSortField[] sf = report.getSortFields();
                                        String query = report.getQuery().getText();
                                       
                                        if (sf.length >0)
                                        System.err.println("xxxxx "+sf[0].getName());
                                        System.err.println("SQL\n"+query);

					report.removeProperty("sortField");
					System.out.println("Remove sortField");
					for (int i=0; i<list1.getItemCount();i++){
						report.setProperty("sortField",list1.getItem(i) );
						System.out.println("Writing..sort field "+list1.getItem(i));
						
						
					}*/
					try{

                                           //   System.err.println("new -> xxxxx "+props);

											//String fileName = getClass().getClassLoader().getResource(reportSource).getFile(); 
											
                                              File theFile = new File(reportSource); 
                                              JasperDesign jasperDesign = JRXmlLoader.load(theFile); 
                                             
                                       	 
                                              StringBuffer buffer = new StringBuffer();
                                              buffer.append(   jasperDesign.getQuery().getText());
                                              
                                              String newQueryStr = buffer.substring(0,buffer.length() -replaceSyntax.length());
                                              buffer= new StringBuffer();
                                              buffer.append(newQueryStr);
                                              buffer.append("\norder by SO_ORDER_HD.ORDER_NO  asc");
                                              JRDesignQuery newQuery = new JRDesignQuery(); 
                                              newQuery.setText(buffer.toString());
                                              System.out.println("set new query ="+buffer.toString());
                                              jasperDesign.setQuery(newQuery); 
                                              
                                              JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign); 
                                            //  Connection conn = MyDatabaseClass.getConnection(); 
                                       

					
                                                 param.put("pStartDate", new Date("1/5/2010"));
                                                 param.put("pEndDate", new Date(System.currentTimeMillis()));
                                                 param.put("pCustCode", new String("L011"));
                                                 param.put("pOrderBy", "  ORDER BY QTY");
                                                // JasperFillManager.fillReport(report, param)
                                              
                                                  JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, param, con); 
                                                    JasperViewer.viewReport(jasperPrint); 


                                      //  System.err.println("new SQL\n"+query);


                                                    //JasperViewer.viewReport(jasperPrint,true);

						}
						catch(Exception ex){
							JOptionPane.showMessageDialog(null,"Compile report Error\n"+ex.getMessage());
						}
					
				//	s = report.getSortFields();
					//System.out.println(" getting sort fiels size ="+s.length);
				}
			});
		}
		return button2;
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


	/**
	 * This method initializes button3	
	 * 	
	 * @return java.awt.Button	
	 */
	private Button getButton3() {
		if (button3 == null) {
			button3 = new Button();
			button3.setLabel("Swap");
			button3.addActionListener(new java.awt.event.ActionListener() {
				public void actionPerformed(java.awt.event.ActionEvent e) {
					//
					
				}
			});
		}
		return button3;
	}

	public static void main(String[] arg){
		JasperReportSortField wiget = new JasperReportSortField();
		wiget.setTitle("Sort field manager");
		wiget.setVisible(true);
	}

}  //  @jve:decl-index=0:visual-constraint="44,32"
