/*
 * SecretLabel.java
 * 
 * Created on Apr 18, 2008, 11:45:01 PM
 * 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package test;

import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JFrame;
import javax.swing.JLabel;

public class SecretLabelTest extends JFrame {

  public SecretLabelTest() {
    super("EventListenerList Demo");
    setSize(200, 100);
    setDefaultCloseOperation(EXIT_ON_CLOSE);

    SecretLabel secret = new SecretLabel("Try Clicking Me");
    final JLabel reporter = new JLabel("Event reports will show here...");
    secret.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent ae) {
        reporter.setText("Got it: " + ae.getActionCommand());
        System.out.println("action performed");
      }
    });
    getContentPane().add(secret, BorderLayout.NORTH);
    getContentPane().add(reporter, BorderLayout.SOUTH);
  }

  public static void main(String args[]) {
    SecretLabelTest st = new SecretLabelTest();
    st.setVisible(true);
  }
}

//SecretLabel.java
//An extension of the JLabel class that listens to mouse clicks and converts
//them to ActionEvents, which in turn are reported via an EventListenersList
//object
//

class SecretLabel extends JLabel {

  public SecretLabel(String msg) {
    super(msg);
    addMouseListener(new MouseAdapter() {
      public void mouseClicked(MouseEvent me) {
        fireActionPerformed(new ActionEvent(SecretLabel.this,
            ActionEvent.ACTION_PERFORMED, "SecretMessage"));
     }
    });
  }

  public void addActionListener(ActionListener l) {
    // We'll just use the listenerList we inherit from JComponent.
    listenerList.add(ActionListener.class, l);
    System.out.println("add listenner");
  }

  public void removeActionListener(ActionListener l) {
    listenerList.remove(ActionListener.class, l);
     System.out.println("add remove");
  }

  protected void fireActionPerformed(ActionEvent ae) {
    Object[] listeners = listenerList.getListeners(ActionListener.class);
    for (int i = 0; i < listeners.length; i++) {
      ((ActionListener) listeners[i]).actionPerformed(ae);
      //System.out.println(listeners[i].toString());
     // System.out.println((ActionListener) listeners[i]).toString());
    }
  }
}

