package com.saa.ui.binding;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Vector;

import javax.swing.JDialog;
import javax.swing.JTable;
import javax.swing.event.TableModelEvent;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.TableColumn;
import javax.swing.table.TableColumnModel;

import com.saa.util.MessageDlg;

class JXAbstractTableModel extends AbstractTableModel 
{
 
  public  static JXAbstractColumnData[] m_columns;

  protected SimpleDateFormat m_frm;
  protected Vector m_vector;
 
  protected int     m_sortCol = 0;
  protected boolean m_sortAsc = true;
 
  public JXAbstractTableModel(JXAbstractColumnData[] colData, Vector rowData){
	  m_columns = colData;
	  m_vector = rowData;
	
	  loadData();
  }
  public void loadData(){
	  
  }
  public JXAbstractTableModel() {
    m_frm = new SimpleDateFormat("MM/dd/yyyy");
    m_vector = new Vector();
    setDefaultData();
  }

  public void setDefaultData() {
      }

  public int getRowCount() {
    return m_vector==null ? 0 : m_vector.size(); 
  }

  public int getColumnCount() { 
    return m_columns.length; 
  } 

  public String getColumnName(int column) {
    String str = m_columns[column].m_title;
    if (column==m_sortCol)
      str += m_sortAsc ? ">>" : "<<";
    return str;
  }
 
  public boolean isCellEditable(int nRow, int nCol) {
    return false;
  }

  public Object getValueAt(int nRow, int nCol) {
	  Object o = null;
    if (nRow < 0 || nRow>=getRowCount())
      return "";
    JXAbstractRowData row = (JXAbstractRowData)m_vector.elementAt(nRow);
    o = row.getValue(m_columns[nCol].m_title);
    System.out.println("Row,Col["+nRow+","+nCol+"] value="+o.toString());
    return o ;
   
   // return "";
  }

  public String getTitle() {
   return "Abstract table Model";
  }

  class ColumnListener extends MouseAdapter
  {
    protected JTable m_table;

    public ColumnListener(JTable table) {
      m_table = table;
    }
    
    public void mousePressed(MouseEvent e) {
    	if(e.getSource()==m_table){
    	String columnname=cellValue();
    	System.out.println("Cell Click>>Value=:"+columnname);
    	}
    }

    public String cellValue(){
    	int xvalue=m_table.getSelectedColumn();
    	int yvalue=m_table.getSelectedRow();
    	Object o = m_table.getValueAt(yvalue,xvalue);
    	String value=o.toString();
    	return value;
    	}

    /*sort on click*/
    public void mouseClicked(MouseEvent e) {
      TableColumnModel colModel = m_table.getColumnModel();
      int columnModelIndex = colModel.getColumnIndexAtX(e.getX());
      int modelIndex = colModel.getColumn(columnModelIndex).getModelIndex();
      if (modelIndex < 0)
        return;
      if (m_sortCol==modelIndex)
        m_sortAsc = !m_sortAsc;
      else
        m_sortCol = modelIndex;

      for (int i=0; i < m_columns.length; i++) {
        TableColumn column = colModel.getColumn(i);
        column.setHeaderValue(getColumnName(column.getModelIndex()));    
      }
      m_table.getTableHeader().repaint();  

    //  Collections.sort(m_vector, new 
    	//	  ObjectComparator(modelIndex, m_sortAsc));
      m_table.tableChanged(
        new TableModelEvent(JXAbstractTableModel.this)); 
      m_table.repaint();  
      if (e.getClickCount()==2){
    	  MessageDlg.info(null, "Double Click :"+cellValue(), "Hi");
      }
    }
  }
}


