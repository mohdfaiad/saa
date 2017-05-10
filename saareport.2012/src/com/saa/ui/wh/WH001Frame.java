
package com.saa.ui.wh;

import com.saa.control.report.ReportsController;
import com.saa.data.SQLBuilder;
import com.saa.data.SubTreeObject;
import com.saa.ui.View.BaseReportFrame;
import com.saa.ui.View.BaseView;
import com.saa.data.ui.*;
import com.saa.util.*;
import com.saa.ui.View.panels.AbstractComboPanel;
import com.saa.ui.View.panels.DatePanel;
import com.saa.ui.View.panels.YearMonthPanel;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
public class WH001Frame extends WH004Frame{
  public  WH001Frame(SubTreeObject node , int w , int h){
      super(node,w,h);
  }
      
}
