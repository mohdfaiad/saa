Unit ProductionPlanDataModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataModule,WArehousedm, DB, IBCustomDataSet, IBTable,
  IBQuery,Dialogutils, IBStoredProc, xmldom, XMLIntf, msxmldom, XMLDoc;

CONST DEFAULT_REMELT_GROUP ='SG001';
CONST DEFAULT_GROUP_ID ='GROUP_ID'  ;
CONST DEFAULT_UOM ='KG';
CONST MAX_ELEMENT = 25;

Type
  TProductionPlanItem =class
    public
    //19 Jan 2011

    plandoc :string ;
    plandate:TDateTime;
    meltno:string;

    orderno:string;
    orderdate:TDateTime;

    custcode:String;
    custname:string;

    itemcode:string;
    itemdescs:string;
    uom:string;
    lineno:integer;
  end;


Type
TProductionDocument = class
public
   plandoc:string;
   plandDate:TDateTime;
end;

type //sterio type to ic_element
TElementItem = class

public
  id:integer;
  Name:string;
  prefix :string;
  elementactive:boolean;

end;



type
  TProductionDM = class(TAbstractDM)
    tbProplanHD: TIBTable;
    tbProplanDT: TIBTable;
    dsProplanHD: TDataSource;
    tbProplanHDPLAN_DATE: TDateTimeField;
    tbProplanHDPLAN_DOC: TIBStringField;
    tbProplanHDISSUE_BY: TIBStringField;
    tbProplanHDREF_NO: TIBStringField;
    tbProplanHDDESCS: TIBStringField;
    tbProplanHDSTART_MELT_NO: TSmallintField;
    tbProplanHDEND_MELT_NO: TSmallintField;
    tbProplanHDUPDATE_USER: TIBStringField;
    tbProplanHDUPDATE_DATE: TDateTimeField;
    tbProplanHDSTATUS: TIBStringField;
    tbProplanHDREF_DATE: TDateTimeField;
    tbProplanHDTRX_TYPE: TIBStringField;
    t: TIBStringField;
    tbProplanHDREMARKS: TIBStringField;
    tbProplanHDDIST_TO: TIBStringField;
    tbProplanHDWORK_START_TIME: TDateTimeField;
    tbProplanHDUPDATE_MELT_NO: TSmallintField;
    tbProplanHDORDER_REMARKS: TIBStringField;
    tbProplanHDPYEAR: TSmallintField;
    tbProplanHDPMONTH: TSmallintField;
    tbProplanDTPLAN_DATE: TDateTimeField;
    tbProplanDTPLAN_DOC: TIBStringField;
    tbProplanDTTRX_TYPE: TIBStringField;
    tbProplanDTMELT_NO: TIBStringField;
    tbProplanDTITEM_CODE: TIBStringField;
    tbProplanDTORDER_NO: TIBStringField;
    tbProplanDTCUST_CODE: TIBStringField;
    tbProplanDTORDER_DATE: TDateTimeField;
    tbProplanDTSCHEDULE_DATE: TDateTimeField;
    tbProplanDTSTATUS: TIBStringField;
    tbProplanDTLINE_NO: TSmallintField;
    tbProplanDTCAL_TO_TIME: TDateTimeField;
    tbProplanDTFOR_TIME: TTimeField;
    tbProplanDTREMARKS: TIBStringField;
    tbProplanDTESTIMATED_WEIGHT: TFloatField;
    tbProplanDTSTIME: TDateTimeField;
    tbProplanDTATTIME: TDateTimeField;
    tbProplanDTPRIOR_ATIME: TDateTimeField;
    tbProplanDTPRIOR_STIME: TDateTimeField;
    tbProplanDTPRIOR_FOR_TIME: TTimeField;
    tbProplanDTSTOCK_FLAG: TIBStringField;
    tbProplanDTSTOCK_ITEM_CODE: TIBStringField;
    tbProplanDTCUST_NAME: TIBStringField;
    tbProplanDTITEM_DESCS: TIBStringField;
    tbProplanDTEND_MELT_FLAG: TIBStringField;
    tbProplanDTUOM_CD: TIBStringField;
    qryunPostProductionPlan: TIBQuery;
    qryunPostProductionPlanPLAN_DATE: TDateTimeField;
    qryunPostProductionPlanPLAN_DOC: TIBStringField;
    qryunPostProductionPlanISSUE_BY: TIBStringField;
    qryunPostProductionPlanREF_NO: TIBStringField;
    qryunPostProductionPlanDESCS: TIBStringField;
    qryunPostProductionPlanSTART_MELT_NO: TSmallintField;
    qryunPostProductionPlanEND_MELT_NO: TSmallintField;
    qryunPostProductionPlanUPDATE_USER: TIBStringField;
    qryunPostProductionPlanUPDATE_DATE: TDateTimeField;
    qryunPostProductionPlanSTATUS: TIBStringField;
    qryunPostProductionPlanREF_DATE: TDateTimeField;
    qryunPostProductionPlanTRX_TYPE: TIBStringField;
    qryunPostProductionPlanMELT_PREFIX: TIBStringField;
    qryunPostProductionPlanREMARKS: TIBStringField;
    qryunPostProductionPlanDIST_TO: TIBStringField;
    qryunPostProductionPlanWORK_START_TIME: TDateTimeField;
    qryunPostProductionPlanUPDATE_MELT_NO: TSmallintField;
    qryunPostProductionPlanORDER_REMARKS: TIBStringField;
    qryunPostProductionPlanPYEAR: TSmallintField;
    qryunPostProductionPlanPMONTH: TSmallintField;
    qryActiveSaleItem: TIBQuery;
    qryActiveOrderLookup: TIBQuery;
    qryActiveOrderLookupCUST_CODE: TIBStringField;
    qryActiveOrderLookupORDER_NO: TIBStringField;
    qryActiveOrderLookupORDER_DATE: TDateTimeField;
    qryActiveOrderLookupITEM_CODE: TIBStringField;
    qryActiveOrderLookupLINE_NO: TSmallintField;
    qryActiveOrderLookupUOM: TIBStringField;
    qryActiveOrderLookupITEM_DESCS: TIBStringField;
    qryActiveOrderLookupUNIT_COST: TFloatField;
    qryActiveOrderLookupTOTAL_AMT: TFloatField;
    qryActiveOrderLookupQTY: TFloatField;
    qryActiveSaleItemITEM_CODE: TIBStringField;
    qryActiveSaleItemDESCS: TIBStringField;
    qryActiveSaleItemREMARKS: TIBStringField;
    qryActiveSaleItemUNIT_COST: TFloatField;
    qryActiveSaleItemSALE_PRICE: TFloatField;
    qryActiveSaleItemUPDATE_USER: TIBStringField;
    qryActiveSaleItemCUST_CODE: TIBStringField;
    qryActiveSaleItemUOM_CD: TIBStringField;
    qryActiveSaleItemUPDATE_DATE: TDateTimeField;
    qryActiveSaleItemSTANDARD_PRICE: TFloatField;
    qryActiveSaleItemCURRENT_ACTIVE: TIBStringField;
    tbProplanHDCAPACITY: TFloatField;
    spGenerateMelt: TIBStoredProc;
    qryAdhoc: TIBQuery;
    tbCustomer: TIBTable;
    tbCustomerDEBTOR_ACCT: TIBStringField;
    tbCustomerNAME: TIBStringField;
    tbCustomerADDRESS1: TIBStringField;
    tbCustomerADDRESS2: TIBStringField;
    tbCustomerADDRESS3: TIBStringField;
    tbCustomerTELPHONE: TIBStringField;
    tbCustomerFAX_NO: TIBStringField;
    tbCustomerDEBTOR_TYPE: TIBStringField;
    tbCustomerSHORT_NAME: TIBStringField;
    tbCustomerCREDIT_TERM: TSmallintField;
    tbCustomerTAX_REGISTED_NO: TIBStringField;
    tbCustomerBALANCE_AMT: TFloatField;
    tbCustomerCREDIT_LIMIT: TFloatField;
    tbCustomerCURRENCY_CODE: TIBStringField;
    tbCustomerMAILADDR1: TIBStringField;
    tbCustomerMAILADDR2: TIBStringField;
    tbCustomerMAILADDR3: TIBStringField;
    tbCustomerUPDATE_USER: TIBStringField;
    tbCustomerUPDATE_DATE: TDateTimeField;
    tbCustomerTAX_CD: TIBStringField;
    tbCustomerPOSTCODE: TIBStringField;
    tbCustomerPROVINCE: TIBStringField;
    tbCustomerTH_ADDR1: TIBStringField;
    tbCustomerTH_ADDR2: TIBStringField;
    tbCustomerTH_ADDR3: TIBStringField;
    tbCustomerTH_NAME: TIBStringField;
    tbProplanDTName: TStringField;
    tbProplanDTItemDescs: TStringField;
    qryProPlanItem: TIBQuery;
    tbMaterialSheetHD: TIBTable;
    tbMaterialSheetDT: TIBTable;
    dsMaterialSheetHD: TDataSource;
    tbMaterialSheetHDPLAN_DATE: TDateTimeField;
    tbMaterialSheetHDPLAN_DOC: TIBStringField;
    tbMaterialSheetHDMELT_NO: TIBStringField;
    tbMaterialSheetHDITEM_CODE: TIBStringField;
    tbMaterialSheetHDCUST_CODE: TIBStringField;
    tbMaterialSheetHDREMARKS: TIBStringField;
    tbMaterialSheetHDUPDATE_USER: TIBStringField;
    tbMaterialSheetHDUPDATE_DATE: TDateTimeField;
    tbMaterialSheetHDFLB1: TFloatField;
    tbMaterialSheetHDFLB2: TFloatField;
    tbMaterialSheetHDFLB3: TFloatField;
    tbMaterialSheetHDFLB4: TFloatField;
    tbMaterialSheetHDFLB5: TFloatField;
    tbMaterialSheetHDFLB6: TFloatField;
    tbMaterialSheetHDFLB7: TFloatField;
    tbMaterialSheetHDFLB8: TFloatField;
    tbMaterialSheetHDFLB9: TFloatField;
    tbMaterialSheetHDFLB10: TFloatField;
    tbMaterialSheetHDFLB11: TFloatField;
    tbMaterialSheetHDFLB12: TFloatField;
    tbMaterialSheetHDFLB13: TFloatField;
    tbMaterialSheetHDTOTAL_CHARGED_WEIGHT: TFloatField;
    tbMaterialSheetHDTOTAL_RECOVERY_WEIGHT: TFloatField;
    tbMaterialSheetHDTOTAL_COST: TFloatField;
    tbMaterialSheetHDSTATUS: TIBStringField;
    tbMaterialSheetHDCUST_NAME: TIBStringField;
    tbMaterialSheetHDITEM_DESCS: TIBStringField;
    tbMaterialSheetHDTAP_REMARK: TIBStringField;
    tbMaterialSheetHDISSUE_BY: TIBStringField;
    tbMaterialSheetDTPLAN_DOC: TIBStringField;
    tbMaterialSheetDTPLAN_DATE: TDateTimeField;
    tbMaterialSheetDTMELT_NO: TIBStringField;
    tbMaterialSheetDTITEM_CODE: TIBStringField;
    tbMaterialSheetDTSTOCK_CODE: TIBStringField;
    tbMaterialSheetDTGROUP_ID: TIBStringField;
    tbMaterialSheetDTLOT_NO: TIBStringField;
    tbMaterialSheetDTUOM: TIBStringField;
    tbMaterialSheetDTCUST_CODE: TIBStringField;
    tbMaterialSheetDTPURCHASE_DATE: TDateTimeField;
    tbMaterialSheetDTSUPPLIER_CD: TIBStringField;
    tbMaterialSheetDTELE_PERC1: TFloatField;
    tbMaterialSheetDTELE_PERC2: TFloatField;
    tbMaterialSheetDTELE_PERC3: TFloatField;
    tbMaterialSheetDTELE_PERC4: TFloatField;
    tbMaterialSheetDTELE_PERC5: TFloatField;
    tbMaterialSheetDTELE_PERC6: TFloatField;
    tbMaterialSheetDTELE_PERC7: TFloatField;
    tbMaterialSheetDTELE_PERC8: TFloatField;
    tbMaterialSheetDTELE_PERC9: TFloatField;
    tbMaterialSheetDTELE_PERC10: TFloatField;
    tbMaterialSheetDTELE_PERC11: TFloatField;
    tbMaterialSheetDTELE_PERC12: TFloatField;
    tbMaterialSheetDTELE_PERC13: TFloatField;
    tbMaterialSheetDTCHARGED_WEIGHT: TFloatField;
    tbMaterialSheetDTRECOVERY_WEIGHT: TFloatField;
    tbMaterialSheetDTUNIT_COST: TFloatField;
    tbMaterialSheetDTTOTAL_COST: TFloatField;
    tbMaterialSheetDTRECOVERY_PERC: TFloatField;
    tbMaterialSheetDTACTUAL_CHARGED_WEIGHT: TFloatField;
    tbMaterialSheetDTACTUAL_RECOVERY_WEIGHT: TFloatField;
    tbMaterialSheetDTLAST_MELT_ITEM: TIBStringField;
    tbMaterialSheetDTREF_MELT_NO: TIBStringField;
    tbMaterialSheetDTDESCS: TIBStringField;
    tbMaterialSheetDTONHAND_QTY: TFloatField;
    tbMaterialSheetDTLINE_NO: TSmallintField;
    tbMaterialSheetDTCHECK_PLATE_FLAG: TIBStringField;
    tbMaterialSheetDTORDER_QTY: TFloatField;
    tbMaterialSheetDTCHECK_PLATE_GROUP_ID: TSmallintField;
    qryProplanHeaderItem: TIBQuery;
    qryProplanHeaderItemPLAN_DOC: TIBStringField;
    qryProplanHeaderItemPLAN_DATE: TDateTimeField;
    qryUnPostMeltSheet: TIBQuery;
    qryUnPostMeltSheetPLAN_DATE: TDateTimeField;
    qryUnPostMeltSheetPLAN_DOC: TIBStringField;
    qryUnPostMeltSheetMELT_NO: TIBStringField;
    qryUnPostMeltSheetITEM_CODE: TIBStringField;
    qryUnPostMeltSheetCUST_CODE: TIBStringField;
    qryUnPostMeltSheetREMARKS: TIBStringField;
    qryUnPostMeltSheetUPDATE_USER: TIBStringField;
    qryUnPostMeltSheetUPDATE_DATE: TDateTimeField;
    qryUnPostMeltSheetFLB1: TFloatField;
    qryUnPostMeltSheetFLB2: TFloatField;
    qryUnPostMeltSheetFLB3: TFloatField;
    qryUnPostMeltSheetFLB4: TFloatField;
    qryUnPostMeltSheetFLB5: TFloatField;
    qryUnPostMeltSheetFLB6: TFloatField;
    qryUnPostMeltSheetFLB7: TFloatField;
    qryUnPostMeltSheetFLB8: TFloatField;
    qryUnPostMeltSheetFLB9: TFloatField;
    qryUnPostMeltSheetFLB10: TFloatField;
    qryUnPostMeltSheetFLB11: TFloatField;
    qryUnPostMeltSheetFLB12: TFloatField;
    qryUnPostMeltSheetFLB13: TFloatField;
    qryUnPostMeltSheetTOTAL_CHARGED_WEIGHT: TFloatField;
    qryUnPostMeltSheetTOTAL_RECOVERY_WEIGHT: TFloatField;
    qryUnPostMeltSheetTOTAL_COST: TFloatField;
    qryUnPostMeltSheetSTATUS: TIBStringField;
    qryUnPostMeltSheetCUST_NAME: TIBStringField;
    qryUnPostMeltSheetITEM_DESCS: TIBStringField;
    qryUnPostMeltSheetTAP_REMARK: TIBStringField;
    qryUnPostMeltSheetISSUE_BY: TIBStringField;
    tbElement: TIBTable;
    tbElementRUN_NO: TSmallintField;
    tbElementELEMENT_CODE: TIBStringField;
    tbElementNAME: TIBStringField;
    tbElementUPDATE_USER: TIBStringField;
    tbElementUPDATE_DATE: TDateTimeField;
    qryActiveMeltNo: TIBQuery;
    qryActiveMeltNoMELT_NO: TIBStringField;
    qryActiveMeltNoLINE_NO: TSmallintField;
    qryActiveMeltNoPLAN_DOC: TIBStringField;
    qryActiveMeltNoPLAN_DATE: TDateTimeField;
    qryActiveMeltNoCUST_CODE: TIBStringField;
    qryActiveMeltNoCUST_NAME: TIBStringField;
    qryActiveMeltNoITEM_CODE: TIBStringField;
    qryActiveMeltNoITEM_DESCS: TIBStringField;
    qryActiveMeltNoESTIMATED_WEIGHT: TFloatField;
    tbSaleItemReqSheet: TIBTable;
    tbSaleItemReqSheetITEM_CODE: TIBStringField;
    tbSaleItemReqSheetUOM_CD: TIBStringField;
    tbSaleItemReqSheetCUST_CODE: TIBStringField;
    tbSaleItemReqSheetMAX_ELE1: TFloatField;
    tbSaleItemReqSheetMAX_ELE2: TFloatField;
    tbSaleItemReqSheetMAX_ELE3: TFloatField;
    tbSaleItemReqSheetMAX_ELE4: TFloatField;
    tbSaleItemReqSheetMAX_ELE5: TFloatField;
    tbSaleItemReqSheetMAX_ELE6: TFloatField;
    tbSaleItemReqSheetMAX_ELE7: TFloatField;
    tbSaleItemReqSheetMAX_ELE8: TFloatField;
    tbSaleItemReqSheetMAX_ELE9: TFloatField;
    tbSaleItemReqSheetMAX_ELE10: TFloatField;
    tbSaleItemReqSheetMAX_ELE11: TFloatField;
    tbSaleItemReqSheetMAX_ELE12: TFloatField;
    tbSaleItemReqSheetMAX_ELE13: TFloatField;
    tbSaleItemReqSheetMAX_ELE14: TFloatField;
    tbSaleItemReqSheetMAX_ELE15: TFloatField;
    tbSaleItemReqSheetMIN_ELE1: TFloatField;
    tbSaleItemReqSheetMIN_ELE2: TFloatField;
    tbSaleItemReqSheetMIN_ELE3: TFloatField;
    tbSaleItemReqSheetMIN_ELE4: TFloatField;
    tbSaleItemReqSheetMIN_ELE5: TFloatField;
    tbSaleItemReqSheetMIN_ELE6: TFloatField;
    tbSaleItemReqSheetMIN_ELE7: TFloatField;
    tbSaleItemReqSheetMIN_ELE8: TFloatField;
    tbSaleItemReqSheetMIN_ELE9: TFloatField;
    tbSaleItemReqSheetMIN_ELE10: TFloatField;
    tbSaleItemReqSheetMIN_ELE11: TFloatField;
    tbSaleItemReqSheetMIN_ELE12: TFloatField;
    tbSaleItemReqSheetMIN_ELE13: TFloatField;
    tbSaleItemReqSheetMIN_ELE14: TFloatField;
    tbSaleItemReqSheetMIN_ELE15: TFloatField;
    tbSaleItemReqSheetELABEL1: TIBStringField;
    tbSaleItemReqSheetELABEL2: TIBStringField;
    tbSaleItemReqSheetELABEL3: TIBStringField;
    tbSaleItemReqSheetELABEL4: TIBStringField;
    tbSaleItemReqSheetELABEL5: TIBStringField;
    tbSaleItemReqSheetELABEL6: TIBStringField;
    tbSaleItemReqSheetELABEL7: TIBStringField;
    tbSaleItemReqSheetELABEL8: TIBStringField;
    tbSaleItemReqSheetELABEL9: TIBStringField;
    tbSaleItemReqSheetELABEL10: TIBStringField;
    tbSaleItemReqSheetELABEL11: TIBStringField;
    tbSaleItemReqSheetELABEL12: TIBStringField;
    tbSaleItemReqSheetELABEL13: TIBStringField;
    tbSaleItemReqSheetELABEL14: TIBStringField;
    tbSaleItemReqSheetELABEL15: TIBStringField;
    tbSaleItemReqSheetMIN_FLOAT_POINT1: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT2: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT3: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT4: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT5: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT6: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT7: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT8: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT9: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT10: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT11: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT12: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT13: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT1: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT2: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT3: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT4: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT5: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT6: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT7: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT8: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT9: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT10: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT11: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT12: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT13: TSmallintField;
    tbSaleItemReqSheetMIN_MASK1: TIBStringField;
    tbSaleItemReqSheetMIN_MASK2: TIBStringField;
    tbSaleItemReqSheetMIN_MASK3: TIBStringField;
    tbSaleItemReqSheetMIN_MASK4: TIBStringField;
    tbSaleItemReqSheetMIN_MASK5: TIBStringField;
    tbSaleItemReqSheetMIN_MASK6: TIBStringField;
    tbSaleItemReqSheetMIN_MASK7: TIBStringField;
    tbSaleItemReqSheetMIN_MASK8: TIBStringField;
    tbSaleItemReqSheetMIN_MASK9: TIBStringField;
    tbSaleItemReqSheetMIN_MASK10: TIBStringField;
    tbSaleItemReqSheetMIN_MASK11: TIBStringField;
    tbSaleItemReqSheetMIN_MASK12: TIBStringField;
    tbSaleItemReqSheetMIN_MASK13: TIBStringField;
    tbSaleItemReqSheetMAX_MASK1: TIBStringField;
    tbSaleItemReqSheetMAX_MASK2: TIBStringField;
    tbSaleItemReqSheetMAX_MASK3: TIBStringField;
    tbSaleItemReqSheetMAX_MASK4: TIBStringField;
    tbSaleItemReqSheetMAX_MASK5: TIBStringField;
    tbSaleItemReqSheetMAX_MASK6: TIBStringField;
    tbSaleItemReqSheetMAX_MASK7: TIBStringField;
    tbSaleItemReqSheetMAX_MASK8: TIBStringField;
    tbSaleItemReqSheetMAX_MASK9: TIBStringField;
    tbSaleItemReqSheetMAX_MASK10: TIBStringField;
    tbSaleItemReqSheetMAX_MASK11: TIBStringField;
    tbSaleItemReqSheetMAX_MASK12: TIBStringField;
    tbSaleItemReqSheetMAX_MASK13: TIBStringField;
    tbSaleItemReqSheetCUST_NAME: TIBStringField;
    qrySaleItemReqSheet: TIBQuery;
    qrySaleItemReqSheetITEM_CODE: TIBStringField;
    qrySaleItemReqSheetUOM_CD: TIBStringField;
    qrySaleItemReqSheetCUST_CODE: TIBStringField;
    qrySaleItemReqSheetMAX_ELE1: TFloatField;
    qrySaleItemReqSheetMAX_ELE2: TFloatField;
    qrySaleItemReqSheetMAX_ELE3: TFloatField;
    qrySaleItemReqSheetMAX_ELE4: TFloatField;
    qrySaleItemReqSheetMAX_ELE5: TFloatField;
    qrySaleItemReqSheetMAX_ELE6: TFloatField;
    qrySaleItemReqSheetMAX_ELE7: TFloatField;
    qrySaleItemReqSheetMAX_ELE8: TFloatField;
    qrySaleItemReqSheetMAX_ELE9: TFloatField;
    qrySaleItemReqSheetMAX_ELE10: TFloatField;
    qrySaleItemReqSheetMAX_ELE11: TFloatField;
    qrySaleItemReqSheetMAX_ELE12: TFloatField;
    qrySaleItemReqSheetMAX_ELE13: TFloatField;
    qrySaleItemReqSheetMAX_ELE14: TFloatField;
    qrySaleItemReqSheetMAX_ELE15: TFloatField;
    qrySaleItemReqSheetMIN_ELE1: TFloatField;
    qrySaleItemReqSheetMIN_ELE2: TFloatField;
    qrySaleItemReqSheetMIN_ELE3: TFloatField;
    qrySaleItemReqSheetMIN_ELE4: TFloatField;
    qrySaleItemReqSheetMIN_ELE5: TFloatField;
    qrySaleItemReqSheetMIN_ELE6: TFloatField;
    qrySaleItemReqSheetMIN_ELE7: TFloatField;
    qrySaleItemReqSheetMIN_ELE8: TFloatField;
    qrySaleItemReqSheetMIN_ELE9: TFloatField;
    qrySaleItemReqSheetMIN_ELE10: TFloatField;
    qrySaleItemReqSheetMIN_ELE11: TFloatField;
    qrySaleItemReqSheetMIN_ELE12: TFloatField;
    qrySaleItemReqSheetMIN_ELE13: TFloatField;
    qrySaleItemReqSheetMIN_ELE14: TFloatField;
    qrySaleItemReqSheetMIN_ELE15: TFloatField;
    qrySaleItemReqSheetELABEL1: TIBStringField;
    qrySaleItemReqSheetELABEL2: TIBStringField;
    qrySaleItemReqSheetELABEL3: TIBStringField;
    qrySaleItemReqSheetELABEL4: TIBStringField;
    qrySaleItemReqSheetELABEL5: TIBStringField;
    qrySaleItemReqSheetELABEL6: TIBStringField;
    qrySaleItemReqSheetELABEL7: TIBStringField;
    qrySaleItemReqSheetELABEL8: TIBStringField;
    qrySaleItemReqSheetELABEL9: TIBStringField;
    qrySaleItemReqSheetELABEL10: TIBStringField;
    qrySaleItemReqSheetELABEL11: TIBStringField;
    qrySaleItemReqSheetELABEL12: TIBStringField;
    qrySaleItemReqSheetELABEL13: TIBStringField;
    qrySaleItemReqSheetELABEL14: TIBStringField;
    qrySaleItemReqSheetELABEL15: TIBStringField;
    qrySaleItemReqSheetMIN_FLOAT_POINT1: TSmallintField;
    qrySaleItemReqSheetMIN_FLOAT_POINT2: TSmallintField;
    qrySaleItemReqSheetMIN_FLOAT_POINT3: TSmallintField;
    qrySaleItemReqSheetMIN_FLOAT_POINT4: TSmallintField;
    qrySaleItemReqSheetMIN_FLOAT_POINT5: TSmallintField;
    qrySaleItemReqSheetMIN_FLOAT_POINT6: TSmallintField;
    qrySaleItemReqSheetMIN_FLOAT_POINT7: TSmallintField;
    qrySaleItemReqSheetMIN_FLOAT_POINT8: TSmallintField;
    qrySaleItemReqSheetMIN_FLOAT_POINT9: TSmallintField;
    qrySaleItemReqSheetMIN_FLOAT_POINT10: TSmallintField;
    qrySaleItemReqSheetMIN_FLOAT_POINT11: TSmallintField;
    qrySaleItemReqSheetMIN_FLOAT_POINT12: TSmallintField;
    qrySaleItemReqSheetMIN_FLOAT_POINT13: TSmallintField;
    qrySaleItemReqSheetMAX_FLOAT_POINT1: TSmallintField;
    qrySaleItemReqSheetMAX_FLOAT_POINT2: TSmallintField;
    qrySaleItemReqSheetMAX_FLOAT_POINT3: TSmallintField;
    qrySaleItemReqSheetMAX_FLOAT_POINT4: TSmallintField;
    qrySaleItemReqSheetMAX_FLOAT_POINT5: TSmallintField;
    qrySaleItemReqSheetMAX_FLOAT_POINT6: TSmallintField;
    qrySaleItemReqSheetMAX_FLOAT_POINT7: TSmallintField;
    qrySaleItemReqSheetMAX_FLOAT_POINT8: TSmallintField;
    qrySaleItemReqSheetMAX_FLOAT_POINT9: TSmallintField;
    qrySaleItemReqSheetMAX_FLOAT_POINT10: TSmallintField;
    qrySaleItemReqSheetMAX_FLOAT_POINT11: TSmallintField;
    qrySaleItemReqSheetMAX_FLOAT_POINT12: TSmallintField;
    qrySaleItemReqSheetMAX_FLOAT_POINT13: TSmallintField;
    qrySaleItemReqSheetMIN_MASK1: TIBStringField;
    qrySaleItemReqSheetMIN_MASK2: TIBStringField;
    qrySaleItemReqSheetMIN_MASK3: TIBStringField;
    qrySaleItemReqSheetMIN_MASK4: TIBStringField;
    qrySaleItemReqSheetMIN_MASK5: TIBStringField;
    qrySaleItemReqSheetMIN_MASK6: TIBStringField;
    qrySaleItemReqSheetMIN_MASK7: TIBStringField;
    qrySaleItemReqSheetMIN_MASK8: TIBStringField;
    qrySaleItemReqSheetMIN_MASK9: TIBStringField;
    qrySaleItemReqSheetMIN_MASK10: TIBStringField;
    qrySaleItemReqSheetMIN_MASK11: TIBStringField;
    qrySaleItemReqSheetMIN_MASK12: TIBStringField;
    qrySaleItemReqSheetMIN_MASK13: TIBStringField;
    qrySaleItemReqSheetMAX_MASK1: TIBStringField;
    qrySaleItemReqSheetMAX_MASK2: TIBStringField;
    qrySaleItemReqSheetMAX_MASK3: TIBStringField;
    qrySaleItemReqSheetMAX_MASK4: TIBStringField;
    qrySaleItemReqSheetMAX_MASK5: TIBStringField;
    qrySaleItemReqSheetMAX_MASK6: TIBStringField;
    qrySaleItemReqSheetMAX_MASK7: TIBStringField;
    qrySaleItemReqSheetMAX_MASK8: TIBStringField;
    qrySaleItemReqSheetMAX_MASK9: TIBStringField;
    qrySaleItemReqSheetMAX_MASK10: TIBStringField;
    qrySaleItemReqSheetMAX_MASK11: TIBStringField;
    qrySaleItemReqSheetMAX_MASK12: TIBStringField;
    qrySaleItemReqSheetMAX_MASK13: TIBStringField;
    qrySaleItemReqSheetCUST_NAME: TIBStringField;
    tbMaterialSheetHDTOTAL_DROSS: TFloatField;
    tbMaterialSheetHDCostPerUnit: TFloatField;
    tbMaterialSheetHDRECOVERYPERCENTAGE: TFloatField;
    tbPurchaseOrderDetail: TIBTable;
    qryMaterial: TIBQuery;
    tbPurchaseOrderDetailITEM_CODE: TIBStringField;
    tbPurchaseOrderDetailLINE_NO: TSmallintField;
    tbPurchaseOrderDetailORDER_DATE: TDateTimeField;
    tbPurchaseOrderDetailSUPP_CODE: TIBStringField;
    tbPurchaseOrderDetailUOM: TIBStringField;
    tbPurchaseOrderDetailORDER_NO: TIBStringField;
    tbPurchaseOrderDetailITEM_DESCS: TIBStringField;
    tbPurchaseOrderDetailUNIT_COST: TFloatField;
    tbPurchaseOrderDetailTOTAL_AMT: TFloatField;
    tbPurchaseOrderDetailREMARKS: TIBStringField;
    tbPurchaseOrderDetailDISCS_AMT: TFloatField;
    tbPurchaseOrderDetailTAX_AMT: TFloatField;
    tbPurchaseOrderDetailBASE_AMT: TFloatField;
    tbPurchaseOrderDetailTAX_CD: TIBStringField;
    tbPurchaseOrderDetailDISCS_CD: TIBStringField;
    tbPurchaseOrderDetailQTY: TFloatField;
    tbPurchaseOrderDetailTAX_RATE: TFloatField;
    tbPurchaseOrderDetailSTATUS: TIBStringField;
    tbPurchaseOrderDetailGRN_QTY: TFloatField;
    tbPurchaseOrderDetailLOT_NO: TIBStringField;
    tbPurchaseOrderDetailGROUP_ID: TIBStringField;
    tbPurchaseOrderDetailMARKUP: TSmallintField;
    tbPurchaseOrderDetailDISCS_RATE: TFloatField;
    tbPurchaseOrderDetailUPDATE_PRICE: TFloatField;
    tbPurchaseOrderDetailUPDATE_TOTAL_AMT: TFloatField;
    tbPurchaseOrderDetailSTOCK_EMPTY: TIBStringField;
    qryMaterialSTOCK_CD: TIBStringField;
    qryMaterialEN_DESCS: TIBStringField;
    qryMaterialTH_DESCS: TIBStringField;
    qryMaterialSHORT_DESCS: TIBStringField;
    qryMaterialONHAND_QTY: TFloatField;
    qryMaterialUNIT_COST: TFloatField;
    qryMaterialTOTAL_COST: TFloatField;
    qryMaterialUOM_CD: TIBStringField;
    qryMaterialGROUP_ID: TIBStringField;
    qryMaterialRECOVERY: TFloatField;
    qryMaterialMARKED_UP: TFloatField;
    qryMaterialUPDATE_USER: TIBStringField;
    qryMaterialUPDATE_DATE: TDateTimeField;
    qryMaterialDEFAULT_ELEMENT_DETAIL: TIBStringField;
    qryMaterialCONSUMEABLE_ITEM: TIBStringField;
    dsMaterial: TDataSource;
    tbMaterialElement: TIBTable;
    tbMaterialElementSTOCK_CD: TIBStringField;
    tbMaterialElementGROUP_ID: TIBStringField;
    tbMaterialElementUOM_CD: TIBStringField;
    tbMaterialElementLOT_CD: TIBStringField;
    tbMaterialElementPURCHASE_DATE: TDateTimeField;
    tbMaterialElementELE1_PERC: TFloatField;
    tbMaterialElementELE2_PERC: TFloatField;
    tbMaterialElementELE3_PERC: TFloatField;
    tbMaterialElementELE4_PERC: TFloatField;
    tbMaterialElementELE5_PERC: TFloatField;
    tbMaterialElementELE6_PERC: TFloatField;
    tbMaterialElementELE7_PERC: TFloatField;
    tbMaterialElementELE8_PERC: TFloatField;
    tbMaterialElementELE9_PERC: TFloatField;
    tbMaterialElementELE10_PERC: TFloatField;
    tbMaterialElementELE11_PERC: TFloatField;
    tbMaterialElementELE12_PERC: TFloatField;
    tbMaterialElementELE13_PERC: TFloatField;
    tbMaterialElementACCT_CD: TIBStringField;
    qryMeltSheetFinalResult: TIBQuery;
    qryMeltSheetFinalResultE1: TFloatField;
    qryMeltSheetFinalResultE2: TFloatField;
    qryMeltSheetFinalResultE3: TFloatField;
    qryMeltSheetFinalResultE4: TFloatField;
    qryMeltSheetFinalResultE5: TFloatField;
    qryMeltSheetFinalResultE6: TFloatField;
    qryMeltSheetFinalResultE7: TFloatField;
    qryMeltSheetFinalResultE8: TFloatField;
    qryMeltSheetFinalResultE9: TFloatField;
    qryMeltSheetFinalResultE10: TFloatField;
    qryMeltSheetFinalResultE11: TFloatField;
    qryMeltSheetFinalResultE12: TFloatField;
    qryMeltSheetFinalResultE13: TFloatField;
    qryMeltSheetFinalResultRECOVERY_PERCENTAGE: TFloatField;
    qryMeltSheetFinalResultTOTAL_CHARGED: TFloatField;
    qryMeltSheetFinalResultTOTAL_RECOVERED: TFloatField;
    qryMeltSheetFinalResultTOTAL_COST: TFloatField;
    qryActiveSaleItemNAME: TIBStringField;
    qryActiveOrderLookupNAME: TIBStringField;
    tbPLElementTemplate: TIBTable;
    tbPLElementTemplateITEM_CODE: TIBStringField;
    tbPLElementTemplateUOM_CD: TIBStringField;
    tbPLElementTemplateCUST_CODE: TIBStringField;
    tbPLElementTemplateELE_PERC1: TFloatField;
    tbPLElementTemplateELE_PERC2: TFloatField;
    tbPLElementTemplateELE_PERC3: TFloatField;
    tbPLElementTemplateELE_PERC4: TFloatField;
    tbPLElementTemplateELE_PERC5: TFloatField;
    tbPLElementTemplateELE_PERC6: TFloatField;
    tbPLElementTemplateELE_PERC7: TFloatField;
    tbPLElementTemplateELE_PERC8: TFloatField;
    tbPLElementTemplateELE_PERC9: TFloatField;
    tbPLElementTemplateELE_PERC10: TFloatField;
    tbPLElementTemplateELE_PERC11: TFloatField;
    tbPLElementTemplateELE_PERC12: TFloatField;
    tbPLElementTemplateELE_PERC13: TFloatField;
    tbPLElementTemplateRECOVERY_PERC: TFloatField;
    tbPLElementTemplateUNIT_COST: TFloatField;
    tbPLElementTemplateUPDATE_USER: TIBStringField;
    tbPLElementTemplateUPDATE_DATE: TDateTimeField;
    tbDefaultElement: TIBTable;
    qryQAInspect: TIBQuery;
    qryQAInspectLOT_CD: TIBStringField;
    qryQAInspectPURCHASE_DATE: TDateTimeField;
    qryQAInspectREF_NO: TIBStringField;
    qryQAInspectREF_DATE: TDateTimeField;
    qryQAInspectSTOCK_CD: TIBStringField;
    qryQAInspectGROUP_ID: TIBStringField;
    qryQAInspectACCT_CODE: TIBStringField;
    qryQAInspectONHAND_QTY: TFloatField;
    dsQAInspect: TDataSource;
    tbQAElement: TIBTable;
    tbQAElementSTOCK_CD: TIBStringField;
    tbQAElementGROUP_ID: TIBStringField;
    tbQAElementUOM_CD: TIBStringField;
    tbQAElementLOT_CD: TIBStringField;
    tbQAElementPURCHASE_DATE: TDateTimeField;
    tbQAElementELE1_PERC: TFloatField;
    tbQAElementELE2_PERC: TFloatField;
    tbQAElementELE3_PERC: TFloatField;
    tbQAElementELE4_PERC: TFloatField;
    tbQAElementELE5_PERC: TFloatField;
    tbQAElementELE6_PERC: TFloatField;
    tbQAElementELE7_PERC: TFloatField;
    tbQAElementELE8_PERC: TFloatField;
    tbQAElementELE9_PERC: TFloatField;
    tbQAElementELE10_PERC: TFloatField;
    tbQAElementELE11_PERC: TFloatField;
    tbQAElementELE12_PERC: TFloatField;
    tbQAElementELE13_PERC: TFloatField;
    tbQAElementACCT_CD: TIBStringField;
    tbQAElementREF_NO: TIBStringField;
    tbQAElementREF_DATE: TDateTimeField;
    tbQAElementLINE_NO: TSmallintField;
    tbMaterialSheetDTREF_NO: TIBStringField;
    tbMaterialSheetDTREF_DATE: TDateTimeField;
    qryQAMeltInspect: TIBQuery;
    IBStringField1: TIBStringField;
    DateTimeField1: TDateTimeField;
    IBStringField2: TIBStringField;
    DateTimeField2: TDateTimeField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    FloatField1: TFloatField;
    dsQAMeltInspect: TDataSource;
    tbQAMeltInspect: TIBTable;
    IBStringField6: TIBStringField;
    DateTimeField3: TDateTimeField;
    SmallintField1: TSmallintField;
    DateTimeField4: TDateTimeField;
    IBStringField7: TIBStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    tbFNGReceiveHD: TIBTable;
    tbFNGReceiveDT: TIBTable;
    dsFNGReceiveHD: TDataSource;
    tbFNGReceiveHDDOC_NO: TIBStringField;
    tbFNGReceiveHDDOC_DATE: TDateTimeField;
    tbFNGReceiveHDDESCS: TIBStringField;
    tbFNGReceiveHDUPDATE_USER: TIBStringField;
    tbFNGReceiveHDUPDATE_DATE: TDateTimeField;
    tbFNGReceiveHDSTATUS: TIBStringField;
    tbFNGReceiveHDMELT_NO: TIBStringField;
    tbFNGReceiveHDITEM_CODE: TIBStringField;
    tbFNGReceiveHDMARKUP_WEIGHT1: TFloatField;
    tbFNGReceiveHDMARKUP_WEIGHT2: TFloatField;
    tbFNGReceiveHDBUNDLE_QTY: TSmallintField;
    tbFNGReceiveHDBY_PRODUCTED_ITEM: TIBStringField;
    tbFNGReceiveHDUNKNOW_MELT_FLAG: TIBStringField;
    tbFNGReceiveDTDOC_NO: TIBStringField;
    tbFNGReceiveDTDOC_DATE: TDateTimeField;
    tbFNGReceiveDTITEM_CODE: TIBStringField;
    tbFNGReceiveDTUOM_CD: TIBStringField;
    tbFNGReceiveDTLINE_NO: TSmallintField;
    tbFNGReceiveDTMELT_NO: TIBStringField;
    tbFNGReceiveDTREMELT_ITEM_FLAG: TIBStringField;
    tbFNGReceiveDTWEIGHT_QTY: TFloatField;
    tbFNGReceiveDTQTY: TFloatField;
    tbFNGReceiveDTGROUP_ID: TIBStringField;
    qryFNGReceiveUnpost: TIBQuery;
    qryFNGReceiveUnpostDOC_NO: TIBStringField;
    qryFNGReceiveUnpostDOC_DATE: TDateTimeField;
    qryFNGReceiveUnpostDESCS: TIBStringField;
    qryFNGReceiveUnpostUPDATE_USER: TIBStringField;
    qryFNGReceiveUnpostUPDATE_DATE: TDateTimeField;
    qryFNGReceiveUnpostSTATUS: TIBStringField;
    qryFNGReceiveUnpostMELT_NO: TIBStringField;
    qryFNGReceiveUnpostITEM_CODE: TIBStringField;
    qryFNGReceiveUnpostMARKUP_WEIGHT1: TFloatField;
    qryFNGReceiveUnpostMARKUP_WEIGHT2: TFloatField;
    qryFNGReceiveUnpostBUNDLE_QTY: TSmallintField;
    qryFNGReceiveUnpostBY_PRODUCTED_ITEM: TIBStringField;
    qryFNGReceiveUnpostUNKNOW_MELT_FLAG: TIBStringField;
    tbFNGAdjustHD: TIBTable;
    tbFNGAdjustDT: TIBTable;
    dsFNGAdjustHD: TDataSource;
    tbFNGAdjustHDDOC_NO: TIBStringField;
    tbFNGAdjustHDDOC_DATE: TDateTimeField;
    tbFNGAdjustHDSTATUS: TIBStringField;
    tbFNGAdjustHDDESCS: TIBStringField;
    tbFNGAdjustHDUPDATE_USER: TIBStringField;
    tbFNGAdjustHDUPDATE_DATE: TDateTimeField;
    tbFNGAdjustHDDESCS1: TIBStringField;
    tbFNGAdjustDTDOC_NO: TIBStringField;
    tbFNGAdjustDTDOC_DATE: TDateTimeField;
    tbFNGAdjustDTMELT_NO: TIBStringField;
    tbFNGAdjustDTITEM_CODE: TIBStringField;
    tbFNGAdjustDTUOM_CD: TIBStringField;
    tbFNGAdjustDTQTY: TFloatField;
    tbFNGAdjustDTBUNDLE_QTY: TFloatField;
    tbFNGAdjustDTONHAND_QTY: TFloatField;
    tbFNGAdjustDTONHAND_BUNDLE_QTY: TFloatField;
    tbFNGAdjustDTUNKNOW_MELT_FLAG: TIBStringField;
    qryFNGAdjustUnpost: TIBQuery;
    qryFNGAdjustUnpostDOC_NO: TIBStringField;
    qryFNGAdjustUnpostDOC_DATE: TDateTimeField;
    qryFNGAdjustUnpostSTATUS: TIBStringField;
    qryFNGAdjustUnpostDESCS: TIBStringField;
    qryFNGAdjustUnpostUPDATE_USER: TIBStringField;
    qryFNGAdjustUnpostUPDATE_DATE: TDateTimeField;
    qryFNGAdjustUnpostDESCS1: TIBStringField;
    qryFNGStockItem: TIBQuery;
    qryFNGStockItemITEM_CODE: TIBStringField;
    qryFNGStockItemUOM_CD: TIBStringField;
    qryFNGStockItemONHAND_QTY: TFloatField;
    qryFNGStockItemRESERVED_QTY: TFloatField;
    qryFNGStockItemCUST_CODE: TIBStringField;
    qryFNGStockItemDOC_NO: TIBStringField;
    qryFNGStockItemDOC_DATE: TDateTimeField;
    qryFNGStockItemUNIT_COST: TFloatField;
    qryFNGStockItemTOTAL_COST: TFloatField;
    qryFNGStockItemMELT_NO: TIBStringField;
    qryFNGStockItemBUNDLE_QTY: TSmallintField;
    tbFNGReturnHD: TIBTable;
    tbFNGReturnDT: TIBTable;
    qryFNGReturnUnpost: TIBQuery;
    dsFNGReturnHD: TDataSource;
    tbFNGReturnHDDOC_NO: TIBStringField;
    tbFNGReturnHDDOC_DATE: TDateTimeField;
    tbFNGReturnHDCUST_CODE: TIBStringField;
    tbFNGReturnHDMELT_NO: TIBStringField;
    tbFNGReturnHDSTATUS: TIBStringField;
    tbFNGReturnHDDESCS: TIBStringField;
    tbFNGReturnHDUPDATE_USER: TIBStringField;
    tbFNGReturnHDUPDATE_DATE: TDateTimeField;
    tbFNGReturnHDBUNDLE_QTY: TFloatField;
    tbFNGReturnHDITEM_CODE: TIBStringField;
    tbFNGReturnDTDOC_NO: TIBStringField;
    tbFNGReturnDTDOC_DATE: TDateTimeField;
    tbFNGReturnDTCUST_CODE: TIBStringField;
    tbFNGReturnDTMELT_NO: TIBStringField;
    tbFNGReturnDTUOM_CD: TIBStringField;
    tbFNGReturnDTGROUP_ID: TIBStringField;
    tbFNGReturnDTITEM_CODE: TIBStringField;
    tbFNGReturnDTQTY: TFloatField;
    tbFNGReturnDTREMELT_ITEM_FLAG: TIBStringField;
    qryFNGReturnUnpostDOC_NO: TIBStringField;
    qryFNGReturnUnpostDOC_DATE: TDateTimeField;
    qryFNGReturnUnpostCUST_CODE: TIBStringField;
    qryFNGReturnUnpostMELT_NO: TIBStringField;
    qryFNGReturnUnpostSTATUS: TIBStringField;
    qryFNGReturnUnpostDESCS: TIBStringField;
    qryFNGReturnUnpostUPDATE_USER: TIBStringField;
    qryFNGReturnUnpostUPDATE_DATE: TDateTimeField;
    qryFNGReturnUnpostBUNDLE_QTY: TFloatField;
    qryFNGReturnUnpostITEM_CODE: TIBStringField;
    tbFNGReturnHDCustomerName: TStringField;
    qryUnplanOrder: TIBQuery;
    qryUnplanOrderORDER_NO: TIBStringField;
    qryUnplanOrderORDER_DATE: TDateTimeField;
    qryUnplanOrderITEM_CODE: TIBStringField;
    qryUnplanOrderCUST_CODE: TIBStringField;
    qryUnplanOrderITEM_DESCS: TIBStringField;
    qryUnplanOrderUNIT_COST: TFloatField;
    qryUnplanOrderQTY: TFloatField;
    qryUnplanOrderDET_QTY: TFloatField;
    qryUnplanOrderSTATUS: TIBStringField;
    qryUnplanOrderPLAN_DOC: TIBStringField;
    qryUnplanOrderMELT_NO: TIBStringField;
    qryUnplanOrderLINE_NO: TSmallintField;
    qryActiveMeltSheetStock: TIBQuery;
    qryActiveMeltSheetStockORDER_NO: TIBStringField;
    qryActiveMeltSheetStockORDER_DATE: TDateTimeField;
    qryActiveMeltSheetStockSUPP_CODE: TIBStringField;
    qryActiveMeltSheetStockITEM_CODE: TIBStringField;
    qryActiveMeltSheetStockQTY: TFloatField;
    qryActiveMeltSheetStockUNIT_COST: TFloatField;
    tbPLElementTemplateMELT_NO: TIBStringField;
    dsActiveMeltSheetStock: TDataSource;
    tbDefaultElementSTOCK_CD: TIBStringField;
    tbDefaultElementGROUP_ID: TIBStringField;
    tbDefaultElementUOM_CD: TIBStringField;
    tbDefaultElementELE1_PERC: TFloatField;
    tbDefaultElementELE2_PERC: TFloatField;
    tbDefaultElementELE3_PERC: TFloatField;
    tbDefaultElementELE4_PERC: TFloatField;
    tbDefaultElementELE5_PERC: TFloatField;
    tbDefaultElementELE6_PERC: TFloatField;
    tbDefaultElementELE7_PERC: TFloatField;
    tbDefaultElementELE8_PERC: TFloatField;
    tbDefaultElementELE9_PERC: TFloatField;
    tbDefaultElementELE10_PERC: TFloatField;
    tbDefaultElementELE11_PERC: TFloatField;
    tbDefaultElementELE12_PERC: TFloatField;
    tbDefaultElementELE13_PERC: TFloatField;
    qryQAMeltInspectUOM_CD: TIBStringField;
    qryQAInspectUOM_CD: TIBStringField;
    tbCustomerRequirementNote: TIBTable;
    qryCustomer: TIBQuery;
    dsCustomer: TDataSource;
    qryCustomerDEBTOR_ACCT: TIBStringField;
    qryCustomerNAME: TIBStringField;
    qryCustomerTH_NAME: TIBStringField;
    tbCustomerRequirementNoteCUST_CODE: TIBStringField;
    tbCustomerRequirementNoteREQUIREMENTNOTE: TIBStringField;
    tbCustomerRequirementNoteUPDATE_USER: TIBStringField;
    tbCustomerRequirementNoteUPDATE_DATE: TDateTimeField;
    qryCustRequirementView: TIBQuery;
    qryCustRequirementViewCUST_CODE: TIBStringField;
    qryCustRequirementViewREQUIREMENTNOTE: TIBStringField;
    qryCustRequirementViewUPDATE_USER: TIBStringField;
    qryCustRequirementViewUPDATE_DATE: TDateTimeField;
    tbSaleItemReqSheetMIN_ELE16: TFloatField;
    tbSaleItemReqSheetMIN_ELE17: TFloatField;
    tbSaleItemReqSheetMIN_ELE18: TFloatField;
    tbSaleItemReqSheetMIN_ELE19: TFloatField;
    tbSaleItemReqSheetMIN_ELE20: TFloatField;
    tbSaleItemReqSheetMIN_ELE21: TFloatField;
    tbSaleItemReqSheetMIN_ELE22: TFloatField;
    tbSaleItemReqSheetMIN_ELE23: TFloatField;
    tbSaleItemReqSheetMIN_ELE24: TFloatField;
    tbSaleItemReqSheetMIN_ELE25: TFloatField;
    tbSaleItemReqSheetMAX_ELE16: TFloatField;
    tbSaleItemReqSheetMAX_ELE17: TFloatField;
    tbSaleItemReqSheetMAX_ELE18: TFloatField;
    tbSaleItemReqSheetMAX_ELE19: TFloatField;
    tbSaleItemReqSheetMAX_ELE20: TFloatField;
    tbSaleItemReqSheetMAX_ELE21: TFloatField;
    tbSaleItemReqSheetMAX_ELE22: TFloatField;
    tbSaleItemReqSheetMAX_ELE23: TFloatField;
    tbSaleItemReqSheetMAX_ELE24: TFloatField;
    tbSaleItemReqSheetMAX_ELE25: TFloatField;
    tbSaleItemReqSheetELABEL16: TIBStringField;
    tbSaleItemReqSheetELABEL17: TIBStringField;
    tbSaleItemReqSheetELABEL18: TIBStringField;
    tbSaleItemReqSheetELABEL19: TIBStringField;
    tbSaleItemReqSheetELABEL20: TIBStringField;
    tbSaleItemReqSheetELABEL21: TIBStringField;
    tbSaleItemReqSheetELABEL22: TIBStringField;
    tbSaleItemReqSheetELABEL23: TIBStringField;
    tbSaleItemReqSheetELABEL24: TIBStringField;
    tbSaleItemReqSheetELABEL25: TIBStringField;
    tbSaleItemReqSheetELE1_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE2_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE3_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE4_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE5_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE6_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE7_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE8_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE9_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE10_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE11_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE12_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE13_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE14_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE15_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE16_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE17_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE18_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE19_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE20_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE21_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE22_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE23_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE24_ACTIVE: TIBStringField;
    tbSaleItemReqSheetELE25_ACTIVE: TIBStringField;
    tbSaleItemReqSheetMIN_FLOAT_POINT14: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT15: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT16: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT17: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT18: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT19: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT20: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT21: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT22: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT23: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT24: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT25: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT14: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT15: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT16: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT17: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT18: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT19: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT20: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT21: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT22: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT23: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT24: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT25: TSmallintField;
    tbSaleItemReqSheetMIN_MASK14: TIBStringField;
    tbSaleItemReqSheetMIN_MASK15: TIBStringField;
    tbSaleItemReqSheetMIN_MASK16: TIBStringField;
    tbSaleItemReqSheetMIN_MASK17: TIBStringField;
    tbSaleItemReqSheetMIN_MASK18: TIBStringField;
    tbSaleItemReqSheetMIN_MASK19: TIBStringField;
    tbSaleItemReqSheetMIN_MASK20: TIBStringField;
    tbSaleItemReqSheetMIN_MASK21: TIBStringField;
    tbSaleItemReqSheetMIN_MASK22: TIBStringField;
    tbSaleItemReqSheetMIN_MASK23: TIBStringField;
    tbSaleItemReqSheetMIN_MASK24: TIBStringField;
    tbSaleItemReqSheetMIN_MASK25: TIBStringField;
    tbSaleItemReqSheetMAX_MASK14: TIBStringField;
    tbSaleItemReqSheetMAX_MASK15: TIBStringField;
    tbSaleItemReqSheetMAX_MASK16: TIBStringField;
    tbSaleItemReqSheetMAX_MASK17: TIBStringField;
    tbSaleItemReqSheetMAX_MASK18: TIBStringField;
    tbSaleItemReqSheetMAX_MASK19: TIBStringField;
    tbSaleItemReqSheetMAX_MASK20: TIBStringField;
    tbSaleItemReqSheetMAX_MASK21: TIBStringField;
    tbSaleItemReqSheetMAX_MASK22: TIBStringField;
    tbSaleItemReqSheetMAX_MASK23: TIBStringField;
    tbSaleItemReqSheetMAX_MASK24: TIBStringField;
    tbSaleItemReqSheetMAX_MASK25: TIBStringField;
    tbSaleItemReqSheetPELE1_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE2_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE3_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE4_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE5_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE6_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE7_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE8_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE9_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE10_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE11_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE12_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE13_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE14_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE15_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE16_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE17_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE18_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE19_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE20_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE21_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE22_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE23_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE24_ACTIVE: TIBStringField;
    tbSaleItemReqSheetPELE25_ACTIVE: TIBStringField;
    tbMaterialSheetDTELE_PERC14: TFloatField;
    tbMaterialSheetDTELE_PERC15: TFloatField;
    tbMaterialSheetDTELE_PERC16: TFloatField;
    tbMaterialSheetDTELE_PERC17: TFloatField;
    tbMaterialSheetDTELE_PERC18: TFloatField;
    tbMaterialSheetDTELE_PERC19: TFloatField;
    tbMaterialSheetDTELE_PERC20: TFloatField;
    tbMaterialSheetDTELE_PERC21: TFloatField;
    tbMaterialSheetDTELE_PERC22: TFloatField;
    tbMaterialSheetDTELE_PERC23: TFloatField;
    tbMaterialSheetDTELE_PERC24: TFloatField;
    tbMaterialSheetDTELE_PERC25: TFloatField;
    tbMaterialSheetHDFLB14: TFloatField;
    tbMaterialSheetHDFLB15: TFloatField;
    tbMaterialSheetHDFLB16: TFloatField;
    tbMaterialSheetHDFLB17: TFloatField;
    tbMaterialSheetHDFLB18: TFloatField;
    tbMaterialSheetHDFLB19: TFloatField;
    tbMaterialSheetHDFLB20: TFloatField;
    tbMaterialSheetHDFLB21: TFloatField;
    tbMaterialSheetHDFLB22: TFloatField;
    tbMaterialSheetHDFLB23: TFloatField;
    tbMaterialSheetHDFLB24: TFloatField;
    tbMaterialSheetHDFLB25: TFloatField;
    tbDefaultElementELE14_PERC: TFloatField;
    tbDefaultElementELE15_PERC: TFloatField;
    tbDefaultElementELE16_PERC: TFloatField;
    tbDefaultElementELE17_PERC: TFloatField;
    tbDefaultElementELE18_PERC: TFloatField;
    tbDefaultElementELE19_PERC: TFloatField;
    tbDefaultElementELE20_PERC: TFloatField;
    tbDefaultElementELE21_PERC: TFloatField;
    tbDefaultElementELE22_PERC: TFloatField;
    tbDefaultElementELE23_PERC: TFloatField;
    tbDefaultElementELE24_PERC: TFloatField;
    tbDefaultElementELE25_PERC: TFloatField;
    qryMeltSheetFinalResultE14: TFloatField;
    qryMeltSheetFinalResultE15: TFloatField;
    qryMeltSheetFinalResultE16: TFloatField;
    qryMeltSheetFinalResultE17: TFloatField;
    qryMeltSheetFinalResultE18: TFloatField;
    qryMeltSheetFinalResultE19: TFloatField;
    qryMeltSheetFinalResultE20: TFloatField;
    qryMeltSheetFinalResultE21: TFloatField;
    qryMeltSheetFinalResultE22: TFloatField;
    qryMeltSheetFinalResultE23: TFloatField;
    qryMeltSheetFinalResultE24: TFloatField;
    tbQAElementELE14_PERC: TFloatField;
    tbQAElementELE15_PERC: TFloatField;
    tbQAElementELE16_PERC: TFloatField;
    tbQAElementELE17_PERC: TFloatField;
    tbQAElementELE18_PERC: TFloatField;
    tbQAElementELE19_PERC: TFloatField;
    tbQAElementELE20_PERC: TFloatField;
    tbQAElementELE21_PERC: TFloatField;
    tbQAElementELE22_PERC: TFloatField;
    tbQAElementELE23_PERC: TFloatField;
    tbQAElementELE24_PERC: TFloatField;
    tbQAElementELE25_PERC: TFloatField;
    tbQAMeltInspectELE14_PERC: TFloatField;
    tbQAMeltInspectELE15_PERC: TFloatField;
    tbQAMeltInspectELE16_PERC: TFloatField;
    tbQAMeltInspectELE17_PERC: TFloatField;
    tbQAMeltInspectELE18_PERC: TFloatField;
    tbQAMeltInspectELE19_PERC: TFloatField;
    tbQAMeltInspectELE20_PERC: TFloatField;
    tbQAMeltInspectELE21_PERC: TFloatField;
    tbQAMeltInspectELE22_PERC: TFloatField;
    tbQAMeltInspectELE23_PERC: TFloatField;
    tbQAMeltInspectELE24_PERC: TFloatField;
    tbQAMeltInspectELE25_PERC: TFloatField;
    tbMaterialElementREF_NO: TIBStringField;
    tbMaterialElementREF_DATE: TDateTimeField;
    tbMaterialElementLINE_NO: TSmallintField;
    tbMaterialElementELE14_PERC: TFloatField;
    tbMaterialElementELE15_PERC: TFloatField;
    tbMaterialElementELE16_PERC: TFloatField;
    tbMaterialElementELE17_PERC: TFloatField;
    tbMaterialElementELE18_PERC: TFloatField;
    tbMaterialElementELE19_PERC: TFloatField;
    tbMaterialElementELE20_PERC: TFloatField;
    tbMaterialElementELE21_PERC: TFloatField;
    tbMaterialElementELE22_PERC: TFloatField;
    tbMaterialElementELE23_PERC: TFloatField;
    tbMaterialElementELE24_PERC: TFloatField;
    tbMaterialElementELE25_PERC: TFloatField;
    tbPLElementTemplateELE_PERC14: TFloatField;
    tbPLElementTemplateELE_PERC15: TFloatField;
    tbPLElementTemplateELE_PERC16: TFloatField;
    tbPLElementTemplateELE_PERC17: TFloatField;
    tbPLElementTemplateELE_PERC18: TFloatField;
    tbPLElementTemplateELE_PERC19: TFloatField;
    tbPLElementTemplateELE_PERC20: TFloatField;
    tbPLElementTemplateELE_PERC21: TFloatField;
    tbPLElementTemplateELE_PERC22: TFloatField;
    tbPLElementTemplateELE_PERC23: TFloatField;
    tbPLElementTemplateELE_PERC24: TFloatField;
    tbPLElementTemplateELE_PERC25: TFloatField;
    tbElementELEMENT_LOCKED: TIBStringField;
    tbElementELEMENT_ACTIVE: TIBStringField;
    tbElementELEMENT_CONTROLED: TIBStringField;
    spGenMeltSummaryReport2012: TIBStoredProc;
    procedure tbProplanHDNewRecord(DataSet: TDataSet);
    procedure tbProplanHDBeforePost(DataSet: TDataSet);
    procedure tbProplanDTBeforeInsert(DataSet: TDataSet);
    procedure tbProplanDTORDER_NOChange(Sender: TField);
    procedure tbProplanDTNewRecord(DataSet: TDataSet);
    procedure tbProplanDTCUST_CODEChange(Sender: TField);
    procedure tbProplanDTSTOCK_ITEM_CODEChange(Sender: TField);
    procedure tbProplanDTBeforeDelete(DataSet: TDataSet);
    procedure tbProplanDTAfterDelete(DataSet: TDataSet);
    procedure tbProplanDTBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure tbMaterialSheetHDBeforePost(DataSet: TDataSet);
    procedure tbMaterialSheetHDMELT_NOChange(Sender: TField);
    procedure tbMaterialSheetDTSTOCK_CODEChange(Sender: TField);
    procedure tbMaterialSheetDTLOT_NOChange(Sender: TField);
    procedure tbMaterialSheetDTCHARGED_WEIGHTChange(Sender: TField);
    procedure tbMaterialSheetDTREF_MELT_NOChange(Sender: TField);
    procedure tbMaterialSheetDTLAST_MELT_ITEMChange(Sender: TField);
    procedure tbMaterialSheetDTAfterPost(DataSet: TDataSet);
    procedure tbMaterialSheetHDCalcFields(DataSet: TDataSet);
    procedure tbMaterialSheetDTELE_PERC1Change(Sender: TField);
    procedure tbMaterialSheetDTBeforeInsert(DataSet: TDataSet);
    procedure tbQAElementAfterOpen(DataSet: TDataSet);
    procedure tbQAElementELE1_PERCChange(Sender: TField);
    procedure qryQAInspectAfterOpen(DataSet: TDataSet);
    procedure tbFNGReceiveHDNewRecord(DataSet: TDataSet);
    procedure tbFNGReceiveHDBeforePost(DataSet: TDataSet);
    procedure tbFNGReceiveDTNewRecord(DataSet: TDataSet);
    procedure tbFNGReceiveDTWEIGHT_QTYChange(Sender: TField);
    procedure tbFNGReceiveDTREMELT_ITEM_FLAGChange(Sender: TField);
    procedure tbFNGAdjustHDNewRecord(DataSet: TDataSet);
    procedure tbFNGAdjustHDBeforePost(DataSet: TDataSet);
    procedure tbFNGAdjustDTNewRecord(DataSet: TDataSet);
    procedure tbFNGAdjustDTMELT_NOChange(Sender: TField);
    procedure tbFNGReturnHDNewRecord(DataSet: TDataSet);
    procedure tbFNGReturnHDBeforePost(DataSet: TDataSet);
    procedure tbFNGReturnHDMELT_NOChange(Sender: TField);
    procedure tbFNGReturnDTREMELT_ITEM_FLAGChange(Sender: TField);
    procedure tbFNGReturnDTNewRecord(DataSet: TDataSet);
    procedure tbFNGReceiveHDMELT_NOChange(Sender: TField);
    procedure tbPLElementTemplateAfterOpen(DataSet: TDataSet);
    procedure tbMaterialSheetDTAfterScroll(DataSet: TDataSet);
    procedure tbMaterialSheetHDNewRecord(DataSet: TDataSet);
    procedure tbMaterialSheetDTDESCSChange(Sender: TField);
    procedure tbMaterialSheetDTBeforePost(DataSet: TDataSet);
    procedure tbMaterialSheetDTAfterOpen(DataSet: TDataSet);
    procedure tbMaterialSheetDTAfterDelete(DataSet: TDataSet);
    procedure tbQAElementNewRecord(DataSet: TDataSet);
    procedure tbMaterialSheetDTUNIT_COSTChange(Sender: TField);
    procedure tbCustomerRequirementNoteAfterOpen(DataSet: TDataSet);
    procedure tbCustomerRequirementNoteAfterClose(DataSet: TDataSet);
    procedure tbCustomerRequirementNoteBeforePost(DataSet: TDataSet);
    procedure tbProplanDTMELT_NOChange(Sender: TField);
    procedure tbQAMeltInspectBeforePost(DataSet: TDataSet);
    procedure tbQAElementBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    lastLineNo:integer;
    ElementItems:TList;
    activeStockCode:string;
    isDefaultElementItem:boolean     ;
    cacheMeltSheetRemark:string ;//8 June,2011

    procedure createElementItem;
  public
  LastGlxID:   integer;
    { Public declarations }

    function generateMelt(aplandoc:string;aplandate:tdatetime;ameltsuffix:string;acap:double;asmelt,aemelt:integer):boolean;
    function generateMeltExec(aplandoc:string;aplandate:tdatetime;ameltsuffix:string;acap:double;asmelt,aemelt:integer):boolean;
     //  to swap all order,item,customer information
    function swapItem(asourceItem:TProductionPlanItem; atargetItem:TProductionPlanItem):boolean;
    function deleteItem(aSourceItem:TProductionPlanItem):boolean;
    function synchronizeLineIndex(alineno:Integer;aoption:integer;dataset:TDataset):boolean;
    //19 Jan,2011
    function   moveItem(asourceItem:TProductionPlanItem; aTargetLine:integer):boolean;

    //8 Jan,2011 merge all melt detial from amergedocnO TO asourcedocno
    function mergePlan(asourceDOcNo:string;amergeDocNo:string):boolean;
    function isPlanDocExist(aDocNo:string):boolean;


    function isExistMeltNo(ameltno:string):boolean;



    FUNCTION createProductionItem(aplandoc,ameltno:string):TProductionPlanItem;

    function getElementItems:TList;
    function getMeltSheetLineNo(aplandoc,ameltno:string; aGLX:iNTEGER):Integer;

    function deleteMeltSheetByGroup(aplandoc,ameltno:string; aGLX:iNTEGER) :boolean;


    function updateFinalResult(DataSet:TDataSet):boolean;
     //to update status to PL_RAWMAT_SHEET_HD   9 Feb,2011
    function updateMeltSheetStatus(aPlanDoc,AmeltNo,astatus:string):boolean;
    //delete from pl_rawmat_sheet_hd
    function deleteMeltSheet(aPlanDoc,AmeltNo:string):boolean;


    //1 March,2010
    function closeProductoinPlan(aplanDoc,aplanDate:string)     :boolean;


    //FINISHED GOODS Management 16 March,2011
    function PostFinishedGoodsReceive(adocNo,adocDate:String):boolean;

    
    //FINISHED GOODS Management 16 March,2011
    function PostFinishedGoodsAdjust(adocNo,adocDate:String):boolean;


    function PostFinishedGoodsReturn(adocNo,adocDate:String):boolean;


    //4 April,2011
    function saveTemplateData(MeltDataSet:TDataSet):boolean;

    //6 april 2011 to import reuse template data
    function ImportTemplateData(MeltDataSet:TDataSet;ChargedWeight:Double):boolean;
    //
    function setElementDisplayLabel(Dataset:TDataSet;aField:string):boolean;


    {return planing document found with matched melt_prefix}

    function getPlaningDocumentByMeltSuffix(asuffix:String)   :String;
  end;

