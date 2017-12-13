/*
 * Generated by JasperReports - 12/13/17 10:35 AM
 */
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.fill.*;

import java.util.*;
import java.math.*;
import java.text.*;
import java.io.*;
import java.net.*;

import net.sf.jasperreports.engine.*;
import java.util.*;
import net.sf.jasperreports.engine.data.*;


/**
 *
 */
public class WH007_1513136150820_692049 extends JREvaluator
{


    /**
     *
     */
    private JRFillParameter parameter_IS_IGNORE_PAGINATION = null;
    private JRFillParameter parameter_REPORT_CONNECTION = null;
    private JRFillParameter parameter_REPORT_LOCALE = null;
    private JRFillParameter parameter_REPORT_TIME_ZONE = null;
    private JRFillParameter parameter_REPORT_MAX_COUNT = null;
    private JRFillParameter parameter_REPORT_SCRIPTLET = null;
    private JRFillParameter parameter_pMeltNo = null;
    private JRFillParameter parameter_REPORT_FORMAT_FACTORY = null;
    private JRFillParameter parameter_REPORT_PARAMETERS_MAP = null;
    private JRFillParameter parameter_REPORT_RESOURCE_BUNDLE = null;
    private JRFillParameter parameter_REPORT_DATA_SOURCE = null;
    private JRFillParameter parameter_REPORT_CLASS_LOADER = null;
    private JRFillParameter parameter_REPORT_URL_HANDLER_FACTORY = null;
    private JRFillParameter parameter_REPORT_VIRTUALIZER = null;
    private JRFillField field_UNIT_COST = null;
    private JRFillField field_REF_DATE = null;
    private JRFillField field_CTIME = null;
    private JRFillField field_ITEM_DESCS = null;
    private JRFillField field_DOC_NO = null;
    private JRFillField field_ITEM_CODE = null;
    private JRFillField field_REMARKS = null;
    private JRFillField field_GROUP_ID = null;
    private JRFillField field_TOTAL_COST = null;
    private JRFillField field_UOM = null;
    private JRFillField field_STATUS = null;
    private JRFillField field_MELT_NO = null;
    private JRFillField field_QTY = null;
    private JRFillField field_ONHAND_QTY = null;
    private JRFillField field_REF_NO = null;
    private JRFillField field_DESCS = null;
    private JRFillField field_PURCHASE_DATE = null;
    private JRFillField field_DOC_DATE = null;
    private JRFillField field_LOT_NO = null;
    private JRFillVariable variable_PAGE_NUMBER = null;
    private JRFillVariable variable_COLUMN_NUMBER = null;
    private JRFillVariable variable_REPORT_COUNT = null;
    private JRFillVariable variable_PAGE_COUNT = null;
    private JRFillVariable variable_COLUMN_COUNT = null;
    private JRFillVariable variable_GDOC_NO_COUNT = null;


    /**
     *
     */
    public void customizedInit(
        Map pm,
        Map fm,
        Map vm
        )
    {
        initParams(pm);
        initFields(fm);
        initVars(vm);
    }


    /**
     *
     */
    private void initParams(Map pm)
    {
        parameter_IS_IGNORE_PAGINATION = (JRFillParameter)pm.get("IS_IGNORE_PAGINATION");
        parameter_REPORT_CONNECTION = (JRFillParameter)pm.get("REPORT_CONNECTION");
        parameter_REPORT_LOCALE = (JRFillParameter)pm.get("REPORT_LOCALE");
        parameter_REPORT_TIME_ZONE = (JRFillParameter)pm.get("REPORT_TIME_ZONE");
        parameter_REPORT_MAX_COUNT = (JRFillParameter)pm.get("REPORT_MAX_COUNT");
        parameter_REPORT_SCRIPTLET = (JRFillParameter)pm.get("REPORT_SCRIPTLET");
        parameter_pMeltNo = (JRFillParameter)pm.get("pMeltNo");
        parameter_REPORT_FORMAT_FACTORY = (JRFillParameter)pm.get("REPORT_FORMAT_FACTORY");
        parameter_REPORT_PARAMETERS_MAP = (JRFillParameter)pm.get("REPORT_PARAMETERS_MAP");
        parameter_REPORT_RESOURCE_BUNDLE = (JRFillParameter)pm.get("REPORT_RESOURCE_BUNDLE");
        parameter_REPORT_DATA_SOURCE = (JRFillParameter)pm.get("REPORT_DATA_SOURCE");
        parameter_REPORT_CLASS_LOADER = (JRFillParameter)pm.get("REPORT_CLASS_LOADER");
        parameter_REPORT_URL_HANDLER_FACTORY = (JRFillParameter)pm.get("REPORT_URL_HANDLER_FACTORY");
        parameter_REPORT_VIRTUALIZER = (JRFillParameter)pm.get("REPORT_VIRTUALIZER");
    }


