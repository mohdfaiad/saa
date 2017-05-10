/**
 * 
 */
package com.saa.ui.binding;

import java.awt.Component;
import java.awt.GridLayout;
import java.awt.LayoutManager;
import java.awt.event.ComponentListener;
import java.awt.event.ContainerEvent;
import java.sql.Connection;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Observable;
import java.util.Observer;

import javax.swing.JFrame;
import javax.swing.JPanel;

import com.saa.jdbc.AbstractDataManager;
import com.saa.jdbc.DataObject;

/**
 * @author Administrator
 *
 */
public class JXDBEditFrame extends JFrame implements FrameEditModel,JXDBEventModel {
	
	public void afterDelete() {
		// TODO Auto-generated method stub
		
	}

	public void beforeDelete() {
		// TODO Auto-generated method stub
		
	}

	public void afterPost() {
		// TODO Auto-generated method stub
		
	}

	public void beforePost() {
		// TODO Auto-generated method stub
		
	}

	public void onEditRecord() {
		// TODO Auto-generated method stub
		
	}

	public void onNewRecord() {
		// TODO Auto-generated method stub
		
	}

	public Component[] getComponents() {
		// TODO Auto-generated method stub
		return super.getComponents();
	}

	/*insert 1 , edit 2 ,	
	 *public static int STATE_NORMAL = 0;
	public static int STATE_INSERT = 1;
	public static int STATE_UPDATE = 2;
	public static int STATE_DELETE = 3; */
	protected static int STATE = -1;
	//private ArrayList editComponents = new ArrayList();

	private JFrame parent;
	protected JPanel mainPanel;
	private String displayTitle;

	protected JXDBChangeNotify changeManager;

	protected AbstractDataManager dataManager;
	protected Connection connection;
	protected String entityName;
	protected String pkName;
	protected Object retrieveValue;
	protected int changeCount = 0;
	
	protected DataObject dataObject;

	protected JXComponentBuilder UIBuilder;

	public void componentAdded(ContainerEvent e) {
	

	}

	public void componentRemoved(ContainerEvent e) {
		// TODO Auto-generated method stub
	

	}
	/*@param title - frame display title
	 * @param enity - table name need to be create data object
	 * @param c - jdbc connection to create dataManager
	 * @param state -0 normal ,1 insert , 2 edit , 3 delete 
	 * @param retriveValue require when state = edit or normal */
	public JXDBEditFrame(String title, String entity,String pkAttributeName, Connection c ,int state ,Object retriveValue) {
		super();
		this.displayTitle = title;
		this.STATE = state;
		pkName = pkAttributeName;
		this.retrieveValue= retriveValue;
		setTitle(displayTitle);
		mainPanel = new JPanel();
		initDBManager(c, entity);
		createUIPanel();
		add(mainPanel);
		pack();
		setVisible(true);
		
		//new JXDBEditFrame()
	}

	private void initDBManager(Connection c, String e) {
		this.connection = c;
		this.entityName = e;
		changeManager = new JXDBChangeNotify(entityName);
		dataManager = new AbstractDataManager(connection, entityName);
		if ((STATE == BindingState.STATE_UPDATE) || (STATE == BindingState.STATE_NORMAL)){
			dataObject = dataManager.retrieve(pkName, retrieveValue);
			dataObject.setTableName(entityName);
		}else if (STATE == BindingState.STATE_INSERT){
			fireInsert();
		}

	}

	public void createUIPanel() {

	}
	public void addEditComponentPanel(JPanel panel){
		mainPanel.add(panel);
	}

	public void setLayOutManager(LayoutManager layout) {
		mainPanel.setLayout(layout);
	}

