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
 * InternalFrameActivatedListener.java
 * 
 * Created on 7 febbraio 2003, 23.19
 *
 */

package it.businesslogic.ireport.gui.event;

/**
 * Implements this interface to recive InternalFrameActivatedEvent
 * In iReport this interface is implemented by the MainFrame to do
 * a lot of thins, for example to write the name of the activated window
 * on the title of the main form.
 *
 * @author  Administrator
 */
public interface InternalFrameActivatedListener  extends java.util.EventListener {
    
   /**
    * The InternalFrameActivatedEvent store the JMDIFrame activated.
    */ 
    public void internalFrameActivated(InternalFrameActivatedEvent evt);
}
