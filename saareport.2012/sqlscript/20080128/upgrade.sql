/* Server Version: WI-V6.3.1.4481 Firebird 1.5.  ODS Version: 10.1. */

SET NAMES NONE;

SET SQL DIALECT 3;

CONNECT '192.168.1.3:e:\brd\database\saa.gdb' USER 'SYSDBA' PASSWORD 'masterkey';

/* Create Table... */
CREATE TABLE AR_RECEIPT_DT(BATCH_NO INTEGER NOT NULL,
DOC_NO VARCHAR(15) CHARACTER SET NONE NOT NULL,
DOC_DATE DATE NOT NULL,
DEBTOR_ACCT VARCHAR(10) CHARACTER SET NONE NOT NULL,
INV_NO VARCHAR(15) CHARACTER SET NONE NOT NULL,
INV_DATE DATE NOT NULL,
LINE_NO SMALLINT NOT NULL,
LINE_REMARK VARCHAR(60) CHARACTER SET NONE,
BASE_AMOUNT FLOAT NOT NULL,
TAX_AMOUNT FLOAT NOT NULL,
TRX_AMOUNT FLOAT NOT NULL,
STATUS VARCHAR(1) CHARACTER SET NONE);
COMMIT WORK;
CREATE TABLE AR_RECEIPT_HD(BATCH_NO INTEGER NOT NULL,
DOC_NO VARCHAR(15) CHARACTER SET NONE NOT NULL,
DOC_DATE DATE NOT NULL,
DESCS VARCHAR(60) CHARACTER SET NONE,
BANK_CODE VARCHAR(4) CHARACTER SET NONE NOT NULL,
DEBTOR_ACCT VARCHAR(10) CHARACTER SET NONE NOT NULL,
CHEQUE_NO VARCHAR(25) CHARACTER SET NONE NOT NULL,
REMARKS VARCHAR(255) CHARACTER SET NONE,
STATUS VARCHAR(1) CHARACTER SET NONE,
PRINT_STATUS VARCHAR(1) CHARACTER SET NONE,
UPDATE_USER VARCHAR(10) CHARACTER SET NONE,
UPDATE_DATE DATE,
CURRENCY_CODE VARCHAR(4) CHARACTER SET NONE NOT NULL,
CURRENCY_RATE FLOAT);
COMMIT WORK;

/* Create Procedure... */
SET TERM ^ ;
CREATE PROCEDURE X_IS_PREV_MELT_POSTED(APLAN_DOC VARCHAR(15) CHARACTER SET NONE,
APLAN_DATE DATE,
AMELT_NO VARCHAR(10) CHARACTER SET NONE)
 RETURNS(RESULT VARCHAR(10) CHARACTER SET NONE)
 AS
 BEGIN EXIT; END
^

SET TERM ; ^
COMMIT WORK;

Alter Table AR_INVOICE_HD ADD IBCTEMP VARCHAR(60) CHARACTER SET NONE;
COMMIT WORK;
Update Rdb$Relation_Fields Set Rdb$Field_Source=
(Select R.Rdb$Field_Source from Rdb$Relation_Fields R
where R.Rdb$Relation_Name = 'AR_INVOICE_HD' and R.Rdb$Field_Name='IBCTEMP')
WHERE RDB$FIELD_NAME='DESCS' AND RDB$RELATION_NAME='AR_INVOICE_HD';
COMMIT WORK;
Alter Table AR_INVOICE_HD DROP IBCTEMP;
COMMIT WORK;
/* Alter Table (Field position)... */
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=0
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='DEBTOR_ACCT';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=1
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='DOC_NO';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=2
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='DOC_DATE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=3
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='TRX_TYPE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=4
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='TAX_INV_NO';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=5
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='TAX_INV_DATE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=6
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='DEBT_NAME';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=7
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='REMARK';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=8
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='STATUS';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=9
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='RECEIPT_STATUS';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=10
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='DUE_DATE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=11
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='CREDIT_TERM';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=12
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='NO_OF_PRINT';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=13
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='UPDATE_USER';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=14
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='UPDATE_DATE';
COMMIT WORK;
UPDATE RDB$RELATION_FIELDS SET RDB$FIELD_POSITION=15
 WHERE RDB$RELATION_NAME='AR_INVOICE_HD' AND RDB$FIELD_NAME='DESCS';
