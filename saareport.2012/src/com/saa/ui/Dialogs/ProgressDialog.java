

package com.saa.ui.Dialogs;

import java.awt.Component;
import java.awt.Container;
import java.awt.FlowLayout;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JProgressBar;

/**
 *
 * @author Administrator
 */
public class ProgressDialog extends JDialog{
    
    /** Creates a new instance of ProgressDialog */
    private JLabel statusLabel;
    private JProgressBar pBar;
    Container c;
    public ProgressDialog(Component parrent) {
        super();
        statusLabel= new  JLabel("Loading..");
        c = getContentPane();       
        c.setLayout(new FlowLayout());
        pBar = new JProgressBar();
        c.add(pBar);
        c.add(statusLabel);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLocationRelativeTo(parrent);
        pack();
      //  setModal(true);
     
    }
    public void setProgress(int c){
        pBar.setValue(c);
    }
    
}