var
  ProductionDM: TProductionDM;
  ProductionItem,productionDeleletedItem:TProductionPlanItem;
  elementitem:TElementItem    ;

implementation

uses DateUtils, Math;

{$R *.dfm}

procedure TProductionDM.tbProplanHDNewRecord(DataSet: TDataSet);
begin
  inherited;
  try
  with dataset do
  begin
     Fieldbyname('plan_date').AsDateTime :=date;
     FieldByName('TRX_TYPE').AsString := 'PL';
     Fieldbyname('ISSUE_BY').AsString :=' ' ;
     Fieldbyname('DESCS').AsString :=' ';
     Fieldbyname('STATUS').Asstring :='P';
     FieldByName('REF_NO').AsString :=' ';
     Fieldbyname('REF_DATE').AsDateTime :=date;
     Fieldbyname('START_MELT_NO').ASiNTEGER :=1;
     Fieldbyname('END_MELT_NO').AsInteger :=1;
     Fieldbyname('CAPACITY').AsFloat :=15000;
     Fieldbyname('DIST_TO').AsString :='';
     Fieldbyname('WORK_START_TIME').AsDateTime :=now;
     Fieldbyname('UPDATE_MELT_NO').AsInteger :=1;
  end;
  except on e:exception do
    errorex('Could not initialize plan values'+e.Message);
  end;
