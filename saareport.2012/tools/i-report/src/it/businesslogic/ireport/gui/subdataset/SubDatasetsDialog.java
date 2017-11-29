/*
 * Copyright (C) 2005 - 2007 JasperSoft Corporation.  All rights reserved. 
 * http://www.jaspersoft.com.
 *
 * Unless you have purchased a commercial license agreement from JasperSoft,
 * the following license terms apply:
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as published by
 * the Free Software Foundation.
 *
 * This program is distributed WITHOUT ANY WARRANTY; and without the
 * implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, see http://www.gnu.org/licenses/gpl.txt
 * or write to:
 *
 * Free Software Foundation, Inc.,
 * 59 Temple Place - Suite 330,
 * Boston, MA  USA  02111-1307
 *
 *
 *
 *
 * SubDatasetsDialog.java
 * 
 * Created on 7 maggio 2003, 23.43
 *
 */

package it.businesslogic.ireport.gui.subdataset;

import javax.swing.table.*;
import javax.swing.*;
import javax.swing.event.*;
import it.businesslogic.ireport.*;
import it.businesslogic.ireport.gui.ConnectionDialog;
import it.businesslogic.ireport.gui.MainFrame;
import it.businesslogic.ireport.gui.ValuesDialog;
import it.businesslogic.ireport.util.Misc;
import it.businesslogic.ireport.gui.event.ReportSubDatasetChangedEvent;

import java.util.*;
import it.businesslogic.ireport.util.I18n;

/**
 *
 * @author  Administrator
 */
public class SubDatasetsDialog extends javax.swing.JDialog {
    
    /** Creates new form ValuesDialog */
    public SubDatasetsDialog(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        applyI18n();
        this.setSize(490, 250);
        //DefaultTableColumnModel dtcm = (DefaultTableColumnModel)jTableParameters.getColumnModel();
        //DefaultTableCellRenderer tcr = (DefaultTableCellRenderer)dtcm.getColumn(0).getHeaderRenderer();
        
        //new DefaultTableCellRenderer();
        //tcr.setFont(jTableParameters.getFont());
        //tcr.setBackground(this.getBackground());
        //tcr.setBorder( new javax.swing.border.BevelBorder( javax.swing.border.BevelBorder.RAISED));
        //dtcm.getColumn(0).setHeaderRenderer(tcr);
 
        DefaultListSelectionModel dlsm =  (DefaultListSelectionModel)this.jTableParameters.getSelectionModel();
        dlsm.addListSelectionListener(new javax.swing.event.ListSelectionListener() {
            public void valueChanged(ListSelectionEvent e)  {
                jTableParametersListSelectionValueChanged(e);
            }
        });
                      
        // Open in center...
        it.businesslogic.ireport.util.Misc.centerFrame(this);
        
        DefaultTableModel dtm = (DefaultTableModel)jTableParameters.getModel();
            
        Enumeration e = it.businesslogic.ireport.gui.MainFrame.getMainInstance().getActiveReportFrame().getReport().getSubDatasets().elements();
        while (e.hasMoreElements())
        {
            SubDataset dataset = (SubDataset)e.nextElement();
            dtm.addRow( new Object[]{dataset});
        }
        
        javax.swing.KeyStroke escape =  javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_ESCAPE, 0, false);
            javax.swing.Action escapeAction = new javax.swing.AbstractAction() {
                public void actionPerformed(java.awt.event.ActionEvent e) {
                    setVisible(false);
                }
            };

