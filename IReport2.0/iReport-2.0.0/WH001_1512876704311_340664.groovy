/*
 * Generated by JasperReports - 12/10/17 10:31 AM
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
class WH001_1512876704311_340664 extends JREvaluator
{


    /**
     *
     */
    private JRFillParameter parameter_IS_IGNORE_PAGINATION = null;
    private JRFillParameter parameter_REPORT_CONNECTION = null;
    private JRFillParameter parameter_pLot_cd = null;
    private JRFillParameter parameter_REPORT_LOCALE = null;
    private JRFillParameter parameter_REPORT_TIME_ZONE = null;
    private JRFillParameter parameter_REPORT_MAX_COUNT = null;
    private JRFillParameter parameter_REPORT_SCRIPTLET = null;
    private JRFillParameter parameter_pSysDate = null;
    private JRFillParameter parameter_pDate = null;
    private JRFillParameter parameter_pUID = null;
    private JRFillParameter parameter_REPORT_FORMAT_FACTORY = null;
    private JRFillParameter parameter_REPORT_PARAMETERS_MAP = null;
    private JRFillParameter parameter_REPORT_RESOURCE_BUNDLE = null;
    private JRFillParameter parameter_REPORT_DATA_SOURCE = null;
    private JRFillParameter parameter_REPORT_CLASS_LOADER = null;
    private JRFillParameter parameter_REPORT_URL_HANDLER_FACTORY = null;
    private JRFillParameter parameter_REPORT_VIRTUALIZER = null;
    private JRFillField field_UOM_CD = null;
    private JRFillField field_UNIT_COST = null;
    private JRFillField field_DOCDESCS = null;
    private JRFillField field_STOCK_CD = null;
    private JRFillField field_REF_DATE = null;
    private JRFillField field_DOC_NO = null;
    private JRFillField field_SUP_NAME = null;
    private JRFillField field_OUTQTY = null;
    private JRFillField field_GROUP_ID = null;
    private JRFillField field_MELT_NO = null;
    private JRFillField field_REF_NO = null;
    private JRFillField field_QTY = null;
    private JRFillField field_INQTY = null;
    private JRFillField field_DESCS = null;
    private JRFillField field_PURCHASE_DATE = null;
    private JRFillField field_DOC_DATE = null;
    private JRFillField field_LOT_CD = null;
    private JRFillVariable variable_PAGE_NUMBER = null;
    private JRFillVariable variable_COLUMN_NUMBER = null;
    private JRFillVariable variable_REPORT_COUNT = null;
    private JRFillVariable variable_PAGE_COUNT = null;
    private JRFillVariable variable_COLUMN_COUNT = null;
    private JRFillVariable variable_gLotNo_COUNT = null;
    private JRFillVariable variable_GB_GRNNO_COUNT = null;
    private JRFillVariable variable_onhandQty = null;
    private JRFillVariable variable_SUM_OUT_QTY = null;
    private JRFillVariable variable_SUM_IN_QTY = null;
    private JRFillVariable variable_SUM_OUT_QTY_1 = null;
    private JRFillVariable variable_SUM_IN_QTY_1 = null;
    private JRFillVariable variable_onhandQty_1 = null;


    /**
     *
     */
    void customizedInit(
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
    void initParams(Map pm)
    {
        parameter_IS_IGNORE_PAGINATION = (JRFillParameter)pm.get("IS_IGNORE_PAGINATION");
        parameter_REPORT_CONNECTION = (JRFillParameter)pm.get("REPORT_CONNECTION");
        parameter_pLot_cd = (JRFillParameter)pm.get("pLot_cd");
        parameter_REPORT_LOCALE = (JRFillParameter)pm.get("REPORT_LOCALE");
        parameter_REPORT_TIME_ZONE = (JRFillParameter)pm.get("REPORT_TIME_ZONE");
        parameter_REPORT_MAX_COUNT = (JRFillParameter)pm.get("REPORT_MAX_COUNT");
        parameter_REPORT_SCRIPTLET = (JRFillParameter)pm.get("REPORT_SCRIPTLET");
        parameter_pSysDate = (JRFillParameter)pm.get("pSysDate");
        parameter_pDate = (JRFillParameter)pm.get("pDate");
        parameter_pUID = (JRFillParameter)pm.get("pUID");
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
    void initFields(Map fm)
    {
        field_UOM_CD = (JRFillField)fm.get("UOM_CD");
        field_UNIT_COST = (JRFillField)fm.get("UNIT_COST");
        field_DOCDESCS = (JRFillField)fm.get("DOCDESCS");
        field_STOCK_CD = (JRFillField)fm.get("STOCK_CD");
        field_REF_DATE = (JRFillField)fm.get("REF_DATE");
        field_DOC_NO = (JRFillField)fm.get("DOC_NO");
        field_SUP_NAME = (JRFillField)fm.get("SUP_NAME");
        field_OUTQTY = (JRFillField)fm.get("OUTQTY");
        field_GROUP_ID = (JRFillField)fm.get("GROUP_ID");
        field_MELT_NO = (JRFillField)fm.get("MELT_NO");
        field_REF_NO = (JRFillField)fm.get("REF_NO");
        field_QTY = (JRFillField)fm.get("QTY");
        field_INQTY = (JRFillField)fm.get("INQTY");
        field_DESCS = (JRFillField)fm.get("DESCS");
        field_PURCHASE_DATE = (JRFillField)fm.get("PURCHASE_DATE");
        field_DOC_DATE = (JRFillField)fm.get("DOC_DATE");
        field_LOT_CD = (JRFillField)fm.get("LOT_CD");
    }


    /**
     *
     */
    void initVars(Map vm)
    {
        variable_PAGE_NUMBER = (JRFillVariable)vm.get("PAGE_NUMBER");
        variable_COLUMN_NUMBER = (JRFillVariable)vm.get("COLUMN_NUMBER");
        variable_REPORT_COUNT = (JRFillVariable)vm.get("REPORT_COUNT");
        variable_PAGE_COUNT = (JRFillVariable)vm.get("PAGE_COUNT");
        variable_COLUMN_COUNT = (JRFillVariable)vm.get("COLUMN_COUNT");
        variable_gLotNo_COUNT = (JRFillVariable)vm.get("gLotNo_COUNT");
        variable_GB_GRNNO_COUNT = (JRFillVariable)vm.get("GB_GRNNO_COUNT");
        variable_onhandQty = (JRFillVariable)vm.get("onhandQty");
        variable_SUM_OUT_QTY = (JRFillVariable)vm.get("SUM_OUT_QTY");
        variable_SUM_IN_QTY = (JRFillVariable)vm.get("SUM_IN_QTY");
        variable_SUM_OUT_QTY_1 = (JRFillVariable)vm.get("SUM_OUT_QTY_1");
        variable_SUM_IN_QTY_1 = (JRFillVariable)vm.get("SUM_IN_QTY_1");
        variable_onhandQty_1 = (JRFillVariable)vm.get("onhandQty_1");
    }


    /**
     *
     */
    Object evaluate(int id)
    {
        Object value = null;

        if (id == 0)
        {
            value = (java.util.Date)("01/01/2006");
        }
        else if (id == 1)
        {
            value = (java.lang.String)("");
        }
        else if (id == 2)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 3)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 4)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 5)
        {
            value = (java.lang.Integer)(new Integer(0));
        }
        else if (id == 6)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 7)
        {
            value = (java.lang.Integer)(new Integer(0));
        }
        else if (id == 8)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 9)
        {
            value = (java.lang.Integer)(new Integer(0));
        }
        else if (id == 10)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 11)
        {
            value = (java.lang.Integer)(new Integer(0));
        }
        else if (id == 12)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 13)
        {
            value = (java.lang.Integer)(new Integer(0));
        }
        else if (id == 14)
        {
            value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()));
        }
        else if (id == 15)
        {
            value = (java.lang.Double)(((java.lang.Double)field_OUTQTY.getValue()));
        }
        else if (id == 16)
        {
            value = (java.lang.Double)(((java.lang.Double)field_INQTY.getValue()));
        }
        else if (id == 17)
        {
            value = (java.lang.Double)(((java.lang.Double)field_OUTQTY.getValue()));
        }
        else if (id == 18)
        {
            value = (java.lang.Double)(((java.lang.Double)field_INQTY.getValue()));
        }
        else if (id == 19)
        {
            value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()));
        }
        else if (id == 20)
        {
            value = (java.lang.Object)(((java.lang.String)field_LOT_CD.getValue()));
        }
        else if (id == 21)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_onhandQty_1.getValue()));
        }
        else if (id == 22)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_SUM_OUT_QTY_1.getValue()));
        }
        else if (id == 23)
        {
            value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getValue()) * ((java.lang.Double)variable_onhandQty_1.getValue()));
        }
        else if (id == 24)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_SUM_IN_QTY_1.getValue()));
        }
        else if (id == 25)
        {
            value = (java.lang.Object)(((java.lang.String)field_REF_NO.getValue()));
        }
        else if (id == 26)
        {
            value = (java.sql.Timestamp)(((java.sql.Timestamp)field_REF_DATE.getValue()));
        }
        else if (id == 27)
        {
            value = (java.lang.String)(((java.lang.String)field_REF_NO.getValue()));
        }
        else if (id == 28)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_onhandQty.getValue()));
        }
        else if (id == 29)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_SUM_OUT_QTY.getValue()));
        }
        else if (id == 30)
        {
            value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getValue()) * ((java.lang.Double)variable_onhandQty.getValue()));
        }
        else if (id == 31)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_SUM_IN_QTY.getValue()));
        }
        else if (id == 32)
        {
            value = (java.util.Date)(((java.util.Date)parameter_pDate.getValue()));
        }
        else if (id == 33)
        {
            value = (java.lang.String)(((java.sql.Timestamp)parameter_pSysDate.getValue()));
        }
        else if (id == 34)
        {
            value = (java.lang.Integer)(((java.lang.Integer)variable_PAGE_NUMBER.getValue()));
        }
        else if (id == 35)
        {
            value = (java.lang.String)(((java.lang.String)parameter_pUID.getValue()));
        }
        else if (id == 36)
        {
            value = (java.lang.String)(((java.lang.String)field_LOT_CD.getValue()));
        }
        else if (id == 37)
        {
            value = (java.lang.String)(((java.lang.String)field_STOCK_CD.getValue())+"/"+((java.lang.String)field_DESCS.getValue()));
        }
        else if (id == 38)
        {
            value = (java.sql.Timestamp)(((java.sql.Timestamp)field_PURCHASE_DATE.getValue()));
        }
        else if (id == 39)
        {
            value = (java.lang.String)(((java.lang.String)field_SUP_NAME.getValue()));
        }
        else if (id == 40)
        {
            value = (java.sql.Timestamp)(((java.sql.Timestamp)field_DOC_DATE.getValue()));
        }
        else if (id == 41)
        {
            value = (java.lang.String)(((java.lang.String)field_DOC_NO.getValue()));
        }
        else if (id == 42)
        {
            value = (java.lang.Boolean)(((java.lang.Double)field_QTY.getValue()) > 0);
        }
        else if (id == 43)
        {
            value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()));
        }
        else if (id == 44)
        {
            value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getValue()));
        }
        else if (id == 45)
        {
            value = (java.lang.String)(((java.lang.String)field_DOCDESCS.getValue()));
        }
        else if (id == 46)
        {
            value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()) * ((java.lang.Double)field_UNIT_COST.getValue()));
        }
        else if (id == 47)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_onhandQty.getValue()));
        }
        else if (id == 48)
        {
            value = (java.lang.Boolean)(((java.lang.Double)field_QTY.getValue()) < 0);
        }
        else if (id == 49)
        {
            value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()));
        }
        else if (id == 50)
        {
            value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getValue()) * ((java.lang.Double)variable_onhandQty.getValue()));
        }
        else if (id == 51)
        {
            value = (java.lang.String)(((java.lang.String)field_MELT_NO.getValue()));
        }

        return value;
    }


    /**
     *
     */
    Object evaluateOld(int id)
    {
        Object value = null;

        if (id == 0)
        {
            value = (java.util.Date)("01/01/2006");
        }
        else if (id == 1)
        {
            value = (java.lang.String)("");
        }
        else if (id == 2)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 3)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 4)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 5)
        {
            value = (java.lang.Integer)(new Integer(0));
        }
        else if (id == 6)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 7)
        {
            value = (java.lang.Integer)(new Integer(0));
        }
        else if (id == 8)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 9)
        {
            value = (java.lang.Integer)(new Integer(0));
        }
        else if (id == 10)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 11)
        {
            value = (java.lang.Integer)(new Integer(0));
        }
        else if (id == 12)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 13)
        {
            value = (java.lang.Integer)(new Integer(0));
        }
        else if (id == 14)
        {
            value = (java.lang.Double)(((java.lang.Double)field_QTY.getOldValue()));
        }
        else if (id == 15)
        {
            value = (java.lang.Double)(((java.lang.Double)field_OUTQTY.getOldValue()));
        }
        else if (id == 16)
        {
            value = (java.lang.Double)(((java.lang.Double)field_INQTY.getOldValue()));
        }
        else if (id == 17)
        {
            value = (java.lang.Double)(((java.lang.Double)field_OUTQTY.getOldValue()));
        }
        else if (id == 18)
        {
            value = (java.lang.Double)(((java.lang.Double)field_INQTY.getOldValue()));
        }
        else if (id == 19)
        {
            value = (java.lang.Double)(((java.lang.Double)field_QTY.getOldValue()));
        }
        else if (id == 20)
        {
            value = (java.lang.Object)(((java.lang.String)field_LOT_CD.getOldValue()));
        }
        else if (id == 21)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_onhandQty_1.getOldValue()));
        }
        else if (id == 22)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_SUM_OUT_QTY_1.getOldValue()));
        }
        else if (id == 23)
        {
            value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getOldValue()) * ((java.lang.Double)variable_onhandQty_1.getOldValue()));
        }
        else if (id == 24)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_SUM_IN_QTY_1.getOldValue()));
        }
        else if (id == 25)
        {
            value = (java.lang.Object)(((java.lang.String)field_REF_NO.getOldValue()));
        }
        else if (id == 26)
        {
            value = (java.sql.Timestamp)(((java.sql.Timestamp)field_REF_DATE.getOldValue()));
        }
        else if (id == 27)
        {
            value = (java.lang.String)(((java.lang.String)field_REF_NO.getOldValue()));
        }
        else if (id == 28)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_onhandQty.getOldValue()));
        }
        else if (id == 29)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_SUM_OUT_QTY.getOldValue()));
        }
        else if (id == 30)
        {
            value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getOldValue()) * ((java.lang.Double)variable_onhandQty.getOldValue()));
        }
        else if (id == 31)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_SUM_IN_QTY.getOldValue()));
        }
        else if (id == 32)
        {
            value = (java.util.Date)(((java.util.Date)parameter_pDate.getValue()));
        }
        else if (id == 33)
        {
            value = (java.lang.String)(((java.sql.Timestamp)parameter_pSysDate.getValue()));
        }
        else if (id == 34)
        {
            value = (java.lang.Integer)(((java.lang.Integer)variable_PAGE_NUMBER.getOldValue()));
        }
        else if (id == 35)
        {
            value = (java.lang.String)(((java.lang.String)parameter_pUID.getValue()));
        }
        else if (id == 36)
        {
            value = (java.lang.String)(((java.lang.String)field_LOT_CD.getOldValue()));
        }
        else if (id == 37)
        {
            value = (java.lang.String)(((java.lang.String)field_STOCK_CD.getOldValue())+"/"+((java.lang.String)field_DESCS.getOldValue()));
        }
        else if (id == 38)
        {
            value = (java.sql.Timestamp)(((java.sql.Timestamp)field_PURCHASE_DATE.getOldValue()));
        }
        else if (id == 39)
        {
            value = (java.lang.String)(((java.lang.String)field_SUP_NAME.getOldValue()));
        }
        else if (id == 40)
        {
            value = (java.sql.Timestamp)(((java.sql.Timestamp)field_DOC_DATE.getOldValue()));
        }
        else if (id == 41)
        {
            value = (java.lang.String)(((java.lang.String)field_DOC_NO.getOldValue()));
        }
        else if (id == 42)
        {
            value = (java.lang.Boolean)(((java.lang.Double)field_QTY.getOldValue()) > 0);
        }
        else if (id == 43)
        {
            value = (java.lang.Double)(((java.lang.Double)field_QTY.getOldValue()));
        }
        else if (id == 44)
        {
            value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getOldValue()));
        }
        else if (id == 45)
        {
            value = (java.lang.String)(((java.lang.String)field_DOCDESCS.getOldValue()));
        }
        else if (id == 46)
        {
            value = (java.lang.Double)(((java.lang.Double)field_QTY.getOldValue()) * ((java.lang.Double)field_UNIT_COST.getOldValue()));
        }
        else if (id == 47)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_onhandQty.getOldValue()));
        }
        else if (id == 48)
        {
            value = (java.lang.Boolean)(((java.lang.Double)field_QTY.getOldValue()) < 0);
        }
        else if (id == 49)
        {
            value = (java.lang.Double)(((java.lang.Double)field_QTY.getOldValue()));
        }
        else if (id == 50)
        {
            value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getOldValue()) * ((java.lang.Double)variable_onhandQty.getOldValue()));
        }
        else if (id == 51)
        {
            value = (java.lang.String)(((java.lang.String)field_MELT_NO.getOldValue()));
        }

        return value;
    }


    /**
     *
     */
    Object evaluateEstimated(int id)
    {
        Object value = null;

        if (id == 0)
        {
            value = (java.util.Date)("01/01/2006");
        }
        else if (id == 1)
        {
            value = (java.lang.String)("");
        }
        else if (id == 2)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 3)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 4)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 5)
        {
            value = (java.lang.Integer)(new Integer(0));
        }
        else if (id == 6)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 7)
        {
            value = (java.lang.Integer)(new Integer(0));
        }
        else if (id == 8)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 9)
        {
            value = (java.lang.Integer)(new Integer(0));
        }
        else if (id == 10)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 11)
        {
            value = (java.lang.Integer)(new Integer(0));
        }
        else if (id == 12)
        {
            value = (java.lang.Integer)(new Integer(1));
        }
        else if (id == 13)
        {
            value = (java.lang.Integer)(new Integer(0));
        }
        else if (id == 14)
        {
            value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()));
        }
        else if (id == 15)
        {
            value = (java.lang.Double)(((java.lang.Double)field_OUTQTY.getValue()));
        }
        else if (id == 16)
        {
            value = (java.lang.Double)(((java.lang.Double)field_INQTY.getValue()));
        }
        else if (id == 17)
        {
            value = (java.lang.Double)(((java.lang.Double)field_OUTQTY.getValue()));
        }
        else if (id == 18)
        {
            value = (java.lang.Double)(((java.lang.Double)field_INQTY.getValue()));
        }
        else if (id == 19)
        {
            value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()));
        }
        else if (id == 20)
        {
            value = (java.lang.Object)(((java.lang.String)field_LOT_CD.getValue()));
        }
        else if (id == 21)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_onhandQty_1.getEstimatedValue()));
        }
        else if (id == 22)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_SUM_OUT_QTY_1.getEstimatedValue()));
        }
        else if (id == 23)
        {
            value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getValue()) * ((java.lang.Double)variable_onhandQty_1.getEstimatedValue()));
        }
        else if (id == 24)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_SUM_IN_QTY_1.getEstimatedValue()));
        }
        else if (id == 25)
        {
            value = (java.lang.Object)(((java.lang.String)field_REF_NO.getValue()));
        }
        else if (id == 26)
        {
            value = (java.sql.Timestamp)(((java.sql.Timestamp)field_REF_DATE.getValue()));
        }
        else if (id == 27)
        {
            value = (java.lang.String)(((java.lang.String)field_REF_NO.getValue()));
        }
        else if (id == 28)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_onhandQty.getEstimatedValue()));
        }
        else if (id == 29)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_SUM_OUT_QTY.getEstimatedValue()));
        }
        else if (id == 30)
        {
            value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getValue()) * ((java.lang.Double)variable_onhandQty.getEstimatedValue()));
        }
        else if (id == 31)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_SUM_IN_QTY.getEstimatedValue()));
        }
        else if (id == 32)
        {
            value = (java.util.Date)(((java.util.Date)parameter_pDate.getValue()));
        }
        else if (id == 33)
        {
            value = (java.lang.String)(((java.sql.Timestamp)parameter_pSysDate.getValue()));
        }
        else if (id == 34)
        {
            value = (java.lang.Integer)(((java.lang.Integer)variable_PAGE_NUMBER.getEstimatedValue()));
        }
        else if (id == 35)
        {
            value = (java.lang.String)(((java.lang.String)parameter_pUID.getValue()));
        }
        else if (id == 36)
        {
            value = (java.lang.String)(((java.lang.String)field_LOT_CD.getValue()));
        }
        else if (id == 37)
        {
            value = (java.lang.String)(((java.lang.String)field_STOCK_CD.getValue())+"/"+((java.lang.String)field_DESCS.getValue()));
        }
        else if (id == 38)
        {
            value = (java.sql.Timestamp)(((java.sql.Timestamp)field_PURCHASE_DATE.getValue()));
        }
        else if (id == 39)
        {
            value = (java.lang.String)(((java.lang.String)field_SUP_NAME.getValue()));
        }
        else if (id == 40)
        {
            value = (java.sql.Timestamp)(((java.sql.Timestamp)field_DOC_DATE.getValue()));
        }
        else if (id == 41)
        {
            value = (java.lang.String)(((java.lang.String)field_DOC_NO.getValue()));
        }
        else if (id == 42)
        {
            value = (java.lang.Boolean)(((java.lang.Double)field_QTY.getValue()) > 0);
        }
        else if (id == 43)
        {
            value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()));
        }
        else if (id == 44)
        {
            value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getValue()));
        }
        else if (id == 45)
        {
            value = (java.lang.String)(((java.lang.String)field_DOCDESCS.getValue()));
        }
        else if (id == 46)
        {
            value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()) * ((java.lang.Double)field_UNIT_COST.getValue()));
        }
        else if (id == 47)
        {
            value = (java.lang.Double)(((java.lang.Double)variable_onhandQty.getEstimatedValue()));
        }
        else if (id == 48)
        {
            value = (java.lang.Boolean)(((java.lang.Double)field_QTY.getValue()) < 0);
        }
        else if (id == 49)
        {
            value = (java.lang.Double)(((java.lang.Double)field_QTY.getValue()));
        }
        else if (id == 50)
        {
            value = (java.lang.Double)(((java.lang.Double)field_UNIT_COST.getValue()) * ((java.lang.Double)variable_onhandQty.getEstimatedValue()));
        }
        else if (id == 51)
        {
            value = (java.lang.String)(((java.lang.String)field_MELT_NO.getValue()));
        }

        return value;
    }


}
