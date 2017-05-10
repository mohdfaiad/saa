/*
 * ProgressMonitorSample.java
 *
 * Created on April 18, 2007, 1:00 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package test;
// ProgressMonitorExample

/*
Definitive Guide to Swing for Java 2, Second Edition
By John Zukowski     
ISBN: 1-893115-78-X
Publisher: APress
*/

import java.awt.Component;
import java.awt.Container;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.ProgressMonitor;
import javax.swing.Timer;

public class ProgressMonitorExample {
  static ProgressMonitor monitor;

  static int progress;

  static Timer timer;

  static class ProgressMonitorHandler implements ActionListener {
    // Called by Timer
    public void actionPerformed(ActionEvent actionEvent) {
      if (monitor == null)
        return;
      if (monitor.isCanceled()) {
        System.out.println("Monitor canceled");
        timer.stop();
      } else {
        progress += 3;
        monitor.setProgress(progress);
        monitor.setNote("Loaded " + progress + " files");
      }
    }
  }

  public static void main(String args[]) {

    JFrame frame = new JFrame("ProgressMonitor Sample");
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    Container contentPane = frame.getContentPane();
    contentPane.setLayout(new GridLayout(0, 1));

    // Define Start Button
    JButton startButton = new JButton("Start");
    ActionListener startActionListener = new ActionListener() {
      public void actionPerformed(ActionEvent actionEvent) {
        Component parent = (Component) actionEvent.getSource();
        monitor = new ProgressMonitor(parent, "Loading Progress",
            "Getting Started...", 0, 100);
        progress = 0;
      }
    };
    startButton.addActionListener(startActionListener);
    contentPane.add(startButton);

    // Define Manual Increase Button
    // Pressing this button increases progress by 5
    JButton increaseButton = new JButton("Manual Increase");
    ActionListener increaseActionListener = new ActionListener() {
      public void actionPerformed(ActionEvent actionEvent) {
        if (monitor == null)
          return;
        if (monitor.isCanceled()) {
          System.out.println("Monitor canceled");
        } else {
          progress += 5;
          monitor.setProgress(progress);
          monitor.setNote("Loaded " + progress + " files");
        }
      }
    };
    increaseButton.addActionListener(increaseActionListener);
    contentPane.add(increaseButton);

    // Define Automatic Increase Button
    // Start Timer to increase progress by 3 every 250 ms
    JButton autoIncreaseButton = new JButton("Automatic Increase");
    ActionListener autoIncreaseActionListener = new ActionListener() {
      public void actionPerformed(ActionEvent actionEvent) {
        if (monitor != null) {
          if (timer == null) {
            timer = new Timer(250, new ProgressMonitorHandler());
          }
          timer.start();
        }
      }
    };
    autoIncreaseButton.addActionListener(autoIncreaseActionListener);
    contentPane.add(autoIncreaseButton);

    frame.setSize(300, 200);
    frame.setVisible(true);
  }
}
