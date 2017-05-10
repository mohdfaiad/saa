
UPDATE IC_STOCKCARD
SET REF_NO = '69/3527',
REF_DATE =   '1/1/2006'
WHERE LOT_CD ='PC473/03'
AND DOC_NO ='31J02'

SELECT * FROM ic_STOCKCARD
WHERE LOT_CD ='PC076/04'
AND REF_NO ='WML'


ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VOR015    GRNFAPC0083/04    3/4/2004    GRNFAPC0083/04    1/1/2006    216    482.570007324219    104235.125    PC076/04    1/1/2006    SG007    KG    104235.125    3    2004    I    G012    BIT    3/6/2004    PO    1    216    0    Goods Recive Note    GR    
VOR015    ADJPB076/04    3/16/2004    ADJPB076/04    3/16/2004    0    482.570007324219    104235.125    PC076/04    2/13/2004    SG007    KG    104235.125    3    2004    C    G012    brd    3/16/2004 10:56:25 AM    IC    1    216    0    Stock Adjustment Transaction    IC    
VOR015    FA21J03    3/16/2004    WML    3/17/2004 9:01:30 AM    -32    482.570007324219    88792.8828125    PC076/04    2/13/2004    SG007    KG    88792.8828125    3    2004    O    G012    BIT    3/17/2004    PL    2    184    -10236    บันทึกการเบิกวัตถุดิบ    RT    21J03
VOR015    FA22J04    4/19/2004    GRNFAPC0083/04    1/1/2006    -36    482.570007324219    71420.359375    PC076/04    1/1/2006    SG007    KG    71420.359375    4    2004    O    G012    BIT    5/21/2004    PL    4    148    0    บันทึกการเบิกวัตถุดิบ    RT    22J04
VOR015    FA24J08    8/18/2004    GRNFAPC0083/04    1/1/2006    -31    482.570007324219    56460.69140625    PC076/04    1/1/2006    SG007    KG    56460.69140625    8    2004    O    G012    BIT    8/19/2004    PL    8    117    0    บันทึกการเบิกวัตถุดิบ    RT    24J08
VOR015    FA01K02    2/2/2005    GRN_NO    1/1/1900    0    482.570007324219    56460.69140625    PC076/04    2/13/2004    SG007    KG    56460.69140625    2    2005    O    G012    BIT    2/5/2005    PL    9    117    0    บันทึกการเบิกวัตถุดิบ    RT    01K02
VOR015    PHC01-04-2005    4/1/2005    GRNFAPC0083/04    1/1/2006    117    482.570007324219    56460.69140625    PC076/04    1/1/2006    SG007    KG    56460.69140625    4    2005    I    G012    BRD    4/11/2005 2:06:26 PM    IC    1    117    0    บันทึกปรับปรุงวัตถุดิบ(Plysical Count)    PS    MELT_NO
VOR015    adjfg57l09-1    2/27/2007    GRNFAPC0083/04    1/1/2006    117    482.570007324219    112921.3828125    PC076/04    1/1/2006    SG007    KG    112921.3828125    2    2007    I    G012    brd    3/17/2007 11:57:06 AM    IC    20    234    0    Store Adjustment Transaction    SA    
VOR015    adjfapc076/04    2/28/2007    GRNFAPC0083/04    1/1/2006    -266    482.570007324219    0    PC076/04    1/1/2006    SG007    KG    0    2    2007    O    G012    brd    4/7/2007 10:26:15 AM    IC    1        0    Store Adjustment Transaction    SA    

 
UPDATE IC_STOCKCARD
SET REF_NO = 'GRNFAPC0083/04',
REF_DATE =   '1/1/2006'
WHERE LOT_CD ='PC076/04'
AND REF_NO ='WML'




SELECT * FROM ic_STOCKCARD
WHERE LOT_CD ='PC057/04'
AND REF_NO ='WML'

ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VOR015    GRNFAPC0084/04    3/4/2004    GRNFAPC0084/04    1/1/2006    503    304.75    153289.25    PC057/04    1/1/2006    SG007    KG    153289.25    3    2004    I    G010    BIT    3/6/2004    PO    1    503    0    Goods Recive Note    GR    
VOR015    ADJPB057/04    3/16/2004    ADJPB057/04    3/16/2004    0    304.75    153289.25    PC057/04    2/6/2004    SG007    KG    153289.25    3    2004    C    G010    brd    3/16/2004 10:57:06 AM    IC    1    503    0    Stock Adjustment Transaction    IC    
VOR015    FA21J03    3/16/2004    WML    3/17/2004 9:01:30 AM    -107    304.75    120681    PC057/04    2/6/2004    SG007    KG    120681    3    2004    O    G010    BIT    3/17/2004    PL    3    396    10343    บันทึกการเบิกวัตถุดิบ    RT    21J03
VOR015    adjfa22j04    4/19/2004    GRNFAPC0084/04    1/1/2006    -108    304.75    87768    PC057/04    1/1/2006    SG007    KG    87768    4    2004    O    G010    brd    8/19/2004 10:22:40 AM    IC    1    288    0    Melt Stock Adjustment Transaction    MA    
VOR015    FA24J08    8/18/2004    GRNFAPC0084/04    1/1/2006    -120    304.75    51198    PC057/04    1/1/2006    SG007    KG    51198    8    2004    O    G010    BIT    8/19/2004    PL    7    168    0    บันทึกการเบิกวัตถุดิบ    RT    24J08
VOR015    adjfapc057/04    8/18/2004    GRNFAPC0084/04    1/1/2006    0    304.75    51198    PC057/04    1/1/2006    SG007    KG    51198    8    2004    I    G010    brd    8/19/2004 3:34:43 PM    IC    1    168    0    Store Adjustment Transaction    SA    
VOR015    FA01K02    2/2/2005    GRN_NO    1/1/1900    0    304.75    51198    PC057/04    2/6/2004    SG007    KG    51198    2    2005    O    G010    BIT    2/5/2005    PL    7    168    0    บันทึกการเบิกวัตถุดิบ    RT    01K02
VOR015    PHC01-04-2005    4/1/2005    GRNFAPC0084/04    1/1/2006    168    304.75    51198    PC057/04    1/1/2006    SG007    KG    51198    4    2005    I    G010    BRD    4/11/2005 2:06:26 PM    IC    1    168    0    บันทึกปรับปรุงวัตถุดิบ(Plysical Count)    PS    MELT_NO
VOR015    adjfg57l09-1    2/27/2007    GRNFAPC0084/04    1/1/2006    168    304.75    102396    PC057/04    1/1/2006    SG007    KG    102396    2    2007    I    G010    brd    3/17/2007 11:57:06 AM    IC    16    336    0    Store Adjustment Transaction    SA    
VOR015    adjfapc057/04    2/28/2007    GRNFAPC0084/04    1/1/2006    -443    304.75    0    PC057/04    1/1/2006    SG007    KG    0    2    2007    O    G010    brd    4/7/2007 10:24:24 AM    IC    1        0    Store Adjustment Transaction    SA    


 UPDATE IC_STOCKCARD
SET REF_NO = 'GRNFAPC0084/04',
REF_DATE =   '1/1/2006'
WHERE LOT_CD ='PC057/04'
AND REF_NO ='WML'

