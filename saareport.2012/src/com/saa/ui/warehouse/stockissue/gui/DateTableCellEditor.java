/*
 * DateTableCellEditor.java
 * 
 * Created on May 10, 2008, 3:13:05 PM
 * 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.saa.ui.warehouse.stockissue.gui;

import com.saa.ui.date.DateField;
import java.awt.Component;
import java.util.EventObject;
import javax.swing.JTable;
import javax.swing.event.CellEditorListener;
import javax.swing.event.EventListenerList;
import javax.swing.table.TableCellEditor;

/**
 *
 * @author Administrator
 */
public class DateTableCellEditor extends DateField implements TableCellEditor {
    
    
    protected EventListenerList listenerList = new EventListenerList();

    public DateTableCellEditor() {
    }
     public void cancelCellEditing() {
     // fireEditingCanceled();
    } 

    public boolean stopCellEditing() {
     // fireEditingStopped();
      return true;
    } 

    public boolean isCellEditable(EventObject event) {
      return true;
    } 

    public boolean shouldSelectCell(EventObject event) {
      return true;
    } 

    public Object getCellEditorValue() {
    //  return new Boolean(getSelectedIndex() == 0 ? true : false);
        return getDate();
    } 
     public void addCellEditorListener(CellEditorListener listener) {
      listenerList.add(CellEditorListener.class, listener);
    } 

    public void removeCellEditorListener(CellEditorListener listener) {
      listenerList.remove(CellEditorListener.class, listener);
    } 
    
    public Component getTableCellEditorComponent(JTable table, Object
value, 
            boolean isSelected, int row, int column) {
   //   boolean isMale = ((Boolean) value).booleanValue();
     // setSelectedIndex(isMale ? 0 : 1);
      return this;
    } 

}
