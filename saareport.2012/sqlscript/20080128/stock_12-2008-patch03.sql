--UPDATE #1 PC473/03

/*select * from ic_stockcard
where  lot_cd ='PC473/03'
and ref_no ='69/3527'
AND QTY <> 0

ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VOR015    69/3527    19/2/2004    69/3527    1/1/2006    1008    45.3699989318848    45732.95703125    PC473/03    1/1/2006    SG007    KG    45732.95703125    2    2004    I    G007/2    BIT    19/2/2004    PO    1    1008    0    Goods Recive Note    GR    
VOR015    31J02    19/2/2004    69/3527    1/1/2006    -52    45.3699989318848    43373.71875    PC473/03    1/1/2006    SG007    KG    43373.71875    2    2004    O    G007/2    BIT    26/2/2004    PL    7    956    3369    บันทึกการเบิกวัตถุดิบ    RT    31J02
VOR015    adjfapb473/03    19/7/2004    69/3527    1/1/2006    -88    45.3699989318848    39381.16015625    PC473/03    1/1/2006    SG007    KG    39381.16015625    7    2004    O    G007/2    brd    19/7/2004 14:11:12    IC    1    868    0    Store Adjustment Transaction    SA    
VOR015    FA36J07    22/7/2004    69/3527    1/1/2006    -60    45.3699989318848    36658.9609375    PC473/03    1/1/2006    SG007    KG    36658.9609375    7    2004    O    G007/2    BIT    29/7/2004    PL    29    808    0    บันทึกการเบิกวัตถุดิบ    RT    36J07
VOR015    FA45J05    28/5/2004    69/3527    1/1/2006    -120    45.3699989318848    31214.55859375    PC473/03    1/1/2006    SG007    KG    31214.55859375    5    2004    O    G007/2    BIT    3/8/2004    PL    26    688    0    บันทึกการเบิกวัตถุดิบ    RT    45J05
VOR015    adjfapc473/03    18/8/2004    69/3527    1/1/2006    0    45.3699989318848    31214.55859375    PC473/03    1/1/2006    SG007    KG    31214.55859375    8    2004    I    G007/2    brd    19/8/2004 15:35:25    IC    1    688    0    Store Adjustment Transaction    SA    
VOR015    FA27J10    22/10/2004    69/3527    1/1/2006    -41    45.3699989318848    29354.388671875    PC473/03    1/1/2006    SG007    KG    29354.388671875    10    2004    O    G007/2    BIT    2/11/2004    PL    8    647    0    บันทึกการเบิกวัตถุดิบ    RT    27J10
VOR015    FA28J10    22/10/2004    69/3527    1/1/2006    -9    45.3699989318848    28946.05859375    PC473/03    1/1/2006    SG007    KG    28946.05859375    10    2004    O    G007/2    BIT    2/11/2004    PL    9    638    0    บันทึกการเบิกวัตถุดิบ    RT    28J10
VOR015    FA30J11    19/11/2004    69/3527    1/1/2006    -48    45.3699989318848    26768.298828125    PC473/03    1/1/2006    SG007    KG    26768.298828125    11    2004    O    G007/2    BIT    22/11/2004    PL    10    590    61    บันทึกการเบิกวัตถุดิบ    RT    30J11
VOR015    FA29J11    19/11/2004    69/3527    1/1/2006    -61    45.3699989318848    24000.728515625    PC473/03    1/1/2006    SG007    KG    24000.728515625    11    2004    O    G007/2    BIT    22/11/2004    PL    10    529    0    บันทึกการเบิกวัตถุดิบ    RT    29J11
VOR015    FA42J11    25/11/2004    69/3527    1/1/2006    -48    45.3699989318848    21822.96875    PC473/03    1/1/2006    SG007    KG    21822.96875    11    2004    O    G007/2    BIT    29/11/2004    PL    30    481    0    บันทึกการเบิกวัตถุดิบ    RT    42J11
VOR015    FA31K02    19/2/2005    69/3527    1/1/2006    -40    45.3699989318848    20008.169921875    PC473/03    1/1/2006    SG007    KG    20008.169921875    2    2005    O    G007/2    BIT    28/2/2005    PL    8    441    0    บันทึกการเบิกวัตถุดิบ    RT    31K02
VOR015    PHC01-04-2005    1/4/2005    69/3527    1/1/2006    441    45.3699989318848    20008.169921875    PC473/03    1/1/2006    SG007    KG    20008.169921875    4    2005    I    G007/2    BRD    11/4/2005 14:06:26    IC    1    441    0    บันทึกปรับปรุงวัตถุดิบ(Plysical Count)    PS    MELT_NO
VOR015    FA23K05    16/5/2005    69/3527    1/1/2006    -56    45.3699989318848    17467.44921875    PC473/03    1/1/2006    SG007    KG    17467.44921875    5    2005    O    G007/2    BIT    19/5/2005    PL    11    385    0    บันทึกการเบิกวัตถุดิบ    RT    23K05
VOR015    FA01K06    1/6/2005    69/3527    1/1/2006    -44    45.3699989318848    15471.169921875    PC473/03    1/1/2006    SG007    KG    15471.169921875    6    2005    O    G007/2    BIT    6/6/2005    PL    10    341    0    บันทึกการเบิกวัตถุดิบ    RT    01K06
VOR015    FA01K07    1/7/2005    69/3527    1/1/2006    -60    45.3699989318848    12748.9697265625    PC473/03    1/1/2006    SG007    KG    12748.9697265625    7    2005    O    G007/2    BIT    2/7/2005    PL    11    281    0    บันทึกการเบิกวัตถุดิบ    RT    01K07
VOR015    FA02K07    1/7/2005    69/3527    1/1/2006    -36    45.3699989318848    11115.6494140625    PC473/03    1/1/2006    SG007    KG    11115.6494140625    7    2005    O    G007/2    BIT    5/7/2005    PL    10    245    0    บันทึกการเบิกวัตถุดิบ    RT    02K07
VOR015    FA25L04    18/4/2006    69/3527    1/1/2006    -56    45.3699989318848    8574.9296875    PC473/03    1/1/2006    SG007    KG    8574.9296875    4    2006    O    G007/2    BIT    21/4/2006    PL    8    189    0    บันทึกการเบิกวัตถุดิบ    RT    25L04
VOR015    adjfg57l09-1    27/2/2007    69/3527    1/1/2006    189    45.3699989318848    17149.859375    PC473/03    1/1/2006    SG007    KG    17149.859375    2    2007    I    G007/2    brd    17/3/2007 11:57:06    IC    19    378    0    Store Adjustment Transaction    SA    
VOR015    adjfapc473/03    28/2/2007    69/3527    1/1/2006    -682    45.3699989318848    0    PC473/03    1/1/2006    SG007    KG    0    2    2007    O    G007/2    brd    7/4/2007 10:19:47    IC    1        0    Store Adjustment Transaction    SA    
VOR015    adjfapc473/03    30/12/2007    69/3527    1/1/2006    87    45.3699989318848    21097.048828125    PC473/03    1/1/2006    SG007    KG    21097.048828125    12    2007    I    G007/2    brd    10/1/2008 9:28:13    IC    1    465    0    Store Adjustment Transaction    SA    
  */
