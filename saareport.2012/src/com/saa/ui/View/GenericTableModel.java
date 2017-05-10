/*
 * TableModel.java
 *
 * Created on April 3, 2007, 6:43 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.View;

/**
 *
 * @author Administrator
 */
import javax.swing.table.AbstractTableModel;
/*Base Table model*/
public class GenericTableModel extends  AbstractTableModel{
    
    /** Creates a new instance of TableModel */
    public GenericTableModel() {
    }
    public Object getValueAt(int row,  int col){
        return getValueAt(row,col).getClass();
    }
    public int getRowCount() { 
       return 0;
    }
    public int getColumnCount(){
       return 0;
    }
   
}
