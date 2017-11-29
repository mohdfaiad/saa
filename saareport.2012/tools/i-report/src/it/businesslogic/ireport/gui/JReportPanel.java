/*
 * Copyright (C) 2005 - 2007 JasperSoft Corporation.  All rights reserved. 
 * http://www.jaspersoft.com.
 *
 * Unless you have purchased a commercial license agreement from JasperSoft,
 * the following license terms apply:
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as published by
 * the Free Software Foundation.
 *
 * This program is distributed WITHOUT ANY WARRANTY; and without the
 * implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, see http://www.gnu.org/licenses/gpl.txt
 * or write to:
 *
 * Free Software Foundation, Inc.,
 * 59 Temple Place - Suite 330,
 * Boston, MA  USA  02111-1307
 *
 *
 *
 *
 * JReportPanel.java
 * 
 * Created on 13 febbraio 2003, 23.35
 *
 */

package it.businesslogic.ireport.gui;

import it.businesslogic.ireport.ReportElement;
import it.businesslogic.ireport.Style;
import it.businesslogic.ireport.gui.event.ReportElementChangedEvent;
import java.awt.*;
import java.awt.dnd.*;
import javax.swing.*;
import java.awt.datatransfer.*;

/**
 *
 * @author  Administrator
 */
public class JReportPanel extends JPanel implements java.awt.dnd.DropTargetListener {
    
    private JReportFrame jrf = null;
    /** Creates a new instance of JReportPanel */
    public JReportPanel() {
        this.setBackground(new Color(128,128,128));
        new DropTarget( this, // component
        DnDConstants.ACTION_COPY_OR_MOVE, // actions
         this); // DropTargetListener
         this.setIgnoreRepaint(true);
    }
    
    /** Paints this component.
     * <p>
     * This method is called when the contents of the component should
     * be painted in response to the component first being shown or
     * damage needing repair.  The clip rectangle in the
     * <code>Graphics</code> parameter will be set to the area
     * which needs to be painted.
     * Subclasses of Component that override this method need not call
     * super.paint(g).
     * <p>
     * For performance reasons, Components with zero width or height
     * aren't considered to need painting when they are first shown,
     * and also aren't considered to need repair.
     *
     * @param g the graphics context to use for painting
     * @see       #update
     * @since     JDK1.0
     *
     */
   /* 
    public void paint(Graphics g){
        
        
   
    }
     */
    
    public int ccc = 0;
    protected void paintComponent(Graphics g)
    {
        
             try {
            ccc++;
            if (jrf != null){
                
             jrf.paintReportPanel(g);
            } else {
                super.paint(g);
            }
        
        } catch (Throwable ex)
        {
            ex.printStackTrace();
        }
    }
    
    /** Getter for property jrf.
     * @return Value of property jrf.
     *
     */
    public it.businesslogic.ireport.gui.JReportFrame getJrf() {
        return jrf;
    }
    
    /** Setter for property jrf.
     * @param jrf New value of property jrf.
     *
     */
    public void setJrf(it.businesslogic.ireport.gui.JReportFrame jrf) {
        this.jrf = jrf;
        if (rptt != null)
        {
            rptt.setReportFrame(jrf);
        } 
    }
    
    public java.awt.Point getToolTipLocation(java.awt.event.MouseEvent event)
    {
        return new Point( event.getX() + 30, event.getY() + 30);
    }
        
    
    public void dragEnter(java.awt.dnd.DropTargetDragEvent dtde) {
        dtde.acceptDrag(dtde.getDropAction());   
        
    }
    
    public void dragExit(java.awt.dnd.DropTargetEvent dte) {
    }
    
    public void dragOver(java.awt.dnd.DropTargetDragEvent dtde) {
        
        if (!jrf.isInsideDocument(dtde.getLocation()))
        {
            dtde.rejectDrag();
        }
        else
        {
            dtde.acceptDrag(dtde.getDropAction());        
        }
    }
    
