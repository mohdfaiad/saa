/*
 * TreeView.java
 *
 * Created on April 5, 2007, 2:16 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.View;

/**
 *
 * @author Administrator
 */
import java.awt.Font;

import com.saa.control.TreeViewActionsController;
import com.saa.data.Actions;
import com.saa.data.SubTreeObject;
import com.saa.ui.View.TreeViewModel;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.JFrame;
import javax.swing.JTree;

public class TreeView extends TreeViewModel{
    
    /** Creates a new instance of TreeView */
    TreeViewActionsController controller = null;
    private JFrame frame;
    public JTree getTree(){
    	return tree;
    }
    public TreeView(String messageRoot) {
        super(messageRoot);
   

      //  this.setFont(new Fon)
    }
  
    public  void createNodes(DefaultMutableTreeNode top){
        //GET DATA FROM USER MENUS
        
    }
    /*set main frame later use when create controller*/
    public void setFrame(JFrame f){
        this.frame = f;
    }
    /*also create public accessibility of private frame*/
    public JFrame getFrame(){
        return frame;
    }
    
    public void doubleClickPerformed(Object object){
     super.doubleClickPerformed(object);
      DefaultMutableTreeNode crnode =  (DefaultMutableTreeNode)object;
      if (crnode.getUserObject() instanceof SubTreeObject){
       SubTreeObject node = (SubTreeObject)crnode.getUserObject();
        /*please note that subLevel can be zero*/
        if (node.getSubLevel() >=0){
                controller = TreeViewActionsController.getController(node);
                controller.setParrentUI(getFrame());
                controller.treeNodeActionPerformed(node);
                if (node.getAction().equals(Actions.PROCESS_ACTION)){
                    System.out.println("Perform process action "+node.getSubName());
                }else{
                     System.out.println("Perform report action "+node.getSubName()+" loading..resourceName"+node.getResourceName());
                }
        }
        System.out.println("doubleClickPerformed :"+ node.getClass().toString());
      }
    
    }
//          //  SubTreeObject node = (SubTreeObject)object;
//            if (node.getSubLevel() >0){
//                if (node.getAction().equals(Actions.PROCESS_ACTION)){
//                    System.out.println("Perform process action "+node.getSubName());
//                }else{
//                     System.out.println("Perform report action "+node.getSubName()+" loading..resourceName"+node.getResourceName());
//                }
//            }
        //
   
    
}
