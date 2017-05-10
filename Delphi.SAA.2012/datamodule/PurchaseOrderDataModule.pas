unit PurchaseOrderDataModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataModule,warehousedm, DB, IBCustomDataSet, IBQuery,dialogutils,
  IBTable;
const PURCHASE_APPROVED_STATE ='A';
const PURCHASE_CANCEL_STATE ='C';
const PURCHASE_CLOSED_STATE ='O';
type
  TPurchaseOrderDM = class(TAbstractDM)
    qryUnApprovePurchaseOrder: TIBQuery;
    qryUnApprovePurchaseOrderSUPP_CODE: TIBStringField;
    qryUnApprovePurchaseOrderORDER_NO: TIBStringField;
    qryUnApprovePurchaseOrderORDER_DATE: TDateTimeField;
    qryUnApprovePurchaseOrderREF_NO: TIBStringField;
    qryUnApprovePurchaseOrderREF_DATE: TDateTimeField;
    qryUnApprovePurchaseOrderUPDATE_USER: TIBStringField;
    qryUnApprovePurchaseOrderUPDATE_DATE: TDateTimeField;
    qryUnApprovePurchaseOrderSTATUS: TIBStringField;
    qryUnApprovePurchaseOrderORDER_AMT: TFloatField;
    qryUnApprovePurchaseOrderDESCS: TIBStringField;
    qryUnApprovePurchaseOrderDELIVERY_DATE: TDateTimeField;
    qryUnApprovePurchaseOrderFAX_TO: TIBStringField;
    qryUnApprovePurchaseOrderCC_TO: TIBStringField;
    qryUnApprovePurchaseOrderREMARKS: TIBStringField;
    qryUnApprovePurchaseOrderNO_OF_PRINT: TSmallintField;
    qryUnApprovePurchaseOrderVALIDITY: TDateTimeField;
    qryUnApprovePurchaseOrderMARKUP: TSmallintField;
    qryUnApprovePurchaseOrderTAX_AMT: TFloatField;
    qryUnApprovePurchaseOrderDISCS_AMT: TFloatField;
    qryUnApprovePurchaseOrderTERM_OF_PAYMENT: TSmallintField;
    qryUnApprovePurchaseOrderSTOCK_EMPTY: TIBStringField;
    qryAdhoc: TIBQuery;
    tbPurchaseOrderHeader: TIBTable;
    tbPurchaseOrderDetail: TIBTable;
    tbSupplier: TIBTable;
    tbSupplierSUPPLIER_CD: TIBStringField;
    tbSupplierNAME: TIBStringField;
    tbSupplierCREDITOR_ACCT: TIBStringField;
    tbSupplierADDRESS1: TIBStringField;
    tbSupplierADDRESS2: TIBStringField;
    tbSupplierADDRESS3: TIBStringField;
    tbSupplierTELEPHONE: TIBStringField;
    tbSupplierFAX_NO: TIBStringField;
    tbSupplierCONTRACT_PERSON: TIBStringField;
    tbSupplierUPDATE_USER: TIBStringField;
    tbSupplierUPDATE_DATE: TDateTimeField;
    tbSupplierTAX_CD: TIBStringField;
    tbSupplierPOSTCODE: TIBStringField;
    tbSupplierPROVINCE: TIBStringField;
    tbPurchaseOrderHeaderSUPP_CODE: TIBStringField;
    tbPurchaseOrderHeaderORDER_NO: TIBStringField;
    tbPurchaseOrderHeaderORDER_DATE: TDateTimeField;
    tbPurchaseOrderHeaderREF_NO: TIBStringField;
    tbPurchaseOrderHeaderREF_DATE: TDateTimeField;
    tbPurchaseOrderHeaderUPDATE_USER: TIBStringField;
    tbPurchaseOrderHeaderUPDATE_DATE: TDateTimeField;
    tbPurchaseOrderHeaderSTATUS: TIBStringField;
    tbPurchaseOrderHeaderORDER_AMT: TFloatField;
    tbPurchaseOrderHeaderDESCS: TIBStringField;
    tbPurchaseOrderHeaderDELIVERY_DATE: TDateTimeField;
    tbPurchaseOrderHeaderFAX_TO: TIBStringField;
    tbPurchaseOrderHeaderCC_TO: TIBStringField;
    tbPurchaseOrderHeaderREMARKS: TIBStringField;
    tbPurchaseOrderHeaderNO_OF_PRINT: TSmallintField;
    tbPurchaseOrderHeaderVALIDITY: TDateTimeField;
    tbPurchaseOrderHeaderMARKUP: TSmallintField;
    tbPurchaseOrderHeaderTAX_AMT: TFloatField;
    tbPurchaseOrderHeaderDISCS_AMT: TFloatField;
    tbPurchaseOrderHeaderTERM_OF_PAYMENT: TSmallintField;
    tbPurchaseOrderHeaderSTOCK_EMPTY: TIBStringField;
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
    tbPurchaseOrderHeaderName: TStringField;
    qryOrderSummary: TIBQuery;
    qryOrderSummaryQTY: TFloatField;
    qryOrderSummaryBASE_AMOUNT: TFloatField;
    qryOrderSummaryTAX_AMOUNT: TFloatField;
    qryOrderSummaryDIS_AMOUNT: TFloatField;
    qryOrderSummaryTOTAL_AMOUNT: TFloatField;
    dsPurchaseOrderHD: TDataSource;
    qryOrderItemLookkup: TIBQuery;
    qryOrderItemLookkupSTOCK_CD: TIBStringField;
    qryOrderItemLookkupEN_DESCS: TIBStringField;
    qryOrderItemLookkupTH_DESCS: TIBStringField;
    qryOrderItemLookkupSHORT_DESCS: TIBStringField;
    qryOrderItemLookkupONHAND_QTY: TFloatField;
    qryOrderItemLookkupUNIT_COST: TFloatField;
    qryOrderItemLookkupTOTAL_COST: TFloatField;
    qryOrderItemLookkupUOM_CD: TIBStringField;
    qryOrderItemLookkupGROUP_ID: TIBStringField;
    qryOrderItemLookkupRECOVERY: TFloatField;
    qryOrderItemLookkupMARKED_UP: TFloatField;
    qryOrderItemLookkupUPDATE_USER: TIBStringField;
    qryOrderItemLookkupUPDATE_DATE: TDateTimeField;
    qryOrderItemLookkupDEFAULT_ELEMENT_DETAIL: TIBStringField;
    qryOrderItemLookkupCONSUMEABLE_ITEM: TIBStringField;
    qryDiscount: TIBQuery;
    qryDiscountDISCS_CD: TIBStringField;
    qryDiscountDESCS: TIBStringField;
    qryDiscountDISCS_RATE: TFloatField;
    qryApprovedPurchaseOrderHeader: TIBQuery;
    qryApprovedPurchaseOrderHeaderSUPP_CODE: TIBStringField;
    qryApprovedPurchaseOrderHeaderORDER_NO: TIBStringField;
    qryApprovedPurchaseOrderHeaderORDER_DATE: TDateTimeField;
    qryApprovedPurchaseOrderHeaderREF_NO: TIBStringField;
    qryApprovedPurchaseOrderHeaderREF_DATE: TDateTimeField;
    qryApprovedPurchaseOrderHeaderUPDATE_USER: TIBStringField;
    qryApprovedPurchaseOrderHeaderUPDATE_DATE: TDateTimeField;
    qryApprovedPurchaseOrderHeaderSTATUS: TIBStringField;
    qryApprovedPurchaseOrderHeaderORDER_AMT: TFloatField;
    qryApprovedPurchaseOrderHeaderDESCS: TIBStringField;
    qryApprovedPurchaseOrderHeaderDELIVERY_DATE: TDateTimeField;
    qryApprovedPurchaseOrderHeaderFAX_TO: TIBStringField;
    qryApprovedPurchaseOrderHeaderCC_TO: TIBStringField;
    qryApprovedPurchaseOrderHeaderREMARKS: TIBStringField;
    qryApprovedPurchaseOrderHeaderNO_OF_PRINT: TSmallintField;
    qryApprovedPurchaseOrderHeaderVALIDITY: TDateTimeField;
    qryApprovedPurchaseOrderHeaderMARKUP: TSmallintField;
    qryApprovedPurchaseOrderHeaderTAX_AMT: TFloatField;
    qryApprovedPurchaseOrderHeaderDISCS_AMT: TFloatField;
    qryApprovedPurchaseOrderHeaderTERM_OF_PAYMENT: TSmallintField;
    qryApprovedPurchaseOrderHeaderSTOCK_EMPTY: TIBStringField;
    tbPurchaseOrderDTView: TIBTable;
    dsUnapproveOrder: TDataSource;
    tbPurchaseOrderDTViewITEM_CODE: TIBStringField;
    tbPurchaseOrderDTViewLINE_NO: TSmallintField;
    tbPurchaseOrderDTViewORDER_DATE: TDateTimeField;
    tbPurchaseOrderDTViewSUPP_CODE: TIBStringField;
    tbPurchaseOrderDTViewUOM: TIBStringField;
    tbPurchaseOrderDTViewORDER_NO: TIBStringField;
    tbPurchaseOrderDTViewITEM_DESCS: TIBStringField;
    tbPurchaseOrderDTViewUNIT_COST: TFloatField;
    tbPurchaseOrderDTViewTOTAL_AMT: TFloatField;
    tbPurchaseOrderDTViewREMARKS: TIBStringField;
    tbPurchaseOrderDTViewDISCS_AMT: TFloatField;
    tbPurchaseOrderDTViewTAX_AMT: TFloatField;
    tbPurchaseOrderDTViewBASE_AMT: TFloatField;
    tbPurchaseOrderDTViewTAX_CD: TIBStringField;
    tbPurchaseOrderDTViewDISCS_CD: TIBStringField;
    tbPurchaseOrderDTViewQTY: TFloatField;
    tbPurchaseOrderDTViewTAX_RATE: TFloatField;
    tbPurchaseOrderDTViewSTATUS: TIBStringField;
    tbPurchaseOrderDTViewGRN_QTY: TFloatField;
    tbPurchaseOrderDTViewLOT_NO: TIBStringField;
    tbPurchaseOrderDTViewGROUP_ID: TIBStringField;
    tbPurchaseOrderDTViewMARKUP: TSmallintField;
    tbPurchaseOrderDTViewDISCS_RATE: TFloatField;
    tbPurchaseOrderDTViewUPDATE_PRICE: TFloatField;
    tbPurchaseOrderDTViewUPDATE_TOTAL_AMT: TFloatField;
    tbPurchaseOrderDTViewSTOCK_EMPTY: TIBStringField;
    tbContract: TIBTable;
    tbContractSUPP_CODE: TIBStringField;
    tbContractCONTRACT_PERSON1: TIBStringField;
    tbContractCONTRACT_PERSON2: TIBStringField;
    tbContractLAST_USED_DOC_NO: TIBStringField;
    tbContractLAST_USED_DOC_DATE: TDateTimeField;
    tbContractUPDATE_USER: TIBStringField;
    tbContractUPDATE_DATE: TDateTimeField;
    qryUnApprovePurchaseOrderNAME: TIBStringField;
    qryApprovedPurchaseOrderHeaderNAME: TIBStringField;
    dsApprovedPurchaseOrderHeader: TDataSource;
    tbApprovedPurchaserOrderDetail: TIBTable;
    procedure tbPurchaseOrderHeaderSUPP_CODEChange(Sender: TField);
    procedure tbPurchaseOrderHeaderBeforePost(DataSet: TDataSet);
    procedure tbPurchaseOrderHeaderNewRecord(DataSet: TDataSet);
    procedure tbPurchaseOrderDetailAfterOpen(DataSet: TDataSet);
    procedure tbPurchaseOrderDetailITEM_CODEChange(Sender: TField);
    procedure tbPurchaseOrderDetailNewRecord(DataSet: TDataSet);
    procedure tbPurchaseOrderDetailDISCS_CDChange(Sender: TField);
    procedure tbPurchaseOrderDetailQTYChange(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure tbPurchaseOrderDetailDISCS_RATEChange(Sender: TField);
    procedure tbPurchaseOrderDetailAfterPost(DataSet: TDataSet);
    procedure qryUnApprovePurchaseOrderAfterOpen(DataSet: TDataSet);
    procedure qryUnApprovePurchaseOrderAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
    function getOrderItemLineNo(aorderNo,asuppCode:string):integer;
  public
    { Public declarations }
    function updatePurchaseOrderStatus(orderNo,SupplierCode,status:String;orderDate:TDateTime):boolean;
    function getCreditTerm(SupplierCode:String):integer;
    procedure SaveContract(DataSet:TDataSet; docNo:String;docDate:TDateTime);
    procedure refreshContract;

    function refreshOrder:boolean;

  end;


  TSupplierInformation = class (TObject)

     private
       _query :TIBQuery;
       procedure populate;

     public
       supplierCode:String;
       name:String;
       creditTerm:integer;
       taxRate:double;
       taxCode:string;
       currency :string;

     constructor create(Code:String) ;   overload  ;
     constructor create(Code:String;query:TIBQuery); overload     ;
  end;

var
  PurchaseOrderDM: TPurchaseOrderDM;
  activesupplier:TSupplierInformation  ;

implementation


{$R *.dfm}

constructor TSupplierInformation.create(code:string;query:TIBQuery);
begin
    taxRate :=7.00;
    _query :=query;
    supplierCode:=code;
    populate;
end;
constructor TSupplierInformation.create(code:string);
begin
end;

procedure TSupplierInformation.populate;
begin
   try
      _query.close;
      _query.SQL.text :=  'SELECT sup.supplier_cd,sup.name,ap.credit_term,ap.currency_code ,sup.tax_cd,tax.tax_rate'+#13+
      'FROM PO_SUPPLIER sup, ap_creditor ap , tax_schem_hd tax  '+#13+
      ' where sup.supplier_cd = ap.creditor_acct '+#13+
      ' and sup.tax_cd = tax.tax_cd'+#13+
      ' and sup.supplier_cd ='+quotedStr(supplierCode);
      _query.Open;
      name :=_query.Fields[1].AsString;
      creditTerm :=_query.fields[2].AsInteger;
      currency :=_query.Fields[3].AsString;
      taxcode :=_query.fields[4].asstring;
      taxrate :=_query.Fields[5].asfloat;
   except on e:Exception  do
   begin
      errorEx('could not populate supplier information'+#13+suppliercode+e.Message);
   end;
   end;
end;

{7 July, to refresh order header}
function TPurchaseOrderDM.refreshOrder:BOOLEAN;
BEGIN
  result:=true;
  commit;
  qryUnApprovePurchaseOrder.Close;
  qryUnApprovePurchaseOrder.Open;
END;

//11 nov,2010

procedure TpurchaseOrderDM.SaveContract(DataSet:TDataSet; docNo:String;docDate:TDateTime);
begin

    tbContractLAST_USED_DOC_NO.AsString := docNo;
    tbContractLAST_USED_DOC_Date.AsDateTime := docDate;
    tbContractSUPP_CODE.AsString := DataSet.FieldByName('SUPP_CODE').AsString;
    tbContractUPDATE_USER.AsString := WarehouseDataManager.User.userid;
    tbContractUPDATE_Date.AsDateTime :=now;
    tbContract.Post;
end;


procedure  TpurchaseOrderDM.refreshContract;
begin
   tbContract.Close;
   tbContract.Open;
end;
//11 nov,2010
function TpurchaseOrderDM.updatePurchaseOrderStatus(orderNo,SupplierCode,status:String;orderDate:TDateTime):boolean;
procedure fail(e:Exception);
begin
      errorex('Failed: Approve Purchase ORDER'+e.Message);
      result:=false;
end;

var grnissued:boolean;
BEGIN

  result:=true;

  grnissued:=false;

       {update header status if success then update detail }
  if (result) then
  begin
  try
     qryAdhoc.Close;
     qryAdhoc.SQL.Text :='select count(*) from po_grn_dt '    +#13+
                         'where order_no ='+quotedStr(orderNo)+  #13+
                        'and supp_code='+quotedStr(supplierCode)    ;

     qryAdHoc.open;
     grnissued :=    ( qryAdHoc.Fields[0].AsInteger >0)         ;
     if (grnIssued = true)then
     begin
       Raise  Exception.Create('This puchaser order has already issued goods receive note!!!!');
     end;   
  except on e:Exception do

    fail(e);

  end ;
  end   ;
  if (result) then
  begin
  try
      qryAdhoc.Close;
      qryAdhoc.SQL.Text :='update po_order_hd set status ='+QUOTEDSTR(status)+#13+
                          ' , UPDATE_USER='+QuotedStr(WarehouseDataManager.User.userid)  +#13+
                          ',update_date =current_timestamp'   +#13+
                        'where order_no ='+quotedStr(orderNo)+  #13+
                        'and supp_code='+quotedStr(supplierCode)    ;
      qryAdhoc.ExecSQL;
   except
    on e:Exception do
    BEGIN
       fail(E);
    END;
   END;
   end;
    //update detail status
    if (result) then
    begin
       try
          qryAdhoc.Close;
          qryAdhoc.SQL.Text :='update po_order_dt set status ='+QUOTEDSTR(status)+#13+
                            'where order_no ='+quotedStr(orderNo)+  #13+
                            'and supp_code='+quotedStr(supplierCode)    ;
          qryAdhoc.ExecSQL;
      except
      on e:Exception do
        BEGIN
            fail(E);
        END;
      end;
     END;



END;
function TPurchaseOrderDM.getOrderItemLineNo(aOrderNo,asuppCode:string):integer;
begin

  result :=0;
  try
     qryAdhoc.close;
     qryAdhoc.sql.text :='SELECT MAX(LINE_NO) FROM PO_ORDER_DT WHERE ORDER_NO='+QuotedStr(aorderNo)+' and supp_code='+quotedstr(asuppcode);
     qryAdhoc.open;
     result :=qryAdhoc.fields[0].asinteger +1;
  except on e:exception do
  begin
     errorEx('Could not get item line no '+e.Message)  ;
  end;
  end;
end;
function TPurchaseOrderDM.getCreditTerm(SupplierCode:String):integer;
procedure fail(e:Exception);
begin
      errorex('Failed: Approve Purchase ORDER'+e.Message);
      result:=0;
end;

begin
  result:=0;
  try
     qryAdhoc.Close;
     qryAdhoc.SQL.Text:=  'SELECT MAX(CREDIT_TERM) FROM AP_CREDITOR'+#13+
                          'WHERE CREDITOR_ACCT ='+quotedStr(supplierCode);
     qryAdhoc.Open;
   except
    on e:Exception do
    BEGIN
       result:=0;
       MessageDlg('Failed to Approve purchase Order'+#13+'['+e.Message+']',mtError,[mbCancel],0);
    END;
   end;
end;

procedure TPurchaseOrderDM.tbPurchaseOrderHeaderSUPP_CODEChange(
  Sender: TField);
 // Var    supplier:TSupplierInformation;
begin
   if (sender.AsString <>'') and (tbPurchaseOrderHeader.State in [dsEdit,dsInsert]) then
   begin
       activesupplier :=TSupplierInformation.create(sender.AsString,qryAdhoc);
       tbPurchaseOrderHeaderName.asstring  :=activesupplier.name;
       tbPurchaseOrderHeaderTERM_OF_PAYMENT.AsInteger :=activesupplier.creditTerm;
   end;
end;

procedure TPurchaseOrderDM.tbPurchaseOrderHeaderBeforePost(
  DataSet: TDataSet);
begin
  with dataset do
  begin
    fieldbyname('update_user').asstring :=  WarehouseDataManager.User.userid;
    fieldbyname('update_date').AsDateTime := now;
  end;

end;

procedure TPurchaseOrderDM.tbPurchaseOrderHeaderNewRecord(
  DataSet: TDataSet);
begin
  dataset.FieldByName('STATUS').AsString:='N';
  dataset.FieldByName('MARKUP').AsInteger :=10;
  dataset.fieldbyname('order_amt').AsFloat :=0;
  dataset.FieldByName('tax_amt').AsFloat :=0;
  dataset.fieldbyname('discs_amt').asfloat :=0;
  dataset.fieldbyname('no_of_print').AsInteger :=0;

end;

procedure TPurchaseOrderDM.tbPurchaseOrderDetailAfterOpen(
  DataSet: TDataSet);
begin
  if (activesupplier=nil) then
  begin
     if (tbPurchaseOrderHeaderSUPP_CODE.AsString<>'') THEN
     activesupplier := TSupplierInformation.Create(tbPurchaseOrderHeaderSUPP_CODE.AsString,qryAdhoc);
  end;

end;

procedure TPurchaseOrderDM.tbPurchaseOrderDetailITEM_CODEChange(
  Sender: TField);
begin
  inherited;
  if (sender.asstring <>'') then
  begin
    tbPurchaseOrderDetailGROUP_ID.AsString :=qryOrderItemLookkup.FieldByName('GROUP_ID').AsString;
    tbPurchaseOrderDetailITEM_DESCS.aSsTRING := qryOrderItemLookkupEN_DESCS.AsString;
    //14 July 2010 overwrite remark with local description
    tbPurchaseOrderDetailREMARKS.AsString :=qryOrderItemLookkupTH_DESCS.AsString;
    tbPurchaseOrderDetailUOM.AsString :=qryOrderItemLookkup.FieldByName('UOM_CD').AsString;
    tbPurchaseOrderDetailLOT_NO.AsString :=tbPurchaseOrderDetailORDER_NO.AsString;
    tbPurchaseOrderDetailUNIT_COST.AsFloat :=   qryOrderItemLookkup.fieldbyname('unit_cost').AsFloat;
  end;
end;

procedure TPurchaseOrderDM.tbPurchaseOrderDetailNewRecord(
  DataSet: TDataSet);
begin
 with dataset do
 begin
    fieldbyname('unit_cost').asfloat :=0;
    fieldbyname('total_amt').asfloat :=0;
    fieldbyname('discs_amt').asfloat :=0;
    fieldbyname('tax_cd').asstring :=activesupplier.taxcode;
    fieldbyname('tax_rate').asfloat :=activesupplier.taxRate;
    fieldbyname('markup').AsInteger :=tbPurchaseOrderHeaderMARKUP.AsInteger;
    fieldbyname('tax_amt').asfloat :=0;
    fieldbyname('qty').asfloat :=0;
    fieldbyname('grn_qty').asfloat :=0;
    fieldbyname('base_amt').asfloat :=0;
    fieldbyname('discs_rate').asfloat :=0;
    fieldbyname('status').AsString :='N';
    fieldbyname('remarks').asstring :=' ';
    fieldbyname('stock_empty').asstring:='N';
    fieldbyname('line_no').asInteger :=getOrderItemLineNo(
    tbPurchaseOrderHeaderORDER_NO.asstring,
    tbPurchaseOrderHeaderSUPP_CODE.AsString)   ;
 end;
  {

  ITEM_CODE         VARCHAR15 NOT NULL,
    LINE_NO           SSMALLINT NOT NULL,
    ORDER_DATE        DDATE NOT NULL,
    SUPP_CODE         VARCHAR10 NOT NULL,
    UOM               VARCHAR4 NOT NULL,
    ORDER_NO          VARCHAR15 NOT NULL,
    ITEM_DESCS        VARCHAR60 NOT NULL,
    UNIT_COST         FFLOAT NOT NULL,
    TOTAL_AMT         FFLOAT NOT NULL,
    REMARKS           VARCHAR60 NOT NULL,
    DISCS_AMT         FFLOAT,
    TAX_AMT           FFLOAT NOT NULL,
    BASE_AMT          FFLOAT NOT NULL,
    TAX_CD            VARCHAR2 NOT NULL,
    DISCS_CD          VARCHAR2,
    QTY               FFLOAT NOT NULL,
    TAX_RATE          FFLOAT NOT NULL,
    STATUS            FLAG,
    GRN_QTY           FFLOAT NOT NULL,
    LOT_NO            VARCHAR15 NOT NULL,
    GROUP_ID          VARCHAR10 NOT NULL,
    MARKUP            SMALLINT,
    DISCS_RATE        FFLOAT,
    UPDATE_PRICE      FLOAT,
    UPDATE_TOTAL_AMT  FLOAT,
    STOCK_EMPTY       FLAG DEFAULT 'N'
  }

end;

procedure TPurchaseOrderDM.tbPurchaseOrderDetailDISCS_CDChange(
  Sender: TField);
begin
  tbPurchaseOrderDetailDISCS_RATE.AsFloat :=qryDiscountDISCS_RATE.AsFloat;

end;

procedure TPurchaseOrderDM.tbPurchaseOrderDetailQTYChange(Sender: TField);
begin
   tbPurchaseOrderDetailBASE_AMT.AsFloat := tbPurchaseOrderDetailQTY.AsFloat*tbPurchaseOrderDetailUNIT_COST.AsFloat;
   tbPurchaseOrderDetailTAX_AMT.AsFloat :=  (tbPurchaseOrderDetailBASE_AMT.AsFloat  -   tbPurchaseOrderDetailDISCS_AMT.AsFloat)*tbPurchaseOrderDetailTAX_RATE.AsFloat/100;
   tbPurchaseOrderDetailTOTAL_AMT.AsFloat  :=    (tbPurchaseOrderDetailBASE_AMT.AsFloat  -   tbPurchaseOrderDetailDISCS_AMT.AsFloat)+ tbPurchaseOrderDetailTAX_AMT.AsFloat
                                           
   // 15 Nov,2010 add discount calculate

end;

procedure TPurchaseOrderDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  setDisplayFormat;
end;

procedure TPurchaseOrderDM.tbPurchaseOrderDetailDISCS_RATEChange(
  Sender: TField);
begin
  tbPurchaseOrderDetailBASE_AMT.AsFloat :=  tbPurchaseOrderDetailQTY.AsFloat *  tbPurchaseOrderDetailUNIT_COST.AsFloat;
  tbPurchaseOrderDetailDISCS_AMT.AsFloat :=tbPurchaseOrderDetailBASE_AMT.AsFloat*Sender.asfloat/100;
  tbPurchaseOrderDetailTAX_AMT.aSFloat :=  ( tbPurchaseOrderDetailBASE_AMT.AsFloat -    tbPurchaseOrderDetailDISCS_AMT.AsFloat)  *  tbPurchaseOrderDetailTAX_RATE.AsFloat /100;
  tbPurchaseOrderDetailTOTAL_AMT.asFloat:=   ( tbPurchaseOrderDetailBASE_AMT.AsFloat -    tbPurchaseOrderDetailDISCS_AMT.AsFloat)  +  tbPurchaseOrderDetailTAX_AMT.aSFloat;

end;

procedure TPurchaseOrderDM.tbPurchaseOrderDetailAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  qryOrderSummary.Close;
  qryOrderSummary.ParamByName('pOrderNo').Value :=dataset.fieldbyname('order_no').asString;
  qryOrderSummary.Open;
end;

procedure TPurchaseOrderDM.qryUnApprovePurchaseOrderAfterOpen(
  DataSet: TDataSet);
begin
  tbPurchaseOrderDTView.Close;
  tbPurchaseOrderDTView.Open;
end;

procedure TPurchaseOrderDM.qryUnApprovePurchaseOrderAfterClose(
  DataSet: TDataSet);
begin
   tbPurchaseOrderDTView.Close;

end;

end.
