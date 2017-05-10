

package com.saa.data;

/**
 *
 * @author Administrator
 */
public class ReportOptions {
    
    /** Creates a new instance of ReportOptions */
    public ReportOptions() {
    }
    
    public static class ExportExtension{
        public static String HTML       =   ".html";
        public static String XLS        =   ".xls";
        public static String RTF        =   ".rtf";
        public static String PDF        =   ".pdf";
    }
    public static class ExportOptions{
        public static int PREVIEW   = 0;
        public static int HTML      = 1;
        public static int EXCEL     = 2;
        public static int WORD      = 3;
        public static int PDF       = 4;
        public static String[] options = {"Preview" ,"Export to HTML","Export to Excel","Export to Word","Export to PDF"};
    }
    
    
    
}
