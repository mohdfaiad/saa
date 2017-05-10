/*
 * ProductionMaterialRequestDetailItemSet.java
 * 
 * Created on Apr 19, 2008, 3:39:32 AM
 * 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.saa.ui.warehouse.stockissue.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 *
 * @author Administrator
 */
public class ProductionMaterialRequestDetailItemSet implements Serializable{

  
    
    
           private ArrayList items;
	  public ProductionMaterialRequestDetailItemSet() {
	        items = new ArrayList();
	    }

	    /**  */
	    public void addItem(ProductionMaterialRequestDetailItem item) {
	        items.add(item);
	    }

	    /**  */
	    public void removeItem(ProductionMaterialRequestDetailItem item) {
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
                return items;
            }
            

}
