/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.saa.ui.wh;

import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.panels.MeltFromToPanel;
import java.awt.BorderLayout;
import java.sql.Timestamp;

/**
 *
 * @author tinnarat
 */
public class WH011Frame  extends BaseReportFrame {
    
   protected MeltFromToPanel meltPanel;
   protected String sqlCmd = "";
 
   public  WH011Frame(SubTreeObject node , int w , int h){
      super(node,w,h);
      meltPanel = (MeltFromToPanel)decorator.getMeltFromToPanel();
      centerPanel.add(meltPanel,BorderLayout.NORTH);
      pack();
      // add 2 text fields start melt and end melt
  }
     public void processParameters(){
        params.put("pMeltNo",meltPanel.fromMelt.getText());
        
        //params.put("pSysDate", new Timestamp(System.currentTimeMillis()));
    }

  
    
}
