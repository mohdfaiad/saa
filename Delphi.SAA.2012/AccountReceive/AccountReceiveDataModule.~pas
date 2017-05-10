unit AccountReceiveDataModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataModule, DB, IBCustomDataSet, IBTable, IBQuery,DialogUtils,
  IBStoredProc,MATH;

type
  TAccountReceiveDM = class(TAbstractDM)
    tbInvoiceHD: TIBTable;
    tbInvoiceDT: TIBTable;
    dsInvoiceHD: TDataSource;
    dsInvoiceDT: TDataSource;
    qryUnmatchedDeliveryOrder: TIBQuery;
    qryDebtor: TIBQuery;
    qryDeliveryOrderItem: TIBQuery;
    qryUnpostInvoice: TIBQuery;
    qryUnpostInvoiceDEBTOR_ACCT: TIBStringField;
    qryUnpostInvoiceDOC_NO: TIBStringField;
    qryUnpostInvoiceDOC_DATE: TDateTimeField;
    qryUnpostInvoiceTRX_TYPE: TIBStringField;
    qryUnpostInvoiceTAX_INV_NO: TIBStringField;
    qryUnpostInvoiceTAX_INV_DATE: TDateTimeField;
    qryUnpostInvoiceDEBT_NAME: TIBStringField;
    qryUnpostInvoiceREMARK: TIBStringField;
    qryUnpostInvoiceSTATUS: TIBStringField;
    qryUnpostInvoiceRECEIPT_STATUS: TIBStringField;
    qryUnpostInvoiceDUE_DATE: TDateTimeField;
    qryUnpostInvoiceCREDIT_TERM: TSmallintField;
    qryUnpostInvoiceNO_OF_PRINT: TSmallintField;
    qryUnpostInvoiceUPDATE_USER: TIBStringField;
    qryUnpostInvoiceUPDATE_DATE: TDateTimeField;
    qryUnpostInvoiceDESCS: TIBStringField;
    tbInvoiceHDDEBTOR_ACCT: TIBStringField;
    tbInvoiceHDDOC_NO: TIBStringField;
    tbInvoiceHDDOC_DATE: TDateTimeField;
    tbInvoiceHDTRX_TYPE: TIBStringField;
    tbInvoiceHDTAX_INV_NO: TIBStringField;
    tbInvoiceHDTAX_INV_DATE: TDateTimeField;
    tbInvoiceHDDEBT_NAME: TIBStringField;
    tbInvoiceHDREMARK: TIBStringField;
    tbInvoiceHDSTATUS: TIBStringField;
    tbInvoiceHDRECEIPT_STATUS: TIBStringField;
    tbInvoiceHDDUE_DATE: TDateTimeField;
    tbInvoiceHDCREDIT_TERM: TSmallintField;
    tbInvoiceHDNO_OF_PRINT: TSmallintField;
    tbInvoiceHDUPDATE_USER: TIBStringField;
    tbInvoiceHDUPDATE_DATE: TDateTimeField;
    tbInvoiceHDDESCS: TIBStringField;
    tbInvoiceDTDEBTOR_ACCT: TIBStringField;
    tbInvoiceDTDOC_NO: TIBStringField;
    tbInvoiceDTDOC_DATE: TDateTimeField;
    tbInvoiceDTTRX_TYPE: TIBStringField;
    tbInvoiceDTDESCS: TIBStringField;
    tbInvoiceDTITEM_CODE: TIBStringField;
    tbInvoiceDTITEM_DESCS: TIBStringField;
    tbInvoiceDTUNIT_DESCS: TIBStringField;
    tbInvoiceDTORDER_NO: TIBStringField;
    tbInvoiceDTORDER_DATE: TDateTimeField;
    tbInvoiceDTPURCHASE_NO: TIBStringField;
    tbInvoiceDTPURCHASE_DATE: TDateTimeField;
    tbInvoiceDTDELIVERY_NO: TIBStringField;
    tbInvoiceDTTH_BAHT: TIBStringField;
    tbInvoiceDTUPDATE_USER: TIBStringField;
    tbInvoiceDTUPDATE_DATE: TDateTimeField;
    tbInvoiceHDBATHTEXT: TStringField;
    qryDebtorDEBTOR_ACCT: TIBStringField;
    qryDebtorNAME: TIBStringField;
    qryDebtorADDRESS1: TIBStringField;
    qryDebtorADDRESS2: TIBStringField;
    qryDebtorADDRESS3: TIBStringField;
    qryDebtorTELPHONE: TIBStringField;
    qryDebtorFAX_NO: TIBStringField;
    qryDebtorDEBTOR_TYPE: TIBStringField;
    qryDebtorSHORT_NAME: TIBStringField;
    qryDebtorCREDIT_TERM: TSmallintField;
    qryDebtorTAX_REGISTED_NO: TIBStringField;
    qryDebtorBALANCE_AMT: TFloatField;
    qryDebtorCREDIT_LIMIT: TFloatField;
    qryDebtorCURRENCY_CODE: TIBStringField;
    qryDebtorMAILADDR1: TIBStringField;
    qryDebtorMAILADDR2: TIBStringField;
    qryDebtorMAILADDR3: TIBStringField;
    qryDebtorUPDATE_USER: TIBStringField;
    qryDebtorUPDATE_DATE: TDateTimeField;
    qryDebtorTAX_CD: TIBStringField;
    qryDebtorPOSTCODE: TIBStringField;
    qryDebtorPROVINCE: TIBStringField;
    qryDebtorTH_ADDR1: TIBStringField;
    qryDebtorTH_ADDR2: TIBStringField;
    qryDebtorTH_ADDR3: TIBStringField;
    qryDebtorTH_NAME: TIBStringField;
    qryUnmatchedDeliveryOrderDELIVERY_NO: TIBStringField;
    qryUnmatchedDeliveryOrderDELIVERY_DATE: TDateTimeField;
    qryUnmatchedDeliveryOrderCUST_CODE: TIBStringField;
    qryUnmatchedDeliveryOrderREMARKS: TIBStringField;
    qryUnmatchedDeliveryOrderUPDATE_USER: TIBStringField;
    qryUnmatchedDeliveryOrderUPDATE_DATE: TDateTimeField;
    qryUnmatchedDeliveryOrderSTATUS: TIBStringField;
    qryUnmatchedDeliveryOrderREF_NO: TIBStringField;
    qryUnmatchedDeliveryOrderREF_DATE: TDateTimeField;
    qryUnmatchedDeliveryOrderDESCS: TIBStringField;
    qryUnmatchedDeliveryOrderINVOICE_MATCHED: TIBStringField;
    qryDeliveryOrderItemITEM_CODE: TIBStringField;
    qryDeliveryOrderItemDELIVERY_NO: TIBStringField;
    qryDeliveryOrderItemQTY: TFloatField;
    qryDeliveryOrderItemORDER_NO: TIBStringField;
    qryDeliveryOrderItemORDER_DATE: TDateTimeField;
    qryDeliveryOrderItemUNIT_COST: TFloatField;
    qryDeliveryOrderItemITEM_DESCS: TIBStringField;
    qryAdhoc: TIBQuery;
    tbInvoiceDTTAX_AMT: TFloatField;
    tbInvoiceDTDOC_AMT: TFloatField;
    tbInvoiceDTBASE_AMT: TFloatField;
    tbInvoiceDTQTY: TFloatField;
    tbInvoiceDTUNIT_COST: TFloatField;
    tbInvoiceDTTAX_RATE: TFloatField;
    spPostInvoice: TIBStoredProc;
    tbReceiptHD: TIBTable;
    tbReceiptDT: TIBTable;
    qryUnpostReceipt: TIBQuery;
    dsReceiptHD: TDataSource;
    dsReceiptDT: TDataSource;
    spPostReceipt: TIBStoredProc;
    tbReceiptHDDOC_NO: TIBStringField;
    tbReceiptHDDOC_DATE: TDateTimeField;
    tbReceiptHDDESCS: TIBStringField;
    tbReceiptHDBANK_CODE: TIBStringField;
    tbReceiptHDDEBTOR_ACCT: TIBStringField;
    tbReceiptHDCHEQUE_NO: TIBStringField;
    tbReceiptHDREMARKS: TIBStringField;
    tbReceiptHDSTATUS: TIBStringField;
    tbReceiptHDPRINT_STATUS: TIBStringField;
    tbReceiptHDUPDATE_USER: TIBStringField;
    tbReceiptHDUPDATE_DATE: TDateTimeField;
    tbReceiptHDCURRENCY_CODE: TIBStringField;
    tbReceiptHDCURRENCY_RATE: TFloatField;
    tbReceiptDTDOC_NO: TIBStringField;
    tbReceiptDTDOC_DATE: TDateField;
    tbReceiptDTDEBTOR_ACCT: TIBStringField;
    tbReceiptDTLINE_NO: TSmallintField;
    tbReceiptDTINV_NO: TIBStringField;
    tbReceiptDTINV_DATE: TDateField;
    tbReceiptDTLINE_REMARK: TIBStringField;
    tbReceiptDTBASE_AMOUNT: TFloatField;
    tbReceiptDTTAX_AMOUNT: TFloatField;
    tbReceiptDTTRX_AMOUNT: TFloatField;
    tbReceiptDTSTATUS: TIBStringField;
    qryUnpostReceiptDOC_NO: TIBStringField;
    qryUnpostReceiptDOC_DATE: TDateTimeField;
    qryUnpostReceiptDESCS: TIBStringField;
    qryUnpostReceiptBANK_CODE: TIBStringField;
    qryUnpostReceiptDEBTOR_ACCT: TIBStringField;
    qryUnpostReceiptCHEQUE_NO: TIBStringField;
    qryUnpostReceiptREMARKS: TIBStringField;
    qryUnpostReceiptSTATUS: TIBStringField;
    qryUnpostReceiptPRINT_STATUS: TIBStringField;
    qryUnpostReceiptUPDATE_USER: TIBStringField;
    qryUnpostReceiptUPDATE_DATE: TDateTimeField;
    qryUnpostReceiptCURRENCY_CODE: TIBStringField;
    qryUnpostReceiptCURRENCY_RATE: TFloatField;
    tbInvoiceHDDebtorName: TStringField;
    tbBank: TIBTable;
    tbBankBANK_CODE: TIBStringField;
    tbBankBANK_NAME: TIBStringField;
    tbBankBRANCH_NAME: TIBStringField;
    tbBankREMARKS: TIBStringField;
    tbBankUPDATE_USER: TIBStringField;
    tbBankUPDATE_DATE: TDateTimeField;
    tbReceiptHDdebtorName: TStringField;
    tbReceiptHDbankName: TStringField;
    tbReceiptHDcurrencyCode: TStringField;
    tbCurrency: TIBTable;
    tbCurrencyCURRENCY_CODE: TIBStringField;
    tbCurrencyCURRENCY_RATE: TFloatField;
    tbCurrencyDESCS: TIBStringField;
    tbCurrencyBASE_RATE: TFloatField;
    tbCurrencyCOMPARE_RATE: TFloatField;
    tbCurrencyUPDATE_USER: TIBStringField;
    tbCurrencyUPDATE_DATE: TDateTimeField;
    tbReceiptHDcurrencyRate: TFloatField;
    qryUnmatchedInvoice: TIBQuery;
    qryUnmatchedInvoiceDOC_NO: TIBStringField;
    qryUnmatchedInvoiceDOC_DATE: TDateTimeField;
    qryUnmatchedInvoiceBASEAMOUNT: TFloatField;
    qryUnmatchedInvoiceTAXAMOUNT: TFloatField;
    qryUnmatchedInvoiceTOTALAMOUNT: TFloatField;
    tbReceiptDTinvoiceBaseAmount: TFloatField;
    tbReceiptDTinvoiceTaxAmount: TFloatField;
    tbReceiptDTinvoiceTotalAmount: TFloatField;
    qryUnmatchedInvoiceDUE_DATE: TDateTimeField;
    tbReceiptHDBATHTEXT: TStringField;
    qryUnmatchedInvoiceORDER_NO: TIBStringField;
    tbReceiptDTREF_NO: TStringField;
    qryUnmatchedInvoiceORDER_DATE: TDateTimeField;
    tbReceiptDTDUE_DATE: TDateTimeField;
    tbReceiptDTREF_DATE: TDateTimeField;
    tbInvoiceHDCURRENCY_CODE: TIBStringField;
    tbInvoiceHDCURRENCY_RATE: TFloatField;
    tbTransactionType: TIBTable;
    tbTransactionTypeTRX_TYPE: TIBStringField;
    tbTransactionTypeDESCRIPTION: TIBStringField;
    tbTransactionTypeDEFAULT_MODULE: TIBStringField;
    tbTransactionTypeUPDATE_USER: TIBStringField;
    tbTransactionTypeUPDATE_DATE: TDateTimeField;
    tbInvoiceDTLINE_NO: TSmallintField;
    tbInvoiceDTDELIVERY_DATE: TDateTimeField;
    tbTransactionTypeREQUIRE_REFERENCE: TIBStringField;
    qryIndirectSaleOrderItem: TIBQuery;
    qryIndirectSaleOrderItemORDER_NO: TIBStringField;
    qryIndirectSaleOrderItemORDER_DATE: TDateTimeField;
    qryIndirectSaleOrderItemREF_NO: TIBStringField;
    qryIndirectSaleOrderItemREF_DATE: TDateTimeField;
    qryIndirectSaleOrderItemITEM_CODE: TIBStringField;
    qryIndirectSaleOrderItemITEM_DESCS: TIBStringField;
    qryIndirectSaleOrderItemUNIT_COST: TFloatField;
    qryIndirectSaleOrderItemQTY: TFloatField;
    qryIndirectSaleOrderItemTOTAL_AMT: TFloatField;
    tbTransactionTypeMODE: TStringField;
    tbReceiptHDTRX_TYPE: TStringField;
    tbInvoiceHDREQUIRE_REFERENCE: TStringField;
    qryUnpostCreditNoteDebitNote: TIBQuery;
    qryUnpostCreditNoteDebitNoteDOC_NO: TIBStringField;
    qryUnpostCreditNoteDebitNoteDOC_DATE: TDateTimeField;
    qryUnpostCreditNoteDebitNoteDEBTOR_ACCT: TIBStringField;
    qryUnpostCreditNoteDebitNoteTRX_TYPE: TIBStringField;
    qryUnpostCreditNoteDebitNoteDESCS: TIBStringField;
    qryUnpostCreditNoteDebitNoteDEBT_NAME: TIBStringField;
    qryUnpostCreditNoteDebitNoteREMARK: TIBStringField;
    qryUnpostCreditNoteDebitNoteNO_OF_PRINT: TSmallintField;
    qryUnpostCreditNoteDebitNoteBATHTEXT: TIBStringField;
    qryUnpostCreditNoteDebitNoteCURRENCY_CODE: TIBStringField;
    qryUnpostCreditNoteDebitNoteCURRENCY_RATE: TFloatField;
    qryUnpostCreditNoteDebitNoteSTATUS: TIBStringField;
    qryUnpostCreditNoteDebitNoteMODE: TIBStringField;
    qryUnpostCreditNoteDebitNoteUPDATE_USER: TIBStringField;
    qryUnpostCreditNoteDebitNoteUPDATE_DATE: TDateTimeField;
    tbDebitNoteDT: TIBTable;
    dsDebitNoteHD: TDataSource;
    dsDebitNoteDT: TDataSource;
    tbCNHD: TIBTable;
    tbCNHDDOC_NO: TIBStringField;
    tbCNHDDOC_DATE: TDateTimeField;
    tbCNHDDEBTOR_ACCT: TIBStringField;
    tbCNHDTRX_TYPE: TIBStringField;
    tbCNHDDESCS: TIBStringField;
    tbCNHDDEBT_NAME: TIBStringField;
    tbCNHDREMARK: TIBStringField;
    tbCNHDNO_OF_PRINT: TSmallintField;
    tbCNHDBATHTEXT: TIBStringField;
    tbCNHDCURRENCY_CODE: TIBStringField;
    tbCNHDCURRENCY_RATE: TFloatField;
    tbCNHDSTATUS: TIBStringField;
    tbCNHDMODE: TIBStringField;
    tbCNHDUPDATE_USER: TIBStringField;
    tbCNHDUPDATE_DATE: TDateTimeField;
    tbDebtor: TIBTable;
    tbDebtorDEBTOR_ACCT: TIBStringField;
    tbDebtorNAME: TIBStringField;
    tbDebtorADDRESS1: TIBStringField;
    tbDebtorADDRESS2: TIBStringField;
    tbDebtorADDRESS3: TIBStringField;
    tbDebtorTELPHONE: TIBStringField;
    tbDebtorFAX_NO: TIBStringField;
    tbDebtorDEBTOR_TYPE: TIBStringField;
    tbDebtorSHORT_NAME: TIBStringField;
    tbDebtorCREDIT_TERM: TSmallintField;
    tbDebtorTAX_REGISTED_NO: TIBStringField;
    tbDebtorBALANCE_AMT: TFloatField;
    tbDebtorCREDIT_LIMIT: TFloatField;
    tbDebtorCURRENCY_CODE: TIBStringField;
    tbDebtorMAILADDR1: TIBStringField;
    tbDebtorMAILADDR2: TIBStringField;
    tbDebtorMAILADDR3: TIBStringField;
    tbDebtorUPDATE_USER: TIBStringField;
    tbDebtorUPDATE_DATE: TDateTimeField;
    tbDebtorTAX_CD: TIBStringField;
    tbDebtorPOSTCODE: TIBStringField;
    tbDebtorPROVINCE: TIBStringField;
    tbDebtorTH_ADDR1: TIBStringField;
    tbDebtorTH_ADDR2: TIBStringField;
    tbDebtorTH_ADDR3: TIBStringField;
    tbDebtorTH_NAME: TIBStringField;
    qryUnpaidInvoice: TIBQuery;
    tbDebitNoteDTDEBTOR_ACCT: TIBStringField;
    tbDebitNoteDTDOC_NO: TIBStringField;
    tbDebitNoteDTDOC_DATE: TDateTimeField;
    tbDebitNoteDTTRX_TYPE: TIBStringField;
    tbDebitNoteDTLINE_NO: TSmallintField;
    tbDebitNoteDTINVOICE_NO: TIBStringField;
    tbDebitNoteDTINVOICE_DATE: TDateTimeField;
    tbDebitNoteDTITEM_CODE: TIBStringField;
    tbDebitNoteDTITEM_DESCS: TIBStringField;
    tbDebitNoteDTUOM_CD: TIBStringField;
    tbDebitNoteDTUNIT_COST: TFloatField;
    tbDebitNoteDTINVOICE_AMOUNT: TFloatField;
    tbDebitNoteDTTAX_AMOUNT: TFloatField;
    tbDebitNoteDTVARIANT_AMOUNT: TFloatField;
    tbDebitNoteDTBASE_AMOUNT: TFloatField;
    tbDebitNoteDTTOTAL_AMOUNT: TFloatField;
    qryUnpaidInvoiceDOC_NO: TIBStringField;
    qryUnpaidInvoiceDOC_DATE: TDateTimeField;
    qryUnpaidInvoiceDUE_DATE: TDateTimeField;
    qryUnpaidInvoiceBASEAMOUNT: TFloatField;
    qryUnpaidInvoiceTAXAMOUNT: TFloatField;
    qryUnpaidInvoiceTOTALAMOUNT: TFloatField;
    qryUnpaidInvoiceITEMCODE: TIBStringField;
    qryUnpaidInvoiceITEMDESCS: TIBStringField;
    qryUnpaidInvoiceORDER_NO: TIBStringField;
    qryUnpaidInvoiceORDER_DATE: TDateTimeField;
    qryUnpaidInvoiceUNITCOST: TFloatField;
    qryUnmatchedInvoiceITEMCODE: TIBStringField;
    qryUnmatchedInvoiceITEMDESCS: TIBStringField;
    qryUnpaidInvoiceUOM_CD: TIBStringField;
    qryCreditNoteSummary: TIBQuery;
    qryCreditNoteSummaryBASE_AMOUNT: TFloatField;
    qryCreditNoteSummaryTAX_AMOUNT: TFloatField;
    qryCreditNoteSummaryTOTAL_AMOUNT: TFloatField;
    spPostCreditNote: TIBStoredProc;
    qryUnpaidInvoiceDEBTOR_ACCT: TIBStringField;
    qryUnpaidInvoiceQTY: TFloatField;
    tbDebitNoteDTQTY: TFloatField;
    qryUnpostReceiptNAME: TIBStringField;
    procedure tbInvoiceHDAfterClose(DataSet: TDataSet);
    procedure tbInvoiceHDDEBTOR_ACCTChange(Sender: TField);
    procedure tbInvoiceHDNewRecord(DataSet: TDataSet);
    procedure tbInvoiceHDAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tbInvoiceHDBeforePost(DataSet: TDataSet);
    procedure tbInvoiceDTDELIVERY_NOChange(Sender: TField);
    procedure tbInvoiceDTORDER_NOChange(Sender: TField);
    procedure tbInvoiceDTAfterScroll(DataSet: TDataSet);
    procedure tbInvoiceDTBeforePost(DataSet: TDataSet);
    procedure tbInvoiceDTTAX_RATEChange(Sender: TField);
    procedure tbInvoiceDTAfterPost(DataSet: TDataSet);
    procedure tbInvoiceDTBASE_AMTChange(Sender: TField);
    procedure tbInvoiceDTTAX_AMTChange(Sender: TField);
    procedure tbInvoiceDTNewRecord(DataSet: TDataSet);
    procedure tbReceiptHDAfterClose(DataSet: TDataSet);
    procedure tbReceiptHDAfterScroll(DataSet: TDataSet);
    procedure tbReceiptHDNewRecord(DataSet: TDataSet);
    procedure tbReceiptHDBeforePost(DataSet: TDataSet);
    procedure tbReceiptDTINV_NOChange(Sender: TField);
    procedure tbReceiptDTNewRecord(DataSet: TDataSet);
    procedure tbBankBeforePost(DataSet: TDataSet);
    procedure tbReceiptDTAfterPost(DataSet: TDataSet);
    procedure tbInvoiceHDTRX_TYPEChange(Sender: TField);
    procedure tbInvoiceDTQTYChange(Sender: TField);
    procedure qryUnmatchedDeliveryOrderAfterScroll(DataSet: TDataSet);
    procedure tbReceiptHDTRX_TYPEChange(Sender: TField);
    procedure tbReceiptHDAfterPost(DataSet: TDataSet);
    procedure tbReceiptDTBeforeInsert(DataSet: TDataSet);
    procedure qryUnmatchedInvoiceBeforeOpen(DataSet: TDataSet);
    procedure tbReceiptDTAfterScroll(DataSet: TDataSet);
    procedure tbInvoiceDTCalcFields(DataSet: TDataSet);
    procedure tbCNHDTRX_TYPEChange(Sender: TField);
    procedure tbCNHDNewRecord(DataSet: TDataSet);
    procedure tbCNHDDEBTOR_ACCTChange(Sender: TField);
    procedure tbCNHDBeforePost(DataSet: TDataSet);
    procedure tbDebitNoteDTNewRecord(DataSet: TDataSet);
    procedure tbDebitNoteDTINVOICE_NOChange(Sender: TField);
    procedure tbCNHDAfterOpen(DataSet: TDataSet);
    procedure tbCNHDAfterPost(DataSet: TDataSet);
    procedure tbDebitNoteDTBASE_AMOUNTChange(Sender: TField);
    procedure tbDebitNoteDTAfterPost(DataSet: TDataSet);
    procedure tbDebitNoteDTAfterInsert(DataSet: TDataSet);
    procedure tbDebitNoteDTAfterOpen(DataSet: TDataSet);
    procedure tbDebitNoteDTQTYChange(Sender: TField);
    procedure tbCNHDTRX_TYPEValidate(Sender: TField);
  private
    { Private declarations }
  public
     procedure updateBathText;
     procedure updateReceiptBathText;
     procedure updateLineInvoiceAmount(dataset:TDataSet) ;
     function postArInvoice(docNo:string;docDate:TDateTime;debTor:string):boolean;
     function getInvioceLine(docNo:string):integer;
     function getNextLine(docNo:String;tableName:String):integer;
     procedure filterDeliveryOrderItem(dataset:tdataset);
     function getInvoiceAmount(docNo:string):double;
     function isIndirectInvoice:boolean;
     procedure handleException(e:exception);
     function postARReceipt(docNo:String;docDate:TDateTime;debtor:string):boolean;
     procedure filterUnmatchInvoice(dataSet:TDataSet);


     procedure openUnPaidInvoiceDataSet(Dataset:TDataSet);
     {*****Post creditnote *******}
     function deleteCreditNote(Adebtor,AdocNo:string):boolean;
     {*****Delete creditnote ******}
     function postCreditNote(adebtor,adocNo,AMODE:string;adocdate:tdatetime):boolean;
    { Public declarations }
  end;
