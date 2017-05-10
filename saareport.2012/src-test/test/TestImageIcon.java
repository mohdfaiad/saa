package test;

import java.awt.FlowLayout;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;

public class TestImageIcon {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		JFrame j = new JFrame("Test image icon");
		JButton b = new JButton("Click Me", new ImageIcon("./image/gif/database-16x16x8b.gif","Click me"));
		JButton a = new JButton("Fuck", new ImageIcon("./image/gif/Add record-16x16x8b.gif","Fuck Me"));
		j.setLayout(new FlowLayout());
		j.getContentPane().add(b);
		j.getContentPane().add(a);
		j.setSize(100,100);
		j.setVisible(true);

	}

}
