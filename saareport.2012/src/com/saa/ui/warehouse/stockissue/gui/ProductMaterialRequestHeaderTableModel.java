/*
 * ProductMaterialRequestHeaderTableModel.java
 *
 * Created on Apr 18, 2008, 11:22:08 PM
 *
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.saa.ui.warehouse.stockissue.gui;

import com.saa.main.RunTimeController;
import com.saa.ui.warehouse.stockissue.manager.ProductionMaterialRequestBrowseManager;
import com.saa.ui.warehouse.stockissue.model.ProductionMaterialRequestViewItem;
import java.sql.Timestamp;
import java.util.ArrayList;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author Administrator
 */
public class ProductMaterialRequestHeaderTableModel extends AbstractTableModel {

    /*use this manage to retrive memory data ,then render in UI component
     */
    // ProductionMaterialRequestBrowseManager manager = new ProductionMaterialRequestBrowseManager();
    private String[] columns = new String[]{"Document No", "Document Date", "Request By", "Issue By","Melt No"};


    private ArrayList<ProductionMaterialRequestViewItem> rows = new ArrayList();


    public ProductMaterialRequestHeaderTableModel() {
    }

    /**
     * overload constructor must past arrayList of ProductionMaterialRequestViewItems
     **/
    public ProductMaterialRequestHeaderTableModel(ArrayList rowData) {
        this.rows = rowData;
    }


    public Class getColumnClass(int c) {
        if (c == 0) {
            return String.class;
        } else if (c == 1) {
            return Timestamp.class;
        } else if (c == 2) {
            return String.class;
        } else if (c == 3) {
            return String.class;
        } else if (c == 4) {
            return String.class;
        }
        return null;
    }

    public int getRowCount() {
        if (rows == null) {
            return 0;
        }
        return rows.size();
    }

    public String getColumnName(int c) {
        return columns[c];
    }

    public int getColumnCount() {
        return columns.length;
    }

    /**
    public String DOC_NO;
    public Timestamp DOC_DATE;
    public String REQ_BY;
    public String ISSUE_BY;
    public String MELT_NO;
    public String STATUS;
     **/
    public Object getValueAt(int r, int c) {
        switch (c) {
            case 0:
                return rows.get(r).getDOC_NO();
            case 1:
                return rows.get(r).getDOC_DATE();
            case 2:
                return rows.get(r).getREQ_BY();
            case 3:
                return rows.get(r).getISSUE_BY();
            case 4:
                return rows.get(r).getMELT_NO();
            default:
                break;
        }
        return null;
    }

    @Override
    public boolean isCellEditable(int rowIndex, int columnIndex) {
        return true;
    }
    
}