const DEFAULT_MODULE:String='Account Receivable';
const INVOICE_MODE:String='I';
const RECEIPT_MODE:String='R';
var
  AccountReceiveDM: TAccountReceiveDM;

implementation
uses   warehouseDM,toThaiBath,invoiceEntry;

{$R *.dfm}


procedure TAccountReceiveDM.handleException(e:exception);
begin
   warning('Fail: Getting invoice line '+e.Message);
end;
function TAccountReceiveDM.getInvoiceAmount(docNo:string):double;
var amount:double;
 begin
  amount:=0;
  try
    qryAdhoc.Close;
    qryAdhoc.SQL.Text:='select sum(doc_amt) from ar_invoice_dt where doc_no='+quotedStr(docNo);
    qryAdhoc.Open;
    amount :=     qryAdhoc.fields[0].asFloat;
  except on e:exception do
    handleException(e);
  end;
  getInvoiceAmount:=amount;
end;

function TAccountReceiveDM.getInvioceLine(docNo:string):integer;
var lineNo:integer;
 procedure handleException(e:exception);
 begin
   warning('Fail: Getting invoice line '+e.Message);
 end;


begin
  lineNo:=0;
  try
    qryAdhoc.Close;
    qryAdhoc.SQL.Text:='select max(line_no) from ar_invoice_dt where doc_no='+quotedStr(docNo);
    qryAdhoc.Open;
    lineNo :=     qryAdhoc.fields[0].AsInteger;
    if (lineNo=0) then lineNo:=1
    else lineNo:=lineNo+1;
  except on e:exception do
    handleException(e);
  end;
  getInvioceLine:=lineNo;
