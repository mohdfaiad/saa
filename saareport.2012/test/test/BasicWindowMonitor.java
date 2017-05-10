/*
 * WindowMonitor.java
 *
 * Created on April 18, 2007, 12:42 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package test;

/**
 *
 * @author Administrator
 */
import java.awt.event.WindowAdapter;
import java.awt.Window;
import java.awt.event.WindowEvent;

public class BasicWindowMonitor extends WindowAdapter {
    public void windowClosing(WindowEvent e) {
        Window w = e.getWindow();
        w.setVisible(false);
        w.dispose();
        System.exit(0);
    }
    
}