COMMIT WORK;

/* Create Views... */
/* Create view: V_RAWMATERIAL_PLAN (ViwData.CreateDependDef) */
CREATE VIEW V_RAWMATERIAL_PLAN(
MELT_NO,
PLAN_DOC,
PLAN_DATE,
ITEM_CODE)
 AS
select distinct H.melt_no ,H.plan_doc ,H.plan_date,H.item_code FROM pl_rawmat_sheet_hd    H
where status ='N';
COMMIT WORK;

/* Create Exception... */
CREATE EXCEPTION EX_GRN_DATE_CHECK 'Stock issue date could not be early than received date';
CREATE EXCEPTION EX_MELT_NO_POST_ERROR 'You must post previouse melt no before post this current melt no';

COMMIT WORK;

/* Create Primary Key... */
ALTER TABLE AR_RECEIPT_DT ADD CONSTRAINT PK_AR_RECEIPT_DT PRIMARY KEY (BATCH_NO,LINE_NO);
COMMIT WORK;
ALTER TABLE AR_RECEIPT_HD ADD CONSTRAINT PK_AR_RECEIPT_HD PRIMARY KEY (BATCH_NO);
COMMIT WORK;
/* Alter Procedure... */
/* Alter (X_IS_PREV_MELT_POSTED) */
SET TERM ^ ;
ALTER PROCEDURE X_IS_PREV_MELT_POSTED(APLAN_DOC VARCHAR(15) CHARACTER SET NONE,
APLAN_DATE DATE,
AMELT_NO VARCHAR(10) CHARACTER SET NONE)
 RETURNS(RESULT VARCHAR(10) CHARACTER SET NONE)
 AS
declare variable current_melt_line smallint;
declare variable prev_melt_no varchar(10);
declare variable rows smallint;
begin
  /* Procedure Text */
    RESULT ='NO';
    prev_melt_no ='';
    ROWS = 0;
   SELECT MAX(LINE_NO)
   FROM PL_PRO_PLAN_DT
   WHERE PLAN_DOC =:APLAN_DOC
   AND PLAN_DATE =:APLAN_DATE
   AND MELT_NO = :AMELT_NO
   INTO :current_melt_line ;
  -- LINE_NO = current_melt_line;
   if (current_melt_line <=0) then
   BEGIN
     result = 'NO'  ;
   END
   if (current_melt_line >0) then
   BEGIN
     select max(melt_no)
     FROM PL_PRO_PLAN_DT
     WHERE PLAN_DOC =:APLAN_DOC
     AND PLAN_DATE =:APLAN_DATE
     and line_no < :current_melt_line
     into :prev_melt_no;
     if (prev_melt_no IS NOT NULL) then
     begin
       select count(*) from
       ic_stockcard where melt_no = :prev_melt_no
       into :rows;
      if ( rows > 0) then
        begin
            result = 'YES';
        end
     end
   END

   suspend;

end
^

SET TERM ; ^
COMMIT WORK;
/* Alter (X_POST_MATERIAL) */
SET TERM ^ ;
ALTER PROCEDURE X_POST_MATERIAL(ACCT_CD VARCHAR(10) CHARACTER SET NONE,
DOC_NO VARCHAR(15) CHARACTER SET NONE,
DOC_DATE DATE,
UPDATE_USER VARCHAR(10) CHARACTER SET NONE,
MODULE VARCHAR(2) CHARACTER SET NONE,
MODE VARCHAR(1) CHARACTER SET NONE)
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
/*plan document , plan date*/
declare variable plan_doc varchar(15);
declare variable plan_date timestamp;