	public void updateChanged(){
    	changeManager.clearChanges();
    	changeCount = 0;
    	for (int comIndex=0; comIndex<mainPanel.getComponentCount();comIndex++){
    		 Component c = mainPanel.getComponent(comIndex);
    		 if (c.getClass().getName().equals("com.saa.ui.binding.JXDBFormatTextFieldPanel")){
    			/* if (((JXDBFormatTextFieldPanel)c).isChanged ){
    				 changeManager.notifyChanged(((JXDBFormatTextFieldPanel)c).getAttributeName(), ((JXDBFormatTextFieldPanel)c).getValue());
    				 changeCount++;
    			 } */
    		 
    		 }else if (c.getClass().getName().equals("com.saa.ui.binding.JXDBComboPanel")){ 
    			/* if (((JXDBComboPanel)c).isChanged ){
    				 changeManager.notifyChanged(((JXDBComboPanel)c).getAttributeName(), new String(((JXDBComboPanel)c).getValue().toString()));
    				 changeCount++;
    			 } */
    		 
    		 }else if (c.getClass().getName().equals("com.saa.ui.binding.JXDBDatePickerPanel")){ 
    			/* if (((JXDBDatePickerPanel)c).isChanged() ){
    				 changeManager.notifyChanged(((JXDBDatePickerPanel)c).getAttributeName(), ((JXDBDatePickerPanel)c).getValue().toString());
    				 changeCount++;
    			 } */
    		 
    		 }else if (c.getClass().getName().equals("com.saa.ui.binding.JXDBTextFieldPanel")){ 
    			/* if (((JXDBTextFieldPanel)c).isChanged ){
    				 changeManager.notifyChanged(((JXDBTextFieldPanel)c).getAttributeName(),new String( ((JXDBTextFieldPanel)c).getValue().toString()));
    				 changeCount++;
    			 }*/ 
    		 
    		 }else if (c.getClass().getName().equals("com.saa.ui.binding.JXDBTextAreaPanel")){ 
    			/* if (((JXDBTextAreaPanel)c).isChanged ){
    				 changeManager.notifyChanged(((JXDBTextAreaPanel)c).getAttributeName(), new String(((JXDBTextAreaPanel)c).getValue().toString()));
    				 changeCount++;
    			 } */
    		 }
    		 
    		
    	}
    	onEditRecord();
    	System.out.println("Changes count ="+changeCount);
    }
	public void setDataObject(){
		
	}
	public void fireInsert(){
		dataObject = new DataObject(entityName,null);
		onNewRecord();
		
	}
	public void commitChange(){
		
		changeManager.clearChanges();
    	changeCount = 0;
    	for (int comIndex=0; comIndex<mainPanel.getComponentCount();comIndex++){
    		 Component c = mainPanel.getComponent(comIndex);
    		 if (c.getClass().getName().equals("com.saa.ui.binding.JXDBFormatTextFieldPanel")){
    			// ((JXDBFormatTextFieldPanel)c).notifyNewChange();
    			
    		 }else if (c.getClass().getName().equals("com.saa.ui.binding.JXDBComboPanel")){ 
    			//((JXDBComboPanel)c).notifyNewChange();
    			
    		 }else if (c.getClass().getName().equals("com.saa.ui.binding.JXDBDatePickerPanel")){ 
    			// ((JXDBDatePickerPanel)c).notifyNewChange();
    			
    		 }else if (c.getClass().getName().equals("com.saa.ui.binding.JXDBTextFieldPanel")){ 
    			// ((JXDBTextFieldPanel)c).notifyNewChange();
    		 
    		 }else if (c.getClass().getName().equals("com.saa.ui.binding.JXDBTextAreaPanel")){ 
    			//((JXDBTextAreaPanel)c).notifyNewChange();
    		 }
    		 
    		
    	}
    	System.out.println("Changes count ="+changeCount);
		
	}
	public void fireUpdate(){
		if (changeManager.hasChanged()){
			try{
				beforePost();	
				dataManager.update(entityName,pkName, retrieveValue, changeManager.getChanges());
			}finally{
				commitChange();
				afterPost();
			}
		}
		
	}
	public void fireDelete(){
		beforeDelete();
		afterDelete();
	}

}
