select * from ic_stockcard
where lot_cd ='fg02M12'

update   ic_stockcard
set unit_cost =87.43
where lot_cd ='fg02M12'



select  * from ic_stockcard
where doc_no ='FA06N03'
AND REF_NO ='GRNFPC0110/08'

ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VLR003    FA06N03    5/3/2008    GRNFPC0110/08    31/1/2008    -598    77    319935    PC018/08    29/1/2008    SG003    KG    319935    3    2008    O    C011    BIT    7/3/2008 16:11:42    PL    8    4155    0    บันทึกการเบิกวัตถุดิบ    RT    06N03

update  ic_stockcard
set qty = -436
where doc_no ='FA06N03'
AND REF_NO ='GRNFPC0110/08'



INSERT INTO ic_stockcard (ACCT_CD,DOC_NO,DOC_DATE,
REF_NO,REF_DATE,QTY,UNIT_COST,
TOTAL_COST,LOT_CD,PURCHASE_DATE,
GROUP_ID,UOM_CD,STOCK_VALUE,FMONTH,
FYEAR,MODE,STOCK_CD,UPDATE_USER,
UPDATE_DATE,MODULE,ORDER_LINE,ONHAND_QTY,
RESERVED_QTY,DESCS,TRX_TYPE,MELT_NO)
 VALUES ('VLR003','FA06N03',
 '5-MAR-2008 00:00:00','GRNFPC0182/08','2/18/2008',-162,77,319935,'PC018/08','29-JAN-2008 00:00:00','SG003','KG',319935,3,2008,'O','C011','BIT','7-MAR-2008 16:11:42','PL',8,4155,0,'บันทึกการเบิกวัตถุดิบ','RT','06N03');



select  * from ic_stockcard
where doc_no ='FA06N03'
AND REF_NO ='GRNFPC0182/08'


select  * from ic_stockcard
where doc_no ='FA07N03'
AND REF_NO ='GRNFPC0110/08'

ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VLR003    FA07N03    5/3/2008    GRNFPC0110/08    31/1/2008    -555    77    277200    PC018/08    29/1/2008    SG003    KG    277200    3    2008    O    C011    BIT    7/3/2008 17:58:36    PL    11    3600    558    บันทึกการเบิกวัตถุดิบ    RT    07N03

update ic_stockcard
set qty =0
where doc_no ='FA07N03'
AND REF_NO ='GRNFPC0110/08'


select  * from ic_stockcard
where doc_no ='FA07N03'
AND REF_NO ='GRNFPC0182/08'


update ic_stockcard
set qty =-622
where doc_no ='FA07N03'
AND REF_NO ='GRNFPC0182/08'

ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VLR003    FA07N03    5/3/2008    GRNFPC0182/08    18/2/2008    -67    77    272041    PC018/08    29/1/2008    SG003    KG    272041    3    2008    O    C011    BIT    7/3/2008 17:58:36    PL    12    3533    491    บันทึกการเบิกวัตถุดิบ    RT    07N03




FA06N03 ?????????(436)
