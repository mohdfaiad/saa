/*
 * MeltFromToPanel.java
 *
 * Created on May 11, 2007, 10:57 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.View.panels;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

/**
 *
 * @author Administrator
 */
public class MeltFromToPanel extends BasePanel{
    
    /** Creates a new instance of MeltFromToPanel */
    public JTextField fromMelt,toMelt;
    public JLabel lable1 , label2;
    public JPanel p1 = new JPanel(new BorderLayout());
    public JPanel p2 = new JPanel(new BorderLayout());
    
    public MeltFromToPanel() {
        setLayout(new BorderLayout());
        lable1 = new JLabel("Start Melt:");
        label2 = new JLabel("From Melt:");
        fromMelt = new JTextField();
        toMelt = new JTextField();
        lable1.setLabelFor(fromMelt);
        label2.setLabelFor(toMelt);
        p1.add(lable1, BorderLayout.WEST);
        p1.add(fromMelt,BorderLayout.CENTER);
        p2.add(label2, BorderLayout.WEST);
        p2.add(toMelt,BorderLayout.CENTER);
        add(p1,BorderLayout.NORTH);
        add(p2,BorderLayout.SOUTH);
        repaint();
    }
    
}
