
  --patch script missing record
            INSERT INTO PL_REQ_DT (
    DOC_NO,     DOC_DATE,    TRX_TYPE,
    ITEM_CODE,     ITEM_DESCS,    LOT_NO,
    PURCHASE_DATE,    QTY,
    UNIT_COST,       UOM,    TOTAL_COST,
    GROUP_ID,    USAGED_QTY,
    ITEM_TYPE,    ONHAND_QTY,
    REF_NO,     REF_DATE,
    ACCT_CD)


       select doc_no,doc_date,trx_type,
       stock_cd, CAST('' AS VARCHAR(10)),lot_cd,purchase_date,
        QTY*(-1), unit_cost,UOM_CD,TOTAL_COST,
        GROUP_ID,0,CAST( 'N' AS VARCHAR(1)),0,REF_NO,REF_DATE,ACCT_CD
        from ic_stockcard
               where doc_no ='FA41M06'
                     and lot_CD = 'PC151/07'
                     
                   
                     UPDATE PL_REQ_DT
                     SET ITEM_DESCS ='Aluminium ingot STD ( Zn1.5)'    ,
                      item_code ='A003/2'
                               where doc_no ='FA41M06'
                     and lot_no = 'PC151/07'