    public void drop(java.awt.dnd.DropTargetDropEvent dtde) {
       try {
           
        DropTargetContext context = dtde.getDropTargetContext();

        Transferable tr = dtde.getTransferable();
        
        DataFlavor[] df = tr.getTransferDataFlavors();
        
        
        if (df[0].getHumanPresentableName().equals("it.businesslogic.ireport.JRField"))
        {
            java.awt.datatransfer.DataFlavor myFlavor = new java.awt.datatransfer.DataFlavor(it.businesslogic.ireport.JRField.class, it.businesslogic.ireport.JRField.class.getName());
            it.businesslogic.ireport.JRField field = (it.businesslogic.ireport.JRField)tr.getTransferData( myFlavor );
            // Add a field!!!           
            //System.out.println("Field name:" + field.getName() +" from "+ field.getClassType() );
            
            // Create a standard field...
            this.jrf.dropNewTextField( dtde.getLocation(), "$F{"+ field.getName() +"}",  field.getClassType() );
        }
        else if (df[0].getHumanPresentableName().equals("it.businesslogic.ireport.JRVariable"))
        {
            java.awt.datatransfer.DataFlavor myFlavor = new java.awt.datatransfer.DataFlavor(it.businesslogic.ireport.JRVariable.class, it.businesslogic.ireport.JRVariable.class.getName());
            it.businesslogic.ireport.JRVariable var = (it.businesslogic.ireport.JRVariable)tr.getTransferData( myFlavor );
            // Add a field!!!           
            //System.out.println("Field name:" + field.getName() +" from "+ field.getClassType() );
            
            // Create a standard field...
            this.jrf.dropNewTextField( dtde.getLocation(), "$V{"+ var.getName() +"}",  var.getClassType() );
        }
        else if (df[0].getHumanPresentableName().equals("it.businesslogic.ireport.JRParameter"))
        {
            java.awt.datatransfer.DataFlavor myFlavor = new java.awt.datatransfer.DataFlavor(it.businesslogic.ireport.JRParameter.class, it.businesslogic.ireport.JRParameter.class.getName());
            it.businesslogic.ireport.JRParameter var = (it.businesslogic.ireport.JRParameter)tr.getTransferData( myFlavor );
            // Add a field!!!           
            //System.out.println("Field name:" + field.getName() +" from "+ field.getClassType() );
            
            // Create a standard field...
            this.jrf.dropNewTextField( dtde.getLocation(), "$P{"+ var.getName() +"}",  var.getClassType() );
        }
        else if (tr.isDataFlavorSupported (DataFlavor.javaFileListFlavor))
        {
            dtde.acceptDrop ( DnDConstants.ACTION_COPY_OR_MOVE);
            java.util.List fileList = (java.util.List)tr.getTransferData(DataFlavor.javaFileListFlavor);
            
            MainFrame.getMainInstance().openFiles(fileList);
        }
        else if (df[0].getHumanPresentableName().equals("it.businesslogic.ireport.Style"))
        {
            java.awt.datatransfer.DataFlavor myFlavor = new java.awt.datatransfer.DataFlavor(it.businesslogic.ireport.Style.class, it.businesslogic.ireport.JRParameter.class.getName());
            it.businesslogic.ireport.Style var = (it.businesslogic.ireport.Style)tr.getTransferData( myFlavor );
            // Add a field!!!    
            
            
            ReportElement re = this.jrf.getElementAt(dtde.getLocation());
            if (re != null)
            {
                
                if (!jrf.getReport().getStyles().contains( var ))
                {
                    boolean found = false;
                    // Look for a style with the same name...
                    for (int i=0; i<jrf.getReport().getStyles().size(); ++i)
                    {
                        Style s = (Style)jrf.getReport().getStyles().elementAt(i);
                        if (s.getName() != null && s.getName().equals( var.getName()))
                        {
                            var = s;
                            found = true;
                            break;
                        }
                    }
                    if (!found)
                    {
                        var = new Style(var);
                        jrf.getReport().addStyle( var );
                    }
                }
                
                re.setStyle( var );
                jrf.fireReportListenerReportElementsChanged(new ReportElementChangedEvent(jrf,re, ReportElementChangedEvent.CHANGED));
                this.repaint();
            }
        }
        else
        {   
            try {
            Class c = Class.forName( df[0].getHumanPresentableName() );
            if (it.businesslogic.ireport.gui.library.AbstractLibraryObject.class.isAssignableFrom( c ))
            {
                java.awt.datatransfer.DataFlavor myFlavor = new java.awt.datatransfer.DataFlavor(c, df[0].getHumanPresentableName());
               Object obj = tr.getTransferData( myFlavor );
                ((it.businesslogic.ireport.gui.library.AbstractLibraryObject )obj).drop(dtde);
            }
            else // if (.equals("it.businesslogic.ireport.JRParameter"))
            {
                System.out.println("Dropped a "+df[0].getHumanPresentableName());
            }
            } catch (Exception ex)
            {
                System.out.println("Not valid!!");
            }
        }
        /*
        else // if (.equals("it.businesslogic.ireport.JRParameter"))
        {
            System.out.println("Dropped a "+df[0].getHumanPresentableName());
        }
        */
        context.dropComplete(true);
        } catch (Exception ex)
        {
            System.out.println("Error in drop!");
            ex.printStackTrace();
        }
       
        MainFrame.getMainInstance().getGlassPane().setVisible(false);
        jrf.setRedrawWithBufferedImage(false);
        jrf.repaint();
    }
    
    public void dropActionChanged(java.awt.dnd.DropTargetDragEvent dtde) {
        
    }
  
    private ReportPanelToolTip rptt = null;    
    public javax.swing.JToolTip createToolTip()
    {
        if (rptt == null)
        {
            rptt = new ReportPanelToolTip(this.getJrf());
        }
        return rptt;
    }
}
