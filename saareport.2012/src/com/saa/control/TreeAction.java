/*
 * TreeAction.java
 *
 * Created on April 20, 2007, 11:50 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.control;

import com.saa.data.SubTreeObject;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 *
 * @author Administrator
 */
public class TreeAction implements TreeActionListener {
    protected SubTreeObject action;
    /** Creates a new instance of TreeAction */
    public TreeAction(Object object){
        
        if (object instanceof SubTreeObject){
            action = (SubTreeObject)object;
            actionPerformed(action);
        }
    }
    public void actionPerformed(Object object){
        //
    }
    
}