    /**
     *
     */
    private void initFields(Map fm)
    {
        field_UNIT_COST = (JRFillField)fm.get("UNIT_COST");
        field_REF_DATE = (JRFillField)fm.get("REF_DATE");
        field_CTIME = (JRFillField)fm.get("CTIME");
        field_ITEM_DESCS = (JRFillField)fm.get("ITEM_DESCS");
        field_DOC_NO = (JRFillField)fm.get("DOC_NO");
        field_ITEM_CODE = (JRFillField)fm.get("ITEM_CODE");
        field_REMARKS = (JRFillField)fm.get("REMARKS");
        field_GROUP_ID = (JRFillField)fm.get("GROUP_ID");
        field_TOTAL_COST = (JRFillField)fm.get("TOTAL_COST");
        field_UOM = (JRFillField)fm.get("UOM");
        field_STATUS = (JRFillField)fm.get("STATUS");
        field_MELT_NO = (JRFillField)fm.get("MELT_NO");
        field_QTY = (JRFillField)fm.get("QTY");
        field_ONHAND_QTY = (JRFillField)fm.get("ONHAND_QTY");
        field_REF_NO = (JRFillField)fm.get("REF_NO");
        field_DESCS = (JRFillField)fm.get("DESCS");
        field_PURCHASE_DATE = (JRFillField)fm.get("PURCHASE_DATE");
        field_DOC_DATE = (JRFillField)fm.get("DOC_DATE");
        field_LOT_NO = (JRFillField)fm.get("LOT_NO");
    }


    /**
     *
     */
    private void initVars(Map vm)
    {
        variable_PAGE_NUMBER = (JRFillVariable)vm.get("PAGE_NUMBER");
        variable_COLUMN_NUMBER = (JRFillVariable)vm.get("COLUMN_NUMBER");
        variable_REPORT_COUNT = (JRFillVariable)vm.get("REPORT_COUNT");
        variable_PAGE_COUNT = (JRFillVariable)vm.get("PAGE_COUNT");
        variable_COLUMN_COUNT = (JRFillVariable)vm.get("COLUMN_COUNT");
        variable_GDOC_NO_COUNT = (JRFillVariable)vm.get("GDOC_NO_COUNT");
    }


