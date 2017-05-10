/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * TableSearchFrame.java
 *
 * Created on 12 �.�. 2553, 14:56:24
 */

package com.saa.ui.View;

import java.awt.event.KeyEvent;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.sql.RowSetEvent;
import javax.sql.RowSetListener;
import javax.swing.ListSelectionModel;
import javax.swing.table.DefaultTableModel;

import com.saa.main.RunTimeController;
import java.awt.Rectangle;
import javax.swing.JDialog;

/**
 *
 * @author DBGKTAromsuk
 */

public class TableSearchFrame extends javax.swing.JDialog implements RowSetListener{
	
	
	private final int  MIN_VALUE_LEN =3;

    public void cursorMoved(RowSetEvent event) {
		// TODO Auto-generated method stub
		
	}

	public void rowChanged(RowSetEvent event) {
		
	}

	public void rowSetChanged(RowSetEvent event) {
		// TODO Auto-generated method stub
		
	}


   private int modalResult = -1;

    public int getModalResult() {
        return modalResult;
    }

  
   private String tableName;

   private String orderBy;
	/**where are column you want to display in jTable**/
    private String displayColumns;

    /**a singl column of result which you would need to retun****/
    private String resultColumn;


    /**result value when key has specified**/
    private Object resultValue;


    protected DefaultTableModel tableModel;

    public String getDisplayColumn() {
        return displayColumns;
    }

    public void setDisplayColumn(String displayColumn) {
        this.displayColumns = displayColumn;
    }

    public String getResultColumn() {
        return resultColumn;
    }

    public void setResultColumn(String resultColumn) {
        this.resultColumn = resultColumn;
    }

    public Object getResultValue() {
        return resultValue;
    }

    public void setResultValue(Object resultValue) {
        this.resultValue = resultValue;
    }

    public DefaultTableModel getTableModel() {
        return tableModel;
    }

    public void setTableModel(DefaultTableModel tableModel) {
        this.tableModel = tableModel;
    }
    /** Creates new form TableSearchFrame */
    public TableSearchFrame() {
        initComponents();
    }

    private void createTableModel(){
          DBTableModel dbModel = new DBTableModel(RunTimeController.getDBManager().getConnection());
          dbModel.retrieve("SELECT \t"+displayColumns+" \tFROM \t"+tableName+" ORDER BY \t"+orderBy);
          jTable1.setModel(dbModel);
    }
    /**
     @param input you SQL tabel name here
     @param  you display column "cust_code,name"
     @param
     */
    public TableSearchFrame(String searchTable, String displayColumns,String orderBy){
          initComponents();
          this.tableName= searchTable;
          this.displayColumns = displayColumns;
          this.orderBy = orderBy;
          initComponentsEx();
    }


    public void initComponentsEx(){
    //   this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);


     //  jTable1.getSelectionModel().setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        createTableModel();
    }
    
    private void setSelectedRow(int row ,int col){
         resultValue =jTable1.getValueAt(row, 0).toString()+";"+jTable1.getValueAt(row, 1).toString();
         //  jTextField1.setText(resultValue.toString());
           jLabel1.setText(resultValue.toString());
          jTable1.scrollRectToVisible(new Rectangle(20*1,
                   jTable1.getRowHeight()*(row),    20,
                   jTable1.getRowHeight()));
           jTable1.getSelectionModel().setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
      	         jTable1.setRowSelectionInterval( col,row);
         //    jTable1.setRowSelectionAllowed(true);

    }

    protected void doOnTextChanging(java.awt.event.KeyEvent evt){
              if (jTextField1.getText().length() >MIN_VALUE_LEN ){

              String searchText =   jTextField1.getText();
         for (int i =0; i < jTable1.getRowCount();i++){

            Object readValue = jTable1.getValueAt(i, 0);
            int found =readValue.toString().indexOf(searchText);
            if (found>-1){
               setSelectedRow(i, 0)	;
            	//setSelectedRow(i,0 );
            }else {
            	readValue =  jTable1.getValueAt(i, 1); //search for code
            	int foundCode =readValue.toString().indexOf(searchText);
            	if (foundCode>-1)  setSelectedRow(i, 1)	;
            }


         }
      }

    }
  protected void doSearchButtonClick(java.awt.event.ActionEvent evt){
          doOnTextChanging(new KeyEvent( this,0, 0, 0, 0));
  }

  protected void doOKButtonClick(java.awt.event.ActionEvent evt){
     modalResult=1;
     this.dispose();
  // modal
  }

