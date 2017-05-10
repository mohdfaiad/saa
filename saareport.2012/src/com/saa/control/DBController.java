/*
 * DBController.java
 *
 * Created on April 10, 2007, 2:15 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.control;

import com.saa.jdbc.AbstractDBManager;
import com.saa.logger.AppLogger;

/**
 *
 * @author Administrator
 */
public class DBController implements ControllerInterface{
    
    /** Creates a new instance of DBController */
    //create internal logger
    private static AppLogger logger = AppLogger.getLogger(DBController.class.getName());
    
    private static DBController dbControler;
    
    private  AbstractDBManager dbm;
   
    private  String dbUrl        = "";
    private  String dbDriver     = "";
    private  String dbUser       = "sysdba";
    private  String dbPwd        = "masterkey";
    private static boolean isConnected = false;
    
    
    public void init(){
    }
    public void destroy(){
        
    }
    
    private DBController(String drivers , String url , String dbuser , String dbpassword) {
        this.dbDriver   =   drivers;
        this.dbUrl      =   url;
        if (!dbUser.equals("") & !dbpassword.equals("")){
            this.dbUser     =   dbuser;
            this.dbPwd      =   dbpassword;
        }
        process();
    }
   
    public static DBController createDBController(String drivers , String url , String dbuser , String dbpassword) {
        if (dbControler == null){
            dbControler = new DBController(drivers , url , dbuser , dbpassword);
            return dbControler;
        }
        return dbControler;
    }
    public void process(){
        createDBManager(dbDriver , dbUrl ,dbUser , dbPwd);
        logger.info("Created DBManager");
        
    }
    private void createDBManager(String drivers , String url , String dbuser , String dbpassword){
        if (dbm == null){
            dbm = new AbstractDBManager(drivers,url,dbuser,dbpassword);
        }
    }
    
    public String getDbDriver() {
        return dbDriver;
    }
    /*return single instance of dbmanager*/
    public AbstractDBManager getDBManager(){
        return dbm;
    }
}
