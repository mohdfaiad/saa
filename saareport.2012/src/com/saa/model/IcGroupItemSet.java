package com.saa.model;

import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;



public class IcGroupItemSet implements Serializable {
	  private Set items;
	  public IcGroupItemSet() {
	        items = new LinkedHashSet();
	    }

	    /**  */
	    public void addItem(IcGroupItem item) {
	        items.add(item);
	    }

	    /**  */
	    public void removeItem(IcGroupItem item) {
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
	    
	    
	    public IcGroupItem getByPK(String groupID) {
	    	IcGroupItem rv = null;
	        Iterator it = items.iterator();
	        IcGroupItem item = null;

	        while (it.hasNext()) {
	            item = (IcGroupItem)it.next();

	            if (item.getGroupID() == groupID) {
	                rv = item;
	                break;
	            } // if
	        } // while

	        return rv;
	    } // getByPK()


}
