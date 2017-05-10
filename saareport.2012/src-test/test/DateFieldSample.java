/***********************************************************
 *
 * DateFieldSample.java
 * Copyright (C) 2003 Brenda Bell
 *
 ***********************************************************/

/***********************************************************
 *
 * This file is part of JavaDatePicker.
 *
 * JavaDatePicker is free software; you can redistribute it
 * and/or modify it under the terms of the GNU Lesser
 * General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * JavaDatePicker is distributed in the hope that it will
 * be useful, but WITHOUT ANY WARRANTY; without even the
 * implied warranty of MERCHANTABILITY or FITNESS FOR A
 * PARTICULAR PURPOSE.  See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser
 * General Public License along with JavaDatePicker; if
 * not, write to the Free Software Foundation, Inc., 59
 * Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 ***********************************************************/

package test;

import javax.swing.*;
import java.awt.*;


public class DateFieldSample {
    public static void main(String[] args) {
        JDialog dlg = new JDialog(new Frame(), true);
        DateField df = new DateField();
        dlg.getContentPane().add(df);
         
        dlg.pack();
        dlg.show();
        System.out.println(df.getDate().toString());
        System.exit(0);
    }
}
