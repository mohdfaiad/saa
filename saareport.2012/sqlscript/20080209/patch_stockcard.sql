/*select * from ic_stockcard
where lot_cd ='PC438/07'
and ref_no ='GRNFPC1221/07'
*/


/*ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VLR031    GRNFPC1221/07    12/4/2007    GRNFPC1221/07    12/4/2007    14120    61.5    3219525    PC438/07    11/29/2007    SG005    KG    3219525    12    2007    I    E001    BIT    12/4/2007    PO    1    52350    0    Goods Recive Note    GR    
VLR031    FA08M12    12/6/2007    GRNFPC1221/07    12/4/2007    -820    61.5    4448971.5    PC438/07    11/29/2007    SG005    KG    4448971.5    12    2007    O    E001    BIT    12/11/2007    PL    20    72341    0    บันทึกการเบิกวัตถุดิบ    RT    08M12
VLR031    FA09M12    12/7/2007    GRNFPC1221/07    12/4/2007    -741    61.5    4403400    PC438/07    11/29/2007    SG005    KG    4403400    12    2007    O    E001    BIT    12/11/2007    PL    21    71600    0    บันทึกการเบิกวัตถุดิบ    RT    09M12
VLR031    FA10M12    12/7/2007    GRNFPC1221/07    12/4/2007    -844    61.5    4351494    PC438/07    11/29/2007    SG005    KG    4351494    12    2007    O    E001    BIT    12/11/2007    PL    23    70756    0    บันทึกการเบิกวัตถุดิบ    RT    10M12
VLR031    FA11M12    12/8/2007    GRNFPC1221/07    12/4/2007    -1249    61.5    4274680.5    PC438/07    11/29/2007    SG005    KG    4274680.5    12    2007    O    E001    BIT    12/11/2007    PL    23    69507    0    บันทึกการเบิกวัตถุดิบ    RT    11M12
VLR031    FA12M12    12/8/2007    GRNFPC1221/07    12/4/2007    -853    61.5    4222221    PC438/07    11/29/2007    SG005    KG    4222221    12    2007    O    E001    BIT    12/11/2007    PL    27    68654    0    บันทึกการเบิกวัตถุดิบ    RT    12M12
VLR031    FA13M12    12/9/2007    GRNFPC1221/07    12/4/2007    -874    61.5    4748415    PC438/07    11/29/2007    SG005    KG    4748415    12    2007    O    E001    BIT    12/13/2007    PL    22    77210    0    บันทึกการเบิกวัตถุดิบ    RT    13M12
VLR031    FA14M12    12/9/2007    GRNFPC1221/07    12/4/2007    -652    61.5    4696447.5    PC438/07    11/29/2007    SG005    KG    4696447.5    12    2007    O    E001    BIT    12/13/2007    PL    22    76365    0    บันทึกการเบิกวัตถุดิบ    RT    14M12
VLR031    FA46M12    12/26/2007    GRNFPC1221/07    12/4/2007    -76    61.5    2396593.5    PC438/07    11/29/2007    SG005    KG    2396593.5    12    2007    O    E001    BIT    12/26/2007    PL    16    38969    1625    บันทึกการเบิกวัตถุดิบ    RT    46M12
VLR031    FA47M12    12/26/2007    GRNFPC1221/07    12/4/2007    -1469    61.5    2206312.5    PC438/07    11/29/2007    SG005    KG    2206312.5    12    2007    O    E001    BIT    12/27/2007    PL    15    35875    0    บันทึกการเบิกวัตถุดิบ    RT    47M12
VLR031    FA48M12    12/27/2007    GRNFPC1221/07    12/4/2007    -1860    61.5    2091922.5    PC438/07    11/29/2007    SG005    KG    2091922.5    12    2007    O    E001    BIT    12/28/2007    PL    14    34015    0    บันทึกการเบิกวัตถุดิบ    RT    48M12
VLR031    FA49M12    12/27/2007    GRNFPC1221/07    12/4/2007    -1600    61.5    1993522.5    PC438/07    11/29/2007    SG005    KG    1993522.5    12    2007    O    E001    BIT    12/28/2007    PL    16    32415    0    บันทึกการเบิกวัตถุดิบ    RT    49M12
VLR031    FA50M12    12/28/2007    GRNFPC1221/07    12/4/2007    -1717    61.5    1887927    PC438/07    11/29/2007    SG005    KG    1887927    12    2007    O    E001    BIT    12/28/2007    PL    17    30698    0    บันทึกการเบิกวัตถุดิบ    RT    50M12
VLR031    FA51M12    12/28/2007    GRNFPC1221/07    12/4/2007    -1365    61.5    1803979.5    PC438/07    11/29/2007    SG005    KG    1803979.5    12    2007    O    E001    BIT    12/28/2007    PL    17    29333    0    บันทึกการเบิกวัตถุดิบ    RT    51M12
VLR031    FA05N01    1/4/2008    GRNFPC1221/07    12/4/2007    -770    61.5    1756624.5    PC438/07    11/29/2007    SG005    KG    1756624.5    1    2008    O    E001    BIT    1/7/2008    PL    17    28563    0    บันทึกการเบิกวัตถุดิบ    RT    05N01
VLR031    FA06N01    1/5/2008    GRNFPC1221/07    12/4/2007    -1513    61.5    1663575    PC438/07    11/29/2007    SG005    KG    1663575    1    2008    O    E001    BIT    1/7/2008    PL    22    27050    0    บันทึกการเบิกวัตถุดิบ    RT    06N01
VLR031    FA07N01    1/5/2008    GRNFPC1221/07    12/4/2007    -1100    61.5    1595925    PC438/07    11/29/2007    SG005    KG    1595925    1    2008    O    E001    BIT    1/9/2008    PL    19    25950    3406    บันทึกการเบิกวัตถุดิบ    RT    07N01
VLR031    FA08N01    1/5/2008    GRNFPC1221/07    12/4/2007    -1018    61.5    1533318    PC438/07    11/29/2007    SG005    KG    1533318    1    2008    O    E001    BIT    1/9/2008    PL    21    24932    2388    บันทึกการเบิกวัตถุดิบ    RT    08N01
VLR031    FA09N01    1/6/2008    GRNFPC1221/07    12/4/2007    -1067    61.5    1467697.5    PC438/07    11/29/2007    SG005    KG    1467697.5    1    2008    O    E001    BIT    1/9/2008    PL    20    23865    1321    บันทึกการเบิกวัตถุดิบ    RT    09N01
VLR031    FA10N01    1/6/2008    GRNFPC1221/07    12/4/2007    -565    61.5    1432950    PC438/07    11/29/2007    SG005    KG    1432950    1    2008    O    E001    BIT    1/9/2008    PL    21    23300    756    บันทึกการเบิกวัตถุดิบ    RT    10N01
 */
 UPDATE  IC_STOCKCARD
 SET QTY = 0
 where lot_cd ='PC438/07'
 and ref_no ='GRNFPC1221/07'
 AND DOC_NO ='FA10N01'  ;