UPDATE  ic_stockcard
SET QTY = 0
--SELECT * FROM IC_STOCKCARD
where  lot_cd ='PC473/03'
and ref_no ='69/3527'
AND DOC_NO IN ('PHC01-04-2005','adjfg57l09-1',
'adjfapc473/03','adjfapc473/03') ;


UPDATE  ic_stockcard
SET QTY =-91
where  lot_cd ='PC473/03'
and ref_no ='69/3527'
AND DOC_NO ='FA25L04' ;



/*SELECT * FROM IC_MAT_STK_DT_LINK
where  lot_cd ='PC473/03'
and ref_no ='69/3527'
*/

UPDATE   IC_MAT_STK_DT_LINK
SET ONHAND_QTY = 189,
RESERVED_QTY = 0
where  lot_cd ='PC473/03'
and ref_no ='69/3527';

 /*
SELECT SUM(QTY)
FROM IC_STOCKCARD
where  lot_cd ='PC473/03'
and ref_no ='69/3527'
*/

--#2 UPDATE PC076/04

/*
SELECT * FROM IC_STOCKCARD
WHERE LOT_CD ='PC076/04'
AND REF_NO ='GRNFAPC0083/04'

ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VOR015    GRNFAPC0083/04    4/3/2004    GRNFAPC0083/04    1/1/2006    216    482.570007324219    104235.125    PC076/04    1/1/2006    SG007    KG    104235.125    3    2004    I    G012    BIT    6/3/2004    PO    1    216    0    Goods Recive Note    GR    
VOR015    FA21J03    16/3/2004    GRNFAPC0083/04    1/1/2006    -32    482.570007324219    88792.8828125    PC076/04    1/1/2006    SG007    KG    88792.8828125    3    2004    O    G012    BIT    17/3/2004    PL    2    184    -10236    บันทึกการเบิกวัตถุดิบ    RT    21J03
VOR015    FA22J04    19/4/2004    GRNFAPC0083/04    1/1/2006    -36    482.570007324219    71420.359375    PC076/04    1/1/2006    SG007    KG    71420.359375    4    2004    O    G012    BIT    21/5/2004    PL    4    148    0    บันทึกการเบิกวัตถุดิบ    RT    22J04
VOR015    FA24J08    18/8/2004    GRNFAPC0083/04    1/1/2006    -31    482.570007324219    56460.69140625    PC076/04    1/1/2006    SG007    KG    56460.69140625    8    2004    O    G012    BIT    19/8/2004    PL    8    117    0    บันทึกการเบิกวัตถุดิบ    RT    24J08
VOR015    PHC01-04-2005    1/4/2005    GRNFAPC0083/04    1/1/2006    117    482.570007324219    56460.69140625    PC076/04    1/1/2006    SG007    KG    56460.69140625    4    2005    I    G012    BRD    11/4/2005 14:06:26    IC    1    117    0    บันทึกปรับปรุงวัตถุดิบ(Plysical Count)    PS    MELT_NO
VOR015    adjfg57l09-1    27/2/2007    GRNFAPC0083/04    1/1/2006    117    482.570007324219    112921.3828125    PC076/04    1/1/2006    SG007    KG    112921.3828125    2    2007    I    G012    brd    17/3/2007 11:57:06    IC    20    234    0    Store Adjustment Transaction    SA    
VOR015    adjfapc076/04    28/2/2007    GRNFAPC0083/04    1/1/2006    -266    482.570007324219    0    PC076/04    1/1/2006    SG007    KG    0    2    2007    O    G012    brd    7/4/2007 10:26:15    IC    1        0    Store Adjustment Transaction    SA    
 */
