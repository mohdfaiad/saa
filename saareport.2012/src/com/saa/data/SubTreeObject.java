/*
 * SubTreeObject.java
 * //sub tree structure
 * Created on April 10, 2007, 1:05 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.data;

/**
 *
 * @author Administrator
 */
public class SubTreeObject extends TreeObject{
    
    /** Creates a new instance of SubTreeObject */
    
    private int subLevel        =   0;
    /*subtree value data*/
    private String subName      =   "";
    /*node action*/
    private String action       =   Actions.NONE_ACTION;
    /*resource filename*/
    private String resouceName  =   "";
    
    public SubTreeObject(int level , String value , int sublevel, String subvalue ) {
        super(level,value);
        this.subLevel   = sublevel;
        this.subName    = subvalue;
    }
    public SubTreeObject(int level , String value , int sublevel, String subvalue, String act) {
        super(level, value);
        this.subLevel        =      sublevel;
        this.subName         =      subvalue;
        this.action          =      action;
    }
    
    public SubTreeObject(int level , String value , int sublevel, String subvalue, String act, String res) {
        super(level, value);
        this.subLevel        =      sublevel;
        this.subName         =      subvalue;
        this.action          =      action;
        this.resouceName     =      res;
    }
    
    public String getSubName(){
        return subName;
    }
    public int getSubLevel(){
        return subLevel;
    }
    public String toString(){
        return subName;
    }
    public String getResourceName(){
        return resouceName;
    }
    public String getAction(){
        return action;
    }
    
}
