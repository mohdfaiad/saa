package com.saa.test.jasper;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.JDialog;
import javax.swing.JFrame;

import com.saa.data.SQLBuilder;
import com.saa.logger.AppLogger;
import com.saa.model.PurchaseOrderStatusItem;

import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JRViewer;

public class JasperDataSource {

	/**
	 * @param args
	 */
	
	   private static String fileName = "/report/templates/version 2.0/PC001-model.jasper";
	   private static JasperPrint jasperPrint;
	   private static JasperReport jasperReport;
	   private static List<PurchaseOrderStatusItem> model;
	   private static HashMap<String, Object> params = new HashMap<String, Object>();
	   private static Connection con;
		
	   public static void fill() {
	        {
	            FileInputStream file = null;

	            try {
	                file = new FileInputStream(System.getProperty("user.dir")+fileName);
	                System.out.println(System.getProperty("user.dir")+fileName);
	                jasperReport = (JasperReport) JRLoader.loadObject(file);
	                model = getPurchaseOrderItem();
	                System.out.println("Create model");
	                processParameters();
	                if (model == null) {
	                    jasperPrint = JasperFillManager.fillReport(jasperReport, params, new JREmptyDataSource());
	                } else {
	                    jasperPrint = JasperFillManager.fillReport(jasperReport, params, new JRBeanCollectionDataSource(model));
	                }
	            } catch (FileNotFoundException ex) {
	                System.out.println("FileNotFoundException = " +ex.getMessage());
	            } catch (JRException ex) {
	              // AppLogger.getLogger(this.getClass().getName()).
	            	System.err.println("Errir"+ex.getMessage());
	            } finally {
	                try {
	                    file.close();
	                } catch (IOException ex) {
	                	System.err.println("Errir"+ex.getMessage());
	                }
	            }
	        }
	    }
	   private static void processParameters(){
		  
		  params.put("pSysDate", new Timestamp(System.currentTimeMillis()));
		  params.put("pUID","test");
		  params.put("pStartDate", new Timestamp(System.currentTimeMillis()));
		  params.put("pEndDate", new Timestamp(System.currentTimeMillis()));
	   }
	 
	   
	   private static void preview(){
		   JFrame frame = new JFrame("Test jasper");
		   JDialog dialog = new JDialog(frame, true);
	
	       JRViewer jr = new JRViewer(jasperPrint);
	        dialog.add(jr);
	        dialog.setSize(900, 600);
	        dialog.setVisible(true);
	        jr.setVisible(true);

	   }
    private static List<PurchaseOrderStatusItem> getPurchaseOrderItem(){
    	
    	/**
    	 * 
    	 * ublic String SUPP_CODE;
	public String ORDER_NO;
	public Timestamp ORDER_DATE;
	public String REF_NO;
	public Timestamp REF_DATE;
	public String STATUS;
	public float ORDER_AMT;
	public String DESCS;
	public Timestamp DELIVERY_DATE;
	public String REMARKS;
	public String ITEM_CODE;
	public String UOM;
	public String ITEM_DESCS;
	public float UNIT_COST;
	public float TOTAL_AMT;
	public float BASE_AMT;
	public float QTY;
	public String ITEMSTATUS;
	public float GRN_QTY;
	public String NAME;
	public String EN_DESCS;
    	 * */
    	//ResultSet rs = null;
    	List<PurchaseOrderStatusItem> list= new ArrayList();
    	Statement stm =null;
    	try{
    		stm = con.createStatement();
    		ResultSet rs = stm.executeQuery(SQLBuilder.getPurchaseOrderStatusSQL());
    		//System.out.println(SQLBuilder.getPurchaseOrderStatusSQL());
    		//rs.first(); 
    		while(rs.next()){
    	
    			PurchaseOrderStatusItem item = new PurchaseOrderStatusItem();
    	        try{
    			item.SUPP_CODE = rs.getString("SUPP_CODE");
    			item.ORDER_NO = rs.getString("ORDER_NO");
    			item.ORDER_DATE = rs.getTimestamp("ORDER_DATE");
    			item.REF_NO = rs.getString("REF_NO");
    			item.REF_DATE = rs.getTimestamp("REF_DATE");
    			item.STATUS = rs.getString("STATUS");
    			item.ORDER_AMT = rs.getFloat("ORDER_AMT");
    			item.DESCS = rs.getString("DESCS");
    			item.DELIVERY_DATE = rs.getTimestamp("DELIVERY_DATE");
    			item.REMARKS = rs.getString("REMARKS");
    			item.ITEM_CODE = rs.getString("ITEM_CODE");
    			item.UOM = rs.getString("UOM");
    			item.ITEM_DESCS = rs.getString("ITEM_DESCS");
    			item.TOTAL_AMT = rs.getFloat("TOTAL_AMT");
    			item.UNIT_COST = rs.getFloat("UNIT_COST");
    			item.QTY = rs.getFloat("QTY");
    			item.GRN_QTY = rs.getFloat("GRN_QTY");
    			item.ITEM_DESCS = rs.getString("ITEM_DESCS");
    			item.ITEMSTATUS = rs.getString("ITEMSTATUS");
    			item.NAME = rs.getString("NAME");
    			item.EN_DESCS = rs.getString("EN_DESCS");
    	        }catch(Exception e){
    	        	e.printStackTrace();
    	        }
    			System.out.println("Creating.... purchase item"+item.ITEM_CODE);
    			list.add(item);
    			System.out.println("Create purchase order item");
    			//rs.next();
    			
    		}
    	}catch(Exception e){
    		
    	}
    	
    	
    	
    	return list;
    	
    	
    	
    } 
    
    
    private static void createConnection(){
    	
    	   try {
    		   String  url = "jdbc:firebirdsql:127.0.01:C:/PROJECT/saa/DATABASE/SAABKKRESTORE.GDB";

               Class.forName("org.firebirdsql.jdbc.FBDriver");
               con =  DriverManager.getConnection(url,"sysdba","masterkey");

 
           } catch (Exception e) {
               e.printStackTrace();
               //System.out.println(e.getMessage());
           }
    }
	
	public static void main(String[] args) {
		createConnection();
		fill();
	//	model = getPurchaseOrderItem();
		preview();

	}

}
