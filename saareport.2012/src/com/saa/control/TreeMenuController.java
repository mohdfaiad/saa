/*
 * TreeMenuController.java
 * 1.get Menus from database
 * 2.Build Tree menus
 * Created on April 10, 2007, 9:59 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.control;

/**
 *
 * @author Administrator
 */
import com.saa.data.SubTreeObject;
import com.saa.data.TreeDBData;
import com.saa.data.TreeObject;
import com.saa.jdbc.AbstractDBManager;
import com.saa.logger.AppLogger;
import java.lang.StringBuffer;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Vector;
import java.util.Iterator;

import javax.swing.ImageIcon;
import javax.swing.tree.DefaultMutableTreeNode;
public class TreeMenuController  implements ControllerInterface{
    
    /*
     *SELECT FORM_NAME as ChildName,
             MENU_INDEX as Node,
             MODULE_ID as NodeAction,
             MENU_ITEM_INDEX as childNode,
             MAIN_MENU_NAME as RootName
     from sys_menus where update_user = 'jrx'
     order by MENU_INDEX
     */
    private static AppLogger logger = AppLogger.getLogger();
    private static TreeMenuController controller;
    private String queryString = "";
    private AbstractDBManager dbm ;
    private TreeDBData treeDB;
    private ArrayList treeNodes = new ArrayList();
    private ArrayList buildNodes  = new ArrayList();
    /** Creates a new instance of TreeMenuController */
    private TreeMenuController(AbstractDBManager dbm, String sql){
        this.dbm = dbm;
        this.queryString = sql;
        process();
    }
    public void init(){
    }
    public void destroy(){
    }  
    
    public static TreeMenuController createTreeMenuController(AbstractDBManager dbm, String sql) {
        
        if (controller == null){
            controller = new TreeMenuController(dbm, sql);
            return controller;
        }
        return controller;
        
    }
    public void process(){
        ResultSet rs = null;
        if (dbm != null){
            try{
                ResultSet rss = dbm.executeQuery(queryString);
                rs = rss;
            }catch(Exception e){
                logger.severe("Could not execute query["+queryString+"] ["+e.getMessage()+"]");
            }
            if (rs != null){
                treeDB = new TreeDBData(rs);
                treeNodes = treeDB.getTreeObjects();
                buildTreeNodes(treeNodes);
                
            }else{
                
            }
        }else{
            logger.severe("Could not process TreeMenuController dba is null");
        }
        
    }
    private ArrayList buildTreeNodes(ArrayList data){
        ArrayList nodes = new ArrayList();
        //DefaultMutableTreeNode[] nodes = new DefaultMutableTreeNode [data.size()];
        DefaultMutableTreeNode node;
        DefaultMutableTreeNode subNode;
        for(int i =0; i<data.size();i++){
            TreeObject tobj = (TreeObject)data.get(i);
            node = new DefaultMutableTreeNode(tobj);
            
            logger.info("Building...Image ICon Node>>"+tobj.getName());
            //add subnode
            Vector subNodedata = tobj.getSubNodes();
            for(int subNodeIndex =0; subNodeIndex<subNodedata.size();subNodeIndex++){
                SubTreeObject subObj =  (SubTreeObject)subNodedata.get(subNodeIndex);
                 subNode = new DefaultMutableTreeNode(subObj);
                logger.info("Building...subNode>>"+subObj.getSubName());
                node.add(subNode);
                
            }
            nodes.add(node);
        }
        buildNodes = nodes;
        return nodes;
    }
    public ArrayList getBuiltNode(){
        return buildNodes;
    }
    
    public TreeDBData getTreeData(){
        return treeDB;
    }
}
