/*
 * TableView.java
 *
 * Created on April 3, 2007, 6:09 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.View;
/*this interface provoide mouse event */
import java.util.ArrayList;
import javax.swing.event.ListSelectionListener; 
import javax.swing.event.ListSelectionEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.TableModel;
import javax.swing.ListSelectionModel;
import javax.swing.JTable;
import javax.swing.JFrame;
import javax.swing.JScrollPane;
import java.awt.Dimension;
import java.util.Vector;

        
public class TableView  implements ListSelectionListener {
    
    
    private JTable aTable;
    /*title*/
    private Vector names = new Vector();
    private Vector data = new Vector(); 
   
    /** Creates a new instance of TableView */
    public TableView() {
       
//         JFrame frame = new JFrame("Table");
//         frame.addWindowListener(new WindowAdapter() {
//         public void windowClosing(WindowEvent e) {System.exit(0);}});
//         aTable = new JTable(new GenericTableModel()) {
//         ListSelectionModel listMod =  aTable.getSelectionModel();
//         listMod.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
//         listMod.addListSelectionListener(this);
//         JScrollPane scrollpane = new JScrollPane(aTable);
//        
//           scrollpane.setPreferredSize(new Dimension(300, 300));
//           
//           frame.getContentPane().add(scrollpane);
//           
//           frame.pack();
//           
//           frame.setVisible(true);
//          /*support row double click*/
//            aTable.addMouseListener(new MouseAdapter(){
//            public void mouseClicked(MouseEvent e){
//            if (e.getClickCount() == 2){
//                 System.out.println(" double click" );
//                 }
//            }
//         } );
    }
    public void valueChanged(ListSelectionEvent e) {
       int maxRows;
       int[] selRows;
       Object value;
        if (!e.getValueIsAdjusting()) {        
        selRows = aTable.getSelectedRows();

         if (selRows.length > 0) {
            for (int i= 0; i < 3 ; i++) {
              // get Table data
              TableModel tm = aTable.getModel();
              value = tm.getValueAt(selRows[0],i);
              System.out.println("Selection : " + value );
              }
            System.out.println();
            }
         }
    }
    
}
