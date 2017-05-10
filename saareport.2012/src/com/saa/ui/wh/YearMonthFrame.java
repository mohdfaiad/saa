/*
 * YearMonthFrame.java
 *
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.wh;

import com.saa.data.SQLBuilder;
import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseView;
import com.saa.data.ui.*;
import com.saa.util.*;
import com.saa.ui.View.panels.YearMonthPanel;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class YearMonthFrame extends BaseView{
    
    /** Creates a new instance of YearMonthFrame */
    YearMonthPanel yearMonthPanel;
    public YearMonthFrame(SubTreeObject node , int w , int h) {
        super(node,w,h);
      // YearMonthPanel pm = decorator.getYearMonthPanel();
        yearMonthPanel = (YearMonthPanel)decorator.getYearMonthPanel();
      //  centerPanel.add(decorator.getExportOptionsPanel(),BorderLayout.PAGE_START);
        centerPanel.add(yearMonthPanel ,BorderLayout.PAGE_END);
        pack();
        setVisible(true);
 
    }
     public void actionPerformed(ActionEvent e){
        super.actionPerformed(e);
      
 
     
    }
   
    
}
