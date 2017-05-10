/*
 * TestSwingApp.java
 *
 * Created on April 18, 2007, 12:01 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package test;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JOptionPane;
import javax.swing.ProgressMonitor;
import javax.swing.UIManager;
import javax.swing.SwingUtilities;
import javax.swing.UnsupportedLookAndFeelException;

/**
 *
 * @author Administrator
 */
public class TestSwingApp {
    
    /** Creates a new instance of TestSwingApp */
    public TestSwingApp() {
    }
    
    /**
     * @param args the command line arguments
     */
    public  static class MessageDialog extends JFrame implements ActionListener{
        JLabel msg;
        JButton okButton,canCleButton;
        JFrame frame;
        public MessageDialog(){
            super();
            setSize(450,450);
            JPanel msgPanel = new JPanel();
            msg = new JLabel("Basic Information message?");
            msgPanel.add(msg);
            getContentPane().add(msgPanel , BorderLayout.CENTER);
            JPanel buttonPanel = new JPanel(new FlowLayout());
            okButton = new JButton("OK");
            // okButton.setAction();
            okButton.addActionListener(this);
            canCleButton = new JButton("Cancel");
            canCleButton.addActionListener(this);
            buttonPanel.add(okButton);
            buttonPanel.add(canCleButton);
            JButton mfbtn = new JButton("Motif");
            mfbtn.setToolTipText("Update  Motif look and feel");
            mfbtn.addActionListener(this);
            JButton mlbtn = new JButton("Metal");
            mlbtn.addActionListener(this);
            JButton wbtn = new JButton("Window");
            wbtn.addActionListener(this);
            JButton pbtn = new JButton("Progress");
            pbtn.addActionListener(this);
            buttonPanel.add(mfbtn);
            buttonPanel.add(mlbtn);
            buttonPanel.add(wbtn);
            buttonPanel.add(pbtn);
            addWindowListener(new BasicWindowMonitor());
            getContentPane().add(buttonPanel,BorderLayout.SOUTH);
            pack();
            setVisible(true);
            frame = this;
            
            
        }
        public void actionPerformed(ActionEvent e){
            
            if (e.getActionCommand() == "OK"){
                JOptionPane.showMessageDialog(frame,
                        "This is an Active Corner!", "Information",
                        JOptionPane.INFORMATION_MESSAGE);
            }else if (e.getActionCommand() == "Cancel"){
                JOptionPane.showMessageDialog(frame,
                        "This is an Active Corner!", "Question",
                        JOptionPane.QUESTION_MESSAGE);
            } else if (e.getActionCommand() == "Progress"){
                ProgressMonitor pg = new  ProgressMonitor(frame, "Monitoring Progress",
                        "Initializing . . .", 2, 10000);
                pg.setProgress(50);
                JOptionPane.showMessageDialog(null,
                        "Show progress monitoring", "Question",
                        JOptionPane.ERROR_MESSAGE);
             
            }
            changeLookAndFeel(e);
            
        }
        
        private void changeLookAndFeel(ActionEvent e){
            String lnfName = null;
            if (e.getActionCommand().equals("Metal")) {
                lnfName = "javax.swing.plaf.metal.MetalLookAndFeel";
            } else if (e.getActionCommand().equals("Motif")) {
                lnfName = "com.sun.java.swing.plaf.motif.MotifLookAndFeel";
            } else {
                lnfName = "com.sun.java.swing.plaf.windows.WindowsLookAndFeel";
            }
            try {
                UIManager.setLookAndFeel(lnfName);
                SwingUtilities.updateComponentTreeUI(frame);
            } catch (UnsupportedLookAndFeelException ex1) {
                System.err.println("Unsupported LookAndFeel: " + lnfName);
            } catch (ClassNotFoundException ex2) {
                System.err.println("LookAndFeel class not found: " + lnfName);
            } catch (InstantiationException ex3) {
                System.err.println("Could not load LookAndFeel: " + lnfName);
            } catch (IllegalAccessException ex4) {
                System.err.println("Cannot use LookAndFeel: " + lnfName);
            }
            
            
        }
      
        
    }
    public static void main(String[] args) {
            // TODO code application logic here
            new MessageDialog();
   }
}
