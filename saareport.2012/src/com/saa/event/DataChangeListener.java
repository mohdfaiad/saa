/*
 * DataChangeListener.java
 * 
 * Created on Apr 19, 2008, 12:07:26 AM
 * 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.saa.event;

import java.util.EventListener;

/**
 *
 * @author Administrator
 */
public interface DataChangeListener extends EventListener {
    public void firedUpdate(DataChangeEvent event);
    public void fireInsert(DataChangeEvent event);  
}
