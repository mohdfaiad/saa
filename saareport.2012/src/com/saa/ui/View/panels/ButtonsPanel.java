/*
 * ButtonsPanel.java
 *
 * Created on April 24, 2007, 10:48 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.View.panels;

import java.awt.FlowLayout;
import javax.swing.JButton;

/**
 *
 * @author Administrator
 */
public class ButtonsPanel extends BasePanel {
    
    /** Creates a new instance of ButtonsPanel */
    public static String submit = "Submit";
    public static String cancel = "Cancel";
    public JButton submitButton, cancelButton;
    public ButtonsPanel() {
        setLayout(new FlowLayout());
        submitButton = new JButton(submit);
        cancelButton = new JButton(cancel);
        add(submitButton);
        add(cancelButton);
        
    }
    
}