end;
function TAccountReceiveDM.getNextLine(docNo:String;tableName:String):integer;
var lineNo:integer;
begin
   lineNo:=0;
    try
    qryAdhoc.Close;
    qryAdhoc.SQL.Text:='select max(line_no) from ' +tableName+' where doc_no='+quotedStr(docNo);
    qryAdhoc.Open;
    lineNo :=     qryAdhoc.fields[0].AsInteger;
    if (lineNo=0) then lineNo:=1
    else lineNo:=lineNo+1;
  except on e:exception do
    handleException(e);
  end;
   getNextLine:=lineNo;
end;
function TAccountReceiveDM.isIndirectInvoice:BOOLEAN;
BEGIN
  isIndirectInvoice :=(tbInvoiceHDREQUIRE_REFERENCE.AsString='N')
END;
function TAccountReceiveDM.postArInvoice(docNo:string;docDate:TDateTime;debTor:string):boolean;
  procedure handleException(e:exception);
  begin
    result:=false;
    errorex('Fail: Post ar invoice error '+e.Message);
  end;

begin
  result:=true;
  try
    spPostInvoice.ParamByName('ADOC_NO').AsString :=docNo;
    spPostInvoice.ParamByName('ADOC_DATE').AsDateTime :=docDate;
    spPostInvoice.ParamByName('ADEBTOR').AsString :=debtor;
    spPostInvoice.ParamByName('AUPDATE_user').AsString :=WarehouseDataManager.User.userid;
    spPostInvoice.ExecProc;
  except on e:exception do handleException(e);
  end;
