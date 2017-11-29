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
 * StylesView.java
 * 
 * Created on March 20, 2006, 5:15 PM
 *
 */

package it.businesslogic.ireport.gui.style;

import it.businesslogic.ireport.Report;
import it.businesslogic.ireport.Style;
import it.businesslogic.ireport.gui.JReportFrame;
import it.businesslogic.ireport.gui.MainFrame;
import it.businesslogic.ireport.gui.dnd.JListTransfertHandler;
import it.businesslogic.ireport.gui.docking.GenericDragTargetListener;
import it.businesslogic.ireport.gui.event.ReportFrameActivatedEvent;
import it.businesslogic.ireport.gui.event.ReportFrameActivatedListener;
import it.businesslogic.ireport.gui.event.StyleChangedEvent;
import it.businesslogic.ireport.gui.event.StyleChangedListener;
import it.businesslogic.ireport.gui.sheet.Tag;
import it.businesslogic.ireport.util.I18n;
import it.businesslogic.ireport.util.LanguageChangedEvent;
import it.businesslogic.ireport.util.LanguageChangedListener;
import java.awt.dnd.DnDConstants;
import java.awt.dnd.DropTarget;
import java.awt.dnd.DropTargetListener;
import java.util.Vector;
import javax.swing.DefaultListModel;
import javax.swing.JOptionPane;

/**
 *
 * @author  gtoffoli
 */
public class StylesView extends javax.swing.JPanel implements LanguageChangedListener, ReportFrameActivatedListener, StyleChangedListener 
{
    private JReportFrame activeReportFrame = null;
    private DefaultListModel listModel = null;
    