/*
 SELECT * FROM ic_stockcard
 WHERE REF_NO ='GRNFPC1255/07'

 ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VLR031    GRNFPC1255/07    12/10/2007    GRNFPC1255/07    12/10/2007    13870    61.5    4072530    PC438/07    11/29/2007    SG005    KG    4072530    12    2007    I    E001    BIT    12/11/2007    PO    1    61781    0    Goods Recive Note    GR    
*/

 UPDATE   IC_STOCKCARD
 SET REF_NO =  'GRNFPC1255/07',
 ref_date ='12/10/2007'
 where lot_cd ='PC438/07'
 and ref_no ='GRNFPC1221/07'
 and doc_no in ('FA05N01','FA06N01','FA07N01','FA08N01','FA09N01');


 /*select * from ic_stockcard
where lot_cd ='PC438/07'
and ref_no ='GRNFPC1221/07'
*/

UPDATE       IC_STOCKCARD
SET QTY = -1035
 where lot_cd ='PC438/07'
 and ref_no ='GRNFPC1255/07'
 AND DOC_NO ='FA10N01' ;

 
UPDATE       IC_STOCKCARD
SET QTY = -414
 where lot_cd ='PC438/07'
 and ref_no ='GRNFPC1255/07'
 AND DOC_NO ='FA14N01' ;