            getRootPane().getInputMap(javax.swing.JComponent.WHEN_IN_FOCUSED_WINDOW).put(escape, "ESCAPE");
            getRootPane().getActionMap().put("ESCAPE", escapeAction);

        
    }
    
    
    public void jTableParametersListSelectionValueChanged(javax.swing.event.ListSelectionEvent e)
    {
         if (this.jTableParameters.getSelectedRowCount() > 0) {
            this.jButtonModify.setEnabled(true);
            this.jButtonDelete.setEnabled(true);
        }
        else {
            this.jButtonModify.setEnabled(false);
            this.jButtonDelete.setEnabled(false);
        }
    }
    
        
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanelParameters = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTableParameters = new javax.swing.JTable();
        jPanelButtons = new javax.swing.JPanel();
        jButtonNew = new javax.swing.JButton();
        jButtonModify = new javax.swing.JButton();
        jButtonDelete = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("SubDatasets");
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosing(java.awt.event.WindowEvent evt) {
                closeDialog(evt);
            }
        });

        jPanelParameters.setLayout(new java.awt.BorderLayout(2, 2));

        jScrollPane1.setBackground(new java.awt.Color(255, 255, 255));
        jTableParameters.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Name"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jTableParameters.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTableParametersMouseClicked(evt);
            }
        });

        jScrollPane1.setViewportView(jTableParameters);

        jPanelParameters.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanelButtons.setLayout(new java.awt.GridBagLayout());

        jPanelButtons.setMinimumSize(new java.awt.Dimension(100, 10));
        jPanelButtons.setPreferredSize(new java.awt.Dimension(100, 10));
        jButtonNew.setText("New");
        jButtonNew.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonNewActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(3, 3, 3, 3);
        jPanelButtons.add(jButtonNew, gridBagConstraints);

        jButtonModify.setText("Modify");
        jButtonModify.setEnabled(false);
        jButtonModify.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonModifyActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(0, 3, 5, 3);
        jPanelButtons.add(jButtonModify, gridBagConstraints);

        jButtonDelete.setText("Delete");
        jButtonDelete.setEnabled(false);
        jButtonDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonDeleteActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.weighty = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(0, 3, 5, 3);
        jPanelButtons.add(jButtonDelete, gridBagConstraints);

        jPanelParameters.add(jPanelButtons, java.awt.BorderLayout.EAST);

        getContentPane().add(jPanelParameters, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTableParametersMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTableParametersMouseClicked
  if (evt.getClickCount() == 2 && evt.getButton() == evt.BUTTON1)
        {
            jButtonModifyActionPerformed(null);
        }
    }//GEN-LAST:event_jTableParametersMouseClicked

    private void jButtonDeleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonDeleteActionPerformed
        // Get the selected connection...
        if (jTableParameters.getSelectedRowCount() > 0)
        {
            SubDataset irc = null;
            try {
                irc = (SubDataset)jTableParameters.getModel().getValueAt(jTableParameters.getSelectedRow(), 0);
            } catch (Exception ex) { return; }
                       
            
            if (javax.swing.JOptionPane.showConfirmDialog(this,
                    I18n.getString("messages.subDatasetsDialog.removingSubDataset","Do you want really remove this subdataset?"),
                    "",
                    javax.swing.JOptionPane.YES_NO_CANCEL_OPTION,
                    javax.swing.JOptionPane.QUESTION_MESSAGE) == javax.swing.JOptionPane.YES_OPTION)
            {   
                MainFrame.getMainInstance().getActiveReportFrame().getReport().removeSubDataset( irc );
                
                ((DefaultTableModel)jTableParameters.getModel()).removeRow(jTableParameters.getSelectedRow());
                jTableParameters.updateUI();
            
            }
        }
        
    }//GEN-LAST:event_jButtonDeleteActionPerformed

    private void jButtonModifyActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonModifyActionPerformed
        java.awt.Frame parent = Misc.frameFromComponent(this);     
        SubDatasetDialog cd = new SubDatasetDialog(this,true);
        
        // Take the selected connection from the table...
        if (jTableParameters.getSelectedRow() < 0) return;
        SubDataset irc = null;
        try {
            irc = (SubDataset)jTableParameters.getModel().getValueAt(jTableParameters.getSelectedRow(), 0);
        } catch (Exception ex) { return; }

        if (irc == null) return;
        
        cd.setSubDataset( irc ); 
        
        cd.setVisible(true);
        
        if (cd.getDialogResult() == JOptionPane.OK_OPTION)
        {
            SubDataset sub = cd.getSubDataset();
            // Now we have an old and a new object.
            // 1. Adjust table...
            try {
                jTableParameters.getModel().setValueAt(sub ,jTableParameters.getSelectedRow(), 0);
            } catch (Exception ex) { return; } 
       }
    }//GEN-LAST:event_jButtonModifyActionPerformed

    private void jButtonNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonNewActionPerformed
        java.awt.Frame parent = Misc.frameFromComponent(this);     
        SubDatasetDialog cd = new SubDatasetDialog(this,true);
        cd.setVisible(true);
    }//GEN-LAST:event_jButtonNewActionPerformed
    
    
    public void addSubDataset(SubDataset sub)
    {
        DefaultTableModel dtm = (DefaultTableModel)jTableParameters.getModel();
            dtm.addRow( new Object[]{sub});
            // 
            
    }
    
    /** Closes the dialog */
    private void closeDialog(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_closeDialog
        setVisible(false);
    }//GEN-LAST:event_closeDialog
          
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonDelete;
    private javax.swing.JButton jButtonModify;
    private javax.swing.JButton jButtonNew;
    private javax.swing.JPanel jPanelButtons;
    private javax.swing.JPanel jPanelParameters;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTableParameters;
    // End of variables declaration//GEN-END:variables

    public void applyI18n(){
                // Start autogenerated code ----------------------
                jButtonDelete.setText(I18n.getString("subDatasetsDialog.buttonDelete","Delete"));
                jButtonModify.setText(I18n.getString("subDatasetsDialog.buttonModify","Modify"));
                jButtonNew.setText(I18n.getString("subDatasetsDialog.buttonNew","New"));
                // End autogenerated code ----------------------
                
                jTableParameters.getColumnModel().getColumn(0).setHeaderValue( I18n.getString("subDatasetsDialog.tablecolumn.name","Name") );

                //
                this.setTitle(I18n.getString("subDatasetsDialog.title","SubDatasets"));
                //
    }
}
