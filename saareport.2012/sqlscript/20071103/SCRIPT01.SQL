CREATE PROCEDURE X_POST_MATERIAL (
    ACCT_CD VARCHAR(10),
    DOC_NO VARCHAR(15),
    DOC_DATE DATE,
    UPDATE_USER VARCHAR(10),
    MODULE VARCHAR(2),
    MODE VARCHAR(1))
AS
DECLARE VARIABLE REF_NO VARCHAR(15);
DECLARE VARIABLE REF_DATE TIMESTAMP;
DECLARE VARIABLE QTY FLOAT;
DECLARE VARIABLE UNIT_COST FLOAT;
DECLARE VARIABLE TOTAL_COST FLOAT;
DECLARE VARIABLE LOT_CD VARCHAR(15);
DECLARE VARIABLE GROUP_ID VARCHAR(10);
DECLARE VARIABLE UOM_CD VARCHAR(4);
DECLARE VARIABLE STOCK_VALUE FLOAT;
DECLARE VARIABLE FMONTH SMALLINT;
DECLARE VARIABLE FYEAR SMALLINT;
DECLARE VARIABLE STOCK_CD VARCHAR(15);
DECLARE VARIABLE UPDATE_DATE TIMESTAMP;
DECLARE VARIABLE ROW_NUM SMALLINT;
DECLARE VARIABLE ORDER_LINE SMALLINT;
DECLARE VARIABLE USAGE_QTY FLOAT;
DECLARE VARIABLE DESCS VARCHAR(60);
DECLARE VARIABLE TRX_TYPE VARCHAR(2);
DECLARE VARIABLE MELT_NO VARCHAR(10);
DECLARE VARIABLE ONHAND_QTY FLOAT;
DECLARE VARIABLE RESERVED_QTY FLOAT;
DECLARE VARIABLE ROWCOUNT INTEGER;
DECLARE VARIABLE GRN_NO VARCHAR(15);
DECLARE VARIABLE GRN_DATE TIMESTAMP;
DECLARE VARIABLE PURCHASE_DATE TIMESTAMP;
BEGIN
   select count(*)
   FROM  pl_req_dt D , PL_REQ_HD A
   WHERE
       D.doc_no = A.DOC_NO
   AND D.DOC_DATE = D.doc_date
   AND D.TRX_TYPE = A.TRX_TYPE
   AND A.DOC_NO =:DOC_NO
   AND A.DOC_DATE =:DOC_DATE
   AND IC_MODE =:MODE
   AND A.STATUS <> 'X'
   into :rowcount;
   if(rowcount >= 1) then
   begin
 
       BEGIN
         UPDATE_DATE = CURRENT_DATE;
         row_num =0;
         FYEAR = extract(YEAR FROM DOC_DATE);
         FMONTH = EXTRACT(MONTH FROM DOC_DATE);
         IF (MODULE ='PL') then
         BEGIN
           order_line =0;
            FOR
             SELECT A.DOC_NO,
                    A.DOC_DATE,
                    A.req_by,
                    A.req_date,
                    ROUND(D.QTY,3), /*To avoid rounding problem 20040324*/
                    D.usaged_qty ,
                    D.UNIT_COST,
                    D.TOTAL_COST,
                    D.LOT_NO,
                    D.GROUP_ID ,
                    D.UOM,
                    D.QTY*D.UNIT_COST,
                    D.ITEM_CODE,a.descs ,
                    A.trx_type,
                    A.melt_no,
                    D.REF_NO,
                    D.REF_DATE  ,
                    d.purchase_date   ,
                    D.ACCT_CD
             FROM  pl_req_dt D , PL_REQ_HD A
             WHERE
                 D.doc_no = A.DOC_NO
             AND D.DOC_DATE = D.doc_date
             AND D.TRX_TYPE = A.TRX_TYPE
             AND A.DOC_NO =:DOC_NO
             AND A.DOC_DATE =:DOC_DATE
             AND IC_MODE =:MODE
             AND A.STATUS <> 'X'
             AND D.qty > 0 --eliminate zero value insert to stockcard 20071103
             ORDER BY    D.DOC_DATE,D.item_code      /*MUST ADD ORDER by AON 20040521 10:00AM*/
             INTO :DOC_NO,:DOC_DATE,
                  :REF_NO,:REF_DATE,:QTY,:usage_qty ,
                  :UNIT_COST,:TOTAL_COST,
                  :LOT_CD,:GROUP_ID,:UOM_CD,
                  :STOCK_VALUE,:STOCK_CD,:descs,
                  :trx_type,:melt_no,:grn_no,:grn_date,:purchase_date,:ACCT_CD
             DO
             BEGIN
    
           /***/
              /* ACCT_CD ='PLMODULE';*/
               order_line = order_line +1 ;
               if (ACCT_CD='SUPP') then
               BEGIN
                   ACCT_CD=STOCK_CD;
               END
                       /*Stock Requestransaction */
               if (MODE ='O') then
               BEGIN
                 BEGIN
                      UPDATE IC_MAT_STK_DT_LINK
                      SET ONHAND_QTY = ONHAND_QTY - :QTY   ,
                          RESERVED_QTY =RESERVED_QTY -:QTY 
                      WHERE STOCK_CD = :STOCK_CD
                      AND GROUP_ID = :GROUP_ID
                      AND LOT_CD = :LOT_CD
                      AND ACCT_CODE =:ACCT_CD
                      AND PURCHASE_DATE =:PURCHASE_DATE
                      AND UOM_CD = :UOM_CD
                      AND REF_NO = :grn_no
                      AND REF_DATE = :grn_date;
                  END
                  BEGIN

                      UPDATE IC_MAT_STK_DT
                      SET ONHAND_QTY = ONHAND_QTY - :QTY, /**Material Actual Stock Usage QUANTITY**/
                          RESERVED_QTY =RESERVED_QTY -:QTY  /**ALSO UPDATE RESERVED QTY*/
                      WHERE STOCK_CD = :STOCK_CD
                      AND GROUP_ID =:GROUP_ID
                      AND LOT_CD =:LOT_CD
                      AND ACCT_CODE =:ACCT_CD
                      AND PURCHASE_DATE =:PURCHASE_DATE
                      AND UOM_CD =:UOM_CD;
                  END

               END
               /*Material Return transaction*/
               if (MODE ='I') then
               BEGIN
                   UPDATE IC_MAT_STK_DT_LINK
                  SET ONHAND_QTY = ONHAND_QTY + :QTY /**Material Return Value**/
                  WHERE STOCK_CD = :STOCK_CD
                  AND GROUP_ID =:GROUP_ID
                  AND LOT_CD =:LOT_CD
                  AND ACCT_CODE =:ACCT_CD
                  AND PURCHASE_DATE =:PURCHASE_DATE
                  AND UOM_CD =:UOM_CD
                  AND REF_NO = :grn_no
                  AND REF_DATE = :grn_date;
                  UPDATE IC_MAT_STK_DT
                  SET ONHAND_QTY = ONHAND_QTY + :QTY /**Material Return Value**/
                  WHERE STOCK_CD = :STOCK_CD
                  AND GROUP_ID =:GROUP_ID
                  AND LOT_CD =:LOT_CD
                  AND ACCT_CODE =:ACCT_CD
                  AND PURCHASE_DATE =:PURCHASE_DATE
                  AND UOM_CD =:UOM_CD;


               END

               BEGIN
                  SELECT SUM(ONHAND_QTY) , SUM(RESERVED_QTY)  ,SUM(ONHAND_QTY * UNIT_COST)
                  FROM IC_MAT_STK_DT_LINK
                  WHERE STOCK_CD =:STOCK_CD
                  AND GROUP_ID =:GROUP_ID
                  AND UOM_CD =:UOM_CD
                  AND ACCT_CODE =:ACCT_CD
                  AND PURCHASE_DATE =:PURCHASE_DATE
                  AND LOT_CD =:LOT_CD
                  INTO :ONHAND_QTY,:RESERVED_QTY,:STOCK_VALUE;
                  if (STOCK_VALUE IS NULL) then STOCK_VALUE =0;
                  if (STOCK_VALUE > 0) then
                  BEGIN
                     TOTAL_COST =STOCK_VALUE;
                  END
                  if (reserved_qty is null) then  reserved_qty =0 ;
                  BEGIN
                  /**UPDATE AGAIN STOCK RESERVED_QTY*/
                    UPDATE IC_MAT_STK_DT
                    SET RESERVED_QTY =:RESERVED_QTY
                       WHERE STOCK_CD = :STOCK_CD
                   AND GROUP_ID =:GROUP_ID
                   AND LOT_CD =:LOT_CD
                   AND ACCT_CODE =:ACCT_CD
                   AND PURCHASE_DATE =:PURCHASE_DATE
                   AND UOM_CD =:UOM_CD;

                  END
               END
    
               /**Insert melt_no instead of ref_no into stock card*/
               if (MODE ='I') then
               BEGIN
                   INSERT INTO IC_STOCKCARD (ACCT_CD,DOC_NO,DOC_DATE,REF_NO,REF_DATE,QTY,UNIT_COST,TOTAL_COST,LOT_CD,GROUP_ID,UOM_CD,STOCK_VALUE,FMONTH,FYEAR,MODE,STOCK_CD,UPDATE_USER,UPDATE_DATE,MODULE,ORDER_LINE,descs,TRX_TYPE,MELT_NO,RESERVED_QTY,ONHAND_QTY,PURCHASE_DATE)
                   VALUES (:ACCT_CD,:DOC_NO,:DOC_DATE,:grn_no,:grn_date,:QTY,:UNIT_COST,:TOTAL_COST,:LOT_CD,:GROUP_ID,:UOM_CD,:STOCK_VALUE,:FMONTH,:FYEAR,:MODE,:STOCK_CD,:UPDATE_USER,:UPDATE_DATE,:MODULE,:ORDER_LINE,:descs,:TRX_TYPE,:MELT_NO,:RESERVED_QTY,:ONHAND_QTY,:PURCHASE_DATE);
                   WHEN SQLCODE - 530 DO
                   BEGIN
                     EXCEPTION EX_INS_STOCKCARD;
                   END
               END
               if (MODE ='O') then
               BEGIN
                   INSERT INTO IC_STOCKCARD (ACCT_CD,DOC_NO,DOC_DATE,REF_NO,REF_DATE,QTY,UNIT_COST,TOTAL_COST,LOT_CD,GROUP_ID,UOM_CD,STOCK_VALUE,FMONTH,FYEAR,MODE,STOCK_CD,UPDATE_USER,UPDATE_DATE,MODULE,ORDER_LINE,descs,TRX_TYPE,MELT_NO,RESERVED_QTY,ONHAND_QTY,PURCHASE_DATE)
                   VALUES (:ACCT_CD,:DOC_NO,:DOC_DATE,:grn_no,:grn_date,-:QTY,:UNIT_COST,:TOTAL_COST,:LOT_CD,:GROUP_ID,:UOM_CD,:STOCK_VALUE,:FMONTH,:FYEAR,:MODE,:STOCK_CD,:UPDATE_USER,:UPDATE_DATE,:MODULE,:ORDER_LINE,:descs,:TRX_TYPE,:MELT_NO,:RESERVED_QTY,:ONHAND_QTY,:PURCHASE_DATE);
                   WHEN SQLCODE - 530 DO
                   BEGIN
                     EXCEPTION EX_INS_STOCKCARD;
                   END
               END
               /**To update actual Chageed Weight**/
               BEGIN
                   UPDATE pl_rawmat_sheet_dt
                   SET ACTUAL_CHARGED_WEIGHT =:QTY
                   WHERE STOCK_CODE = :STOCK_CD
                   AND GROUP_ID =:GROUP_ID
                   AND LOT_NO =:LOT_CD
                   AND UOM =:UOM_CD
                   AND MELT_NO =:MELT_NO;
               END
               BEGIN
                  UPDATE PL_REQ_HD
                  SET STATUS ='X'
                  WHERE DOC_NO =:DOC_NO
                  AND DOC_DATE =:DOC_DATE
                  AND TRX_TYPE =:TRX_TYPE;
               END
    
             END
           END /**MODULE PL*/
      END

   end
   else
   begin
     exception e_no_row;
     exit;
   end

   SUSPEND;
END