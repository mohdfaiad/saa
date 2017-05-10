package com.saa.ui.pn;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import com.saa.data.SubTreeObject;
import com.saa.logger.AppLogger;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.panels.AbstractSingleTextFieldPanel;
import com.saa.ui.View.panels.MeltFromToPanel;
import java.awt.BorderLayout;
import java.util.logging.Logger;



/**
 *
 * @author aon
 * @since 20 March 2011
 * Finished goods return report
 */
public class PN009Frame extends BaseReportFrame{

//   protected String subReportName ="\\PNSUB002.jasper";
   protected MeltFromToPanel meltPanel;
   protected String sqlCmd = "";
   private AbstractSingleTextFieldPanel inputTextPanel = null;
  // AppLogger log = AppLogger.getLogger(this.getClass().getName());
   AppLogger log = AppLogger.getLogger(PN010Frame.class.getName());
   

   public  PN009Frame(SubTreeObject node , int w , int h){
      super(node,w,h);
   //  meltPanel = (MeltFromToPanel)
      inputTextPanel=(AbstractSingleTextFieldPanel) decorator.getAbstractSingleTextFieldPanel("DocumentNo:");
      log.info("Creating...AbstractTextField");
      centerPanel.add(inputTextPanel,BorderLayout.NORTH);
      pack();
      // add 2 text fields start melt and end melt
  }
    public void processParameters(){
    	Object value = inputTextPanel.getText();
    	if (!value.equals("")) {
    		
    		params.put("pDocNo", value);
    		log.info("Registed Param: pdocNo="+value);
    		
    	}else{
    		
    	}
    }
}