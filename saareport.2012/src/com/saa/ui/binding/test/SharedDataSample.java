package com.saa.ui.binding.test;

import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.JScrollPane;

public class SharedDataSample {
  public static void main(String args[]) {
        final String labels[] = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J" };
    final DefaultComboBoxModel model = new DefaultComboBoxModel(labels);

    JFrame frame = new JFrame("Shared Data");
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    Container contentPane = frame.getContentPane();

    JPanel panel = new JPanel();
    JComboBox comboBox1 = new JComboBox(model);
    comboBox1.setMaximumRowCount(5);
    comboBox1.setEditable(true);

    JComboBox comboBox2 = new JComboBox(model);
    comboBox2.setMaximumRowCount(5);
    comboBox2.setEditable(true);
    panel.add(comboBox1);
    panel.add(comboBox2);
    contentPane.add(panel, BorderLayout.NORTH);

    JList jlist = new JList(model);
    JScrollPane scrollPane = new JScrollPane(jlist);
    contentPane.add(scrollPane, BorderLayout.CENTER);

    JButton button = new JButton("Add");
    contentPane.add(button, BorderLayout.SOUTH);
    ActionListener actionListener = new ActionListener() {
      public void actionPerformed(ActionEvent actionEvent) {
        int index = (int) (Math.random() * labels.length);
        model.addElement(labels[index]);
      }
    };
    button.addActionListener(actionListener);

    frame.setSize(300, 200);
    frame.setVisible(true);
  }
}
