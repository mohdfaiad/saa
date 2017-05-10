unit SaleOrderDataModule;
{
21-9-2014 - remove batch no from [tbDeliveryMelt,tbDeliveryDTLinkAll].masterfield
   becaseu batch no always generate with new value
   -/+ deleteDeliveryLinkByMeltNo [add deliverydate as a part of method call]
}




interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataModule,WarehouseDM, DB, IBCustomDataSet, IBTable,
  IBQuery, IBStoredProc,DialogUtils;
Type TSaleOrderDocumentType  =  (TYPE_ORDER,TYPE_QUOTATION,TYPE_REVISION);

type  TCurrentDeliveryReservedItem = class
    public
      meltno,itemcode,docno:string;
  end;
type
  TSaleOrderDataManager = class(TAbstractDM)
    qryUnApproveOrder: TIBQuery;
    tbSaleOrderHD: TIBTable;
    tbSaleOrderDT: TIBTable;
    tbSaleQuoteHD: TIBTable;
    tbSaleQuoteDT: TIBTable;
    dsSaleOrderHD: TDataSource;
    dsSaleQuoteHD: TDataSource;
    tbContract: TIBTable;
    tbSaleOrderHDCUST_CODE: TIBStringField;
    tbSaleOrderHDORDER_NO: TIBStringField;
    tbSaleOrderHDORDER_DATE: TDateTimeField;
    tbSaleOrderHDREF_NO: TIBStringField;
    tbSaleOrderHDREF_DATE: TDateTimeField;
    tbSaleOrderHDUPDATE_USER: TIBStringField;
    tbSaleOrderHDUPDATE_DATE: TDateTimeField;
    tbSaleOrderHDSTATUS: TIBStringField;
    tbSaleOrderHDORDER_AMT: TFloatField;
    tbSaleOrderHDDESCS: TIBStringField;
    tbSaleOrderHDSCHEDULE_DATE: TDateTimeField;
    tbSaleOrderHDREQUIRED_SPEC_SHEET: TIBStringField;
    tbSaleOrderHDREMARKS: TIBStringField;
    tbSaleOrderHDFAX_TO: TIBStringField;
    tbSaleOrderHDCC_TO: TIBStringField;
    tbSaleOrderHDNEW_ORDER_FLAG: TIBStringField;
    tbSaleOrderHDNO_OF_PRINT: TSmallintField;
    tbSaleOrderHDVALIDITY: TDateTimeField;
    tbSaleOrderHDTAX_AMT: TFloatField;
    tbSaleOrderHDCURRENCY_CD: TIBStringField;
    tbSaleOrderHDNAME: TIBStringField;
    tbSaleOrderHDADDRESS1: TIBStringField;
    tbSaleOrderHDADDRESS2: TIBStringField;
    tbSaleOrderHDADDRESS3: TIBStringField;
    tbSaleOrderHDCURRENCY_DESCS: TIBStringField;
    tbSaleOrderHDSTOCK_USAGED_FLAG: TIBStringField;
    tbSaleOrderHDTERM_OF_PAYMENT: TSmallintField;
    tbSaleQuoteHDDOC_NO: TIBStringField;
    tbSaleQuoteHDDOC_DATE: TDateTimeField;
    tbSaleQuoteHDREF_NO: TIBStringField;
    tbSaleQuoteHDDESCS: TIBStringField;
    tbSaleQuoteHDCUST_CODE: TIBStringField;
    tbSaleQuoteHDREF_DATE: TDateTimeField;
    tbSaleQuoteHDDOC_AMT: TFloatField;
    tbSaleQuoteHDSTATUS: TIBStringField;
    tbSaleQuoteHDVALIDITY: TDateTimeField;
    tbSaleQuoteHDUPDATE_USER: TIBStringField;
    tbSaleQuoteHDUPDATE_DATE: TDateTimeField;
    tbSaleQuoteHDPREPARE_PERSON: TIBStringField;
    tbSaleQuoteHDDELIVERY_DATE: TDateTimeField;
    tbSaleQuoteHDREQUIRED_SPEC_SHEET: TIBStringField;
    tbSaleQuoteHDREMARKS: TIBStringField;
    tbSaleQuoteHDFAX_TO: TIBStringField;
    tbSaleQuoteHDCC_TO: TIBStringField;
    tbSaleQuoteHDNO_OF_PRINT: TSmallintField;
    tbSaleQuoteHDTAX_AMT: TFloatField;
    tbSaleQuoteHDCURRENCY_CD: TIBStringField;
    tbSaleQuoteHDCURRENCY_DESCS: TIBStringField;
    tbSaleQuoteHDADDRESS1: TIBStringField;
    tbSaleQuoteHDADDRESS2: TIBStringField;
    tbSaleQuoteHDADDRESS3: TIBStringField;
    tbSaleQuoteHDNAME: TIBStringField;
    tbSaleQuoteHDTERM_OF_PAYMENT: TSmallintField;
    tbSaleOrderDTORDER_NO: TIBStringField;
    tbSaleOrderDTORDER_DATE: TDateTimeField;
    tbSaleOrderDTITEM_CODE: TIBStringField;
    tbSaleOrderDTCUST_CODE: TIBStringField;
    tbSaleOrderDTLINE_NO: TSmallintField;
    tbSaleOrderDTUOM: TIBStringField;
    tbSaleOrderDTITEM_DESCS: TIBStringField;
    tbSaleOrderDTUNIT_COST: TFloatField;
    tbSaleOrderDTTOTAL_AMT: TFloatField;
    tbSaleOrderDTREMARKS: TIBStringField;
    tbSaleOrderDTDISCS_AMT: TFloatField;
    tbSaleOrderDTTAX_AMT: TFloatField;
    tbSaleOrderDTBASE_AMT: TFloatField;
    tbSaleOrderDTTAX_CD: TIBStringField;
    tbSaleOrderDTDISCS_CD: TIBStringField;
    tbSaleOrderDTQTY: TFloatField;
    tbSaleOrderDTTAX_RATE: TFloatField;
    tbSaleOrderDTSTATUS: TIBStringField;
    tbSaleOrderDTDET_QTY: TFloatField;
    tbSaleOrderDTDELIVERY_DATE: TDateTimeField;
    tbSaleOrderDTURGENT_FLAG: TIBStringField;
    tbSaleOrderDTMARK_UP: TSmallintField;
    tbSaleOrderDTSTOCK_USAGED_FLAG: TIBStringField;
    tbSaleOrderDTSTOCK_USAGED_QTY: TFloatField;
    tbSaleQuoteDTDOC_NO: TIBStringField;
    tbSaleQuoteDTDOC_DATE: TDateTimeField;
    tbSaleQuoteDTITEM_CODE: TIBStringField;
    tbSaleQuoteDTITEM_DESCS: TIBStringField;
    tbSaleQuoteDTCUST_CODE: TIBStringField;
    tbSaleQuoteDTUNIT_COST: TFloatField;
    tbSaleQuoteDTQTY: TFloatField;
    tbSaleQuoteDTTOTAL_AMT: TFloatField;
    tbSaleQuoteDTUOM: TIBStringField;
    tbSaleQuoteDTREMARKS: TIBStringField;
    tbSaleQuoteDTDISCS_AMT: TFloatField;
    tbSaleQuoteDTTAX_AMT: TFloatField;
    tbSaleQuoteDTBASE_AMT: TFloatField;
    tbSaleQuoteDTTAX_CD: TIBStringField;
    tbSaleQuoteDTDISCS_CD: TIBStringField;
    tbSaleQuoteDTTAX_RATE: TFloatField;
    tbSaleQuoteDTLINE_NO: TSmallintField;
    tbSaleQuoteDTSTATUS: TIBStringField;
    tbSaleQuoteDTMARK_UP: TSmallintField;
    tbCustomerLookup: TIBTable;
    tbCustomerLookupDEBTOR_ACCT: TIBStringField;
    tbCustomerLookupNAME: TIBStringField;
    tbCustomerLookupADDRESS1: TIBStringField;
    tbCustomerLookupADDRESS2: TIBStringField;
    tbCustomerLookupADDRESS3: TIBStringField;
    tbCustomerLookupTELPHONE: TIBStringField;
    tbCustomerLookupFAX_NO: TIBStringField;
    tbCustomerLookupDEBTOR_TYPE: TIBStringField;
    tbCustomerLookupSHORT_NAME: TIBStringField;
    tbCustomerLookupCREDIT_TERM: TSmallintField;
    tbCustomerLookupTAX_REGISTED_NO: TIBStringField;
    tbCustomerLookupBALANCE_AMT: TFloatField;
    tbCustomerLookupCREDIT_LIMIT: TFloatField;
    tbCustomerLookupCURRENCY_CODE: TIBStringField;
    tbCustomerLookupMAILADDR1: TIBStringField;
    tbCustomerLookupMAILADDR2: TIBStringField;
    tbCustomerLookupMAILADDR3: TIBStringField;
    tbCustomerLookupUPDATE_USER: TIBStringField;
    tbCustomerLookupUPDATE_DATE: TDateTimeField;
    tbCustomerLookupTAX_CD: TIBStringField;
    tbCustomerLookupPOSTCODE: TIBStringField;
    tbCustomerLookupPROVINCE: TIBStringField;
    tbCustomerLookupTH_ADDR1: TIBStringField;
    tbCustomerLookupTH_ADDR2: TIBStringField;
    tbCustomerLookupTH_ADDR3: TIBStringField;
    tbCustomerLookupTH_NAME: TIBStringField;
    qryUnApproveQuote: TIBQuery;
    qryUnApproveOrderCUST_CODE: TIBStringField;
    qryUnApproveOrderORDER_NO: TIBStringField;
    qryUnApproveOrderORDER_DATE: TDateTimeField;
    qryUnApproveOrderREF_NO: TIBStringField;
    qryUnApproveOrderREF_DATE: TDateTimeField;
    qryUnApproveOrderUPDATE_USER: TIBStringField;
    qryUnApproveOrderUPDATE_DATE: TDateTimeField;
    qryUnApproveOrderSTATUS: TIBStringField;
    qryUnApproveOrderORDER_AMT: TFloatField;
    qryUnApproveOrderDESCS: TIBStringField;
    qryUnApproveOrderSCHEDULE_DATE: TDateTimeField;
    qryUnApproveOrderREQUIRED_SPEC_SHEET: TIBStringField;
    qryUnApproveOrderREMARKS: TIBStringField;
    qryUnApproveOrderFAX_TO: TIBStringField;
    qryUnApproveOrderCC_TO: TIBStringField;
    qryUnApproveOrderNEW_ORDER_FLAG: TIBStringField;
    qryUnApproveOrderNO_OF_PRINT: TSmallintField;
    qryUnApproveOrderVALIDITY: TDateTimeField;
    qryUnApproveOrderTAX_AMT: TFloatField;
    qryUnApproveOrderCURRENCY_CD: TIBStringField;
    qryUnApproveOrderNAME: TIBStringField;
    qryUnApproveOrderADDRESS1: TIBStringField;
    qryUnApproveOrderADDRESS2: TIBStringField;
    qryUnApproveOrderADDRESS3: TIBStringField;
    qryUnApproveOrderCURRENCY_DESCS: TIBStringField;
    qryUnApproveOrderSTOCK_USAGED_FLAG: TIBStringField;
    qryUnApproveOrderTERM_OF_PAYMENT: TSmallintField;
    qryUnApproveQuoteDOC_NO: TIBStringField;
    qryUnApproveQuoteDOC_DATE: TDateTimeField;
    qryUnApproveQuoteREF_NO: TIBStringField;
    qryUnApproveQuoteDESCS: TIBStringField;
    qryUnApproveQuoteCUST_CODE: TIBStringField;
    qryUnApproveQuoteREF_DATE: TDateTimeField;
    qryUnApproveQuoteDOC_AMT: TFloatField;
    qryUnApproveQuoteSTATUS: TIBStringField;
    qryUnApproveQuoteVALIDITY: TDateTimeField;
    qryUnApproveQuoteUPDATE_USER: TIBStringField;
    qryUnApproveQuoteUPDATE_DATE: TDateTimeField;
    qryUnApproveQuotePREPARE_PERSON: TIBStringField;
    qryUnApproveQuoteDELIVERY_DATE: TDateTimeField;
    qryUnApproveQuoteREQUIRED_SPEC_SHEET: TIBStringField;
    qryUnApproveQuoteREMARKS: TIBStringField;
    qryUnApproveQuoteFAX_TO: TIBStringField;
    qryUnApproveQuoteCC_TO: TIBStringField;
    qryUnApproveQuoteNO_OF_PRINT: TSmallintField;
    qryUnApproveQuoteTAX_AMT: TFloatField;
    qryUnApproveQuoteCURRENCY_CD: TIBStringField;
    qryUnApproveQuoteCURRENCY_DESCS: TIBStringField;
    qryUnApproveQuoteADDRESS1: TIBStringField;
    qryUnApproveQuoteADDRESS2: TIBStringField;
    qryUnApproveQuoteADDRESS3: TIBStringField;
    qryUnApproveQuoteNAME: TIBStringField;
    qryUnApproveQuoteTERM_OF_PAYMENT: TSmallintField;
    tbContractCUST_CODE: TIBStringField;
    tbContractCONTRACT_PERSON1: TIBStringField;
    tbContractCONTRACT_PERSON2: TIBStringField;
    tbContractLAST_USED_DOC_NO: TIBStringField;
    tbContractLAST_USED_DOC_DATE: TDateTimeField;
    tbContractUPDATE_USER: TIBStringField;
    tbContractUPDATE_DATE: TDateTimeField;
    tbSaleItemLookup: TIBTable;
    spGetSaleComponetDetail: TIBStoredProc;
    tbComponentDetailLookup: TIBTable;
    tbComponentDetailLookupCUST_CODE: TIBStringField;
    tbComponentDetailLookupITEM_CODE: TIBStringField;
    tbComponentDetailLookupLINE1: TIBStringField;
    tbComponentDetailLookupLINE2: TIBStringField;
    tbComponentDetailLookupLINE3: TIBStringField;
    dsSaleQuoteDT: TDataSource;
    qryQuotSummary: TIBQuery;
    tbSaleItemLookupITEM_CODE: TIBStringField;
    tbSaleItemLookupDESCS: TIBStringField;
    tbSaleItemLookupREMARKS: TIBStringField;
    tbSaleItemLookupUNIT_COST: TFloatField;
    tbSaleItemLookupSALE_PRICE: TFloatField;
    tbSaleItemLookupUPDATE_USER: TIBStringField;
    tbSaleItemLookupCUST_CODE: TIBStringField;
    tbSaleItemLookupUOM_CD: TIBStringField;
    tbSaleItemLookupUPDATE_DATE: TDateTimeField;
    tbSaleItemLookupSTANDARD_PRICE: TFloatField;
    tbSaleItemLookupCURRENT_ACTIVE: TIBStringField;
    qryAdhoc: TIBQuery;
    dsCustomerLookup: TDataSource;
    qryQuotSummaryBASE_AMT: TFloatField;
    qryQuotSummaryTAX_AMT: TFloatField;
    qryQuotSummaryDISCS_AMT: TFloatField;
    qryQuotSummaryTOTAL_AMT: TFloatField;
    qryOrderSummary: TIBQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    dsSaleOrderDT: TDataSource;
    tbRevisionHD: TIBTable;
    tbRevisionDT: TIBTable;
    tbRevisionSchedule: TIBTable;
    tbRevisionHDDOC_DATE: TDateTimeField;
    tbRevisionHDDOC_NO: TIBStringField;
    tbRevisionHDNO_OF_REVISION: TSmallintField;
    tbRevisionHDFROM_ORDER_DATE: TDateTimeField;
    tbRevisionHDTO_ORDER_DATE: TDateTimeField;
    tbRevisionHDREVISION_BY: TIBStringField;
    tbRevisionHDDISTRIBUTE_TO: TIBStringField;
    tbRevisionHDUPDATE_USER: TIBStringField;
    tbRevisionHDUPDATE_DATE: TDateTimeField;
    tbRevisionHDREMARKS: TIBStringField;
    tbRevisionHDSTATUS: TIBStringField;
    tbRevisionDTORDER_NO: TIBStringField;
    tbRevisionDTORDER_DATE: TDateTimeField;
    tbRevisionDTITEM_CODE: TIBStringField;
    tbRevisionDTCUST_CODE: TIBStringField;
    tbRevisionDTDOC_DATE: TDateTimeField;
    tbRevisionDTDOC_NO: TIBStringField;
    tbRevisionDTLINE_NO: TSmallintField;
    tbRevisionDTUOM: TIBStringField;
    tbRevisionDTUNIT_COST: TFloatField;
    tbRevisionDTTOTAL_AMT: TFloatField;
    tbRevisionDTQTY: TFloatField;
    tbRevisionDTREMARKS: TIBStringField;
    tbRevisionDTREF_NO: TIBStringField;
    tbRevisionDTREF_DATE: TDateTimeField;
    tbRevisionScheduleCUST_CODE: TIBStringField;
    tbRevisionScheduleORDER_NO: TIBStringField;
    tbRevisionScheduleORDER_DATE: TDateTimeField;
    tbRevisionScheduleITEM_CODE: TIBStringField;
    tbRevisionScheduleLINE_NO: TSmallintField;
    tbRevisionScheduleSCHEDULE_DATE: TDateTimeField;
    tbRevisionScheduleSCHEDULE_QTY: TFloatField;
    tbRevisionScheduleREMARKS: TIBStringField;
    tbRevisionScheduleUOM: TIBStringField;
    qryUnApproveRevision: TIBQuery;
    qryApprovedOrder: TIBQuery;
    qryApprovedOrderCUST_CODE: TIBStringField;
    qryApprovedOrderORDER_NO: TIBStringField;
    qryApprovedOrderORDER_DATE: TDateTimeField;
    qryApprovedOrderREF_NO: TIBStringField;
    qryApprovedOrderREF_DATE: TDateTimeField;
    qryApprovedOrderUPDATE_USER: TIBStringField;
    qryApprovedOrderUPDATE_DATE: TDateTimeField;
    qryApprovedOrderSTATUS: TIBStringField;
    qryApprovedOrderORDER_AMT: TFloatField;
    qryApprovedOrderDESCS: TIBStringField;
    qryApprovedOrderSCHEDULE_DATE: TDateTimeField;
    qryApprovedOrderREQUIRED_SPEC_SHEET: TIBStringField;
    qryApprovedOrderREMARKS: TIBStringField;
    qryApprovedOrderFAX_TO: TIBStringField;
    qryApprovedOrderCC_TO: TIBStringField;
    qryApprovedOrderNEW_ORDER_FLAG: TIBStringField;
    qryApprovedOrderNO_OF_PRINT: TSmallintField;
    qryApprovedOrderVALIDITY: TDateTimeField;
    qryApprovedOrderTAX_AMT: TFloatField;
    qryApprovedOrderCURRENCY_CD: TIBStringField;
    qryApprovedOrderNAME: TIBStringField;
    qryApprovedOrderADDRESS1: TIBStringField;
    qryApprovedOrderADDRESS2: TIBStringField;
    qryApprovedOrderADDRESS3: TIBStringField;
    qryApprovedOrderCURRENCY_DESCS: TIBStringField;
    qryApprovedOrderSTOCK_USAGED_FLAG: TIBStringField;
    qryApprovedOrderTERM_OF_PAYMENT: TSmallintField;
    qryUnApproveRevisionDOC_DATE: TDateTimeField;
    qryUnApproveRevisionDOC_NO: TIBStringField;
    qryUnApproveRevisionNO_OF_REVISION: TSmallintField;
    qryUnApproveRevisionFROM_ORDER_DATE: TDateTimeField;
    qryUnApproveRevisionTO_ORDER_DATE: TDateTimeField;
    qryUnApproveRevisionREVISION_BY: TIBStringField;
    qryUnApproveRevisionDISTRIBUTE_TO: TIBStringField;
    qryUnApproveRevisionUPDATE_USER: TIBStringField;
    qryUnApproveRevisionUPDATE_DATE: TDateTimeField;
    qryUnApproveRevisionREMARKS: TIBStringField;
    qryUnApproveRevisionSTATUS: TIBStringField;
    spCleanUpOrderRevision: TIBStoredProc;
    qryGetRevisionInfo: TIBQuery;
    dsRevisionHD: TDataSource;
    qryGetRevisionInfoREVISION_NO: TSmallintField;
    qryGetRevisionInfoREVISION_BY: TIBStringField;
    qryGetRevisionInfoDISTRIBUTE_TO: TIBStringField;
    spGenRevisionDT: TIBStoredProc;
    dsRevisionDT: TDataSource;
    tbRevisionDTNEW_ORDER_FLAG: TIBStringField;
    tbRevisionDTSTATUS: TIBStringField;
    dsUnApproveOrder: TDataSource;
    tbSaleOrderDTView: TIBTable;
    tbSaleOrderDTViewORDER_NO: TIBStringField;
    tbSaleOrderDTViewORDER_DATE: TDateTimeField;
    tbSaleOrderDTViewITEM_CODE: TIBStringField;
    tbSaleOrderDTViewCUST_CODE: TIBStringField;
    tbSaleOrderDTViewLINE_NO: TSmallintField;
    tbSaleOrderDTViewUOM: TIBStringField;
    tbSaleOrderDTViewITEM_DESCS: TIBStringField;
    tbSaleOrderDTViewUNIT_COST: TFloatField;
    tbSaleOrderDTViewTOTAL_AMT: TFloatField;
    tbSaleOrderDTViewREMARKS: TIBStringField;
    tbSaleOrderDTViewDISCS_AMT: TFloatField;
    tbSaleOrderDTViewTAX_AMT: TFloatField;
    tbSaleOrderDTViewBASE_AMT: TFloatField;
    tbSaleOrderDTViewTAX_CD: TIBStringField;
    tbSaleOrderDTViewDISCS_CD: TIBStringField;
    tbSaleOrderDTViewQTY: TFloatField;
    tbSaleOrderDTViewTAX_RATE: TFloatField;
    tbSaleOrderDTViewSTATUS: TIBStringField;
    tbSaleOrderDTViewDET_QTY: TFloatField;
    tbSaleOrderDTViewDELIVERY_DATE: TDateTimeField;
    tbSaleOrderDTViewURGENT_FLAG: TIBStringField;
    tbSaleOrderDTViewMARK_UP: TSmallintField;
    tbSaleOrderDTViewSTOCK_USAGED_FLAG: TIBStringField;
    tbSaleOrderDTViewSTOCK_USAGED_QTY: TFloatField;
    tbSaleQuoteDTView: TIBTable;
    dsUnapproveQuote: TDataSource;
    tbRevisionDTName: TStringField;
    tbUnapproveOrderDT: TIBTable;
    tbUnapproveOrderDTORDER_NO: TIBStringField;
    tbUnapproveOrderDTORDER_DATE: TDateTimeField;
    tbUnapproveOrderDTITEM_CODE: TIBStringField;
    tbUnapproveOrderDTCUST_CODE: TIBStringField;
    tbUnapproveOrderDTLINE_NO: TSmallintField;
    tbUnapproveOrderDTUOM: TIBStringField;
    tbUnapproveOrderDTITEM_DESCS: TIBStringField;
    tbUnapproveOrderDTUNIT_COST: TFloatField;
    tbUnapproveOrderDTTOTAL_AMT: TFloatField;
    tbUnapproveOrderDTREMARKS: TIBStringField;
    tbUnapproveOrderDTDISCS_AMT: TFloatField;
    tbUnapproveOrderDTTAX_AMT: TFloatField;
    tbUnapproveOrderDTBASE_AMT: TFloatField;
    tbUnapproveOrderDTTAX_CD: TIBStringField;
    tbUnapproveOrderDTDISCS_CD: TIBStringField;
    tbUnapproveOrderDTQTY: TFloatField;
    tbUnapproveOrderDTTAX_RATE: TFloatField;
    tbUnapproveOrderDTSTATUS: TIBStringField;
    tbUnapproveOrderDTDET_QTY: TFloatField;
    tbUnapproveOrderDTDELIVERY_DATE: TDateTimeField;
    tbUnapproveOrderDTURGENT_FLAG: TIBStringField;
    tbUnapproveOrderDTMARK_UP: TSmallintField;
    tbUnapproveOrderDTSTOCK_USAGED_FLAG: TIBStringField;
    tbUnapproveOrderDTSTOCK_USAGED_QTY: TFloatField;
    dsApprovedOrder: TDataSource;
    tbDeliveryHD: TIBTable;
    tbDeliveryDT: TIBTable;
    tbDeliveryDTLink: TIBTable;
    dsDeliveryHD: TDataSource;
    tbDeliveryHDDELIVERY_NO: TIBStringField;
    tbDeliveryHDDELIVERY_DATE: TDateTimeField;
    tbDeliveryHDCUST_CODE: TIBStringField;
    tbDeliveryHDREMARKS: TIBStringField;
    tbDeliveryHDUPDATE_USER: TIBStringField;
    tbDeliveryHDUPDATE_DATE: TDateTimeField;
    tbDeliveryHDSTATUS: TIBStringField;
    tbDeliveryHDREF_NO: TIBStringField;
    tbDeliveryHDREF_DATE: TDateTimeField;
    tbDeliveryHDDESCS: TIBStringField;
    tbDeliveryHDINVOICE_MATCHED: TIBStringField;
    tbDeliveryDTITEM_CODE: TIBStringField;
    tbDeliveryDTDELIVERY_NO: TIBStringField;
    tbDeliveryDTDESCS: TIBStringField;
    tbDeliveryDTDELIVERY_DATE: TDateTimeField;
    tbDeliveryDTUOM: TIBStringField;
    tbDeliveryDTCUST_CODE: TIBStringField;
    tbDeliveryDTDET_QTY: TFloatField;
    tbDeliveryDTUNIT_COST: TFloatField;
    tbDeliveryDTORDER_NO: TIBStringField;
    tbDeliveryDTTOTAL_AMT: TFloatField;
    tbDeliveryDTORDER_DATE: TDateTimeField;
    tbDeliveryDTTAX_AMT: TFloatField;
    tbDeliveryDTTAX_CD: TIBStringField;
    tbDeliveryDTMELT_NO: TIBStringField;
    tbDeliveryDTBUNDLE_NO: TSmallintField;
    tbDeliveryDTREF_NO: TIBStringField;
    tbDeliveryDTREF_DATE: TDateTimeField;
    tbDeliveryDTORDER_QTY: TFloatField;
    tbDeliveryDTONHAND_QTY: TFloatField;
    tbDeliveryDTMARK_UP: TSmallintField;
    tbDeliveryDTMARK_UP_QTY: TFloatField;
    qryUnapproveDelivery: TIBQuery;
    qryUnapproveDeliveryDELIVERY_NO: TIBStringField;
    qryUnapproveDeliveryDELIVERY_DATE: TDateTimeField;
    qryUnapproveDeliveryREF_NO: TIBStringField;
    qryUnapproveDeliveryREF_DATE: TDateTimeField;
    qryUnapproveDeliveryDESCS: TIBStringField;
    qryUnapproveDeliveryNAME: TIBStringField;
    qryUnapproveDeliverySTATUS: TIBStringField;
    tbDeliveryHDNAME: TStringField;
    tbDeliveryDTMelt: TIBTable;
    tbDeliveryDTOrder: TIBTable;
    dsDeliveryDT: TDataSource;
    dsDeliveryDTOrder: TDataSource;
    dsDeliveryMelt: TDataSource;
    tbDeliveryDTLinkDELIVERY_NO: TIBStringField;
    tbDeliveryDTLinkDELIVERY_DATE: TDateTimeField;
    tbDeliveryDTLinkBATCH_NO: TIntegerField;
    tbDeliveryDTLinkMELT_NO: TIBStringField;
    tbDeliveryDTLinkREF_NO: TIBStringField;
    tbDeliveryDTLinkREF_DATE: TDateTimeField;
    tbDeliveryDTLinkBUNDLE_NO: TSmallintField;
    tbDeliveryDTLinkQTY: TFloatField;
    tbDeliveryDTMeltDELIVERY_NO: TIBStringField;
    tbDeliveryDTMeltDELIVERY_DATE: TDateTimeField;
    tbDeliveryDTMeltBATCH_NO: TIntegerField;
    tbDeliveryDTMeltMELT_NO: TIBStringField;
    tbDeliveryDTMeltSTART_BUNDLE: TSmallintField;
    tbDeliveryDTMeltTOTAL_BUNDLE: TSmallintField;
    tbDeliveryDTMeltONHAND_QTY: TFloatField;
    tbDeliveryDTMeltTOTAL_CHARGED_QTY: TFloatField;
    tbDeliveryDTOrderDELIVERY_NO: TIBStringField;
    tbDeliveryDTOrderDELIVERY_DATE: TDateTimeField;
    tbDeliveryDTOrderORDER_NO: TIBStringField;
    tbDeliveryDTOrderORDER_DATE: TDateTimeField;
    tbDeliveryDTOrderCUST_CODE: TIBStringField;
    tbDeliveryDTOrderITEM_CODE: TIBStringField;
    tbDeliveryDTOrderUOM: TIBStringField;
    tbDeliveryDTOrderBATCH_NO: TIntegerField;
    tbDeliveryDTMeltREF_NO: TIBStringField;
    tbDeliveryDTMeltREF_DATE: TDateTimeField;
    qryDOActiveOrderItem: TIBQuery;
    qryDOActiveOrderItemORDER_NO: TIBStringField;
    qryDOActiveOrderItemORDER_DATE: TDateTimeField;
    qryDOActiveOrderItemITEM_CODE: TIBStringField;
    qryDOActiveOrderItemCUST_CODE: TIBStringField;
    qryDOActiveOrderItemLINE_NO: TSmallintField;
    qryDOActiveOrderItemUOM: TIBStringField;
    qryDOActiveOrderItemITEM_DESCS: TIBStringField;
    qryDOActiveOrderItemUNIT_COST: TFloatField;
    qryDOActiveOrderItemTOTAL_AMT: TFloatField;
    qryDOActiveOrderItemREMARKS: TIBStringField;
    qryDOActiveOrderItemDISCS_AMT: TFloatField;
    qryDOActiveOrderItemTAX_AMT: TFloatField;
    qryDOActiveOrderItemBASE_AMT: TFloatField;
    qryDOActiveOrderItemTAX_CD: TIBStringField;
    qryDOActiveOrderItemDISCS_CD: TIBStringField;
    qryDOActiveOrderItemQTY: TFloatField;
    qryDOActiveOrderItemTAX_RATE: TFloatField;
    qryDOActiveOrderItemSTATUS: TIBStringField;
    qryDOActiveOrderItemDET_QTY: TFloatField;
    qryDOActiveOrderItemDELIVERY_DATE: TDateTimeField;
    qryDOActiveOrderItemURGENT_FLAG: TIBStringField;
    qryDOActiveOrderItemMARK_UP: TSmallintField;
    qryDOActiveOrderItemSTOCK_USAGED_FLAG: TIBStringField;
    qryDOActiveOrderItemSTOCK_USAGED_QTY: TFloatField;
    GEN_DO_BATCH_NO: TIBQuery;
    tbDeliveryDTOrderORDER_QTY: TFloatField;
    tbDeliveryDTOrderMARKUP: TSmallintField;
    tbDeliveryDTOrderDET_QTY: TFloatField;
    qryDOStock: TIBQuery;
    qryDOStockITEM_CODE: TIBStringField;
    qryDOStockUOM_CD: TIBStringField;
    qryDOStockONHAND_QTY: TFloatField;
    qryDOStockRESERVED_QTY: TFloatField;
    qryDOStockCUST_CODE: TIBStringField;
    qryDOStockDOC_NO: TIBStringField;
    qryDOStockDOC_DATE: TDateTimeField;
    qryDOStockUNIT_COST: TFloatField;
    qryDOStockTOTAL_COST: TFloatField;
    qryDOStockMELT_NO: TIBStringField;
    qryDOStockBUNDLE_QTY: TSmallintField;
    tbDeliveryDTMeltPostOnhand: TFloatField;
    tbDeliveryDTOrderUNIT_COST: TFloatField;
    tbDeliveryDTOrdermarkupqty: TFloatField;
    tbDeliveryDTLinkClone: TIBTable;
    IBStringField1: TIBStringField;
    DateTimeField1: TDateTimeField;
    IntegerField1: TIntegerField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    DateTimeField2: TDateTimeField;
    SmallintField1: TSmallintField;
    FloatField5: TFloatField;
    tbDeliveryDTClone: TIBTable;
    SmallintField2: TSmallintField;
    IBStringField4: TIBStringField;
    DateTimeField3: TDateTimeField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    DateTimeField4: TDateTimeField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    IBStringField10: TIBStringField;
    DateTimeField5: TDateTimeField;
    IBStringField11: TIBStringField;
    FloatField9: TFloatField;
    IBStringField12: TIBStringField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    SmallintField3: TSmallintField;
    FloatField12: TFloatField;
    tbDeliveryDTLinkAll: TIBTable;
    IBStringField13: TIBStringField;
    DateTimeField6: TDateTimeField;
    IntegerField2: TIntegerField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    DateTimeField7: TDateTimeField;
    SmallintField4: TSmallintField;
    FloatField13: TFloatField;
    qryDeliveryDTMeltSummary: TIBQuery;
    qryDeliveryDTMeltSummaryDELIVERY_NO: TIBStringField;
    qryDeliveryDTMeltSummaryBATCH_NO: TIntegerField;
    qryDeliveryDTMeltSummaryTOTAL_CHARGED_QTY: TFloatField;
    spPostDelivery: TIBStoredProc;
    qryUnapproveDeliveryCUST_CODE: TIBStringField;
    qryDeliveryDTMeltSummaryTOTAL_BUNDLE: TLargeintField;
    procedure tbSaleQuoteHDNewRecord(DataSet: TDataSet);
    procedure tbSaleQuoteHDBeforePost(DataSet: TDataSet);
    procedure tbSaleQuoteHDCUST_CODEChange(Sender: TField);
    procedure tbSaleQuoteDTITEM_CODEChange(Sender: TField);
    procedure tbSaleQuoteDTNewRecord(DataSet: TDataSet);
    procedure tbSaleQuoteDTUNIT_COSTChange(Sender: TField);
    procedure tbSaleQuoteHDAfterScroll(DataSet: TDataSet);
    procedure tbSaleQuoteDTDISCS_AMTChange(Sender: TField);
    procedure tbSaleQuoteDTTAX_RATEChange(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure tbComponentDetailLookupBeforeDelete(DataSet: TDataSet);
    procedure tbSaleOrderHDBeforePost(DataSet: TDataSet);
    procedure tbSaleOrderHDCUST_CODEChange(Sender: TField);
    procedure tbSaleOrderHDNewRecord(DataSet: TDataSet);
    procedure tbSaleOrderDTNewRecord(DataSet: TDataSet);
    procedure tbSaleOrderDTITEM_CODEChange(Sender: TField);
    procedure tbSaleOrderHDAfterScroll(DataSet:TDataSet);
    procedure tbSaleOrderDTUNIT_COSTChange(Sender: TField);
    procedure tbSaleOrderDTBASE_AMTChange(Sender: TField);
    procedure tbSaleOrderDTTAX_RATEChange(Sender: TField);
    procedure tbRevisionHDNewRecord(DataSet: TDataSet);
    procedure tbRevisionHDBeforePost(DataSet: TDataSet);
    procedure tbRevisionHDNO_OF_REVISIONChange(Sender: TField);
    procedure tbRevisionDTAfterOpen(DataSet: TDataSet);
    procedure tbSaleOrderDTAfterScroll(DataSet: TDataSet);
    procedure tbSaleQuoteDTAfterScroll(DataSet: TDataSet);
    procedure tbRevisionHDAfterScroll(DataSet: TDataSet);
    procedure qryUnApproveOrderAfterOpen(DataSet: TDataSet);
    procedure qryUnApproveQuoteAfterOpen(DataSet: TDataSet);
    procedure tbDeliveryHDNewRecord(DataSet: TDataSet);
    procedure tbDeliveryDTOrderORDER_NOChange(Sender: TField);
    procedure tbDeliveryDTOrderBeforePost(DataSet: TDataSet);
    procedure tbDeliveryDTOrderNewRecord(DataSet: TDataSet);
    procedure tbDeliveryHDBeforePost(DataSet: TDataSet);
    procedure tbDeliveryDTOrderAfterScroll(DataSet: TDataSet);
    procedure tbDeliveryDTMeltNewRecord(DataSet: TDataSet);
    procedure tbDeliveryDTMeltMELT_NOChange(Sender: TField);
    procedure tbDeliveryHDAfterScroll(DataSet: TDataSet);
    procedure tbDeliveryDTMeltCalcFields(DataSet: TDataSet);
    procedure tbDeliveryDTLinkAfterPost(DataSet: TDataSet);
    procedure tbDeliveryDTLinkBeforeDelete(DataSet: TDataSet);
    procedure tbDeliveryDTLinkAfterDelete(DataSet: TDataSet);
    procedure tbDeliveryDTMeltBeforeDelete(DataSet: TDataSet);
    procedure tbDeliveryDTMeltAfterDelete(DataSet: TDataSet);
    procedure tbDeliveryDTOrderBeforeDelete(DataSet: TDataSet);
    procedure tbDeliveryDTOrderCalcFields(DataSet: TDataSet);
    procedure tbDeliveryDTLinkBeforePost(DataSet: TDataSet);
    procedure tbDeliveryDTOrderITEM_CODEChange(Sender: TField);


  private
    { Private declarations }
  public
     ActiveOrderCustomer,ActiveQuotationCustomer,ActiveRevisionCustomer:String;


     //delivery order
     currentReservedItem:TCurrentDeliveryReservedItem  ;

     procedure SaveContract(DataSet:TDataSet; docNo:String;docDate:TDateTime);
     procedure refreshContract;
     procedure UpdateComponentDetail(CustCode,ItemCode:string);
     procedure updateQuotationSummary(custCode,docNo:String);
     procedure updateOrderSummary(custCode,docNo:String);
     function UpdateSaleDocumentStatus(CustCode,docNo,docDate:string;documentType:TSaleOrderDocumentType;status:String):boolean;
     function UpdateSaleDocumentStatusWithComment(CustCode,docNo,docDate:string;documentType:TSaleOrderDocumentType;status,Comment:String):boolean;



     {*************Sale order revision***********}
     function getNextRevisionNumber:integer;
     function createNewSaleOrderRevisionHeader(adate:TDateTime):String;
     procedure createNewSaleOrderRevisionDetail(DataSet:TDataSet);

     procedure refreshNoneApproveSaleDocument(DOCTYPE: TSaleOrderDocumentType );

     {****delete from so order revsion dt when close or cancel  2 Feb,2011**}
     function deleteSaleOrderRevsionDetailItem(aOrderNo:String; aCustCode:String):boolean;




     {**delivery order **}
     function getDeliveryBatchNo:integer;

     {****to synchronize item infor form so_det_dt_link to so_det_dt**}
     procedure synchronizeDeliveryOrderItem;

     {****update reserved qty to so_sales_item_stock**}
     procedure synchronizeDeliveryReservedQty(meltno:string;itemcode:string;refno:string;qty:double);
     {**get current reserved qty before update **}
     function getCurrentReservedQty(meltno:string;itemcode:string;refno:string):double ;


     {****delete data from so_det_dt_melt , so_det_dt_link**}
     procedure deleteDeliveryLink(deliveryNo:string; batchno:integer);

     //delete per lot no
     procedure deleteDeliveryLinkByMeltNo(deliveryNo,deliverydate:string; batchno:integer; meltno:string);

     //delete all data from so_det_dt with spacific document no
     function deleteDeliveryOrderItem(deliveryNO:String;custcode:string):boolean;

     function deleteDeliveryOrderItembyBundle(deliveryNO:String;custcode:string;bundle:integer):boolean;

     {****x_post_dt**}
     function postDeliveryOrder(deliveryNo:string;deliveryDate:TDateTime;custcode:string):boolean   ;

     function canPostDeliveryOrder(deliveryNo,custCode:string):boolean;





    { Public declarations }
  end;



var
  SaleOrderDataManager: TSaleOrderDataManager;
  SaleDocumentType:TSaleOrderDocumentType;

implementation

{$R *.dfm}

procedure TSaleOrderDataManager.refreshNoneApproveSaleDocument(DOCTYPE: TSaleOrderDocumentType );
BEGIN
 commit;
 CASE DOCTYPE OF
    TYPE_ORDER:   BEGIN
      qryUnApproveOrder.Close;
      qryUnApproveOrder.Open;
       tbSaleOrderDTView.Close;
       tbSaleOrderDTView.Open;
    END;
    TYPE_QUOTATION:begin
      qryUnApproveQuote.Close;
      qryUnApproveQuote.Open;
      tbSaleQuoteDTView.Close;
      tbSaleQuoteDTView.Open;
    end;
    TYPE_REVISION:begin
      qryUnApproveRevision.close;
      qryUnApproveRevision.open;
    end;
 END;
END;

procedure  TSaleOrderDataManager.refreshContract;
begin
   tbContract.Close;
   tbContract.Open;
end;


function TSaleOrderDataManager.getNextRevisionNumber:integer;
begin
   result:=-1;
   try
      COMMIT;
      qryGetRevisionInfo.open;
      result:= qryGetRevisionInfo.Fields[0].AsInteger +1;
      qryGetRevisionInfo.Close;
   except on e:exception do
      errorEx('Could not get revision no '+e.Message);
   end;


end;

function  TSaleOrderDataManager.createNewSaleOrderRevisionHeader(adate:TDateTime):string;
var newRevision:integer;
begin
  result:='';

// qryGetRevisionInfo.open;
  newRevision   :=getNextRevisionNumber;
   if confirm('New revison no ='+IntToStr(newRevision)+' will be genrated?')=mrYes then
    begin
      try
      tbRevisionHD.oPEN;
      tbRevisionHD.Insert;
      tbRevisionHD.FieldByName('FROM_ORDER_DATE').AsDateTime := aDate;
      tbRevisionHD.Post;
      except on e:exception do
         errorex('Could not create sale order revison header '+e.Message);
      end;
      commit;
      result:=tbRevisionHD.FieldByName('doc_no').AsString;
  end
  else
  begin
     warning('Operation abort') ;
  end;
end;
procedure  TSaleOrderDataManager.createNewSaleOrderRevisionDetail(DATASET:TDataSet);
begin
 try
   spGenRevisionDT.ParamByName('ADOC_NO').Value := dataset.FieldByName('DOC_NO').AsString;
   spGenRevisionDT.ParamByName('ADOC_DATE').Value := dataset.FieldByName('DOC_DATE').AsDateTime;
   spGenRevisionDT.ParamByName('AFROM_DATE').Value := dataset.FieldByName('FROM_ORDER_DATE').AsDateTime;
   spGenRevisionDT.ExecProc;
 except on e:exception do
   errorex('Could not create revision detail'+e.Message);
 end;

end;


function TSaleOrderDataManager.UpdateSaleDocumentStatusWithComment(CustCode,docNo,DOCDATE:string;
documentType:TSaleOrderDocumentType;status,Comment:String):boolean;
Var sqlCMD,sqlDetail:String;
  procedure handleException(e:exception);
  begin
        errorEx('Could not update document status '+e.Message);
        result:=false;
  end;
begin
   sqlCMD:='';
   sqlDetail:='';
   result:=true;
   case documentType of
      TYPE_ORDER:
      Begin
         sqlCMD:='UPDATE SO_ORDER_HD SET STATUS='+QuotedStr(status)+
         ', descs ='+quotedStr(comment)+
         ',update_user='+ quotedStr(WarehouseDataManager.User.userid)+ //17 DEC,2010 update  user who execute
         ',update_date =current_timestamp'+
        ' where cust_code='+quotedStr(CustCode)+
        ' and order_no ='+quotedStr(docNo)+
        ' and order_date ='+quotedStr(docDate);

        //ALSO UPDATE DETAIL
        sqlDetail:='UPDATE SO_ORDER_DT SET STATUS='+QuotedStr(status)+
        ' where cust_code='+quotedStr(CustCode)+
        ' and order_no ='+quotedStr(docNo)+
        ' and order_date ='+quotedStr(docDate);
      end;

      TYPE_QUOTATION:begin
         sqlCMD:='UPDATE SO_QUOTATION_HD SET STATUS='+QuotedStr(status)+
          ',update_user='+ quotedStr(WarehouseDataManager.User.userid)+ //17 DEC,2010 update  user who execute
         ',update_date =current_timestamp'+
        ' where cust_code='+quotedStr(CustCode)+
        ' and doc_no ='+quotedStr(docNo)+
        ' and doc_date ='+quotedStr(docDate);

          sqlDetail:='UPDATE SO_QUOTATION_DT SET STATUS='+QuotedStr(status)+
        ' where cust_code='+quotedStr(CustCode)+
        ' and DOC_no ='+quotedStr(docNo)+
        ' and DOC_date ='+quotedStr(docDate);
      end;
      TYPE_REViSION:begin
        sqlCMD:='UPDATE so_order_revision_hd SET STATUS='+QuotedStr(status)+
         ',update_user='+ quotedStr(WarehouseDataManager.User.userid)+ //17 DEC,2010 update  user who execute
         ',update_date =current_timestamp'+
        ' where   DOC_NO ='+quotedStr(docNo)+
        ' and DOC_date ='+quotedStr(docDate);

       //DEBUG DO NOT USE FOR ACTUAL ROLLOUT
           sqlDetail:='UPDATE SO_ORDER_REVISION_DT SET NEW_ORDER_FLAG='+QuotedStr(status)+
        ' where   DOC_no ='+quotedStr(docNo)+
        ' and DOC_date ='+quotedStr(docDate);
      end;
   end;
   if (sqlCMD <>'') then
   begin
      try
         qryAdhoc.Close;
         qryAdhoc.SQL.Text :=sqlCMD;
         qryAdhoc.ExecSQL;

      except on e:exception do
         handleException (E);
      end;
      if (sqlDetail <>'') then
      begin
         try
         qryAdhoc.Close;
         qryAdhoc.SQL.Text :=sqlDetail;
         qryAdhoc.ExecSQL;

      except on e:exception do
         handleException (E);
      end;
      end;

   end;
end;

function TSaleOrderDataManager.UpdateSaleDocumentStatus(CustCode,docNo,DOCDATE:string;documentType:TSaleOrderDocumentType;status:String):boolean;
Var sqlCMD,sqlDetail:String;
  procedure handleException(e:exception);
  begin
        errorEx('Could not update document status '+e.Message);
        result:=false;
  end;
begin
   sqlCMD:='';
   result:=true;
case documentType of
      TYPE_ORDER:
      Begin
         sqlCMD:='UPDATE SO_ORDER_HD SET STATUS='+QuotedStr(status)+
          ',update_user='+ quotedStr(WarehouseDataManager.User.userid)+ //17 DEC,2010 update  user who execute
         ',update_date =current_timestamp'+
        ' where cust_code='+quotedStr(CustCode)+
        ' and order_no ='+quotedStr(docNo)+
        ' and order_date ='+quotedStr(docDate);

        //ALSO UPDATE DETAIL
        sqlDetail:='UPDATE SO_ORDER_DT SET STATUS='+QuotedStr(status)+
        ' where cust_code='+quotedStr(CustCode)+
        ' and order_no ='+quotedStr(docNo)+
        ' and order_date ='+quotedStr(docDate);
      end;

      TYPE_QUOTATION:begin
         sqlCMD:='UPDATE SO_QUOTATION_HD SET STATUS='+QuotedStr(status)+
          ',update_user='+ quotedStr(WarehouseDataManager.User.userid)+ //17 DEC,2010 update  user who execute
         ',update_date =current_timestamp'+
        ' where cust_code='+quotedStr(CustCode)+
        ' and doc_no ='+quotedStr(docNo)+
        ' and doc_date ='+quotedStr(docDate);

          sqlDetail:='UPDATE SO_QUOTATION_DT SET STATUS='+QuotedStr(status)+
        ' where cust_code='+quotedStr(CustCode)+
        ' and DOC_no ='+quotedStr(docNo)+
        ' and DOC_date ='+quotedStr(docDate);
      end;
      TYPE_REViSION:begin
        sqlCMD:='UPDATE so_order_revision_hd SET STATUS='+QuotedStr(status)+
         ',update_user='+ quotedStr(WarehouseDataManager.User.userid)+ //17 DEC,2010 update  user who execute
         ',update_date =current_timestamp'+
        ' where   DOC_NO ='+quotedStr(docNo)+
        ' and DOC_date ='+quotedStr(docDate);


      end;
   end;  if (sqlCMD <>'') then
   begin
      try
         qryAdhoc.Close;
         qryAdhoc.SQL.Text :=sqlCMD;
         qryAdhoc.ExecSQL;

      except on e:exception do
         handleException (E);
      end;
      if (sqlDetail <>'') then
      begin
         try
         qryAdhoc.Close;
         qryAdhoc.SQL.Text :=sqlDetail;
         qryAdhoc.ExecSQL;

      except on e:exception do
         handleException (E);
      end;
  end;
end;
end;


procedure TSaleOrderDataManager.SaveContract(DataSet:TDataSet; docNo:String;docDate:TDateTime);
begin

    tbContractLAST_USED_DOC_NO.AsString := docNo;
    tbContractLAST_USED_DOC_Date.AsDateTime := docDate;
    tbContractCUST_CODE.AsString := DataSet.FieldByName('CUST_CODE').AsString;
    tbContractUPDATE_USER.AsString := WarehouseDataManager.User.userid;
    tbContractUPDATE_Date.AsDateTime :=now;
    tbContract.Post;

end;
procedure TSaleOrderDataManager.updateQuotationSummary(custCode,docNo:String);
begin
   try
      qryQuotSummary.Close;
      qryQuotSummary.ParamByName('PDocNo').Value :=docNo;
      qryQuotSummary.ParamByName('PCustCode').Value :=cusTcODE;

      qryQuotSummary.Open;
      commit;
   except on e:exception do
     errorEx(e.message);
   end;
end;

procedure TSaleOrderDataManager.updateOrderSummary(custCode,docNo:String);
begin
   try
      qryOrderSummary.Close;
      qryOrderSummary.ParamByName('PDocNo').Value :=docNo;
      qryOrderSummary.ParamByName('PCustCode').Value :=cusTcODE;

      qryQuotSummary.Open;
      commit;
   except on e:exception do
     errorEx(e.message);
   end;
end;


procedure  TSaleOrderDataManager.UpdateComponentDetail(CustCode,ItemCode:string);
begin
  try
    try
        spGetSaleComponetDetail.ParamByName('ACUST_CODE').Value:=CustCode;
        spGetSaleComponetDetail.ParamByName('Aitem_CODE').value:=ItemCode;
        spGetSaleComponetDetail.ExecProc;
        commit;
    finally

        tbComponentDetailLookup.Close;
        tbComponentDetailLookup.oPEN;

    end;
  except on e:exception do
    errorEx('Error when updating component detail '+e.Message);
  end;
end;

procedure TSaleOrderDataManager.tbSaleQuoteHDNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DOC_AMT').AsFloat:=0;
  DataSet.FieldByName('DOC_date').AsDateTime:=Date;
  DataSet.FieldByName('TAX_AMT').AsFloat:=0;
  DataSet.FieldByName('NO_OF_PRINT').AsInteger:=0;
  dataset.fieldbyname('prepare_person').AsString :=WarehouseDataManager.User.username;
  DataSet.FieldByName('STATUS').AsString :='N';
  DataSet.FieldByName('DESCS').AsString :='Sale Quotion';
end;

procedure TSaleOrderDataManager.tbSaleQuoteHDBeforePost(DataSet: TDataSet);
begin
  inherited;
  activeUser :=WarehouseDataManager.User.userid;
  updateModifiedRecord(dataset);
end;

procedure TSaleOrderDataManager.tbSaleQuoteHDCUST_CODEChange(
  Sender: TField);
begin
  inherited;
  tbSaleQuoteHD.FieldByName('name').AssTRING := tbCustomerLookup.FieldByName('name').AsString;
  tbSaleQuoteHD.FieldByName('address1').AssTRING := tbCustomerLookup.FieldByName('address1').AsString;
  tbSaleQuoteHD.FieldByName('address2').AssTRING := tbCustomerLookup.FieldByName('address2').AsString;
  tbSaleQuoteHD.FieldByName('address3').AssTRING := tbCustomerLookup.FieldByName('address3').AsString;
  tbSaleQuoteHD.FieldByName('CURRENCY_CD').AssTRING := tbCustomerLookup.FieldByName('currency_code').AsString;
  tbSaleQuoteHD.FieldByName('TERM_OF_PAYMENT').AsInteger := tbCustomerLookupCREDIT_TERM.AsInteger;



end;

procedure TSaleOrderDataManager.tbSaleQuoteDTITEM_CODEChange(
  Sender: TField);
begin
  inherited;
 tbSaleQuoteDT.FieldByName('item_descs').AsString:=tbSaleItemLookupDESCS.AsString;
 tbSaleQuoteDT.FieldByName('UOM').AsString :=tbSaleItemLookupUOM_CD.AsString;
 tbSaleQuoteDTUNIT_COST.AsFloat := tbSaleItemLookupSALE_PRICE.AsFloat;
 
end;

procedure TSaleOrderDataManager.tbSaleQuoteDTNewRecord(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('MARK_UP').AsInteger :=10;
  dataset.FieldByName('TAX_RATE').AsFloat :=7;
  dataset.FieldByName('DISCS_AMT').AsFloat :=0;
  dataset.FieldByName('BASE_AMT').AsFloat :=0;
  dataset.FieldByName('TOTAL_AMT').AsFloat :=0;
  DataSet.FieldByName('status').AsString :='N';
  dataset.FieldByName('LINE_NO').AsInteger :=getNextLine(qryAdhoc,
 tbSaleQuoteDT.FieldByName('doc_no').AsString, 'DOC_NO',
 'SO_QUOTATION_DT' ) ;

end;

procedure TSaleOrderDataManager.tbSaleQuoteDTUNIT_COSTChange(
  Sender: TField);
begin
  tbSaleQuoteDTBASE_AMT.AsFloat := tbSaleQuoteDTUNIT_COST.AsFloat *
                                   tbSaleQuoteDTQTY.AsFloat;

  tbSaleQuoteDTTAX_AMT.AsFloat := tbSaleQuoteDTBASE_AMT.AsFloat*tbSaleQuoteDTTAX_RATE.AsFloat/100;
 tbSaleQuoteDTTotal_AMT.AsFloat :=   tbSaleQuoteDTBASE_AMT.AsFloat;

end;


procedure TSaleOrderDataManager.tbSaleQuoteHDAfterScroll(
  DataSet: TDataSet);
begin
  if (DataSet.RecordCount >0) then
   begin
      activeQuotationCustomer:=dataset.FieldByName('CUST_CODE').AsString;
      tbSaleITEMlOOKUP.Filtered:=false;
      tbSaleITEMlOOKUP.Filter:='CUST_CODE='+QuotedStr(activeQuotationCustomer)+
      ' and CURRENT_ACTIVE='+QuotedStr('Y');
      tbSaleITEMlOOKUP.Filtered:=true;

   end;

end;

procedure TSaleOrderDataManager.tbSaleQuoteDTDISCS_AMTChange(
  Sender: TField);
begin
  inherited;
  tbSaleQuoteDTTotal_AMT.AsFloat :=tbSaleQuoteDTBASE_AMT.AsFloat - Sender.AsFloat +
  tbSaleQuoteDTTAX_AMT.AsFloat;
end;

procedure TSaleOrderDataManager.tbSaleQuoteDTTAX_RATEChange(
  Sender: TField);
begin
  inherited;
  tbSaleQuoteDTTAX_AMT.AsFloat := tbSaleQuoteDTBASE_AMT.AsFloat*Sender.AsFloat/100
end;

procedure TSaleOrderDataManager.DataModuleCreate(Sender: TObject);
begin
  inherited;
  setDisplayFormat;
  // activeUser :=WarehouseDataManager.User.userid;
end;

procedure TSaleOrderDataManager.tbComponentDetailLookupBeforeDelete(
  DataSet: TDataSet);
begin
 warning('Could not delete sale item requirement sheet');
 dataset.Cancel;

end;

procedure TSaleOrderDataManager.tbSaleOrderHDBeforePost(DataSet: TDataSet);
begin
  activeUser :=WarehouseDataManager.User.userid;
  updateModifiedRecord(dataset);

end;

procedure TSaleOrderDataManager.tbSaleOrderHDCUST_CODEChange(
  Sender: TField);
begin
  with  tbSaleOrderHD do
  begin
    FieldByName('name').AssTRING := tbCustomerLookup.FieldByName('name').AsString;
    FieldByName('address1').AssTRING := tbCustomerLookup.FieldByName('address1').AsString;
    FieldByName('address2').AssTRING := tbCustomerLookup.FieldByName('address2').AsString;
    FieldByName('address3').AssTRING := tbCustomerLookup.FieldByName('address3').AsString;
    FieldByName('CURRENCY_CD').AssTRING := tbCustomerLookup.FieldByName('currency_code').AsString;
    FieldByName('TERM_OF_PAYMENT').AsInteger := tbCustomerLookupCREDIT_TERM.AsInteger;
  end;
end;

procedure TSaleOrderDataManager.tbSaleOrderHDNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('order_AMT').AsFloat:=0;
  DataSet.FieldByName('order_date').AsDateTime:=Date;
  DataSet.FieldByName('schedule_date').AsDateTime:=Date;
  DataSet.FieldByName('TAX_AMT').AsFloat:=0;
  DataSet.FieldByName('NO_OF_PRINT').AsInteger:=0;
  DataSet.FieldByName('STATUS').AsString :='N';
  DataSet.FieldByName('DESCS').AsString :='Sale Order';

end;

procedure TSaleOrderDataManager.tbSaleOrderDTNewRecord(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('MARK_UP').AsInteger :=10;
  dataset.FieldByName('TAX_RATE').AsFloat :=7;
  dataset.FieldByName('DISCS_AMT').AsFloat :=0;
  dataSET.FieldByName('BASE_AMT').AsFloat :=0;
  dataset.FieldByName('TOTAL_AMT').AsFloat :=0;
  dataset.FieldByName('DET_QTY').AsFloat :=0;
  DataSet.FieldByName('status').AsString :='N';
  DataSet.FieldByName('TAX_CD').AsString :='7%';
  DataSet.FieldByName('DISCS_CD').AsString :='0%';
  dataset.FieldByName('LINE_NO').AsInteger :=getNextLine(qryAdhoc,
 DataSet.FieldByName('order_no').AsString,'ORDER_NO',
 'SO_ORDER_DT' ) ;

end;

procedure TSaleOrderDataManager.tbSaleOrderDTITEM_CODEChange(
  Sender: TField);
begin
  with tbSaleOrderDT do
  begin
   FieldByName('item_descs').AsString:=tbSaleItemLookupDESCS.AsString;
   FieldByName('UOM').AsString :=tbSaleItemLookupUOM_CD.AsString;
  end;

end;
procedure TSaleOrderDataManager.tbSaleOrderHDAfterScroll(
  DataSet: TDataSet);
begin
  if (DataSet.RecordCount >0) then
   begin
      activeOrderCustomer:=dataset.FieldByName('CUST_CODE').AsString;
      tbSaleITEMlOOKUP.Filtered:=false;
      tbSaleITEMlOOKUP.Filter:='CUST_CODE='+QuotedStr(activeOrderCustomer)+
      ' and CURRENT_ACTIVE='+QuotedStr('Y');
      tbSaleITEMlOOKUP.Filtered:=true;

   end;
end;


procedure TSaleOrderDataManager.tbSaleOrderDTUNIT_COSTChange(
  Sender: TField);
begin
  inherited;
  tbSaleOrderDTBASE_AMT.AsFloat := tbSaleOrderDTUNIT_COST.AsFloat *
                                   tbSaleOrderDTQTY.AsFloat;

   tbSaleOrderDTTAX_AMT.AsFloat :=   tbSaleOrderDTBASE_AMT.AsFloat*  tbSaleOrderDTTAX_RATE.AsFloat/100;
  tbSaleOrderDTTotal_AMT.AsFloat :=   tbSaleOrderDTBASE_AMT.AsFloat;
end;

procedure TSaleOrderDataManager.tbSaleOrderDTBASE_AMTChange(
  Sender: TField);
begin
 tbSaleOrderDTTotal_AMT.AsFloat :=tbSaleOrderDTBASE_AMT.AsFloat - Sender.AsFloat +
 tbSaleOrderDTTAX_AMT.AsFloat;

end;

procedure TSaleOrderDataManager.tbSaleOrderDTTAX_RATEChange(
  Sender: TField);
begin
  inherited;
tbSaleOrderDTTAX_AMT.AsFloat := tbSaleOrderDTBASE_AMT.AsFloat*Sender.AsFloat/100
end;

procedure TSaleOrderDataManager.tbRevisionHDNewRecord(DataSet: TDataSet);
var newRevision:integer;
begin
  with dataset do
  begin
    qryGetRevisionInfo.Close;
    qryGetRevisionInfo.Open;
    FieldByName('REVISION_BY').AsString :=  qryGetRevisionInfo.FieldByName('REVISION_BY').AsString;
    FieldByName('DISTRIBUTE_TO').AsString := qryGetRevisionInfo.FieldByName('DISTRIBUTE_TO').AsString;
    newRevision := getNextRevisionNumber;
      FieldByName('NO_OF_REVISION').AsInteger := newRevision;
      FieldByName('doc_no').AsString := IntToStr(newRevision);
      FieldByName('DOC_DATE').AsDateTime :=date;    //SET TO CURRENT DATE
      FieldByName('TO_ORDER_DATE').AsDateTime :=date; //SET TO CURRENT DATE
      FieldByName('FROM_ORDER_DATE').AsDateTime :=date; //SET TO CURRENT DATE

      FieldByName('STATUS').AsString :='N';

  end;
end;

procedure TSaleOrderDataManager.tbRevisionHDBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('DOC_NO').AsString := IntToStr(  DataSet.FieldByName('NO_OF_REVISION').AsInteger);
activeUser :=WarehouseDataManager.User.userid;
  updateModifiedRecord(dataset);
end;

procedure TSaleOrderDataManager.tbRevisionHDNO_OF_REVISIONChange(
  Sender: TField);
begin
  inherited;
  if (tbRevisionHD.State in [dsEdit,dsInsert]) then
  if (Sender.OldValue <> Sender.NewValue) then
  begin
      tbRevisionHDDOC_NO.AsString :=IntToStr(Sender.NewValue);
  end;
end;

procedure TSaleOrderDataManager.tbRevisionDTAfterOpen(DataSet: TDataSet);
begin
  inherited;
  tbRevisionSchedule.Open;
end;

procedure TSaleOrderDataManager.tbSaleOrderDTAfterScroll(
  DataSet: TDataSet);
begin
      if (dataset.FieldByName('CUST_CODE').AsString <>'') then
      begin
            tbSaleITEMlOOKUP.Filtered:=false;
            tbSaleITEMlOOKUP.Filter:='CUST_CODE='+QuotedStr(DataSet.FieldByName('cust_code').AsString)+
            ' and CURRENT_ACTIVE='+QuotedStr('Y');
            tbSaleITEMlOOKUP.Filtered:=true;
      end;

end;

procedure TSaleOrderDataManager.tbSaleQuoteDTAfterScroll(
  DataSet: TDataSet);
begin
      if (dataset.FieldByName('CUST_CODE').AsString <>'') then
      begin
            tbSaleITEMlOOKUP.Filtered:=false;
            tbSaleITEMlOOKUP.Filter:='CUST_CODE='+QuotedStr(DataSet.FieldByName('cust_code').AsString)+
            ' and CURRENT_ACTIVE='+QuotedStr('Y');
            tbSaleITEMlOOKUP.Filtered:=true;
      end;


end;

procedure TSaleOrderDataManager.tbRevisionHDAfterScroll(DataSet: TDataSet);
begin
  if (DataSet.RecordCount >0) then
   begin
   //   activeRevisionCustomer:=dataset.FieldByName('CUST_CODE').AsString;
     // tbSaleITEMlOOKUP.Filtered:=false;
      //tbSaleITEMlOOKUP.Filter:='CUST_CODE='+QuotedStr(activeRevisionCustomer)+
      //' and CURRENT_ACTIVE='+QuotedStr('Y');
      //tbSaleITEMlOOKUP.Filtered:=true;

   end;

end;

procedure TSaleOrderDataManager.qryUnApproveOrderAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  tbSaleOrderDTView.Close;
  tbSaleOrderDTView.Open;
end;

procedure TSaleOrderDataManager.qryUnApproveQuoteAfterOpen(
  DataSet: TDataSet);
begin
   inherited;
  tbSaleQuoteDTView.Close;
  tbSaleQuoteDTView.Open;
end;
// 27 Nov,2010 delivery order entry
procedure TSaleOrderDataManager.tbDeliveryHDNewRecord(DataSet: TDataSet);
begin
  //init header default value
   with dataset do
   begin
       FieldByName('INVOICE_MATCHED').AsString := 'N';
       FieldByName('STATUS').AsString  :='N' ;
       FieldByName('DELIVERY_DATE').AsDateTime := Date; //get current date.
       FieldByName('DESCS').AsString := 'Sale Delivery Order';
       FieldByName('REF_DATE').AsDateTime := Date;
   end;

end;

procedure TSaleOrderDataManager.tbDeliveryDTOrderORDER_NOChange(
  Sender: TField);
begin
  inherited;

  if (sender.AsString <> '') then
  begin

      with tbDeliveryDTOrder do
      begin
         FieldByName('ORDER_DATE').AsDateTime := qryDOActiveOrderItem.FieldByName('ORDER_DATE').AsDateTime;
         FieldByName('CUST_CODE').AsString  := qryDOActiveOrderItem.FieldByName('CUST_CODE').AsString;
         FieldByName('ITEM_CODE').AsString  := qryDOActiveOrderItem.FieldByName('ITEM_CODE').AsString;
         Fieldbyname('UOM').AsString  := qryDOActiveOrderItem.FieldByName('UOM').AsString;
         Fieldbyname('order_qty').AsFloat :=  qryDOActiveOrderItem.FieldByName('QTY').AsFloat;
         Fieldbyname('det_qty').AsFloat :=  qryDOActiveOrderItem.FieldByName('DET_QTY').AsFloat;
         Fieldbyname('markup').AsFloat :=  qryDOActiveOrderItem.FieldByName('mark_up').AsInteger;
         Fieldbyname('unit_cost').AsFloat :=  qryDOActiveOrderItem.FieldByName('unit_cost').asFloat;     //change from as int to as float
      end;
  end;

end;

procedure TSaleOrderDataManager.tbDeliveryDTOrderBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if dataset.FieldByName('batch_no').asInteger < 0 then
  begin
     dataset.FieldByName('batch_no').asInteger:=   getDeliveryBatchNo;
  end;

end;


{********delivery order*******}

function  TSaleOrderDataManager.getDeliveryBatchNo:integer;
begin
  result:=0;
 try
   GEN_DO_BATCH_NO.Close;
   GEN_DO_BATCH_NO.Open;
   RESULT := GEN_DO_BATCH_NO.Fields[0].AsInteger;
 except on e:exception do
    errorEx('Could not generate delivery batch no '+e.Message);
 end;

end;

procedure TSaleOrderDataManager.tbDeliveryDTOrderNewRecord(
  DataSet: TDataSet);
begin
  // 13 Dec,2010 set batch to -1 to assume that record has never been saved before.
  dataset.FieldByName('BATCH_NO').AsInteger := -1;
end;

procedure TSaleOrderDataManager.tbDeliveryHDBeforePost(DataSet: TDataSet);
begin
   activeUser := WarehouseDataManager.User.userid;
   updateModifiedRecord(DATASET);
end;

procedure TSaleOrderDataManager.tbDeliveryDTOrderAfterScroll(
  DataSet: TDataSet);

var itemCode:string;
begin
  itemcode:=DataSet.FieldByName('item_code').asstring;
  if (itemcode <>'') then
  begin
    qryDOStock.Close;
    qryDOStock.ParamByName('AItemCode').value :=itemcode;
    qryDOStock.open;
  end;

end;

procedure TSaleOrderDataManager.tbDeliveryDTMeltNewRecord(
  DataSet: TDataSet);
begin
 DataSet.FieldByName('start_Bundle').asinteger := -1;
 dataset.fieldbyname('total_bundle').asinteger := 0;
 dataset.FieldByName('TOTAL_CHARGED_QTY').AsFloat :=0;
 dataset.FieldByName('ONHAND_QTY').AsFloat :=0;

end;

procedure TSaleOrderDataManager.tbDeliveryDTMeltMELT_NOChange(
  Sender: TField);
begin
  if (sender.asstring <> '') then
  begin
     with  tbDeliveryDTMelt do
     begin
        Fieldbyname('ref_no').asstring := qryDOStock.Fieldbyname('doc_no').asstring;
        fieldbyname('ref_date').asdateTime := qryDOStock.Fieldbyname('doc_date').AsDateTime;
        fieldbyname('onhand_qty').asfloat := qryDOStock.Fieldbyname('onhand_qty').asfloat - qryDOStock.Fieldbyname('reserved_qty').asfloat ;
     end;

  end;
end;

procedure TSaleOrderDataManager.tbDeliveryHDAfterScroll(DataSet: TDataSet);

var custcode :string;
begin
  custcode := dataset.fieldbyname('cust_code').asstring;
  if (custcode <>'') then
  begin
     qryDOActiveOrderItem.close;
     qryDOActiveOrderItem.ParamByName('acustcode').Value := CUSTCODE;
     qryDOActiveOrderItem.OPEN;
  end;

end;

  {****to synchronize item infor form so_det_dt_link to so_det_dt**}
procedure TSaleOrderDataManager.synchronizeDeliveryOrderItem;
begin

//
end;


function TSaleOrderDataManager.deleteDeliveryOrderItem(deliveryNO:String;custcode:string):boolean;
  procedure handleException(e:exception);
  begin
     Errorex('Could not delete delivery order item data'+e.Message);
     result:=false;
  end;
begin
 result:=false;
 try
    try
    qryAdhoc.Close;
    qryAdhoc.SQL.Text:='DELETE FROM SO_DET_DT Where delivery_no='+quotedStr(deliveryNo)+#13+
                      'and cust_code='+quotedStr(custcode);
    qryAdhoc.ExecSQL;
    finally
    result:=true;
    tbDeliveryDT.CLOSE;
    tbDeliveryDT.Open;
    end;
 except on e:exception do
   handleEXCEPTION(E);
 END;

end;

function TSaleOrderDataManager.deleteDeliveryOrderItembyBundle(deliveryNO:String;custcode:string;bundle:integer):boolean;
procedure handleException(e:exception);
  begin
     Errorex('Could not delete delivery order item data'+e.Message);
     result:=false;
  end;
begin
 result:=false;
 try
    try
    qryAdhoc.Close;
    qryAdhoc.SQL.Text:='DELETE FROM SO_DET_DT Where delivery_no='+quotedStr(deliveryNo)+#13+
                      'and cust_code='+quotedStr(custcode)+#13+
                      'and bundle_no='+inttostr(bundle);
    qryAdhoc.ExecSQL;
    finally
    result:=true;
    tbDeliveryDT.CLOSE;
    tbDeliveryDT.Open;
    end;
 except on e:exception do
   handleEXCEPTION(E);
 END;
end;

     {****update reserved qty to so_sales_item_stock**}
procedure TSaleOrderDataManager.synchronizeDeliveryReservedQty(meltno:string;itemcode:string;refno:string;qty:double);

  procedure handleException(e:exception);
  begin
    errorEx('could not update sale reserved qty melt_no='+meltno+#13+'doc_no ='+refno+'item_code='+itemcode);
  end;
begin
   try
      qryAdhoc.close;
      qryAdhoc.SQL.Text :='update so_sales_item_stock'+#13   +
                          'set reserved_qty='+floattostr(qty)+#13   +
                          'where melt_no='+quotedStr(meltno)   +#13   +
                        //  ' and item_code='+quotedStr(itemcode)+#13   +
                          'and doc_no ='+quotedstr(refno);
      qryAdhoc.ExecSQL;
   except on e:exception do
      handleException(e);
   end;
   qryDOStock.Close;
   qryDOStock.open;
   qryDeliveryDTMeltSummary.Close;
   qryDeliveryDTMeltSummary.open;
 //
end;


function TSaleOrderDataManager.getCurrentReservedQty(meltno:string;itemcode:string;refno:string):double ;
 procedure handleException(e:exception);
  begin
    errorEx('could not get sale reserved qty from so_det_dt_link melt_no='+meltno+#13+'doc_no ='+refno+'item_code='+itemcode);

  end;
begin
 result:=0;
   try
      qryAdhoc.close;
      qryAdhoc.SQL.Text :='select sum(qty) from so_det_dt_link' +#13   +
                          'where melt_no='+quotedStr(meltno)  +#13   +
                        //  ' and item_code='+quotedStr(itemcode)+#13   +
                          'and ref_no ='+quotedstr(refno);
      qryAdhoc.Open;
      result:=qryAdhoc.Fields[0].AsFloat;
   except on e:exception do
      handleException(e);
   end;
end;
procedure TSaleOrderDataManager.deleteDeliveryLinkByMeltNo(deliveryNo,deliverydate:string; batchno:integer; meltno:string);
var reservedqty:double;
REFNO:STRING;

procedure handleException(e:exception);
  begin
    errorEx('deleteDeliveryLinkby melt error ='+deliveryNo);

  end ;
begin
  try
     try
          qryAdhoc.close;
          qryAdhoc.SQL.Text :='delete from so_det_dt_melt' +#13   +
                              'where delivery_no='+quotedStr(deliveryno)   +#13   +
                              'and delivery_date ='+quotedStr(deliverydate)  ;


          qryAdhoc.ExecSQL;

       except on e:exception do
          handleException(e);
       end;
  finally
       try
           qryAdhoc.close;
           qryAdhoc.SQL.Text :='';
          qryAdhoc.SQL.Text :='delete from so_det_dt' +#13   +
                              'where delivery_no='+quotedStr(deliveryno)   +#13   +
                              'and delivery_date ='+quotedStr(deliverydate)  ;

          qryAdhoc.ExecSQL;

       except on e:exception do
          handleException(e);
       end;
   end;
   //needless reserved qty will automatic recal in trigger
  // REFNO:=tbDeliveryDTMelt.Fieldbyname('ref_no').AsSTRING;
  // reservedqty:=getCurrentReservedQty(meltno,'',REFNO);
  // synchronizeDeliveryReservedQty(meltno,'',REFNO,reservedqty);
end;
     {****delete data from so_det_dt_melt , so_det_dt_link**}
procedure TSaleOrderDataManager.deleteDeliveryLink(deliveryNo:string; batchno:integer);
procedure handleException(e:exception);
  begin
    errorEx('deleteDeliveryLink error ='+deliveryNo);

  end ;
begin
 try
      qryAdhoc.close;
      qryAdhoc.SQL.Text :='delete from so_det_dt_link' +#13   +
                          'where delivery_no='+quotedStr(deliveryno)   +#13   +
                        //  ' and item_code='+quotedStr(itemcode)+#13   +
                          'and batch_no ='+IntToStr(batchno);
      qryAdhoc.ExecSQL;

   except on e:exception do
      handleException(e);
   end;
    try
      qryAdhoc.close;
      qryAdhoc.SQL.Text :='delete from so_det_dt' +#13   +
                          'where delivery_no='+quotedStr(deliveryno)   ;
                 
      qryAdhoc.ExecSQL;

   except on e:exception do
      handleException(e);
   end;
end;
{****x_post_dt**}
function TSaleOrderDataManager.postDeliveryOrder(deliveryNo:string;deliveryDate:TDateTime;custcode:string)  :boolean ;
 procedure handleException(e:exception);
  begin
    errorEx('could post delivery deliveryno ='+deliveryNo);
    result:=false;
  end ;
begin
  result:=false;
  try
   spPostDelivery.ParamByName('VDOC_NO').Value:=deliveryno;
   spPostDelivery.ParamByName('VDOC_DATE').Value:=deliverydATE;
   spPostDelivery.ParamByName('VCUST_CODE').Value:=custcode;
   spPostdelivery.ExecProc;
   result:=true;
  except on e:exception do
     handleException(e);
  end;
//
end;

procedure TSaleOrderDataManager.tbDeliveryDTMeltCalcFields(
  DataSet: TDataSet);
begin
    tbDeliveryDTMeltPostOnhand.AsFloat :=   tbDeliveryDTMeltONHAND_QTY.asfloat -
    tbDeliveryDTMeltTOTAL_CHARGED_QTY.AsFloat;

end;

procedure TSaleOrderDataManager.tbDeliveryDTLinkAfterPost(
  DataSet: TDataSet);

  var rqty:double;
begin
  inherited;
  with tbDeliveryDTlink do
  begin
       //update reserved qty
       rqty:= getCurrentReservedQty(
        Fieldbyname('melt_no').AsString,
        '',
        FieldByName('ref_no').AsString);
       synchronizeDeliveryReservedQty(
        Fieldbyname('melt_no').AsString,
        '',
        FieldByName('ref_no').AsString  ,
        rqty
       );
      tbDeliveryDTmelt.edit;
      tbDeliveryDTmelt.FieldByName('total_charged_qty').asfloat := rqty;
      tbDeliveryDTmelt.post;

  end;   //
end;

procedure TSaleOrderDataManager.tbDeliveryDTLinkBeforeDelete(
  DataSet: TDataSet);
begin
   //get current stock reserved infor.
   if (currentReservedItem <> nil) then currentReservedItem.Free;
  currentReservedItem :=TCurrentDeliveryReservedItem.Create;
  currentReservedItem.meltno := dataset.FieldByName('melt_no').AsString;
   currentReservedItem.docno := dataset.FieldByName('ref_no').AsString;

   deleteDeliveryOrderItembyBundle(dataset.Fieldbyname('delivery_no').AsString,
   tbDeliveryHD.FieldByName('cust_code').AsString,
   dataset.Fieldbyname('bundle_no').AsInteger);
end;

procedure TSaleOrderDataManager.tbDeliveryDTLinkAfterDelete(  dataset:tdataset);
 var rqty:double;
begin

  with tbDeliveryDTlink do
  begin
       //update reserved qty
       rqty:= getCurrentReservedQty(
        currentReservedItem.meltno,
         currentReservedItem.itemcode,
         currentReservedItem.docno);

       synchronizeDeliveryReservedQty(
        currentReservedItem.meltno,
         currentReservedItem.itemcode,
         currentReservedItem.docno,
        rqty
       );

       tbDeliveryDTMelt.edit;
       tbDeliveryDTMelt.FieldByName('total_charged_qty').asfloat :=rqty;
       tbDeliveryDTMelt.post;
  end;   //


end;

procedure TSaleOrderDataManager.tbDeliveryDTMeltBeforeDelete(
  DataSet: TDataSet);
begin
  //get current stock reserved infor.
   if (currentReservedItem <> nil) then currentReservedItem.Free;
  currentReservedItem :=TCurrentDeliveryReservedItem.Create;
  currentReservedItem.meltno := dataset.FieldByName('melt_no').AsString;
   currentReservedItem.docno := dataset.FieldByName('ref_no').AsString;

end;

procedure TSaleOrderDataManager.tbDeliveryDTMeltAfterDelete(
  DataSet: TDataSet);
  var rqty :double;
  deliveryNo,custcode:string;
begin
 with tbDeliveryDTlink do
  begin
       //update reserved qty
       rqty:= getCurrentReservedQty(
        currentReservedItem.meltno,
         currentReservedItem.itemcode,
         currentReservedItem.docno);

       synchronizeDeliveryReservedQty(
        currentReservedItem.meltno,
         currentReservedItem.itemcode,
         currentReservedItem.docno,
        rqty
       );
        deliveryNo:=tbDeliveryHD.FieldByName('delivery_no').AsString;
        custcode :=tbDeliveryHD.FieldByName('CUST_CODE').AsString;

  
        qryDeliveryDTMeltSummary.Close;
        qryDeliveryDTMeltSummary.open;
        qryDOStock.Close;
        qryDOStock.Open;

  end;

end;

procedure TSaleOrderDataManager.tbDeliveryDTOrderBeforeDelete(
  DataSet: TDataSet);
begin
  if (tbDeliveryDTLink.RecordCount >0 ) then
  begin
       errorEx('Can not delete this record when stock has already assigned');
      abort;
  end;

end;

procedure TSaleOrderDataManager.tbDeliveryDTOrderCalcFields(
  DataSet: TDataSet);
begin
 tbDeliveryDTOrdermarkupqty.asfloat := tbDeliveryDTOrderORDER_QTY.asfloat*
 tbDeliveryDTOrderMARKUP.AsInteger/100;

end;
 {***This seems not work. totalcharged always get old value.
 problem occures when user try to edit 
 ***}
procedure TSaleOrderDataManager.tbDeliveryDTLinkBeforePost(
  DataSet: TDataSet);
  var totalCharged:double;

begin
   tbDeliveryDTlinkclone.open;
   tbDeliveryDTlinkclone.first;
   totalCharged :=0;
   while not(tbDeliveryDTlinkclone.Eof) do
   begin
     totalCharged:= totalCharged + tbDeliveryDTlinkclone.FieldByName('qty').AsFloat;
     tbDeliveryDTlinkclone.next;
   end;
   tbDeliveryDTlinkclone.Close;
   if (totalCharged > tbDeliveryDTMelt.FieldByName('onhand_qty').AsFloat) then
   begin
      errorEx('Not enough onhand value to be allocated');

      dataset.Cancel;
   end else
   begin
     if (totalCharged > ( (tbDeliveryDtOrder.FieldByName('ORDER_QTY').AsFloat -
      tbDeliveryDtOrder.FieldByName('det_qty').AsFloat) + tbDeliveryDtOrder.FieldByName('MARKUPQTY').AsFloat )) THEN
      BEGIN
         errorEx('Delivery qty could not grater than order qty + markup');
         dataset.Cancel;
      END 
   end;

end;


function TSaleOrderDataManager.canPostDeliveryOrder(deliveryNo,custCode:string):boolean;
var detailWeight,linkWeight:double;
   procedure handleException(e:exception);
   begin
       errorex('SaleOrderDataManager.canPostDeliveryOrder Could not get delivery order link data '+e.message);
       result:=false;
   end;
begin
   result:=false;
   try
   qryAdhoc.close;
   qryAdhoc.sql.text := 'select sum(det_qty) from so_det_dt where delivery_no='+quotedStr(deliveryno)+#13+
                      ' and cust_code='+quotedstr(custcode);
    qryAdhoc.open;
   detailWeight:=qryadhoc.Fields[0].asfloat;

   qryAdhoc.close;
   qryAdhoc.sql.text := 'select sum(qty) from so_det_dt_link where delivery_no='+quotedStr(deliveryno);
   qryAdhoc.open;
   linkWeight:=qryadhoc.Fields[0].asfloat;
   except on e:exception do

    handleException(e);
   end;
   result:= (detailWeight >0 ) and (linkWeight >0) and (detailWeight =  linkWeight)  ;

end;

{
***
***
}
function TSaleOrderDataManager.deleteSaleOrderRevsionDetailItem(aOrderNo:String; aCustCode:String):boolean;
   procedure handleError(e:exception);
   begin
       errorex('Could not delete sale order revision detail'+e.Message);
       result:=false;
   end;
begin
  result:=true;
  try
    qryAdhoc.Close;
    qryAdhoc.SQL.Text :='delete from so_order_revision_dt where order_no='+quotedStr(aOrderNo)+#13+
                  ' and cust_code='+quotedstr(aCustCode);
    qryAdhoc.ExecSQL;
  except on e:exception do
    handleError(e);
  end;

end;

procedure TSaleOrderDataManager.tbDeliveryDTOrderITEM_CODEChange(
  Sender: TField);
  Var itemcode:string;
begin
 itemcode:=sENDER.ASSTRING;
  if (itemcode <>'') then
  begin
    qryDOStock.Close;
    qryDOStock.ParamByName('AItemCode').value :=itemcode;
    qryDOStock.open;
  end;


end;

end.

