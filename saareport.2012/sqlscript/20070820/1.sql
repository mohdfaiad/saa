ALTER PROCEDURE X_GET_MELT_SUMMARY (
    FROM_MELT VARCHAR(10),
    TO_MELT VARCHAR(10))
AS
DECLARE VARIABLE DOC_NO VARCHAR(15);
DECLARE VARIABLE PLAN_DOC VARCHAR(15);
DECLARE VARIABLE ITEM_CODE VARCHAR(15);
DECLARE VARIABLE STOCK_CODE VARCHAR(15);
DECLARE VARIABLE STOCK_DESCS VARCHAR(60);
DECLARE VARIABLE UOM_CD VARCHAR(4);
DECLARE VARIABLE GROUP_ID VARCHAR(10);
DECLARE VARIABLE GROUP_DESCS VARCHAR(60);
DECLARE VARIABLE LOT_CD VARCHAR(15);
DECLARE VARIABLE PURCHASE_DATE TIMESTAMP;
DECLARE VARIABLE UNIT_COST FLOAT;
DECLARE VARIABLE CHARGED_WEIGHT FLOAT;
DECLARE VARIABLE ACTUAL_WEIGHT FLOAT;
DECLARE VARIABLE REMELT_WEIGHT FLOAT;
DECLARE VARIABLE SUM_CHARGED_COST FLOAT;
DECLARE VARIABLE SUM_CHARGED_WEIGHT FLOAT;
DECLARE VARIABLE SCHARGED_WEIGHT FLOAT;
DECLARE VARIABLE SRECOVERY_WEIGHT FLOAT;
DECLARE VARIABLE AMELT_NO VARCHAR(10);
DECLARE VARIABLE TOTAL_COST FLOAT;
DECLARE VARIABLE ACTUAL_CHARGED_WEIGHT FLOAT;
DECLARE VARIABLE ACTUAL_RECOVERY_WEIGHT FLOAT;
DECLARE VARIABLE ACTUAL_TOTAL_COST FLOAT;
DECLARE VARIABLE ACTUAL_WEIGHT_OUT FLOAT;
DECLARE VARIABLE ACTUAL_REMELT_WEIGHT FLOAT;
DECLARE VARIABLE MELT_TEXT VARCHAR(60);
DECLARE VARIABLE DROSS_WEIGHT FLOAT;
DECLARE VARIABLE ACTUAL_DROSS_WEIGHT FLOAT;
DECLARE VARIABLE ADD_WEIGHT1 FLOAT;
DECLARE VARIABLE ADD_WEIGHT2 FLOAT;
DECLARE VARIABLE MIN_LINE SMALLINT;
DECLARE VARIABLE MAX_LINE SMALLINT;
DECLARE VARIABLE ADDITIONAL_WEIGHT_OUT1 FLOAT;
DECLARE VARIABLE ADDITIONAL_WEIGHT_OUT2 FLOAT;
DECLARE VARIABLE RECOVERY_PERC FLOAT;
DECLARE VARIABLE RECOVERY_WEIGHT FLOAT;
DECLARE VARIABLE CAL_YIELD FLOAT;
DECLARE VARIABLE CAL_COST FLOAT;
DECLARE VARIABLE ACTUAL_YIELD FLOAT;
DECLARE VARIABLE ACTUAL_COST FLOAT;
DECLARE VARIABLE ACTUAL_YIELD1 FLOAT;
DECLARE VARIABLE ACTUAL_COST1 FLOAT;
DECLARE VARIABLE ELE_PERC1 FLOAT;
DECLARE VARIABLE ELE_PERC2 FLOAT;
DECLARE VARIABLE ELE_PERC3 FLOAT;
DECLARE VARIABLE ELE_PERC4 FLOAT;
DECLARE VARIABLE ELE_PERC5 FLOAT;
DECLARE VARIABLE ELE_PERC6 FLOAT;
DECLARE VARIABLE ELE_PERC7 FLOAT;
DECLARE VARIABLE ELE_PERC8 FLOAT;
DECLARE VARIABLE ELE_PERC9 FLOAT;
DECLARE VARIABLE ELE_PERC10 FLOAT;
DECLARE VARIABLE ELE_PERC11 FLOAT;
DECLARE VARIABLE ELE_PERC12 FLOAT;
DECLARE VARIABLE ELE_PERC13 FLOAT;
DECLARE VARIABLE RAWMAT_SHEET_DOC VARCHAR(15);
DECLARE VARIABLE SUPPLIER_NAME VARCHAR(60);
DECLARE VARIABLE SUPP_CODE VARCHAR(10);
DECLARE VARIABLE PL_SHEET_ROW SMALLINT;
begin
   doc_no= cast(current_date as varchar(15));
   melt_text ='';

   begin
       delete from melt_summary_meterial;
       delete from melt_summary_meterial_lot;
       delete from melt_summary_final_blend;
       delete from melt_summary_finished_goods  ;
       delete from brd_report_params;
       delete from melt_element_label;

   end
   /*GET MELT NO LIST*/
   select MAX(LINE_NO) from pl_pro_plan_dt
   where MELT_NO = UPPER(:FROM_MELT)
   INTO :MIN_LINE;

   select MAX(LINE_NO) from pl_pro_plan_dt
   where MELT_NO = UPPER(:TO_MELT)
   INTO :MAX_LINE;

   IF( (MAX_LINE >0) AND (MIN_LINE >0) AND (MAX_LINE >= MIN_LINE)) THEN
   BEGIN
      --SELECT PLAN DOCUMENT
       SELECT MAX(PLAN_DOC)
       FROM  pl_pro_plan_dt
       WHERE  pl_pro_plan_dt.melt_no = UPPER(:FROM_MELT)
       INTO :PLAN_DOC  ;

       begin
         --UPDATE LASTEST ELEMENT LABEL
       EXECUTE PROCEDURE  X_UPDATE_ELEMENT_LABEL;
       INSERT INTO melt_element_label
       select :doc_no,
       ELABEL1,
             ELABEL2,
             ELABEL3,
             ELABEL4,
             ELABEL5,
             ELABEL6,
             ELABEL7,
             ELABEL8,
             ELABEL9,
             ELABEL10,
             ELABEL11,
             ELABEL12,
             ELABEL13 from ic_element_label;
       end

   for SELECT MELT_NO from pl_pro_plan_dt
   where LINE_NO >= :MIN_LINE
   AND LINE_NO <= :MAX_LINE
   AND pl_pro_plan_dt.PLAN_DOC = :PLAN_DOC
   order by pl_pro_plan_dt.LINE_NO
   into :amelt_no
   do
   begin

           select max(item_code)
           from pl_pro_plan_dt
           where melt_no=:amelt_no
           into :item_code  ;
           --DROSS TYPE 1
           SELECT SUM(pl_dross_dt.weight)
           from pl_dross_dt
           where pl_dross_dt.melt_no =:amelt_no
           AND pl_dross_dt.dross_type =1
           into :DROSS_WEIGHT;

            --OTHER TYPE 2 ** not use for

           SELECT SUM(pl_dross_dt.weight)
           from pl_dross_dt
           where pl_dross_dt.melt_no =:amelt_no
           AND pl_dross_dt.dross_type =2
           into :ADD_WEIGHT1;

           --ALUMINIUM TYPE 3 ** ADDED WEIGHT
           SELECT SUM(pl_dross_dt.weight)
           from pl_dross_dt
           where pl_dross_dt.melt_no =:amelt_no
           AND pl_dross_dt.dross_type =3
           into :ADD_WEIGHT2;
           if (DROSS_WEIGHT IS NULL) then  DROSS_WEIGHT =0;
           if (ADD_WEIGHT1 IS NULL) then  ADD_WEIGHT1 =0;
           if (ADD_WEIGHT2 IS NULL) then  ADD_WEIGHT2 =0;
           --note that additional weight 2 is aluminium

           begin
           /*get material information*/
               FOR
               SELECT
               DT.item_code,
               max(dt.item_descs),
               dt.group_id,
               dt.uom,
               dt.lot_no,
               dt.purchase_date ,
               AVG(dt.unit_cost),
               sum(dt.qty) ,
               MAX(ST.recovery) ,
               SUM(ST.recovery*dt.qty)/100 AS RECOVERY_WEIGHT
               FROM PL_REQ_HD HD , PL_REQ_DT DT  , IC_MAT_STK_HD ST
               WHERE HD.DOC_NO = DT.DOC_NO
               AND HD.DOC_DATE = HD.DOC_DATE
               AND HD.TRX_TYPE = DT.TRX_TYPE
               AND HD.status ='X'/*Only posted status accept*/
               AND HD.melt_no =:amelt_no
               AND DT.item_code = ST.stock_cd
               AND DT.group_id = ST.group_id
               AND DT.uom = ST.uom_cd
               --only valued filter
               and dt.qty >0
               GROUP by
               DT.item_code,
               dt.group_id,
               dt.uom,
               dt.lot_no,
               dt.purchase_date
               --2007/08/18 eliminated null value insert
               HAVING  sum(dt.qty) > 0
               into :stock_code ,:stock_descs,:group_id,:uom_cd,:lot_cd,:purchase_date,:unit_cost,:charged_weight,
               :RECOVERY_PERC ,:RECOVERY_WEIGHT

               do
               begin
               BEGIN
                 SELECT MAX(DESCS)
                 FROM IC_GROUP WHERE GROUP_ID=:group_id INTO:group_descs;
               END
               BEGIN
                       --GET LAST PURCHASE PRICE
                       --20080820 Get from ic_mat_stk_dt_link instead
                       SELECT MAX(ic_mat_stk_dt_link.unit_cost),MAX(ic_mat_stk_dt_link.acct_code)
                       FROM ic_mat_stk_dt_link
                       WHERE stock_cd = :STOCK_CODE
                       AND GROUP_ID = :GROUP_ID
                       AND UOM_cd = :UOM_CD
                       AND lot_cd = :LOT_CD
                       AND purchase_date = :PURCHASE_DATE
                       INTO :UNIT_COST,:SUPP_CODE;
                       IF (UNIT_COST IS NULL) THEN UNIT_COST = 0;

                       --SET SUPPLIER NAME
                       SELECT MAX(NAME)
                       FROM po_supplier
                       WHERE SUPPLIER_CD = :SUPP_CODE
                       INTO :SUPPLIER_NAME;

                       select count(*)
                        FROM pl_rawmat_sheet_dt
                         WHERE MELT_NO =    :aMELT_no
                         AND STOCK_CODE = :STOCK_CODE
                         AND pl_rawmat_sheet_dt.group_id = :GROUP_ID
                         AND pl_rawmat_sheet_dt.uom = :UOM_CD
                         AND pl_rawmat_sheet_dt.lot_no = :LOT_CD
                         AND pl_rawmat_sheet_dt.purchase_date = :PURCHASE_DATE
                       into :PL_SHEET_ROW ;
                       if (PL_SHEET_ROW is null) then PL_SHEET_ROW = 0;
                       if (PL_SHEET_ROW >0) then
                       begin
                       /*SELECT ELEMENT COMPONENT FROM PL_RAWMAT_PLAN_DT*/
                        SELECT MAX(PLAN_DOC),
                         MAX(ELE_PERC1),
                         MAX(ELE_PERC2),
                         MAX(ELE_PERC3),
                         MAX(ELE_PERC4),
                         MAX(ELE_PERC5),
                         MAX(ELE_PERC6),
                         MAX(ELE_PERC7),
                         MAX(ELE_PERC8),
                         MAX(ELE_PERC9),
                         MAX(ELE_PERC10),
                         MAX(ELE_PERC11),
                         MAX(ELE_PERC12),
                         MAX(ELE_PERC13)
                         FROM pl_rawmat_sheet_dt
                         WHERE MELT_NO =    :aMELT_no
                         AND STOCK_CODE = :STOCK_CODE
                         AND pl_rawmat_sheet_dt.group_id = :GROUP_ID
                         AND pl_rawmat_sheet_dt.uom = :UOM_CD
                         AND pl_rawmat_sheet_dt.lot_no = :LOT_CD
                         AND pl_rawmat_sheet_dt.purchase_date = :PURCHASE_DATE
                         INTO :RAWMAT_SHEET_DOC, :ELE_PERC1,
                        :ELE_PERC2,    :ELE_PERC3,
                        :ELE_PERC4,    :ELE_PERC5,
                        :ELE_PERC6,    :ELE_PERC7,
                        :ELE_PERC8,    :ELE_PERC9,
                        :ELE_PERC10,   :ELE_PERC11,
                        :ELE_PERC12,   :ELE_PERC13 ;
                       end 
                       else
                       begin
                        select
                         MAX(ELE1_PERC),
                         MAX(ELE2_PERC),
                         MAX(ELE3_PERC),
                         MAX(ELE4_PERC),
                         MAX(ELE5_PERC),
                         MAX(ELE6_PERC),
                         MAX(ELE7_PERC),
                         MAX(ELE8_PERC),
                         MAX(ELE9_PERC),
                         MAX(ELE10_PERC),
                         MAX(ELE11_PERC),
                         MAX(ELE12_PERC),
                         MAX(ELE13_PERC)
                         from ic_mat_default_element
                         where stock_cd = :STOCK_CODE
                         into :ELE_PERC1,
                        :ELE_PERC2,    :ELE_PERC3,
                        :ELE_PERC4,    :ELE_PERC5,
                        :ELE_PERC6,    :ELE_PERC7,
                        :ELE_PERC8,    :ELE_PERC9,
                        :ELE_PERC10,   :ELE_PERC11,
                        :ELE_PERC12,   :ELE_PERC13 ;

                       end

                       INSERT INTO MELT_SUMMARY_METERIAL (
                        DOC_NO,
                        MELT_NO,
                        TO_MELT,
                        ITEM_CODE,
                        STOCK_CODE,
                        STOCK_DESCS,
                        UOM_CD,
                        GROUP_ID,
                        GROUP_DESCS,
                        LOT_CD,
                        PURCHASE_DATE,
                        SUPP_NAME,
                        UNIT_COST,
                        CHARGED_WEIGHT,
                        RECOVERY_PERC,
                        RECOVERY_WEIGHT,
                        ELE_PERC1,
                        ELE_PERC2,
                        ELE_PERC3,
                        ELE_PERC4,
                        ELE_PERC5,
                        ELE_PERC6,
                        ELE_PERC7,
                        ELE_PERC8,
                        ELE_PERC9,
                        ELE_PERC10,
                        ELE_PERC11,
                        ELE_PERC12,
                        ELE_PERC13)
                      VALUES (
                        :DOC_NO,
                        :aMELT_no,
                        :TO_MELT,
                        :ITEM_CODE,
                        :STOCK_CODE,
                        :STOCK_DESCS,
                        :UOM_CD,
                        :GROUP_ID,
                        :GROUP_DESCS,
                        :LOT_CD,
                        :PURCHASE_DATE,
                        :SUPPLIER_NAME,
                        :UNIT_COST,
                        :CHARGED_WEIGHT,
                        :RECOVERY_PERC,
                        :RECOVERY_WEIGHT,:ELE_PERC1,
                        :ELE_PERC2,    :ELE_PERC3,
                        :ELE_PERC4,    :ELE_PERC5,
                        :ELE_PERC6,    :ELE_PERC7,
                        :ELE_PERC8,    :ELE_PERC9,
                        :ELE_PERC10,   :ELE_PERC11,
                        :ELE_PERC12,   :ELE_PERC13);
                 END/*INSERT BLOCK*/
               end /*for select*/
            end/*END MATERIAL INFORMATION INSERT*/
            BEGIN
                  SELECT
                  max(D.item_code),
                  sum(d.qty)
                  FROM  SO_LEDGER D
                  where  d.melt_no =:amelt_no
                  and d.tax_cd =''
                  INto :ITEM_CODE, :actual_weight;
                  if (actual_weight is null) then actual_weight =0;
                     /*get remelt infromation*/
                     begin
                       select sum(pl_fn_receive_dt.weight_qty)
                       from pl_fn_receive_dt
                       where pl_fn_receive_dt.melt_no=:AMELT_NO
                       and pl_fn_receive_dt.remelt_item_flag='Y'
                       into :remelt_weight;
                       if (REMELT_WEIGHT is null) then remelt_weight =0;
                       --actual_weight = actual_weight +
                     end
                     begin
                           INSERT INTO MELT_SUMMARY_FINISHED_GOODS (
                            DOC_NO,
                            MELT_NO ,
                            TO_MELT ,
                            ITEM_CODE,
                            ACTUAL_WEIGHT,
                            REMELT_WEIGHT,
                            CAL_COST,
                            CAL_YIELD,
                            ACTUAL_COST,
                            ACTUAL_YIELD,
                            scharged_weight,
                            srecovery_weight,
                            total_cost,
                            DROSS_WEIGHT,
                            ADDITIONAL_WEIGHT1,
                            ADDITIONAL_WEIGHT2)
                          VALUES (
                            :DOC_NO,
                            :AMELT_NO,
                            :TO_MELT,
                            :ITEM_CODE,
                            :ACTUAL_WEIGHT,
                            :REMELT_WEIGHT,
                           0 ,
                              0,
                          0,
                          0,
                          0,
                          0,
                             :total_cost,
                            :DROSS_WEIGHT,
                            :ADD_WEIGHT1,
                            :ADD_WEIGHT2 /*aluminium*/);
                     end

            END/*Finished good insert*/
    end

   /* MELT_SUMMARY_METERIAL_LOT LEVEL*/
        BEGIN
             INSERT INTO MELT_SUMMARY_METERIAL_LOT (
                DOC_NO, ITEM_CODE,
                STOCK_CODE,               STOCK_DESCS,
                UOM_CD,                    GROUP_ID,
                GROUP_DESCS,                LOT_CD,
                PURCHASE_DATE, SUPP_NAME,       UNIT_COST,
                CHARGED_WEIGHT,RECOVERY_PERC,
                RECOVERY_WEIGHT,  ELE_PERC1,
                     ELE_PERC2,
                     ELE_PERC3,
                     ELE_PERC4,
                     ELE_PERC5,
                     ELE_PERC6,
                     ELE_PERC7,
                     ELE_PERC8,
                     ELE_PERC9,
                     ELE_PERC10,
                     ELE_PERC11,
                     ELE_PERC12,
                     ELE_PERC13)
                SELECT DOC_NO, MAX(ITEM_CODE),
                STOCK_CODE,               max(STOCK_DESCS),
                UOM_CD,                    GROUP_ID,
                GROUP_DESCS,                LOT_CD,
                PURCHASE_DATE, MAX(SUPP_NAME),       MAX(UNIT_COST),
                SUM(CHARGED_WEIGHT) , MAX(RECOVERY_PERC),
                SUM(RECOVERY_WEIGHT),  MAX(ELE_PERC1),
             MAX(ELE_PERC2),
             MAX(ELE_PERC3),
             MAX(ELE_PERC4),
             MAX(ELE_PERC5),
             MAX(ELE_PERC6),
             MAX(ELE_PERC7),
             MAX(ELE_PERC8),
             MAX(ELE_PERC9),
             MAX(ELE_PERC10),
             MAX(ELE_PERC11),
             MAX(ELE_PERC12),
             MAX(ELE_PERC13)
                FROM MELT_SUMMARY_METERIAL
                GROUP BY  DOC_NO,       STOCK_CODE,
                UOM_CD,                    GROUP_ID,
                GROUP_DESCS,                LOT_CD,
                PURCHASE_DATE ;


                /*INSERT FINAL BLEND*/
                insert into melt_summary_final_blend
                select :doc_no,
                     MAX(FLB1),
                     MAX(FLB2),
                     MAX(FLB3),
                     MAX(FLB4),
                     MAX(FLB5),
                     MAX(FLB6),
                     MAX(FLB7),
                     MAX(FLB8),
                     MAX(FLB9),
                     MAX(FLB10),
                     MAX(FLB11),
                     MAX(FLB12),
                     MAX(FLB13)
               from pl_rawmat_sheet_HD
               WHERE PLAN_DOC =  :RAWMAT_SHEET_DOC ;

                /*INSERT FINAL BLEND*/


        END
        /* MELT_SUMMARY_METERIAL_LOT LEVEL*/
 
    begin
        select sum(charged_weight), sum(recovery_weight) ,SUM(UNIT_COST*charged_weight)
        from  melt_summary_meterial
        into :ACTUAL_CHARGED_WEIGHT,:ACTUAL_RECOVERY_WEIGHT,:ACTUAL_TOTAL_COST  ;
        SELECT
        SUM(melt_summary_finished_goods.dross_weight),
        SUM(MELT_SUMMARY_FINISHED_GOODS.additional_weight1),
        SUM(MELT_SUMMARY_FINISHED_GOODS.additional_weight2)
        from  melt_summary_finished_goods
        into :ACTUAL_DROSS_WEIGHT,:ADDITIONAL_WEIGHT_OUT1 ,:ADDITIONAL_WEIGHT_OUT2 /*aluminium*/ ;


        SELECT SUM(ACTUAL_WEIGHT+REMELT_WEIGHT)
        FROM melt_summary_finished_goods
        into :actual_weight_out;


        CAL_YIELD = :ACTUAL_RECOVERY_WEIGHT/:ACTUAL_CHARGED_WEIGHT*100;
        CAL_COST  = :ACTUAL_TOTAL_COST/:ACTUAL_RECOVERY_WEIGHT;

        ACTUAL_YIELD = :actual_weight_ouT/:ACTUAL_CHARGED_WEIGHT*100;
        ACTUAL_COST = :ACTUAL_TOTAL_COST/ :actual_weight_out;
        /*Aluminu*/
        ACTUAL_YIELD1 =((:actual_weight_out - :ADDITIONAL_WEIGHT_OUT2)/ :ACTUAL_CHARGED_WEIGHT*100);
        ACTUAL_COST1 =:ACTUAL_TOTAL_COST/(:actual_weight_out - :ADDITIONAL_WEIGHT_OUT2);


        select min(melt_no)||' - '||max(melt_no)
        from  melt_summary_finished_goods
        into :melt_text  ;

        insert into brd_report_params(keyvar15,floatvalue1,floatvalue2,floatvalue3,
        floatvalue4,floatvalue5,floatvalue6,
        floatvalue7,FLOATVALUE8,floatvalue9,floatvalue10,floatvalue11,STRVALUE1)
        values(:doc_no,:CAL_YIELD,:CAL_COST,:ACTUAL_YIELD,
        :ACTUAL_COST ,:ACTUAL_YIELD1,:ACTUAL_COST1,
        :ACTUAL_RECOVERY_WEIGHT,:ACTUAL_CHARGED_WEIGHT,:ACTUAL_DROSS_WEIGHT,:ADDITIONAL_WEIGHT_OUT1,:actual_total_cost,:MELT_TEXT);
        --MAPPED VALUE
        -- cal section
        --1.Cal Yield
        --2.TOTAL RECOVER WEIGHT FROM  MELT_SHEET
        --3 total cost from melt_sheet
        -- actual section
        --4.actual charged weight    (material issue)
        --5 actual charged cost
        --6 finished good weight out + remelt
        --7 dross weight
        --8 additional weight out
    end


    -- Obsolete
   -- delete from pl_melt_no_addigned;
   end /*MIN AND MAX LINE IS VALID*/
   else
   begin
     exception E_PL_MELT_SUMMARY;
   end
  SUSPEND;

end