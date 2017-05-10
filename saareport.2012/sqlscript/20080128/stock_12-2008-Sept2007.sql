--SELECT * FROM IC_STOCKCARD
--WHERE LOT_CD  = 'PC303-1/07'
--AND REF_NO ='GRNFPC0868/07'


/*ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VLR031    GRNFPC0868/07    28/8/2007    GRNFPC0868/07    28/8/2007    943    70    66010    PC303-1/07    28/8/2007    SG002    KG    66010    8    2007    I    B003    BIT    29/8/2007    PO    1    943    0    Goods Recive Note    GR    
VLR031    FA24M09    13/9/2007    GRNFPC0868/07    28/8/2007    -66    70    61390    PC303-1/07    28/8/2007    SG002    KG    61390    9    2007    O    B003    BIT    14/9/2007    PL    15    877    0    บันทึกการเบิกวัตถุดิบ    RT    24M09
VLR031    FA25M09    13/9/2007    GRNFPC0868/07    28/8/2007    -480    70    27790    PC303-1/07    28/8/2007    SG002    KG    27790    9    2007    O    B003    BIT    14/9/2007    PL    14    397    0    บันทึกการเบิกวัตถุดิบ    RT    25M09
VLR031    adjfapc303-1/07    14/9/2007    GRNFPC0868/07    28/8/2007    75    70    33040    PC303-1/07    28/8/2007    SG002    KG    33040    9    2007    I    B003    brd    15/9/2007 11:00:25    IC    1    472    0    Store Adjustment Transaction    SA    
VLR031    FA26M09    13/9/2007    GRNFPC0868/07    28/8/2007    -472    70    33040    PC303-1/07    28/8/2007    SG002    KG    0    9    2007    O    B003    BIT    17/9/2007    PL    13    0    0    บันทึกการเบิกวัตถุดิบ    RT    26M09
*/

UPDATE ic_stockcard
SET QTY =0
WHERE LOT_CD  = 'PC303-1/07'
AND REF_NO ='GRNFPC0868/07'
AND DOC_NO = 'adjfapc303-1/07';


UPDATE ic_stockcard
SET QTY =-397
WHERE LOT_CD  = 'PC303-1/07'
AND REF_NO ='GRNFPC0868/07'
AND DOC_NO = 'FA26M09';



/*SELECT SUM(QTY)
FROM ic_stockcard
WHERE LOT_CD  = 'PC303-1/07'
AND REF_NO ='GRNFPC0868/07'
AND DOC_DATE <='9/30/2007'
*/
--#2 remelt and oversea purchase order

update ic_stockcard set unit_cost =76.12  where lot_cd ='FG59M09' and ref_no ='FG59M09';
update ic_stockcard set unit_cost =73.92  where lot_cd ='PC248-1/07' and ref_no ='GRNFPC0976/07';
update ic_stockcard set unit_cost =48.52  where lot_cd ='PC263/07' and ref_no ='GRNFPC0871/07';
update ic_stockcard set unit_cost =48.52  where lot_cd ='PC263/07' and ref_no ='GRNFPC0872/07';
update ic_stockcard set unit_cost =48.52  where lot_cd ='PC263/07' and ref_no ='GRNFPC0873/07';
update ic_stockcard set unit_cost =115.45  where lot_cd ='fg03M02B-1' and ref_no ='fg03M02B-1';
update ic_stockcard set unit_cost =76.4  where lot_cd ='fg63M08' and ref_no ='fg63M08';
update ic_stockcard set unit_cost =96.98  where lot_cd ='PC274/07' and ref_no ='GRNFPC0855/07';
update ic_stockcard set unit_cost =92.93  where lot_cd ='PC290/07' and ref_no ='GRNFPC0874/07';
update ic_stockcard set unit_cost =92.57  where lot_cd ='PC120/07' and ref_no ='GRNFPC0477/07';
update ic_stockcard set unit_cost =89.67  where lot_cd ='PC183-1/07' and ref_no ='GRNFPC0649/07';
update ic_stockcard set unit_cost =41.14  where lot_cd ='PC169/07' and ref_no ='GRNFPC0628/07';
update ic_stockcard set unit_cost =41.14  where lot_cd ='PC169/07' and ref_no ='GRNFPC0629/07';
update ic_stockcard set unit_cost =41.15  where lot_cd ='PC169/07' and ref_no ='GRNFPC0635/07';
update ic_stockcard set unit_cost =43.28  where lot_cd ='PC215/07' and ref_no ='GRNFPC0723/07';
update ic_stockcard set unit_cost =43.28  where lot_cd ='PC215/07' and ref_no ='GRNFPC0726/07';
update ic_stockcard set unit_cost =43.28  where lot_cd ='PC215/07' and ref_no ='GRNFPC0727/07';
update ic_stockcard set unit_cost =76.15  where lot_cd ='fg62M10-1' and ref_no ='fg62M10-1';





