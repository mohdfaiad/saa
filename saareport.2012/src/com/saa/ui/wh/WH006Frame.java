package com.saa.ui.wh;

import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.panels.YearMonthPanel;

public class WH006Frame extends BaseReportFrame{
    
    /** Creates a new instance of WH001Frame */
     YearMonthPanel yearMonthPanel;
     public WH006Frame(SubTreeObject node , int w , int h){
         super(node,w,h);
         
         pack();
    }
     public void processParameters(){
    	 
     }

}