end;

procedure TProductionDM.tbProplanHDBeforePost(DataSet: TDataSet);
begin
  inherited;
  ACTIVEUSER := WarehouseDataManager.User.userid;
  dataset.FieldByName('PMONTH').AsInteger :=  MonthOf(dataset.Fieldbyname('PLAN_DATE').aSDATETIME);
  dataset.Fieldbyname('PYEAR').AsInteger :=   YearOf(dataset.Fieldbyname('PLAN_DATE').aSDATETIME) ;
  updateModifiedRecord(DATASET);
end;

procedure TProductionDM.tbProplanDTBeforeInsert(DataSet: TDataSet);
begin
  inherited;
//  DATASET.Last;
  lastLineNo:=DataSet.Fieldbyname('line_no').AsiNTEGER;
end;


 {**NOTE: There will always an error call direct to IBStoreproc. please use native sql to call instead **}
function TProductionDM.generateMelt(aplandoc:string;aplandate:tdatetime;ameltsuffix:string;acap:double;asmelt,aemelt:integer):boolean;
   procedure handleexception(e:exception);
   begin
      errorex('Error while generating melt sheet'+e.Message);
      result:=false;
   end;
begin
  result:=false;
  try
    spGenerateMelt.Close;
    spGenerateMelt.ParamByName('ADOC_NO').Value:=aplandoc;
    spGenerateMelt.ParamByName('ADOC_date').Value:=aplandate;
    spGenerateMelt.ParamByName('Amelt_suffix').Value:=ameltsuffix;
    spGenerateMelt.ParamByName('acap').Value:=acap;
    spGenerateMelt.ParamByName('astart_melt').Value:=asmelt;
    spGenerateMelt.ParamByName('atotal_melt').Value:=aemelt;
    spGenerateMelt.ExecProc;
    result:=true;
  except on e:exception do
  handleexception(e);
  end;
