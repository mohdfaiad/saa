/*
 * ComboBoxEditorExample.java
 *
 * Created on April 18, 2007, 4:59 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package test;

//ComboBoxEditorExample.java
//
import java.awt.*;
import java.awt.event.*;
import java.util.*;
import javax.swing.*;
import javax.swing.border.*;

public class ComboBoxEditorExample implements ComboBoxEditor {
    Hashtable hashtable;
    ImagePanel panel;
    ImageIcon questionIcon;
    public ComboBoxEditorExample(Hashtable h, String defaultTitle) {
        hashtable = h;
        Icon defaultIcon = ((JLabel)hashtable.get(defaultTitle)).getIcon();
        panel = new ImagePanel(defaultIcon, defaultTitle);
        questionIcon = new ImageIcon("question.gif");
    }
    public void setItem(Object anObject) {
        if (anObject != null) {
            panel.setText(anObject.toString());
            JLabel label = (JLabel)hashtable.get(anObject.toString());
            if (label != null)
                panel.setIcon(label.getIcon());
            else
                panel.setIcon(questionIcon);
        }
    }
    public Component getEditorComponent() { return panel; }
    public Object getItem() { return panel.getText(); }
    public void selectAll() { panel.selectAll(); }
    public void addActionListener(ActionListener l) {
        panel.addActionListener(l);
    }
    public void removeActionListener(ActionListener l) {
        panel.removeActionListener(l);
    }
// We create our own inner class to handle setting and
// repainting the image and the text.
    class ImagePanel extends JPanel {
        JLabel imageIconLabel;
        JTextField textField;
        public ImagePanel(Icon icon, String text) {
            setLayout(new BorderLayout());
            imageIconLabel = new JLabel(icon);
            imageIconLabel.setBorder(new BevelBorder(BevelBorder.RAISED));
            textField = new JTextField(text);
            textField.setColumns(45);
            textField.setBorder(new BevelBorder(BevelBorder.LOWERED));
            
            add(imageIconLabel, BorderLayout.WEST);
            add(textField, BorderLayout.EAST);
        }
        public void setText(String s) { textField.setText(s); }
        public String getText() { return (textField.getText()); }
        public void setIcon(Icon i) {
            imageIconLabel.setIcon(i);
            repaint();
        }
        public void selectAll() { textField.selectAll(); }
        public void addActionListener(ActionListener l) {
            textField.addActionListener(l);
        }
        public void removeActionListener(ActionListener l) {
            textField.removeActionListener(l);
        }
    }
}