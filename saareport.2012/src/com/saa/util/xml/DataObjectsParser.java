package com.saa.util.xml;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/**
 * @author Administrator
 * 
 */
public class DataObjectsParser {
	private static String DB_ATTRIBUTE = "db-attribute";
	private static String DB_ATTRIBUTE_NAME = "name";
	private static String DB_ENTITY = "db-entity";
	private static String DB_ENTITY_ATTRIBUTE_NAME = "name";
	private static NodeList dbAttributes = null;
	private static NodeList dbEntities = null;
	private static Document document;
	private static String fileName = "";
	private static String rootNodeName = "";
	
	private static DataObjectsParser parser = null;

	public  Object getAttribute(String entityName,
			String childAttributeName, String attributeKey) {
		Object attr = null;
		for (int entitesIndex = 0; entitesIndex < dbEntities.getLength(); entitesIndex++) {
			Element element = (Element) dbEntities.item(entitesIndex);
			System.out.println("Extract db-entity"+element.getAttribute(DB_ENTITY_ATTRIBUTE_NAME));
			if (element.getAttribute(DB_ENTITY_ATTRIBUTE_NAME).equals(
					entityName)) {
				dbAttributes =  ((Element) dbEntities.item(entitesIndex))
				.getElementsByTagName(DB_ATTRIBUTE);
				for (int attributeIndex = 0; attributeIndex < dbAttributes
						.getLength(); attributeIndex++) {
					try {
						Element attElement = (Element) dbAttributes
								.item(attributeIndex);
						System.out.println("Extract attribute"+attElement.getAttributeNode(DB_ATTRIBUTE_NAME));
						if (attElement.getAttributeNode(DB_ATTRIBUTE_NAME).getValue().equals(childAttributeName)) {
							// attr
							// =(Attr).attElement.getAttributeNode(attributeKey);
							attr = attElement.getAttributeNode(attributeKey.toString()).getValue();
							return attr;
						}
					} catch (Exception e) {
						System.err.println(e.getMessage());
					}
				}

			}
		}
		return attr;
	}
	
	private Employee getEmployee(Element empEl) {

		//for each <employee> element get text or int values of
		//name ,id, age and name
		String name = getTextValue(empEl,"Name");
		int id = getIntValue(empEl,"Id");
		int age = getIntValue(empEl,"Age");

		String type = empEl.getAttribute("type");

		//Create a new Employee with the value read from the xml nodes
		Employee e = new Employee(name,id,age,type);

		return e;
	}
	
	/**
	 * I take a xml element and the tag name, look for the tag and get
	 * the text content
	 * i.e for <employee><name>John</name></employee> xml snippet if
	 * the Element points to employee node and tagName is 'name' I will return John
	 */
	private String getTextValue(Element ele, String tagName) {
		String textVal = null;
		NodeList nl = ele.getElementsByTagName(tagName);
		if(nl != null && nl.getLength() > 0) {
			Element el = (Element)nl.item(0);
			textVal = el.getFirstChild().getNodeValue();
		}

		return textVal;
	}


	/**
	 * Calls getTextValue and returns a int value
	 */
	private int getIntValue(Element ele, String tagName) {
		//in production application you would catch the exception
		return Integer.parseInt(getTextValue(ele,tagName));
	}



    
	private DataObjectsParser(String file, String rootNode) {
		fileName = file;
		rootNodeName = rootNode;
		parseXmlFile();
		parseDocument(DB_ENTITY);
	}
	public static DataObjectsParser getInstance(String file, String rootNode){
		if (parser == null){
			parser = new DataObjectsParser(file,rootNode);
			return parser;
		}
		return parser;
	}
   
	private void parseDocument(String tagName) {
		// get the root elememt
		Element docEle = document.getDocumentElement();

		// get a nodelist of <employee> elements
		dbEntities = docEle.getElementsByTagName(tagName);
		// dbAttributes = null;
		if (dbEntities != null && dbEntities.getLength() > 0) {
			for (int i = 0; i < dbEntities.getLength(); i++) {
				dbAttributes = ((Element) dbEntities.item(i))
						.getElementsByTagName(DB_ATTRIBUTE);
			}
		}
	}

	private void parseXmlFile() {
		// get the factory
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();

		try {

			// Using factory get an instance of document builder
			DocumentBuilder db = dbf.newDocumentBuilder();

			// parse using builder to get DOM representation of the XML file
			document = db.parse(fileName);

		} catch (ParserConfigurationException pce) {
			pce.printStackTrace();
		} catch (SAXException se) {
			se.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
	}
	
	public static void main(String[] arg){
		DataObjectsParser db = new DataObjectsParser("./data/DataObjects.xml","db-entity");
		System.out.println(db.getAttribute("AP_CREDITOR", "CREDITOR_TYPE", "name"));
		System.out.println(db.getAttribute("AP_CREDITOR", "ADDRESS1", "name"));
		System.out.println(db.getAttribute("AP_CREDITOR", "ADDRESS1", "type"));
		System.out.println(db.getAttribute("AP_CREDITOR", "ADDRESS2", "name"));
		System.out.println(db.getAttribute("AP_CREDITOR", "ADDRESS2", "length"));
	}

}