    /** Creates new form StylesView */
    public StylesView() {
        initComponents();
        applyI18n();
        listModel = new DefaultListModel();
        jListStyles.setModel( listModel );
        jListStyles.setDropTarget(new DropTarget(this, DnDConstants.ACTION_MOVE, new GenericDragTargetListener(), true));
        
        jComboBoxStyleType.addItem(new Tag("reportStyles", it.businesslogic.ireport.util.I18n.getString("stylesView.reportStyles","Report styles")));
        jComboBoxStyleType.addItem(new Tag("libraryStyles", it.businesslogic.ireport.util.I18n.getString("stylesView.stylesLibrary","Styles library")));
        
        jListStyles.setTransferHandler(new JListTransfertHandler());
        
       // System.out.println(this.getTransferHandler());
        
        languageChanged(null);
        
        MainFrame.getMainInstance().addReportFrameActivatedListener( this );
        
        
        updateStyles();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jScrollPane1 = new javax.swing.JScrollPane();
        jListStyles = new it.businesslogic.ireport.gui.style.JBGList();
        jPanel1 = new javax.swing.JPanel();
        jComboBoxStyleType = new javax.swing.JComboBox();
        jToolBar1 = new javax.swing.JToolBar();
        jButtonAddStyle = new javax.swing.JButton();
        jButtonEditStyle = new javax.swing.JButton();
        jButtonDeleteStyle = new javax.swing.JButton();

        setLayout(new java.awt.BorderLayout());

        jScrollPane1.setBackground(new java.awt.Color(255, 255, 255));
        jListStyles.setModel(new javax.swing.AbstractListModel() {
            String[] strings = { "Item 1", "Item 2", "Item 3", "Item 4", "Item 5" };
            public int getSize() { return strings.length; }
            public Object getElementAt(int i) { return strings[i]; }
        });
        jListStyles.setDragEnabled(true);
        jListStyles.setOpaque(false);
        jListStyles.addListSelectionListener(new javax.swing.event.ListSelectionListener() {
            public void valueChanged(javax.swing.event.ListSelectionEvent evt) {
                jListStylesValueChanged(evt);
            }
        });
        jListStyles.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jListStylesMouseClicked(evt);
            }
        });

        jScrollPane1.setViewportView(jListStyles);

        add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel1.setLayout(new java.awt.GridBagLayout());

        jComboBoxStyleType.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBoxStyleTypeActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.insets = new java.awt.Insets(0, 0, 2, 4);
        jPanel1.add(jComboBoxStyleType, gridBagConstraints);

        jToolBar1.setFloatable(false);
        jButtonAddStyle.setIcon(new javax.swing.ImageIcon(getClass().getResource("/it/businesslogic/ireport/icons/styles/style_add.png")));
        jButtonAddStyle.setToolTipText("Style add");
        jButtonAddStyle.setBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        jButtonAddStyle.setFocusPainted(false);
        jButtonAddStyle.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jButtonAddStyle.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonAddStyleActionPerformed(evt);
            }
        });

        jToolBar1.add(jButtonAddStyle);

        jButtonEditStyle.setIcon(new javax.swing.ImageIcon(getClass().getResource("/it/businesslogic/ireport/icons/styles/style_edit.png")));
        jButtonEditStyle.setToolTipText("Style add");
        jButtonEditStyle.setBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        jButtonEditStyle.setFocusPainted(false);
        jButtonEditStyle.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jButtonEditStyle.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonEditStyleActionPerformed(evt);
            }
        });

        jToolBar1.add(jButtonEditStyle);

        jButtonDeleteStyle.setIcon(new javax.swing.ImageIcon(getClass().getResource("/it/businesslogic/ireport/icons/styles/style_delete.png")));
        jButtonDeleteStyle.setToolTipText("Style add");
        jButtonDeleteStyle.setBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        jButtonDeleteStyle.setFocusPainted(false);
        jButtonDeleteStyle.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jButtonDeleteStyle.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonDeleteStyleActionPerformed(evt);
            }
        });

        jToolBar1.add(jButtonDeleteStyle);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.weighty = 1.0;
        jPanel1.add(jToolBar1, gridBagConstraints);

        add(jPanel1, java.awt.BorderLayout.NORTH);

    }// </editor-fold>//GEN-END:initComponents

    private void jComboBoxStyleTypeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBoxStyleTypeActionPerformed

        updateStyles();
        
    }//GEN-LAST:event_jComboBoxStyleTypeActionPerformed

    private void jListStylesMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jListStylesMouseClicked

        if (evt.getClickCount() == 2 && evt.getButton() == evt.BUTTON1)
        {
            jButtonEditStyleActionPerformed(null);
        }
        
    }//GEN-LAST:event_jListStylesMouseClicked

    private void jListStylesValueChanged(javax.swing.event.ListSelectionEvent evt) {//GEN-FIRST:event_jListStylesValueChanged

        
        if (jListStyles.getSelectedIndex() >= 0)
        {
            jButtonEditStyle.setEnabled(true);
            jButtonDeleteStyle.setEnabled(true);
        }
        else
        {
            jButtonEditStyle.setEnabled(false);
            jButtonDeleteStyle.setEnabled(false);
        }
        
        
    }//GEN-LAST:event_jListStylesValueChanged

    private void jButtonDeleteStyleActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonDeleteStyleActionPerformed
            
        if (jListStyles.getSelectedIndex() >= 0)
        {
            Style irc = null;
            try {
                irc = (Style)jListStyles.getSelectedValue();
            } catch (Exception ex) { return; }
                       
            
            if (javax.swing.JOptionPane.showConfirmDialog(this,I18n.getString("messages.stylesDialog.removingStyle","Do you want really remove this style?"),"",
                    javax.swing.JOptionPane.YES_NO_CANCEL_OPTION,
                    javax.swing.JOptionPane.QUESTION_MESSAGE) == javax.swing.JOptionPane.YES_OPTION)
            {   
                if (!isListingReportStyles())
                {
                    MainFrame.getMainInstance().getStyleLibrarySet().remove(irc);
                    MainFrame.getMainInstance().saveStyleLibrary();
                    getListModel().removeElement(irc);
                }
                else
                {
                    Report report = MainFrame.getMainInstance().getActiveReportFrame().getReport();
                    report.removeStyle( irc );
                }
            }
        }
    }//GEN-LAST:event_jButtonDeleteStyleActionPerformed

    private void jButtonEditStyleActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonEditStyleActionPerformed

        StyleDialog cd = new StyleDialog(MainFrame.getMainInstance(),true);
        
        // Take the selected style from the table...
        if (jListStyles.getSelectedValue() == null) return;
        int index = jListStyles.getSelectedIndex();
        Style irc = (Style)jListStyles.getSelectedValue();
        
        if (irc == null) return;
        
        cd.setStyle( irc );
        if (!isListingReportStyles())
        {
            cd.setLibraryStyle(true);
        }
            
        cd.setVisible(true);
        
        if (cd.getDialogResult() == JOptionPane.OK_OPTION)
        {
            Style sub = cd.getStyle();
            // Now we have an old and a new object.
            // 1. Adjust table...
            try {
                getListModel().setElementAt(sub, index);
            } catch (Exception ex) { return; } 
            
            if (!isListingReportStyles())
            {
                MainFrame.getMainInstance().saveStyleLibrary();
            }
        }
        
    }//GEN-LAST:event_jButtonEditStyleActionPerformed

    private void jButtonAddStyleActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonAddStyleActionPerformed

        StyleDialog cd = new StyleDialog(MainFrame.getMainInstance(),true);
        
        if (!isListingReportStyles())
        {
            cd.setLibraryStyle(true);
        }
            
        cd.setVisible(true);
        
        if (cd.getDialogResult() == JOptionPane.OK_OPTION && cd.isLibraryStyle())
        {
            // If we are editing/adding a library style, no events are fire, so we have
            // to handle the new style by our self...
            // The new style should be already present in library.
            getListModel().addElement( cd.getStyle() );
            MainFrame.getMainInstance().saveStyleLibrary();
        }
        
    }//GEN-LAST:event_jButtonAddStyleActionPerformed

    public void languageChanged(LanguageChangedEvent evt) {
    
          jButtonAddStyle.setToolTipText( I18n.getString("gui.style.newStyle","New style") );
          jButtonEditStyle.setToolTipText( I18n.getString("gui.style.editStyle","Edit style")  );
          jButtonDeleteStyle.setToolTipText( I18n.getString("gui.style.deleteStyle","Delete style")  );
          
          for (int i=0; i<jComboBoxStyleType.getItemCount(); ++i)
          {
              Tag t = (Tag)jComboBoxStyleType.getItemAt(i);
              if ( t.getName().equals("reportStyles"))
                  t.setName(  I18n.getString("gui.style.types.reportStyles","Report styles") );
              else if ( t.getName().equals("libraryStyles"))
                  t.setName(  I18n.getString("gui.style.types.libraryStyles","Styles Library") );
              
          }
    
    }

    public void reportFrameActivated(ReportFrameActivatedEvent evt) {
        setActiveReportFrame( evt.getReportFrame() );
    }

    public JReportFrame getActiveReportFrame() {
        return activeReportFrame;
    }

    public void setActiveReportFrame(JReportFrame newActiveReportFrame) {
        
        if (newActiveReportFrame != this.activeReportFrame)
        {
            if (this.activeReportFrame != null)
            {
                this.activeReportFrame.getReport().removeStyleChangedListener( this );
            }
        }
        else
        {
            return;
        }
        
        this.activeReportFrame  = newActiveReportFrame;
        
        if (this.activeReportFrame != null)
        {
            this.activeReportFrame.getReport().addStyleChangedListener( this );
        }
                
        updateStyles();
    }
    
    
    public void updateStyles()
    {
        
        getListModel().removeAllElements();
        jListStyles.setShowLibrary( !isListingReportStyles() );
        if ( ((Tag)jComboBoxStyleType.getSelectedItem()).getValue().equals("libraryStyles"))
        {
            // load library styles....
            Vector v = MainFrame.getMainInstance().getStyleLibrarySet();
            for (int i=0; i<v.size(); ++i)
            {
                getListModel().addElement( v.elementAt(i));
            }
        }
        else if ( ((Tag)jComboBoxStyleType.getSelectedItem()).getValue().equals("reportStyles"))
        {
            if (getActiveReportFrame() != null)
            {
                Vector v = getActiveReportFrame().getReport().getStyles();
                for (int i=0; i<v.size(); ++i)
                {
                    getListModel().addElement( v.elementAt(i));
                }
            }
        }
    }

    protected DefaultListModel getListModel() {
        return listModel;
    }

    protected void setListModel(DefaultListModel listModel) {
        this.listModel = listModel;
    }

    public void styleChanged(StyleChangedEvent evt) {
        
        if (evt.getSource() == this) return;
        updateStyles();
    }
    
    
    
    /**
     * Return true if the currently displayed list refers to the report styles
     * False = displaying library styles (currently not modifiables...)
     */
    public boolean isListingReportStyles()
    {
        Tag t = (Tag)jComboBoxStyleType.getSelectedItem();
        
        if (t != null && t.getValue().equals("reportStyles"))
        {
            return true;
        }
        
        return false;
    }

    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonAddStyle;
    private javax.swing.JButton jButtonDeleteStyle;
    private javax.swing.JButton jButtonEditStyle;
    private javax.swing.JComboBox jComboBoxStyleType;
    private it.businesslogic.ireport.gui.style.JBGList jListStyles;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JToolBar jToolBar1;
    // End of variables declaration//GEN-END:variables
    
    public void applyI18n(){
                // Start autogenerated code ----------------------
                // End autogenerated code ----------------------
    }
}