/*
 select * from ic_stockcard
where lot_cd ='PC438/07'
and ref_no ='GRNFPC1258/07'

ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VLR031    GRNFPC1258/07    12/11/2007    GRNFPC1258/07    12/11/2007    11380    61.5    4772400    PC438/07    11/29/2007    SG005    KG    4772400    12    2007    I    E001    BIT    12/11/2007    PO    1    73161    0    Goods Recive Note    GR    
*/
 /*select * from ic_stockcard
where lot_cd ='PC438/07'
and ref_no ='GRNFPC1255/07'
/*
ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VLR031    GRNFPC1255/07    12/10/2007    GRNFPC1255/07    12/10/2007    13870    61.5    4072530    PC438/07    11/29/2007    SG005    KG    4072530    12    2007    I    E001    BIT    12/11/2007    PO    1    61781    0    Goods Recive Note    GR    
VLR031    FA15M12    12/10/2007    GRNFPC1255/07    12/10/2007    -507    61.5    4665267    PC438/07    11/29/2007    SG005    KG    4665267    12    2007    O    E001    BIT    12/13/2007    PL    21    75858    0    บันทึกการเบิกวัตถุดิบ    RT    15M12
VLR031    FA16M12    12/10/2007    GRNFPC1255/07    12/10/2007    -475    61.5    4636054.5    PC438/07    11/29/2007    SG005    KG    4636054.5    12    2007    O    E001    BIT    12/13/2007    PL    21    75383    0    บันทึกการเบิกวัตถุดิบ    RT    16M12
VLR031    FA17M12    12/11/2007    GRNFPC1255/07    12/10/2007    -550    61.5    4602229.5    PC438/07    11/29/2007    SG005    KG    4602229.5    12    2007    O    E001    BIT    12/13/2007    PL    20    74833    2451    บันทึกการเบิกวัตถุดิบ    RT    17M12
VLR031    FA18M12    12/11/2007    GRNFPC1255/07    12/10/2007    -721    61.5    4557888    PC438/07    11/29/2007    SG005    KG    4557888    12    2007    O    E001    BIT    12/14/2007    PL    18    74112    1730    บันทึกการเบิกวัตถุดิบ    RT    18M12
VLR031    FA19M12    12/12/2007    GRNFPC1255/07    12/10/2007    -694    61.5    4515207    PC438/07    11/29/2007    SG005    KG    4515207    12    2007    O    E001    BIT    12/14/2007    PL    21    73418    1036    บันทึกการเบิกวัตถุดิบ    RT    19M12
VLR031    FA20M12    12/12/2007    GRNFPC1255/07    12/10/2007    -1036    61.5    4451493    PC438/07    11/29/2007    SG005    KG    4451493    12    2007    O    E001    BIT    12/14/2007    PL    21    72382    0    บันทึกการเบิกวัตถุดิบ    RT    20M12
VLR031    FA21M12    12/13/2007    GRNFPC1255/07    12/10/2007    -1171    61.5    4362502.5    PC438/07    11/29/2007    SG005    KG    4362502.5    12    2007    O    E001    BIT    12/14/2007    PL    24    70935    0    บันทึกการเบิกวัตถุดิบ    RT    21M12
VLR031    FA05N01    1/4/2008    GRNFPC1255/07    12/10/2007    -770    61.5    1756624.5    PC438/07    11/29/2007    SG005    KG    1756624.5    1    2008    O    E001    BIT    1/7/2008    PL    17    28563    0    บันทึกการเบิกวัตถุดิบ    RT    05N01
VLR031    FA06N01    1/5/2008    GRNFPC1255/07    12/10/2007    -1513    61.5    1663575    PC438/07    11/29/2007    SG005    KG    1663575    1    2008    O    E001    BIT    1/7/2008    PL    22    27050    0    บันทึกการเบิกวัตถุดิบ    RT    06N01
VLR031    FA07N01    1/5/2008    GRNFPC1255/07    12/10/2007    -1100    61.5    1595925    PC438/07    11/29/2007    SG005    KG    1595925    1    2008    O    E001    BIT    1/9/2008    PL    19    25950    3406    บันทึกการเบิกวัตถุดิบ    RT    07N01
VLR031    FA08N01    1/5/2008    GRNFPC1255/07    12/10/2007    -1018    61.5    1533318    PC438/07    11/29/2007    SG005    KG    1533318    1    2008    O    E001    BIT    1/9/2008    PL    21    24932    2388    บันทึกการเบิกวัตถุดิบ    RT    08N01
VLR031    FA09N01    1/6/2008    GRNFPC1255/07    12/10/2007    -1067    61.5    1467697.5    PC438/07    11/29/2007    SG005    KG    1467697.5    1    2008    O    E001    BIT    1/9/2008    PL    20    23865    1321    บันทึกการเบิกวัตถุดิบ    RT    09N01
VLR031    FA10N01    1/6/2008    GRNFPC1255/07    12/10/2007    -1035    61.5    1404045    PC438/07    11/29/2007    SG005    KG    1404045    1    2008    O    E001    BIT    1/9/2008    PL    23    22830    286    บันทึกการเบิกวัตถุดิบ    RT    10N01
VLR031    FA11N01    1/7/2008    GRNFPC1255/07    12/10/2007    -286    61.5    1386456    PC438/07    11/29/2007    SG005    KG    1386456    1    2008    O    E001    BIT    1/9/2008    PL    21    22544    0    บันทึกการเบิกวัตถุดิบ    RT    11N01
VLR031    FA12N01    1/7/2008    GRNFPC1255/07    12/10/2007    -770    61.5    1339101    PC438/07    11/29/2007    SG005    KG    1339101    1    2008    O    E001    BIT    1/9/2008    PL    22    21774    0    บันทึกการเบิกวัตถุดิบ    RT    12N01
VLR031    FA13N01    1/9/2008    GRNFPC1255/07    12/10/2007    -550    61.5    1305276    PC438/07    11/29/2007    SG005    KG    1305276    1    2008    O    E001    BIT    1/11/2008    PL    25    21224    650    บันทึกการเบิกวัตถุดิบ    RT    13N01
VLR031    FA14N01    1/9/2008    GRNFPC1255/07    12/10/2007    -414    61.5    1265301    PC438/07    11/29/2007    SG005    KG    1265301    1    2008    O    E001    BIT    1/11/2008    PL    25    20574    0    บันทึกการเบิกวัตถุดิบ    RT    14N01
VLR031    FA15N01    1/10/2008    GRNFPC1255/07    12/10/2007    -564    61.5    1230615    PC438/07    11/29/2007    SG005    KG    1230615    1    2008    O    E001    BIT    1/11/2008    PL    23    20010    0    บันทึกการเบิกวัตถุดิบ    RT    15N01
VLR031    FA16N01    1/11/2008    GRNFPC1255/07    12/10/2007    -537    61.5    1197589.5    PC438/07    11/29/2007    SG005    KG    1197589.5    1    2008    O    E001    BIT    1/14/2008    PL    25    19473    503    บันทึกการเบิกวัตถุดิบ    RT    16N01
VLR031    FA17N01    1/11/2008    GRNFPC1255/07    12/10/2007    -503    61.5    1166655    PC438/07    11/29/2007    SG005    KG    1166655    1    2008    O    E001    BIT    1/14/2008    PL    20    18970    0    บันทึกการเบิกวัตถุดิบ    RT    17N01
VLR031    FA18N01    1/12/2008    GRNFPC1255/07    12/10/2007    -947    61.5    1108414.5    PC438/07    11/29/2007    SG005    KG    1108414.5    1    2008    O    E001    BIT    1/14/2008    PL    21    18023    0    บันทึกการเบิกวัตถุดิบ    RT    18N01
VLR031    FA19N01    1/12/2008    GRNFPC1255/07    12/10/2007    -491    61.5    1078218    PC438/07    11/29/2007    SG005    KG    1078218    1    2008    O    E001    BIT    1/14/2008    PL    24    17532    0    บันทึกการเบิกวัตถุดิบ    RT    19N01
VLR031    FA20N01    1/12/2008    GRNFPC1255/07    12/10/2007    -527    61.5    1045807.5    PC438/07    11/29/2007    SG005    KG    1045807.5    1    2008    O    E001    BIT    1/14/2008    PL    22    17005    0    บันทึกการเบิกวัตถุดิบ    RT    20N01
VLR031    FA21N01    1/13/2008    GRNFPC1255/07    12/10/2007    -603    61.5    1008723    PC438/07    11/29/2007    SG005    KG    1008723    1    2008    O    E001    BIT    1/15/2008    PL    22    16402    0    บันทึกการเบิกวัตถุดิบ    RT    21N01
VLR031    FA22N01    1/13/2008    GRNFPC1255/07    12/10/2007    -562    61.5    974160    PC438/07    11/29/2007    SG005    KG    974160    1    2008    O    E001    BIT    1/15/2008    PL    23    15840    0    บันทึกการเบิกวัตถุดิบ    RT    22N01
VLR031    FA23N01    1/14/2008    GRNFPC1255/07    12/10/2007    -492    61.5    943902    PC438/07    11/29/2007    SG005    KG    943902    1    2008    O    E001    BIT    1/15/2008    PL    23    15348    0    บันทึกการเบิกวัตถุดิบ    RT    23N01
VLR031    FA24N01    1/14/2008    GRNFPC1255/07    12/10/2007    -539    61.5    910753.5    PC438/07    11/29/2007    SG005    KG    910753.5    1    2008    O    E001    BIT    1/15/2008    PL    23    14809    0    บันทึกการเบิกวัตถุดิบ    RT    24N01
VLR031    FA25N01    1/15/2008    GRNFPC1255/07    12/10/2007    -660    61.5    870163.5    PC438/07    11/29/2007    SG005    KG    870163.5    1    2008    O    E001    BIT    1/15/2008    PL    20    14149    0    บันทึกการเบิกวัตถุดิบ    RT    25N01
VLR031    FA26N01    1/15/2008    GRNFPC1255/07    12/10/2007    -548    61.5    836461.5    PC438/07    11/29/2007    SG005    KG    836461.5    1    2008    O    E001    BIT    1/15/2008    PL    21    13601    0    บันทึกการเบิกวัตถุดิบ    RT    26N01
VLR031    FA27N01    1/16/2008    GRNFPC1255/07    12/10/2007    -480    61.5    806941.5    PC438/07    11/29/2007    SG005    KG    806941.5    1    2008    O    E001    BIT    1/21/2008    PL    19    13121    2508    บันทึกการเบิกวัตถุดิบ    RT    27N01
VLR031    FA28N01    1/16/2008    GRNFPC1255/07    12/10/2007    -510    61.5    775576.5    PC438/07    11/29/2007    SG005    KG    775576.5    1    2008    O    E001    BIT    1/21/2008    PL    20    12611    1998    บันทึกการเบิกวัตถุดิบ    RT    28N01
VLR031    FA29N01    1/17/2008    GRNFPC1255/07    12/10/2007    -464    61.5    747040.5    PC438/07    11/29/2007    SG005    KG    747040.5    1    2008    O    E001    BIT    1/21/2008    PL    18    12147    1534    บันทึกการเบิกวัตถุดิบ    RT    29N01
VLR031    FA30N01    1/17/2008    GRNFPC1255/07    12/10/2007    -526    61.5    714691.5    PC438/07    11/29/2007    SG005    KG    714691.5    1    2008    O    E001    BIT    1/21/2008    PL    20    11621    1008    บันทึกการเบิกวัตถุดิบ    RT    30N01
VLR031    FA31N01    1/18/2008    GRNFPC1255/07    12/10/2007    -491    61.5    684495    PC438/07    11/29/2007    SG005    KG    684495    1    2008    O    E001    BIT    1/21/2008    PL    19    11130    517    บันทึกการเบิกวัตถุดิบ    RT    31N01
VLR031    FA32N01    1/18/2008    GRNFPC1255/07    12/10/2007    -517    61.5    652699.5    PC438/07    11/29/2007    SG005    KG    652699.5    1    2008    O    E001    BIT    1/21/2008    PL    19    10613    0    บันทึกการเบิกวัตถุดิบ    RT    32N01
VLR031    FA33N01    1/18/2008    GRNFPC1255/07    12/10/2007    -533    61.5    619920    PC438/07    11/29/2007    SG005    KG    619920    1    2008    O    E001    BIT    1/21/2008    PL    24    10080    0    บันทึกการเบิกวัตถุดิบ    RT    33N01
VLR031    FA34N01    1/19/2008    GRNFPC1255/07    12/10/2007    -456    61.5    591876    PC438/07    11/29/2007    SG005    KG    591876    1    2008    O    E001    BIT    1/22/2008    PL    19    9624    0    บันทึกการเบิกวัตถุดิบ    RT    34N01
VLR031    FA14M12    12/10/2007    GRNFPC1255/07    12/10/2007    -193    61.5    4665267    PC438/07    11/29/2007    SG005    KG    4665267    12    2007    O    E001    BIT    12/13/2007    PL    21    75858    0    บันทึกการเบิกวัตถุดิบ    RT    14M12
VLR031    FA01N01R    1/17/2008    GRNFPC1255/07    12/10/2007    -194    61.5    579945    PC438/07    11/29/2007    SG005    KG    579945    1    2008    O    E001    BIT    1/29/2008    PL    3    9430    6517    บันทึกการเบิกวัตถุดิบ    RT    01N01R
*/


 UPDATE   IC_STOCKCARD
 SET REF_NO =  'GRNFPC1258/07',
 ref_date ='12/11/2007'
 where lot_cd ='PC438/07'
 and ref_no ='GRNFPC1255/07'
 and MELT_NO in ('15N01','16N01','17N01','18N01','19N01','20N01',
'21N01','22N01','23N01','24N01','25N01',
'26N01','27N01','28N01','29N01','30N01',
'31N01','32N01','33N01','34N01','01N01R' );