UPDATE  IC_STOCKCARD
SET QTY = 0
WHERE LOT_CD ='PC076/04'
AND REF_NO ='GRNFAPC0083/04'
AND DOC_NO IN ('PHC01-04-2005','adjfg57l09-1','adjfapc076/04') ;

/*SELECT SUM(QTY)
FROM IC_STOCKCARD
WHERE LOT_CD ='PC076/04'
AND REF_NO ='GRNFAPC0083/04'
*/

--#3 PC057/04


/*SELECT *  FROM IC_STOCKCARD
WHERE LOT_CD ='PC057/04'
AND REF_NO ='GRNFAPC0084/04'

ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VOR015    GRNFAPC0084/04    4/3/2004    GRNFAPC0084/04    1/1/2006    503    304.75    153289.25    PC057/04    1/1/2006    SG007    KG    153289.25    3    2004    I    G010    BIT    6/3/2004    PO    1    503    0    Goods Recive Note    GR    
VOR015    FA21J03    16/3/2004    GRNFAPC0084/04    1/1/2006    -107    304.75    120681    PC057/04    1/1/2006    SG007    KG    120681    3    2004    O    G010    BIT    17/3/2004    PL    3    396    10343    บันทึกการเบิกวัตถุดิบ    RT    21J03
VOR015    adjfa22j04    19/4/2004    GRNFAPC0084/04    1/1/2006    -108    304.75    87768    PC057/04    1/1/2006    SG007    KG    87768    4    2004    O    G010    brd    19/8/2004 10:22:40    IC    1    288    0    Melt Stock Adjustment Transaction    MA    
VOR015    FA24J08    18/8/2004    GRNFAPC0084/04    1/1/2006    -120    304.75    51198    PC057/04    1/1/2006    SG007    KG    51198    8    2004    O    G010    BIT    19/8/2004    PL    7    168    0    บันทึกการเบิกวัตถุดิบ    RT    24J08
VOR015    adjfapc057/04    18/8/2004    GRNFAPC0084/04    1/1/2006    0    304.75    51198    PC057/04    1/1/2006    SG007    KG    51198    8    2004    I    G010    brd    19/8/2004 15:34:43    IC    1    168    0    Store Adjustment Transaction    SA    
VOR015    PHC01-04-2005    1/4/2005    GRNFAPC0084/04    1/1/2006    168    304.75    51198    PC057/04    1/1/2006    SG007    KG    51198    4    2005    I    G010    BRD    11/4/2005 14:06:26    IC    1    168    0    บันทึกปรับปรุงวัตถุดิบ(Plysical Count)    PS    MELT_NO
VOR015    adjfg57l09-1    27/2/2007    GRNFAPC0084/04    1/1/2006    168    304.75    102396    PC057/04    1/1/2006    SG007    KG    102396    2    2007    I    G010    brd    17/3/2007 11:57:06    IC    16    336    0    Store Adjustment Transaction    SA    
VOR015    adjfapc057/04    28/2/2007    GRNFAPC0084/04    1/1/2006    -443    304.75    0    PC057/04    1/1/2006    SG007    KG    0    2    2007    O    G010    brd    7/4/2007 10:24:24    IC    1        0    Store Adjustment Transaction    SA    
  */

update IC_STOCKCARD
SET QTY = 0
WHERE LOT_CD ='PC057/04'
AND REF_NO ='GRNFAPC0084/04'
AND DOC_NO IN ('PHC01-04-2005','adjfg57l09-1','adjfapc057/04');

/*SELECT SUM(QTY)
FROM IC_STOCKCARD
WHERE LOT_CD ='PC057/04'
AND REF_NO ='GRNFAPC0084/04'
*/

UPDATE IC_MAT_STK_DT_LINK
SET ONHAND_QTY = 168 ,
RESERVED_QTY = 0
WHERE LOT_CD ='PC057/04'
AND REF_NO ='GRNFAPC0084/04';

