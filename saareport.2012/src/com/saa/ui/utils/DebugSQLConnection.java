/*
 * DebugSQLConnection.java
 * 
 * Created on May 10, 2008, 11:16:39 AM
 * 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.saa.ui.utils;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Administrator
 */
public class DebugSQLConnection {

    public DebugSQLConnection() {
    }
    
    public static Connection getConnection(){
           Connection con = null;
        try {
            Class.forName("org.firebirdsql.jdbc.FBDriver");
            con = DriverManager.getConnection(
                    "jdbc:firebirdsql:localhost/3050:c:/project/saa/database/saaBKKRestore.gdb?sql_dialect=3",
                    "sysdba",
                    "masterkey" );
            System.out.println("Creating connection to localhost.... ");
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("Create Connection Error :"+e.getMessage());
        }
      
      return con;
        
    }

}
