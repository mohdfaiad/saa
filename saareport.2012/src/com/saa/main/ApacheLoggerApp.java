package com.saa.main;

import org.apache.commons.logging.impl.Log4jFactory;
import org.firebirdsql.logging.Log4jLogger;
import org.jfree.util.Log;

import common.Logger;



public class ApacheLoggerApp {

	/**
	 * @param args
	 */
	
	static Logger logger = Logger.getLogger(ApacheLoggerApp.class);
	static Log lj = Log.getInstance();
	
	public static void main(String[] args) {
		String code =null;
		
		// TODO Auto-generated method stub
	    logger.debug("Hello");
	    logger.warn("Hello");
	    logger.fatal("Error");
	    lj.error("Log jfree error");
	    System.out.println("/"+((code==null)?"":"123")+"xx");
	   
		
		

	}

}
