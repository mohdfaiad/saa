package com.saa.logger;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.log4j.PropertyConfigurator;




public class Log4jTestApp {
	  private static final Log logger = LogFactory.getLog(Log4jTestApp.class);
	/**
	 * @param args
	 */
	public static void main(String[] args) {
	  
		// TODO Auto-generated method stub
		  PropertyConfigurator.configure("conf/log4j.properties");
		//Prop
		   
		//  Logger logger = MessageLogger.getLogger();
	
	      logger.info("SimpleApp RTM starting up");
	      logger.warn("SimpleApp RTM starting up");
	       logger.fatal("SimpleApp RTM starting up");
	    

	}

}