end;


function TProductionDM.generateMeltExec(aplandoc:string;aplandate:tdatetime;ameltsuffix:string;acap:double;asmelt,aemelt:integer):boolean;
 procedure handleexception(e:exception);
   begin
      errorex('Error while generating melt sheet'+e.Message);
      result:=false;
   end;
begin
  result:=false;
  try
    qryAdhoc.Close;
    qryAdhoc.SQL.Text :='EXECUTE PROCEDURE x_pl_get_melt '+quotedStr(aplandoc)+','+#13+
                        QuotedStr(FormatDateTime('mm/dd/yyyy',aplandate)  ) +','+#13+
                        quotedstr(ameltsuffix)+','+#13+
                        FloatToStr(acap)+','+#13+
                        IntToStr(asmelt)+','+#13+
                        InttOsTR(aemelt);
    qryAdhoc.ExecSQL;
    result:=true;
  except on e:exception do
  handleexception(e);
  end;
end;


function TProductionDM.swapItem(asourceItem:TProductionPlanItem; atargetItem:TProductionPlanItem):boolean;
   procedure handleException(e:exception);
   begin
     ErrorEx('Could not update source or target item '+e.Message);
     result:=false;
   end;
begin
   result:=false;
   //1.update source melt with target info
   try
     qryAdhoc.Close;
     qryAdhoc.SQL.Text :='update pl_pro_plan_dt set order_no='+QuotedStr(atargetitem.orderno)+#13+
                        ', order_date='+quotedstr(FormatDateTime('mm/dd/yyyy',atargetitem.orderdate))+#13+
                        ',cust_code='+quotedstr(atargetitem.custcode)+#13+
                        ',cust_name='+quotedstr(atargetitem.custname)+#13+
                        ',item_code='+quotedstr(atargetitem.itemcode)+#13+
                        ',item_descs='+quotedstr(atargetitem.itemdescs) +#13+
                        'where plan_doc='+quotedstr(tbProplanDT.Fieldbyname('PLAN_DOC').AsString)+#13+
                        'and melt_no='+QuotedStr(asourceitem.meltno);
      DEBUG(' UPDATE SQL='+ qryAdhoc.SQL.Text) ;
      qryAdhoc.ExecSQL;

   except on e: exception   do
    handleException(e);
   end;

   //2.update target melt with source info.
   try
     qryAdhoc.Close;
     qryAdhoc.SQL.Text :='update pl_pro_plan_dt set order_no='+QuotedStr(asourceitem.orderno)+#13+
                        ', order_date='+quotedstr(FormatDateTime('mm/dd/yyyy',asourceitem.orderdate))+#13+
                        ',cust_code='+quotedstr(asourceitem.custcode)+#13+
                        ',cust_name='+quotedstr(asourceitem.custname)+#13+
                        ',item_code='+quotedstr(asourceitem.itemcode)+#13+
                        ',item_descs='+quotedstr(asourceitem.itemdescs) +#13+
                        'where plan_doc='+quotedstr(tbProplanDT.Fieldbyname('PLAN_DOC').AsString)+#13+
                        'and melt_no='+quotedstr(atargetitem.meltno);
          qryAdhoc.ExecSQL;
   except on e: exception   do
    handleException(e);
   end;

