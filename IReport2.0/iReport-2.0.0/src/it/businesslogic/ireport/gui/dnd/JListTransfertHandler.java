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
 * JListTransfertHandler.java
 * 
 * Created on 15 settembre 2004, 2.19
 *
 */

package it.businesslogic.ireport.gui.dnd;
import it.businesslogic.ireport.gui.MainFrame;
import java.awt.Component;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.datatransfer.Transferable;
import java.awt.dnd.DragSource;
import java.awt.dnd.DragSourceDragEvent;
import java.awt.dnd.DragSourceMotionListener;
import javax.swing.*;

/**
 *
 * @author  Administrator
 */
public class JListTransfertHandler extends javax.swing.TransferHandler
//iR20  implements DragSourceMotionListener 
{
        
//iR20     GhostGlassPane glassPane = null;
//iR20     final public ImageIcon imgRect = new ImageIcon(DockPanel.class.getResource("/it/businesslogic/ireport/icons/palette/rectangle.png"));
    
    public int getSourceActions(JComponent c) 
    {    
        return COPY;       
    }    
    
    protected Transferable createTransferable(JComponent c) 
    {
       
//iR20         DragSource.getDefaultDragSource().addDragSourceMotionListener(this);
//iR20         glassPane = (GhostGlassPane) MainFrame.getMainInstance().getGlassPane();
//iR20         glassPane.setImage(imgRect.getImage(), false);    
        
        if (c instanceof JList)
        {
            JList list = (JList)c;

            return new it.businesslogic.ireport.gui.dnd.TransferableObject(list.getSelectedValue()); 
        }
        
        return new it.businesslogic.ireport.gui.dnd.TransferableObject(c);
    }

//iR20     public void dragMouseMoved(DragSourceDragEvent e) {
//iR20         
//iR20         Component c = e.getDragSourceContext().getComponent();
//iR20 
//iR20         Point p = (Point) e.getLocation().clone();
//iR20         //SwingUtilities.convertPointToScreen(p, c);
//iR20         SwingUtilities.convertPointFromScreen(p, glassPane);
//iR20         
//iR20         Rectangle areaToRepaint = glassPane.calculateRepaintgArea(p);
//iR20         
//iR20         glassPane.setVisible(true);
//iR20         
//iR20         if (areaToRepaint != null)
//iR20         {
//iR20             glassPane.setPoint(p);
//iR20             glassPane.repaint(areaToRepaint);
//iR20         }
//iR20     }
    
    
//iR20     public void exportDone(JComponent source, Transferable data, int action) {
//iR20        
//iR20             DragSource.getDefaultDragSource().removeDragSourceMotionListener(this);
//iR20             boolean accepted = (action != NONE);
//iR20             //if (tree.getExtremeLevel() >= 2) {
//iR20             //    gp.setAccepted(accepted);
//iR20             //    new TimingController(300, this).start();
//iR20             //} else {
//iR20                 glassPane.setImage(null);
//iR20                 System.out.println("End!");
//iR20     }
}
