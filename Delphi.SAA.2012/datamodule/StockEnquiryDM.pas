unit StockEnquiryDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet,Dialogs, IBQuery,abstractDataModule;

type
  TStockEnquriyDM = class(TAbstractDM)
    qryStockMain: TIBQuery;
    qryPurchaseDetail: TIBQuery;
    qryGRN: TIBQuery;
    qryIssue: TIBQuery;
    qryOnhand: TIBQuery;
    qryReserved: TIBQuery;
    qryPurchaseHeader: TIBQuery;
    qryPurchaseHeaderORDER_NO: TIBStringField;
    qryPurchaseHeaderORDER_DATE: TDateTimeField;
    qryPurchaseHeaderDELIVERY_DATE: TDateTimeField;
    qryPurchaseHeaderSUPP_CODE: TIBStringField;
    qryPurchaseHeaderNAME: TIBStringField;
    qryPurchaseDetailITEM_CODE: TIBStringField;
    qryPurchaseDetailLINE_NO: TSmallintField;
    qryPurchaseDetailORDER_DATE: TDateTimeField;
    qryPurchaseDetailSUPP_CODE: TIBStringField;
    qryPurchaseDetailUOM: TIBStringField;
    qryPurchaseDetailORDER_NO: TIBStringField;
    qryPurchaseDetailITEM_DESCS: TIBStringField;
    qryPurchaseDetailUNIT_COST: TFloatField;
    qryPurchaseDetailTOTAL_AMT: TFloatField;
    qryPurchaseDetailREMARKS: TIBStringField;
    qryPurchaseDetailDISCS_AMT: TFloatField;
    qryPurchaseDetailTAX_AMT: TFloatField;
    qryPurchaseDetailBASE_AMT: TFloatField;
    qryPurchaseDetailTAX_CD: TIBStringField;
    qryPurchaseDetailDISCS_CD: TIBStringField;
    qryPurchaseDetailQTY: TFloatField;
    qryPurchaseDetailTAX_RATE: TFloatField;
    qryPurchaseDetailSTATUS: TIBStringField;
    qryPurchaseDetailGRN_QTY: TFloatField;
    qryPurchaseDetailLOT_NO: TIBStringField;
    qryPurchaseDetailGROUP_ID: TIBStringField;
    qryPurchaseDetailMARKUP: TSmallintField;
    qryPurchaseDetailDISCS_RATE: TFloatField;
    qryPurchaseDetailUPDATE_PRICE: TFloatField;
    qryPurchaseDetailUPDATE_TOTAL_AMT: TFloatField;
    qryPurchaseDetailSTOCK_EMPTY: TIBStringField;
    qryGRNITEM_CODE: TIBStringField;
    qryGRNORDER_LINE: TSmallintField;
    qryGRNSUPP_CODE: TIBStringField;
    qryGRNGRN_DATE: TDateTimeField;
    qryGRNGRN_NO: TIBStringField;
    qryGRNUOM: TIBStringField;
    qryGRNITEM_DESCS: TIBStringField;
    qryGRNUNIT_COST: TFloatField;
    qryGRNTOTAL_AMT: TFloatField;
    qryGRNREMARKS: TIBStringField;
    qryGRNDISCS_AMT: TFloatField;
    qryGRNTAX_AMT: TFloatField;
    qryGRNBASE_AMT: TFloatField;
    qryGRNTAX_CD: TIBStringField;
    qryGRNGRN_LINE: TSmallintField;
    qryGRNDISCS_CD: TIBStringField;
    qryGRNGRN_QTY: TFloatField;
    qryGRNORDER_QTY: TFloatField;
    qryGRNTAX_RATE: TFloatField;
    qryGRNORDER_NO: TIBStringField;
    qryGRNORDER_DATE: TDateTimeField;
    qryGRNSTATUS: TIBStringField;
    qryGRNGROUP_ID: TIBStringField;
    qryGRNLOT_NO: TIBStringField;
    qryGRNMARK_UP: TSmallintField;
    qryReservedDOC_NO: TIBStringField;
    qryReservedDOC_DATE: TDateTimeField;
    qryReservedLOT_CD: TIBStringField;
    qryReservedPURCHASE_DATE: TDateTimeField;
    qryReservedREF_NO: TIBStringField;
    qryReservedREF_DATE: TDateTimeField;
    qryReservedSTOCK_CD: TIBStringField;
    qryReservedGROUP_ID: TIBStringField;
    qryReservedUOM_CD: TIBStringField;
    qryReservedQTY: TFloatField;
    qryReservedUPDATE_USER: TIBStringField;
    qryReservedUPDATE_DATE: TDateTimeField;
    qryOnhandSTOCK_CD: TIBStringField;
    qryOnhandGROUP_ID: TIBStringField;
    qryOnhandUOM_CD: TIBStringField;
    qryOnhandLOT_CD: TIBStringField;
    qryOnhandUNIT_COST: TFloatField;
    qryOnhandLAST_PURCHASE_PRICE: TFloatField;
    qryOnhandPURCHASE_DATE: TDateTimeField;
    qryOnhandONHAND_QTY: TFloatField;
    qryOnhandRESERVED_QTY: TFloatField;
    qryOnhandSTOCK_VALUE: TFloatField;
    qryOnhandTOTAL_COST: TFloatField;
    qryOnhandACCT_CODE: TIBStringField;
    qryOnhandORDER_LINE: TSmallintField;
    qryOnhandREF_NO: TIBStringField;
    qryOnhandREF_DATE: TDateTimeField;
    procedure qryPurchaseHeaderAfterScroll(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject); {#### main query call####}
  private
    { Private declarations }
     procedure ActiveChildDataSet(active:boolean);
  public
    { Public declarations }
    procedure executeMainQuery(queryString:string);
    procedure commit;

  end;


var
  StockEnquriyDM: TStockEnquriyDM;

implementation
uses WarehouseDM;

{$R *.dfm}
procedure TStockEnquriyDM.executeMainQuery(queryString:string);
begin
  qryPurchaseHeader.SQL.Text:= queryString;
  
end;
procedure TStockEnquriyDM.ActiveChildDataSet(active:boolean);
begin
   qryPurchaseDetail.Active:=active;
   qryGRN.active:=active;
   qryReserved.Active:=active;
   qryOnhand.Active:=active;

end;
procedure TStockEnquriyDM.qryPurchaseHeaderAfterScroll(DataSet: TDataSet);
begin
 if (DataSet.RecordCount >0) then
 begin
 try
   ActiveChildDataSet(false);
   qryPurchaseDetail.ParamByName('order_no').AsString:=dataSet.FieldByName('order_no').AsString;
   qryGRN.ParamByName('order_no').AsString:=dataSet.FieldByName('order_no').AsString;
   qryReserved.ParamByName('order_no').AsString:=dataSet.FieldByName('order_no').AsString;
   //qryIssue.ParamByName('log_cd').AsString:=dataSet.FieldByName('order_no').AsString;
   qryOnhand.ParamByName('order_no').AsString:=dataSet.FieldByName('order_no').AsString;
   ActiveChildDataSet(true);
   except on e:Exception do
     MessageDlg('Stock Inquiry DataManager error '+e.message,mtError,[mbCancel],0);
   end;
 end
 else
 begin
   ActiveChildDataSet(false);
   ActiveChildDataSet(true);
 end
end;
procedure  TStockEnquriyDM.commit;
begin
  WarehouseDataManager.commit;
end;

procedure TStockEnquriyDM.DataModuleCreate(Sender: TObject);
begin
  
  setDisplayFormat;
end;

end.
