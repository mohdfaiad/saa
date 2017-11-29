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
 * GroupDialog.java
 * 
 * Created on 9 maggio 2003, 17.25
 *
 */

package it.businesslogic.ireport.gui.subdataset;
import it.businesslogic.ireport.SubDataset;
import it.businesslogic.ireport.gui.JRParameterDialog;
import it.businesslogic.ireport.util.I18n;
import it.businesslogic.ireport.util.Misc;
/**
 *
 * @author  Administrator
 */
public class GroupDialog extends javax.swing.JDialog {
    /** Creates new form JRParameterDialog */
    private String groupName;
    private String expression;
    private int minHeightStartNewPage = 0;
    private int headerBandHeight = 0;
    private int footerBandHeight = 0;
    private boolean startNewPage = false;
    private boolean startNewColumn = false;
    private boolean printHeaderEachPage = false;
    private boolean resetPageNumber = false;
    
    private SubDataset subDataset = null;
        
    public GroupDialog(java.awt.Frame frame, boolean modal) {
     
        super( frame, modal);
        initAll();
        
    }
        
    public GroupDialog(java.awt.Dialog dialog, boolean modal) {
        
        super( dialog, modal);
        initAll();
      
    }
    
    public void initAll() {

        initComponents();
        applyI18n();
        this.jRTextExpressionArea.setText("");
        
        javax.swing.KeyStroke escape =  javax.swing.KeyStroke.getKeyStroke(java.awt.event.KeyEvent.VK_ESCAPE, 0, false);
            javax.swing.Action escapeAction = new javax.swing.AbstractAction() {
                public void actionPerformed(java.awt.event.ActionEvent e) {
                    jButtonCancelActionPerformed(e);
                }
            };

            getRootPane().getInputMap(javax.swing.JComponent.WHEN_IN_FOCUSED_WINDOW).put(escape, "ESCAPE");
            getRootPane().getActionMap().put("ESCAPE", escapeAction);


            //to make the default button ...
            this.getRootPane().setDefaultButton(this.jButtonOK);
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
        jTextFieldName = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jRTextExpressionArea = new it.businesslogic.ireport.gui.JRTextExpressionArea();
        jPanel1 = new javax.swing.JPanel();
        jButtonOK = new javax.swing.JButton();
        jButtonCancel = new javax.swing.JButton();

        getContentPane().setLayout(new java.awt.GridBagLayout());

        setTitle("Add/modify group");
        setModal(true);
        setResizable(false);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosing(java.awt.event.WindowEvent evt) {
                closeDialog(evt);
            }
        });

        jLabel1.setText("Group name");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(3, 3, 3, 3);
        getContentPane().add(jLabel1, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(3, 3, 3, 3);
        getContentPane().add(jTextFieldName, gridBagConstraints);

        jLabel3.setText("Group expression");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 5;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(3, 3, 3, 3);
        getContentPane().add(jLabel3, gridBagConstraints);

        jRTextExpressionArea.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jRTextExpressionArea.setPreferredSize(new java.awt.Dimension(300, 70));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 6;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(3, 3, 3, 3);
        getContentPane().add(jRTextExpressionArea, gridBagConstraints);

        jPanel1.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.RIGHT));

        jButtonOK.setText("OK");
        jButtonOK.setMnemonic('o');
        jButtonOK.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonOKActionPerformed(evt);
            }
        });

        jPanel1.add(jButtonOK);

        jButtonCancel.setText("Cancel");
        jButtonCancel.setMnemonic('c');
        jButtonCancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCancelActionPerformed(evt);
            }
        });

        jPanel1.add(jButtonCancel);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 9;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.EAST;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.weighty = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(3, 3, 3, 3);
        getContentPane().add(jPanel1, gridBagConstraints);

        pack();
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        java.awt.Dimension dialogSize = getSize();
        setLocation((screenSize.width-dialogSize.width)/2,(screenSize.height-dialogSize.height)/2);
    }// </editor-fold>//GEN-END:initComponents

    private void jButtonCancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCancelActionPerformed
        setVisible(false);
        this.setDialogResult( javax.swing.JOptionPane.CANCEL_OPTION);
        dispose();
    }//GEN-LAST:event_jButtonCancelActionPerformed

    private void jButtonOKActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonOKActionPerformed
        
        if (this.jTextFieldName.getText().trim().length() <= 0)
        {
            javax.swing.JOptionPane.showMessageDialog(this,
                    I18n.getString( "messages.jRGroupDialog.notValidGroupName","Please insert a valid group name!"),
                    I18n.getString( "messages.jRGroupDialog.notValidGroupNameCaption","Invalid name!"),
                    javax.swing.JOptionPane.WARNING_MESSAGE );
            return;
        }
        
        setGroupName( this.jTextFieldName.getText() );
        // TODO: Control height!
        /*
        setHeaderBandHeight( (int)this.jNumberFieldHeaderBand.getValue());
        setFooterBandHeight( (int)this.jNumberFieldFooterBand.getValue());
        setMinHeightStartNewPage( (int)this.jNumberFieldMinStartNewPage.getValue());
        
        setStartNewColumn( jCheckBoxStartNewColumn.isSelected());
        setStartNewPage( jCheckBoxStartNewPage.isSelected());
        setPrintHeaderEachPage( jCheckBoxPrintHeaderEachPage.isSelected());
        setResetPageNumber( jCheckBoxResetPageNumber.isSelected());
        */
        setExpression( jRTextExpressionArea.getText() );
        
        setVisible(false);
        this.setDialogResult( javax.swing.JOptionPane.OK_OPTION);
        dispose();
    }//GEN-LAST:event_jButtonOKActionPerformed
    
    /** Closes the dialog */
    private void closeDialog(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_closeDialog
        setVisible(false);
        this.setDialogResult( javax.swing.JOptionPane.CLOSED_OPTION);
        dispose();
    }//GEN-LAST:event_closeDialog
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        new JRParameterDialog(new javax.swing.JFrame(), true).setVisible(true);
    }
    
    /** Setter for property tmpParameter.
     * @param tmpParameter New value of property tmpParameter.
     *
     */
    public void setGroup(it.businesslogic.ireport.Group group) {
        this.jTextFieldName.setText( new String(group.getName() ));
        /*
        this.jCheckBoxStartNewPage.setSelected( group.isIsStartNewPage() );
        this.jCheckBoxStartNewColumn.setSelected( group.isIsStartNewColumn() );
        this.jCheckBoxPrintHeaderEachPage.setSelected( group.isIsReprintHeaderOnEachPage());
        this.jCheckBoxResetPageNumber.setSelected( group.isIsResetPageNumber() );
        */
        if (group.getGroupExpression() != null)
        {
            this.jRTextExpressionArea.setText( new String(group.getGroupExpression()).trim());
        }
        else
        {
            this.jRTextExpressionArea.setText( "");
        }
        
        /*
        try {
        this.jNumberFieldMinStartNewPage.setValue( group.getMinHeightToStartNewPage() );
        this.jNumberFieldHeaderBand.setValue( group.getGroupHeader().getHeight());
        this.jNumberFieldFooterBand.setValue( group.getGroupFooter().getHeight());        
        } catch (Exception ex) {}
        */
    }
    
    /** Getter for property dialogResult.
     * @return Value of property dialogResult.
     *
     */
    public int getDialogResult() {
        return dialogResult;
    }
    
    /** Setter for property dialogResult.
     * @param dialogResult New value of property dialogResult.
     *
     */
    public void setDialogResult(int dialogResult) {
        this.dialogResult = dialogResult;
    }
    
    /** Getter for property expression.
     * @return Value of property expression.
     *
     */
    public java.lang.String getExpression() {
        return expression;
    }
    
    /** Setter for property expression.
     * @param expression New value of property expression.
     *
     */
    public void setExpression(java.lang.String expression) {
        this.expression = expression;
    }
    
    /** Getter for property footerBandHeight.
     * @return Value of property footerBandHeight.
     *
     */
    public int getFooterBandHeight() {
        return footerBandHeight;
    }
    
    /** Setter for property footerBandHeight.
     * @param footerBandHeight New value of property footerBandHeight.
     *
     */
    public void setFooterBandHeight(int footerBandHeight) {
        this.footerBandHeight = footerBandHeight;
    }
    
    /** Getter for property groupName.
     * @return Value of property groupName.
     *
     */
    public java.lang.String getGroupName() {
        return groupName;
    }
    
    /** Setter for property groupName.
     * @param groupName New value of property groupName.
     *
     */
    public void setGroupName(java.lang.String groupName) {
        this.groupName = groupName;
    }
    
    /** Getter for property headerBandHeight.
     * @return Value of property headerBandHeight.
     *
     */
    public int getHeaderBandHeight() {
        return headerBandHeight;
    }
    
    /** Setter for property headerBandHeight.
     * @param headerBandHeight New value of property headerBandHeight.
     *
     */
    public void setHeaderBandHeight(int headerBandHeight) {
        this.headerBandHeight = headerBandHeight;
    }
    
    /** Getter for property minHeightStartNewPage.
     * @return Value of property minHeightStartNewPage.
     *
     */
    public int getMinHeightStartNewPage() {
        return minHeightStartNewPage;
    }
    
    /** Setter for property minHeightStartNewPage.
     * @param minHeightStartNewPage New value of property minHeightStartNewPage.
     *
     */
    public void setMinHeightStartNewPage(int minHeightStartNewPage) {
        this.minHeightStartNewPage = minHeightStartNewPage;
    }
    
    /** Getter for property printHeaderEachPage.
     * @return Value of property printHeaderEachPage.
     *
     */
    public boolean isPrintHeaderEachPage() {
        return printHeaderEachPage;
    }
    
    /** Setter for property printHeaderEachPage.
     * @param printHeaderEachPage New value of property printHeaderEachPage.
     *
     */
    public void setPrintHeaderEachPage(boolean printHeaderEachPage) {
        this.printHeaderEachPage = printHeaderEachPage;
    }
    
    /** Getter for property resetPageNumber.
     * @return Value of property resetPageNumber.
     *
     */
    public boolean isResetPageNumber() {
        return resetPageNumber;
    }
    
    /** Setter for property resetPageNumber.
     * @param resetPageNumber New value of property resetPageNumber.
     *
     */
    public void setResetPageNumber(boolean resetPageNumber) {
        this.resetPageNumber = resetPageNumber;
    }
    
    /** Getter for property startNewColumn.
     * @return Value of property startNewColumn.
     *
     */
    public boolean isStartNewColumn() {
        return startNewColumn;
    }
    
    /** Setter for property startNewColumn.
     * @param startNewColumn New value of property startNewColumn.
     *
     */
    public void setStartNewColumn(boolean startNewColumn) {
        this.startNewColumn = startNewColumn;
    }
    
    /** Getter for property startNewPage.
     * @return Value of property startNewPage.
     *
     */
    public boolean isStartNewPage() {
        return startNewPage;
    }
    
    /** Setter for property startNewPage.
     * @param startNewPage New value of property startNewPage.
     *
     */
    public void setStartNewPage(boolean startNewPage) {
        this.startNewPage = startNewPage;
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonCancel;
    private javax.swing.JButton jButtonOK;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private it.businesslogic.ireport.gui.JRTextExpressionArea jRTextExpressionArea;
    private javax.swing.JTextField jTextFieldName;
    // End of variables declaration//GEN-END:variables

    private int dialogResult;    

    public SubDataset getSubDataset() {
        return subDataset;
    }

    public void setSubDataset(SubDataset subDataset) {
        this.subDataset = subDataset;
        jRTextExpressionArea.setSubDataset( subDataset);
    }
    
    public void applyI18n(){
                // Start autogenerated code ----------------------
                jButtonCancel.setText(I18n.getString("groupDialog.buttonCancel","Cancel"));
                jButtonOK.setText(I18n.getString("groupDialog.buttonOK","OK"));
                jLabel1.setText(I18n.getString("groupDialog.label1","Group name"));
                jLabel3.setText(I18n.getString("groupDialog.label3","Group expression"));
                // End autogenerated code ----------------------

                setTitle(I18n.getString("groupDialog.title","Add/modify group"));
                jButtonCancel.setMnemonic(I18n.getString("groupDialog.buttonCancelMnemonic","c").charAt(0));
                jButtonOK.setMnemonic(I18n.getString("groupDialog.buttonOKMnemonic","o").charAt(0));
    }
    
    public static final int COMPONENT_NONE=0;
    public static final int COMPONENT_EXPRESSION=1;
    
    /**
     * This method set the focus on a specific component.
     * Valid constants are something like:
     * FIELD_XXX
     */
    public void setFocusedExpression(int expID )
    {
        switch (expID)
        {
            case COMPONENT_EXPRESSION:
                Misc.selectTextAndFocusArea(jRTextExpressionArea);
                break;
        }
    }    
}
