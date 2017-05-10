/* Server Version: WI-V6.3.1.4481 Firebird 1.5.  ODS Version: 10.1. */

SET NAMES NONE;

SET SQL DIALECT 3;

CONNECT 'C:\project\saa\DATABASE\SAABKKRESTORE.GDB' USER 'SYSDBA' PASSWORD 'masterkey';

/* Create Procedure... */
SET TERM ^ ;
CREATE PROCEDURE X_INS_PL_REQ_DT(ADOC_NO VARCHAR(15) CHARACTER SET NONE,
ADOC_DATE TIMESTAMP,
APLAN_DOC VARCHAR(15) CHARACTER SET NONE,
AMELT_NO VARCHAR(10) CHARACTER SET NONE)
 AS
 BEGIN EXIT; END
^

SET TERM ; ^
COMMIT WORK;
SET TERM ^ ;
CREATE PROCEDURE X_QUALIFY_STOCK(ASTOCK_CODE VARCHAR(15) CHARACTER SET NONE,
ALOT_CD VARCHAR(15) CHARACTER SET NONE,
AREF_NO VARCHAR(15) CHARACTER SET NONE,
AREF_DATE TIMESTAMP)
 RETURNS(ONHAND_QTY FLOAT,
RESERVED_QTY FLOAT)
 AS
 BEGIN EXIT; END
^

SET TERM ; ^
COMMIT WORK;
SET TERM ^ ;
CREATE PROCEDURE X_UPD_STOCKRESERVE(ASTOCK_CD VARCHAR(15) CHARACTER SET NONE,
ALOT_CD VARCHAR(15) CHARACTER SET NONE,
APURCHAE_DATE TIMESTAMP,
AREF_NO VARCHAR(15) CHARACTER SET NONE,
AREF_DATE TIMESTAMP,
ADOC_NO VARCHAR(15) CHARACTER SET NONE,
ADOC_DATE TIMESTAMP,
AUSER_ID VARCHAR(10) CHARACTER SET NONE,
AQTY FLOAT,
AMODE VARCHAR(10) CHARACTER SET NONE)
 AS
 BEGIN EXIT; END
^

SET TERM ; ^
COMMIT WORK;

/* Create Views... */

/* Alter Procedure... */
/* Alter (X_INS_PL_REQ_DT) */
SET TERM ^ ;
ALTER PROCEDURE X_INS_PL_REQ_DT(ADOC_NO VARCHAR(15) CHARACTER SET NONE,
ADOC_DATE TIMESTAMP,
APLAN_DOC VARCHAR(15) CHARACTER SET NONE,
AMELT_NO VARCHAR(10) CHARACTER SET NONE)
 AS
begin

 INSERT INTO PL_REQ_DT (
    DOC_NO,     DOC_DATE,
    TRX_TYPE,    ITEM_CODE,
    ITEM_DESCS,    LOT_NO,
    PURCHASE_DATE,    QTY,
    UNIT_COST,       UOM,
    TOTAL_COST,      GROUP_ID,
    USAGED_QTY,      ITEM_TYPE,
    ONHAND_QTY,      REF_NO,
    REF_DATE,
    ACCT_CD)
    select  HD.doc_no,HD.doc_date,
    HD.trx_type,PL.stock_code,
    ST.EN_descs,PL.lot_no,
    PL.purchase_date,0,
    PL.unit_cost,PL.uom,
    0,PL.group_id,
    0,'N',
    PL.onhand_qty,'GRNNO',
    current_date,
    PL.supplier_cd
    from pl_req_hd hd,pl_rawmat_sheet_dt pl,ic_mat_stk_hd ST
    where hd.melt_no =:amelt_no
    AND HD.melt_no = PL.melt_no
    AND HD.plan_doc = PL.plan_doc
    AND PL.stock_code = ST.stock_cd
    AND HD.DOC_NO =:adoc_no
    AND HD.doc_date =:adoc_date
    AND HD.plan_doc =:aplan_doc
    and status ='N';

  suspend;
end
^

SET TERM ; ^
COMMIT WORK;
/* Alter (X_QUALIFY_STOCK) */
SET TERM ^ ;
ALTER PROCEDURE X_QUALIFY_STOCK(ASTOCK_CODE VARCHAR(15) CHARACTER SET NONE,
ALOT_CD VARCHAR(15) CHARACTER SET NONE,
AREF_NO VARCHAR(15) CHARACTER SET NONE,
AREF_DATE TIMESTAMP)
 RETURNS(ONHAND_QTY FLOAT,
RESERVED_QTY FLOAT)
 AS
