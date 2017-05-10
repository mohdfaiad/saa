package com.saa.jdbc;

import java.util.HashMap;

public class PersistentObject implements Persistent {
	/**Primary Key Columm name*/
	protected  	String primaryName			= "";
	protected 	Object primaryValue 		= null;
	protected   String tableName			= "";  
	//private 
	/**/
	protected Object[] columns;
	protected HashMap valueHolder = new HashMap();
	/*default basePersistent object */
	public PersistentObject(String key , Object value ){
		primaryName 	= key;
		primaryValue	= value;
	
	}
	private PersistentObject(){
		
	}
	public String getPrimaryName() {
		return primaryName;
	}
	public void setPrimaryName(String primaryName) {
		this.primaryName = primaryName;
	}
	public Object getPrimaryValue() {
		return primaryValue;
	}
	public void setPrimaryValue(Object primaryValue) {
		this.primaryValue = primaryValue;
	}
	public Object[] getColumns() {
		return columns;
	}
	public void setColumns(Object[] columns) {
		this.columns = columns;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public Object getValue(Object keyColumn){
		Object obj = null;
		obj = valueHolder.get(keyColumn);
		return obj;
	}
	
	public void setValue(Object key, Object value){
		valueHolder.put(key, value);
		
	}
	
	
	

}
