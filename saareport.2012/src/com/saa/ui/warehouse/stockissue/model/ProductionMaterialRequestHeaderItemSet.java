package com.saa.ui.warehouse.stockissue.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

public class ProductionMaterialRequestHeaderItemSet implements Serializable {
	  private Set items;
	  public ProductionMaterialRequestHeaderItemSet() {
	        items = new LinkedHashSet();
	    }

	    /**  */
	    public void addItem(ProductionMaterialRequestHeaderItem item) {
	        items.add(item);
	    }

	    /**  */
	    public void removeItem(ProductionMaterialRequestHeaderItem item) {
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
            
	    

}
