/*
 * TestJDialog.java
 *
 * Created on 26 เมษายน 2550, 13:30 น.
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package test;


/*
 * TestJDialog.java
 *
 * Created on 26 เมษายน 2550, 13:25 น.
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

/**
 *
 * @author Administrator
 */

import com.saa.logger.AppLogger;
import com.saa.ui.Dialogs.BaseDialog;
import com.saa.ui.Dialogs.ProgressDialog;
import java.awt.Window;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.IOException;
import java.util.logging.FileHandler;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;
import javax.swing.*;
public class TestJDialog {
 
	public TestJDialog() {
		super();
	}
        private static String fileName ="../logs/service.log";
     //   AppLogger logger = AppLogger.getLogger();
        private static Logger logger = Logger.getAnonymousLogger();
	   // private final static String fileName = "c:/project/saa/src/saareport/logs/service.log";
          //  private Level level = Level.ALL;
	    /*avoid new operator*/
	 
	public static void main(String[] args) {
		final JDialog d = new JDialog((JFrame) null, "Hello");
		d.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
                d.setModal(true);
		d.addWindowListener(new JDialogWindowAdapter(d));
                final ProgressDialog p   = new ProgressDialog( d);;
               
                try
                {
                     SwingUtilities.invokeLater(new Runnable() {
                            public void run() {
                                   
                               
                                p.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
                                p.setModal(false);
                                p.setVisible(true);
                                p.setProgress(10);
                                try{
                                Thread.sleep(10);
                                }catch(Exception e){
                                    e.printStackTrace();
                                }
                                p.setProgress(30);
                                  try{
                                Thread.sleep(1000);
                                }catch(Exception e){
                                    e.printStackTrace();
                                }
                                p.setProgress(60);
                                try{
                                Thread.sleep(1000);
                                }catch(Exception e){
                                    e.printStackTrace();
                                }
                                p.setProgress(30);
                                 try{
                                Thread.sleep(1000);
                                }catch(Exception e){
                                    e.printStackTrace();
                                }
                                   p.setProgress(100);
                          }
                        });
                   
                
	    	try
	    	{
	    	FileHandler handler = new FileHandler(fileName);
	    	handler.setFormatter(new SimpleFormatter());
	    	logger.addHandler(handler);
	    	}catch(IOException e){
                    e.printStackTrace();
                }
                }finally
                {
                     p.setVisible(false);
                }
 
		d.show();
                System.out.println("JDialog Close");
                BaseDialog jxDlg = new  BaseDialog((JFrame) null, "JxHello");
                jxDlg.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
                jxDlg.setModal(true);
                jxDlg.addWindowListener(new JDialogWindowAdapter(d));
                jxDlg.show();
                System.out.println("JX Close");
 
		//This line will hang your system.
		//Should end the program but doesn't.  This only way
		//this program will end is if you remove the bottom
		//line and click on the x in the dialog.
		d.dispose();
 
	}
}
 
class JDialogWindowAdapter extends WindowAdapter {
 
	private JDialog m_dialog = null;
 
	/**
	 * Constructs the adapter.
	 * @param d the dialog to listen to.
	 */
	public JDialogWindowAdapter(JDialog d) {
		m_dialog = d;
	}
 
	public void windowClosing(WindowEvent e) {
		super.windowClosing(e);
		//Dispose the hidden parent so that there are
		//no more references to the dialog and it can 
		//be correctly garbage collected.
		 ((Window) m_dialog.getParent()).dispose();
	}
}

