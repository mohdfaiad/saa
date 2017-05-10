--UPDATE #1

/*select * from ic_stockcard
where  lot_cd ='PC438/07'
and ref_no ='GRNFPC1258/07'

ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VLR031    GRNFPC1258/07    11/12/2007    GRNFPC1258/07    11/12/2007    11380    61.5    4772400    PC438/07    29/11/2007    SG005    KG    4772400    12    2007    I    E001    BIT    11/12/2007    PO    1    73161    0    Goods Recive Note    GR    
VLR031    FA08M12    6/12/2007    GRNFPC1258/07    11/12/2007    -820    61.5    4448971.5    PC438/07    29/11/2007    SG005    KG    4448971.5    12    2007    O    E001    BIT    11/12/2007    PL    20    72341    0    บันทึกการเบิกวัตถุดิบ    RT    08M12
VLR031    FA09M12    7/12/2007    GRNFPC1258/07    11/12/2007    -741    61.5    4403400    PC438/07    29/11/2007    SG005    KG    4403400    12    2007    O    E001    BIT    11/12/2007    PL    21    71600    0    บันทึกการเบิกวัตถุดิบ    RT    09M12
VLR031    FA10M12    7/12/2007    GRNFPC1258/07    11/12/2007    -844    61.5    4351494    PC438/07    29/11/2007    SG005    KG    4351494    12    2007    O    E001    BIT    11/12/2007    PL    23    70756    0    บันทึกการเบิกวัตถุดิบ    RT    10M12
VLR031    FA11M12    8/12/2007    GRNFPC1258/07    11/12/2007    -1249    61.5    4274680.5    PC438/07    29/11/2007    SG005    KG    4274680.5    12    2007    O    E001    BIT    11/12/2007    PL    23    69507    0    บันทึกการเบิกวัตถุดิบ    RT    11M12
VLR031    FA12M12    8/12/2007    GRNFPC1258/07    11/12/2007    -853    61.5    4222221    PC438/07    29/11/2007    SG005    KG    4222221    12    2007    O    E001    BIT    11/12/2007    PL    27    68654    0    บันทึกการเบิกวัตถุดิบ    RT    12M12
VLR031    FA13M12    9/12/2007    GRNFPC1258/07    11/12/2007    -874    61.5    4748415    PC438/07    29/11/2007    SG005    KG    4748415    12    2007    O    E001    BIT    13/12/2007    PL    22    77210    0    บันทึกการเบิกวัตถุดิบ    RT    13M12
VLR031    FA14M12    9/12/2007    GRNFPC1258/07    11/12/2007    -845    61.5    4696447.5    PC438/07    29/11/2007    SG005    KG    4696447.5    12    2007    O    E001    BIT    13/12/2007    PL    22    76365    0    บันทึกการเบิกวัตถุดิบ    RT    14M12
VLR031    FA15M12    10/12/2007    GRNFPC1258/07    11/12/2007    -507    61.5    4665267    PC438/07    29/11/2007    SG005    KG    4665267    12    2007    O    E001    BIT    13/12/2007    PL    21    75858    0    บันทึกการเบิกวัตถุดิบ    RT    15M12
VLR031    FA16M12    10/12/2007    GRNFPC1258/07    11/12/2007    -475    61.5    4636054.5    PC438/07    29/11/2007    SG005    KG    4636054.5    12    2007    O    E001    BIT    13/12/2007    PL    21    75383    0    บันทึกการเบิกวัตถุดิบ    RT    16M12
VLR031    FA17M12    11/12/2007    GRNFPC1258/07    11/12/2007    -550    61.5    4602229.5    PC438/07    29/11/2007    SG005    KG    4602229.5    12    2007    O    E001    BIT    13/12/2007    PL    20    74833    2451    บันทึกการเบิกวัตถุดิบ    RT    17M12
VLR031    FA18M12    11/12/2007    GRNFPC1258/07    11/12/2007    -721    61.5    4557888    PC438/07    29/11/2007    SG005    KG    4557888    12    2007    O    E001    BIT    14/12/2007    PL    18    74112    1730    บันทึกการเบิกวัตถุดิบ    RT    18M12
VLR031    FA19M12    12/12/2007    GRNFPC1258/07    11/12/2007    -694    61.5    4515207    PC438/07    29/11/2007    SG005    KG    4515207    12    2007    O    E001    BIT    14/12/2007    PL    21    73418    1036    บันทึกการเบิกวัตถุดิบ    RT    19M12
VLR031    FA20M12    12/12/2007    GRNFPC1258/07    11/12/2007    -1036    61.5    4451493    PC438/07    29/11/2007    SG005    KG    4451493    12    2007    O    E001    BIT    14/12/2007    PL    21    72382    0    บันทึกการเบิกวัตถุดิบ    RT    20M12
VLR031    FA21M12    13/12/2007    GRNFPC1258/07    11/12/2007    -1171    61.5    4362502.5    PC438/07    29/11/2007    SG005    KG    4362502.5    12    2007    O    E001    BIT    14/12/2007    PL    24    70935    0    บันทึกการเบิกวัตถุดิบ    RT    21M12

select *    from ic_stockcard
where  lot_cd ='PC438/07'
and doc_no = 'GRNFPC1221/07'




ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VLR031    GRNFPC1221/07    4/12/2007    GRNFPC1221/07    4/12/2007    14120    61.5    3219525    PC438/07    29/11/2007    SG005    KG    3219525    12    2007    I    E001    BIT    4/12/2007    PO    1    52350    0    Goods Recive Note    GR    
 */
--#update 1
update     ic_stockcard
set ref_no = 'GRNFPC1221/07',
ref_date ='12/4/2007'
where  lot_cd ='PC438/07'
and ref_no ='GRNFPC1258/07'
and doc_no in ('FA08M12','FA09M12','FA10M12',
'FA11M12','FA12M12','FA13M12','FA14M12');




update     ic_stockcard
set  qty = -845
where  lot_cd ='PC438/07'
and ref_no ='GRNFPC1221/07'
and doc_no ='FA14M12' ;


/*select *    from ic_stockcard
where  lot_cd ='PC438/07'
and doc_no = 'GRNFPC1255/07'

ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VLR031    GRNFPC1255/07    10/12/2007    GRNFPC1255/07    10/12/2007    13870    61.5    4072530    PC438/07    29/11/2007    SG005    KG    4072530    12    2007    I    E001    BIT    11/12/2007    PO    1    61781    0    Goods Recive Note    GR    
*/
 --# update 2

update     ic_stockcard
set ref_no = 'GRNFPC1255/07',
ref_date ='12/10/2007'
where  lot_cd ='PC438/07'
and ref_no ='GRNFPC1258/07'
and doc_no in ('FA15M12','FA16M12','FA17M12',
'FA18M12','FA19M12','FA20M12','FA21M12')


/*select sum(qty)
from ic_stockcard
where  lot_cd ='PC438/07'
and doc_date <='12/31/2007'


select *
from ic_stockcard
where  lot_cd ='PC438/07'
*/