//
end;



function TAccountReceiveDM.postArReceipt(docNo:string;docDate:TDateTime;debTor:string):boolean;
  procedure handleException(e:exception);
  begin
    result:=false;
    errorex('Fail: Post ar invoice error '+e.Message);
  end;

begin
  result:=true;
  try
    spPostReceipt.ParamByName('ADEBTOR').AsString :=debtor;
    spPostReceipt.ParamByName('ADOC_NO').AsString :=docNo;
    spPostReceipt.ParamByName('ADOC_DATE').AsDateTime :=docDate;
    spPostReceipt.ParamByName('AUPDATE_user').AsString :=WarehouseDataManager.User.userid;
    spPostReceipt.ExecProc;
  except on e:exception do handleException(e);
  end;
//
end;


procedure TAccountReceiveDM.tbInvoiceHDAfterClose(DataSet: TDataSet);
begin
  inherited;
  dataSet.Filtered:=false;
  dataset.Filter:='STATUS<>''X''';
end;

procedure TAccountReceiveDM.tbInvoiceHDDEBTOR_ACCTChange(Sender: TField);
begin
  tbInvoiceHD.FieldByName('credit_term').asInteger :=qryDebtorCREDIT_TERM.asInteger;
  tbInvoiceHDDEBT_NAME.AsString := qryDebtorNAME.AsString;
  tbInvoiceHDDUE_DATE.AsDateTime := tbInvoiceHDDOC_DATE.AsDateTime +  tbInvoiceHDCREDIT_TERM.asInteger;
  //16 Aug,2008
  tbInvoiceHDCURRENCY_CODE.AsString :=qryDebtorCURRENCY_CODE.AsString;
  tbInvoiceHDCURRENCY_RATE.AsFloat := 1.00;

