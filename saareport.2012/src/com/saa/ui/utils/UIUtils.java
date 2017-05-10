
package com.saa.ui.utils;

import java.awt.Dimension;
import javax.swing.JDialog;
import javax.swing.JFrame;

/**
 *
 * @author Administrator
 */
public class UIUtils {
    
    /** Creates a new instance of UIUtils */
    public UIUtils() {
    }
    
    
    public static void setLocationCenter(JFrame frame){
        Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        Dimension windowSize = frame.getSize();
        
        int windowX = Math.max(0, (screenSize.width  - windowSize.width ) / 2);
        int windowY = Math.max(0, (screenSize.height - windowSize.height) / 2);
        frame.setLocation(windowX, windowY);  
    
    }
    
     public static void setLocationCenter(JDialog frame){
        Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        Dimension windowSize = frame.getSize();
        
        int windowX = Math.max(0, (screenSize.width  - windowSize.width ) / 2);
        int windowY = Math.max(0, (screenSize.height - windowSize.height) / 2);
        frame.setLocation(windowX, windowY);  
    
    }
    
}
