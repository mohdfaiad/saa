/*
 * AbstractDBManager.java
 *
 * Created on April 3, 2007, 3:22 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.jdbc;

/**
 *
 * @author Administrator
 */

import com.saa.data.ProcessStatus;
import com.saa.logger.AppLogger;
import com.saa.util.MessageDlg;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JFrame;
public class AbstractDBManager {
    
    
    private ResultSetMetaData metaData;
    /** Creates a new instance of AbstractDBManager */
    protected String dbDriver;
    protected String dbUrl;
    protected String dbUser;
    protected String dbPassword;
    
    /*logger handler*/
    private AppLogger logger = AppLogger.getLogger();
    /*current error message for UI Could be able to get and display on UI Component*/
    private String errorMessage = "";
    /*public assessibility*/
    private ArrayList datas  = new ArrayList();
    public String errorMessage(){
        return errorMessage;
    }
    
    /*connection instance*/
    Connection connection;
    /*statement query*/
    Statement statement;
    public AbstractDBManager(String drivers , String url , String dbuser , String dbpassword){
        this.dbDriver = drivers;
        this.dbUrl    = url;
        this.dbUser = dbuser;
        this.dbPassword = dbpassword;
        logger.info("Initilize connection..");
        createConnection();
    }
    public void destroy(){
        logger.info("Destroy abstract db manager");
        try{
            connection.close();
        }catch(Exception e){
            logger.warning("desconnection from database:");
        }
    }
    private void createConnection(){
        
        try {
            Class.forName(dbDriver);
            connection = DriverManager.getConnection(
                    dbUrl,
                    dbUser,
                    dbPassword );
            logger.info("Created Connection to "+dbUrl);
        }catch(Exception e){
            e.printStackTrace();
          //  logger.warning("Create Connection Error :"+e.getMessage());
            MessageDlg.warning(null,"Create Connection Error :"+e.getMessage(),"");
            
        }
        
    }
    public Connection getConnection(){
        /*if accidentally connection was't created since constructor then recreate*/
        if (connection == null){
            logger.warning("Re-create connection:")  ;
            createConnection();
        }
        return connection;
    }
    
    
    /*test query string it depend on db plateform*/
    
    public boolean dbPing(String dbCmd){
        try {
            Statement stmt = connection.createStatement();
            try {
                logger.info("dbping:send command"+dbCmd);
                ResultSet rs = stmt.executeQuery( dbCmd );
                if (rs != null){
                    logger.info("dbPing:Connection alive");
                    //     while ( rs.next() ) {
                    //     int numColumns = rs.getMetaData().getColumnCount();
                    //   for ( int i = 1 ; i <= numColumns ; i++ ) {
                    //Column numbers start at 1.
                    //Also there are many methods on the result set to return
                    // the column as a particular type. Refer to the Sun documentation
                    // for the list of valid conversions.
                    //     System.out.println( "COLUMN " + i + " = " + rs.getObject(i) );
                    //  }
                    // }
                    
                    return true;
                }else{
                    logger.severe("Loss Connection to database please retry");
                    return false;
                }
            } finally {
                //It's important to close the statement when you are done with it
                stmt.close();
            }
        }catch(SQLException e){
            logger.warning("DBPing: Could not execute command "+dbCmd);
        }
        return false;
    }
    
    public String getDbDriver() {
        return dbDriver;
    }
    
    public ResultSet executeQuery(String query)throws SQLException{
        ResultSet rs ;
        try {
            Statement stmt = connection.createStatement();
            try {
                //    logger.info("dbping:send command"+query);
                //donot declare instance of result set here be cause when it out
                //of scope of try catch then it will be null
                rs = stmt.executeQuery( query );
                logger.info("exec sql :"+query);
                
                if (rs != null){
                    //  stmt.close();
                    return rs;
                }else{
                    logger.severe("Loss Connection to database please retry");
                }
            } finally {
                //It's important to close the statement when you are done with it
                //    stmt.close();
            }
        }catch(SQLException e){
            logger.warning("Could not execute command "+query+" MESSAGE"+e.getMessage());
        }
        
        return null;
    }
    
    
    
    public int executeQueryCount(String query)throws SQLException{
        int row =0;
        ResultSet rs;
        try {
            Statement stmt = connection.createStatement();
            try {
                //    logger.info("dbping:send command"+query);
                rs = stmt.executeQuery( query );
                logger.info("exec sql :"+query);
                if (rs != null){
                    datas.clear();
                    while(rs.next()){
                        row = rs.getInt(1);
                    }
                }else{
                    logger.severe("Loss Connection to database please retry");
                }
            } finally {
                //It's important to close the statement when you are done with it
                //    stmt.close();
            }
        }catch(SQLException e){
            logger.warning("Could not execute command "+query+" MESSAGE"+e.getMessage());
        }
        
        return row;
    }
    public ResultSetMetaData getMetaData(){
        return metaData;
    }
    
    public String executeUpdate(String query)throws SQLException{
        errorMessage =ProcessStatus.SUCCESS;
        try{
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(query);
            logger.info("ExecSQL update:"+query);
           // connection.commit();
        }catch(SQLException e){
            errorMessage = e.getMessage();
            logger.warning("ExecSQL update:"+query+" error :"+e.getMessage());
            MessageDlg.info(null, errorMessage, "SQL execute error");
        }
        return errorMessage;
    }
    
    public String execute(String query)throws SQLException{
        errorMessage =ProcessStatus.SUCCESS;
        try{
            logger.info("Prepare query statement:"+query);
            Statement stmt = connection.createStatement();
            logger.info("Start Executing......:"+query);
            stmt.execute(query);
            logger.info("Ended Execute......:"+query);
           
        }catch(SQLException e){
            errorMessage = e.getMessage();
            logger.warning("ExecSQL update:"+query+" error :"+e.getMessage());
            MessageDlg.info(null, errorMessage, "SQL execute error");
        }
        return errorMessage;
    }
    
    
    
    
    
    
}
