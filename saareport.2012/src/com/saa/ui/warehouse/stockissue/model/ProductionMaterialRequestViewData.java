/*
 * ProductionMaterialRequestViewData.java
 * 
 * Created on May 2, 2008, 3:18:24 PM
 * 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.saa.ui.warehouse.stockissue.model;

import com.saa.util.AutoInitialize;
import java.sql.Timestamp;

/**
 *
 * @author Administrator
 */
public class ProductionMaterialRequestViewData extends AutoInitialize {
    
   public String DOC_NO;
   public Timestamp DOC_DATE;
   public String REQ_BY;
   public String ISSUE_BY;
   public String MELT_NO;
   public String STATUS;

   
    public ProductionMaterialRequestViewData() {
    }

}
