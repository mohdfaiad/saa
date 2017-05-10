/*
 * JasPerAdapter.java
 *
 * Created on 21 ����¹ 2550, 13:50 �.
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.control.report;


import com.saa.util.MessageDlg;
import com.saa.util.SystemConfig;
import com.saa.data.ReportOptions;
import com.saa.logger.AppLogger;
import com.saa.main.RunTimeController;
import common.Logger;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.design.JRDesignQuery;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.engine.xml.JRXmlLoader;


import java.io.File;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporterParameter;

import net.sf.jasperreports.engine.JRParameter;

import net.sf.jasperreports.engine.JRSortField;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;

import net.sf.jasperreports.engine.export.JRRtfExporter;
import net.sf.jasperreports.engine.export.JRXlsExporter;

import net.sf.jasperreports.view.JasperViewer;

import java.sql.Connection;
import java.sql.Timestamp;

import javax.swing.JFrame;
import javax.swing.JOptionPane;



/**
 * @author Administrator
 *
 */
public abstract class JasPerAdapter implements JasperReportInterface {
    private static String PARAM_SYSDATE =  "pSysDate";
    private static String PARAM_UID = "pUID";
    
    
    private String ORDER_BY ="\nORDER BY\t";
    
    private String ORDERBY_OPTION_ASC ="\tASC";

    private static RunTimeController runtimeControl = RunTimeController.getRuntimeController();
    private Connection con;
    /**base jcomponent suppose to be JFrame or JDialog**/
    private JFrame baseComponent = null;
    
    protected String RESOURCE_DIRECTORY ="/report/templates/";
    protected String OUTPUT_DIRECTORY   ="/report/output/";
    
    protected   String orderbyExpression="";
    protected String reportSource       ="";
    protected String reportDest         ="";
    private String TEMPLATE_DIR       = "";
    private String OUTPUT_DIR         =""; 
    public java.util.Map  reportparams = new java.util.HashMap();
    public java.util.Map  reportSortFields = new java.util.HashMap();
    public JRParameter[] jrParam = null;
    
    public JRSortField[] jsortedFields =null;
    
    protected StringBuffer newQueryBuffer = new StringBuffer("");
    
    private StringBuffer originalQueryBuffer = new StringBuffer("");
    
   


    protected Logger log = Logger.getLogger(this.getClass());
    
    /***5 July checker if jasperReport need to recompile using JRDesing component**/
    protected boolean recompileUsingDesing =false;
    

    
   // private Vector<JRSortField> appliedSortFieldCache = new Vector();
    
    

    /*default option is preview*/
    private int exportOption = 0;
    
    
   // protected Logger log = Logger.getLogger(getClass());
    
    protected JasperReport jasperReport;
    protected JasperPrint jasperPrint;
    protected JasperDesign jasperDesign;


    protected List model = null;

    public List getModel() {
        return model;
    }

    public void setModel(List model) {
        this.model = model;
    }
    
    /** Creates a new instance of JasPerAdapter */
    private JasPerAdapter() {
    }

