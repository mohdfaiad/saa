/*
 * Generated by JasperReports - 22/2/2557, 10:15 �.
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
public class PC002452010_1393038936367_523036 extends JREvaluator
{


    /**
     *
     */
    private JRFillParameter parameter_REPORT_LOCALE = null;
    private JRFillParameter parameter_REPORT_TIME_ZONE = null;
    private JRFillParameter parameter_REPORT_VIRTUALIZER = null;
    private JRFillParameter parameter_REPORT_SCRIPTLET = null;
    private JRFillParameter parameter_REPORT_PARAMETERS_MAP = null;
    private JRFillParameter parameter_REPORT_CONNECTION = null;
    private JRFillParameter parameter_pUID = null;
    private JRFillParameter parameter_REPORT_CLASS_LOADER = null;
    private JRFillParameter parameter_REPORT_DATA_SOURCE = null;
    private JRFillParameter parameter_REPORT_URL_HANDLER_FACTORY = null;
    private JRFillParameter parameter_IS_IGNORE_PAGINATION = null;
    private JRFillParameter parameter_pRemark = null;
    private JRFillParameter parameter_pOrderNo = null;
    private JRFillParameter parameter_pSysDate = null;
    private JRFillParameter parameter_REPORT_FORMAT_FACTORY = null;
    private JRFillParameter parameter_REPORT_MAX_COUNT = null;
    private JRFillParameter parameter_REPORT_RESOURCE_BUNDLE = null;
    private JRFillField field_REF_NO = null;
    private JRFillField field_ORDER_DATE = null;
    private JRFillField field_DISCS_CD = null;
    private JRFillField field_ITEM_DESCS = null;
    private JRFillField field_REMARKS = null;
    private JRFillField field_UNIT_COST = null;
    private JRFillField field_TH_NAME = null;
    private JRFillField field_POSTCODE = null;
    private JRFillField field_REF_DATE = null;
    private JRFillField field_DELIVERY_DATE = null;
    private JRFillField field_FAX_TO = null;
    private JRFillField field_STATUS = null;
    private JRFillField field_SUPP_CODE = null;
    private JRFillField field_ADDRESS2 = null;
    private JRFillField field_CC_TO = null;
    private JRFillField field_ADDRESS3 = null;
    private JRFillField field_ADDRESS1 = null;
    private JRFillField field_QTY = null;
    private JRFillField field_REMARK1 = null;
    private JRFillField field_NAME = null;
    private JRFillField field_ORDER_NO = null;
    private JRFillField field_SUBSTR = null;
    private JRFillField field_TOTAL_AMT = null;
    private JRFillField field_TELEPHONE = null;
    private JRFillField field_CREDIT_TERM = null;
    private JRFillField field_DISCS_AMT = null;
    private JRFillField field_VALIDITY = null;
    private JRFillField field_TH_ADDR2 = null;
    private JRFillField field_TH_ADDR3 = null;
    private JRFillField field_PROVINCE = null;
    private JRFillField field_TH_ADDR1 = null;
    private JRFillField field_FAX_NO = null;
    private JRFillField field_UOM = null;
    private JRFillField field_ITEM_CODE = null;
    private JRFillField field_MARKUP = null;
    private JRFillField field_CURR_DESCS = null;
    private JRFillField field_CURRENCY_CODE = null;
    private JRFillField field_LINE_NO = null;
    private JRFillVariable variable_PAGE_NUMBER = null;
    private JRFillVariable variable_COLUMN_NUMBER = null;
    private JRFillVariable variable_REPORT_COUNT = null;
    private JRFillVariable variable_PAGE_COUNT = null;
    private JRFillVariable variable_COLUMN_COUNT = null;
    private JRFillVariable variable_gOrderNo_COUNT = null;
    private JRFillVariable variable_sum_total_amount = null;
    private JRFillVariable variable_sum_discount = null;


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
        parameter_REPORT_LOCALE = (JRFillParameter)pm.get("REPORT_LOCALE");
        parameter_REPORT_TIME_ZONE = (JRFillParameter)pm.get("REPORT_TIME_ZONE");
        parameter_REPORT_VIRTUALIZER = (JRFillParameter)pm.get("REPORT_VIRTUALIZER");
        parameter_REPORT_SCRIPTLET = (JRFillParameter)pm.get("REPORT_SCRIPTLET");
        parameter_REPORT_PARAMETERS_MAP = (JRFillParameter)pm.get("REPORT_PARAMETERS_MAP");
        parameter_REPORT_CONNECTION = (JRFillParameter)pm.get("REPORT_CONNECTION");
        parameter_pUID = (JRFillParameter)pm.get("pUID");
        parameter_REPORT_CLASS_LOADER = (JRFillParameter)pm.get("REPORT_CLASS_LOADER");
        parameter_REPORT_DATA_SOURCE = (JRFillParameter)pm.get("REPORT_DATA_SOURCE");
        parameter_REPORT_URL_HANDLER_FACTORY = (JRFillParameter)pm.get("REPORT_URL_HANDLER_FACTORY");
        parameter_IS_IGNORE_PAGINATION = (JRFillParameter)pm.get("IS_IGNORE_PAGINATION");
        parameter_pRemark = (JRFillParameter)pm.get("pRemark");
        parameter_pOrderNo = (JRFillParameter)pm.get("pOrderNo");
        parameter_pSysDate = (JRFillParameter)pm.get("pSysDate");
        parameter_REPORT_FORMAT_FACTORY = (JRFillParameter)pm.get("REPORT_FORMAT_FACTORY");
        parameter_REPORT_MAX_COUNT = (JRFillParameter)pm.get("REPORT_MAX_COUNT");
        parameter_REPORT_RESOURCE_BUNDLE = (JRFillParameter)pm.get("REPORT_RESOURCE_BUNDLE");
    }


    /**
     *
     */
    private void initFields(Map fm)
    {
        field_REF_NO = (JRFillField)fm.get("REF_NO");
        field_ORDER_DATE = (JRFillField)fm.get("ORDER_DATE");
        field_DISCS_CD = (JRFillField)fm.get("DISCS_CD");
        field_ITEM_DESCS = (JRFillField)fm.get("ITEM_DESCS");
        field_REMARKS = (JRFillField)fm.get("REMARKS");
        field_UNIT_COST = (JRFillField)fm.get("UNIT_COST");
        field_TH_NAME = (JRFillField)fm.get("TH_NAME");
        field_POSTCODE = (JRFillField)fm.get("POSTCODE");
        field_REF_DATE = (JRFillField)fm.get("REF_DATE");
        field_DELIVERY_DATE = (JRFillField)fm.get("DELIVERY_DATE");
        field_FAX_TO = (JRFillField)fm.get("FAX_TO");
        field_STATUS = (JRFillField)fm.get("STATUS");
        field_SUPP_CODE = (JRFillField)fm.get("SUPP_CODE");
        field_ADDRESS2 = (JRFillField)fm.get("ADDRESS2");
        field_CC_TO = (JRFillField)fm.get("CC_TO");
        field_ADDRESS3 = (JRFillField)fm.get("ADDRESS3");
        field_ADDRESS1 = (JRFillField)fm.get("ADDRESS1");
        field_QTY = (JRFillField)fm.get("QTY");
        field_REMARK1 = (JRFillField)fm.get("REMARK1");
        field_NAME = (JRFillField)fm.get("NAME");
        field_ORDER_NO = (JRFillField)fm.get("ORDER_NO");
        field_SUBSTR = (JRFillField)fm.get("SUBSTR");
        field_TOTAL_AMT = (JRFillField)fm.get("TOTAL_AMT");
        field_TELEPHONE = (JRFillField)fm.get("TELEPHONE");
        field_CREDIT_TERM = (JRFillField)fm.get("CREDIT_TERM");
        field_DISCS_AMT = (JRFillField)fm.get("DISCS_AMT");
        field_VALIDITY = (JRFillField)fm.get("VALIDITY");
        field_TH_ADDR2 = (JRFillField)fm.get("TH_ADDR2");
        field_TH_ADDR3 = (JRFillField)fm.get("TH_ADDR3");
        field_PROVINCE = (JRFillField)fm.get("PROVINCE");
        field_TH_ADDR1 = (JRFillField)fm.get("TH_ADDR1");
        field_FAX_NO = (JRFillField)fm.get("FAX_NO");
        field_UOM = (JRFillField)fm.get("UOM");
        field_ITEM_CODE = (JRFillField)fm.get("ITEM_CODE");
        field_MARKUP = (JRFillField)fm.get("MARKUP");
        field_CURR_DESCS = (JRFillField)fm.get("CURR_DESCS");
        field_CURRENCY_CODE = (JRFillField)fm.get("CURRENCY_CODE");
        field_LINE_NO = (JRFillField)fm.get("LINE_NO");
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
        variable_gOrderNo_COUNT = (JRFillVariable)vm.get("gOrderNo_COUNT");
        variable_sum_total_amount = (JRFillVariable)vm.get("sum_total_amount");
        variable_sum_discount = (JRFillVariable)vm.get("sum_discount");
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
                value = (java.lang.String)("PO143-1/07");//$JR_EXPR_ID=0$
                break;
            }
            case 1 : 
            {
                value = (java.lang.String)("");//$JR_EXPR_ID=1$
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
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=4$
                break;
            }
            case 5 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=5$
                break;
            }
            case 6 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=6$
                break;
            }
            case 7 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=7$
                break;
            }
            case 8 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=8$
                break;
            }
            case 9 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=9$
                break;
            }
            case 10 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=10$
                break;
            }
            case 11 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=11$
                break;
            }
            case 12 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_TOTAL_AMT.getValue()));//$JR_EXPR_ID=12$
                break;
            }
            case 13 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_DISCS_AMT.getValue()));//$JR_EXPR_ID=13$
                break;
            }
            case 14 : 
            {
                value = (java.lang.Object)(((java.lang.String)field_ORDER_NO.getValue()));//$JR_EXPR_ID=14$
                break;
            }
            case 15 : 
            {
                value = (java.lang.String)("QUANTITY/"+((java.lang.String)field_UOM.getValue()));//$JR_EXPR_ID=15$
                break;
            }
            case 16 : 
            {
                value = (java.lang.String)(((java.lang.String)field_SUPP_CODE.getValue()));//$JR_EXPR_ID=16$
                break;
            }
            case 17 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ORDER_NO.getValue()));//$JR_EXPR_ID=17$
                break;
            }
            case 18 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_ORDER_DATE.getValue()));//$JR_EXPR_ID=18$
                break;
            }
            case 19 : 
            {
                value = (java.lang.String)(((java.lang.String)field_NAME.getValue()));//$JR_EXPR_ID=19$
                break;
            }
            case 20 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ADDRESS1.getValue()) +" "+((java.lang.String)field_ADDRESS2.getValue()));//$JR_EXPR_ID=20$
                break;
            }
            case 21 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ADDRESS3.getValue()));//$JR_EXPR_ID=21$
                break;
            }
            case 22 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TELEPHONE.getValue()));//$JR_EXPR_ID=22$
                break;
            }
            case 23 : 
            {
                value = (java.lang.String)(((java.lang.String)field_FAX_TO.getValue()));//$JR_EXPR_ID=23$
                break;
            }
            case 24 : 
            {
                value = (java.lang.String)(((java.lang.String)field_CC_TO.getValue()));//$JR_EXPR_ID=24$
                break;
            }
            case 25 : 
            {
                value = (java.lang.Integer)(((java.lang.Integer)field_CREDIT_TERM.getValue()));//$JR_EXPR_ID=25$
                break;
            }
            case 26 : 
            {
                value = (java.lang.String)(((java.lang.String)field_FAX_NO.getValue()));//$JR_EXPR_ID=26$
                break;
            }
            case 27 : 
            {
                value = (java.lang.String)("Page:"+((java.lang.Integer)variable_PAGE_NUMBER.getValue())+"of");//$JR_EXPR_ID=27$
                break;
            }
            case 28 : 
            {
                value = (java.lang.Integer)(((java.lang.Integer)variable_PAGE_NUMBER.getValue()));//$JR_EXPR_ID=28$
                break;
            }
            case 29 : 
            {
                value = (java.lang.Integer)(((java.lang.Integer)field_LINE_NO.getValue()));//$JR_EXPR_ID=29$
                break;
            }
            case 30 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_DESCS.getValue()));//$JR_EXPR_ID=30$
                break;
            }
            case 31 : 
            {
                value = (java.lang.String)(((java.lang.String)field_REMARK1.getValue()));//$JR_EXPR_ID=31$
                break;
            }
            case 32 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()));//$JR_EXPR_ID=32$
                break;
            }
            case 33 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getValue()));//$JR_EXPR_ID=33$
                break;
            }
            case 34 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_TOTAL_AMT.getValue()));//$JR_EXPR_ID=34$
                break;
            }
            case 35 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_CODE.getValue()));//$JR_EXPR_ID=35$
                break;
            }
            case 36 : 
            {
                value = (java.lang.String)("["+((java.lang.String)field_CURR_DESCS.getValue())+"]/"+((java.lang.String)field_UOM.getValue()));//$JR_EXPR_ID=36$
                break;
            }
            case 37 : 
            {
                value = (java.lang.String)(((java.lang.String)field_REMARKS.getValue()));//$JR_EXPR_ID=37$
                break;
            }
            case 38 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_DELIVERY_DATE.getValue()));//$JR_EXPR_ID=38$
                break;
            }
            case 39 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_sum_discount.getValue()));//$JR_EXPR_ID=39$
                break;
            }
            case 40 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_sum_total_amount.getValue()));//$JR_EXPR_ID=40$
                break;
            }
            case 41 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)parameter_pSysDate.getValue()));//$JR_EXPR_ID=41$
                break;
            }
            case 42 : 
            {
                value = (java.lang.String)(((java.lang.String)parameter_pUID.getValue()));//$JR_EXPR_ID=42$
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
                value = (java.lang.String)("PO143-1/07");//$JR_EXPR_ID=0$
                break;
            }
            case 1 : 
            {
                value = (java.lang.String)("");//$JR_EXPR_ID=1$
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
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=4$
                break;
            }
            case 5 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=5$
                break;
            }
            case 6 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=6$
                break;
            }
            case 7 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=7$
                break;
            }
            case 8 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=8$
                break;
            }
            case 9 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=9$
                break;
            }
            case 10 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=10$
                break;
            }
            case 11 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=11$
                break;
            }
            case 12 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_TOTAL_AMT.getOldValue()));//$JR_EXPR_ID=12$
                break;
            }
            case 13 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_DISCS_AMT.getOldValue()));//$JR_EXPR_ID=13$
                break;
            }
            case 14 : 
            {
                value = (java.lang.Object)(((java.lang.String)field_ORDER_NO.getOldValue()));//$JR_EXPR_ID=14$
                break;
            }
            case 15 : 
            {
                value = (java.lang.String)("QUANTITY/"+((java.lang.String)field_UOM.getOldValue()));//$JR_EXPR_ID=15$
                break;
            }
            case 16 : 
            {
                value = (java.lang.String)(((java.lang.String)field_SUPP_CODE.getOldValue()));//$JR_EXPR_ID=16$
                break;
            }
            case 17 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ORDER_NO.getOldValue()));//$JR_EXPR_ID=17$
                break;
            }
            case 18 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_ORDER_DATE.getOldValue()));//$JR_EXPR_ID=18$
                break;
            }
            case 19 : 
            {
                value = (java.lang.String)(((java.lang.String)field_NAME.getOldValue()));//$JR_EXPR_ID=19$
                break;
            }
            case 20 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ADDRESS1.getOldValue()) +" "+((java.lang.String)field_ADDRESS2.getOldValue()));//$JR_EXPR_ID=20$
                break;
            }
            case 21 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ADDRESS3.getOldValue()));//$JR_EXPR_ID=21$
                break;
            }
            case 22 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TELEPHONE.getOldValue()));//$JR_EXPR_ID=22$
                break;
            }
            case 23 : 
            {
                value = (java.lang.String)(((java.lang.String)field_FAX_TO.getOldValue()));//$JR_EXPR_ID=23$
                break;
            }
            case 24 : 
            {
                value = (java.lang.String)(((java.lang.String)field_CC_TO.getOldValue()));//$JR_EXPR_ID=24$
                break;
            }
            case 25 : 
            {
                value = (java.lang.Integer)(((java.lang.Integer)field_CREDIT_TERM.getOldValue()));//$JR_EXPR_ID=25$
                break;
            }
            case 26 : 
            {
                value = (java.lang.String)(((java.lang.String)field_FAX_NO.getOldValue()));//$JR_EXPR_ID=26$
                break;
            }
            case 27 : 
            {
                value = (java.lang.String)("Page:"+((java.lang.Integer)variable_PAGE_NUMBER.getOldValue())+"of");//$JR_EXPR_ID=27$
                break;
            }
            case 28 : 
            {
                value = (java.lang.Integer)(((java.lang.Integer)variable_PAGE_NUMBER.getOldValue()));//$JR_EXPR_ID=28$
                break;
            }
            case 29 : 
            {
                value = (java.lang.Integer)(((java.lang.Integer)field_LINE_NO.getOldValue()));//$JR_EXPR_ID=29$
                break;
            }
            case 30 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_DESCS.getOldValue()));//$JR_EXPR_ID=30$
                break;
            }
            case 31 : 
            {
                value = (java.lang.String)(((java.lang.String)field_REMARK1.getOldValue()));//$JR_EXPR_ID=31$
                break;
            }
            case 32 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_QTY.getOldValue()));//$JR_EXPR_ID=32$
                break;
            }
            case 33 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getOldValue()));//$JR_EXPR_ID=33$
                break;
            }
            case 34 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_TOTAL_AMT.getOldValue()));//$JR_EXPR_ID=34$
                break;
            }
            case 35 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_CODE.getOldValue()));//$JR_EXPR_ID=35$
                break;
            }
            case 36 : 
            {
                value = (java.lang.String)("["+((java.lang.String)field_CURR_DESCS.getOldValue())+"]/"+((java.lang.String)field_UOM.getOldValue()));//$JR_EXPR_ID=36$
                break;
            }
            case 37 : 
            {
                value = (java.lang.String)(((java.lang.String)field_REMARKS.getOldValue()));//$JR_EXPR_ID=37$
                break;
            }
            case 38 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_DELIVERY_DATE.getOldValue()));//$JR_EXPR_ID=38$
                break;
            }
            case 39 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_sum_discount.getOldValue()));//$JR_EXPR_ID=39$
                break;
            }
            case 40 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_sum_total_amount.getOldValue()));//$JR_EXPR_ID=40$
                break;
            }
            case 41 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)parameter_pSysDate.getValue()));//$JR_EXPR_ID=41$
                break;
            }
            case 42 : 
            {
                value = (java.lang.String)(((java.lang.String)parameter_pUID.getValue()));//$JR_EXPR_ID=42$
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
                value = (java.lang.String)("PO143-1/07");//$JR_EXPR_ID=0$
                break;
            }
            case 1 : 
            {
                value = (java.lang.String)("");//$JR_EXPR_ID=1$
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
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=4$
                break;
            }
            case 5 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=5$
                break;
            }
            case 6 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=6$
                break;
            }
            case 7 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=7$
                break;
            }
            case 8 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=8$
                break;
            }
            case 9 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=9$
                break;
            }
            case 10 : 
            {
                value = (java.lang.Integer)(new Integer(1));//$JR_EXPR_ID=10$
                break;
            }
            case 11 : 
            {
                value = (java.lang.Integer)(new Integer(0));//$JR_EXPR_ID=11$
                break;
            }
            case 12 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_TOTAL_AMT.getValue()));//$JR_EXPR_ID=12$
                break;
            }
            case 13 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_DISCS_AMT.getValue()));//$JR_EXPR_ID=13$
                break;
            }
            case 14 : 
            {
                value = (java.lang.Object)(((java.lang.String)field_ORDER_NO.getValue()));//$JR_EXPR_ID=14$
                break;
            }
            case 15 : 
            {
                value = (java.lang.String)("QUANTITY/"+((java.lang.String)field_UOM.getValue()));//$JR_EXPR_ID=15$
                break;
            }
            case 16 : 
            {
                value = (java.lang.String)(((java.lang.String)field_SUPP_CODE.getValue()));//$JR_EXPR_ID=16$
                break;
            }
            case 17 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ORDER_NO.getValue()));//$JR_EXPR_ID=17$
                break;
            }
            case 18 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_ORDER_DATE.getValue()));//$JR_EXPR_ID=18$
                break;
            }
            case 19 : 
            {
                value = (java.lang.String)(((java.lang.String)field_NAME.getValue()));//$JR_EXPR_ID=19$
                break;
            }
            case 20 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ADDRESS1.getValue()) +" "+((java.lang.String)field_ADDRESS2.getValue()));//$JR_EXPR_ID=20$
                break;
            }
            case 21 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ADDRESS3.getValue()));//$JR_EXPR_ID=21$
                break;
            }
            case 22 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TELEPHONE.getValue()));//$JR_EXPR_ID=22$
                break;
            }
            case 23 : 
            {
                value = (java.lang.String)(((java.lang.String)field_FAX_TO.getValue()));//$JR_EXPR_ID=23$
                break;
            }
            case 24 : 
            {
                value = (java.lang.String)(((java.lang.String)field_CC_TO.getValue()));//$JR_EXPR_ID=24$
                break;
            }
            case 25 : 
            {
                value = (java.lang.Integer)(((java.lang.Integer)field_CREDIT_TERM.getValue()));//$JR_EXPR_ID=25$
                break;
            }
            case 26 : 
            {
                value = (java.lang.String)(((java.lang.String)field_FAX_NO.getValue()));//$JR_EXPR_ID=26$
                break;
            }
            case 27 : 
            {
                value = (java.lang.String)("Page:"+((java.lang.Integer)variable_PAGE_NUMBER.getEstimatedValue())+"of");//$JR_EXPR_ID=27$
                break;
            }
            case 28 : 
            {
                value = (java.lang.Integer)(((java.lang.Integer)variable_PAGE_NUMBER.getEstimatedValue()));//$JR_EXPR_ID=28$
                break;
            }
            case 29 : 
            {
                value = (java.lang.Integer)(((java.lang.Integer)field_LINE_NO.getValue()));//$JR_EXPR_ID=29$
                break;
            }
            case 30 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_DESCS.getValue()));//$JR_EXPR_ID=30$
                break;
            }
            case 31 : 
            {
                value = (java.lang.String)(((java.lang.String)field_REMARK1.getValue()));//$JR_EXPR_ID=31$
                break;
            }
            case 32 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()));//$JR_EXPR_ID=32$
                break;
            }
            case 33 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getValue()));//$JR_EXPR_ID=33$
                break;
            }
            case 34 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_TOTAL_AMT.getValue()));//$JR_EXPR_ID=34$
                break;
            }
            case 35 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_CODE.getValue()));//$JR_EXPR_ID=35$
                break;
            }
            case 36 : 
            {
                value = (java.lang.String)("["+((java.lang.String)field_CURR_DESCS.getValue())+"]/"+((java.lang.String)field_UOM.getValue()));//$JR_EXPR_ID=36$
                break;
            }
            case 37 : 
            {
                value = (java.lang.String)(((java.lang.String)field_REMARKS.getValue()));//$JR_EXPR_ID=37$
                break;
            }
            case 38 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_DELIVERY_DATE.getValue()));//$JR_EXPR_ID=38$
                break;
            }
            case 39 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_sum_discount.getEstimatedValue()));//$JR_EXPR_ID=39$
                break;
            }
            case 40 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_sum_total_amount.getEstimatedValue()));//$JR_EXPR_ID=40$
                break;
            }
            case 41 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)parameter_pSysDate.getValue()));//$JR_EXPR_ID=41$
                break;
            }
            case 42 : 
            {
                value = (java.lang.String)(((java.lang.String)parameter_pUID.getValue()));//$JR_EXPR_ID=42$
                break;
            }
           default :
           {
           }
        }
        
        return value;
    }


}