  protected void doCancelButtonClick(java.awt.event.ActionEvent evt){
      modalResult =-1;
      this.dispose();

  }
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jButton4 = new javax.swing.JButton();
        jTextField1 = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();

        jButton4.setText("jButton4");

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                OnKeyPressed(evt);
            }
        });

        jTextField1.setName("searchTextField"); // NOI18N
        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                OnKeyPress(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                OnTextChanging(evt);
            }
        });

        jButton1.setLabel("search");
        jButton1.setName("searchButton"); // NOI18N
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                SearchButtonClick(evt);
            }
        });

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {"key1", "value1"},
                {"key2 ", "value"},
                {"Key3", "value"},
                {"key4", "dkjfdskjfksdjfklsdf"}
            },
            new String [] {
                "Code", "Value"
            }
        ));
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                GetSelectedRow(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);

        jLabel1.setForeground(new java.awt.Color(102, 204, 255));
        jLabel1.setText("Enter you search text here");

        jButton2.setLabel("Cancel");
        jButton2.setName("CancelButton"); // NOI18N
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setText("OK");
        jButton3.setName("OKButton"); // NOI18N
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, 388, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jTextField1, javax.swing.GroupLayout.DEFAULT_SIZE, 319, Short.MAX_VALUE)
                        .addGap(4, 4, 4)
                        .addComponent(jButton1))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addGroup(layout.createSequentialGroup()
                            .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 66, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                            .addComponent(jButton2))
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 388, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jTextField1, javax.swing.GroupLayout.DEFAULT_SIZE, 32, Short.MAX_VALUE)
                    .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 184, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton2)
                    .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
        doOKButtonClick(evt);
    }//GEN-LAST:event_jButton3ActionPerformed

    private void OnTextChanging(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_OnTextChanging
        // TODO add your handling code here:
       // doOnTextChanging(evt);
    }//GEN-LAST:event_OnTextChanging

    private void SearchButtonClick(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_SearchButtonClick
        // TODO add your handling code here:
        doSearchButtonClick(evt);

    }//GEN-LAST:event_SearchButtonClick

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:

        doCancelButtonClick(evt);
    }//GEN-LAST:event_jButton2ActionPerformed

    private void OnKeyPress(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_OnKeyPress
          // TODO add your handling code here:
        doOnTextChanging(evt);
    }//GEN-LAST:event_OnKeyPress

    private void GetSelectedRow(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_GetSelectedRow
        // TODO add your handling code here:
        resultValue =jTable1.getValueAt(jTable1.getSelectedRow(), 0).toString()+";"+jTable1.getValueAt(jTable1.getSelectedRow(), 1).toString();
        jTextField1.setText( resultValue.toString());
        jLabel1.setText(resultValue.toString());
    }//GEN-LAST:event_GetSelectedRow

    private void OnKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_OnKeyPressed
        // TODO add your handling code here:

        int pressKey = evt.getKeyCode();
        switch (pressKey){
        case  KeyEvent.VK_F2 :   doOKButtonClick(null);
        			break;
        case   KeyEvent.VK_UP:{
        	   setSelectedRow(jTable1.getSelectedRow()-1, 1);
            }
        	break;	
        case   KeyEvent.VK_DOWN:{
     	   setSelectedRow(jTable1.getSelectedRow()+1, 1);
         }
     	break;	
        
        }
       
        
        
    }//GEN-LAST:event_OnKeyPressed

    /**
    * @param args the command line arguments
    */
    public static void main(String args[]) {

        java.awt.EventQueue.invokeLater(new Runnable() {
        	 
        	private  Connection createConnection(){
    	    	Connection con =null;
          	   try {
          		   String  url = "jdbc:firebirdsql:127.0.01:C:/PROJECT/saa/DATABASE/SAABKKRESTORE.GDB";

                     Class.forName("org.firebirdsql.jdbc.FBDriver");
                    con =  DriverManager.getConnection(url,"sysdba","masterkey");

       
                 } catch (Exception e) {
                     e.printStackTrace();
                     //System.out.println(e.getMessage());
                 }
                 return con;
          }
      	

            public void run() {
            	
            	
            	
                  TableSearchFrame frame;
               frame = new TableSearchFrame();
               
               DBTableModel dbModel = new DBTableModel(createConnection());
               dbModel.retrieve("SELECT NAME,DEBTOR_ACCT FROM AR_DEBTOR ORDER BY NAME");
              frame.jTable1.setModel(dbModel);
              frame.setModal(true);
              frame.setVisible(true);
              if (frame.getModalityType() ==ModalityType.DOCUMENT_MODAL){
            	  frame.getResultValue(); 
              }
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables

}
