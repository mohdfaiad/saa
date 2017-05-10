package com.saa.ui.binding.test;

import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import javax.swing.*;
 
import java.text.DecimalFormat;
import java.text.NumberFormat;
 
import javax.swing.text.DefaultFormatterFactory;
import javax.swing.text.NumberFormatter;
import javax.swing.text.MaskFormatter;
import java.text.ParseException;
 
 
class FormatFieldSample1 extends JFrame {
    JPanel mainPanel = new JPanel();
    
    JLabel formatLbl = new JLabel("Format");
    JFormattedTextField formatFld = new JFormattedTextField(createNumberFormat(2));
    
    JLabel validationLbl = new JLabel("Validation");
    JFormattedTextField validationFld = new JFormattedTextField(createMaskFormat("##"));
    
    
    
    public FormatFieldSample1() {
        setLocation(300,100);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        
        formatFld.setColumns(10);
        formatFld.setColumns(10);
        formatFld.setText("1000000");
        validationFld.setText("1000000");
        
        mainPanel.setLayout(new GridBagLayout());
        GridBagConstraints c = new GridBagConstraints();
        c.fill = GridBagConstraints.HORIZONTAL;
        c.insets = new Insets(5, 5, 5, 5);
        
        c.gridx = 0;
        c.gridy = 0;
        c.anchor = GridBagConstraints.EAST;
        mainPanel.add(formatLbl, c);
        
        c.gridx = 1;
        c.gridy = 0;
        c.anchor = GridBagConstraints.WEST;
        mainPanel.add(formatFld, c);
        
        
        c.gridx = 0;
        c.gridy = 1;
        c.anchor = GridBagConstraints.EAST;
        mainPanel.add(validationLbl, c);
        
        c.gridx = 1;
        c.gridy = 1;
        c.anchor = GridBagConstraints.WEST;
        mainPanel.add(validationFld, c);
        
        getContentPane().add(mainPanel);
        pack();
    }
    
    public MaskFormatter createMaskFormat(String ft) {
        MaskFormatter formatter = null;
        try {
            formatter = new MaskFormatter(ft);
        } catch (ParseException exc) {
            System.out.println("formater exception: " + exc.getMessage());
        }
        return formatter;
    }
    
    
    public DefaultFormatterFactory createNumberFormat(int minFraction){
        NumberFormat format;
        format = NumberFormat.getNumberInstance();
        format.setMinimumFractionDigits(minFraction);
        
        
        DefaultFormatterFactory df = null;
        try {
            df= new DefaultFormatterFactory(
                    new NumberFormatter(format),
                    new NumberFormatter(format),
                    new NumberFormatter(format), new MaskFormatter("######"));
            
        }catch(Exception e){}
        return df;
    }
    
    
    
    public static void main(String[] args) {
        new FormatFieldSample1().setVisible(true);
    }
}

