/*
 * DBTableModel.java
 *
 * Created on April 3, 2007, 6:54 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.View;

/**
 *
 * @author Administrator
 */

    
import javax.sql.RowSetEvent;
import javax.sql.RowSetListener;
import javax.swing.JOptionPane;
import javax.swing.table.*;

import com.saa.logger.AppLogger;

import java.sql.*;
import java.util.*;


public class DBTableModel extends GenericTableModel  implements RowSetListener  {
	
	AppLogger log = AppLogger.getLogger();
    
    public void cursorMoved(RowSetEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	public void rowChanged(RowSetEvent arg0) {
		// TODO Auto-generated method stub
		//JOptionPane.showMessageDialog("xxxx", a)
		log.warning("xxxx:row table changed"+arg0.toString());
		
	}
	public void rowSetChanged(RowSetEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	private ResultSet rs;
    private Vector data;
    private String tablenm;
    private Connection conn;
    private int numRows;
    private int numColumns;
    private Vector columnTypes;
    private Vector columnNames;
    
    /** Creates a new instance of DBTableModel */
    public DBTableModel(Connection c) {
        conn = c;
    }
    public void retrieve(String selString)
    {
    try {
        Statement stm = conn.createStatement();
        rs = stm.executeQuery(selString);
        numColumns = rs.getMetaData().getColumnCount();
        numRows = 0;
        columnNames = new Vector();
        columnTypes = new Vector();
        data = new Vector();
        for (int i = 0; i < numColumns; i++)
        {
            columnNames.addElement(rs.getMetaData().getColumnLabel(i+1));
            int datatype = rs.getMetaData().getColumnType(i+1);
            switch (datatype)
            {
            case java.sql.Types.VARCHAR:
            case java.sql.Types.CHAR:
            columnTypes.addElement(String.class);
            break;
            case java.sql.Types.INTEGER:
            case java.sql.Types.NUMERIC:
            columnTypes.addElement(Integer.class);
            break;
            case java.sql.Types.DATE:
            columnTypes.addElement(java.sql.Date.class);
            break;
            case java.sql.Types.TIMESTAMP:
            columnTypes.addElement(java.sql.Timestamp.class);
            break;
            }
        }
        while (rs.next())
        {
            Vector rowData = new Vector();
            for (int i = 0; i < numColumns; i++)
            rowData.addElement(rs.getObject(i+1));
            data.addElement(rowData);
            numRows++;
        }
    }
    catch (java.sql.SQLException e)
    {
    	log.warn("Loding table error"+e.getMessage());
         return;
    }
    }

    public String getColumnName(int col)
    {
        String retVal;
        retVal = (String)columnNames.elementAt(col);
        if (retVal == null)
        retVal = "";
        return retVal;
    }

    public Class getColumnClass(int c)
    {
        Class retVal;
        retVal = (Class) columnTypes.elementAt(c);
        if (retVal == null)
        retVal = Object.class;
        return retVal;
    }


    public int getColumnCount()
    {
       return numColumns;
    }

    public Object getValueAt(int parm1, int parm2)
    {
      return ((Vector) data.elementAt(parm1)).elementAt(parm2);
    }

    public int getRowCount()
    {
      return numRows;
    }
}

    
    
    
    
    