declare variable posted_status varchar(3);
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
                    D.ACCT_CD  ,
                    a.plan_doc, 
                    a.plan_date
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
                  :trx_type,:melt_no,:grn_no,:grn_date,:purchase_date,:ACCT_CD ,:plan_doc,:plan_date
             DO
             BEGIN
    
           /***/
              /* ACCT_CD ='PLMODULE';*/
              /*22/01/2008
              1.Melt validate if (not previouse melt no posted could not post a current) then raise exception
              2.if issue date is early that ref_date of goods received then raise exception*/
               select  result from X_IS_PREV_MELT_POSTED (:plan_doc,:plan_date, :MELT_NO) into :posted_status;
               if (posted_status = 'YES') then
               Begin
               /*case 1. rollback*/
                  exception ex_melt_no_post_error;
                  exit;
               end
               /*case 2 rollback*/
               if (doc_date > ref_date) then
               begin
                   exception ex_grn_date_check;
                   exit;
               end
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
^

SET TERM ; ^
COMMIT WORK;
/* Alter (X_POST_STOCK_ADJUST) */
SET TERM ^ ;
ALTER PROCEDURE X_POST_STOCK_ADJUST(DOC_NO VARCHAR(15) CHARACTER SET NONE,
DOC_DATE DATE,
MODULE VARCHAR(2) CHARACTER SET NONE,
ADJUST_FLAG VARCHAR(1) CHARACTER SET NONE,
MODE VARCHAR(1) CHARACTER SET NONE)
 AS
