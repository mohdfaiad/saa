package com.saa.ui.binding.test;

import java.awt.Color;
import java.awt.Component;
import javax.swing.*;
import javax.swing.table.*;
import java.awt.event.*;
 
public class TableHeaderDemo {
    
    public void createAndShowUI() {
        JFrame frame = new JFrame("Click Table Header to change text");
        String[] columnName = {"CheckBox Column", "Data Column"};
        Object[][] data = {{"Data 1", "Data 2"},
        {"Data 3", "Data 4"}, {"Data 5", "Data 6"}};
        
        final JTable myTable = new JTable(data, columnName);
        
        myTable.getTableHeader().setDefaultRenderer(new MyRenderer());
        myTable.getTableHeader().addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(MouseEvent e) {
                int col = myTable.getTableHeader().columnAtPoint(e.getPoint());
                
                String str = javax.swing.JOptionPane.showInputDialog("Enter a text: ");
                myTable.getColumnModel().getColumn(col).setHeaderRenderer(new MyRenderer(str));
                
                myTable.getTableHeader().revalidate();
                myTable.getTableHeader().repaint();
            }
        });
        
        JScrollPane scrollPane = new JScrollPane(myTable);
        
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setResizable(false);
        frame.getContentPane().add(scrollPane);
        frame.pack();
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }
    
    class MyRenderer implements TableCellRenderer {
        JTextField text = new JTextField();
        
        MyRenderer(String str) {
            text.setText(str);
        }
        
        MyRenderer() {
        }
        
        public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected,
                boolean hasFocus, int row, int column) {
            text.setBorder(BorderFactory.createRaisedBevelBorder());
            text.setBackground(Color.BLUE);
            text.setForeground(Color.WHITE);
            text.setHorizontalAlignment(JTextField.CENTER);
            return text;
        }
        
    }
    
    public static void main(String[] args){
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                new TableHeaderDemo().createAndShowUI();
            }
        });
    }
}

