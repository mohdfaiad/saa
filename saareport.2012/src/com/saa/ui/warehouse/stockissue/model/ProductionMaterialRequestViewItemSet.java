/*
 * ProductionMaterialRequestViewItemSet.java
 * 
 * Created on May 2, 2008, 3:21:13 PM
 * 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.saa.ui.warehouse.stockissue.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/**
 *
 * @author Administrator
 */
public class ProductionMaterialRequestViewItemSet implements Serializable{

    private List items =null;
    
    
    public ProductionMaterialRequestViewItemSet() {
        items = new ArrayList();
    }
    
    
      public void addItem(ProductionMaterialRequestViewItem item) {
	        items.add(item);
     }

    /**  */
    public void removeItem(ProductionMaterialRequestViewItem item) {
        items.remove(item);
    }

    /**  */
    public void removeAll() {
        items.clear();
    }

    /**  */
    public int size() {
        return items.size();
    }

    /**  */
    public Iterator iterator() {
        return items.iterator();
    }
    public ArrayList getList(){
        return (ArrayList)items;
    }
            
	    

}