DECLARE VARIABLE STOCK_CD VARCHAR(15);
DECLARE VARIABLE GROUP_ID VARCHAR(10);
DECLARE VARIABLE UOM_CD VARCHAR(4);
DECLARE VARIABLE REF_NO VARCHAR(15);
DECLARE VARIABLE UNIT_COST FLOAT;
DECLARE VARIABLE LOT_CD VARCHAR(15);
DECLARE VARIABLE REF_DATE TIMESTAMP;
DECLARE VARIABLE QTY FLOAT;
DECLARE VARIABLE STOCK_VALUE FLOAT;
DECLARE VARIABLE TOTAL_COST FLOAT;
DECLARE VARIABLE ONHAND_QTY FLOAT;
DECLARE VARIABLE ACCT_CD VARCHAR(10);
DECLARE VARIABLE ORDER_LINE SMALLINT;
DECLARE VARIABLE DESCS VARCHAR(60);
DECLARE VARIABLE UPDATE_USER VARCHAR(10);
DECLARE VARIABLE UPDATE_DATE TIMESTAMP;
DECLARE VARIABLE FMONTH SMALLINT;
DECLARE VARIABLE FYEAR SMALLINT;
DECLARE VARIABLE TRX_TYPE VARCHAR(2);
DECLARE VARIABLE ROWCOUNT INTEGER;
DECLARE VARIABLE GRN_NO VARCHAR(15);
DECLARE VARIABLE GRN_DATE TIMESTAMP;
DECLARE VARIABLE TOTALVALUE FLOAT;
DECLARE VARIABLE ONHANDQTY FLOAT;
DECLARE VARIABLE PURCHASE_DATE TIMESTAMP;
DECLARE VARIABLE STOCK_DESCS VARCHAR(60);
BEGIN
    ORDER_LINE=0;
    select count(*)
    FROM ic_stock_adjust_hd A,
         ic_stock_adjust_DT B
    WHERE B.DOC_NO =A.DOC_NO
      AND A.DOC_DATE = B.DOC_DATE
      AND A.DOC_NO =:DOC_NO
      AND A.DOC_DATE =:DOC_DATE
    into :rowcount;
    if(rowcount >= 1) then
    begin
    
        BEGIN
          REF_NO =DOC_NO;
          REF_DATE =DOC_DATE;
        /*  ACCT_CD ='ICMODULE';*/
    
            FOR SELECT
                A.DESCS,
                A.UPDATE_USER,
                A.UPDATE_DATE,
                A.TRX_TYPE,
                B.ITEM_CODE,
                B.UOM_CD,
                B.GROUP_ID,
                B.LOT_NO,
                B.QTY,
                B.ONHAND_QTY,
                B.UNIT_COST,
                B.TOTAL_COST,
                B.QTY*B.UNIT_COST,
                B.REF_NO,
                B.REF_DATE    ,
                b.purchase_date,
                b.acct_cd
                FROM ic_stock_adjust_hd A,
                     ic_stock_adjust_DT B
                WHERE B.DOC_NO =A.DOC_NO
                AND A.DOC_DATE = B.DOC_DATE
                AND A.DOC_NO =:DOC_NO
                AND A.DOC_DATE =:DOC_DATE
                INTO
                :DESCS,
                :UPDATE_USER,
                :UPDATE_DATE,
                :TRX_TYPE,
                :STOCK_CD,
                :UOM_CD,
                :GROUP_ID,
                :LOT_CD,
                :QTY,
                :ONHAND_QTY,
                :UNIT_COST,
                :TOTAL_COST,
                :STOCK_VALUE,
                :grn_no,
                :grn_date,
                :purchase_date,
                :acct_cd
            DO
            BEGIN
                ORDER_LINE =ORDER_LINE+1;
                FYEAR = extract(YEAR FROM DOC_DATE);
                FMONTH = EXTRACT(MONTH FROM DOC_DATE);
                select max(en_descs)
                from ic_mat_stk_hd
                where stock_cd =:stock_cd
                into :stock_descs;
    
            if (ADJUST_FLAG ='I') then
            BEGIN
               TRX_TYPE ='II';
                BEGIN
                INSERT INTO IC_MAT_STK_DT (
                       STOCK_CD             ,
                       GROUP_ID             ,
                       UOM_CD               ,
                       LOT_CD               ,
                       UNIT_COST            ,
                       LAST_PURCHASE_PRICE  ,
                       PURCHASE_DATE        ,
                       ONHAND_QTY           ,
                       RESERVED_QTY         ,
                       STOCK_VALUE          ,
                       TOTAL_COST           ,
                       ACCT_CODE            ,
                       ORDER_LINE    )
                       values(:STOCK_CD,
                       :GROUP_ID,
                       :UOM_CD,
                       :LOT_CD,
                       :UNIT_COST,
                       :UNIT_COST,
                       :REF_DATE,
                       :QTY,
                       0,
                       :STOCK_VALUE,
                       :TOTAL_COST,
                       :ACCT_CD,
                       :ORDER_LINE);
                      WHEN SQLCODE - 530 DO
                      BEGIN
                          EXCEPTION EX_INS_STK_DT;
                      END
                  END
                  BEGIN
                       INSERT INTO IC_MAT_STK_DT_LINK (
                       STOCK_CD             ,
                       GROUP_ID             ,
                       UOM_CD               ,
                       LOT_CD               ,
                       UNIT_COST            ,
                       LAST_PURCHASE_PRICE  ,
                       PURCHASE_DATE        ,
                       ONHAND_QTY           ,
                       RESERVED_QTY         ,
                       STOCK_VALUE          ,
                       TOTAL_COST           ,
                       ACCT_CODE            ,
                       ORDER_LINE           ,
                       REF_NO               ,
                       REF_DATE ,
                       ACCT_CODE   )
                       values(:STOCK_CD,
                       :GROUP_ID,
                       :UOM_CD,
                       :LOT_CD,
                       :UNIT_COST,
                       :UNIT_COST,
                       :PURCHASE_DATE,
                       :QTY,
                       0,
                       :STOCK_VALUE,
                       :TOTAL_COST,
                       :ACCT_CD,
                       :ORDER_LINE,
                       :grn_no,
                       :grn_date,
                       :ACCT_CD);
                      WHEN SQLCODE - 530 DO
                      BEGIN
                          EXCEPTION EX_INS_STK_DT;
                      END

                  END
                  /**INSERT INTO PO_ORDER DT*/
                  BEGIN
                     INSERT INTO PO_ORDER_DT (ITEM_CODE,LINE_NO,ORDER_DATE,SUPP_CODE,UOM,ORDER_NO,ITEM_DESCS,UNIT_COST,TOTAL_AMT,REMARKS,DISCS_AMT,TAX_AMT,BASE_AMT,TAX_CD,DISCS_CD,QTY,TAX_RATE,STATUS,GRN_QTY,LOT_NO,GROUP_ID,MARKUP)
                     VALUES (:STOCK_CD,:ORDER_LINE,:DOC_DATE,'SUPP',:UOM_CD,:DOC_NO,:STOCK_DESCS,:UNIT_COST,:TOTAL_COST,'',0,0,:TOTAL_COST,'','',:QTY,0,'A',0,:DOC_NO,:GROUP_ID,0);
                  END


            END/**IF ADJUST FLAG ='I'**/
            if (ADJUST_FLAG ='C')  then
              BEGIN
                TRX_TYPE ='IC';
                  BEGIN
                       UPDATE ic_mat_stk_dt_link
                       SET  UNIT_COST = :UNIT_COST,
                            LAST_PURCHASE_PRICE = :UNIT_COST
                       WHERE LOT_CD = :LOT_CD
                       AND ACCT_CODE =:ACCT_CD
                       AND PURCHASE_DATE =:PURCHASE_DATE
                       AND GROUP_ID = :GROUP_ID
                       AND UOM_CD = :UOM_CD
                       AND STOCK_CD = :STOCK_CD
                       AND REF_NO = :grn_no
                       AND REF_DATE = :grn_date;
            
                       /**Calculate new stock value according to new unit cost adjusted*/
                       UPDATE ic_mat_stk_dt_link
                       SET  TOTAL_COST = :UNIT_COST*ONHAND_QTY,
                            STOCK_VALUE = :UNIT_COST*ONHAND_QTY
                       WHERE LOT_CD = :LOT_CD
                       AND ACCT_CODE =:ACCT_CD
                       AND PURCHASE_DATE =:PURCHASE_DATE

                       AND GROUP_ID = :GROUP_ID
                       AND UOM_CD = :UOM_CD
                       AND STOCK_CD = :STOCK_CD
                       AND REF_NO = :grn_no
                       AND REF_DATE = :grn_date;
                       /**ALSO UPDATE BACK TO PURCHASE ORDER**/
                       /**AND MELT SHEET*/
                       BEGIN
                        /*case when cost update not directly update to unit_Cost but update to update
                        price instead 20040318aon*/
                          UPDATE PO_ORDER_DT
                          SET update_price=:unit_cost
                          where  order_no =:lot_cd
                          AND order_date =:PURCHASE_DATE
                          and item_code =:stock_cd;


                          UPDATE PO_ORDER_DT
                          SET total_amt =:unit_cost*qty  ,
                              update_total_amt =:unit_cost*qty
                          where
                           order_no =:lot_cd
                          AND order_date =:PURCHASE_DATE
                          and item_code =:stock_cd
                          and group_id =:group_id
                          and uom = :uom_cd;

                          UPDATE PL_RAWMAT_SHEET_DT
                          SET UNIT_COST =:UNIT_COST
                          WHERE STOCK_CODE =:STOCK_CD
                          and group_id =:group_id
                          AND LOT_NO =:LOT_CD
                          AND UOM =:UOM_CD;

                          UPDATE PL_RAWMAT_SHEET_DT
                          SET  TOTAL_COST = UNIT_COST*CHARGED_WEIGHT
                          WHERE STOCK_CODE =:STOCK_CD
                          and group_id =:group_id
                          AND LOT_NO =:LOT_CD
                          AND UOM =:UOM_CD;
                         /*20080122 update all update cost back to stockcard*/
                          update ic_stockcard
                          set unit_cost = :UNIT_COST,
                              total_cost = unit_cost*qty,
                              stock_value = unit_cost*qty
                             WHERE LOT_CD = :LOT_CD
                           AND PURCHASE_DATE =:PURCHASE_DATE
                           AND GROUP_ID = :GROUP_ID
                           AND UOM_CD = :UOM_CD
                           AND STOCK_CD = :STOCK_CD
                           AND REF_NO = :grn_no
                           AND REF_DATE = :grn_date
                           and doc_date <=:doc_date;
                          /*20080122 update all update cost back to stockcard*/

                       END
                  END
                  BEGIN
                     BEGIN
                       SELECT SUM(UNIT_COST*ONHAND_QTY),SUM(ONHAND_QTY)
                       FROM IC_MAT_STK_DT_LINK
                       WHERE LOT_CD = :LOT_CD
                       AND ACCT_CODE =:ACCT_CD
                       AND PURCHASE_DATE =:PURCHASE_DATE

                       AND GROUP_ID = :GROUP_ID
                       AND UOM_CD = :UOM_CD
                       AND STOCK_CD = :STOCK_CD
                       INTO :totalvalue,:onhandqty;
                     END
                     if (onhandqty > 0) then
                     BEGIN
                       UPDATE ic_mat_stk_dt
                       SET  UNIT_COST =:totalvalue/:onhandqty
                       WHERE LOT_CD =:LOT_CD
                       AND ACCT_CODE =:ACCT_CD
                       AND PURCHASE_DATE =:PURCHASE_DATE

                       AND GROUP_ID =:GROUP_ID
                       AND UOM_CD = :UOM_CD
                       AND STOCK_CD =:STOCK_CD;
                     END
                      /**Calculate new stock value according to new unit cost adjusted*/
                     BEGIN
                       UPDATE ic_mat_stk_dt
                       SET  TOTAL_COST = :totalvalue,
                            STOCK_VALUE = :totalvalue
                       WHERE LOT_CD =:LOT_CD
                       AND ACCT_CODE =:ACCT_CD
                       AND PURCHASE_DATE =:PURCHASE_DATE

                       AND GROUP_ID =:GROUP_ID
                       AND UOM_CD = :UOM_CD
                       AND STOCK_CD =:STOCK_CD;
                     END
                 END

              END
            if (ADJUST_FLAG ='Q')  then
            BEGIN
              if (mode ='I') then
                BEGIN
                  TRX_TYPE='IQ';
                   BEGIN
                        UPDATE ic_mat_stk_dt
                        SET  ONHAND_QTY =ONHAND_QTY +:QTY
                        WHERE LOT_CD =:LOT_CD
                       AND ACCT_CODE =:ACCT_CD
                       AND PURCHASE_DATE =:PURCHASE_DATE

                        AND GROUP_ID =:GROUP_ID
                        AND UOM_CD = :UOM_CD
                        AND STOCK_CD =:STOCK_CD;
                   END
                   BEGIN
                        UPDATE ic_mat_stk_dt_link
                        SET  ONHAND_QTY =ONHAND_QTY +:QTY
                        WHERE LOT_CD = :LOT_CD
                       AND ACCT_CODE =:ACCT_CD
                       AND PURCHASE_DATE =:PURCHASE_DATE

                        AND GROUP_ID = :GROUP_ID
                        AND UOM_CD = :UOM_CD
                        AND STOCK_CD = :STOCK_CD
                        AND REF_NO = :grn_no
                        AND REF_DATE = :grn_date;
                   END
                END
              if (MODE ='O') then
                BEGIN
                   TRX_TYPE='OQ';
                    BEGIN
                      UPDATE ic_mat_stk_dt_link
                      SET  ONHAND_QTY =ONHAND_QTY -:QTY
                      WHERE LOT_CD =:LOT_CD
                       AND ACCT_CODE =:ACCT_CD
                       AND PURCHASE_DATE =:PURCHASE_DATE

                      AND GROUP_ID =:GROUP_ID
                      AND UOM_CD = :UOM_CD
                      AND STOCK_CD =:STOCK_CD
                      AND REF_NO = :grn_no
                      AND REF_DATE = :grn_date;

                       /**Calculate new stock value according to new unit cost adjusted*/
                      UPDATE ic_mat_stk_dt_link
                      SET  TOTAL_COST =:UNIT_COST*ONHAND_QTY,
                           STOCK_VALUE =:UNIT_COST*ONHAND_QTY
                      WHERE LOT_CD =:LOT_CD
                       AND ACCT_CODE =:ACCT_CD
                       AND PURCHASE_DATE =:PURCHASE_DATE

                      AND GROUP_ID =:GROUP_ID
                      AND UOM_CD = :UOM_CD
                      AND STOCK_CD =:STOCK_CD
                      AND REF_NO = :grn_no
                      AND REF_DATE = :grn_date;
                    END
                    BEGIN
                      BEGIN
                          SELECT SUM(UNIT_COST*ONHAND_QTY),SUM(ONHAND_QTY)
                          FROM ic_mat_stk_dt_link
                          WHERE LOT_CD =:LOT_CD
                       AND ACCT_CODE =:ACCT_CD
                       AND PURCHASE_DATE =:PURCHASE_DATE

                          AND GROUP_ID =:GROUP_ID
                          AND UOM_CD = :UOM_CD
                          AND STOCK_CD =:STOCK_CD
                          INTO :totalvalue,:onhandqty;
                      END
                      BEGIN
                          UPDATE ic_mat_stk_dt
                          SET  ONHAND_QTY =ONHAND_QTY -:QTY
                          WHERE LOT_CD =:LOT_CD
                       AND ACCT_CODE =:ACCT_CD
                       AND PURCHASE_DATE =:PURCHASE_DATE

                          AND GROUP_ID =:GROUP_ID
                          AND UOM_CD = :UOM_CD
                          AND STOCK_CD =:STOCK_CD;
                      END
                       /**Calculate new stock value according to new unit cost adjusted*/
                       if (onhandqty > 0) then
                      BEGIN
                          UPDATE ic_mat_stk_dt
                          SET  TOTAL_COST = :totalvalue,
                               STOCK_VALUE = :totalvalue,
                               UNIT_COST = :totalvalue/:onhandqty
                          WHERE LOT_CD =:LOT_CD
                       AND ACCT_CODE =:ACCT_CD
                       AND PURCHASE_DATE =:PURCHASE_DATE

                          AND GROUP_ID =:GROUP_ID
                          AND UOM_CD = :UOM_CD
                          AND STOCK_CD =:STOCK_CD;
                      END
                    END

                END
            END
            BEGIN
              /**BECAUSE ONHAND_QTY THAT UPDATE TO IC_STOCKCARD WAS WRONG*/
              /*BY RIGHT AFTER UPDATE MUST GET FROM IC_MAT_STK_DT_LINK AFTER UPDATE*/
              if (onhandqty > 0) then
              BEGIN
                 ONHAND_QTY =onhandqty;
                 STOCK_VALUE =totalvalue ;
                 TOTAL_COST =totalvalue;
              END
            END
            BEGIN
                      INSERT INTO IC_STOCKCARD
                      (ACCT_CD,DOC_NO,DOC_DATE,
                      REF_NO,REF_DATE,
                      QTY,UNIT_COST,TOTAL_COST,
                      LOT_CD,GROUP_ID,UOM_CD,
                      STOCK_VALUE,
                      FMONTH,FYEAR,
                      MODE,STOCK_CD,
                      UPDATE_USER,UPDATE_DATE,
                      MODULE,
                      ORDER_LINE,
                      DESCS,
                      ONHAND_QTY,
                      RESERVED_QTY,
                      TRX_TYPE ,PURCHASE_DATE
                      )
                      VALUES
                      (:ACCT_CD,:DOC_NO,:DOC_DATE,
                      :grn_no,:grn_date,
                      :QTY,:UNIT_COST,:TOTAL_COST,
                      :LOT_CD,:GROUP_ID,:UOM_CD,
                      :STOCK_VALUE,
                      :FMONTH,:FYEAR,
                      :MODE,:STOCK_CD,
                      :UPDATE_USER,:UPDATE_DATE,
                      :MODULE,
                      :ORDER_LINE,
                      :DESCS,:onhandqty,0,:TRX_TYPE,:PURCHASE_DATE);
                      WHEN SQLCODE - 530 DO
                      BEGIN
                          EXCEPTION EX_INS_STOCKCARD;
                      END
              END
    
    
              UPDATE IC_STOCK_ADJUST_HD
              SET STATUS ='X'
              WHERE DOC_NO =:DOC_NO
              AND DOC_DATE =:DOC_DATE;
    
     
    
         END /**FOR SELEC FROM IC_STOCK_ADJUST_HD*/
       END
    end
    else
    begin
      exception e_no_row;
      exit;
    end

  suspend;

