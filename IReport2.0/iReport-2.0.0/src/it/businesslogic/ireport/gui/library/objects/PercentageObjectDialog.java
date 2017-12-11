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
 * PercentageObjectDialog.java
 * 
 * Created on March 26, 2006, 10:59 PM
 *
 */

package it.businesslogic.ireport.gui.library.objects;

import it.businesslogic.ireport.JRField;
import java.util.Vector;
import javax.swing.JOptionPane;
import it.businesslogic.ireport.util.I18n;

/**
 *
 * @author  gtoffoli
 */
public class PercentageObjectDialog extends javax.swing.JDialog {
    
    private int dialogResult = JOptionPane.CANCEL_OPTION;
    private JRField field = null;
    private String resetType = "Report";
    
    /** Creates new form NewJDialog */
    public PercentageObjectDialog(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        applyI18n();
        it.businesslogic.ireport.util.Misc.centerFrame(this);     
        
        javax.swing.KeyStroke escape =  javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_ESCAPE, 0, false);
        javax.swing.Action escapeAction = new javax.swing.AbstractAction() {
            public void actionPerformed(java.awt.event.ActionEvent e) {
                jButtonCancelActionPerformed(e);
            }
        };
       
        getRootPane().getInputMap(javax.swing.JComponent.WHEN_IN_FOCUSED_WINDOW).put(escape, "ESCAPE");
        getRootPane().getActionMap().put("ESCAPE", escapeAction);


        //to make the default button ...
        this.getRootPane().setDefaultButton(this.jButtonOk);
    }

    public int getDialogResult() {
        return dialogResult;
    }

    public void setDialogResult(int dialogResult) {
        this.dialogResult = dialogResult;
    }
    
    public void setFields(Vector fields)
    {
        for (int i=0; i< fields.size(); ++i)
        {
            jComboBoxField.addItem( fields.elementAt(i) );
        }
        if (jComboBoxField.getItemCount() > 0)
        {
            jComboBoxField.setSelectedIndex(0);
        }
    }
    
    /**
     * Strings vector
     */
    public void setResetTypes(Vector resetTypes)
    {
        for (int i=0; i< resetTypes.size(); ++i)
        {
            jComboBoxResetType.addItem( resetTypes.elementAt(i) );
        }
        jComboBoxResetType.setSelectedItem("Report");
        
    }

    public JRField getField() {
        return field;
    }

    public void setField(JRField field) {
        this.field = field;
    }

    public String getResetType() {
        return resetType;
    }

    public void setResetType(String resetType) {
        this.resetType = resetType;
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jLabel1 = new javax.swing.JLabel();
        jComboBoxField = new javax.swing.JComboBox();
        jLabel2 = new javax.swing.JLabel();
        jComboBoxResetType = new javax.swing.JComboBox();
        jSeparator1 = new javax.swing.JSeparator();
        jButtonOk = new javax.swing.JButton();
        jButtonCancel = new javax.swing.JButton();

        getContentPane().setLayout(new java.awt.GridBagLayout());

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jLabel1.setText("Field");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(16, 8, 0, 8);
        getContentPane().add(jLabel1, gridBagConstraints);

        jComboBoxField.setMinimumSize(new java.awt.Dimension(250, 21));
        jComboBoxField.setPreferredSize(new java.awt.Dimension(250, 22));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(0, 8, 0, 8);
        getContentPane().add(jComboBoxField, gridBagConstraints);

        jLabel2.setText("Total field reset type");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(4, 8, 0, 8);
        getContentPane().add(jLabel2, gridBagConstraints);

        jComboBoxResetType.setMinimumSize(new java.awt.Dimension(23, 21));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(0, 8, 0, 8);
        getContentPane().add(jComboBoxResetType, gridBagConstraints);

        jSeparator1.setMinimumSize(new java.awt.Dimension(0, 2));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(8, 8, 4, 8);
        getContentPane().add(jSeparator1, gridBagConstraints);

        jButtonOk.setText("Ok");
        jButtonOk.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonOkActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 4, 0);
        getContentPane().add(jButtonOk, gridBagConstraints);

        jButtonCancel.setText("Cancel");
        jButtonCancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCancelActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.insets = new java.awt.Insets(0, 4, 4, 8);
        getContentPane().add(jButtonCancel, gridBagConstraints);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButtonCancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCancelActionPerformed
         setDialogResult(JOptionPane.CANCEL_OPTION);
        this.setVisible(false);
        this.dispose();
    }//GEN-LAST:event_jButtonCancelActionPerformed

    private void jButtonOkActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonOkActionPerformed

        if (jComboBoxField.getSelectedIndex() < 0)
        {
            JOptionPane.showMessageDialog(this,
                    I18n.getString("messages.percentageObjectDialog.noFieldsSelected",
                    "No field selected") );
            return;
        }
        
        setField( (JRField)jComboBoxField.getSelectedItem());
        setResetType( jComboBoxResetType.getSelectedItem()+"");
        
        setDialogResult(JOptionPane.OK_OPTION);
        this.setVisible(false);
        this.dispose();
        
    }//GEN-LAST:event_jButtonOkActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonCancel;
    private javax.swing.JButton jButtonOk;
    private javax.swing.JComboBox jComboBoxField;
    private javax.swing.JComboBox jComboBoxResetType;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JSeparator jSeparator1;
    // End of variables declaration//GEN-END:variables
    
    public void applyI18n(){
                // Start autogenerated code ----------------------
                jButtonCancel.setText(I18n.getString("percentageObjectDialog.buttonCancel","Cancel"));
                jButtonOk.setText(I18n.getString("percentageObjectDialog.buttonOk","Ok"));
                jLabel1.setText(I18n.getString("percentageObjectDialog.label1","Field"));
                jLabel2.setText(I18n.getString("percentageObjectDialog.label2","Total field reset type"));
                // End autogenerated code ----------------------
                jButtonCancel.setMnemonic(I18n.getString("percentageObjectDialog.buttonCancelMnemonic","c").charAt(0));
                jButtonOk.setMnemonic(I18n.getString("percentageObjectDialog.buttonOkMnemonic","o").charAt(0));
    }
}
