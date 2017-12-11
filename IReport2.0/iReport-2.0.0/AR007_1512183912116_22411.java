/*
 * Generated by JasperReports - 2/12/2560, 10:05 �.
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
public class AR007_1512183912116_22411 extends JREvaluator
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
    private JRFillParameter parameter_pSysDate = null;
    private JRFillParameter parameter_REPORT_FORMAT_FACTORY = null;
    private JRFillParameter parameter_REPORT_PARAMETERS_MAP = null;
    private JRFillParameter parameter_REPORT_RESOURCE_BUNDLE = null;
    private JRFillParameter parameter_pLogo2 = null;
    private JRFillParameter parameter_pLogo1 = null;
    private JRFillParameter parameter_REPORT_DATA_SOURCE = null;
    private JRFillParameter parameter_pDocNo = null;
    private JRFillParameter parameter_REPORT_CLASS_LOADER = null;
    private JRFillParameter parameter_REPORT_URL_HANDLER_FACTORY = null;
    private JRFillParameter parameter_REPORT_VIRTUALIZER = null;
    private JRFillField field_TAX_CD = null;
    private JRFillField field_MFG_PROVINCE = null;
    private JRFillField field_UNIT_COST = null;
    private JRFillField field_UPDATE_DATE = null;
    private JRFillField field_MODE = null;
    private JRFillField field_MFG_ADDRESS3 = null;
    private JRFillField field_TRX_TYPE = null;
    private JRFillField field_INVOICE_DATE = null;
    private JRFillField field_TAX_AMOUNT = null;
    private JRFillField field_MFG_ADDRESS2 = null;
    private JRFillField field_STATUS = null;
    private JRFillField field_MFG_ADDRESS1 = null;
    private JRFillField field_QTY = null;
    private JRFillField field_DEBTOR_ACCT = null;
    private JRFillField field_TELPHONE = null;
    private JRFillField field_TAX_REGISTED_NO = null;
    private JRFillField field_TELEPHONE = null;
    private JRFillField field_UOM_CD = null;
    private JRFillField field_TH_ADDR3 = null;
    private JRFillField field_TH_ADDR2 = null;
    private JRFillField field_TH_ADDR1 = null;
    private JRFillField field_ITEM_CODE = null;
    private JRFillField field_NAME = null;
    private JRFillField field_TH_NAME = null;
    private JRFillField field_ENG_NAME = null;
    private JRFillField field_NO_OF_PRINT = null;
    private JRFillField field_LINE_NO = null;
    private JRFillField field_DESCS = null;
    private JRFillField field_BASE_AMOUNT = null;
    private JRFillField field_TOTAL_AMOUNT = null;
    private JRFillField field_MFG_TELEPHONE = null;
    private JRFillField field_POSTCODE = null;
    private JRFillField field_DEBT_NAME = null;
    private JRFillField field_DOC_NO = null;
    private JRFillField field_MFG_FAX = null;
    private JRFillField field_CURRENCY_CODE = null;
    private JRFillField field_TH_ADDRESS2 = null;
    private JRFillField field_TH_ADDRESS1 = null;
    private JRFillField field_TH_ADDRESS3 = null;
    private JRFillField field_CURRENCY_RATE = null;
    private JRFillField field_BATHTEXT = null;
    private JRFillField field_MFG_POSTCODE = null;
    private JRFillField field_ADDRESS1 = null;
    private JRFillField field_REMARK = null;
    private JRFillField field_ADDRESS3 = null;
    private JRFillField field_ADDRESS2 = null;
    private JRFillField field_THAI_NAME = null;
    private JRFillField field_ITEM_DESCS = null;
    private JRFillField field_UPDATE_USER = null;
    private JRFillField field_INVOICE_NO = null;
    private JRFillField field_CREDIT_TERM = null;
    private JRFillField field_VARIANT_AMOUNT = null;
    private JRFillField field_INVOICE_AMOUNT = null;
    private JRFillField field_PROVINCE = null;
    private JRFillField field_FAX = null;
    private JRFillField field_DOC_DATE = null;
    private JRFillVariable variable_PAGE_NUMBER = null;
    private JRFillVariable variable_COLUMN_NUMBER = null;
    private JRFillVariable variable_REPORT_COUNT = null;
    private JRFillVariable variable_PAGE_COUNT = null;
    private JRFillVariable variable_COLUMN_COUNT = null;
    private JRFillVariable variable_V_SUM_BASE_AMOUNT = null;
    private JRFillVariable variable_V_SUM_INVOICE_AMOUNT = null;
    private JRFillVariable variable_V_SUM_VARIANT_AMOUNT = null;
    private JRFillVariable variable_V_SUM_TAX_AMOUNT = null;
    private JRFillVariable variable_V_SUM_TOTAL_AMOUNT = null;


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
        parameter_pSysDate = (JRFillParameter)pm.get("pSysDate");
        parameter_REPORT_FORMAT_FACTORY = (JRFillParameter)pm.get("REPORT_FORMAT_FACTORY");
        parameter_REPORT_PARAMETERS_MAP = (JRFillParameter)pm.get("REPORT_PARAMETERS_MAP");
        parameter_REPORT_RESOURCE_BUNDLE = (JRFillParameter)pm.get("REPORT_RESOURCE_BUNDLE");
        parameter_pLogo2 = (JRFillParameter)pm.get("pLogo2");
        parameter_pLogo1 = (JRFillParameter)pm.get("pLogo1");
        parameter_REPORT_DATA_SOURCE = (JRFillParameter)pm.get("REPORT_DATA_SOURCE");
        parameter_pDocNo = (JRFillParameter)pm.get("pDocNo");
        parameter_REPORT_CLASS_LOADER = (JRFillParameter)pm.get("REPORT_CLASS_LOADER");
        parameter_REPORT_URL_HANDLER_FACTORY = (JRFillParameter)pm.get("REPORT_URL_HANDLER_FACTORY");
        parameter_REPORT_VIRTUALIZER = (JRFillParameter)pm.get("REPORT_VIRTUALIZER");
    }


    /**
     *
     */
    private void initFields(Map fm)
    {
        field_TAX_CD = (JRFillField)fm.get("TAX_CD");
        field_MFG_PROVINCE = (JRFillField)fm.get("MFG_PROVINCE");
        field_UNIT_COST = (JRFillField)fm.get("UNIT_COST");
        field_UPDATE_DATE = (JRFillField)fm.get("UPDATE_DATE");
        field_MODE = (JRFillField)fm.get("MODE");
        field_MFG_ADDRESS3 = (JRFillField)fm.get("MFG_ADDRESS3");
        field_TRX_TYPE = (JRFillField)fm.get("TRX_TYPE");
        field_INVOICE_DATE = (JRFillField)fm.get("INVOICE_DATE");
        field_TAX_AMOUNT = (JRFillField)fm.get("TAX_AMOUNT");
        field_MFG_ADDRESS2 = (JRFillField)fm.get("MFG_ADDRESS2");
        field_STATUS = (JRFillField)fm.get("STATUS");
        field_MFG_ADDRESS1 = (JRFillField)fm.get("MFG_ADDRESS1");
        field_QTY = (JRFillField)fm.get("QTY");
        field_DEBTOR_ACCT = (JRFillField)fm.get("DEBTOR_ACCT");
        field_TELPHONE = (JRFillField)fm.get("TELPHONE");
        field_TAX_REGISTED_NO = (JRFillField)fm.get("TAX_REGISTED_NO");
        field_TELEPHONE = (JRFillField)fm.get("TELEPHONE");
        field_UOM_CD = (JRFillField)fm.get("UOM_CD");
        field_TH_ADDR3 = (JRFillField)fm.get("TH_ADDR3");
        field_TH_ADDR2 = (JRFillField)fm.get("TH_ADDR2");
        field_TH_ADDR1 = (JRFillField)fm.get("TH_ADDR1");
        field_ITEM_CODE = (JRFillField)fm.get("ITEM_CODE");
        field_NAME = (JRFillField)fm.get("NAME");
        field_TH_NAME = (JRFillField)fm.get("TH_NAME");
        field_ENG_NAME = (JRFillField)fm.get("ENG_NAME");
        field_NO_OF_PRINT = (JRFillField)fm.get("NO_OF_PRINT");
        field_LINE_NO = (JRFillField)fm.get("LINE_NO");
        field_DESCS = (JRFillField)fm.get("DESCS");
        field_BASE_AMOUNT = (JRFillField)fm.get("BASE_AMOUNT");
        field_TOTAL_AMOUNT = (JRFillField)fm.get("TOTAL_AMOUNT");
        field_MFG_TELEPHONE = (JRFillField)fm.get("MFG_TELEPHONE");
        field_POSTCODE = (JRFillField)fm.get("POSTCODE");
        field_DEBT_NAME = (JRFillField)fm.get("DEBT_NAME");
        field_DOC_NO = (JRFillField)fm.get("DOC_NO");
        field_MFG_FAX = (JRFillField)fm.get("MFG_FAX");
        field_CURRENCY_CODE = (JRFillField)fm.get("CURRENCY_CODE");
        field_TH_ADDRESS2 = (JRFillField)fm.get("TH_ADDRESS2");
        field_TH_ADDRESS1 = (JRFillField)fm.get("TH_ADDRESS1");
        field_TH_ADDRESS3 = (JRFillField)fm.get("TH_ADDRESS3");
        field_CURRENCY_RATE = (JRFillField)fm.get("CURRENCY_RATE");
        field_BATHTEXT = (JRFillField)fm.get("BATHTEXT");
        field_MFG_POSTCODE = (JRFillField)fm.get("MFG_POSTCODE");
        field_ADDRESS1 = (JRFillField)fm.get("ADDRESS1");
        field_REMARK = (JRFillField)fm.get("REMARK");
        field_ADDRESS3 = (JRFillField)fm.get("ADDRESS3");
        field_ADDRESS2 = (JRFillField)fm.get("ADDRESS2");
        field_THAI_NAME = (JRFillField)fm.get("THAI_NAME");
        field_ITEM_DESCS = (JRFillField)fm.get("ITEM_DESCS");
        field_UPDATE_USER = (JRFillField)fm.get("UPDATE_USER");
        field_INVOICE_NO = (JRFillField)fm.get("INVOICE_NO");
        field_CREDIT_TERM = (JRFillField)fm.get("CREDIT_TERM");
        field_VARIANT_AMOUNT = (JRFillField)fm.get("VARIANT_AMOUNT");
        field_INVOICE_AMOUNT = (JRFillField)fm.get("INVOICE_AMOUNT");
        field_PROVINCE = (JRFillField)fm.get("PROVINCE");
        field_FAX = (JRFillField)fm.get("FAX");
        field_DOC_DATE = (JRFillField)fm.get("DOC_DATE");
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
        variable_V_SUM_BASE_AMOUNT = (JRFillVariable)vm.get("V_SUM_BASE_AMOUNT");
        variable_V_SUM_INVOICE_AMOUNT = (JRFillVariable)vm.get("V_SUM_INVOICE_AMOUNT");
        variable_V_SUM_VARIANT_AMOUNT = (JRFillVariable)vm.get("V_SUM_VARIANT_AMOUNT");
        variable_V_SUM_TAX_AMOUNT = (JRFillVariable)vm.get("V_SUM_TAX_AMOUNT");
        variable_V_SUM_TOTAL_AMOUNT = (JRFillVariable)vm.get("V_SUM_TOTAL_AMOUNT");
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
                value = (java.lang.String)(new String("DN00001"));//$JR_EXPR_ID=0$
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
                value = (java.lang.Double)(((java.lang.Double)field_BASE_AMOUNT.getValue()));//$JR_EXPR_ID=9$
                break;
            }
            case 10 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_INVOICE_AMOUNT.getValue()));//$JR_EXPR_ID=10$
                break;
            }
            case 11 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_VARIANT_AMOUNT.getValue()));//$JR_EXPR_ID=11$
                break;
            }
            case 12 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_TAX_AMOUNT.getValue()));//$JR_EXPR_ID=12$
                break;
            }
            case 13 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_TOTAL_AMOUNT.getValue()));//$JR_EXPR_ID=13$
                break;
            }
            case 14 : 
            {
                value = (java.lang.String)(((java.lang.String)parameter_pLogo1.getValue()));//$JR_EXPR_ID=14$
                break;
            }
            case 15 : 
            {
                value = (java.lang.Boolean)(new Boolean(false));//$JR_EXPR_ID=15$
                break;
            }
            case 16 : 
            {
                value = (java.lang.String)(((java.lang.String)parameter_pLogo2.getValue()));//$JR_EXPR_ID=16$
                break;
            }
            case 17 : 
            {
                value = (java.lang.String)(((java.lang.String)field_DOC_NO.getValue()));//$JR_EXPR_ID=17$
                break;
            }
            case 18 : 
            {
                value = (java.lang.String)(((java.lang.String)field_INVOICE_NO.getValue()));//$JR_EXPR_ID=18$
                break;
            }
            case 19 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TH_NAME.getValue()));//$JR_EXPR_ID=19$
                break;
            }
            case 20 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TH_ADDR1.getValue()));//$JR_EXPR_ID=20$
                break;
            }
            case 21 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TH_ADDR2.getValue()));//$JR_EXPR_ID=21$
                break;
            }
            case 22 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TH_ADDR3.getValue()));//$JR_EXPR_ID=22$
                break;
            }
            case 23 : 
            {
                value = (java.lang.String)(((java.lang.String)field_POSTCODE.getValue()));//$JR_EXPR_ID=23$
                break;
            }
            case 24 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_DOC_DATE.getValue()));//$JR_EXPR_ID=24$
                break;
            }
            case 25 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TAX_REGISTED_NO.getValue()));//$JR_EXPR_ID=25$
                break;
            }
            case 26 : 
            {
                value = (java.lang.Boolean)(new Boolean(false));//$JR_EXPR_ID=26$
                break;
            }
            case 27 : 
            {
                value = (java.lang.String)("��. "+((java.lang.String)field_TELEPHONE.getValue())+"   ῡ��   "+((java.lang.String)field_FAX.getValue()));//$JR_EXPR_ID=27$
                break;
            }
            case 28 : 
            {
                value = (java.lang.String)("�ӹѡ�ҹ:"+((java.lang.String)field_TH_ADDRESS1.getValue())+" "+((java.lang.String)field_TH_ADDRESS2.getValue()));//$JR_EXPR_ID=28$
                break;
            }
            case 29 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TH_ADDRESS3.getValue()));//$JR_EXPR_ID=29$
                break;
            }
            case 30 : 
            {
                value = (java.lang.String)("�ç�ҹ: "+((java.lang.String)field_MFG_ADDRESS1.getValue())+" "+((java.lang.String)field_MFG_ADDRESS2.getValue())+" " +((java.lang.String)field_MFG_ADDRESS3.getValue()) //$JR_EXPR_ID=30$
+"\n��:"+((java.lang.String)field_MFG_TELEPHONE.getValue()) + " ῡ��: "+((java.lang.String)field_MFG_FAX.getValue()));//$JR_EXPR_ID=30$
                break;
            }
            case 31 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_CODE.getValue()));//$JR_EXPR_ID=31$
                break;
            }
            case 32 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_DESCS.getValue()));//$JR_EXPR_ID=32$
                break;
            }
            case 33 : 
            {
                value = (java.lang.Integer)(((java.lang.Integer)field_LINE_NO.getValue()));//$JR_EXPR_ID=33$
                break;
            }
            case 34 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()));//$JR_EXPR_ID=34$
                break;
            }
            case 35 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getValue()));//$JR_EXPR_ID=35$
                break;
            }
            case 36 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_BASE_AMOUNT.getValue()));//$JR_EXPR_ID=36$
                break;
            }
            case 37 : 
            {
                value = (java.lang.String)(((java.lang.String)field_CURRENCY_CODE.getValue())+"/"+((java.lang.String)field_UOM_CD.getValue()));//$JR_EXPR_ID=37$
                break;
            }
            case 38 : 
            {
                value = (java.lang.String)(((java.lang.String)field_UOM_CD.getValue()));//$JR_EXPR_ID=38$
                break;
            }
            case 39 : 
            {
                value = (java.lang.String)(((java.lang.String)field_CURRENCY_CODE.getValue()));//$JR_EXPR_ID=39$
                break;
            }
            case 40 : 
            {
                value = (java.lang.String)(((java.lang.String)field_REMARK.getValue()));//$JR_EXPR_ID=40$
                break;
            }
            case 41 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_V_SUM_INVOICE_AMOUNT.getValue()));//$JR_EXPR_ID=41$
                break;
            }
            case 42 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_V_SUM_BASE_AMOUNT.getValue()));//$JR_EXPR_ID=42$
                break;
            }
            case 43 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_V_SUM_VARIANT_AMOUNT.getValue()));//$JR_EXPR_ID=43$
                break;
            }
            case 44 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_V_SUM_TAX_AMOUNT.getValue()));//$JR_EXPR_ID=44$
                break;
            }
            case 45 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_V_SUM_TOTAL_AMOUNT.getValue()));//$JR_EXPR_ID=45$
                break;
            }
            case 46 : 
            {
                value = (java.lang.String)(((java.lang.String)field_BATHTEXT.getValue()));//$JR_EXPR_ID=46$
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
                value = (java.lang.String)(new String("DN00001"));//$JR_EXPR_ID=0$
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
                value = (java.lang.Double)(((java.lang.Double)field_BASE_AMOUNT.getOldValue()));//$JR_EXPR_ID=9$
                break;
            }
            case 10 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_INVOICE_AMOUNT.getOldValue()));//$JR_EXPR_ID=10$
                break;
            }
            case 11 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_VARIANT_AMOUNT.getOldValue()));//$JR_EXPR_ID=11$
                break;
            }
            case 12 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_TAX_AMOUNT.getOldValue()));//$JR_EXPR_ID=12$
                break;
            }
            case 13 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_TOTAL_AMOUNT.getOldValue()));//$JR_EXPR_ID=13$
                break;
            }
            case 14 : 
            {
                value = (java.lang.String)(((java.lang.String)parameter_pLogo1.getValue()));//$JR_EXPR_ID=14$
                break;
            }
            case 15 : 
            {
                value = (java.lang.Boolean)(new Boolean(false));//$JR_EXPR_ID=15$
                break;
            }
            case 16 : 
            {
                value = (java.lang.String)(((java.lang.String)parameter_pLogo2.getValue()));//$JR_EXPR_ID=16$
                break;
            }
            case 17 : 
            {
                value = (java.lang.String)(((java.lang.String)field_DOC_NO.getOldValue()));//$JR_EXPR_ID=17$
                break;
            }
            case 18 : 
            {
                value = (java.lang.String)(((java.lang.String)field_INVOICE_NO.getOldValue()));//$JR_EXPR_ID=18$
                break;
            }
            case 19 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TH_NAME.getOldValue()));//$JR_EXPR_ID=19$
                break;
            }
            case 20 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TH_ADDR1.getOldValue()));//$JR_EXPR_ID=20$
                break;
            }
            case 21 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TH_ADDR2.getOldValue()));//$JR_EXPR_ID=21$
                break;
            }
            case 22 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TH_ADDR3.getOldValue()));//$JR_EXPR_ID=22$
                break;
            }
            case 23 : 
            {
                value = (java.lang.String)(((java.lang.String)field_POSTCODE.getOldValue()));//$JR_EXPR_ID=23$
                break;
            }
            case 24 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_DOC_DATE.getOldValue()));//$JR_EXPR_ID=24$
                break;
            }
            case 25 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TAX_REGISTED_NO.getOldValue()));//$JR_EXPR_ID=25$
                break;
            }
            case 26 : 
            {
                value = (java.lang.Boolean)(new Boolean(false));//$JR_EXPR_ID=26$
                break;
            }
            case 27 : 
            {
                value = (java.lang.String)("��. "+((java.lang.String)field_TELEPHONE.getOldValue())+"   ῡ��   "+((java.lang.String)field_FAX.getOldValue()));//$JR_EXPR_ID=27$
                break;
            }
            case 28 : 
            {
                value = (java.lang.String)("�ӹѡ�ҹ:"+((java.lang.String)field_TH_ADDRESS1.getOldValue())+" "+((java.lang.String)field_TH_ADDRESS2.getOldValue()));//$JR_EXPR_ID=28$
                break;
            }
            case 29 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TH_ADDRESS3.getOldValue()));//$JR_EXPR_ID=29$
                break;
            }
            case 30 : 
            {
                value = (java.lang.String)("�ç�ҹ: "+((java.lang.String)field_MFG_ADDRESS1.getOldValue())+" "+((java.lang.String)field_MFG_ADDRESS2.getOldValue())+" " +((java.lang.String)field_MFG_ADDRESS3.getOldValue()) //$JR_EXPR_ID=30$
+"\n��:"+((java.lang.String)field_MFG_TELEPHONE.getOldValue()) + " ῡ��: "+((java.lang.String)field_MFG_FAX.getOldValue()));//$JR_EXPR_ID=30$
                break;
            }
            case 31 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_CODE.getOldValue()));//$JR_EXPR_ID=31$
                break;
            }
            case 32 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_DESCS.getOldValue()));//$JR_EXPR_ID=32$
                break;
            }
            case 33 : 
            {
                value = (java.lang.Integer)(((java.lang.Integer)field_LINE_NO.getOldValue()));//$JR_EXPR_ID=33$
                break;
            }
            case 34 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_QTY.getOldValue()));//$JR_EXPR_ID=34$
                break;
            }
            case 35 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getOldValue()));//$JR_EXPR_ID=35$
                break;
            }
            case 36 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_BASE_AMOUNT.getOldValue()));//$JR_EXPR_ID=36$
                break;
            }
            case 37 : 
            {
                value = (java.lang.String)(((java.lang.String)field_CURRENCY_CODE.getOldValue())+"/"+((java.lang.String)field_UOM_CD.getOldValue()));//$JR_EXPR_ID=37$
                break;
            }
            case 38 : 
            {
                value = (java.lang.String)(((java.lang.String)field_UOM_CD.getOldValue()));//$JR_EXPR_ID=38$
                break;
            }
            case 39 : 
            {
                value = (java.lang.String)(((java.lang.String)field_CURRENCY_CODE.getOldValue()));//$JR_EXPR_ID=39$
                break;
            }
            case 40 : 
            {
                value = (java.lang.String)(((java.lang.String)field_REMARK.getOldValue()));//$JR_EXPR_ID=40$
                break;
            }
            case 41 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_V_SUM_INVOICE_AMOUNT.getOldValue()));//$JR_EXPR_ID=41$
                break;
            }
            case 42 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_V_SUM_BASE_AMOUNT.getOldValue()));//$JR_EXPR_ID=42$
                break;
            }
            case 43 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_V_SUM_VARIANT_AMOUNT.getOldValue()));//$JR_EXPR_ID=43$
                break;
            }
            case 44 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_V_SUM_TAX_AMOUNT.getOldValue()));//$JR_EXPR_ID=44$
                break;
            }
            case 45 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_V_SUM_TOTAL_AMOUNT.getOldValue()));//$JR_EXPR_ID=45$
                break;
            }
            case 46 : 
            {
                value = (java.lang.String)(((java.lang.String)field_BATHTEXT.getOldValue()));//$JR_EXPR_ID=46$
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
                value = (java.lang.String)(new String("DN00001"));//$JR_EXPR_ID=0$
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
                value = (java.lang.Double)(((java.lang.Double)field_BASE_AMOUNT.getValue()));//$JR_EXPR_ID=9$
                break;
            }
            case 10 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_INVOICE_AMOUNT.getValue()));//$JR_EXPR_ID=10$
                break;
            }
            case 11 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_VARIANT_AMOUNT.getValue()));//$JR_EXPR_ID=11$
                break;
            }
            case 12 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_TAX_AMOUNT.getValue()));//$JR_EXPR_ID=12$
                break;
            }
            case 13 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_TOTAL_AMOUNT.getValue()));//$JR_EXPR_ID=13$
                break;
            }
            case 14 : 
            {
                value = (java.lang.String)(((java.lang.String)parameter_pLogo1.getValue()));//$JR_EXPR_ID=14$
                break;
            }
            case 15 : 
            {
                value = (java.lang.Boolean)(new Boolean(false));//$JR_EXPR_ID=15$
                break;
            }
            case 16 : 
            {
                value = (java.lang.String)(((java.lang.String)parameter_pLogo2.getValue()));//$JR_EXPR_ID=16$
                break;
            }
            case 17 : 
            {
                value = (java.lang.String)(((java.lang.String)field_DOC_NO.getValue()));//$JR_EXPR_ID=17$
                break;
            }
            case 18 : 
            {
                value = (java.lang.String)(((java.lang.String)field_INVOICE_NO.getValue()));//$JR_EXPR_ID=18$
                break;
            }
            case 19 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TH_NAME.getValue()));//$JR_EXPR_ID=19$
                break;
            }
            case 20 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TH_ADDR1.getValue()));//$JR_EXPR_ID=20$
                break;
            }
            case 21 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TH_ADDR2.getValue()));//$JR_EXPR_ID=21$
                break;
            }
            case 22 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TH_ADDR3.getValue()));//$JR_EXPR_ID=22$
                break;
            }
            case 23 : 
            {
                value = (java.lang.String)(((java.lang.String)field_POSTCODE.getValue()));//$JR_EXPR_ID=23$
                break;
            }
            case 24 : 
            {
                value = (java.sql.Timestamp)(((java.sql.Timestamp)field_DOC_DATE.getValue()));//$JR_EXPR_ID=24$
                break;
            }
            case 25 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TAX_REGISTED_NO.getValue()));//$JR_EXPR_ID=25$
                break;
            }
            case 26 : 
            {
                value = (java.lang.Boolean)(new Boolean(false));//$JR_EXPR_ID=26$
                break;
            }
            case 27 : 
            {
                value = (java.lang.String)("��. "+((java.lang.String)field_TELEPHONE.getValue())+"   ῡ��   "+((java.lang.String)field_FAX.getValue()));//$JR_EXPR_ID=27$
                break;
            }
            case 28 : 
            {
                value = (java.lang.String)("�ӹѡ�ҹ:"+((java.lang.String)field_TH_ADDRESS1.getValue())+" "+((java.lang.String)field_TH_ADDRESS2.getValue()));//$JR_EXPR_ID=28$
                break;
            }
            case 29 : 
            {
                value = (java.lang.String)(((java.lang.String)field_TH_ADDRESS3.getValue()));//$JR_EXPR_ID=29$
                break;
            }
            case 30 : 
            {
                value = (java.lang.String)("�ç�ҹ: "+((java.lang.String)field_MFG_ADDRESS1.getValue())+" "+((java.lang.String)field_MFG_ADDRESS2.getValue())+" " +((java.lang.String)field_MFG_ADDRESS3.getValue()) //$JR_EXPR_ID=30$
+"\n��:"+((java.lang.String)field_MFG_TELEPHONE.getValue()) + " ῡ��: "+((java.lang.String)field_MFG_FAX.getValue()));//$JR_EXPR_ID=30$
                break;
            }
            case 31 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_CODE.getValue()));//$JR_EXPR_ID=31$
                break;
            }
            case 32 : 
            {
                value = (java.lang.String)(((java.lang.String)field_ITEM_DESCS.getValue()));//$JR_EXPR_ID=32$
                break;
            }
            case 33 : 
            {
                value = (java.lang.Integer)(((java.lang.Integer)field_LINE_NO.getValue()));//$JR_EXPR_ID=33$
                break;
            }
            case 34 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()));//$JR_EXPR_ID=34$
                break;
            }
            case 35 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getValue()));//$JR_EXPR_ID=35$
                break;
            }
            case 36 : 
            {
                value = (java.lang.Double)(((java.lang.Double)field_BASE_AMOUNT.getValue()));//$JR_EXPR_ID=36$
                break;
            }
            case 37 : 
            {
                value = (java.lang.String)(((java.lang.String)field_CURRENCY_CODE.getValue())+"/"+((java.lang.String)field_UOM_CD.getValue()));//$JR_EXPR_ID=37$
                break;
            }
            case 38 : 
            {
                value = (java.lang.String)(((java.lang.String)field_UOM_CD.getValue()));//$JR_EXPR_ID=38$
                break;
            }
            case 39 : 
            {
                value = (java.lang.String)(((java.lang.String)field_CURRENCY_CODE.getValue()));//$JR_EXPR_ID=39$
                break;
            }
            case 40 : 
            {
                value = (java.lang.String)(((java.lang.String)field_REMARK.getValue()));//$JR_EXPR_ID=40$
                break;
            }
            case 41 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_V_SUM_INVOICE_AMOUNT.getEstimatedValue()));//$JR_EXPR_ID=41$
                break;
            }
            case 42 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_V_SUM_BASE_AMOUNT.getEstimatedValue()));//$JR_EXPR_ID=42$
                break;
            }
            case 43 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_V_SUM_VARIANT_AMOUNT.getEstimatedValue()));//$JR_EXPR_ID=43$
                break;
            }
            case 44 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_V_SUM_TAX_AMOUNT.getEstimatedValue()));//$JR_EXPR_ID=44$
                break;
            }
            case 45 : 
            {
                value = (java.lang.Double)(((java.lang.Double)variable_V_SUM_TOTAL_AMOUNT.getEstimatedValue()));//$JR_EXPR_ID=45$
                break;
            }
            case 46 : 
            {
                value = (java.lang.String)(((java.lang.String)field_BATHTEXT.getValue()));//$JR_EXPR_ID=46$
                break;
            }
           default :
           {
           }
        }
        
        return value;
    }


}
