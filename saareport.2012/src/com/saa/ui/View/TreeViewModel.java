/*
 * TreeViewModel.java
 *
 * Created on April 4, 2007, 4:06 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.View;

/**
 *
 * @author Administrator
 */


import java.awt.event.MouseListener;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;
import javax.swing.JTree;
import javax.swing.tree.TreePath;

import javax.swing.ImageIcon;
import javax.swing.JPanel;
import javax.swing.JFrame;
import javax.swing.UIManager;
import javax.swing.JScrollPane;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeCellRenderer;
import javax.swing.tree.TreeSelectionModel;
import javax.swing.event.TreeSelectionEvent;
import javax.swing.event.TreeSelectionListener;
import java.awt.GridLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.Dimension;


public class TreeViewModel extends JPanel implements  TreeSelectionListener,MouseListener{
    
    /**
     * Creates a new instance of TreeViewModel
     */
    protected JTree tree;
    protected DefaultMutableTreeNode treeNode;
    /*kept current TreePath use path.getLastPathComponent() to get current clicked object*/
    protected TreePath treePath;
    /*default width height*/
    private int panelWidth  = 450 ;
    private int panelHeight =   450;
   /*default width height*/
    /*constructor area*/
    private TreeViewModel(){
    }
    public TreeViewModel(String messageRoot , DefaultTreeCellRenderer cellRender){
    	this(messageRoot);
    }
    
    public TreeViewModel(String messageRoot) {
    //1.create layout
         super(new GridLayout());
        //2.Make to node
         //3.put root node to the tree
          treeNode = new DefaultMutableTreeNode(messageRoot);
   
          tree= new JTree(treeNode);
          
          
          
       

          //4.set selection behavior
          tree.getSelectionModel().setSelectionMode
                (TreeSelectionModel.SINGLE_TREE_SELECTION);
          
          /****/
           tree.addMouseListener(this);
           
       
          /****/
          //5.modifid node 
          createNodes(treeNode);
          //6.put tree on scrollable area
          JScrollPane treeView = new JScrollPane(tree);
           //7.Create display area
          Dimension minimumSize = new Dimension(panelWidth, panelHeight);
        // htmlView.setMinimumSize(minimumSize);
          //8.set same size as treeview
          treeView.setMinimumSize(minimumSize);
          //9.add view to panel
          add(treeView);
     }
    
    /*constructor area*/
    
    /*MouseEvent interface*/
    public void mousePressed(MouseEvent e) {}
    public void mouseReleased(MouseEvent e) {}
    public void mouseEntered(MouseEvent e) {}
    public void mouseExited(MouseEvent e) {}
  
    //support OnMouseClick on treeNode
    
    /**/
    public  void doubleClickPerformed(Object object){
        System.out.println("Base doubleClick Performed"+object.toString());
    }
    public void mouseClicked(MouseEvent e){
        JTree tree = (JTree)e.getSource();
        int x = e.getX();
        int y = e.getY();
        TreePath path = tree.getPathForLocation(x, y);
        if (path != null) {
                 if (e.getClickCount() == 2){
                    System.out.println(path.getLastPathComponent().toString());
                    doubleClickPerformed(path.getLastPathComponent());
                 }
        } else {
            System.out.println("Could note get treePath");
        }
    }
    /*MouseEvent interface*/
    
    /*treeListener Events*/
    public void valueChanged(TreeSelectionEvent e){
    }
    public  void createNodes(DefaultMutableTreeNode top){
    }
    public void addNode(DefaultMutableTreeNode node){
        treeNode.add(node);
    }
   /*treeListener Events*/
}
    
    /*treeListener Events*/
