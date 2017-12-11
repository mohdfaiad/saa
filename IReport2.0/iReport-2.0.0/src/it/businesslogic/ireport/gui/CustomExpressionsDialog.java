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
 * CustomExpressionsDialog.java
 *
 * Created on 22 aprile 2005, 18.05
 *
 */

package it.businesslogic.ireport.gui;

import it.businesslogic.ireport.ExpressionContext;
import javax.swing.DefaultListModel;
import java.util.*;
import javax.swing.JOptionPane;
import it.businesslogic.ireport.util.I18n;
/**
 *
 * @author  Administrator
 */
public class CustomExpressionsDialog extends javax.swing.JDialog {

    private int dialogResult = javax.swing.JOptionPane.CANCEL_OPTION;
    private boolean modifiedPath = false;
    /** Creates new form ClassPathDialog */
    public CustomExpressionsDialog(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();

        jList1.setModel(new DefaultListModel());
        it.businesslogic.ireport.util.Misc.centerFrame( this );
        /*
        for (int i=0; i<ExpressionEditor.defaultExpressions.length; ++i)
        {
           ( (DefaultListModel)jList1.getModel()).addElement( ExpressionEditor.defaultExpressions[i] );
        }
        */
        jList1ValueChanged(null);
        applyI18n();
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jLabelClasspath = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jList1 = new javax.swing.JList();
        jPanel1 = new javax.swing.JPanel();
        jButtonAdd = new javax.swing.JButton();
        jButtonAdd1 = new javax.swing.JButton();
        jButtonRemove = new javax.swing.JButton();
        jButtonMoveUp = new javax.swing.JButton();
        jButtonMoveDown = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jButtonSave = new javax.swing.JButton();
        jButtonCancel = new javax.swing.JButton();

        getContentPane().setLayout(new java.awt.GridBagLayout());

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        setTitle(it.businesslogic.ireport.util.I18n.getString("customExpressions", "Custom expressions"));
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosed(java.awt.event.WindowEvent evt) {
                formWindowClosed(evt);
            }
            public void windowClosing(java.awt.event.WindowEvent evt) {
                formWindowClosing(evt);
            }
        });

        jLabelClasspath.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabelClasspath.setText(it.businesslogic.ireport.util.I18n.getString("formulasAndExpressions", "Formulas and expressions"));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.ipadx = 1;
        gridBagConstraints.insets = new java.awt.Insets(4, 4, 4, 4);
        getContentPane().add(jLabelClasspath, gridBagConstraints);

        jScrollPane1.setPreferredSize(new java.awt.Dimension(359, 260));
        jList1.addListSelectionListener(new javax.swing.event.ListSelectionListener() {
            public void valueChanged(javax.swing.event.ListSelectionEvent evt) {
                jList1ValueChanged(evt);
            }
        });
        jList1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jList1MouseClicked(evt);
            }
        });

        jScrollPane1.setViewportView(jList1);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.weighty = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(0, 4, 4, 4);
        getContentPane().add(jScrollPane1, gridBagConstraints);

        jPanel1.setLayout(new java.awt.GridBagLayout());

        jPanel1.setMinimumSize(new java.awt.Dimension(120, 10));
        jPanel1.setPreferredSize(new java.awt.Dimension(120, 10));
        jButtonAdd.setText(it.businesslogic.ireport.util.I18n.getString("new", "New"));
        jButtonAdd.setMaximumSize(new java.awt.Dimension(200, 26));
        jButtonAdd.setMinimumSize(new java.awt.Dimension(90, 26));
        jButtonAdd.setPreferredSize(new java.awt.Dimension(120, 26));
        jButtonAdd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonAddActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 4, 0);
        jPanel1.add(jButtonAdd, gridBagConstraints);

        jButtonAdd1.setText(it.businesslogic.ireport.util.I18n.getString("modify", "Modify"));
        jButtonAdd1.setMaximumSize(new java.awt.Dimension(200, 26));
        jButtonAdd1.setMinimumSize(new java.awt.Dimension(90, 26));
        jButtonAdd1.setPreferredSize(new java.awt.Dimension(120, 26));
        jButtonAdd1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonAddActionPerformed1(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 4, 0);
        jPanel1.add(jButtonAdd1, gridBagConstraints);

        jButtonRemove.setText(it.businesslogic.ireport.util.I18n.getString("remove", "Remove"));
        jButtonRemove.setMaximumSize(new java.awt.Dimension(200, 26));
        jButtonRemove.setMinimumSize(new java.awt.Dimension(90, 26));
        jButtonRemove.setPreferredSize(new java.awt.Dimension(120, 26));
        jButtonRemove.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonRemoveActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 4, 0);
        jPanel1.add(jButtonRemove, gridBagConstraints);

        jButtonMoveUp.setText(it.businesslogic.ireport.util.I18n.getString("moveUp", "Move up"));
        jButtonMoveUp.setMaximumSize(new java.awt.Dimension(200, 26));
        jButtonMoveUp.setMinimumSize(new java.awt.Dimension(90, 26));
        jButtonMoveUp.setPreferredSize(new java.awt.Dimension(120, 26));
        jButtonMoveUp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonMoveUpActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 4, 0);
        jPanel1.add(jButtonMoveUp, gridBagConstraints);
        jButtonMoveDown.setText(it.businesslogic.ireport.util.I18n.getString("moveDown", "Move down"));
        jButtonMoveDown.setMaximumSize(new java.awt.Dimension(200, 26));
        jButtonMoveDown.setMinimumSize(new java.awt.Dimension(90, 26));
        jButtonMoveDown.setPreferredSize(new java.awt.Dimension(120, 26));
        jButtonMoveDown.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonMoveDownActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 4, 0);
        jPanel1.add(jButtonMoveDown, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.weighty = 1.0;
        jPanel1.add(jPanel2, gridBagConstraints);

        jButtonSave.setText(it.businesslogic.ireport.util.I18n.getString("save", "Save"));
        jButtonSave.setMaximumSize(new java.awt.Dimension(200, 26));
        jButtonSave.setMinimumSize(new java.awt.Dimension(90, 26));
        jButtonSave.setPreferredSize(new java.awt.Dimension(120, 26));
        jButtonSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSaveActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 4, 0);
        jPanel1.add(jButtonSave, gridBagConstraints);

        jButtonCancel.setText(it.businesslogic.ireport.util.I18n.getString("cancel", "Cancel"));
        jButtonCancel.setMaximumSize(new java.awt.Dimension(200, 26));
        jButtonCancel.setMinimumSize(new java.awt.Dimension(90, 26));
        jButtonCancel.setPreferredSize(new java.awt.Dimension(120, 26));
        jButtonCancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCancelActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 4, 0);
        jPanel1.add(jButtonCancel, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.weighty = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 4, 4);
        getContentPane().add(jPanel1, gridBagConstraints);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jList1ValueChanged(javax.swing.event.ListSelectionEvent evt) {//GEN-FIRST:event_jList1ValueChanged

        if (jList1.getSelectedIndex() >= 0)
        {
            jButtonAdd1.setEnabled(true);
            jButtonRemove.setEnabled(true);
            jButtonMoveUp.setEnabled(jList1.getSelectedIndex() > 0);
            jButtonMoveDown.setEnabled(jList1.getSelectedIndex() < ((DefaultListModel)jList1.getModel()).size()-1);
        }
        else
        {
            jButtonAdd1.setEnabled(false);
            jButtonRemove.setEnabled(false);
            jButtonMoveUp.setEnabled(false);
            jButtonMoveDown.setEnabled(false);
        }

    }//GEN-LAST:event_jList1ValueChanged

    private void jList1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jList1MouseClicked

        if (evt.getClickCount() == 2 && evt.getButton() == evt.BUTTON1)
        {
            jButtonAddActionPerformed1(null);
        }

    }//GEN-LAST:event_jList1MouseClicked

    private void jButtonAddActionPerformed1(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonAddActionPerformed1

        if (jList1.getSelectedIndex() < 0) return;

        ExpressionEditor ed = new ExpressionEditor();
        ed.setExpression(""+jList1.getSelectedValue());
        ed.setExpressionContext( new ExpressionContext());
        ed.setVisible(true);

        if (ed.getDialogResult() == JOptionPane.OK_OPTION)
        {
            int i = jList1.getSelectedIndex();
            ((DefaultListModel)jList1.getModel()).setElementAt(ed.getExpression(), i);
        }
    }//GEN-LAST:event_jButtonAddActionPerformed1

    private void formWindowClosed(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosed

    }//GEN-LAST:event_formWindowClosed

    private void formWindowClosing(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosing

        if (modifiedPath)
        {
            int ret = javax.swing.JOptionPane.showConfirmDialog(this, I18n.getString("messages.customExpressionsDialog.saveList","Do you want save the list ?"));

            if (ret == javax.swing.JOptionPane.CANCEL_OPTION)
            {
                return;
            }

            if (ret == javax.swing.JOptionPane.OK_OPTION)
            {
                setDialogResult(javax.swing.JOptionPane.OK_OPTION);
            }
        }
        setVisible(false);
    }//GEN-LAST:event_formWindowClosing

    private void jButtonCancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCancelActionPerformed
        setVisible(false);
    }//GEN-LAST:event_jButtonCancelActionPerformed

    private void jButtonSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSaveActionPerformed
        setDialogResult(javax.swing.JOptionPane.OK_OPTION);
        setVisible(false);
    }//GEN-LAST:event_jButtonSaveActionPerformed

    private void jButtonMoveUpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonMoveUpActionPerformed

        if (jList1.getSelectedValues() != null)
        {
            int[] indices = jList1.getSelectedIndices();
            for (int i=0; i<indices.length; ++i)
            {
                if (indices[i] == 0) continue;
                Object val = ((DefaultListModel)jList1.getModel()).remove( indices[i] );
                ((DefaultListModel)jList1.getModel()).insertElementAt(val, indices[i]-1);
                indices[i]--;
            }
            jList1.setSelectedIndices(indices);
            modifiedPath = true;
        }

    }//GEN-LAST:event_jButtonMoveUpActionPerformed

    private void jButtonMoveDownActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonMoveDownActionPerformed
        if (jList1.getSelectedValues() != null)
        {
            int[] indices = jList1.getSelectedIndices();
            for (int i=indices.length-1; i>=0; --i)
            {
                if (indices[i] >= ((DefaultListModel)jList1.getModel()).size() -1 ) continue;

                Object val = ((DefaultListModel)jList1.getModel()).remove( indices[i] );
                ((DefaultListModel)jList1.getModel()).insertElementAt(val, indices[i]+1);
                indices[i]++;
            }
            jList1.setSelectedIndices(indices);
            modifiedPath = true;
        }
    }//GEN-LAST:event_jButtonMoveDownActionPerformed

    private void jButtonRemoveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonRemoveActionPerformed

        if (jList1.getSelectedValues() != null)
        {
            Object[] values = jList1.getSelectedValues();
            for (int i=0; i<values.length; ++i)
            {
                ((DefaultListModel)jList1.getModel()).removeElement(values[i]);
            }
            modifiedPath = true;
        }
    }//GEN-LAST:event_jButtonRemoveActionPerformed

    private void jButtonAddActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonAddActionPerformed

        ExpressionEditor ed = new ExpressionEditor();
        ed.setExpression("");
        ed.setExpressionContext( new ExpressionContext());
        ed.setVisible(true);

        if (ed.getDialogResult() == JOptionPane.OK_OPTION)
        {
            ((DefaultListModel)jList1.getModel()).addElement( ed.getExpression());
        }

    }//GEN-LAST:event_jButtonAddActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ClassPathDialog(new javax.swing.JFrame(), true).setVisible(true);
            }
        });
    }

    public void setExpressions(Vector cp)
    {
         for (int i=0; i<cp.size(); ++i) {
                      ((DefaultListModel)jList1.getModel()).addElement( cp.elementAt(i) );
            }
         if (((DefaultListModel)jList1.getModel()).size() > 0)
         {
             jList1.setSelectedIndex(0);
         }
    }

    public Vector getExpressions()
    {
         Vector cp = new Vector();
         for (int i=0; i<((DefaultListModel)jList1.getModel()).size(); ++i )
         {
             cp.addElement( "" + ((DefaultListModel)jList1.getModel()).elementAt( i ) );
         }

         return cp;
    }

    public int getDialogResult() {
        return dialogResult;
    }

    public void setDialogResult(int dialogResult) {
        this.dialogResult = dialogResult;
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonAdd;
    private javax.swing.JButton jButtonAdd1;
    private javax.swing.JButton jButtonCancel;
    private javax.swing.JButton jButtonMoveDown;
    private javax.swing.JButton jButtonMoveUp;
    private javax.swing.JButton jButtonRemove;
    private javax.swing.JButton jButtonSave;
    private javax.swing.JLabel jLabelClasspath;
    private javax.swing.JList jList1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables

    public void applyI18n(){
                // Start autogenerated code ----------------------
                // End autogenerated code ----------------------
    }
}
