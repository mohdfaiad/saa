package com.saa.jdbc;

import java.util.HashMap;
import java.util.List;

public interface BaseDataManager {

	/*update only change value to database*/
	public void update(String pkName ,Object pkValue , HashMap changed);
	/*insert new persistent object to database*/
	public void insert(PersistentObject pObject);
	/*general interface method to delete value from database */
	public void delete(String pkName ,Object pkValue);
	
	/*general database store procedure execute can be any data types pass through store procedure*/
	public void execute(String spName ,Object[] args);
	
	
	

}
