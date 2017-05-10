package test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Hashtable;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class TestTomcatJNDI {
	
	public TestTomcatJNDI(){
		try{
			
			
		//	### JBossNS properties
			//java.naming.factory.initial=org.jnp.interfaces.NamingContextFactory
			//java.naming.provider.url=jnp://localhost:1099
			//java.naming.factory.url.pkgs=org.jboss.naming:org.jnp.interfaces
		    Context env = (Context) new InitialContext().lookup("java:comp/env");
	         DataSource   dataSource = (DataSource) env.lookup("jdbc/firstview");
			

/*
		      if (ds != null) {
		        Connection conn = ds.getConnection();
		              
		        if(conn != null)  {
		            Statement stmt = conn.createStatement();
		            ResultSet rst = 
		                stmt.executeQuery("  select FORM_CAPTION,HISTORY_CAPTION from    sys_menus   where module_id ='JRX'");
		            if(rst.next()) {
		               System.out.println(rst.getString(1));
		               System.out.println(rst.getString(2));
		            }
		            conn.close();
		        }*/
		    // }
		    }catch(Exception e) {
		      e.printStackTrace();
		    }

		
	}
	public static void main(String [] arg){
		 new TestTomcatJNDI();
	}

}
