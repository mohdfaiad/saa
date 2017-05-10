/*
 * MessageDlg.java
 *
 * Created on April 20, 2007, 12:36 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.util;

import java.awt.Component;
import javax.swing.JOptionPane;
public  class MessageDlg {
    
    /** Creates a new instance of MessageDlg */
    
    
    Component parrent = null;
    private MessageDlg() {
    }
   
    
    
    
      
    
    public static void debug(Component parent,String msg){
          JOptionPane.showMessageDialog(
                                    parent,
                                    msg,
                                    "",
                                    JOptionPane.INFORMATION_MESSAGE);
    }
    public static void info(Component parent,String msg,String title){
        if (title.equals(""))title ="information";
        JOptionPane.showMessageDialog(
                                    parent,
                                    msg,
                                    title,
                                    JOptionPane.INFORMATION_MESSAGE);
    }
    public static void warning(Component parent,String msg,String title){
        if (title.equals(""))title ="warning";
        JOptionPane.showMessageDialog(
                                    parent,
                                    msg,
                                    title,
                                    JOptionPane.WARNING_MESSAGE);
    }
    public static void error(Component parent,String msg,String title){
        if (title.equals(""))title ="error";
        JOptionPane.showMessageDialog(
                                    parent,
                                    msg,
                                    title,
                                    JOptionPane.ERROR_MESSAGE);
    }
     public static boolean confirm(Component parent,String msg,String title){
        if (title.equals(""))title ="confirmation";
        int result = JOptionPane.showConfirmDialog(
                            parent,
                            msg,
                            title,
                            JOptionPane.YES_NO_OPTION);
        return (result == JOptionPane.YES_OPTION);
    }
     
    
    
}
