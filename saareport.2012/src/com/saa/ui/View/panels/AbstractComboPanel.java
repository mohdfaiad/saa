

package com.saa.ui.View.panels;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.util.List;
import java.util.Vector;
import javax.swing.JComboBox;
import javax.swing.JLabel;

/**
 *
 * @author Administrator
 */
public class AbstractComboPanel extends BasePanel{
    
    public JComboBox comboBox;
    public JLabel    displayLabel;
    /** Creates a new instance of AbstractComboPanel */
    
    public AbstractComboPanel() {
       setLayout(new FlowLayout());
   
        
    }
   
    private JLabel createLabel(String label){
       displayLabel = new JLabel(label); 
       return displayLabel;
        
    }
    private JComboBox createComboBox(Vector v){
       comboBox = new JComboBox(v);
       comboBox.setEditable(true);
       return comboBox;
    }
    
    private void createComboBox(Object[] v){
        
    }
     /*overload constructure
      @param String label   - the label that will display front of combobox
      @param Vector          - collection contains data*/
    public AbstractComboPanel(String label , Vector dataCollection){
        super();
        add(createLabel(label),BorderLayout.LINE_START);
        add(createComboBox(dataCollection),BorderLayout.CENTER);
           
    }
    /*overload constructure
      @param String label   - the label that will display front of combobox
      @param Object[]      - collection contains data*/
     public AbstractComboPanel(String label , Object[] dataCollection){
        super();
        createLabel(label);
        createComboBox(dataCollection);
     }
     
     
     public Object getSelecttedObject             (){
         return comboBox.getSelectedItem();
     }
    
  
    
}