end;

procedure TAccountReceiveDM.tbInvoiceHDNewRecord(DataSet: TDataSet);
begin
  dataset.fieldbyname('STATUS').AsString:='N';
   dataset.fieldbyname('RECEIPT_STATUS').AsString:='N';
 // dataset.fieldbyname('TRX_TYPE').AsString:='IV';//INVOICE TRN TYPESHO
  dataset.FieldByName('doc_date').AsDateTime:=date;

end;

procedure TAccountReceiveDM.tbInvoiceHDAfterPost(DataSet: TDataSet);
begin
 commit;

end;

procedure TAccountReceiveDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  setTransaction(WarehouseDataManager.IBTransaction);
  setDisplayFormat;
  setCurrenCyFormat('#,##0.00');
 // initEvents;
end;

procedure TAccountReceiveDM.tbInvoiceHDBeforePost(DataSet: TDataSet);
begin
  Dataset.FieldByName('update_user').asstring:=WarehouseDataManager.User.userid;
  dataset.FieldByName('update_date').AsDateTime:=now;

end;

procedure TAccountReceiveDM.tbInvoiceDTDELIVERY_NOChange(Sender: TField);
begin
 if (sender.asstring <>'' ) and (tbInvoiceHDREQUIRE_REFERENCE.AsString='Y') then
 begin
    tbInvoiceDTDELIVERY_DATE.AsDateTime :=qryUnmatchedDeliveryOrderDELIVERY_DATE.AsDateTime;
    tbInvoiceDTPURCHASE_NO.AsString :=   qryUnmatchedDeliveryOrderREF_NO.AsString;
    tbInvoiceDTPURCHASE_DATE.AsDateTime :=   qryUnmatchedDeliveryOrderREF_date.AsDateTime;
 end;


end;

procedure TAccountReceiveDM.tbInvoiceDTORDER_NOChange(Sender: TField);
begin
  if (sender.asstring <>'') then
  begin
      if (isIndirectInvoice) then   //Indirect invoice should refered to indirect sale order item;
      begin
          tbInvoiceDTORDER_DATE.AsDateTime :=qryIndirectSaleOrderItemORDER_DATE.AsDateTime;
          tbInvoiceDTITEM_CODE.AsString := qryIndirectSaleOrderItemITEM_CODE.AsString ;
          tbInvoiceDTITEM_DESCS.AsString :=qryIndirectSaleOrderItemITEM_DESCS.AsString;
          tbInvoiceDTQTY.AsFloat :=   qryIndirectSaleOrderItemQTY.AsFloat;
          tbInvoiceDTUNIT_COST.AsFloat :=   qryIndirectSaleOrderItemUNIT_COST.AsFloat;
      end
      else
      begin
          tbInvoiceDTORDER_DATE.AsDateTime :=qryDeliveryOrderItemORDER_DATE.AsDateTime;
          tbInvoiceDTITEM_CODE.AsString := qryDeliveryOrderItemITEM_CODE.AsString ;
          tbInvoiceDTITEM_DESCS.AsString :=qryDeliveryOrderItemITEM_DESCS.AsString;
          tbInvoiceDTQTY.AsFloat :=   qryDeliveryOrderItemQTY.AsFloat;
          tbInvoiceDTUNIT_COST.AsFloat :=   qryDeliveryOrderItemUNIT_COST.AsFloat;
       end;
      InvoiceForm.openInvoiceLineEditor;
  end;
end;

procedure TAccountReceiveDM.tbInvoiceDTAfterScroll(DataSet: TDataSet);
var debtor:string;
begin
 IF (dataset.active) then
 begin
 debtor:=  tbInvoiceHDDEBTOR_ACCT.AsString;
    if (tbInvoiceHDREQUIRE_REFERENCE.AsString ='Y') then
    begin
    qryUnmatchedDeliveryOrder.Close;
    qryUnmatchedDeliveryOrder.ParamByName('PCUST_CODE').AsString :=debtor;
    qryUnmatchedDeliveryOrder.open;
    end else
    begin
       qryIndirectSaleOrderItem.Close;
        qryIndirectSaleOrderItem.ParamByName('PCUST_CODE').AsString :=debtor;
         qryIndirectSaleOrderItem.Open;
    end;
 end;

end;

procedure TAccountReceiveDM.tbInvoiceDTBeforePost(DataSet: TDataSet);
begin
  // tbInvoiceDTDOC_AMT.AsFloat:= tbInvoiceDTBASE_AMT.AsFloat+    tbInvoiceDTTAX_AMT.AsFloat;
end;

procedure TAccountReceiveDM.tbInvoiceDTTAX_RATEChange(Sender: TField);
begin
  updateLineInvoiceAmount(sender.DataSet);

end;
procedure TAccountReceiveDM.updateBathText;
  procedure handleException(e:exception);
  begin
    warning('Fail: update invoice header bath text'+e.Message);
  end;
  function getTotalInvoiceAmount(invNo:string):DOUBLE;
  begin
     result:=0;
     try

         qryAdhoc.close;
         qryAdhoc.SQL.Text:= 'select sum(doc_amt) from ar_invoice_dt where doc_no='+quotedStr(invNo);
         qryAdhoc.Open;
         result:=qryAdhoc.Fields[0].AsFloat;

     except on e:exception do handleException(e);
     end;
  end;
