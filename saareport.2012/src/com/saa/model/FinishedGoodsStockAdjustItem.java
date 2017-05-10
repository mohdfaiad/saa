/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.saa.model;

import java.security.Timestamp;

/**
 *
 * @author aon
 */
public class FinishedGoodsStockAdjustItem extends AbstractModel {

    public float getBundleQty() {
        return bundleQty;
    }

    public void setBundleQty(float bundleQty) {
        this.bundleQty = bundleQty;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Timestamp getDocumentDate() {
        return documentDate;
    }

    public void setDocumentDate(Timestamp documentDate) {
        this.documentDate = documentDate;
    }

    public String getDocumentNo() {
        return documentNo;
    }

    public void setDocumentNo(String documentNo) {
        this.documentNo = documentNo;
    }

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }

    public String getMeltNo() {
        return meltNo;
    }

    public void setMeltNo(String meltNo) {
        this.meltNo = meltNo;
    }

    public float getOnhandBundleQty() {
        return onhandBundleQty;
    }

    public void setOnhandBundleQty(float onhandBundleQty) {
        this.onhandBundleQty = onhandBundleQty;
    }

    public float getOnhandQty() {
        return onhandQty;
    }

    public void setOnhandQty(float onhandQty) {
        this.onhandQty = onhandQty;
    }

    public float getQty() {
        return qty;
    }

    public void setQty(float qty) {
        this.qty = qty;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getUnknowMelt() {
        return unknowMelt;
    }

    public void setUnknowMelt(String unknowMelt) {
        this.unknowMelt = unknowMelt;
    }

    public String getUom() {
        return uom;
    }

    public void setUom(String uom) {
        this.uom = uom;
    }

    /***header header information refer to pl_fng_adj_hd**/
    private String documentNo;
    private Timestamp documentDate;
    private String description;
    private String status;
    private String remark;

    /**

     DOC_NO             VARCHAR(15) NOT NULL,
    DOC_DATE           TIMESTAMP NOT NULL,
    MELT_NO            VARCHAR10 NOT NULL,
    ITEM_CODE          VARCHAR15 NOT NULL,
    UOM_CD             VARCHAR4 NOT NULL,
    QTY                FLOAT,
    BUNDLE_QTY         FFLOAT,
    ONHAND_QTY         FFLOAT,
    ONHAND_BUNDLE_QTY  FFLOAT,
    UNKNOW_MELT_FLAG   VARCHAR(1) DEFAULT 'N'
     **/


    /****detail inforamtion refer to pl_fng_adj_dt**/
    private String meltNo;
    private String itemCode;
    private String uom;
    private String unknowMelt;
    private float bundleQty;
    private float qty;
    private float onhandQty;
    private float onhandBundleQty;



}
