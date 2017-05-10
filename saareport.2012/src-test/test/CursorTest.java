/*
 * CursorTest.java
 *
 * Created on May 11, 2007, 3:29 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package test;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;


public class CursorTest extends JFrame {
    JPanel panel = new JPanel();
    JButton wait1 = new JButton("Wait 1/3 of a second");
    JButton wait2 = new JButton("Wait 2/3 of a second");
    JButton wait3 = new JButton("Wait 1 second");

    public CursorTest() {
        setTitle("Busy Cursor Test");
        setSize(400,400);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        GridLayout layout = new GridLayout(3,1);
        panel.setLayout(layout);
        panel.add(wait1);
        panel.add(wait2);
        panel.add(wait3);
        getContentPane().add(panel);
        
        ActionListener wait1ActionListener = delayActionListener(333);
        ActionListener wait2ActionListener = delayActionListener(666);
        ActionListener wait3ActionListener = delayActionListener(1000);
        
        // Add in the busy cursor
        ActionListener busy1ActionListener = CursorController.createListener(this, wait1ActionListener);
        ActionListener busy2ActionListener = CursorController.createListener(this, wait2ActionListener);
        ActionListener busy3ActionListener = CursorController.createListener(this, wait3ActionListener);
        
        wait1.addActionListener(busy1ActionListener);
        wait2.addActionListener(busy2ActionListener);
        wait3.addActionListener(busy3ActionListener);
        
        setVisible(true);
    }
    
    /**
     * Creates an actionListener that waits for the specified number of milliseconds.
     */
    private ActionListener delayActionListener(final int delay) {
        ActionListener listener = new ActionListener() {
            public void actionPerformed(ActionEvent ae) {
                try {
                  //  System.out.println("Waiting for %d milliseconds\n", new Integer(delay));
                    Thread.sleep(delay);
                } catch (InterruptedException ie) {
                    ie.printStackTrace();
                }
            }
        };
        return listener;
    }
 
    public static void main(String[] args) {
        CursorTest cursorTest = new CursorTest();
    }
}