/*
SELECT * FROM IC_STOCKCARD
WHERE DOC_NO  ='FA54L10'
AND LOT_CD ='PC186/06'
ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VOR024    FA54L10    11/29/2006    GRNFAPC0602/06    7/6/2006    -1396    87.9899978637695    1485975.125    PC186/06    5/16/2006    SG001    KG    1485975.125    11    2006    O    A008    BIT    11/1/2006    PL    7    16888    0    บันทึกการเบิกวัตถุดิบ    RT    54L10
  */
  UPDATE IC_STOCKCARD
  SET DOC_DATE = '10/29/2006'
 WHERE DOC_NO  ='FA54L10'
 AND LOT_CD ='PC186/06'  ;

/*SELECT * FROM IC_STOCKCARD
WHERE DOC_NO  ='FA34M01'
AND LOT_CD ='PC186/06'
ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VOR024    FA34M01    1/20/2007    GRNFAPC0602/06    7/6/2006    -459    87.9899978637695    1281222.375    PC186/06    5/16/2006    SG001    KG    1281222.375    1    2007    O    A008    BIT    1/23/2007    PL    9    14561    479    บันทึกการเบิกวัตถุดิบ    RT    34M01
 */

UPDATE IC_STOCKCARD
  SET DOC_DATE = '1/19/2007'
WHERE DOC_NO  ='FA34M01'
AND LOT_CD ='PC186/06';
 /*
SELECT *  from IC_STOCKCARD
WHERE DOC_NO IN ('FA10M09','FA11M09')
AND LOT_CD ='PC312/07'
ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VLR031    FA10M09    9/6/2007    GRNFPC0906/07    9/7/2007    -904    79    3189625    PC312/07    8/30/2007    SG003    KG    3189625    9    2007    O    C003    BIT    9/10/2007    PL    17    40375    1387    บันทึกการเบิกวัตถุดิบ    RT    10M09
VLR031    FA11M09    9/6/2007    GRNFPC0906/07    9/7/2007    -1387    79    3080052    PC312/07    8/30/2007    SG003    KG    3080052    9    2007    O    C003    BIT    9/10/2007    PL    14    38988    0    บันทึกการเบิกวัตถุดิบ    RT    11M09
*/

UPDATE IC_STOCKCARD
SET DOC_DATE ='9/8/2007'
WHERE DOC_NO IN ('FA10M09','FA11M09')
AND LOT_CD ='PC312/07' ;