    /**
     *
     */
    public Object evaluate(int id) throws Throwable
    {
        Object value = null;

        switch (id)
        {
            case 0 : 
            {
                value = (java.lang.String)("05W11");//$JR_EXPR_ID=0$
                break;
            }
            case 1 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=1$
                break;
            }
            case 2 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=2$
                break;
            }
            case 3 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=3$
                break;
            }
            case 4 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=4$
                break;
            }
            case 5 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=5$
                break;
            }
            case 6 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=6$
                break;
            }
            case 7 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=7$
                break;
            }
            case 8 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=8$
                break;
            }
            case 9 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=9$
                break;
            }
            case 10 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=10$
                break;
            }
            case 11 : 
            {
                value = (java.lang.Object)(((java.lang.String)field_LOT_NO.getValue()));//$JR_EXPR_ID=11$
                break;
            }
            case 12 : 
            {
                value = (java.lang.String)("P."+((java.lang.Integer)variable_PAGE_NUMBER.getValue()));//$JR_EXPR_ID=12$
                break;
            }
            case 13 : 
            {
                value = (java.lang.String)("Melt No");//$JR_EXPR_ID=13$
                break;
            }
            case 14 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_CTIME.getValue()));//$JR_EXPR_ID=14$
                break;
            }
            case 15 : 
            {
                value = (java.lang.String)("RID:WH011");//$JR_EXPR_ID=15$
                break;
            }
            case 16 : 
            {
                value = (java.lang.String)("CODE:FM-WH-11");//$JR_EXPR_ID=16$
                break;
            }
            case 17 : 
            {
                value = (java.lang.String)("Rev:00,12.12.17");//$JR_EXPR_ID=17$
                break;
            }
            case 18 : 
            {
                value = (java.lang.String)(((java.lang.String)field_MELT_NO.getValue()));//$JR_EXPR_ID=18$
                break;
            }
            case 19 : 
            {
                value = (java.lang.String)("DOC NO:");//$JR_EXPR_ID=19$
                break;
            }
            case 20 : 
            {
                value = (java.lang.String)("DOC Date:");//$JR_EXPR_ID=20$
                break;
            }
            case 21 : 
            {
                value = (java.lang.String)("DESCRIPTION :");//$JR_EXPR_ID=21$
                break;
            }
            case 22 : 
            {
                value = (java.lang.String)("STATUS:");//$JR_EXPR_ID=22$
                break;
            }
            case 23 : 
            {
                value = (java.lang.String)(((java.lang.String)field_LOT_NO.getValue()));//$JR_EXPR_ID=23$
                break;
            }
            case 24 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_DOC_DATE.getValue()));//$JR_EXPR_ID=24$
                break;
            }
            case 25 : 
            {
                value = (java.lang.String)(((java.lang.String)field_DESCS.getValue()));//$JR_EXPR_ID=25$
                break;
            }
            case 26 : 
            {
                value = (java.lang.String)(((java.lang.String)field_STATUS.getValue()));//$JR_EXPR_ID=26$
                break;
            }
            case 27 : 
            {
                value = (java.lang.String)(((java.lang.String)field_REMARKS.getValue()));//$JR_EXPR_ID=27$
                break;
            }
            case 28 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_PURCHASE_DATE.getValue()));//$JR_EXPR_ID=28$
                break;
            }
            case 29 : 
            {
                value = (java.lang.String)(((java.lang.String)field_LOT_NO.getValue()));//$JR_EXPR_ID=29$
                break;
            }
            case 30 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_DESCS.getValue()));//$JR_EXPR_ID=30$
                break;
            }
            case 31 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()));//$JR_EXPR_ID=31$
                break;
            }
            case 32 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getValue()));//$JR_EXPR_ID=32$
                break;
            }
            case 33 : 
            {
                value = (java.lang.Double)(new java.lang.Double(  (((java.lang.Double)field_QTY.getValue()).doubleValue()) *(((java.lang.Double)field_UNIT_COST.getValue()).doubleValue()) ));//$JR_EXPR_ID=33$
                break;
            }
            case 34 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_CODE.getValue()));//$JR_EXPR_ID=34$
                break;
            }
            case 35 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_REF_DATE.getValue()));//$JR_EXPR_ID=35$
                break;
            }
            case 36 : 
            {
                value = (java.lang.String)(((java.lang.String)field_REF_NO.getValue()));//$JR_EXPR_ID=36$
                break;
            }
            case 37 : 
            {
                value = (java.lang.String)("�Ѵ����______________________");//$JR_EXPR_ID=37$
                break;
            }
            case 38 : 
            {
                value = (java.lang.String)("͹��ѵ���_______________________ ");//$JR_EXPR_ID=38$
                break;
            }
           default :
           {
           }
        }
        
        return value;
    }


    /**
     *
     */
    public Object evaluateOld(int id) throws Throwable
    {
        Object value = null;

        switch (id)
        {
            case 0 : 
            {
                value = (java.lang.String)("05W11");//$JR_EXPR_ID=0$
                break;
            }
            case 1 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=1$
                break;
            }
            case 2 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=2$
                break;
            }
            case 3 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=3$
                break;
            }
            case 4 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=4$
                break;
            }
            case 5 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=5$
                break;
            }
            case 6 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=6$
                break;
            }
            case 7 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=7$
                break;
            }
            case 8 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=8$
                break;
            }
            case 9 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=9$
                break;
            }
            case 10 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=10$
                break;
            }
            case 11 : 
            {
                value = (java.lang.Object)(((java.lang.String)field_LOT_NO.getOldValue()));//$JR_EXPR_ID=11$
                break;
            }
            case 12 : 
            {
                value = (java.lang.String)("P."+((java.lang.Integer)variable_PAGE_NUMBER.getOldValue()));//$JR_EXPR_ID=12$
                break;
            }
            case 13 : 
            {
                value = (java.lang.String)("Melt No");//$JR_EXPR_ID=13$
                break;
            }
            case 14 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_CTIME.getOldValue()));//$JR_EXPR_ID=14$
                break;
            }
            case 15 : 
            {
                value = (java.lang.String)("RID:WH011");//$JR_EXPR_ID=15$
                break;
            }
            case 16 : 
            {
                value = (java.lang.String)("CODE:FM-WH-11");//$JR_EXPR_ID=16$
                break;
            }
            case 17 : 
            {
                value = (java.lang.String)("Rev:00,12.12.17");//$JR_EXPR_ID=17$
                break;
            }
            case 18 : 
            {
                value = (java.lang.String)(((java.lang.String)field_MELT_NO.getOldValue()));//$JR_EXPR_ID=18$
                break;
            }
            case 19 : 
            {
                value = (java.lang.String)("DOC NO:");//$JR_EXPR_ID=19$
                break;
            }
            case 20 : 
            {
                value = (java.lang.String)("DOC Date:");//$JR_EXPR_ID=20$
                break;
            }
            case 21 : 
            {
                value = (java.lang.String)("DESCRIPTION :");//$JR_EXPR_ID=21$
                break;
            }
            case 22 : 
            {
                value = (java.lang.String)("STATUS:");//$JR_EXPR_ID=22$
                break;
            }
            case 23 : 
            {
                value = (java.lang.String)(((java.lang.String)field_LOT_NO.getOldValue()));//$JR_EXPR_ID=23$
                break;
            }
            case 24 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_DOC_DATE.getOldValue()));//$JR_EXPR_ID=24$
                break;
            }
            case 25 : 
            {
                value = (java.lang.String)(((java.lang.String)field_DESCS.getOldValue()));//$JR_EXPR_ID=25$
                break;
            }
            case 26 : 
            {
                value = (java.lang.String)(((java.lang.String)field_STATUS.getOldValue()));//$JR_EXPR_ID=26$
                break;
            }
            case 27 : 
            {
                value = (java.lang.String)(((java.lang.String)field_REMARKS.getOldValue()));//$JR_EXPR_ID=27$
                break;
            }
            case 28 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_PURCHASE_DATE.getOldValue()));//$JR_EXPR_ID=28$
                break;
            }
            case 29 : 
            {
                value = (java.lang.String)(((java.lang.String)field_LOT_NO.getOldValue()));//$JR_EXPR_ID=29$
                break;
            }
            case 30 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_DESCS.getOldValue()));//$JR_EXPR_ID=30$
                break;
            }
            case 31 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_QTY.getOldValue()));//$JR_EXPR_ID=31$
                break;
            }
            case 32 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getOldValue()));//$JR_EXPR_ID=32$
                break;
            }
            case 33 : 
            {
                value = (java.lang.Double)(new java.lang.Double(  (((java.lang.Double)field_QTY.getOldValue()).doubleValue()) *(((java.lang.Double)field_UNIT_COST.getOldValue()).doubleValue()) ));//$JR_EXPR_ID=33$
                break;
            }
            case 34 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_CODE.getOldValue()));//$JR_EXPR_ID=34$
                break;
            }
            case 35 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_REF_DATE.getOldValue()));//$JR_EXPR_ID=35$
                break;
            }
            case 36 : 
            {
                value = (java.lang.String)(((java.lang.String)field_REF_NO.getOldValue()));//$JR_EXPR_ID=36$
                break;
            }
            case 37 : 
            {
                value = (java.lang.String)("�Ѵ����______________________");//$JR_EXPR_ID=37$
                break;
            }
            case 38 : 
            {
                value = (java.lang.String)("͹��ѵ���_______________________ ");//$JR_EXPR_ID=38$
                break;
            }
           default :
           {
           }
        }
        
        return value;
    }


    /**
     *
     */
    public Object evaluateEstimated(int id) throws Throwable
    {
        Object value = null;

        switch (id)
        {
            case 0 : 
            {
                value = (java.lang.String)("05W11");//$JR_EXPR_ID=0$
                break;
            }
            case 1 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=1$
                break;
            }
            case 2 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=2$
                break;
            }
            case 3 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=3$
                break;
            }
            case 4 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=4$
                break;
            }
            case 5 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=5$
                break;
            }
            case 6 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=6$
                break;
            }
            case 7 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=7$
                break;
            }
            case 8 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=8$
                break;
            }
            case 9 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=9$
                break;
            }
            case 10 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=10$
                break;
            }
            case 11 : 
            {
                value = (java.lang.Object)(((java.lang.String)field_LOT_NO.getValue()));//$JR_EXPR_ID=11$
                break;
            }
            case 12 : 
            {
                value = (java.lang.String)("P."+((java.lang.Integer)variable_PAGE_NUMBER.getEstimatedValue()));//$JR_EXPR_ID=12$
                break;
            }
            case 13 : 
            {
                value = (java.lang.String)("Melt No");//$JR_EXPR_ID=13$
                break;
            }
            case 14 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_CTIME.getValue()));//$JR_EXPR_ID=14$
                break;
            }
            case 15 : 
            {
                value = (java.lang.String)("RID:WH011");//$JR_EXPR_ID=15$
                break;
            }
            case 16 : 
            {
                value = (java.lang.String)("CODE:FM-WH-11");//$JR_EXPR_ID=16$
                break;
            }
            case 17 : 
            {
                value = (java.lang.String)("Rev:00,12.12.17");//$JR_EXPR_ID=17$
                break;
            }
            case 18 : 
            {
                value = (java.lang.String)(((java.lang.String)field_MELT_NO.getValue()));//$JR_EXPR_ID=18$
                break;
            }
            case 19 : 
            {
                value = (java.lang.String)("DOC NO:");//$JR_EXPR_ID=19$
                break;
            }
            case 20 : 
            {
                value = (java.lang.String)("DOC Date:");//$JR_EXPR_ID=20$
                break;
            }
            case 21 : 
            {
                value = (java.lang.String)("DESCRIPTION :");//$JR_EXPR_ID=21$
                break;
            }
            case 22 : 
            {
                value = (java.lang.String)("STATUS:");//$JR_EXPR_ID=22$
                break;
            }
            case 23 : 
            {
                value = (java.lang.String)(((java.lang.String)field_LOT_NO.getValue()));//$JR_EXPR_ID=23$
                break;
            }
            case 24 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_DOC_DATE.getValue()));//$JR_EXPR_ID=24$
                break;
            }
            case 25 : 
            {
                value = (java.lang.String)(((java.lang.String)field_DESCS.getValue()));//$JR_EXPR_ID=25$
                break;
            }
            case 26 : 
            {
                value = (java.lang.String)(((java.lang.String)field_STATUS.getValue()));//$JR_EXPR_ID=26$
                break;
            }
            case 27 : 
            {
                value = (java.lang.String)(((java.lang.String)field_REMARKS.getValue()));//$JR_EXPR_ID=27$
                break;
            }
            case 28 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_PURCHASE_DATE.getValue()));//$JR_EXPR_ID=28$
                break;
            }
            case 29 : 
            {
                value = (java.lang.String)(((java.lang.String)field_LOT_NO.getValue()));//$JR_EXPR_ID=29$
                break;
            }
            case 30 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_DESCS.getValue()));//$JR_EXPR_ID=30$
                break;
            }
            case 31 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()));//$JR_EXPR_ID=31$
                break;
            }
            case 32 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getValue()));//$JR_EXPR_ID=32$
                break;
            }
            case 33 : 
            {
                value = (java.lang.Double)(new java.lang.Double(  (((java.lang.Double)field_QTY.getValue()).doubleValue()) *(((java.lang.Double)field_UNIT_COST.getValue()).doubleValue()) ));//$JR_EXPR_ID=33$
                break;
            }
            case 34 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_CODE.getValue()));//$JR_EXPR_ID=34$
                break;
            }
            case 35 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_REF_DATE.getValue()));//$JR_EXPR_ID=35$
                break;
            }
            case 36 : 
            {
                value = (java.lang.String)(((java.lang.String)field_REF_NO.getValue()));//$JR_EXPR_ID=36$
                break;
            }
            case 37 : 
            {
                value = (java.lang.String)("�Ѵ����______________________");//$JR_EXPR_ID=37$
                break;
            }
            case 38 : 
            {
                value = (java.lang.String)("͹��ѵ���_______________________ ");//$JR_EXPR_ID=38$
                break;
            }
           default :
           {
           }
        }
        
        return value;
    }


}
