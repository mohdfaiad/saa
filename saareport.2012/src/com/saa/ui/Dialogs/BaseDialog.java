/*
 * BaseDialog.java
 *
 * Created on April 23, 2007, 6:19 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.Dialogs;

import com.saa.ui.View.BaseView;
import com.saa.ui.View.BaseViewDecorator;
import com.saa.ui.View.panels.ButtonsPanel;
import com.saa.ui.utils.UIUtils;
import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.SpringLayout;

/**
 *
 * @author Administrator
 */
public class BaseDialog extends JDialog implements ActionListener{
    
    /** Creates a new instance of BaseDialog */

    protected BaseViewDecorator decorator;
    private String caption="BaseDialog";
    public JButton okButton, exitButton;
   // private GridLayout layout ;
    public JPanel areaPanel;
    public Container contents;
    ButtonsPanel buttonPanel;
    
    protected int modalResult = ModalResult.MR_EXIT;
    protected JFrame parrentFrame;
    public BaseDialog() {
        
        
    }
    public BaseDialog(JFrame frame,String title){
        super(frame);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        //single window state
        setResizable(false);
      //  setModal(true);
        //setM
        parrentFrame = frame; 
        this.caption = title;
       //layout = new GridLayout(3,2);
      //  buttonPanel = new JPanel(new FlowLayout());
       // setLayout(layout);
        contents = getContentPane();
        decorator = new BaseViewDecorator(this);
        areaPanel = new JPanel();
        contents.add(areaPanel,BorderLayout.CENTER);
        buttonPanel = (ButtonsPanel)decorator.getButtonsPanel();
        buttonPanel.submitButton.addActionListener(this);
        buttonPanel.cancelButton.addActionListener(this);
        contents.add(buttonPanel,BorderLayout.PAGE_END);
        
        setTitle(caption);
        pack();
        //passing JDialog supper class
       UIUtils.setLocationCenter(this);
       
     //   setVisible(true);
        
    }
  
    public void actionPerformed(ActionEvent e){
        
          if (e.getActionCommand().equals(buttonPanel.submit)){
           modalResult = ModalResult.MR_OK;
        }else if (e.getActionCommand().equals(buttonPanel.cancel)){
           modalResult = ModalResult.MR_CANCEL;
           this.setVisible(false);
        }
    }
    public int getModalResult(){
        return modalResult;
    }
    
}
