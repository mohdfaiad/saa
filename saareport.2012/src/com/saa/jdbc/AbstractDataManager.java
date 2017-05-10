package com.saa.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import com.saa.logger.AppLogger;

public class AbstractDataManager implements BaseDataManager {
	/* update only change value to database */
	/*
	 * select * from rdb$relation_fields where
	 * rdb$relation_fields.rdb$relation_name ='AR_DEBTOR' ORDER BY
	 * rdb$relation_fields.rdb$field_position
	 */
	private static Connection conn = null;
	protected static String tableName = "";

	protected static AppLogger log = AppLogger.getLogger();

	private static List columnsHolder = new ArrayList();

	/* SQL Templete */

	public static final String COMMA = ",";
	public static final String SQL_PARAM = "?";
	public static final String EQUALTO = "=";
	public static final String SQL_SELECT = "SELECT\t";
	public static final String SQL_INSERT = "INSERT\t";
	public static final String SQL_DELETE = "DELETE\t";
	public static final String SQL_UPDATE = "UPDATE\t";
	public static final String SQL_WHERE = "\tWHERE\t";
	public static final String SQL_FROM = "FROM\t";
	public static final String SQL_SET = "\tSET\t";
	public static final String SQL_EXECUTE = "execute procedure\t";
	public static final String SQL_ORDERBY = "ORDER BY\t";
	public static final String SQL_SELECTFROM = SQL_SELECT + "\t* FROM\t";
	public static final String SQL_INSERTINTO = SQL_INSERT + "\tINTO\t";
	public static final String SQL_DELETEFROM = SQL_DELETE + "\t FROM\t";

	public static final int DEFAULT_PARAM_INDEX = 1;

	/* ping database command */
	public static final String PING = "select * from rdb$database";
	/* system table object map */
	public static final String SYSOBJECTS = "rdb$relation_fields\t";
	/* System object KeyName map with TABLE */
	public static final String SYSOBJECT_RELATION_NAME = "rdb$relation_name\t";
	public static final String SYSOBJECT_FIELD_NAME ="rdb$field_name\t";
	/**/
	public static final String SYSOBJECT_FIELD_POSITION = "rdb$field_position";
	private static int fieldCount = 0;

	/* default constructor pass current action connection */
	public AbstractDataManager(Connection connection, String tblName) {
		this.conn = connection;
		this.tableName = tblName;
		columnsHolder = getFields(tblName);
		fieldCount = columnsHolder.size();
	}

	/* abstract retrive table expected 1 row retrieve per time */
	public DataObject retrieve(String pkName, Object pkValue) {
		DataObject pObject = new DataObject(pkName, pkValue);
		pObject.setColumns(columnsHolder.toArray());
		pObject.setTableName(tableName);

		Statement stm = null;
		ResultSet rs = null;
		String cmd = "";
		try {
			stm = conn.createStatement();
			cmd = SQL_SELECTFROM + tableName + SQL_WHERE
			+ pkName + "=" + pkValue.toString();
			rs = stm.executeQuery(cmd);
			while (rs.next()) {
				for (int i = 0; i < columnsHolder.size(); i++) {
					Object column = columnsHolder.get(i);
					Object value = rs.getObject(i+1);
					pObject.setValue(column, value);
				}
			}
			rs.close();
			stm.close();

		} catch (SQLException sqlex) {
			sqlex.printStackTrace();
		}

		return pObject;
	}
	/**/
	public Object retrieveMaxByColumn(String keyColumn,Object keyValue,Object resultColumm){
		
		Object resultObject = null;
		PreparedStatement stm = null;
		ResultSet rs = null;
		StringBuffer sb = new StringBuffer();
		sb.append("SELECT MAX("+keyColumn+")  FROM " + tableName+" WHERE "+keyValue+"=?" );
		try {
			stm = conn.prepareStatement(sb.toString());
			stm.setObject(1, resultColumm.toString());
			//stm.setObject(2, resultColumm);
			rs = stm.executeQuery();
			if (rs.next())			resultObject = rs.getObject(1);
			} catch (SQLException e) {
			log.severe(e.getMessage());
		}
		return resultObject;
		
	}
	public List retrieveAllByColumn(Object resultColumm){
		//Object resultObject = null;
		List list = new ArrayList();
		Statement stm = null;
		ResultSet rs = null;
		StringBuffer sb = new StringBuffer();
		sb.append("SELECT "+resultColumm.toString()+" FROM " + tableName );
		try {
			stm = conn.createStatement();
			//stm.setObject(1, resultColumm);
			//stm.setObject(2, resultColumm);
			rs = stm.executeQuery(sb.toString());
			while(rs.next()){
				Object resultObject = rs.getObject(1);
				list.add(resultObject);
				
			}
			} catch (SQLException e) {
			log.severe(e.getMessage());
		}
		return list;
		
	}
	public List retrieveAll(String pkName){
		List list = new ArrayList();
		Statement stm = null;
		ResultSet rs = null;
		StringBuffer sb = new StringBuffer();
		sb.append(SQL_SELECTFROM + tableName );
		try {
			stm = conn.createStatement();
			rs = stm.executeQuery(sb.toString());
			while (rs.next()) {
				DataObject pObject = new DataObject(pkName, rs
						.getObject(pkName));
				pObject.setColumns(columnsHolder.toArray());
				for (int fieldIndex = 1; fieldIndex <= fieldCount; fieldIndex++) {
					pObject.setValue(getColumnName(fieldIndex-1), rs
							.getObject(fieldIndex));
				}
				list.add(pObject);

			}
		} catch (SQLException e) {
			log.severe(e.getMessage());
		}

		return list;
	}


