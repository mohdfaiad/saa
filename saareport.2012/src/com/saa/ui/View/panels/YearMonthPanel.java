package com.saa.ui.View.panels;
import com.saa.data.ui.UICollections;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
public class YearMonthPanel extends BasePanel{
    public JComboBox yearCombo,monthCombo;
    public JPanel headerPanel = new JPanel(new FlowLayout());
    public JPanel centerPanel = new JPanel(new FlowLayout());
    
    public YearMonthPanel(){
        setLayout(new FlowLayout());
        yearCombo= new JComboBox(UICollections.years);
        //tinnarat.a 10-Feb-2016 set editable = true allow user to interact with the value
        yearCombo.setEditable(true);
        monthCombo = new JComboBox(UICollections.months);
        
        JPanel yearPanel = new JPanel(new FlowLayout());
        yearPanel.add(new JLabel("FisYear :"),BorderLayout.LINE_START);
        yearPanel.add(yearCombo,BorderLayout.CENTER);
        centerPanel.add(yearPanel,BorderLayout.PAGE_START);
        JPanel monthPanel =   new JPanel(new FlowLayout());
        monthPanel.add(new JLabel("FisMonth :"),BorderLayout.LINE_START);
        monthPanel.add(monthCombo,BorderLayout.CENTER);
        centerPanel.add(monthPanel ,BorderLayout.PAGE_END);
        add(headerPanel,BorderLayout.PAGE_END);
        add(centerPanel,BorderLayout.CENTER);
        
    }
    
    public Object getYear(){
        return (Object) new Integer(yearCombo.getSelectedItem().toString());
    }
    public Object getMonth(){
        return (Object)new Integer(monthCombo.getSelectedIndex() +1);
    }
    
}