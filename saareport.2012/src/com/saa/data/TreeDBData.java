/*
 * TreeDBData.java
 *
 * Created on April 10, 2007, 12:51 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.data;

/**
 *
 * @author Administrator
 */
import com.saa.logger.*;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Enumeration;
import java.util.List;
import java.util.Vector;
import java.util.HashMap;
import java.util.Set;
public class TreeDBData extends AbstractDBData {
    
    /*
     *Monthly closing           1	P	1	Monthly closing	Y	04/09/2007	jrx	0		Warehouse System
    Stock Balance report	1	R	2	Stock Balance report	Y	04/09/2007	jrx	0	IN001.JRXML	Warehouse System
    Monthly stock report	1	R	3	Monthly stock report	Y	04/09/2007	jrx	0	IN002.JRXML	Warehouse System
    ???????????????????????         1       R       4       ???????????????????????	Y	04/09/2007	jrx	0	IN002.JRXML	Warehouse System
    Acknowledge of ordet	2	R	1	Acknowledge of order	Y	04/09/2007	jrx	0	SA001.JRXML	Sale System
    Quotation report            2	R	1	Acknowledge of order	Y	04/09/2007	jrx	0	SA001.JRXML	Sale System
    Quotation report            2	R	2	Quotation report	Y	04/09/2007	jrx	0	SR002.JRXML	Sale System
     Melt sheet summary         3	R	1	Melt sheet summary	Y	04/09/2007	jrx	0	PR001.JRXML	Production System
     *
     *
     *SELECT FORM_NAME as "ChildName",
             MENU_INDEX as Node,
             MODULE_ID as Action,
             MENU_ITEM_INDEX as ChildNode,
             MAIN_MENU_NAME as "RootName"
     *from sys_menus where update_user = 'jrx'
     *
     
     */
    
    
    
    
    private final int SUBNAME_IDX    =  0;
    private final int NODE_IDX       =  1;
    private final int NODEACTION_IDX =  2;
    private final int SUBNODE_IDX    =  3;
    private final int NODENAME_IDX   =  4;
    private final int RESOURCE_IDX   =  5;
    
    
    private AppLogger logger = AppLogger.getLogger();
    private TreeObject treeObject;
    private ArrayList treeObjects = new ArrayList();
    /** Creates a new instance of TreeDBData */
    public TreeDBData(ResultSet rs) {
        super(rs);
        //TODO:Why the result set close before build tree
        //could use row data
        //  buildTreeNodes(rs);
        buildTreeNodes();
        
        
    }
    /*when got data then build TreeObject*/
    private void buildTreeNodes(){
        
        Iterator it = rowsdata.iterator();
        HashMap map = new HashMap();
        
        while(it.hasNext()){
            List list = (List)it.next();
            int level = Integer.parseInt(list.get(1).toString());
            String name = (String)list.get(4);
            TreeObject to = new TreeObject(level,name);
            map.put(name,to);
            
        }
        Set HostKeys = map.keySet();
        Iterator It = HostKeys.iterator();
        while (It.hasNext()) {
            String key = (String)It.next();
            TreeObject treeo = (TreeObject)map.get(key);
            System.out.println("Root Node"+treeo.getName());
            Iterator child = rowsdata.iterator();
            while(child.hasNext()){
                List list = (List)child.next();
                // System.out.println("child node data"+list);
                int level = Integer.parseInt(list.get(NODE_IDX).toString());
                String name = (String)list.get(NODENAME_IDX);
                int subLevel = Integer.parseInt(list.get(SUBNODE_IDX).toString());
                String subName = (String)list.get(SUBNAME_IDX);
                String action = (String)list.get(NODEACTION_IDX);
                String resName = (String)list.get(RESOURCE_IDX);
                if (level == treeo.getLevel()){
                    SubTreeObject subObj = new SubTreeObject(treeo.getLevel(),treeo.getName(),subLevel,subName,action,resName);
                    treeo.addNode(subObj);
                }
            }
            addTreeObject(treeo);
        }
        System.out.println("There is "+treeObjects.size()+"  node");
        Iterator treeList = treeObjects.iterator();
        System.out.println("There is "+treeObjects.size()+"  node");
        while(treeList.hasNext()){
            TreeObject tr = (TreeObject)treeList.next();
            System.out.println("Tree Level "+tr.getLevel()+" Name "+tr.getName());
            Vector v = tr.getSubNodes();
            Enumeration em = v.elements();
            while(em.hasMoreElements()){
                SubTreeObject subTree =  (SubTreeObject)em.nextElement();
                System.out.println("SubTree root Level "+subTree.getLevel()+" root Name"+subTree.getName()+" child level"+subTree.getSubLevel()+" sub name"+subTree.getSubName());
            }
        }
    }
    private void putMainNodes(){
        Iterator it = rowsdata.iterator();
        HashMap map = new HashMap();
        while(it.hasNext()){
            List list = (List)it.next();
            int level = Integer.parseInt(list.get(1).toString());
            String name = (String)list.get(4);
            TreeObject to = new TreeObject(level,name);
            
            
            map.put(name,to);
            
        }
    }
    private void addTreeObject(TreeObject obj){
        treeObjects.add(obj);
    }
    
    public ArrayList getTreeObjects(){
        return treeObjects;
    }
    
    
}
