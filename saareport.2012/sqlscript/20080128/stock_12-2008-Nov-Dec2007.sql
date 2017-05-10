--SELECT * FROM IC_STOCKCARD
--WHERE LOT_CD  = 'PC345/07'
--AND REF_NO ='GRNFPC1063/07'


/*ACCT_CD    DOC_NO    DOC_DATE    REF_NO    REF_DATE    QTY    UNIT_COST    TOTAL_COST    LOT_CD    PURCHASE_DATE    GROUP_ID    UOM_CD    STOCK_VALUE    FMONTH    FYEAR    MODE    STOCK_CD    UPDATE_USER    UPDATE_DATE    MODULE    ORDER_LINE    ONHAND_QTY    RESERVED_QTY    DESCS    TRX_TYPE    MELT_NO
VLR001    GRNFPC1063/07    16/10/2007    GRNFPC1063/07    16/10/2007    4390    69.5    764500    PC345/07    26/9/2007    SG001    KG    764500    10    2007    I    A002    BIT    18/10/2007    PO    1    9011    0    Goods Recive Note    GR    
VLR001    FA60M10    30/10/2007    GRNFPC1063/07    16/10/2007    -306    69.5    284046.5    PC345/07    26/9/2007    SG001    KG    284046.5    10    2007    O    A002    BIT    2/11/2007    PL    2    4087    0    บันทึกการเบิกวัตถุดิบ    RT    60M10
VLR001    FA61M10    31/10/2007    GRNFPC1063/07    16/10/2007    -282    69.5    264447.5    PC345/07    26/9/2007    SG001    KG    264447.5    10    2007    O    A002    BIT    2/11/2007    PL    2    3805    0    บันทึกการเบิกวัตถุดิบ    RT    61M10
VLR001    FA62M10    31/10/2007    GRNFPC1063/07    16/10/2007    -426    69.5    234840.5    PC345/07    26/9/2007    SG001    KG    234840.5    10    2007    O    A002    BIT    2/11/2007    PL    2    3379    0    บันทึกการเบิกวัตถุดิบ    RT    62M10
VLR001    FA05M11    5/11/2007    GRNFPC1063/07    16/10/2007    -691    69.5    186816    PC345/07    26/9/2007    SG001    KG    186816    11    2007    O    A002    BIT    8/11/2007    PL    4    2688    0    บันทึกการเบิกวัตถุดิบ    RT    05M11
VLR001    FA06M11    5/11/2007    GRNFPC1063/07    16/10/2007    -270    69.5    168051    PC345/07    26/9/2007    SG001    KG    168051    11    2007    O    A002    BIT    8/11/2007    PL    2    2418    0    บันทึกการเบิกวัตถุดิบ    RT    06M11
VLR001    FA07M11    6/11/2007    GRNFPC1063/07    16/10/2007    -312    69.5    146367    PC345/07    26/9/2007    SG001    KG    146367    11    2007    O    A002    BIT    8/11/2007    PL    2    2106    0    บันทึกการเบิกวัตถุดิบ    RT    07M11
VLR001    FA08M11    6/11/2007    GRNFPC1063/07    16/10/2007    -404    69.5    118289    PC345/07    26/9/2007    SG001    KG    118289    11    2007    O    A002    BIT    8/11/2007    PL    2    1702    0    บันทึกการเบิกวัตถุดิบ    RT    08M11
VLR001    FA09M11    7/11/2007    GRNFPC1063/07    16/10/2007    -438    69.5    87848    PC345/07    26/9/2007    SG001    KG    87848    11    2007    O    A002    BIT    9/11/2007    PL    2    1264    0    บันทึกการเบิกวัตถุดิบ    RT    09M11
VLR001    FA10M11    8/11/2007    GRNFPC1063/07    16/10/2007    -386    69.5    61021    PC345/07    26/9/2007    SG001    KG    61021    11    2007    O    A002    BIT    9/11/2007    PL    2    878    0    บันทึกการเบิกวัตถุดิบ    RT    10M11
VLR001    FA11M11    8/11/2007    GRNFPC1063/07    16/10/2007    -434    69.5    30858    PC345/07    26/9/2007    SG001    KG    30858    11    2007    O    A002    BIT    12/11/2007    PL    2    444    545    บันทึกการเบิกวัตถุดิบ    RT    11M11
VLR001    FA12M11    9/11/2007    GRNFPC1063/07    16/10/2007    -545    69.5    37877.5    PC345/07    26/9/2007    SG001    KG    -7228    11    2007    O    A002    BIT    12/11/2007    PL    1    -104    0    บันทึกการเบิกวัตถุดิบ    RT    12M11

*/

UPDATE ic_stockcard
SET QTY =  -441
WHERE LOT_CD  = 'PC345/07'
AND REF_NO ='GRNFPC1063/07'
AND DOC_NO = 'FA12M11';


update ic_stockcard
set unit_cost = 77.11
where lot_cd ='fg58M11-4' ;

update ic_stockcard
set unit_cost = 87.83
where lot_cd ='fg02M12' ;

update ic_stockcard
set unit_cost = 78.36
where lot_cd ='fg51M12' ;
