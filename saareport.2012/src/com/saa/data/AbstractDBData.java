/*
 * AbstractDBData.java
 *
 * Created on April 9, 2007, 5:13 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.data;

/**
 *
 * @author Administrator
 */
import com.saa.logger.AppLogger;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.Vector;
public class AbstractDBData implements InterfaceData {
    /*default application logger*/
    final protected AppLogger logger =AppLogger.getLogger();
    /**
     * Creates a new instance of AbstractDBData
     */
    private String reportID;
    private ResultSet resultSet;
    /*contain column metadata*/
    private ResultSetMetaData resultMeta;
    /*Column*/
    protected Vector columnsdata = new Vector();
    protected Vector rowsdata = new Vector();
    
    private int columnCount=0;
    
    private AbstractDBData() {
        
    }
    
    public  AbstractDBData(ResultSet rs){
        try {
            this.resultSet = rs;
            this.resultMeta = rs.getMetaData();
            processData();
        }catch(Exception e){
            logger.warning(e.getMessage());
        }
    }
    /*append rowsdata and columnsata*/
    public void processData(){
        processColumns(resultMeta);
        processRows(resultSet);
    }
    /*append columns into vector*/
    public void processColumns(ResultSetMetaData md){
        try {
            columnCount = md.getColumnCount();
            for(int i=1; i <= columnCount;i++){
                columnsdata.addElement(md.getColumnName(i));
            }
        }catch(Exception e){
            logger.warning(e.getMessage());
        }
    }
    /*addpend rows data into vector for lately use for jtree or any UI*/
    public void processRows(ResultSet rs){
        try {
            while(rs.next()){
                Vector elements = new Vector();
                for (int i =1; i<=columnCount;i++){
                    
                    elements.addElement(rs.getObject(i));
                }
                rowsdata.add(elements);
            }
        }catch(Exception e){
            logger.warning(e.getMessage());
        }
    }
    public String getReportID(){
        return reportID;
    }
    
    public ResultSet getResultSet(){
        return resultSet;
    }
    
    public Vector getColumnsData(){
        return columnsdata;
    }
    public Vector getRowsData(){
        return rowsdata;
    }
    
    
}