begin
 if (tbInvoiceHD.active) then
 begin
  tbInvoiceHD.Edit;
  tbInvoiceHD.FieldByName('BATHTEXT').AsString:= TBahtStang.Create.NumericToBahtStang(getTotalInvoiceAmount(tbInvoiceHD.fieldByName('doc_no').AsString));
  tbInvoiceHD.Post;
  commit;
 end;

end;
procedure TAccountReceiveDM.tbInvoiceDTAfterPost(DataSet: TDataSet);
begin
//  inherited;
  commit;
  updateBathText;


end;
procedure TAccountReceiveDM.updateLineInvoiceAmount(dataset:TDataSet) ;
begin
    tbInvoiceDTTAX_AMT.AsFloat := tbInvoiceDTBASE_AMT.AsFloat *(tbInvoiceDTTAX_RATE.asFloat /100)  ;
    tbInvoiceDTDOC_AMT.AsFloat :=   tbInvoiceDTBASE_AMT.AsFloat+    tbInvoiceDTTAX_AMT.AsFloat;
end;
procedure TAccountReceiveDM.tbInvoiceDTBASE_AMTChange(Sender: TField);
begin
  updateLineInvoiceAmount(sender.DataSet);

end;

procedure TAccountReceiveDM.tbInvoiceDTTAX_AMTChange(Sender: TField);
begin
 // updateLineInvoiceAmount(sender.DataSet);
end;

procedure TAccountReceiveDM.tbInvoiceDTNewRecord(DataSet: TDataSet);
begin
   if (tbInvoiceHDREQUIRE_REFERENCE.AsString ='N') then
   begin
       with (tbInvoiceDT) do
       begin
         FieldByName('DELIVERY_NO').AsString:='UNKNOWDO';
         FieldByName('DELIVERY_DATE').AsDateTime :=Date;
         FieldByName('PURCHASE_NO').AsString:='UNKNOWPO';
         FieldByName('PURCHASE_DATE').AsDateTime :=Date;
       end
   end;
   WITH  tbInvoiceDT DO
   BEGIN
     Fieldbyname('qty').asfloat:=0;
     Fieldbyname('unit_cost').asfloat:=0;
     Fieldbyname('base_amt').asfloat:=0;
     Fieldbyname('tax_amt').asfloat:=0;
     Fieldbyname('doc_amt').asfloat:=0;
     fieldbyname('line_no').AsFloat:=getInvioceLine(fieldbyname('doc_no').AsString);
   END;
end;

procedure TAccountReceiveDM.tbReceiptHDAfterClose(DataSet: TDataSet);
begin
   dataset.Filtered:=false;
   dataset.Filter:='STATUS=''N''';

end;


procedure TAccountReceiveDM.filterUnmatchInvoice(DataSet:TDataSet);
var debtor:string;
begin
  if (dataset.active) and (dataset.RecordCount >0)then
  begin
     debtor:=dataset.fieldbyname('debtor_acct').AsString;
     qryUnmatchedInvoice.Close;
     qryUnmatchedInvoice.parambyname('PDEBTOR_ACCT').AsString :=  debtor;
     qryUnmatchedInvoice.Open;
  end;
end;


procedure TAccountReceiveDM.tbReceiptHDAfterScroll(DataSet: TDataSet);
begin
 filterUnMatchInvoice(dataset);

end;

procedure TAccountReceiveDM.tbReceiptHDNewRecord(DataSet: TDataSet);
begin
  dataSet.FieldByName('STATUS').AsString:='N';

end;

procedure TAccountReceiveDM.tbReceiptHDBeforePost(DataSet: TDataSet);
begin

  //init lookup value to field
   with dataset do
   begin
     fieldbyname('CURRENCY_CODE').AsString :=tbReceiptHDcurrencyCode.AsString;
     fieldbyname('CURRENCY_RATE').AsFloat :=  tbReceiptHDcurrencyRate.AsFloat;
     fieldbyname('UPDATE_USER').AsString:=WarehouseDataManager.User.userid;
     fieldbyname('UPDATE_DATE').AsDateTime:=now;
   end;

end;

procedure TAccountReceiveDM.tbReceiptDTINV_NOChange(Sender: TField);
begin
   if (sender.AsString <>'')  then
   begin
     tbReceiptDTINV_DATE.AsDateTime :=qryUnmatchedInvoiceDOC_DATE.AsDateTime;
     tbReceiptDTDUE_DATE.AsDateTime :=qryUnmatchedInvoiceDUE_DATE.AsDateTime;
     tbReceiptDTTAX_AMOUNT.AsFloat :=  tbReceiptDTinvoiceTaxAmount.AsFloat;
     tbReceiptDTbase_AMOUNT.AsFloat :=  tbReceiptDTinvoiceBaseAmount.AsFloat;
     tbReceiptDTTRX_AMOUNT.AsFloat :=  tbReceiptDTinvoiceTotalAmount.AsFloat;
     tbReceiptDTLINE_REMARK.AsString :=  qryUnmatchedInvoiceITEMCode.AsString+qryUnmatchedInvoiceITEMDescs.AsString;
     tbReceiptDTREF_NO.AsString :=  qryUnmatchedInvoiceORDER_NO.AsString;
     tbReceiptDTREF_date.AsDateTime :=  qryUnmatchedInvoiceORDER_DATE.AsDateTime;
   end;

end;

procedure TAccountReceiveDM.tbReceiptDTNewRecord(DataSet: TDataSet);
begin
   tbReceiptDTBASE_AMOUNT.AsFloat :=0;
   tbReceiptDTTAX_AMOUNT.AsFloat :=0;
   tbReceiptDTTRX_AMOUNT.AsFloat :=0;
   tbReceiptDTLINE_NO.AsInteger :=getNextLine(tbReceiptHDDOC_NO.AsString,'AR_RECEIPT_DT');
end;

procedure TAccountReceiveDM.tbBankBeforePost(DataSet: TDataSet);
begin
   dataset.fieldbyname('UPDATE_USER').AsString:=WarehouseDataManager.User.userid;
   dataset.fieldbyname('UPDATE_DATE').AsDateTime:=now;


end;



procedure TAccountReceiveDM.updateReceiptBathText;
  procedure handleException(e:exception);
  begin
    warning('Fail: update RECEIPT header bath text'+e.Message);
  end;
  function getTotalInvoiceAmount(DocNo:string):DOUBLE;
  begin
     result:=0;
     try

         qryAdhoc.close;
         qryAdhoc.SQL.Text:= 'select sum(TRX_Amount) from ar_receipt_dt where doc_no='+quotedStr(DocNo);
         qryAdhoc.Open;
         result:=qryAdhoc.Fields[0].AsFloat;

     except on e:exception do handleException(e);
     end;
  end;
