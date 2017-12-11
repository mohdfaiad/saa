/*
 * TreeViewActionsController.java
 *
 * Created on April 20, 2007, 11:41 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.control;

/**
 *
 * @author Administrator
 */
import com.saa.logger.AppLogger;
import com.saa.ui.View.BaseView;
import com.saa.ui.View.ViewsManager;
import java.awt.event.ActionEvent;
import java.util.logging.Logger;
import javax.swing.JFrame;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.event.*;
import java.awt.Component;
import com.saa.data.*;
import com.saa.util.*;

public class TreeViewActionsController extends AbstractTreeViewActionsController {
    
    
    private  ViewsManager viewManager = null;
    private static TreeViewActionsController controller;
    private Object action;
    /*indicate parent UI that called this class*/
    private Component parrentUI = null;
    private BaseView childFrame  = null;
    private AppLogger logger  = AppLogger.getLogger();
    
    /** Creates a new instance of TreeViewActionsController */
    
    private  TreeViewActionsController(Object object){
        action = object;
        
    }
    public static TreeViewActionsController getController(Object object){
        if (controller == null){
            controller = new TreeViewActionsController(object);
            return controller;
        }
        return controller;
    }
    public void setParrentUI(Component component){
        this.parrentUI = component;
    }
    public void treeNodeActionPerformed(Object object){
        if (object instanceof SubTreeObject){
            SubTreeObject node = (SubTreeObject)object;
            viewManager = ViewsManager.getViewManager((JFrame)parrentUI);
            String user = com.saa.main.RunTimeController.getLoggedUser();
            logger.info("["+user+"]"+"treeNodeActionPerformed:"+node.getSubName()+"\tLevel:"
                    +node.getLevel()+"\tSystem:"+node.getName()+
                    "\tSubLevel:"+node.getSubLevel()+"\tsubname:"+node.getSubName());
            switch(node.getLevel()){
                //warehouse system
                case 1: //WH
                case 2: //PC
                case 4: //SA
                case 3: //PN
                case 5://AR
                {
                    /*Purchase system*/
                    switch(node.getSubLevel()){
                        //month-end invoke
                        /*All case must call viewManager first*/
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13: //FNG Stock card report
                        case 14:/*3 July,2008 Dross Audit report*/
                        case 15:/*3 July,2008 Dross Audit report*/
                        case 16:/*3 July,2008 Dross Audit report*/
                        case 17:/*3 July,2008 Dross Audit report*/
                        case 51://ar invoice
                        case 52://ar receipt tax
                        case 53://debtor ledger
                        case 54://Invoice Audit
                        case 55://Receipt Audit
                        case 56://TAX Report Audit
                        case 57://print credit note 27/3/2010
                        case 58://print debit note 27/3/2010
                            new JXAbstractAction(object);
                            break;
                        default:break;
                    }
                }
                break;
                default:break;
            }
            
        }
        
    }
    /*Warehouse System action*/
    public class JXAbstractAction extends TreeAction{
        
        
        public JXAbstractAction(Object object){
            super(object);
        }
        public void actionPerformed(Object object){
            if (object instanceof SubTreeObject){
                viewManager.getView((SubTreeObject)object );
                //   System.out.println("MonthCloseAction.actionPerformed");
                // MessageDlg.info(parrentUI,"Monthly Close performed","");
            }else{
                MessageDlg.error(parrentUI,"Error missing subtree object"+object.toString(),"");
            }
            
        }
    }
    
    
    
    
    /*Warehouse System action*/
    
    
}
