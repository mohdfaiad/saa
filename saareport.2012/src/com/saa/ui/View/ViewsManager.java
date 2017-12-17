/*
 * ViewsManager.java
 * responsibility to return any spacifi
 * Created on April 20, 2007, 1:39 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.saa.ui.View;

/**
 *
 * @author Administrator
 */

import com.saa.ui.account.AR001Frame;
import com.saa.ui.account.AR002Frame;
import com.saa.ui.account.AR003Frame;
import com.saa.ui.account.AR004Frame;
import com.saa.ui.account.AR005Frame;
import com.saa.ui.account.AR006Frame;
import com.saa.ui.account.AR007Frame;
import com.saa.ui.account.AR008Frame;
import com.saa.ui.pc.PC001Frame;
import com.saa.ui.pc.PC002Frame;
import com.saa.ui.pc.PC003Frame;
import com.saa.ui.pn.PN001Frame;
import com.saa.ui.pn.PN002Frame;
import com.saa.ui.pn.PN005Frame;
import com.saa.ui.pn.PN006Frame;
import com.saa.ui.pn.PN007Frame;
import com.saa.ui.pn.PN009Frame;
import com.saa.ui.pn.PN012Frame;
import com.saa.ui.pn.PN013Frame;
import com.saa.ui.pn.PN014Frame;
import com.saa.ui.pn.PN015Frame;
import com.saa.ui.pn.PN016Frame;
import com.saa.ui.pn.PN017Frame;
import com.saa.ui.sa.SA001Frame;
import com.saa.ui.sa.SA002Frame;
import com.saa.ui.sa.SA003Frame;
import com.saa.ui.sa.SA004Frame;
import com.saa.ui.sa.SA005Frame;
import com.saa.ui.sa.SA006Frame;
import com.saa.ui.wh.MonthCloseFrame;
import com.saa.ui.wh.WH001Frame; 
import com.saa.ui.wh.WH002Frame;
import com.saa.ui.wh.WH003Frame;
import com.saa.ui.wh.WH004Frame;
import com.saa.ui.wh.WH005Frame;
import com.saa.ui.wh.WH006Frame;
import com.saa.ui.wh.WH007Frame;
import com.saa.ui.wh.WH008Frame;
import com.saa.ui.wh.WH009Frame;
import com.saa.ui.wh.WH010Frame;
import com.saa.ui.wh.WH011Frame;
import com.saa.ui.wh.WH012Frame;
import javax.swing.JFrame;

import com.saa.util.MessageDlg;
import com.saa.data.*;
import com.saa.ui.pn.PN010Frame;
import javax.swing.SwingUtilities;

public class ViewsManager {
	private static ViewsManager vm;

	/** Creates a new instance of ViewsManager */
	/*Indicate main system
	 *1.Warehouse
	 *2.Purchase
	 *3.Production
	 *4.Sale
	 */
	private static int mainIDX = -1;

	/*indicate submain item
	 *for instance:
	 *mainIDX 1 SubIDX 0 will return Monthly close frame
	 */
	private static int subIDX = -1;

	/*current frame instance*/
	protected static BaseView currentFrame = null;

	private JFrame parrentFrame = null;

	private ViewsManager(JFrame frame) {
		parrentFrame = frame;
	}

	public static ViewsManager getViewManager(JFrame frame) {
		if (vm == null) {
			vm = new ViewsManager(frame);
			return vm;
		}
		return vm;
	}

	public BaseView getView(final SubTreeObject node) {
		mainIDX = node.getLevel();
		subIDX = node.getSubLevel();
		switch (mainIDX) {
		case 1:

			switch (subIDX) {
			case 0:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {
						currentFrame = new MonthCloseFrame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);

					}
				});

				break;
			//currentFrame.setLocationRelativeTo()