begin
  tbReceiptHD.Edit;
  tbReceiptHD.FieldByName('BATHTEXT').AsString:= TBahtStang.Create.NumericToBahtStang(getTotalInvoiceAmount(tbReceiptHD.fieldByName('doc_no').AsString));
  tbReceiptHD.Post;
  commit;

end;


procedure TAccountReceiveDM.tbReceiptDTAfterPost(DataSet: TDataSet);
begin
  inherited;
  commit;
  updateReceiptBathText;
end;

procedure TAccountReceiveDM.tbInvoiceHDTRX_TYPEChange(Sender: TField);
begin
  if (tbInvoiceDT.RecordCount =0) then
  begin
  tbInvoiceHDDESCS.AsString := tbTransactionTypeDESCRIPTION.AsString;
  tbInvoiceHDREQUIRE_REFERENCE.AsString := tbTransactionTypeREQUIRE_REFERENCE.AsString ;
  InvoiceForm.requireReference := tbInvoiceHDREQUIRE_REFERENCE.AsString ='Y';
  end
  else
  begin
     warning('Changing transaction type Do not allow while detail record not zero');
     tbInvoiceHD.Cancel;
  end

end;

procedure TAccountReceiveDM.tbInvoiceDTQTYChange(Sender: TField);
begin
  inherited;
   tbInvoiceDTBASE_AMT.AsFloat:=  (tbInvoiceDTQTY.AsFloat* tbInvoiceDTUNIT_COST.AsFloat)*tbInvoiceHDCURRENCY_RATE.AsFloat;
   tbInvoiceDTDOC_AMT.AsFloat  :=  tbInvoiceDTBASE_AMT.AsFloat +  tbInvoiceDTTAX_AMT.AsFloat;
end;

procedure TAccountReceiveDM.qryUnmatchedDeliveryOrderAfterScroll(
  DataSet: TDataSet);
begin
 filterDeliveryOrderItem(dataset);

end;
procedure TAccountReceiveDM.filterDeliveryOrderItem(DataSet:TDataSet);
begin
   if (dataset.ACTIVE) AND (dataset.RecordCount >0) then
  begin
    qryDeliveryOrderItem.Close;
    qryDeliveryOrderItem.ParamByName('PDELIVERY_NO').AsString:=  dataset.fieldbyname('DELIVERY_NO').AsString;
    qryDeliveryOrderItem.Open;
  end;
end;

procedure TAccountReceiveDM.tbReceiptHDTRX_TYPEChange(Sender: TField);
begin
  tbReceiptHDDESCS.AsString := tbTransactionTypeDESCRIPTION.AsString;

end;

procedure TAccountReceiveDM.tbReceiptHDAfterPost(DataSet: TDataSet);
begin
  inherited;
 commit;
end;

procedure TAccountReceiveDM.tbReceiptDTBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  commit;
end;

procedure TAccountReceiveDM.qryUnmatchedInvoiceBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  commit;
end;

procedure TAccountReceiveDM.tbReceiptDTAfterScroll(DataSet: TDataSet);
begin
  filterUnmatchInvoice(tbReceiptHD);
end;

procedure TAccountReceiveDM.tbInvoiceDTCalcFields(DataSet: TDataSet);
begin
  inherited;
  //tbInvoiceDTcalDocAmt.AsFloat :=  tbInvoiceDTBASE_AMT.AsFloat + tbInvoiceDTTAX_AMT.AsFloat ;
end;

procedure TAccountReceiveDM.tbCNHDTRX_TYPEChange(Sender: TField);
begin
  inherited;
  try
  if (tbCNHD.State in [dsEdit,dsInsert])  Then
  begin
     if (sender.AsString <> '') Then
     begin
      tbCNHD.FieldByName('DESCS').AsString :=tbTransactionType.FieldByName('DESCRIPTION').AsString;
      tbCNHD.FieldByName('MODE').AsString :=tbTransactionTypeMODE.AsString;
     end; 
  end;
  except on e:Exception do
    errorEx(e.Message);
  end;

end;

procedure TAccountReceiveDM.tbCNHDNewRecord(DataSet: TDataSet);
begin
with dataset do
   begin
     fiEldbyname('STATUS').AsString :='N';
     fiEldbyname('TRX_TYPE').AsString :='';
     Fieldbyname('NO_OF_PRINT').AsInteger :=0;
     FieldByName('DOC_DATE').AsDateTime :=DATE;   //Note on new record should default with date not timstamp 4 Aug,2010
   end;

end;

procedure TAccountReceiveDM.tbCNHDDEBTOR_ACCTChange(Sender: TField);
begin
   if (tbCNHD.State in [ dsEdit,dsInsert]) then
   begin
   With tbCNHD do
   begin
      Fieldbyname('DEBT_NAME').AsString :=qryDebtor.FieldByName('NAME').AsString;
      FieldByName('CURRENCY_CODE').AsString := qryDebtor.FieldByName('CURRENCY_CODE').AsString;
      FieldByName('CURRENCY_RATE').AsFloat :=0;
      qryUnpaidInvoice.close;
      qryUnpaidInvoice.ParamByName('pdebtor_acct').Value :=  sender.AsString;
      qryUnpaidInvoice.Open;
   end;
   end;

end;

procedure TAccountReceiveDM.tbCNHDBeforePost(DataSet: TDataSet);
begin
  inherited;
  try
  if (tbCNHD.State in [dsEdit,dsInsert]) then
    begin
      if (DataSet.FieldByName('doc_no').AsString <>'') THEN
      BEGIN
        tbCNHD.FieldByName('UPDATE_USER').AsString := WarehouseDataManager.User.userid;
        tbCNHD.FieldByName('UPDATE_DATE').AsDateTime:=now;
      END
      ELSE
      BEGIN
         info('Ignore Saving data');
      END;
    end;
  except on e:exception    do
     errorex(e.Message);
  end;


end;

procedure TAccountReceiveDM.tbDebitNoteDTNewRecord(DataSet: TDataSet);
begin
  inherited;
  with tbDebitNoteDT do
  begin
    FieldByName('LINE_NO').AsInteger:=getNextLine(FieldByName('DOC_NO').AsString,'AR_CREDIT_NOTE_DT');
  end;

end;

procedure TAccountReceiveDM.tbDebitNoteDTINVOICE_NOChange(Sender: TField);
begin
   with qryUnpaidInvoice do
  begin
    tbDebitNoteDTINVOICE_DATE.AsDateTime :=qryUnpaidInvoice.FieldByName('DOC_DATE').AsDateTime;
    tbDebitNoteDTITEM_CODE.AsString :=qryUnpaidInvoice.FieldByName('itemCode').AsString;
    tbDebitNoteDTITEM_DESCS.AsString :=qryUnpaidInvoice.FieldByName('itemDescs').AsString;
    tbDebitNoteDTUOM_CD.AsString := qryUnpaidInvoice.fieldByName('UOM_CD').AsString;
    tbDebitNoteDTUNIT_COST.AsFloat :=qryUnPaidInvoiceUnitCost.AsFloat;
    tbDebitNoteDTINVOICE_AMOUNT.AsFloat :=qryUnpaidInvoiceBASEAMOUNT.AsFloat;  //USE BASE AMOUNT 
    tbDebitNoteDTBASE_AMOUNT.AsFloat  := qryUnpaidInvoiceBASEAMOUNT.AsFloat; // 13.3.2010 As default issue amount = total invoice base
    tbDebitNoteDTQTY.AsFloat := qryUnpaidInvoiceQTY.AsFloat;
    // tbDebitNoteDTBASE_AMOUNT.AsFloat :=
   // tbDebitNoteDTBASE_AMOUNT.AsFloat =:


  end;
