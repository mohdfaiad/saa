package com.saa.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Iterator;

public class DataManagerTest {

	/**
	 * @param args
	 */
	private static Connection con;
	public static void main(String[] args) {
		  IcGroupItemSet set = null;
	    try {
            Class.forName("org.firebirdsql.jdbc.FBDriver");
            con = DriverManager.getConnection(
                    "jdbc:firebirdsql:localhost/3050:c:/project/saa/database/saa.gdb?sql_dialect=3",
                    "sysdba",
                    "masterkey" );
           // logger.info("Created Connection to "+dbUrl);
        }catch(Exception e){
            e.printStackTrace();
          //  logger.warning("Create Connection Error :"+e.getMessage());
        }
        try{
        	set = IcGroupDataManager.retreiveAll(con);
        }catch(SQLException e){
        	e.printStackTrace();
        }
        Iterator< IcGroupItem> it = set.iterator();
        while(it.hasNext()){
        	IcGroupItem item = it.next();
        	System.out.println(item.getGroupID()+"\t"+item.getDescription());
        }
		// TODO Auto-generated method stub

	}

}