	/* @param criteria sqlwhere criteria that match with tableName */
	
	public  List retrieveWhere(String pkName, String keyField,
			String criteria) {
		List list = new ArrayList();
		Statement stm = null;
		ResultSet rs = null;
		StringBuffer sb = new StringBuffer();
		sb.append(SQL_SELECTFROM + tableName + SQL_WHERE + keyField + EQUALTO
				+ criteria);
		try {
			stm = conn.createStatement();
			rs = stm.executeQuery(sb.toString());
			while (rs.next()) {
				DataObject pObject = new DataObject(pkName, rs
						.getObject(pkName));
				pObject.setColumns(columnsHolder.toArray());
				for (int fieldIndex = 1; fieldIndex <= fieldCount; fieldIndex++) {
					pObject.setValue(getColumnName(fieldIndex-1), rs
							.getObject(fieldIndex));
				}
				list.add(pObject);

			}
		} catch (SQLException e) {
			log.severe(e.getMessage());
		}

		return list;
	}

	/***************************************************************************
	 * base sql update function
	 * 
	 * @param pkName
	 *            <p>
	 *            primary key fieldName
	 *            </p>
	 * @param pkValue
	 *            <p>
	 *            primary key update value
	 *            </p>
	 * @param changed
	 *            <p>
	 *            Changed value only change will generate sql prepare statement
	 *            </p>*
	 **************************************************************************/
	public void update(String entity ,String pkName, Object pkValue, HashMap changed) {
		if (changed.size() <= 0) {
			new Exception("update without changed");
			return;
		}
		Set keySet = changed.keySet();
		int keySize = keySet.size();
		int keyIndex = 1;
		Iterator it = keySet.iterator();
		tableName = entity;
		StringBuffer sb = new StringBuffer();
		sb.append(SQL_UPDATE);
		sb.append(tableName);
		sb.append(SQL_SET);
		while (it.hasNext()) {
			Object object = it.next();
			if (keyIndex < keySize) {
				sb.append(object.toString() + EQUALTO + SQL_PARAM
						+ COMMA);
			} else {
				sb.append(object.toString() + EQUALTO +SQL_PARAM);
			}
			keyIndex++;
		}
		keyIndex = 1;//reset param index lately use this param again
		sb.append(SQL_WHERE);
		sb.append(pkName + EQUALTO + SQL_PARAM);
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sb.toString());
			System.out.println("create update statement:"+sb.toString());
			Iterator ito = keySet.iterator();
			while (ito.hasNext()) {
				Object object = ito.next();
				stm.setObject(keyIndex, changed.get(object));
				System.out.println("Seting update  param:"+changed.get(object).toString());
				keyIndex++;
			}
			//last index for where param
			stm.setObject(keyIndex, pkValue);
			stm.execute();
			log.info("Updated:" + sb.toString() + "\t" + stm.getUpdateCount()
					+ " has been effected");
		} catch (SQLException e) {
			log.severe("Could not update " + e.getMessage());
		}

	}
	public void update(String pkName ,Object pkValue , HashMap changed){
		
	}

	// abstract void update

	/* insert new persistent object to database */
	public void insert(PersistentObject pObject) {
		//PersistentObject pObject = (PersistentObject) persistent;
		PreparedStatement stm = null;
		StringBuffer col = new StringBuffer();
		// Statement stm = null;
		StringBuffer sb = new StringBuffer();
		int paramSize = columnsHolder.size();
		sb.append(SQL_INSERTINTO);
		sb.append(tableName);
		sb.append("\tVALUES(");
		sb.append(getPrepareParamStatement(paramSize) + ")");
		log.info("Prepareing insert statement [" + sb.toString() + "]");
		try {
			stm = conn.prepareStatement(sb.toString());
				try {
					for (int paramIndex = 1; paramIndex <= paramSize; paramIndex++) {
						Object nameObject = columnsHolder.get(paramIndex-1);
						Object valueObject =pObject.getValue(nameObject.toString().trim());
						stm.setObject(paramIndex, valueObject);
					}
				} catch (Exception ee) {
					log.severe("Params setting error " + ee.getMessage());
				}
				try{
				stm.execute();
				}catch(Exception ex){
					log.warning("execute statement error "+ex.getMessage());
				}
				log.info("insert:" + tableName + "\t(" + stm.getUpdateCount()
						+ ")rows have been effected");
			
		} catch (SQLException ex) {
			log.severe("insert error"+ex.getMessage());
		}
		try{
			stm.close();
		}catch(Exception ex){
			log.warning("close statement error"+ex.getMessage());
		}

	}

	/* general interface method to delete value from database */
	public void delete(String pkName, Object pkValue) {
		PreparedStatement stm = null;
		String cmd = "";
		try {
			cmd = SQL_DELETEFROM + tableName + SQL_WHERE
			+ pkName + "="+ SQL_PARAM;
			stm = conn.prepareStatement(cmd);
			stm.setObject(DEFAULT_PARAM_INDEX, pkValue);
			stm.execute();
			log.info("deleted:" + tableName + "\t(" + stm.getUpdateCount()
					+ ")rows have been effected");
		} catch (SQLException ex) {
			log.severe(ex.getMessage());
		}
		try {
			stm.close();
		} catch (Exception e) {
			log.severe(e.getMessage());

		}

	}

	/*
	 * general database store procedure execute can be any data types pass
	 * through store procedure
	 */
	public void execute(String spName, Object[] args) {

		PreparedStatement stmt = null;
		StringBuffer sb = new StringBuffer();
		sb.append(SQL_EXECUTE);
		sb.append(spName);
		sb.append(getPrepareParamStatement(args.length));
		try {
			try {
				stmt = conn.prepareStatement(sb.toString());
				for (int paramIndex = 0; paramIndex < args.length; paramIndex++) {
					stmt.setObject(paramIndex + 1, args[paramIndex]);
				}
				stmt.execute();
				log.info("executed:" + spName + "\t(" + stmt.getUpdateCount()
						+ ")rows");
			} catch (SQLException ex) {
				log.severe(ex.getMessage());
			}
		} finally {

		}

	}

	/**
	 * @param numberofParam =
	 *            number of param ? to repeat in PrepareStatement
	 */
	public static String getPrepareParamStatement(int numberOfParams) {
		StringBuffer sb = new StringBuffer();
		for (int i = 1; i <= numberOfParams; i++) {
			// insert pattern "?,"
			if (i < numberOfParams) {
				sb.append(SQL_PARAM + COMMA);
			} else {
				sb.append(SQL_PARAM);
			}
		}
		return sb.toString();

	}

	/* get column meta data */
	public static List getFields(String tableName) {
		List l = new ArrayList();
		String prepareSql = SQL_SELECT + SYSOBJECT_FIELD_NAME + SQL_FROM
				+ SYSOBJECTS + SQL_WHERE + SYSOBJECT_RELATION_NAME + "=?"
				+ SQL_ORDERBY + SYSOBJECT_FIELD_POSITION;
		PreparedStatement stmt = null;
		ResultSet rslt = null;
		try {
			stmt = conn.prepareStatement(prepareSql);
			stmt.setObject(1, tableName);
			// stmt.setO
			rslt = stmt.executeQuery();
			while (rslt.next()) {
				l.add(rslt.getObject(1).toString().trim());
			}
		} catch (SQLException sqlex) {
			sqlex.printStackTrace();
			log.severe(sqlex.getMessage());

		}
		return l;
	}

	public static Object getColumnName(int columnIndex) {
		Object columnName = columnsHolder.get(columnIndex).toString();
		return columnName;
	}

	public List getColumnsHolder() {
		return columnsHolder;
	}

	public static int getFieldCount() {
		return fieldCount;
	}

	public static void setFieldCount(int fieldCount) {
		AbstractDataManager.fieldCount = fieldCount;
	}

}
