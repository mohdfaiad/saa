/*
 * ReportsController.java
 *
 * Created on 21 ����¹ 2550, 15:32 �.
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.control.report;

import java.util.Map;

/**
 *
 * @author Administrator
 */
public class ReportsController extends JasPerAdapter {
    
    @Override
	public void processSortFields(Map params) {
		// TODO Auto-generated method stub
		
	}
    
	/** Creates a new instance of ReportsController */
    public ReportsController(String resourceName , int option) {
        super(resourceName,option);
    }
    
    public  void processParameters(java.util.Map  params){
        this.reportparams = params;
    }

	@Override
	public void preParseNewQuery() {
		// TODO Auto-generated method stub
		
	}
    
}
