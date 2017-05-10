package com.saa.ui.wh;

import java.awt.BorderLayout;
import java.sql.Time;
import java.sql.Timestamp;

import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.panels.AbstractSingleTextFieldPanel;
import com.saa.ui.View.panels.MeltFromToPanel;


public class WH005Frame extends BaseReportFrame{
    
    /** Creates a new instance of WH001Frame */
	AbstractSingleTextFieldPanel meltPanel;
     public WH005Frame(SubTreeObject node , int w , int h){
         super(node,w,h);
         meltPanel = (AbstractSingleTextFieldPanel)decorator.getAbstractSingleTextFieldPanel("Put Melt No:");
         centerPanel.add(meltPanel,BorderLayout.NORTH);
         
         pack();
    }
     public void processParameters(){
    	 params.put("pMeltNo", meltPanel.getText());
    	 
    	 
    	 Timestamp d = new Timestamp(System.currentTimeMillis()) ;
       
         params.put("pSysDate",d);
     }

}
