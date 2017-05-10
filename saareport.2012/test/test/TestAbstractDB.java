/*
 * TestAbstractDB.java
 *
 * Created on April 3, 2007, 4:32 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package test;
import com.saa.Controller.DBController;
import com.saa.Controller.TreeMenuController;
import com.saa.Utils.SystemConfig;
import com.saa.data.SQLBuilder;
import com.saa.data.TreeDBData;
import com.saa.jdbc.AbstractDBManager;
import com.saa.ui.View.TreeView;
import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import javax.swing.*;
import java.sql.*;
import java.util.Iterator;
import java.util.Vector;
import java.util.ArrayList;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.AbstractAction;
import javax.swing.Action;
import javax.swing.event.*;
import javax.swing.border.Border;

/**
 *
 * @author Administrator
 */
public class TestAbstractDB {
    
    /** Creates a new instance of TestAbstractDB */
   static class MenuAction extends AbstractAction {
        public MenuAction(String text, ImageIcon icon,
                            String desc, Integer mnemonic) {
            super(text, icon);
            putValue(SHORT_DESCRIPTION, desc);
            putValue(MNEMONIC_KEY, mnemonic);
        }
        public void actionPerformed(ActionEvent e) {
            System.out.println("Action for second button/menu item"+e);
        
        }
    }
    public TestAbstractDB() {
    }
    static private Vector lists = new Vector();
    /**
     * @param args the command line arguments
     */
    static class Cust{
        private String name = "";
        public Cust(String name){
            this.name = name;
        }
        public String getName(){
            return name;
        }
    }
    public static void main(String[] args) {
        SystemConfig config = new SystemConfig("system");
        System.out.println("#################################################");
        System.out.println("READ JDBC_DRIVER:\t"+config.getProperty("JDBC_DRIVER"));
        System.out.println("READ JDBC_URL:\t"+config.getProperty("JDBC_URL"));
        System.out.println("#################################################");
        String databaseURL =config.getProperty("JDBC_URL"); 
        String user = ""; 
        String password = ""; 
        String driverName = config.getProperty("JDBC_DRIVER"); 
        System.out.println("Loding db config");
        System.out.println("Creating dbmgr.....");
        AbstractDBManager dbmgr = null;
        //= new AbstractDBManager(driverName,databaseURL,user,password);
        DBController dbctrl = DBController.createDBController(driverName,databaseURL,user,password);
        dbmgr = dbctrl.getDBManager();
        dbmgr.dbPing("select * from rdb$database");
        System.out.println("Sending db command");
       // System.out.println("Destroying....dbmgr");
        
        
        buildTreeMenus(dbmgr);
        //dbmgr.getConnection().getMetaData();
       /* ResultSetMetaData rm = null;
        try
        {
        ResultSet rs = dbmgr.executeQuery("select name from so_customers");
        
        rm = rs.getMetaData();
            while(rs.next()){
            
                //System.out.println(rs.getString(1));
                Cust c = new Cust(rs.getString(1));
                lists.add(c);
               // rs.getM
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        Iterator it = lists.iterator();
        Vector d = new Vector();
        while (it.hasNext()){
            Cust Obj = (Cust)it.next();
            Vector v = new Vector();
            v.addElement(Obj.getName());
              System.out.println("Customer Name :"+Obj.getName());
            d.add(v);
            //System.out.Println("CustomerName:"+Obj.getName());
        }
        //create jtable header information
        Vector h = new Vector();
        try
        {
            
         h.addElement(rm.getColumnName(1));
        }
        catch(Exception e){
            e.printStackTrace();
        }
        **/
       
      /*
        JFrame f = new JFrame("Customer information Center");
        Container cp = f.getContentPane();
        cp.setLayout(new GridLayout());
        cp.add(new JScrollPane(new JTable(d,h)));
        f.setSize(450,450);
        f.setVisible(true);
     */           
        
        /*display data in table*/
        
         /*display data in table*/
        dbmgr.destroy();
         
        dbmgr.destroy();
     
    }
    public static void buildTreeMenus(AbstractDBManager dgm){
        TreeMenuController treemenu = TreeMenuController.createTreeMenuController(dgm ,SQLBuilder.getTreeMenuSelect());
       // TreeDBData trdata = treemenu.getTreeData();
        ArrayList       nodelist = treemenu.getBuiltNode();
        DefaultMutableTreeNode node = null;
        TreeView tv = new TreeView("FirstView@Report");
        Iterator it = nodelist.iterator();
        while(it.hasNext()){
            tv.addNode((DefaultMutableTreeNode)it.next() );
        }
        
        JPanel tabPanel= new JPanel();
        Border padding = BorderFactory.createEmptyBorder(20,20,5,20);
        tabPanel.setBorder(padding);
        
        JTabbedPane tabbedPane = new JTabbedPane();
        tabbedPane.addTab("Main", null,
                          tabPanel,
                          "Main system control panel"); //tooltip text
      

        
        JPanel statusbar = new JPanel(new GridLayout(1,1));
        JSplitPane split= new JSplitPane(JSplitPane.VERTICAL_SPLIT);
        JLabel statusText = new JLabel("StatusBar:");
        statusbar.add(statusText);
        JFrame f = new JFrame("FirstReport Center@");
        Container cp = f.getContentPane();
        cp.setLayout(new GridLayout(1,1));
        cp.add(new JScrollPane(tv), BorderLayout.CENTER);
       // cp.add(statusbar);
      //  split.setTopComponent(tv);
        //split.setBottomComponent(statusbar);
         //cp.add(split);
      // cp.add(statusbar, BorderLayout.PAGE_END);
        
        
        f.setSize(450,700);
        JMenu mm = new JMenu("Systems");
        JMenuItem imm = new JMenuItem("Monthly Close");
        ImageIcon ico = new ImageIcon("");
        MenuAction act = new MenuAction("Monthly ProcessArg1",ico,"Monthly Closexxxxxx",new Integer(1));
        imm.setAction(act);
        
       // imm.setAction()
        mm.add(imm);
        mm.addSeparator();
        JMenuItem imm1 = new JMenuItem("Do Something");
        mm.add(imm1);
        JMenuBar mb = new JMenuBar();
        mb.add(mm);
        f.setJMenuBar(mb);
        f.setVisible(true);
        
     
        
        
       // JMenu editMenu = createEditMenu();
       //JMenu styleMenu = createStyleMenu();
     
       // mb.add(editMenu);
       // mb.add(styleMenu);
      
    }
    
}