begin
  SELECT SUM(ONHAND_QTY)
  FROM IC_MAT_STK_DT_LINK
  WHERE STOCK_CD =:astock_code
  AND LOT_CD =:alot_cd
  AND REF_NO =:aref_no
  AND REF_DATE =:aref_date
  INTO:onhand_qty;

  SELECT SUM(QTY) FROM IC_STOCK_RESERVED
  WHERE STOCK_CD =:astock_code
  AND LOT_CD =:alot_cd
  AND REF_NO =:aref_no
  AND REF_DATE =:aref_date
  INTO :reserved_qty;
  suspend;
end
^

SET TERM ; ^
COMMIT WORK;
/* Alter (X_UPD_STOCKRESERVE) */
SET TERM ^ ;
ALTER PROCEDURE X_UPD_STOCKRESERVE(ASTOCK_CD VARCHAR(15) CHARACTER SET NONE,
ALOT_CD VARCHAR(15) CHARACTER SET NONE,
APURCHAE_DATE TIMESTAMP,
AREF_NO VARCHAR(15) CHARACTER SET NONE,
AREF_DATE TIMESTAMP,
ADOC_NO VARCHAR(15) CHARACTER SET NONE,
ADOC_DATE TIMESTAMP,
AUSER_ID VARCHAR(10) CHARACTER SET NONE,
AQTY FLOAT,
AMODE VARCHAR(10) CHARACTER SET NONE)
 AS
DECLARE VARIABLE RECORDFOUND SMALLINT;
DECLARE VARIABLE PURCHASE_DATE TIMESTAMP;
DECLARE VARIABLE GROUP_ID VARCHAR(10);
DECLARE VARIABLE UOM_CD VARCHAR(4);
DECLARE VARIABLE RESERVEDDETAILQTY FLOAT;
DECLARE VARIABLE RESERVEDLINKQTY FLOAT;
begin
  /* Procedure Text */
  RECORDFOUND =0;
  select count(*)
  from ic_stock_reserved
  where stock_cd =:astock_cd
  and lot_cd =:alot_cd
  and ref_no =:aref_no
  and ref_date =:aref_date
  and doc_no =:adoc_no
  and doc_date =:adoc_date
  into :recordfound;
  if (recordfound >0) then
  begin
          update ic_stock_reserved
          set qty =:aqty
          where stock_cd =:astock_cd
          and lot_cd =:alot_cd
          and ref_no =:aref_no
          and ref_date =:aref_date
          and doc_no =:adoc_no
          and doc_date =:adoc_date;

  end
  else if (recordfound=0) then
  begin
    SELECT MAX(PURCHASE_DATE), MAX(GROUP_ID),
    MAX(UOM_CD)
    FROM IC_MAT_STK_DT_LINK
    WHERE STOCK_CD =:astock_cd
    AND LOT_CD =:alot_cd
    AND PURCHASE_DATE =:apurchae_date
    AND REF_NO =:aref_no
    AND REF_DATE =:aref_date
    INTO :PURCHASE_DATE,:GROUP_ID,:UOM_CD;

    INSERT INTO IC_STOCK_RESERVED (
    DOC_NO,
    DOC_DATE,
    LOT_CD,
    PURCHASE_DATE,
    REF_NO,
    REF_DATE,
    STOCK_CD,
    GROUP_ID,
    UOM_CD,
    QTY,
    UPDATE_USER,
    UPDATE_DATE)
    VALUES(:ADOC_NO,:ADOC_DATE,:alot_cd,:apurchae_date,:AREF_NO,
    :AREF_DATE,:astock_cd,:GROUP_ID,:UOM_CD,
    :aqty, :auser_id,current_timestamp);
  end
  if (AMODE ='D') then
  BEGIN
      DELETE
         from ic_stock_reserved
      where stock_cd =:astock_cd
      and lot_cd =:alot_cd
      and ref_no =:aref_no
      and ref_date =:aref_date
      and doc_no =:adoc_no
      and doc_date =:adoc_date;
  END

     select sum (qty)
     from  ic_stock_reserved
     where stock_cd =:astock_cd
          and lot_cd =:alot_cd
          and purchase_date =:apurchae_date
          into :reservedDetailQty;

        if (reservedDetailQty >0) then
        begin
            update ic_mat_stk_dt
            set reserved_qty =: reservedDetailQty
             where stock_cd =:astock_cd
               and lot_cd =:alot_cd
               and purchase_date =:apurchae_date ;
        end

            select sum (qty)
     from ic_stock_reserved
     where stock_cd =:astock_cd
          and lot_cd =:alot_cd
          and purchase_date =:apurchae_date
          and ref_no =:aref_no
           and ref_date =:aref_date
          into :reservedLinkQty;
          if (reservedLinkQty >0) then
          begin
            update ic_mat_stk_dt_link
            set reserved_qty =:reservedLinkQty
            where stock_cd =:astock_cd
          and lot_cd =:alot_cd
          and purchase_date =:apurchae_date
          and ref_no =:aref_no
           and ref_date =:aref_date;

          end


  suspend;
end
^

SET TERM ; ^
COMMIT WORK;

