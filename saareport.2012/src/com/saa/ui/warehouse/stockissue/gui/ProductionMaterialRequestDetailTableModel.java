/*
 * ProductionMaterialRequestDetailTableModel.java
 *
 * Created on May 6, 2008, 9:49:30 AM
 *
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.saa.ui.warehouse.stockissue.gui;

import com.saa.ui.warehouse.stockissue.model.ProductionMaterialRequestDetailItem;
import java.sql.Timestamp;
import java.util.ArrayList;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Administrator
 */
public class ProductionMaterialRequestDetailTableModel extends AbstractTableModel {

    private static final int LOT_NO = 0;
    private static final int STOCK_CODE = 1;
    private static final int STOCK_DESCS = 2;
    private static final int UOM = 3;
    private static final int REF_NO = 4;
    private static final int REF_DATE = 5;
    private static final int UNIT_COST = 6;
    private static final int ONHAND_QTY = 7;
    private static final int QTY = 8;


    private String[] columns = new String[]{"Purchase Order", "Stock Code", "Stock Description", "UOM", "GRN No", "GRN Date", "Unit Cost", "Onhand Qty", "Issue Qty"};

    private ArrayList rows = new ArrayList();

    public ProductionMaterialRequestDetailTableModel() {
    }


    public ProductionMaterialRequestDetailTableModel(ArrayList data) {
        this.rows = data;
    }

//    public Class getColumnClass(int c) {
//        switch (c) {
//            case LOT_NO:
//                return String.class;
//            case STOCK_CODE:
//                return String.class;
//            case STOCK_DESCS:
//                return String.class;
//            case UOM:
//                return String.class;
//            case REF_NO:
//                return String.class;
//            case REF_DATE:
//                return Timestamp.class;
//            case UNIT_COST:
//                return float.class;
//            case ONHAND_QTY:
//                return float.class;
//            case QTY:
//                return float.class;
//        }
//        return null;
//    }

    public int getRowCount() {
        if (rows == null) {
            return 0;
        }
        return rows.size();
    }

    public String getColumnName(int c) {
        return columns[c ];
    }

    public int getColumnCount() {
        return columns.length;
    }

    public Object getValueAt(int row, int col) {
        Object value = null;
        switch (col) {
            case LOT_NO:
                value = ((ProductionMaterialRequestDetailItem) rows.get(row)).getLOT_NO();
                break;
            case STOCK_CODE:
                value = ((ProductionMaterialRequestDetailItem) rows.get(row)).getITEM_CODE();
                break;
            case STOCK_DESCS:
                value = ((ProductionMaterialRequestDetailItem) rows.get(row)).getITEM_DESCS();
                break;
            case UOM:
                value = ((ProductionMaterialRequestDetailItem) rows.get(row)).getUOM();
                break;
            case REF_NO:
                value = ((ProductionMaterialRequestDetailItem) rows.get(row)).getREF_NO();
                break;
            case REF_DATE:
                value = ((ProductionMaterialRequestDetailItem) rows.get(row)).getREF_DATE();
                break;
            case UNIT_COST:
                value = ((ProductionMaterialRequestDetailItem) rows.get(row)).getUNIT_COST();
                break;
            case ONHAND_QTY:
                value = ((ProductionMaterialRequestDetailItem) rows.get(row)).getONHAND_QTY();
                break;
            case QTY:
                value = ((ProductionMaterialRequestDetailItem) rows.get(row)).getQTY();
                break;
            default:
                break;
        }
        System.out.println("getValueAt row, ="+row+"," + value);
        return value;
    }

    @Override
    public boolean isCellEditable(int row, int column) {
        if ((column == QTY) || (column == REF_NO) || (column == REF_DATE)) {
            return true;
        }
        return false;
    }
}
