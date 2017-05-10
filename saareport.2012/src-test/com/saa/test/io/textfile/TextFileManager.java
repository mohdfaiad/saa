package test.io.textfile;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class TextFileManager {
	/** Column Name this should related with test file data**/
	private static String[] columns ={"Last Name","First name","Address","City","State","Zip Code"};
	/** text delimeter**/
	private static String DELIMETER = "\\|";
	public static void main(String[] args) 
	    {
		   
	        ArrayList bob = loadFile(args[0]);
	        String[] record;
	        /**print Record no title	         * */
	        System.out.print("\tRecNo#"); 
	        for (int i=0; i< columns.length;i++){
	        	System.out.print("\t" + columns[i]);
	        }
	        //print new line
	        System.out.println();
	        System.out.println("\t#########################################################################");
	        for (int i=0; i<bob.size(); i++){
	        	//read data record
	        	//
	        	record = bob.get(i).toString().split(DELIMETER);
	        	if (record.length>0){
	        		System.out.print("\t#"+(i+1));
	        		for (int j=0; j<record.length;j++){
	        			//validate attribute data here
	        			//case field #1
	        			System.out.print("\t"+record[j]);	
	        		}
	        
	        	}
	        	System.out.println();
	           // System.out.println(i+1 + ":\t" + bob.get(i));
	        }
	        System.out.println("\t#########################################################################");
	    }

	    public static ArrayList loadFile(String fileName)
	    {
	        if ((fileName == null) || (fileName == ""))
	            throw new IllegalArgumentException();
	        
	        String line;
	        ArrayList file = new ArrayList();

	        try
	        {    
	            BufferedReader in = new BufferedReader(new FileReader(fileName));

	            if (!in.ready())
	                throw new IOException();

	            while ((line = in.readLine()) != null) 
	                file.add(line);

	            in.close();
	        }
	        catch (IOException e)
	        {
	            System.out.println(e);
	            return null;
	        }

	        return file;
	    }



}
