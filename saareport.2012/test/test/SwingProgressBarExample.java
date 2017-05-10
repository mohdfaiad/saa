/*
 * JProgressBarSample.java
 *
 * Created on April 18, 2007, 4:31 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package test;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JProgressBar;
import javax.swing.SwingUtilities;

public class SwingProgressBarExample extends JPanel {
    
    JProgressBar pbar;
    static JLabel progressText = new JLabel("Progress...");
    
    static final int MY_MINIMUM = 0;
    
    static final int MY_MAXIMUM = 100;
    
    public SwingProgressBarExample() {
        pbar = new JProgressBar();
        pbar.setMinimum(MY_MINIMUM);
        pbar.setMaximum(MY_MAXIMUM);
        add(progressText);
        add(pbar);
    }
    
    public void updateBar(int newValue) {
        pbar.setValue(newValue);
    }
    
    public static void main(String args[]) {
        
        final SwingProgressBarExample it = new SwingProgressBarExample();
        
        JFrame frame = new JFrame("Progress Bar Example");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setContentPane(it);
        frame.pack();
        frame.setVisible(true);
        
        for (int i = MY_MINIMUM; i <= MY_MAXIMUM; i++) {
            final int percent = i;
            try {
                SwingUtilities.invokeLater(new Runnable() {
                    public void run() {
                        it.updateBar(percent);
                        progressText.setText(percent+"%");
                    }
                });
                java.lang.Thread.sleep(100);
            } catch (InterruptedException e) {
                ;
            }
        }
    }
}

