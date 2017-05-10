package com.saa.jdbc;

import com.saa.jdbc.AbstractDataObject;
import com.saa.jdbc.Persistent;

public class SampleDataObject extends AbstractDataObject {

	public SampleDataObject(String pkName,Object pkValue){
		super(pkName,pkValue);
	}
	public void addChild(Persistent child) {
		// TODO Auto-generated method stub

	}

	public void removeChild(Persistent child) {
		// TODO Auto-generated method stub

	}

}
