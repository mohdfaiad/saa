/*
 * EJBQLConnectionEditor.java
 *
 * Created on March 27, 2007, 1:18 PM
 */

package it.businesslogic.ireport.connection.gui;

import it.businesslogic.ireport.IReportConnection;
import it.businesslogic.ireport.IReportConnectionEditor;
import it.businesslogic.ireport.connection.QueryExecuterConnection;

/**
 *
 * @author  gtoffoli
 */
public class QueryExecuterConnectionEditor extends javax.swing.JPanel implements IReportConnectionEditor {
    
    private IReportConnection iReportConnection = null;
    private boolean init = false;
    
    /** Creates new form EJBQLConnectionEditor */
    public QueryExecuterConnectionEditor() {
        initComponents();
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

        jPanelEJBQL = new javax.swing.JPanel();

        setLayout(new java.awt.BorderLayout());

        jPanelEJBQL.setLayout(new java.awt.GridBagLayout());

        add(jPanelEJBQL, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel jPanelEJBQL;
    // End of variables declaration//GEN-END:variables
    
    
    public void setIReportConnection(IReportConnection c) {
        
        this.iReportConnection = c;
        
    }

    public IReportConnection getIReportConnection() {
        
        return new QueryExecuterConnection();
    }
    
    public void applyI18n(){
      
    }
    
    
}