//
end;
function TProductionDM.deleteItem(aSourceItem:TProductionPlanItem):boolean;
begin
  result:=false;
//
end;



procedure TProductionDM.tbProplanDTORDER_NOChange(Sender: TField);
begin

  with tbProplanDT do
  begin
   if ( Fieldbyname('STOCK_FLAG').AsString  ='N') then
   begin
     Fieldbyname('CUST_CODE').AsString :=  qryActiveOrderLookup.Fieldbyname('CUST_CODE').AsString;
     Fieldbyname('ORDER_date').AsDateTime := qryActiveOrderLookup.Fieldbyname('ORDER_DATE').AsDateTime;
     Fieldbyname('ITEM_CODE').AsString := qryActiveOrderLookup.Fieldbyname('ITEM_CODE').AsString;
     Fieldbyname('ITEM_DESCS').AsString :=qryActiveOrderLookup.Fieldbyname('ITEM_DESCS').AsString;
     Fieldbyname('UOM_CD').AsString :=qryActiveOrderLookup.Fieldbyname('UOM').AsString;
   end;
  end;

end;

procedure TProductionDM.tbProplanDTNewRecord(DataSet: TDataSet);
begin
  with dataset do
  begin
    Fieldbyname('STOCK_FLAG').AsString :='N';
    Fieldbyname('END_MELT_FLAG').AsString :='N';
    Fieldbyname('TRX_TYPE').AsString :='PL';
    Fieldbyname('STATUS').AsString :='P';
    Fieldbyname('FOR_TIME').AsDateTime :=now;
    Fieldbyname('ESTIMATED_WEIGHT').AsFloat:= tbProplanHD.Fieldbyname('CAPACITY').AsFloat;
    Fieldbyname('LINE_NO').AsInteger  := lastlineno +1;
    if (FieldByName('LINE_NO').AsInteger <10) then
      Fieldbyname('melt_no').aSstRING := '0'+iNTTOSTR(Fieldbyname('LINE_NO').AsInteger)+tbProplanHD.Fieldbyname('melt_prefix').AsString
      else  Fieldbyname('melt_no').aSstRING :=  iNTTOSTR(Fieldbyname('LINE_NO').AsInteger)+tbProplanHD.Fieldbyname('melt_prefix').AsString;
    Fieldbyname('SCHEDULE_DATE').AsDateTime :=date;
  end;
end;

procedure TProductionDM.tbProplanDTCUST_CODEChange(Sender: TField);
begin
  tbProplanDTCUST_NAME.AsString :=  tbProplanDTName.AsSTRING;

end;

procedure TProductionDM.tbProplanDTSTOCK_ITEM_CODEChange(Sender: TField);
begin
  inherited;
 with tbProplanDT do
  BEGIN
    if ( Fieldbyname('STOCK_FLAG').AsString  ='Y') then
    begin
      Fieldbyname('ITEM_CODE').AsString := qryActiveSaleItem.Fieldbyname('ITEM_CODE').AsString;
      Fieldbyname('ITEM_DESCS').AsString :=qryActiveSaleItem.Fieldbyname('DESCS').AssTRING;
      Fieldbyname('ORDER_NO').AsString :='STOCK';
      Fieldbyname('ORDER_DATE').AsDateTime :=date;
      Fieldbyname('CUST_CODE').AsString :=qryActiveSaleItem.Fieldbyname('CUST_CODE').AsString;
      Fieldbyname('UOM_CD').AsString :=qryActiveSaleItem.Fieldbyname('UOM_CD').AsString;
    end;
  END;
end;

procedure TProductionDM.tbProplanDTBeforeDelete(DataSet: TDataSet);
begin
  productionDeleletedItem := nil;
  productionDeleletedItem := TProductionPlanItem.Create;
  WITH DataSet do
  begin

    productionDeleletedItem.lineno := Fieldbyname('LINE_NO').AsInteger;
  end;

end;


function TProductionDM.synchronizeLineIndex(alineno:Integer;aoption:integer;dataset:TDataset):boolean;
var direction,operation:String;
  procedure handleexception(e:exception) ;
  begin
     errorex('Error while synchronizing line index '+e.Message);
     result:=false;
  end;
begin
  result:=true;
  TRY
    direction :='AND LINE_NO >'+IntToStr(alineno);
    operation :='set line_no = line_no +'+inttostr(aoption);

   qryAdhoc.Close;
    qryAdhoc.SQL.text :='UPDATE PL_PRO_PLAN_DT'+#13+
                    operation+#13+
                    'where plan_doc='+quotedStr(dataSet.Fieldbyname('PLAN_doc').AsString)+#13+ direction;
   qryAdhoc.ExecSQL;
  EXCEPT ON E:EXCEPTION DO
    handleexception(e);
  END;
end;

procedure TProductionDM.tbProplanDTAfterDelete(DataSet: TDataSet);
begin

 synchronizeLineIndex(productionDeleletedItem.lineno,-1,DataSet)  ;
end;

procedure TProductionDM.tbProplanDTBeforePost(DataSet: TDataSet);
begin
  inherited;
 synchronizeLineIndex(DataSet.Fieldbyname('LINE_NO').AsInteger,1,DataSet)  ;
end;


function TProductionDM.isExistMeltNo(ameltno:string):boolean;
begin
   qryAdhoc.Close;
   qryAdhoc.SQL.text :='SELECT COUNT(*) FROM PL_PRO_PLAN_DT WHERE MELT_NO='+QuotedStr(AmeltNo)+#13+
                    ' and plan_doc='+quotedstr(tbProplanDT.Fieldbyname('PLAN_DOC').AsString);
   qryAdhoc.Open;
   result:= (qryAdhoc.Fields[0].AsInteger >0)  ;
   qryAdhoc.close;
end;


FUNCTION TProductionDM.createProductionItem(aplandoc,ameltno:string):TProductionPlanItem;
var item:  TProductionPlanItem;
begin
   qryProPlanItem.Close;
   qryProPlanItem.ParamByName('pplandoc').value:=aplandoc;
   qryProPlanItem.ParamByName('pmeltno').value:=ameltno;
   qryProPlanItem.Open;
   if (qryProPlanItem.RecordCount=0) then raise Exception.Create('Could not create production item record not found for '+ameltno)
   else
   begin
    item :=TProductionPlanItem.Create;
    WITH  qryProPlanItem DO
    begin
        item.meltno := Fieldbyname('melt_no').AsString;
        item.orderno :=Fieldbyname('order_no').AsString;
        ITEM.orderdate :=Fieldbyname('order_date').AsDateTime;
        item.itemcode :=Fieldbyname('item_code').AsString;
        item.itemdescs :=Fieldbyname('item_descs').AsString;
        item.custcode :=Fieldbyname('cust_code').AsString;
        item.custname :=Fieldbyname('cust_name').AsString;
    end;

   end ;
      result:=item;