     public void fill() {
        {
            FileInputStream file = null;

            try {
                file = new FileInputStream(TEMPLATE_DIR+"/"+reportSource);
                System.out.println(TEMPLATE_DIR+"/"+reportSource);
                jasperReport = (JasperReport) JRLoader.loadObject(file);
                if (model == null) {
                    jasperPrint = JasperFillManager.fillReport(jasperReport, reportparams, new JREmptyDataSource());
                } else {
                    jasperPrint = JasperFillManager.fillReport(jasperReport, reportparams, new JRBeanCollectionDataSource(model));
                }
            } catch (FileNotFoundException ex) {
                System.out.println("FileNotFoundException = " +ex.getMessage());
                JOptionPane.showMessageDialog(baseComponent, "File Not found"+ex.getLocalizedMessage());
            } catch (JRException e) {
               log.error(e.getMessage());
            } finally {
                try {
                    file.close();
                } catch (IOException ex1) {
                     log.error(ex1.getMessage());
                  //Logger.getLogger(Tap1Report.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }
    /****
     * <p>another overload consturcture to create report without compile. <p>
     ****/
    public void JasperAdapter(String resourceName,int option, List modelData){
        reportSource = resourceName;
        exportOption = option;
      
        setTemplateDir();
        fill();
    }

    public JasPerAdapter(String resourceName , int option){
        reportSource = resourceName;
        exportOption = option;
        con = runtimeControl.getDBManager().getConnection();
        setTemplateDir();
        if (con!=null){
        	try{
        	  jasperReport = JasperCompileManager.compileReport(TEMPLATE_DIR+"/"+reportSource);
          	  File theFile = new File(TEMPLATE_DIR+"/"+reportSource); 
              jasperDesign = JRXmlLoader.load(theFile); 
              originalQueryBuffer.append(jasperDesign.getQuery().getText());
        	}catch(Exception e){
        		log.warn("Fail:Compile jasper report "+e.getMessage());
        	}
        
        }
        
    }
    
    
 
    public String getTemplateDir(){
        return TEMPLATE_DIR;
    }
    public void setTemplateDir(){
        File f = null;
        try{
        f = new File(SystemConfig.getWorkingDirectory()+RESOURCE_DIRECTORY);
        OUTPUT_DIR = SystemConfig.getWorkingDirectory()+OUTPUT_DIRECTORY;
        }catch(Exception e){
            log.warn(e.getMessage());
        }
        try{
        
           TEMPLATE_DIR = f.getCanonicalPath();
           log.info("Report Adapter get Default Dir :"+TEMPLATE_DIR);
        }catch(Exception ex){
            log.warn("Directory format error"+TEMPLATE_DIR+" Ex="+ex.getMessage());
        }
     //  return TEMPLATE_DIR;
    }
    
    public void setExportOption(int opt){
        exportOption = opt;
    }
    /*this support to set current date time to anywhere of "pSysDate" displayed*/
    public void processSystemParameters(){
    	
    	jrParam = jasperReport.getParameters();
    	for(int i =0; i <jrParam.length; i++){
    		if (jrParam[i].getName().equals(PARAM_SYSDATE)){
    			reportparams.put(PARAM_SYSDATE, new Timestamp(System.currentTimeMillis()));
    			
    		}else if(jrParam[i].getName().equals(PARAM_UID)){
    			reportparams.put(PARAM_UID, runtimeControl.getLoggedUser());
    			
    		}
    		log.info("Extract "+jrParam[i].getName()+" value ="+reportparams.get(jrParam[i].getName()));
    	}
   
    	
    }
    public void loadReport(){
      	if (orderbyExpression!="") {
       		setRecompileUsingDesing(true);
       		log.debug("Seting recompile = true"+orderbyExpression);
       	}
    	JasperPrint jrPrint =null;
       	processSystemParameters();
     
        	if (!recompileUsingDesing){
        		log.info("Load report without recompile");
        		try{
        			jasperReport = JasperCompileManager.compileReport(TEMPLATE_DIR+"/"+reportSource);
        	    }catch(Exception e){
        	    	log.warn("Fail:Compile jasper report "+e.getMessage());
        	    }
        	}else{
        		try{
        				jasperReport = processNewQuery();	
        			
        		         
        				recompileUsingDesing = false;
                    	orderbyExpression = "";
                   		}catch(JRException e){
        			
        			log.debug("Error when processing new query"+e.getMessage());
        		}
          	
          	}
        	try{
        		//log.info(reportparams.get("pStartDate")+"/"+reportparams.get("pEndDate"));
    
              	 jrPrint = JasperFillManager.fillReport(
                jasperReport, reportparams, con);
              	newQueryBuffer =null;
           	 	newQueryBuffer = new StringBuffer("");
               	newQueryBuffer = originalQueryBuffer; //putting original query back
    
            
        	}catch(JRException e){
        		log.warn("Fail: During loading report"+e.getMessage());
        		MessageDlg.warning(null, "Fail: During loading report"+e.getMessage(), "Report loding fail");
        		
        	}
            
        	
        	   exportReport(jrPrint,exportOption);        
       
          //  jasperPrint.
   
      
    }
    
    /**
     * @param params process jasper report param
     */
    
    public void processExistQuery() throws JRException{
    	newQueryBuffer = new StringBuffer();
        newQueryBuffer.append( originalQueryBuffer.toString());
       // originalQueryBuffer = newQueryBuffer;
         
    	
    }
    
    /** do something before append order by expression**/
    public abstract void preParseNewQuery();
    	
    	//newQueryBuffer.delete(start, end)
    
    public JasperReport processNewQuery() throws JRException{
    	JasperReport report =null;
    	JRDesignQuery newQuery = new JRDesignQuery(); 
    	   if (orderbyExpression !=""){
	            
           	try{		
           		setOrderByExpression();
           	}catch(Exception e){
           		e.printStackTrace();
           	}
           	
           	
           	
           }
        newQuery.setText(newQueryBuffer.toString());
        jasperDesign.setQuery(newQuery); 
        report = JasperCompileManager.compileReport(jasperDesign); 
        log.info("Compile new report using jasper design"+newQueryBuffer.toString());
        return report;

     
    	
    }
    
    public void  removeIgnoreQuerySyntax(String removeExpr){
    	//StringBuffer buffer = new StringBuffer();
		//buffer = controller.getNewQueryBuffer();
	   // buffer.replace(buffer.length() -replaceSyntax.length(), replaceWithSyntax.length(), replaceWithSyntax);
		//System.out.println(buffer.toString());
	    String newQuery = newQueryBuffer.substring(0,newQueryBuffer.length() -removeExpr.length());
	   // System.out.println("sub string "+newQuery);
		//buffer.re
		//buffer = new StringBuffer();
		//buffer.append(newQuery);
	    newQueryBuffer = new StringBuffer();
	    newQueryBuffer.append(newQuery);
	    newQueryBuffer.append("\n");
	  //  buffer.append(replaceWithSyntax);
		log.info("Validing new query... ignore ["+removeExpr.toString()+"]");
	//	log.info("now syntax are"+newQueryBuffer.toString());
		//controller.setNewQueryBuffer(buffer);
    }
    private void setOrderByExpression() throws JRException{
 
            recompileUsingDesing =true;
           newQueryBuffer = new StringBuffer(""); //reset buffer
            newQueryBuffer.append(originalQueryBuffer.toString());
           newQueryBuffer.append(ORDER_BY+orderbyExpression);
  
           log.debug("SET ORDER BY ="+newQueryBuffer.toString());
      
    	
    }
    public void setParameters(java.util.Map  params){
        reportparams =  params;
    }
    public abstract void processParameters(java.util.Map  params);
    
    public abstract void processSortFields(java.util.Map params);
    
    /**
     * @param option
     * 
     */
    public void exportReport(JasperPrint print,int option){
       String title="";
       File file = null;
        switch(option){
            case 0:
                /*used overload viewReport with exitOnClose = false do not close application after close preview*/
                JasperViewer.viewReport(print,false);
                break;
            case 1:
            
                try{
                	file = new File(OUTPUT_DIR+reportSource+ReportOptions.ExportExtension.HTML);
                    reportDest =file.getAbsolutePath();
                    
                    title ="HTML";
                    JasperExportManager.exportReportToHtmlFile(print,reportDest);
                
                }catch(Exception ex){
                    ex.printStackTrace();
                }
              
                break;
                //EXCEL
            case 2:
                try{
                	file = new File(OUTPUT_DIR+reportSource+ReportOptions.ExportExtension.XLS);
                    reportDest =file.getAbsolutePath();
                     title ="XLS";
                    JRXlsExporter exporterXls = new JRXlsExporter ();
                    exporterXls.setParameter(JRExporterParameter.JASPER_PRINT, print);
                    exporterXls.setParameter(JRExporterParameter.OUTPUT_FILE_NAME, 
                                                            reportDest);
                    exporterXls.exportReport();


                }catch(JRException ex){
                    ex.printStackTrace();
                }
                break;
                
            case 3:
                try{
                	file = new File(OUTPUT_DIR+reportSource+ReportOptions.ExportExtension.RTF);
                    reportDest =file.getAbsolutePath();
                    title ="RTF";
                    JRRtfExporter exporter = new JRRtfExporter();
                    exporter.setParameter(JRExporterParameter.JASPER_PRINT, print);
                    exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME, reportDest);
                    exporter.exportReport();    
                }catch(JRException ex){
                    ex.printStackTrace();
                }
                break;
                //PDF
            case 4:
                try{
                  file = new File(OUTPUT_DIR+reportSource+ReportOptions.ExportExtension.PDF);
                  reportDest =file.getAbsolutePath();
                   title ="PDF";
                    JasperExportManager.exportReportToPdfFile(print,reportDest);
                }catch(JRException ex){
                    ex.printStackTrace();
                }
                break;
            default:break;
        }
       
        //preview not shown message dlg
        if (option > 0)
          MessageDlg.info(null,"Export Data to "+reportDest+" Completed", title+" Export Completed");
        if (!reportDest.equals("")){
        	try{
        		java.lang.Runtime.getRuntime().exec("C:\\Program Files\\Microsoft Office\\Office12\\excel.exe "+"\""+reportDest+"\"");
        	}catch(Exception e){
        		MessageDlg.warning(null, e.getMessage(), "No output destination found");
        	}
        }
    }

	/**
	 * @return the sortedFields
	 */
	public JRSortField[] getSortedFields() {
		return jsortedFields;
	}

	/**
	 * @param baseComponent the baseComponent to set
	 */
	public void setBaseComponent(JFrame baseComponent) {
		this.baseComponent = baseComponent;
	}

	public String getOrderbyExpression() {
		return orderbyExpression;
	}

	public void setOrderbyExpression(String orderbyExpression) {
		setRecompileUsingDesing(true);
		this.orderbyExpression = orderbyExpression;
	}

	public StringBuffer getNewQueryBuffer() {
		 return newQueryBuffer;
	}

	public void setNewQueryBuffer(StringBuffer newQueryBuffer) {
		this.newQueryBuffer = newQueryBuffer;
	}

	public boolean isRecompileUsingDesing() {
		return recompileUsingDesing;
	}

	public void setRecompileUsingDesing(boolean flag) {
		this.recompileUsingDesing = flag;
	}

	
    
    
}
