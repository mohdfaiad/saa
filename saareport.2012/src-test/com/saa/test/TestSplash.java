package test;

import java.awt.*;
import java.awt.event.*;

public class TestSplash {
  MyFrame theFrame;


  public static void main (String args[]){
    TestSplash t = new TestSplash();
    t.createMainFrame();
    }

  private void createMainFrame() {
    theFrame = new MyFrame("A Dummy Frame");
    theFrame.setVisible(true);
    }

}

class MyFrame extends Frame {
  Splash mySplash;
  public MyFrame(String title){
    super(title);
    addWindowListener
      (new WindowAdapter() {
        public void windowClosing(WindowEvent e) {
          System.exit(0);
          }
        }
       );
    mySplash = new Splash(this, "./image/2.jpg");

    // dummy delay so we can see the Splash!
    for(int i = 0; i < 3000; i++) {
      System.out.println(i) ;
      }
    setSize(200,200);
    }
}
