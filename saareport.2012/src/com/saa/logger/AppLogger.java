/*
 * AppLogger.java
 *
 * Created on April 3, 2007, 3:14 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.logger;

/**
 *
 * @author Administrator
 */

import java.io.File;
import java.io.IOException;
import com.saa.util.SystemConfig;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.log4j.PropertyConfigurator;

public class AppLogger {
	    /*log file name*/
	    private static AppLogger servicelogger;
	    private static Log logger= null; //implement log4j
 	 // private static Logger logger = common.Logger.getLogger(AppLogger.class);
	    private final static String fileName = "/logs/service.log";
	    
	  //  private static String callerClass;
       // private Level level = Level.ALL;
	    /*avoid new operator*/
	 
	    
	    private AppLogger(String className){
	        PropertyConfigurator.configure("conf/log4j.properties");
	        logger  = LogFactory.getLog(className);
	        logger.info("Created log "+SystemConfig.getWorkingDirectory()+fileName);
	    
	    }
	    
	    
	  
	    /*singleton creator */
	    public static AppLogger getLogger(){
	    	if (servicelogger == null){
	    		//servicelogger = new AppLogger();
	    		return servicelogger;
	    	}
	    
	    	return servicelogger;
	    }
	    
	   
	    
	    
	    public static AppLogger getLogger(String className){
	    	/***/ 
	    //callerClass = className;

	    		servicelogger = new AppLogger(className);
	    		return servicelogger;
	    
	    }
	    /** log a severe message */
	    public void severe(String msg){
	    	logger.fatal(msg);
	    }

	    /** log a warning message */
	    public void warning(String msg){
	    	logger.warn(msg);
	    }
	    public void warn(String msg){
	    	logger.warn(msg);
	    }

	    /** log a info message */
	    public void info(String msg){
	    	logger.info(msg);
	    }

	    /** log a fine message */
		public void fine(String msg){
			//
	    }

	    /** log a finer message */
		public void finer(String msg){
		
	    }

	    /** log a finest message */
		public void finest(String msg){
	
	    }

	    /** log a config message */
		public void config(String msg){
		
	    }

	 

	  
}