end;

procedure TAccountReceiveDM.tbCNHDAfterOpen(DataSet: TDataSet);
begin
  openUnPaidInvoiceDataSet(dataset);
end;

procedure TAccountReceiveDM.tbCNHDAfterPost(DataSet: TDataSet);
begin
  inherited;
  if (dataset.FieldByName('doc_no').AsString ='') then
     dataset.Cancel
   else
  commit;
end;

procedure TAccountReceiveDM.tbDebitNoteDTBASE_AMOUNTChange(Sender: TField);
var canUpdate:boolean;
begin
//14 July,2010 base calculation from talking with user K.Mam
  canUpdate:=true;
   if (sender.asfloat >0) then
   begin

    if tbCNHD.fieldByName('MODE').AsString ='D'  tHEN
    Begin
       if (tbDebitNoteDTBASE_AMOUNT.AsFloat <   tbDebitNoteDTINVOICE_AMOUNT.AsFloat) then
       begin
          warning('Issueing Debit note your issue amount can not less than invoioce amount')  ;
          canUpdate:=false;
          tbDebitNoteDT.Cancel;
       end
       else
       begin
        tbDebitNoteDTVARIANT_AMOUNT.AsFloat := tbDebitNoteDTBASE_AMOUNT.AsFloat -  tbDebitNoteDTINVOICE_AMOUNT.AsFloat;
       end ;

    end else
    begin
     if (tbDebitNoteDTBASE_AMOUNT.AsFloat >   tbDebitNoteDTINVOICE_AMOUNT.AsFloat) then
       begin
          warning('Issueing Credit note your issue amount can not greater than invoioce amount')  ;
                    canUpdate:=false;
          tbDebitNoteDT.Cancel;
       end
       else
       begin
        tbDebitNoteDTVARIANT_AMOUNT.AsFloat :=  tbDebitNoteDTINVOICE_AMOUNT.AsFloat - tbDebitNoteDTBASE_AMOUNT.AsFloat  ;
       end;

    end ;
     if (canUpdate) then
     begin
      tbDebitNoteDTTAX_AMOUNT.AsFloat := ( tbDebitNoteDTVARIANT_AMOUNT.AsFloat *7)/100;
      tbDebitNoteDTTOTAL_AMOUNT.AsFloat :=     tbDebitNoteDTVARIANT_AMOUNT.AsFloat +  tbDebitNoteDTTAX_AMOUNT.AsFloat;
     end; 
   end;
end;

procedure TAccountReceiveDM.tbDebitNoteDTAfterPost(DataSet: TDataSet);



begin
  inherited;

   commit;
   AccountReceiveDM.qryCreditNoteSummary.Close;
   AccountReceiveDM.qryCreditNoteSummary.ParamByName('pdoc_no').Value:=DataSet.FieldByName('doc_no').AsString;
        AccountReceiveDM.qryCreditNoteSummary.ParamByName('pdoc_date').Value:=DataSet.FieldByName('doc_date').AsDateTime;
        AccountReceiveDM.qryCreditNoteSummary.ParamByName('pdebtor_acct').Value :=DataSet.FieldByName('debtor_acct').AsString;
        AccountReceiveDM.qryCreditNoteSummary.Open;
  commit;
  tbCNHD.Edit;
  tbCNHD.fieldByName('BATHTEXT').AsString := TBahtStang.Create.NumericToBahtStang(AccountReceiveDM.qryCreditNoteSummary.FieldByName('total_amount').AsFloat);
  tbCNHD.Post;
  commit;

end;

procedure TAccountReceiveDM.tbDebitNoteDTAfterInsert(DataSet: TDataSet);
begin
  openUnpaidInvoiceDataSet(dataset);

end;

procedurE TAccountReceiveDM.openUnpaidInvoiceDataSet(dataset:TDataSet);
begin

 with (qryUnPaidInvoice) do
  begin
     close;
     parambyname('pdebtor_acct').Value :=  dataset.fieldbyname('debtor_acct').AsString;
     open;
  end;

end;

procedure TAccountReceiveDM.tbDebitNoteDTAfterOpen(DataSet: TDataSet);
begin
  openUnpaidInvoiceDataSet(dataset);

end;

{*****Post creditnote *******}
function TAccountReceiveDM.deleteCreditNote(Adebtor,AdocNo:string):boolean;
  function handleException(e:exception):boolean;
  begin
    result:=false;
    errorex('Error while deleting credite note'+#13+e.Message)
  end;
begin
  result:=true;
   try
     qryAdhoc.close;
     qryAdhoc.SQL.Text:='DELETE FROM AR_CREDIT_NOTE_HD WHERE DOC_NO='+QuotedStr(adocNo)+' AND debtor_acct='+quotedStr(adebtor);
     qryAdhoc.ExecSQL;
   except on e:exception do
     // result:=false;
      result:=handleException(e);
     // rollback;
   end;
 //
end;
{*****Delete creditnote ******}
function TAccountReceiveDM.postCreditNote(adebtor,adocNo,AMODE:string;adocdate:TDateTime):boolean;
function handleException(e:exception):boolean;
  begin
    result:=false;
    errorex('Error while posting credite note'+#13+e.Message)
  end;

begin
   result:=true;
   try
     spPostCreditNote.close;
     spPostCreditNote.ParamByName('ADEBTOR').Value:=adebtor;
     spPostCreditNote.ParamByName('ADOC_NO').Value:=adocNo;
     spPostCreditNote.ParamByName('ADOC_DATE').AsDateTime:= adocdate;

     spPostCreditNote.ParamByName('AUPDATE_USER').Value:=WarehouseDataManager.User.userid;
     spPostCreditNote.ParamByName('amode').Value :=amode;    //4Aut,2010 added mode to indicate CR or DR transaction
     //spPostCreditNote.Prepare;
     spPostCreditNote.ExecProc;
   //  qryAdhoc.SQL.Text:='DELETE FROM AR_CREDIT_NOTE_HD WHERE DOC_NO='+QuotedStr(adocNo)+' debtor_acct='+quotedStr(adebtor);
    // qryAdhoc.ExecSQL;
   except on e:exception do
      result:=handleException(e);
      //rollback;
   end;

end;


procedure TAccountReceiveDM.tbDebitNoteDTQTYChange(Sender: TField);
begin
  inherited;
  tbDebitNoteDTBASE_AMOUNT.AsFloat :=    tbDebitNoteDTQTY.AsFloat*  tbDebitNoteDTUNIT_COST.AsFloat;
end;

procedure TAccountReceiveDM.tbCNHDTRX_TYPEValidate(Sender: TField);
begin
 // if (sender.v)

end;

end.