			case 1:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new WH001Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});

				break;
			case 2:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new WH002Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
			case 3:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new WH003Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});

				break;
			case 4:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new WH004Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
			case 5:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new WH005Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
			case 6:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new WH006Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
			case 7:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new WH007Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;

			case 8: //goods receive note report
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new WH008Frame(node, 500, 500);    
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
			case 9:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new WH009Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
			case 10:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new WH010Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
                        case 11:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new WH011Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
                        case 12:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new WH012Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
			case 90:
				//MaterialRequestManager mgr = MaterialRequestManager.getManager();
			//	MaterialRequestMain mr = mgr.getMaterialRequestMain();
			//	mgr.setMaterialRequestFrame(mr);
				
				break;
			


		default:break;
		
		}
		break;
		case 2: //Purchase order
		switch (subIDX) {
			case 1:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new PC001Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});

				break;
			case 2:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new PC002Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;

			case 3:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new PC003Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
			break;
			default:
				break;
			}
			break;
		//PN Product Plan
		case 3:
			switch (subIDX) {
			/*delivery order frame*/
			case 1:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {
						currentFrame = new PN001Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);

					}
				});

				break;
			/*melt summary*/
			case 2:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {
						currentFrame = new PN002Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);

					}
				});
				break;
                                /**Reserved for Finished goods stock adjustment**/
				
				
				//melt sheet (blend) 9 Feb,2011
			case 5:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {
						currentFrame = new PN005Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);

					}
				});
				break;
				

			//melt sheet 
			case 6:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {
						currentFrame = new PN006Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);

					}
				});
				break;
				
				//check plate result 
			case 7:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {
						currentFrame = new PN007Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);

					}
				});
				break;
				
			 case 9: //finished goods retrun report
					SwingUtilities.invokeLater(new Runnable() {
						public void run() {
							currentFrame = new PN009Frame(node, 500,500);
							currentFrame.setParrent(parrentFrame);

						}
					});
					break;

				
         case 10: //stock adjustment finished good
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {
						currentFrame = new PN010Frame(node, 500,500);
						currentFrame.setParrent(parrentFrame);

					}
				});
				break;
			case 12:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {
						currentFrame = new PN012Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);

					}
				});
				break;
				//29 Sept,2010 stock card report
			case 13:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {
						currentFrame = new PN013Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);

					}
				});
				break;
				/**3 July,2008 new dross */	
				/**4 April,2011 MOVE MENU FROM Plaing to Warehouse 
				 * 7 May 2011. match with ingot release report.*/
			case 14:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {
						currentFrame = new PN014Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);

					}
				});
				break;	
			case 15: //Test new MeltSheet report
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {
						currentFrame = new PN015Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);

					}
				});
				break;	
				
			case 16: //Test new check plate report
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {
						currentFrame = new PN016Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);

					}
				});
				break;	
				
			case 17: //Test new check plate report
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {
						currentFrame = new PN017Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);

					}
				});
				break;	
	
	
			}
			break;
		case 4:
			switch (subIDX) {
			case 1:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new SA001Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});

				break;
			case 2:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new SA002Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;

			case 3:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new SA003Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
			 break;
			case 4:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new SA004Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
		//TODO
			case 5:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new SA005Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
			case 6: //16 NOV,2010 Quotation status report
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new SA006Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
				

			default:
				break;
			}
			break;
		case 5://Account Receivable
			switch(subIDX){
			//AR Invoice Report
			case 51:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new AR001Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
			case 52:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new AR002Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
			case 53:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new AR003Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
			case 54:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new AR004Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
			case 55:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new AR005Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
			case 56:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new AR006Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
				/***Print credit note 27/3/2010***/
			case 57:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new AR007Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;
				/***Print Debit note 27/3/2010***/
			case 58:
				SwingUtilities.invokeLater(new Runnable() {
					public void run() {

						currentFrame = new AR008Frame(node, 500, 500);
						currentFrame.setParrent(parrentFrame);
					}
				});
				break;


			}
			break;
		default:
			break;
		}
		return currentFrame;
	}

}
