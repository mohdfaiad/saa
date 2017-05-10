package com.saa.ui.binding;

import java.util.HashMap;

public class JXAbstractRowData {
	
		HashMap rowdata = new HashMap();
		public Object getValue(Object key){
		 Object o = rowdata.get(key);
		// rowdata.
		 return o;
		 
		}
		public JXAbstractRowData(HashMap data){
			rowdata = data;
		}
	

}
