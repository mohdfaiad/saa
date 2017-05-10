/* Server Version: WI-V6.3.1.4481 Firebird 1.5.  ODS Version: 10.1. */

SET NAMES NONE;

SET SQL DIALECT 3;

CONNECT 'C:\project\saa\DATABASE\SAABKKRESTORE.GDB' USER 'SYSDBA' PASSWORD 'masterkey';

/* Create Views... */

/* Alter Procedure... */
/* Alter (X_GET_UNDUE_ONHAND_LOT) */
SET TERM ^ ;
ALTER PROCEDURE X_GET_UNDUE_ONHAND_LOT(ADATE DATE)
 RETURNS(PURCHASEYEAR SMALLINT,
STOCK_CD VARCHAR(15) CHARACTER SET NONE,
LOT_NO VARCHAR(15) CHARACTER SET NONE,
PURCHASE_DATE DATE,
REF_NO VARCHAR(15) CHARACTER SET NONE,
REF_DATE DATE,
ONHAND_QTY FLOAT,
CARDQTY FLOAT,
UPDATEQTY FLOAT,
UNDUE VARCHAR(1) CHARACTER SET NONE)
 AS
DECLARE VARIABLE STOCKCARDONHANDQTY FLOAT;
begin
 for select  lot_cd , purchase_date,min(ref_no),min(ref_date),
 stock_cd,sum(onhand_qty) ,max(extract(year from purchase_date))
 from ic_mat_stk_dt_link
 WHERE GROUP_ID NOT IN('SG008','SG009')
 AND PURCHASE_DATE >=:adate
 group by purchase_date, stock_cd,lot_cd
 order by purchase_date, stock_cd,lot_cd

 into :lot_no,:purchase_date,:ref_no,:ref_date,:stock_cd  ,:onhand_qty   ,:purchaseyear
 do
 begin
  undue = 'N' ;
  cardQty = 0;
  select sum(qty)
  from ic_stockcard
  where stock_cd  = :stock_cd
  and
  lot_cd = :lot_no
  and
  purchase_date = :purchase_date


  into :StockCardOnhandQty;
  cardQty =   StockCardOnhandQty;
  if (StockCardOnhandQty <> onhand_qty) then
  begin

    undue ='Y' ;
    updateQty =   StockCardOnhandQty - onhand_qty ;
  end

  suspend;
 end

  --suspend;
end
^

SET TERM ; ^
COMMIT WORK;
/* Alter (X_INS_PL_REQ_DT) */
SET TERM ^ ;
ALTER PROCEDURE X_INS_PL_REQ_DT(ADOC_NO VARCHAR(15) CHARACTER SET NONE,
ADOC_DATE DATE,
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
    if (row_count=0) then
    begin
       exception e_no_row;
    end

  suspend;
end
^

SET TERM ; ^
COMMIT WORK;

