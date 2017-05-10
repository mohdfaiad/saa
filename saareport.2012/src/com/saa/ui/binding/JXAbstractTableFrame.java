package com.saa.ui.binding;


import java.awt.*;
import java.awt.event.*;
import java.util.*;
import java.io.*;
import java.text.*;

import javax.swing.*;
import javax.swing.border.*;
import javax.swing.event.*;
import javax.swing.table.*;

public class JXAbstractTableFrame extends JFrame 
{
  protected JTable m_table;
  protected JXAbstractTableModel m_data;
  protected JLabel m_title;
  private String caption;
  protected JPanel centerPanel = new JPanel();
  public static JXAbstractColumnData cData[] ;

  public JXAbstractTableFrame(String displayCaption ,JXAbstractColumnData[] columnData ,Vector rowDatas ) {
    super(displayCaption);
    this.caption = displayCaption;
    setSize(600, 600);
    centerPanel.setLayout(new BorderLayout());
    m_data = new JXAbstractTableModel(columnData,rowDatas);
    m_title = new JLabel(displayCaption, 
    new ImageIcon("money.gif"), SwingConstants.LEFT);
    m_title.setFont(new Font("TimesRoman",Font.BOLD,24));
    m_title.setForeground(Color.black);
    centerPanel.add(m_title, BorderLayout.NORTH);

    m_table = new JTable();
    m_table.setAutoCreateColumnsFromModel(false);
    m_table.setModel(m_data); 
     /*create table column*/   
    for (int k = 0; k < JXAbstractTableModel.m_columns.length; k++) {
      DefaultTableCellRenderer renderer = new 
        ColoredTableCellRenderer();
      renderer.setHorizontalAlignment(
    		  JXAbstractTableModel.m_columns[k].m_alignment);
      TableColumn column = new TableColumn(k, 
    		  JXAbstractTableModel.m_columns[k].m_width, renderer, null);
      m_table.addColumn(column);   
    }

    JTableHeader header = m_table.getTableHeader();
    header.setUpdateTableInRealTime(true);
    header.addMouseListener(m_data.new ColumnListener(m_table));
    header.setReorderingAllowed(true);

    JScrollPane ps = new JScrollPane();
    
    ps.getViewport().add(m_table);
    centerPanel.add(ps, BorderLayout.CENTER);
    getContentPane().add(centerPanel);

    WindowListener wndCloser = new WindowAdapter() {
      public void windowClosing(WindowEvent e) {
        setVisible(false);
      }
    };
    addWindowListener(wndCloser);
    Toolkit t = Toolkit.getDefaultToolkit();
	int x = (int)((t.getScreenSize().getWidth() - getWidth()) / 2);
	int y = (int)((t.getScreenSize().getHeight() -getHeight()) / 2);
	setLocation(x, y);
	setVisible(true);

  }

  public static void main(String argv[]) {
	  JXAbstractColumnData[] cdata = {
			  new JXAbstractColumnData("Name",100,JLabel.LEFT ),
			  new JXAbstractColumnData("LastName",100,JLabel.LEFT ), 
			  new JXAbstractColumnData("Address",100,JLabel.LEFT ) 
	  };
	 Vector v = new Vector();
	 HashMap h = new HashMap();
	 h.put("Name", "Jon Cooper");
	 h.put("LastName", "J.Cooper");
	 h.put("Address", "88 Silva Lane, Suite 250");
	 
	 JXAbstractRowData jxrow = new JXAbstractRowData(h);
	 HashMap h1 = new HashMap();
	 h1.put("Name", "Robert");
	 h1.put("LastName", "Robert,Carr");
	 h1.put("Address", "88 Silva Lane, Suite 250");
	 JXAbstractRowData jxrow1 = new JXAbstractRowData(h1);
	 v.addElement(jxrow);
	 v.addElement(jxrow1);
    new JXAbstractTableFrame("Address Information",cdata,v);
  //  System.out.println(new Fraction(500.6666).doubleValue());
    //System.out.println(new SmartLong(555588).toString());
    
  }
}

class ColoredTableCellRenderer extends DefaultTableCellRenderer
{
  public void setValue(Object value) 
  {
    if (value instanceof ColorData) {
      ColorData cvalue = (ColorData)value;
      setForeground(cvalue.m_color);
      setText(cvalue.m_data.toString());
    }
    else if (value instanceof IconData) {
      IconData ivalue = (IconData)value;
      setIcon(ivalue.m_icon);
      setText(ivalue.m_data.toString());
    }
    else
      super.setValue(value);
  }
  
}

class Fraction
{
  public int m_whole;
  public int m_nom;
  public int m_den;

  public Fraction(double value) {
    int sign = value <0 ? -1 : 1;
    value = Math.abs(value);
    m_whole = (int)value;
    m_den = 32;
    m_nom = (int)((value-m_whole)*m_den);
    while (m_nom!=0 && m_nom%2==0) {
      m_nom /= 2;
      m_den /= 2;
    }
    if (m_whole==0)
      m_nom *= sign;
    else
      m_whole *= sign;
  }

  public double doubleValue() {
    return (double)m_whole + (double)m_nom/m_den;
  }

  public String toString() {
    if (m_nom==0)
      return ""+m_whole;
    else if (m_whole==0)
      return ""+m_nom+"/"+m_den;
    else
      return ""+m_whole+" "+m_nom+"/"+m_den;
  }
}

class SmartLong
{
  protected static NumberFormat FORMAT;
  static {
    FORMAT = NumberFormat.getInstance();
    FORMAT.setGroupingUsed(true);
  }

  public long m_value;

  public SmartLong(long value) { m_value = value; }

  public long longValue() { return m_value; }

  public String toString() { return FORMAT.format(m_value); }
}


class ColorData
{
  public Color  m_color;
  public Object m_data;
  public static Color GREEN = new Color(0, 128, 0);
  public static Color RED = Color.red;

  public ColorData(Fraction data) {
    m_color = data.doubleValue() >= 0 ? GREEN : RED;
    m_data  = data;
  }

  public ColorData(Color color, Object data) {
    m_color = color;
    m_data  = data;
  }
    
  public ColorData(Double data) {
    m_color = data.doubleValue() >= 0 ? GREEN : RED;
    m_data  = data;
  }
    
  public String toString() {
    return m_data.toString();
  }
}

class IconData
{
  public ImageIcon  m_icon;
  public Object m_data;

  public IconData(ImageIcon icon, Object data) {
    m_icon = icon;
    m_data = data;
  }
    
  public String toString() {
    return m_data.toString();
  }
}




