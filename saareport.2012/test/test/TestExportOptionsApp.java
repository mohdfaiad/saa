/*
 * TestExportOptionsApp.java
 *
 * Created on 24 เมษายน 2550, 19:12 น.
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package test;

import com.saa.ui.View.panels.ExportOptionsPanel;
import java.awt.Container;
import java.awt.FlowLayout;
import javax.swing.JFrame;

/**
 *
 * @author Administrator
 */
public class TestExportOptionsApp {
    
    /** Creates a new instance of TestExportOptionsApp */
    public TestExportOptionsApp() {
    }
    
public static void main(String[] arg){
        JFrame frame = new JFrame("Test export options");
      
        Container c = frame.getContentPane();
        c.setLayout(new FlowLayout());
        c.add(new ExportOptionsPanel());
        frame.pack();
        frame.setVisible(true);
        
        
    }   
    
   
    
}

 
