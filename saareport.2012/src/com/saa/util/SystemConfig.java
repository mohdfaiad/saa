/*
 * SystemConfig.java
 *
 * Created on April 3, 2007, 2:34 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.Properties;

public class SystemConfig implements Serializable {
    private static String SYSTEM_ROOT_DIR = ".";
    private static SystemConfig config = null;
    /*avoid compile warning*/
    static final long serialVersionUID = 0;
    /*standard java file properties*/
    private static final String fileSuffix =".properties";
    /*absolute path indecate cofiguration*/
    private String fileName = "system"+fileSuffix;
    private static String workingDirectory = "";
    
    File configFile;
    
    public static SystemConfig getServiceConfig(){
        if (config == null){
            config = new SystemConfig();
            
        }else{
            return config;
        }
        return config;
    }
    //default constructor
    
    private SystemConfig(){
        try {
            //we can actually apply unix style path
            configFile =  new File("../conf",fileName);
            
        } catch ( Exception e ) {
            e.printStackTrace();
        }
        
    }
    public  SystemConfig(File configFile){
        this.configFile =  configFile;
    }
    
    public  SystemConfig(String name, File dir){
        String fileName = name + ".properties";
        configFile =  new File(dir, fileName);
    }
    /*currently user for Siam Anglo Alloy*/
    public  SystemConfig(String name){
        String fileName = name + ".properties";
        //create root dir
        try{
            File f = new File(SYSTEM_ROOT_DIR);
            workingDirectory = f.getCanonicalPath();
            System.out.println("Setting root directory =["+workingDirectory+"]");
            
        }catch(Exception ex){
            
        }
        try {
            //getback to root/data
            configFile =  new File(workingDirectory+"/conf",fileName);
        } catch ( Exception e ) {
            e.printStackTrace();
        }
    }
    /*return runtime working directory*/
    public static String getWorkingDirectory(){
        try{
        File f = new File(SYSTEM_ROOT_DIR);
        workingDirectory = f.getCanonicalPath();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return workingDirectory;
    }
    
    private Properties configuration = new Properties();
    
    synchronized public String getProperty(String key, String defaultValue){
        String prop = getProperty(key);
        if (prop == null){
            prop = defaultValue;
        }
        return prop;
    }
    
    synchronized public String getProperty(String key){
        String prop;
        open();
        prop = configuration.getProperty(key);
        return prop;
    }
    
    synchronized public int getIntProperty(String key, int defaultValue){
        String prop = getProperty(key);
        if (prop != null){
            try {
                defaultValue = new Integer(prop).intValue();
            } catch ( Exception e ) {
                //MessageLogger.getLogger().info("Using default value '"+ defaultValue + "' for key '" + key + "'");
            }
        }
        return defaultValue;
    }
    
    synchronized public long getLongProperty(String key, long defaultValue){
        String prop = getProperty(key);
        if (prop != null){
            try {
                defaultValue = new Long(prop).intValue();
            } catch ( Exception e ) {
                //MessageLogger.getLogger().info("Using default value '"+ defaultValue + "' for key '" + key + "'");
            }
        }
        return defaultValue;
    }
    
    synchronized public boolean getBooleanProperty(String key, boolean defaultValue){
        String prop = getProperty(key);
        if (prop != null){
            try {
                defaultValue = new Boolean(prop).booleanValue();
            } catch ( Exception e ) {
                //MessageLogger.getLogger().info("Using default value '"+ defaultValue + "' for key '" + key + "'");
            }
        }
        return defaultValue;
    }
    
    
    synchronized public void setProperty(String key, String value){
        open();
        if (value == null){
            configuration.remove(key);
        }else{
            configuration.put(key, value);
        }
        close();
    }
    
    synchronized public long delete(){
        long len = configFile.length();
        if (!configFile.delete()){
            len = 0;
        }
        return len;
    }
    
    /** Open the configuration*/
    void open(){
        try {
            InputStream inStream = new FileInputStream(configFile);
            configuration.load(inStream);
            inStream.close();
        } catch ( Exception e ) {
            //com.livewave.util.logging.MessageLogger.getLogger().log(Level.FINE, "Exception in Config.open()", e);
        }
    }
    
    /** close the configuration*/
    void close(){
        try {
            OutputStream outStream = new FileOutputStream(configFile);
            configuration.store(outStream, "Configuration");
            outStream.close();
        } catch ( Exception e ) {
            //com.livewave.util.logging.MessageLogger.getLogger().log(Level.FINE, "Exception in Config.close()", e);
        }
    }
    
    
    
}
