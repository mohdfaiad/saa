/*
 * CurrentDir.java
 *
 * Created on 7 æƒ…¿“§¡ 2550, 13:10 π.
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */


package test;
/*
 * CurrentDir.java
 *
 * Created on 7 æƒ…¿“§¡ 2550, 13:09 π.
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

import java.io.File;
 public class CurrentDir {
   public static void main (String args[]) {
     File dir1 = new File (".");
     File dir2 = new File ("..");
     try {
       System.out.println ("Current dir : " + dir1.getCanonicalPath());
       System.out.println ("Parent  dir : " + dir2.getCanonicalPath());
       }
     catch(Exception e) {
       e.printStackTrace();
       }
     }
}
