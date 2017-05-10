--UPDATE #1

/*select * from ic_stockcard
where  lot_cd ='PC400/07'
and ref_no ='GRNFPC1149/07'
AND DOC_NO ='FA08M11'
*/

update  ic_stockcard
set doc_date = '7/11/2007'
where  lot_cd ='PC400/07'
and ref_no ='GRNFPC1149/07'
AND DOC_NO ='FA08M11';
--ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
--VLR031    FA08M11    6/11/2007    GRNFPC1149/07    7/11/2007    -462    68.5    1517960    PC400/07    30/10/2007    SG002    KG    1517960    11    2007    O    B001    BIT    8/11/2007    PL    13    22160    0    บันทึกการเบิกวัตถุดิบ    RT    08M11


--UPDATE #2

/*select * from ic_stockcard
where  lot_cd ='PC352/07'
and ref_no ='GRNFPC1102/07'
AND DOC_NO ='FA05M11'
*/

--ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
--VLR031    FA05M11    5/11/2007    GRNFPC1102/07    27/10/2007    -848    73.5    580209    PC352/07    27/9/2007    SG003    KG    580209    11    2007    O    C008    BIT    8/11/2007    PL    23    7894    0    บันทึกการเบิกวัตถุดิบ    RT    05M11

update   ic_stockcard
set qty = -376
where  lot_cd ='PC352/07'
and ref_no ='GRNFPC1102/07'
AND DOC_NO ='FA05M11';


/*select * from ic_stockcard
where  lot_cd ='PC352/07'
and ref_no ='GRNFPC1102/07'
AND DOC_NO ='FA06M11'
*/

--ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
--VLR031    FA06M11    5/11/2007    GRNFPC1102/07    27/10/2007    -608    73.5    535521    PC352/07    27/9/2007    SG003    KG    535521    11    2007    O    C008    BIT    8/11/2007    PL    18    7286    380    บันทึกการเบิกวัตถุดิบ    RT    06M11

--# update 3
update   ic_stockcard
set qty = 0
where  lot_cd ='PC352/07'
and ref_no ='GRNFPC1102/07'
AND DOC_NO ='FA06M11';


/*select * from ic_stockcard
where  lot_cd ='PC352/07'
and ref_no ='GRNFPC1128/07'
order by update_date ,melt_no


ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VLR031    FA12M10    31/10/2007    GRNFPC1128/07    5/11/2007    -866    73.5    160230    PC352/07    27/9/2007    SG003    KG    160230    10    2007    O    C008    BIT    12/11/2007    PL    19    2180    1370    บันทึกการเบิกวัตถุดิบ    RT    12M10
*/
--#4 update --#6 update
update ic_stockcard
set doc_no ='FA05M11',
doc_date = '11/5/2007',
qty = -258,
melt_no ='05M11',
FMONTH = 11
where  lot_cd ='PC352/07'
and ref_no ='GRNFPC1128/07'
and doc_no ='FA12M10';



/*ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VLR031    FA06M11    5/11/2007    GRNFPC1128/07    5/11/2007    -380    73.5    507591    PC352/07    27/9/2007    SG003    KG    507591    11    2007    O    C008    BIT    8/11/2007    PL    20    6906    0    บันทึกการเบิกวัตถุดิบ    RT    06M11
*/
--# 5 update
update ic_stockcard
set qty = -988
where  lot_cd ='PC352/07'
and ref_no ='GRNFPC1128/07'
and doc_no ='FA06M11';

/*SELECT SUM(QTY)
FROM  ic_stockcard
where  lot_cd ='PC352/07'
and ref_no ='GRNFPC1128/07'
AND DOC_DATE <='12/31/2007'
*/






