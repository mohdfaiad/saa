/*
 * ExportOptionsPanel.java
 *
 * Created on April 23, 2007, 6:13 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.View.panels;

import com.saa.data.ReportOptions;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;

/**
 *
 * @author Administrator
 */
public class ExportOptionsPanel extends   BasePanel{
    
    /** Creates a new instance of ExportOptionsPanel */
    
    public JLabel optionLabel;
    public JComboBox exportOptionsCombo;
    public ExportOptionsPanel() {
        super();
        setLayout(new FlowLayout());
        optionLabel = new JLabel("View Options:");
        add(optionLabel,BorderLayout.LINE_START);
        exportOptionsCombo = new JComboBox(ReportOptions.ExportOptions.options);
        add(exportOptionsCombo,BorderLayout.LINE_END);
    }
    
}