end;


    //8 Jan,2011 merge all melt detial from amergedocnO TO asourcedocno
function TProductionDM.mergePlan(asourceDOcNo:string;amergeDocNo:string):boolean;
  procedure handleError(e:exception);
  begin
      errorex('Could not merge plan'+e.Message);
      result:=false;
  end;

  Var planItem:TProductionDocument;
begin
    result:=false;
    planItem :=   TProductionDocument.CREATE;
    qryProplanHeaderItem.close;
    qryProplanHeaderitem.ParamByName('PPLANDOC').Value := asourceDOcNo;
    qryProplanHeaderitem.Open;
    if (qryProplanHeaderitem.RecordCount <=0) then
    begin
       result :=false  ;
       planItem := nil;
       raise Exception.Create('Error source could not be found');
    end else
    begin                                                                                                                                   ///
      planItem.plandoc := asourceDOcNo;
      planitem.plandDate  := qryProplanHeaderitem.Fieldbyname('PLAN_DATE').AsDateTime;
      try
        qryAdhoc.Close;
        qryAdhoc.sql.Text :='update pl_pro_plan_dt set plan_doc='+quotedstr(asourcedocno)  +#13+
                            ', plan_date='+QuotedStr(FormatDateTime('mm/dd/yyyy',planitem.plandDate)) +#13+
                            'where plan_doc='+quotedstr(amergeDocNo);
        qryAdhoc.ExecSQL;
        result:=true;
         planItem:=nil;
      except on e:exception do
        handleerror(e);
      end;
    end;


end;

function TProductionDM.isPlanDocExist(aDocNo:string):boolean;
begin
   qryProplanHeaderItem.close;
   qryProplanHeaderiTEM.ParamByName('PPLANDOC').Value:=adocno;
   qryProplanHeaderItem.Open;
   result :=    (qryProplanHeaderItem.RecordCount =1);
end;


function  TProductionDM.moveItem(asourceitem:TProductionplanItem; atargetline:integer):boolean;
  procedure handleError(e:exception);
  begin
    errorex('Could not move line item'+e.Message);
  end;
begin
   result :=false;
   try
       qryAdhoc.Close;
       qryAdhoc.sql.Text :='update pl_pro_plan_dt set line_no='+IntTOstr(atargetline)  +#13+
                ' where plan_date='+QuotedStr(FormatDateTime('mm/dd/yyyy',asourceitem.plandate)) +#13+
                ' and plan_doc='+quotedstr(asourceitem.plandoc)  +#13+
                ' and melt_no ='+quotedstr(asourceitem.meltno);
        qryAdhoc.ExecSQL;
        result:=true;

      except on e:exception do
        handleerror(e);
      end

end;

procedure TProductionDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  setDisplayFormat;
  ElementItems := TList.Create;
  createElementItem;
end;

procedure TProductionDM.createElementItem;
var item :TElementItem;
begin
    with tbElement do
    begin
     open;
      first;
      while not eof do
      begin
        item :=    TElementItem.Create;
        item.id := Fieldbyname('RUN_NO').AsInteger;
        item.Name := Fieldbyname('ELEMENT_CODE').AsString ;
        item.elementactive := (Fieldbyname('ELEMENT_ACTIVE').asstring='Y') ;
         item.prefix:='%';
         ElementItems.Add(item) ;
        item := nil;
       next;
      end

    end;
end;

procedure TProductionDM.DataModuleDestroy(Sender: TObject);
begin
  ElementItems := nil ;
  inherited;

end;

function   TProductionDM.getElementItems:tlIST;
begin
  result:= ElementItems;
end;

procedure TProductionDM.tbMaterialSheetHDBeforePost(DataSet: TDataSet);
begin
  inherited;
  activeUser := WarehouseDataManager.User.userid;
  dataset.FieldByName('ISSUE_BY').AsString := activeUser;
  updateModifiedRecord(dataset);
end;

procedure TProductionDM.tbMaterialSheetHDMELT_NOChange(Sender: TField);
begin
  if (Sender.AsString <> '') then
  begin
    with   tbMaterialSheetHD do
    begin
       Fieldbyname('ITEM_CODE').AsString := qryActiveMeltNo.Fieldbyname('ITEM_CODE').AsString;
       Fieldbyname('ITEM_DESCS').AsString :=qryActiveMeltNo.Fieldbyname('ITEM_DESCS').AsString;
       Fieldbyname('CUST_CODE').AsString :=qryActiveMeltNo.Fieldbyname('CUST_CODE').AsString;
       Fieldbyname('CUST_NAME').AsString :=qryActiveMeltNo.Fieldbyname('CUST_NAME').AsString;
    end;
  end;

end;



function TProductionDM.getMeltSheetLineNo(aplandoc,ameltno:string; aGLX:iNTEGER):Integer;

   procedure handleError(e:exception);
   begin
      errorEx('Eror while getting new melt sheet line '+e.Message);
   end ;
begin
  result:= -1;
  try
  qryAdhoc.close;
  qryAdhoc.sql.text := 'SELECT MAX(LINE_NO)  FROM PL_RAWMAT_SHEET_DT WHERE PLAN_DOC='+QuotedStr(aplandoc)+#13+
                      ' and melt_no ='+quotedstr(ameltno)+#13+
                      'and CHECK_PLATE_GROUP_ID='+IntToStr(aGlx);
  qryAdhoc.open;
 result:= qryAdhoc.Fields[0].AsInteger +1;
  except on e: exception do
    handleError(e);
  end;
end;


function TProductionDM.deleteMeltSheetByGroup(aplandoc,ameltno:string; aGLX:iNTEGER) :boolean;
  procedure handleError(e:exception);
   begin
      errorEx('Eror while deleting new melt sheet line '+e.Message);
      result:=false;
   end ;

begin
  result:=false;
   try
  qryAdhoc.close;
  qryAdhoc.sql.text := 'DELETE  FROM PL_RAWMAT_SHEET_DT WHERE PLAN_DOC='+QuotedStr(aplandoc)+#13+
                      ' and melt_no ='+quotedstr(ameltno)+#13+
                      'and CHECK_PLATE_GROUP_ID='+IntToStr(aGlx);
  qryAdhoc.ExecSQL;
  result:=true;
 //result:= qryAdhoc.Fields[0].AsInteger +1;
  except on e: exception do
    handleError(e);
  end;
end;

procedure TProductionDM.tbMaterialSheetDTSTOCK_CODEChange(Sender: TField);
begin
  if (Sender.AsString <>'') then
  begin
   isDefaultElementItem:=false;
   if (tbMaterialSheetDTLAST_MELT_ITEM.AsString ='N') THEN
   BEGIN
   tbMaterialSheetDTGROUP_ID.AsString := qryMaterial.fieldbyname('GROUP_ID').AssTRING;
   tbMaterialSheetDTUOM.AsString := qryMaterial.Fieldbyname('UOM_CD').AsString;
   tbMaterialSheetDTRECOVERY_PERC.AsFloat := qryMaterialRECOVERY.AsFloat;

   //4 April,2011
   qryActiveMeltSheetStock.Close;
   qryActiveMeltSheetStock.ParamByName('pstock_cd').value :=  Sender.asstring;
   qryActiveMeltSheetStock.Open;

   tbMaterialElement.Open;

   if ( qryMaterialDEFAULT_ELEMENT_DETAIL.AsString='Y') then
   begin
     isDefaultElementItem := true;
     tbDefaultElement.open;
     tbMaterialSheetDTELE_PERC1.AsFloat :=  tbDefaultElementELE1_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC2.AsFloat :=  tbDefaultElementELE2_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC3.AsFloat :=  tbDefaultElementELE3_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC4.AsFloat :=  tbDefaultElementELE4_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC5.AsFloat :=  tbDefaultElementELE5_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC6.AsFloat :=  tbDefaultElementELE6_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC7.AsFloat :=  tbDefaultElementELE7_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC8.AsFloat :=  tbDefaultElementELE8_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC9.AsFloat :=  tbDefaultElementELE9_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC10.AsFloat := tbDefaultElementELE10_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC11.AsFloat := tbDefaultElementELE11_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC12.AsFloat := tbDefaultElementELE12_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC13.AsFloat := tbDefaultElementELE13_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC14.AsFloat :=  tbDefaultElementELE14_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC15.AsFloat :=  tbDefaultElementELE15_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC16.AsFloat :=  tbDefaultElementELE16_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC17.AsFloat :=  tbDefaultElementELE17_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC18.AsFloat :=  tbDefaultElementELE18_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC19.AsFloat :=  tbDefaultElementELE19_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC20.AsFloat := tbDefaultElementELE20_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC21.AsFloat := tbDefaultElementELE21_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC22.AsFloat := tbDefaultElementELE22_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC23.AsFloat := tbDefaultElementELE23_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC24.AsFloat := tbDefaultElementELE24_PERC.AsFloat;
      tbDefaultElement.close;
   end;
   END;
  end;
end;

procedure TProductionDM.tbMaterialSheetDTLOT_NOChange(Sender: TField);
begin

 if (Sender.AsString <>'') then
 begin
    tbMaterialSheetDTPURCHASE_DATE.AsDateTime :=qryActiveMeltSheetStockORDER_DATE.AsDateTime;
    tbMaterialSheetDTSUPPLIER_CD.AsString :=     qryActiveMeltSheetStockSUPP_CODE.AsString;
    tbMaterialSheetDTONHAND_QTY.AsFloat := qryActiveMeltSheetStockqty.AsFloat;
    tbMaterialSheetDTORDER_QTY.AsFloat := qryActiveMeltSheetStockqty.AsFloat ;
    tbMaterialSheetDTUNIT_COST.AsFloat :=  qryActiveMeltSheetStockUNIT_COST.AsFloat ;

    if (tbMaterialSheetDTDESCS.AsString ='') then
       tbMaterialSheetDTDESCS.AsString  := Sender.AsString;
  IF (isDefaultElementItem = false) then   //if not last melt item can overwrite value
   if (tbMaterialElement.RecordCount >0) then
   begin
     tbMaterialSheetDTELE_PERC1.AsFloat :=  tbMaterialElementELE1_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC2.AsFloat :=  tbMaterialElementELE2_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC3.AsFloat :=  tbMaterialElementELE3_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC4.AsFloat :=  tbMaterialElementELE4_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC5.AsFloat :=  tbMaterialElementELE5_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC6.AsFloat :=  tbMaterialElementELE6_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC7.AsFloat := tbMaterialElementELE7_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC8.AsFloat := tbMaterialElementELE8_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC9.AsFloat :=  tbMaterialElementELE9_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC10.AsFloat :=  tbMaterialElementELE10_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC11.AsFloat :=  tbMaterialElementELE11_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC12.AsFloat :=  tbMaterialElementELE12_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC13.AsFloat :=  tbMaterialElementELE13_PERC.AsFloat;

     tbMaterialSheetDTELE_PERC14.AsFloat :=  tbMaterialElementELE14_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC15.AsFloat :=  tbMaterialElementELE15_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC16.AsFloat :=  tbMaterialElementELE16_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC17.AsFloat := tbMaterialElementELE17_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC18.AsFloat := tbMaterialElementELE18_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC19.AsFloat :=  tbMaterialElementELE19_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC20.AsFloat :=  tbMaterialElementELE20_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC21.AsFloat :=  tbMaterialElementELE21_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC22.AsFloat :=  tbMaterialElementELE22_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC23.AsFloat :=  tbMaterialElementELE23_PERC.AsFloat;
     tbMaterialSheetDTELE_PERC24.AsFloat :=  tbMaterialElementELE24_PERC.AsFloat;

   end;
 end;
end;

procedure TProductionDM.tbMaterialSheetDTCHARGED_WEIGHTChange(
  Sender: TField);
begin
  IF (Sender.AsFloat <> 0) then
  begin
     tbMaterialSheetDTRECOVERY_WEIGHT.AsFloat := Sender.AsFloat * tbMaterialSheetDTRECOVERY_PERC.AsFloat/100;
     tbMaterialSheetDTTOTAL_COST.AsFloat :=  Sender.AsFloat*tbMaterialSheetDTUNIT_COST.AsFloat;
  end;
end;

procedure TProductionDM.tbMaterialSheetDTREF_MELT_NOChange(Sender: TField);
begin
  if (Sender.AsString<>'') then
  begin
     tbMaterialSheetDTLOT_NO.AsString := Sender.AsString;
     tbMaterialSheetDTPURCHASE_DATE.AsDateTime :=date;
     tbMaterialSheetDTSUPPLIER_CD.AsString :=Sender.AsString;
     tbMaterialSheetDTSTOCK_CODE.AsString :=  Sender.AsString;

  end;
end;

procedure TProductionDM.tbMaterialSheetDTLAST_MELT_ITEMChange(
  Sender: TField);
begin
  IF (Sender.AsString <>'') then
  begin
     if (Sender.AsString ='Y') then
     begin
      tbMaterialSheetDTRECOVERY_PERC.AsFloat :=100;
      tbMaterialSheetDTGROUP_ID.AsString :='MELT';
      tbMaterialSheetDTUOM.AsString :='KG';
      tbMaterialSheetDTELE_PERC1.AsFloat :=0;
      tbMaterialSheetDTELE_PERC2.AsFloat :=0;
      tbMaterialSheetDTELE_PERC3.AsFloat :=0;
      tbMaterialSheetDTELE_PERC4.AsFloat :=0;
      tbMaterialSheetDTELE_PERC5.AsFloat :=0;
      tbMaterialSheetDTELE_PERC6.AsFloat :=0;
      tbMaterialSheetDTELE_PERC7.AsFloat :=0;
      tbMaterialSheetDTELE_PERC8.AsFloat :=0;
      tbMaterialSheetDTELE_PERC9.AsFloat :=0;
      tbMaterialSheetDTELE_PERC10.AsFloat :=0;
      tbMaterialSheetDTELE_PERC11.AsFloat :=0;
      tbMaterialSheetDTELE_PERC12.AsFloat :=0;
      tbMaterialSheetDTELE_PERC13.AsFloat :=0;



      tbMaterialSheetDTELE_PERC14.AsFloat :=0;
      tbMaterialSheetDTELE_PERC15.AsFloat :=0;
      tbMaterialSheetDTELE_PERC16.AsFloat :=0;
      tbMaterialSheetDTELE_PERC17.AsFloat :=0;
      tbMaterialSheetDTELE_PERC18.AsFloat :=0;
      tbMaterialSheetDTELE_PERC19.AsFloat :=0;
      tbMaterialSheetDTELE_PERC20.AsFloat :=0;
      tbMaterialSheetDTELE_PERC21.AsFloat :=0;
      tbMaterialSheetDTELE_PERC22.AsFloat :=0;
      tbMaterialSheetDTELE_PERC23.AsFloat :=0;
      tbMaterialSheetDTELE_PERC24.AsFloat :=0;
     end;
  end;

end;

procedure TProductionDM.tbMaterialSheetDTAfterPost(DataSet: TDataSet);
begin
  inherited;
   commit;
   if dataset.RecordCount >0 then
   begin
       try

           updateFinalResult(tbMaterialSheetHD);
       except on e:exception do
         //
       end;
   end  ;
   DataSet.Last;
   //doUpdateFinalResult
end;



function TProductionDM.updateFinalResult(DataSet:TDataSet):boolean;
   procedure handleError(e:exception);
   begin
       errorEx('Could not update Melt sheet final result'+e.Message);
       screen.cursor :=crDefault;
       result:=false;
   end;
