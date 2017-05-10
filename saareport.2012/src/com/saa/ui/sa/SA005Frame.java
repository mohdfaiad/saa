package com.saa.ui.sa;

import java.awt.BorderLayout;
import java.sql.ResultSet;

import java.util.*;

import com.saa.data.SQLBuilder;
import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.panels.AbstractComboPanel;
import com.saa.ui.View.panels.AbstractSingleTextFieldPanel;
import com.saa.ui.View.panels.DateFromToPanel;



public class SA005Frame extends BaseReportFrame {

	//AbstractSingleTextFieldPanel revisonPanel  ;
	AbstractComboPanel revisonPanel;
	ResultSet rs= null;
	Vector v= new Vector();
	  public  SA005Frame(SubTreeObject node , int w , int h){
	      super(node,w,h);
	      
	      try{
	    	  rs = dbmgr.executeQuery(SQLBuilder.getAvaliableSaleRevision());
	    	  while(rs.next()){
	    		  v.add(rs.getString(1));
	    	  }
	    	  rs.close();
	      }catch(Exception e){
	    	  logger.warning("Fail: To get avaliable revision"+e.getMessage());
	      }
	      revisonPanel = (AbstractComboPanel)decorator.getAbstractComboPanel("Revision No:", v);
	      centerPanel.add(revisonPanel,BorderLayout.NORTH);
	      pack();
	  }
	  public void processParameters(){
		  params.put("pRevisionNo", revisonPanel.getSelecttedObject());
		  
	  }

}
