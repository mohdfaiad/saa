/*
 * TreeObject.java
 * accociate tree data
 * Created on April 10, 2007, 12:58 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.data;

/**
 *
 * @author Administrator
 */
import java.util.Vector;
public class TreeObject {
    
    /**
     * Creates a new instance of TreeObject
     */
    protected int level;
    protected String name;
    private Vector subNodes = new Vector();
    
    private TreeObject(){
        //
    }
    public TreeObject(int id , String value) {
        this.level = id;
        this.name = value;
    }
    
    public int getLevel(){
        return level;
    }
    public String getName(){
        return name;
    }
    
    public void addNode(Object o){
        subNodes.add(o);
               
    }
    public Vector getSubNodes(){
        return subNodes;
    }
    /*the secrete of JTree if we would like to add and object
     *the value that want to display must be implement toString()
     */
    public String toString(){
        return name;
    }
    
}