begin
 try
  try
    Screen.Cursor := crsqlWait;
    with dataset do
    begin
       qryMeltSheetFinalResult.Close;
       qryMeltSheetFinalResult.ParamByName('pplandoc').Value :=Fieldbyname('PLAN_DOC').AsString;
       qryMeltSheetFinalResult.ParamByName('pMeltNo').Value :=Fieldbyname('MELT_NO').AsString;
       qryMeltSheetFinalResult.Open;
       EDIT;
      Fieldbyname('flb1').AsFloat :=    qryMeltSheetFinalResultE1.AsFloat ;
      Fieldbyname('flb2').AsFloat :=    qryMeltSheetFinalResultE2.AsFloat ;
      Fieldbyname('flb3').AsFloat :=    qryMeltSheetFinalResultE3.AsFloat ;
      Fieldbyname('flb4').AsFloat :=    qryMeltSheetFinalResultE4.AsFloat ;
      Fieldbyname('flb5').AsFloat :=    qryMeltSheetFinalResultE5.AsFloat ;
      Fieldbyname('flb6').AsFloat :=    qryMeltSheetFinalResultE6.AsFloat ;
      Fieldbyname('flb7').AsFloat :=    qryMeltSheetFinalResultE7.AsFloat ;
      Fieldbyname('flb8').AsFloat :=    qryMeltSheetFinalResultE8.AsFloat ;
      Fieldbyname('flb9').AsFloat :=    qryMeltSheetFinalResultE9.AsFloat ;
      Fieldbyname('flb10').AsFloat :=    qryMeltSheetFinalResultE10.AsFloat ;
      Fieldbyname('flb11').AsFloat :=    qryMeltSheetFinalResultE11.AsFloat ;
      Fieldbyname('flb12').AsFloat :=    qryMeltSheetFinalResultE12.AsFloat ;
      Fieldbyname('flb13').AsFloat :=    qryMeltSheetFinalResultE13.AsFloat ;


      Fieldbyname('flb14').AsFloat :=    qryMeltSheetFinalResultE14.AsFloat ;
      Fieldbyname('flb15').AsFloat :=    qryMeltSheetFinalResultE15.AsFloat ;
      Fieldbyname('flb16').AsFloat :=    qryMeltSheetFinalResultE16.AsFloat ;
      Fieldbyname('flb17').AsFloat :=    qryMeltSheetFinalResultE17.AsFloat ;
      Fieldbyname('flb18').AsFloat :=    qryMeltSheetFinalResultE18.AsFloat ;
      Fieldbyname('flb19').AsFloat :=    qryMeltSheetFinalResultE19.AsFloat ;
      Fieldbyname('flb20').AsFloat :=    qryMeltSheetFinalResultE20.AsFloat ;
      Fieldbyname('flb21').AsFloat :=    qryMeltSheetFinalResultE21.AsFloat ;
      Fieldbyname('flb22').AsFloat :=    qryMeltSheetFinalResultE22.AsFloat ;
      Fieldbyname('flb23').AsFloat :=    qryMeltSheetFinalResultE23.AsFloat ;
      Fieldbyname('flb24').AsFloat :=    qryMeltSheetFinalResultE24.AsFloat ;
      Fieldbyname('flb25').AsFloat  :=  100 - ( Fieldbyname('flb1').AsFloat +
                                                  Fieldbyname('flb2').AsFloat +
                                                  Fieldbyname('flb3').AsFloat +
                                                  Fieldbyname('flb4').AsFloat +
                                                  Fieldbyname('flb5').AsFloat +
                                                  Fieldbyname('flb6').AsFloat +
                                                  Fieldbyname('flb7').AsFloat +
                                                  Fieldbyname('flb8').AsFloat +
                                                  Fieldbyname('flb9').AsFloat +
                                                  Fieldbyname('flb10').AsFloat +
                                                  Fieldbyname('flb11').AsFloat +
                                                  Fieldbyname('flb12').AsFloat +
                                                  Fieldbyname('flb13').AsFloat +
                                                  Fieldbyname('flb14').AsFloat +
                                                  Fieldbyname('flb15').AsFloat +
                                                  Fieldbyname('flb16').AsFloat +
                                                  Fieldbyname('flb17').AsFloat +
                                                  Fieldbyname('flb18').AsFloat +
                                                  Fieldbyname('flb19').AsFloat +
                                                  Fieldbyname('flb20').AsFloat +
                                                  Fieldbyname('flb21').AsFloat +
                                                  Fieldbyname('flb22').AsFloat +
                                                  Fieldbyname('flb23').AsFloat +
                                                  Fieldbyname('flb24').AsFloat )  ;
      Fieldbyname('total_charged_weight').AsFloat := qryMeltSheetFinalResultTOTAL_CHARGED.AsFloat;
      Fieldbyname('TOTAL_RECOVERY_WEIGHT').AsFloat := qryMeltSheetFinalResultTOTAL_RECOVERED.AsFloat ;
      Fieldbyname('TOTAL_COST').AsFloat :=      qryMeltSheetFinalResultTOTAL_COST.AsFloat;
      Fieldbyname('TOTAL_DROSS').AsFloat := Fieldbyname('total_charged_weight').AsFloat -  Fieldbyname('TOTAL_RECOVERY_WEIGHT').AsFloat;
      POST;
    end;


  except on e:exception do
      handleError(e);
  end;
 finally
    commit;
    screen.Cursor:=crDefault;
 end;
end;
//update calcuation fields
procedure TProductionDM.tbMaterialSheetHDCalcFields(DataSet: TDataSet);
begin
  if (DataSet.Fieldbyname('total_charged_weight').AsFloat >0 ) and (DataSet.Fieldbyname('TOTAL_RECOVERY_WEIGHT').AsFloat >0) then
  begin
  tbMaterialSheetHDRECOVERYPERCENTAGE.AsFloat :=    (DataSet.Fieldbyname('TOTAL_RECOVERY_WEIGHT').AsFloat/ DataSet.Fieldbyname('total_charged_weight').AsFloat)*100;

  //Change devider to TOTAL_RECOVERY_WEIGHT 2 jUNE,2011
  tbMaterialSheetHDCostPerUnit.AsFloat :=  DataSet.Fieldbyname('TOTAL_COST').AsFloat/ DataSet.Fieldbyname('TOTAL_RECOVERY_WEIGHT').AsFloat;
  tbMaterialSheetHDTOTAL_DROSS.AsFloat :=    DataSet.Fieldbyname('total_charged_weight').AsFloat -    DataSet.Fieldbyname('TOTAL_RECOVERY_WEIGHT').AsFloat;
  end;
end;


     //to update status to PL_RAWMAT_SHEET_HD   9 Feb,2011
function TProductionDM.updateMeltSheetStatus(aPlanDoc,AmeltNo,astatus:string):boolean;

  procedure handleError(e:exception);
  begin
    ErrorEx('Could not update MeltSheet status '+e.Message);
    result:=false;
  end;
begin
  try
    qryAdhoc.Close;
    qryAdhoc.SQL.Text:= 'update pl_Rawmat_sheet_hd set status ='+quotedstr(astatus)+#13+
                        'where plan_doc='+quotedstr(aplandoc)+#13+
                        'and melt_no ='+quotedstr(ameltno);
    qryAdhoc.ExecSQL;
    RESULT:=TRUE;
  except on e:exception do
    handleError(e);
  end;
end;


function TProductionDM.deleteMeltSheet(aPlanDoc,AmeltNo:string):boolean;
 procedure handleError(e:exception);
  begin
    ErrorEx('Could not delete MeltSheet  '+e.Message);
    result:=false;
  end;
begin
  try
    qryAdhoc.Close;
    qryAdhoc.SQL.Text:= 'delete from pl_Rawmat_sheet_hd '+#13+
                        'where plan_doc='+quotedstr(aplandoc)+#13+
                        'and melt_no ='+quotedstr(ameltno);
    qryAdhoc.ExecSQL;
    RESULT:=TRUE;
  except on e:exception do
    handleError(e);
  end;
end;

  //TODO There unsure that how to validate document before post
