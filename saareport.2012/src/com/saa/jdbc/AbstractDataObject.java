package com.saa.jdbc;

import java.util.ArrayList;

public abstract class AbstractDataObject extends PersistentObject {
	/*value holder for PARENT-CHILD Relation*/
	private ArrayList childObjects = new ArrayList();
	private void AbstractDataObject(){
		
	}
	public AbstractDataObject(String key,Object value ){
		super(key,value);
	}
	/*remove child obejct related to parent pkValue*/
	//public abstract void removeChild(Persistent child);
	/*add child obejct related to parent pkValue*/
	//public abstract void addChild(Persistent child);	
		
	
}