end
^

SET TERM ; ^
COMMIT WORK;
/* Create Views... */

/* -- Table: AR_INVOICE_HD Field: DESCS [Type difference] >
 Master: VARCHAR(60)
 Target: VARCHAR60 */
/* -- Table: AR_INVOICE_HD Field: DEBT_NAME [Position difference] > Master: 6 Target: 7 */
/* -- Table: AR_INVOICE_HD Field: REMARK [Position difference] > Master: 7 Target: 10 */
/* -- Table: AR_INVOICE_HD Field: STATUS [Position difference] > Master: 8 Target: 11 */
/* -- Table: AR_INVOICE_HD Field: RECEIPT_STATUS [Position difference] > Master: 9 Target: 12 */
/* -- Table: AR_INVOICE_HD Field: DUE_DATE [Position difference] > Master: 10 Target: 13 */
/* -- Table: AR_INVOICE_HD Field: CREDIT_TERM [Position difference] > Master: 11 Target: 14 */
/* -- Table: AR_INVOICE_HD Field: NO_OF_PRINT [Position difference] > Master: 12 Target: 15 */
/* -- Table: AR_INVOICE_HD Field: UPDATE_USER [Position difference] > Master: 13 Target: 8 */
/* -- Table: AR_INVOICE_HD Field: UPDATE_DATE [Position difference] > Master: 14 Target: 9 */
/* -- Table: AR_INVOICE_HD Field: DESCS [Position difference] > Master: 15 Target: 6 */
-- Table: AR_INVOICE_HD Field: DESCS [Type difference] >

-- Table: AR_INVOICE_HD Field: DEBT_NAME [Position difference] > Master: 6 Target: 7
-- Table: AR_INVOICE_HD Field: REMARK [Position difference] > Master: 7 Target: 10
-- Table: AR_INVOICE_HD Field: STATUS [Position difference] > Master: 8 Target: 11
-- Table: AR_INVOICE_HD Field: RECEIPT_STATUS [Position difference] > Master: 9 Target: 12
-- Table: AR_INVOICE_HD Field: DUE_DATE [Position difference] > Master: 10 Target: 13
-- Table: AR_INVOICE_HD Field: CREDIT_TERM [Position difference] > Master: 11 Target: 14
-- Table: AR_INVOICE_HD Field: NO_OF_PRINT [Position difference] > Master: 12 Target: 15
-- Table: AR_INVOICE_HD Field: UPDATE_USER [Position difference] > Master: 13 Target: 8
-- Table: AR_INVOICE_HD Field: UPDATE_DATE [Position difference] > Master: 14 Target: 9
-- Table: AR_INVOICE_HD Field: DESCS [Position difference] > Master: 15 Target: 6