function TProductionDM.closeProductoinPlan(aplanDoc,aplanDate:string)     :boolean;
 procedure handleError(e:exception);
  begin
    ErrorEx('Could not Close production plan  '+aplandoc+#13+e.Message);
    result:=false;
  end;

  //TODO: Validate document before changing status

  function validate:boolean;
  begin
     result :=true;
  end;
begin
   if (validate) then
   begin
 try
    qryAdhoc.Close;
    qryAdhoc.SQL.Text:= 'update pl_pro_Plan_hd '+#13+
                        'set status ='+quotedstr('X') +#13+
                        'where plan_doc='+quotedstr(aplandoc)+#13+
                        'and plan_date ='+quotedstr(aplandate);
    qryAdhoc.ExecSQL;
    RESULT:=TRUE;
  except on e:exception do
    handleError(e);
  end;
  end else
  begin
     //
  end;
end;
 //2 March ,2011
procedure TProductionDM.tbMaterialSheetDTELE_PERC1Change(Sender: TField);
begin
 tbMaterialSheetDTELE_PERC25.AsFloat := 100 - (
                                        tbMaterialSheetDTELE_PERC1.AsFloat +
                                        tbMaterialSheetDTELE_PERC2.AsFloat +
                                        tbMaterialSheetDTELE_PERC3.AsFloat +
                                        tbMaterialSheetDTELE_PERC4.AsFloat +
                                        tbMaterialSheetDTELE_PERC5.AsFloat +
                                        tbMaterialSheetDTELE_PERC6.AsFloat +
                                        tbMaterialSheetDTELE_PERC7.AsFloat +
                                        tbMaterialSheetDTELE_PERC8.AsFloat +
                                        tbMaterialSheetDTELE_PERC9.AsFloat +
                                        tbMaterialSheetDTELE_PERC10.AsFloat +
                                        tbMaterialSheetDTELE_PERC11.AsFloat +
                                        tbMaterialSheetDTELE_PERC12.AsFloat +


                                        tbMaterialSheetDTELE_PERC14.AsFloat +
                                        tbMaterialSheetDTELE_PERC15.AsFloat +
                                        tbMaterialSheetDTELE_PERC16.AsFloat +
                                        tbMaterialSheetDTELE_PERC17.AsFloat +
                                        tbMaterialSheetDTELE_PERC18.AsFloat +
                                        tbMaterialSheetDTELE_PERC19.AsFloat +
                                        tbMaterialSheetDTELE_PERC20.AsFloat +
                                        tbMaterialSheetDTELE_PERC21.AsFloat +
                                        tbMaterialSheetDTELE_PERC22.AsFloat  +
                                        tbMaterialSheetDTELE_PERC23.AsFloat   +
                                        tbMaterialSheetDTELE_PERC24.AsFloat  )   ;

end;
//2 March,2011 get group id from last record before insert.
procedure TProductionDM.tbMaterialSheetDTBeforeInsert(DataSet: TDataSet);
begin
  LastGlxID :=DataSet.FieldByName('CHECK_PLATE_GROUP_ID').AsInteger;

end;

procedure TProductionDM.tbQAElementAfterOpen(DataSet: TDataSet);
var i:integer;

begin
  tbElement.Open;
  tbElement.First;
  with  tbElement do
  begin
   for i:=1 to MAX_ELEMENT do
   begin
      DataSet.FieldByName('ELE'+IntToStr(i)+'_PERC').DisplayLabel:= Fieldbyname('ELEMENT_CODE').AsString;
      next;
  end;
  end;
    tbElement.close;
end;

procedure TProductionDM.tbQAElementELE1_PERCChange(Sender: TField);
begin
  tbQAElementELE25_PERC.AsFloat :=  100 - (
                                tbQAElementELE1_PERC.AsFloat +
                                tbQAElementELE2_PERC.AsFloat +
                                tbQAElementELE3_PERC.AsFloat +
                                tbQAElementELE4_PERC.AsFloat +
                                tbQAElementELE5_PERC.AsFloat +
                                tbQAElementELE6_PERC.AsFloat +
                                tbQAElementELE7_PERC.AsFloat +
                                tbQAElementELE8_PERC.AsFloat +
                                tbQAElementELE9_PERC.AsFloat +
                                tbQAElementELE10_PERC.AsFloat +
                                tbQAElementELE11_PERC.AsFloat +
                                tbQAElementELE12_PERC.AsFloat  +


                                tbQAElementELE13_PERC.AsFloat +
                                tbQAElementELE14_PERC.AsFloat +
                                tbQAElementELE15_PERC.AsFloat +
                                tbQAElementELE16_PERC.AsFloat +
                                tbQAElementELE17_PERC.AsFloat +
                                tbQAElementELE18_PERC.AsFloat +
                                tbQAElementELE19_PERC.AsFloat +
                                tbQAElementELE20_PERC.AsFloat +
                                tbQAElementELE21_PERC.AsFloat +
                                tbQAElementELE22_PERC.AsFloat +
                                tbQAElementELE23_PERC.AsFloat +
                                tbQAElementELE24_PERC.AsFloat
                                   );

end;

procedure TProductionDM.qryQAInspectAfterOpen(DataSet: TDataSet);
begin
   tbQAElement.Open;

end;

procedure TProductionDM.tbFNGReceiveHDNewRecord(DataSet: TDataSet);
begin
   with dataset do
   begin
    Fieldbyname('STATUS').AsString := 'N';
    Fieldbyname('DOC_DATE').AsDateTime := Date;
    FieldByName('UNKNOW_MELT_FLAG').AsString := 'N';
    Fieldbyname('BY_PRODUCTED_ITEM').AsString :='N';
    Fieldbyname('MARKUP_WEIGHT1').AsFloat :=0;
    Fieldbyname('MARKUP_WEIGHT2').AsFloat :=0;
    Fieldbyname('BUNDLE_QTY').AsInteger :=0;
   end;

end;

procedure TProductionDM.tbFNGReceiveHDBeforePost(DataSet: TDataSet);
begin
  ACTIVEUSER := WarehouseDataManager.User.userid;
  updateModifiedRecord(DataSet);

end;

procedure TProductionDM.tbFNGReceiveDTNewRecord(DataSet: TDataSet);
var rows:integer;
begin
  WITH DATASET DO
  BEGIN
     rows:=  recordCount;
     if (rows =0)     THEN
      Fieldbyname('line_no').AsInteger :=1
     else   Fieldbyname('line_no').AsInteger :=rows +1;
     Fieldbyname('REMELT_ITEM_FLAG').AsString :='N';
     Fieldbyname('UOM_CD').AsString := DEFAULT_UOM;
  END;

end;

procedure TProductionDM.tbFNGReceiveDTWEIGHT_QTYChange(Sender: TField);
begin
  if (sender.AsFloat > 0) then
 tbFNGReceiveDTQTY.AsFloat := Sender.AsFloat - (tbFNGReceiveHDMARKUP_WEIGHT1.AsFloat + tbFNGReceiveHDMARKUP_WEIGHT2.AsFloat )   ;

end;

procedure TProductionDM.tbFNGReceiveDTREMELT_ITEM_FLAGChange(
  Sender: TField);
begin
  inherited;
  if sender.AsString ='Y' then
      tbFNGReceiveDTGROUP_ID.AsString := DEFAULT_REMELT_GROUP
  ELSE tbFNGReceiveDTGROUP_ID.AsString := DEFAULT_GROUP_ID  ;
end;


    //FINISHED GOODS Management 16 March,2011
function TProductionDM.PostFinishedGoodsReceive(adocNo,adocDate:String):boolean;
  procedure handleError(E:Exception);
  begin
     errorEx('Could not post Finished goods receive'+e.Message);
     result:=false;
  end;
begin
 result:=true;
 try
  qryAdhoc.Close;
  qryAdhoc.SQL.Text :='execute procedure x_post_fng_receive '+quotedStr(adocNo)+','+quotedStr(adocDate);
  qryAdhoc.ExecSQL;
 // qryAdhoc.Transaction.Rollback; //debug with rollback
 except on e:exception do
    handleError(e);
 end;
end;


//FINISHED GOODS Management 16 March,2011
function TProductionDM.PostFinishedGoodsAdjust(adocNo,adocDate:String):boolean;
procedure handleError(E:Exception);
  begin
     errorEx('Could not post Finished goods adjust'+e.Message);
     result:=false;
  end;
begin
 result:=true;
 try
  qryAdhoc.Close;
  qryAdhoc.SQL.Text :='execute procedure x_post_fng_adjust '+quotedStr(adocNo)+','+quotedStr(adocDate);
  qryAdhoc.ExecSQL;
 // qryAdhoc.Transaction.Rollback; //debug with rollback
 except on e:exception do
    handleError(e);
 end;
end;



//FINISHED GOODS Management 16 March,2011
function TProductionDM.PostFinishedGoodsReturn(adocNo,adocDate:String):boolean;
procedure handleError(E:Exception);
  begin
     errorEx('Could not post Finished goods return'+e.Message);
     result:=false;
  end;
begin
 result:=true;
 try
  qryAdhoc.Close;
  qryAdhoc.SQL.Text :='execute procedure x_post_fng_return '+quotedStr(adocNo)+','+quotedStr(adocDate);
  qryAdhoc.ExecSQL;
 // qryAdhoc.Transaction.Rollback; //debug with rollback
 except on e:exception do
    handleError(e);
 end;
end;

procedure TProductionDM.tbFNGAdjustHDNewRecord(DataSet: TDataSet);
begin
 with dataset do
   begin
    Fieldbyname('STATUS').AsString := 'N';
    Fieldbyname('DOC_DATE').AsDateTime := Date;
  end;
end;

procedure TProductionDM.tbFNGAdjustHDBeforePost(DataSet: TDataSet);
begin
   ACTIVEUSER := WarehouseDataManager.User.userid;
  updateModifiedRecord(DataSet);

end;

procedure TProductionDM.tbFNGAdjustDTNewRecord(DataSet: TDataSet);
begin
  with dataset do
   begin
       Fieldbyname('UNKNOW_MELT_FLAG').AsString :='N';
       Fieldbyname('UOM_CD').AsString := DEFAULT_UOM;
       FieldByName('BUNDLE_QTY').AsFloat :=0; //24 March,2011
   END;

end;

procedure TProductionDM.tbFNGAdjustDTMELT_NOChange(Sender: TField);
begin
  if (sender.AsString <> '') then
  begin
    tbFNGAdjustDTITEM_CODE.AsString := qryFNGStockItemITEM_CODE.AsString;
    tbFNGAdjustDTONHAND_QTY.AsFloat := qryFNGStockItemONHAND_QTY.AsFloat ;
    tbFNGAdjustDTONHAND_BUNDLE_QTY.AsInteger :=  qryFNGStockItemBUNDLE_QTY.AsInteger;
  end;

end;

procedure TProductionDM.tbFNGReturnHDNewRecord(DataSet: TDataSet);
begin
 with dataset do
   begin
    Fieldbyname('STATUS').AsString := 'N';
    Fieldbyname('DOC_DATE').AsDateTime := Date;
  end;

end;

procedure TProductionDM.tbFNGReturnHDBeforePost(DataSet: TDataSet);
begin
  ACTIVEUSER := WarehouseDataManager.User.userid;
  updateModifiedRecord(DataSet);

end;

procedure TProductionDM.tbFNGReturnHDMELT_NOChange(Sender: TField);
begin
  if (sender.AsString <> '') then
  begin
    tbFNGReturnHDITEM_CODE.AsString := qryActiveMeltNoITEM_CODE.AsString;
    //tbFNGAdjustDTONHAND_QTY.AsFloat := qryFNGStockItemONHAND_QTY.AsFloat ;
    //tbFNGAdjustDTONHAND_BUNDLE_QTY.AsInteger :=  qryFNGStockItemBUNDLE_QTY.AsInteger;
  end;


end;

procedure TProductionDM.tbFNGReturnDTREMELT_ITEM_FLAGChange(
  Sender: TField);
begin
  inherited;
  if sender.AsString ='Y' then
      tbFNGReturnDTGROUP_ID.AsString := DEFAULT_REMELT_GROUP
  ELSE tbFNGReturnDTGROUP_ID.AsString := DEFAULT_GROUP_ID  ;

end;

procedure TProductionDM.tbFNGReturnDTNewRecord(DataSet: TDataSet);
begin
  tbFNGReturnDTREMELT_ITEM_FLAG.AsString := 'N';
   tbFNGReturnDTUOM_CD.AsString := DEFAULT_UOM;

end;

procedure TProductionDM.tbFNGReceiveHDMELT_NOChange(Sender: TField);
begin
  tbFNGReceiveHDITEM_CODE.AsString := qryActiveMeltNoITEM_CODE.AsString;

end;



function TProductionDM.saveTemplateData(MeltDataSet: TDataSet): boolean;
  procedure handleErrror(e:exception);
  begin
       errorex('Could not save template data'+e.Message);
       result:=false;
        screen.Cursor:=crDefault;
  end;
  var i:integer;
begin
  result:=true;
  try
   screen.Cursor:=crSQLWait;
      with meltdataset do
      begin
          tbPLElementTemplate.Open;
          tbPLElementTemplate.Insert;
          tbPLElementTemplate.FieldByName('CUST_CODE').AsString :=  Fieldbyname('cust_code').AsString;
          tbPLElementTemplate.FieldByName('ITEM_CODE').AsString :=  Fieldbyname('ITEM_CODE').AsString;
           tbPLElementTemplate.FieldByName('UOM_CD').AsString :=  Fieldbyname('UOM').AsString;
          tbPLElementTemplate.FieldByName('melt_no').AsString  :=  Fieldbyname('ref_melt_no').AsString;
          for i:=1 to MAX_ELEMENT do
          begin
            tbPLElementTemplate.FieldByName('ELE_PERC'+IntToStr(i)).AsFloat:= Fieldbyname('ELE_PERC'+IntToStr(i)).AsFloat;
           // next;
           end;
           tbPLElementTemplate.FieldByName('RECOVERY_PERC').AsFloat :=  FieldByName('RECOVERY_PERC').AsFloat;
           tbPLElementTemplate.FieldByName('unit_cost').AsFloat :=  FieldByName('UNIT_COST').AsFloat;
           tbPLElementTemplate.FieldByName('update_USER').AsString := WarehouseDataManager.User.userid;
           tbPLElementTemplate.FieldByName('UPDATE_DATE').AsDateTime := now;
         tbPLElementTemplate.Post;
      end;
     screen.Cursor:=crDefault;
  except on e:exception do
   handleErrror(e);
  end;
 //
end;

function TProductionDM.ImportTemplateData(MeltDataSet: TDataSet; chargedWeight:Double): boolean;
  procedure handleErrror(e:exception);
  begin
       errorex('Could not save template data'+e.Message);
        screen.Cursor:=crDefault;
       result:=false;
  end;
  var i:integer;
begin
  result:=true;


  try
       screen.Cursor :=crSQLWait;
      meltdataset.Edit;
      with meltdataset do
      begin
           tbPLElementTemplate.open;
          edit;
          for i:=1 to MAX_ELEMENT do
          begin
            FieldByName('ELE_PERC'+IntToStr(i)).AsFloat:= tbPLElementTemplate.Fieldbyname('ELE_PERC'+IntToStr(i)).AsFloat;
            //next;
           end;
           if   chargedWeight >0 then       Fieldbyname('Charged_weight').AsFloat :=chargedWeight;
         FieldByName('RECOVERY_PERC').AsFloat :=                tbPLElementTemplate.FieldByName('RECOVERY_PERC').AsFloat;
         if (tbPLElementTemplate.FieldByName('UNIT_COST').AsFloat >0) then
         FieldByName('unit_cost').AsFloat :=                tbPLElementTemplate.FieldByName('UNIT_COST').AsFloat;
         FieldByName('total_cost').AsFloat :=   FieldByName('Charged_weight').AsFloat  *       FieldByName('unit_cost').AsFloat;
         post;
      end;
    screen.Cursor:=crDefault;
  except on e:exception do
   handleErrror(e);
  end;
 //
end;


function TProductionDM.setElementDisplayLabel(Dataset: TDataSet;
  aField: string): boolean;
var i:integer;

begin
  tbElement.Open;
  tbElement.First;
  tbPLElementTemplate.Open;
  with  tbElement do
  begin
   for i:=1 to MAX_ELEMENT do
   begin
      DataSet.FieldByName('ELE_PERC'+IntToStr(i)).DisplayLabel:= Fieldbyname('ELEMENT_CODE').AsString;
    //  tbPLElementTemplate.FieldByName('ELE_PERC'+IntToStr(i)).DisplayLabel:= Fieldbyname('ELEMENT_CODE').AsString;
      next;
  end;
  end;
    tbElement.close;
    result:=true;
end;

procedure TProductionDM.tbPLElementTemplateAfterOpen(DataSet: TDataSet);
begin
  setElementDisplayLabel(DATASET,'');
end;

procedure TProductionDM.tbMaterialSheetDTAfterScroll(DataSet: TDataSet);
begin
if (dataset.RecordCount >0) then
 begin
   if (dataset.FieldByName('stock_code').asstring <>'') then
     activeStockCode :=  dataset.FieldByName('stock_code').asstring ;
     qryActiveMeltSheetStock.Close;
     qryActiveMeltSheetStock.ParamByName('PSTOCK_CD').value := activeStockCode;
     qryActiveMeltSheetStock.open;
 end;

end;
//3 jUNE 2011 Protect invalid floating poing error
procedure TProductionDM.tbMaterialSheetHDNewRecord(DataSet: TDataSet);
begin
   WITH DATASET do
   begin
      FieldByName('FLB1').AsFloat :=0;
      FieldByName('FLB2').AsFloat :=0;
      FieldByName('FLB3').AsFloat :=0;
      FieldByName('FLB4').AsFloat :=0;
      FieldByName('FLB5').AsFloat :=0;
      FieldByName('FLB6').AsFloat :=0;
      FieldByName('FLB7').AsFloat :=0;
      FieldByName('FLB8').AsFloat :=0;
      FieldByName('FLB9').AsFloat :=0;
      FieldByName('FLB10').AsFloat :=0;
      FieldByName('FLB11').AsFloat :=0;
      FieldByName('FLB12').AsFloat :=0;
      FieldByName('FLB13').AsFloat :=0;


      FieldByName('FLB14').AsFloat :=0;
      FieldByName('FLB15').AsFloat :=0;
      FieldByName('FLB16').AsFloat :=0;
      FieldByName('FLB17').AsFloat :=0;
      FieldByName('FLB18').AsFloat :=0;
      FieldByName('FLB19').AsFloat :=0;
      FieldByName('FLB20').AsFloat :=0;
      FieldByName('FLB21').AsFloat :=0;
      FieldByName('FLB22').AsFloat :=0;
      FieldByName('FLB23').AsFloat :=0;
      FieldByName('FLB24').AsFloat :=0;
      FieldByName('FLB25').AsFloat :=0;
      FieldByName('TOTAL_RECOVEREY_WEIGHT').AsFloat :=0;
      FieldByName('TOTAL_CHARGED_WEIGHT').AsFloat :=0;
      FieldByName('TOTAL_COST').AsFloat :=0;
      FieldByName('TOTAL_DROSS').AsFloat :=0;
   end;

end;

procedure TProductionDM.tbMaterialSheetDTDESCSChange(Sender: TField);
begin
 { cacheMeltSheetRemark:='';
  if (Sender.NewValue <>'' )   and (Sender.oldValue<>'')  then
        if (Sender.NewValue <> Sender.oldValue)     then
           cacheMeltSheetRemark :=Sender.oldValue;
 }
end;

procedure TProductionDM.tbMaterialSheetDTBeforePost(DataSet: TDataSet);
var newRemark,final :string;
begin

//18 Oct,2011 also recalucate aluminium composition 
tbMaterialSheetDTELE_PERC1Change(tbMaterialSheetDTELE_PERC25)  ;
{    newRemark :='';
    newRemark:=   dataset.FieldByName('descs').AsString;
  if (cacheMeltSheetRemark <> '' ) and (newRemark <> '') then
  begin
    final :=   cacheMeltSheetRemark +   newRemark  ;
    dataset.FieldByName('descs').AsString :=   final;

 end;
    }
end;

procedure TProductionDM.tbMaterialSheetDTAfterOpen(DataSet: TDataSet);
begin
  inherited;
//setElementDisplayLabel(dataset,'');
end;

procedure TProductionDM.tbMaterialSheetDTAfterDelete(DataSet: TDataSet);
begin
 inherited;
   commit;
   if dataset.RecordCount >0 then
   begin
       try

           updateFinalResult(tbMaterialSheetHD);
       except on e:exception do
         //
       end;
   end  ;
   DataSet.Last;
   //doUpdateFinalResult


end;

procedure TProductionDM.tbQAElementNewRecord(DataSet: TDataSet);
begin
 try
  tbQAElementLOT_CD.ASSTRING:= qryQAInspectLOT_CD.AsString;
  tbQAElementGROUP_ID.ASSTRING:= qryQAInspectGROUP_ID.AsString;
  tbQAElementSTOCK_CD.ASSTRING:= qryQAInspectSTOCK_CD.AsString;
  tbQAElementUOM_CD.ASSTRING:=qryQAInspectUOM_CD.AsString;
  tbQAElementACCT_CD.ASSTRING:=qryQAInspectACCT_CODE.AsString   ;
  tbQAElementPURCHASE_DATE.AsDateTime:= qryQAInspectPURCHASE_DATE.AsDateTime;
  tbQAElementLINE_NO.AsInteger :=RandomRange(0,999);
  tbQAElementELE1_PERC.AsFloat  :=0;
  tbQAElementELE2_PERC.AsFloat  :=0;
  tbQAElementELE3_PERC.AsFloat  :=0;
  tbQAElementELE4_PERC.AsFloat  :=0;
  tbQAElementELE5_PERC.AsFloat  :=0;
  tbQAElementELE6_PERC.AsFloat  :=0;
  tbQAElementELE7_PERC.AsFloat  :=0;
  tbQAElementELE8_PERC.AsFloat  :=0;
  tbQAElementELE9_PERC.AsFloat  :=0;
  tbQAElementELE10_PERC.AsFloat  :=0;
  tbQAElementELE11_PERC.AsFloat  :=0;
  tbQAElementELE12_PERC.AsFloat  :=0;
  tbQAElementELE13_PERC.AsFloat  :=0;


  tbQAElementELE14_PERC.AsFloat  :=0;
  tbQAElementELE15_PERC.AsFloat  :=0;
  tbQAElementELE16_PERC.AsFloat  :=0;
  tbQAElementELE17_PERC.AsFloat  :=0;
  tbQAElementELE18_PERC.AsFloat  :=0;
  tbQAElementELE19_PERC.AsFloat  :=0;
  tbQAElementELE20_PERC.AsFloat  :=0;
  tbQAElementELE21_PERC.AsFloat  :=0;
  tbQAElementELE22_PERC.AsFloat  :=0;
  tbQAElementELE23_PERC.AsFloat  :=0;
  tbQAElementELE24_PERC.AsFloat  :=0;
  except on e:exception do
      errorex('Could not initilize tbQAElement::tbQAElementNewRecord'+e.Message)   ;
  end;
end;

procedure TProductionDM.tbMaterialSheetDTUNIT_COSTChange(Sender: TField);
begin
  if (Sender.AsFloat >0) then
  begin
    tbMaterialSheetDTTOTAL_COST.AsFloat :=   tbMaterialSheetDTCHARGED_WEIGHT.AsFloat *  tbMaterialSheetDTUNIT_COST.AsFloat;
    tbMaterialSheetDTRECOVERY_WEIGHT.AsFloat :=    tbMaterialSheetDTCHARGED_WEIGHT.AsFloat*    tbMaterialSheetDTRECOVERY_PERC.AsFloat /100;
  end;

end;

procedure TProductionDM.tbCustomerRequirementNoteAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
 qryCustRequirementView.open;
end;

procedure TProductionDM.tbCustomerRequirementNoteAfterClose(
  DataSet: TDataSet);
begin
  inherited;
  inherited;
 qryCustRequirementView.close;
end;

procedure TProductionDM.tbCustomerRequirementNoteBeforePost(
  DataSet: TDataSet);
begin
  activeUser := WarehouseDataManager.User.userid;
  updateModifiedRecord(dataset);

end;

procedure TProductionDM.tbProplanDTMELT_NOChange(Sender: TField);
begin
  inherited;
  { TODO : Check before change if the old melt no already refer to rawmatierl planing. }
end;

procedure TProductionDM.tbQAMeltInspectBeforePost(DataSet: TDataSet);
begin

  tbQAElementELE1_PERCChange(tbQAElementELE25_PERC  );
end;

procedure TProductionDM.tbQAElementBeforePost(DataSet: TDataSet);
begin
  tbQAElementELE1_PERCChange(tbQAElementELE25_PERC  );

end;


    {return planing document found with matched melt_prefix}

function TProductionDM.getPlaningDocumentByMeltSuffix(asuffix:String)   :String;
var searchKey:string;
begin
  result:='';
  searchKey :='%'+asuffix;
  qryAdhoc.close;
  qryAdhoc.sql.Text :='select max(plan_doc) from pl_pro_plan_hd   '+
                      'WHERE MELT_PREFIX LIKE '+quotedStr(UpperCase(searchKey)) ;
  qryAdhoc.Open;
  result :=   qryAdhoc.Fields[0].AsString;
end;

end.
