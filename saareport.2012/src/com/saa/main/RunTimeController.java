package com.saa.main;

/**
 *
 * @author Administrator
 */
import com.saa.control.DBController;
import com.saa.jdbc.*;
import com.saa.util.*;
import com.saa.logger.AppLogger;

        

public class RunTimeController {
    private static RunTimeController runtimeControl;
    private static AbstractDBManager dbmgr = null;
    private static SystemConfig config = new SystemConfig("system");
    private static AppLogger logger = AppLogger.getLogger();
    private static DBController dbctrl = null;
    private static String loggedUser;
    /** Creates a new instance of RunTimeController */
    private RunTimeController() {
    }
    
    public static RunTimeController getRuntimeController(){
        if (runtimeControl == null){
            runtimeControl = new RunTimeController();
            return runtimeControl;
        }
        return runtimeControl;
    }
    
    public static void setDBManager(AbstractDBManager mgr){
        dbmgr = mgr;
    }
    public static AbstractDBManager getDBManager(){
        return dbmgr;
    }
    public void destroy(){
       dbmgr.destroy(); 
    }
    public void setgetLoggedUser(String uid){
    	loggedUser = uid;
    }
    public static String getLoggedUser(){
    	return loggedUser;
    }
    
}
