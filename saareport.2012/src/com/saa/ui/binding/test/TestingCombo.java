package com.saa.ui.binding.test;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.plaf.basic.BasicComboPopup ;

class TestingCombo extends JFrame
{
  String[] cbo1Text = {"Snacks","Drinks","Cigarettes"};
  String[][] cbo2Text = {{"Chocolate Bar","Chips","Candy"},{"Soft","Beer","Wine","Spirits"},
                       {"Menthol","Camel","Marlboro","Lite"}};
  JComboBox cbo1 = new JComboBox(cbo1Text);
  JComboBox cbo2 = new JComboBox(cbo2Text[0]);
  public TestingCombo()
  {
    setDefaultCloseOperation(EXIT_ON_CLOSE);
    setLocation(400,300);
    getContentPane().setLayout(new GridLayout(1,2));
    cbo1.addActionListener(new ActionListener(){
      public void actionPerformed(ActionEvent ae){
        DefaultComboBoxModel cbo2NewModel = new DefaultComboBoxModel(cbo2Text[cbo1.getSelectedIndex()]);
        cbo2.setModel(cbo2NewModel);}});
    getContentPane().add(cbo1);
    getContentPane().add(cbo2);
    pack();
  }
  public static void main(String[] args){new TestingCombo().setVisible(true);
 // BasicComboPopup.
  }
}



