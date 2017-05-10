/*
 * EditableComboBox.java
 *
 * Created on April 18, 2007, 5:01 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package test;

//EditableComboBox.java
//
import java.awt.*;
import java.awt.event.*;
import java.util.*;
import javax.swing.*;
public class EditableComboBox extends JPanel implements ActionListener {
    private String title[] = { "Designing with JavaScript",
    "Exploring Java, 2nd Edition",
    "Developing Java Beans",
    "Database Programming with JDBC and Java",
    "Java in a Nutshell, Deluxe Edition",
    "Java Fundamental Classes Reference",
    "Java Language Reference, 2nd Edition",
    "Java Networking",
    "Java in a Nutshell, 2nd Edition",
    "Java Virtual Machine",
    "Java AWT Reference",
    "Java Examples in a Nutshell",
    "Java Threads" };
    Hashtable hashtable;
    public EditableComboBox() {
        super(true);
        hashtable = new Hashtable();
        hashtable.put(title[0],new JLabel(new ImageIcon("designjs.s.gif")));
        hashtable.put(title[1],new JLabel(new ImageIcon("expjava2.s.gif")));
        hashtable.put(title[2],new JLabel(new ImageIcon("javabeans.s.gif")));
        hashtable.put(title[3],new JLabel(new ImageIcon("javadata.s.gif")));
        hashtable.put(title[4],new JLabel(new ImageIcon("javadeluxe.s.gif")));
        hashtable.put(title[5],new JLabel(new ImageIcon("javafund.s.gif")));
        hashtable.put(title[6],new JLabel(new ImageIcon("javalang2.s.gif")));
        hashtable.put(title[7],new JLabel(new ImageIcon("javanetwk.s.gif")));
        hashtable.put(title[8],new JLabel(new ImageIcon("javanut2.s.gif")));
        hashtable.put(title[9],new JLabel(new ImageIcon("javavm.s.gif")));
        hashtable.put(title[10],new JLabel(new ImageIcon("javawt.s.gif")));
        hashtable.put(title[11],new JLabel(new ImageIcon("jenut.s.gif")));
        hashtable.put(title[12],new JLabel(new ImageIcon("jthreads.s.gif")));
        setLayout(new BorderLayout());
        JComboBox bookCombo = new JComboBox(title);
//Java Swing – O’Reilly
//- 178 -
        bookCombo.setEditable(true);
        bookCombo.setEditor(new ComboBoxEditorExample(hashtable, title[10]));
        bookCombo.setMaximumRowCount(4);
        bookCombo.addActionListener(this);
        bookCombo.setActionCommand("Hello");
        add(bookCombo, BorderLayout.CENTER);
    }
    public static void main(String s[]) {
        JFrame frame = new JFrame("Combo Box Example");
        frame.addWindowListener(new BasicWindowMonitor());
        frame.setContentPane(new EditableComboBox());
        frame.pack();
        frame.setVisible(true);
    }
    public void actionPerformed(ActionEvent e) {
        System.out.println("You chose " + ((JComboBox)e.getSource()).
                getSelectedItem() + "!");
    }
}