/*
 * AbstractTreeViewActionsController.java
 *
 * Created on April 3, 2007, 7:48 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.control;

/**
 *
 * @author Administrator
 */
public abstract class AbstractTreeViewActionsController implements ControllerInterface {
    
    /** 
     * Creates a new instance of AbstractTreeViewActionsController
     */
    public AbstractTreeViewActionsController() {
    }
    public void process(){
        //do some pro
    }
    public void init(){
    }
    public void destroy(){
    }
    public abstract void treeNodeActionPerformed(Object object);
    
}
