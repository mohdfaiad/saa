unit StockAdjustDM;

{
Date  :11-Dec-2017
Author:Tinnarat.A
Change : Add validate condiation before post if melt_no <> null check aginst if stock
had issued before.
Example : melt_no '09W11' has selected ensure trx request for 09W11 in ic_stockcard must have existed
       : Added isMeltNohasEverIssued
}


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataModule, DB, IBCustomDataSet, IBQuery, IBTable,dialogutils,
  IBStoredProc, XPStyleActnCtrls, ActnList, ActnMan;
type
  TStockAdjustPostManager   =class(TObject)
  public
   function execute(docNo:String;docDate:TDateTime;mode:String;module:String;userid:string):boolean;

end;
type
  TStockAdjustDataModule = class(TAbstractDM)
    qryUnPostedStockAdjust: TIBQuery;
    qryUnPostedStockAdjustDOC_NO: TIBStringField;
    qryUnPostedStockAdjustDOC_DATE: TDateTimeField;
    qryUnPostedStockAdjustDESCS: TIBStringField;
    qryUnPostedStockAdjustUPDATE_USER: TIBStringField;
    qryUnPostedStockAdjustMELT_NO: TIBStringField;
    qryUnPostedStockAdjustTRX_TYPE: TIBStringField;
    tbStockAdjustHeader: TIBTable;
    tbStockAdjustDetail: TIBTable;
    tbStockAdjustHeaderDOC_NO: TIBStringField;
    tbStockAdjustHeaderDOC_DATE: TDateTimeField;
    tbStockAdjustHeaderMODE: TIBStringField;
    tbStockAdjustHeaderDESCS: TIBStringField;
    tbStockAdjustHeaderUPDATE_USER: TIBStringField;
    tbStockAdjustHeaderUPDATE_DATE: TDateTimeField;
    tbStockAdjustHeaderCOSTS_ADJUSTED: TIBStringField;
    tbStockAdjustHeaderQTY_ADJUSTED: TIBStringField;
    tbStockAdjustHeaderSTATUS: TIBStringField;
    tbStockAdjustHeaderREMARKS: TIBStringField;
    tbStockAdjustHeaderINIT_ADJUSTED: TIBStringField;
    tbStockAdjustHeaderMELT_NO: TIBStringField;
    tbStockAdjustHeaderTRX_TYPE: TIBStringField;
    tbStockAdjustDetailITEM_CODE: TIBStringField;
    tbStockAdjustDetailUOM_CD: TIBStringField;
    tbStockAdjustDetailDOC_NO: TIBStringField;
    tbStockAdjustDetailDOC_DATE: TDateTimeField;
    tbStockAdjustDetailGROUP_ID: TIBStringField;
    tbStockAdjustDetailLOT_NO: TIBStringField;
    tbStockAdjustDetailPURCHASE_DATE: TDateTimeField;
    tbStockAdjustDetailQTY: TFloatField;
    tbStockAdjustDetailUNIT_COST: TFloatField;
    tbStockAdjustDetailTOTAL_COST: TFloatField;
    tbStockAdjustDetailONHAND_QTY: TFloatField;
    tbStockAdjustDetailSTOCK_DESCS: TIBStringField;
    tbStockAdjustDetailREF_NO: TIBStringField;
    tbStockAdjustDetailREF_DATE: TDateTimeField;
    tbStockAdjustDetailACCT_CD: TIBStringField;
    tbStockAdjustDetailVQTY: TFloatField;
    dsStockAdjustHeader: TDataSource;
    dsStockAdjustDetail: TDataSource;
    qryUnClosedRawmaterialPlan: TIBQuery;
    qryUnClosedRawmaterialPlanMELT_NO: TIBStringField;
    qryUnClosedRawmaterialPlanPLAN_DOC: TIBStringField;
    qryUnClosedRawmaterialPlanPLAN_DATE: TDateTimeField;
    qryUnClosedRawmaterialPlanITEM_CODE: TIBStringField;
    qryStockMaster: TIBQuery;
    qryStockMasterSTOCK_CD: TIBStringField;
    qryStockMasterEN_DESCS: TIBStringField;
    qryStockMasterTH_DESCS: TIBStringField;
    qryStockMasterSHORT_DESCS: TIBStringField;
    qryStockMasterONHAND_QTY: TFloatField;
    qryStockMasterUNIT_COST: TFloatField;
    qryStockMasterTOTAL_COST: TFloatField;
    qryStockMasterUOM_CD: TIBStringField;
    qryStockMasterGROUP_ID: TIBStringField;
    qryStockMasterRECOVERY: TFloatField;
    qryStockMasterMARKED_UP: TFloatField;
    qryStockMasterUPDATE_USER: TIBStringField;
    qryStockMasterUPDATE_DATE: TDateTimeField;
    qryStockMasterDEFAULT_ELEMENT_DETAIL: TIBStringField;
    qryStockMasterCONSUMEABLE_ITEM: TIBStringField;
    qryOnhandDetail: TIBQuery;
    qryOnhandLink: TIBQuery;
    qryOnhandDetailLOT_CD: TIBStringField;
    qryOnhandDetailPURCHASE_DATE: TDateTimeField;
    qryOnhandDetailONHAND_QTY: TFloatField;
    qryOnhandLinkSTOCK_CD: TIBStringField;
    qryOnhandLinkGROUP_ID: TIBStringField;
    qryOnhandLinkUOM_CD: TIBStringField;
    qryOnhandLinkLOT_CD: TIBStringField;
    qryOnhandLinkUNIT_COST: TFloatField;
    qryOnhandLinkLAST_PURCHASE_PRICE: TFloatField;
    qryOnhandLinkPURCHASE_DATE: TDateTimeField;
    qryOnhandLinkONHAND_QTY: TFloatField;
    qryOnhandLinkRESERVED_QTY: TFloatField;
    qryOnhandLinkSTOCK_VALUE: TFloatField;
    qryOnhandLinkTOTAL_COST: TFloatField;
    qryOnhandLinkACCT_CODE: TIBStringField;
    qryOnhandLinkORDER_LINE: TSmallintField;
    qryOnhandLinkREF_NO: TIBStringField;
    qryOnhandLinkREF_DATE: TDateTimeField;
    qryAdhoc: TIBQuery;
    spPostStockAdjust: TIBStoredProc;
    qryUnPostedStockAdjustMODE: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure tbStockAdjustHeaderAfterOpen(DataSet: TDataSet);
    procedure tbStockAdjustHeaderNewRecord(DataSet: TDataSet);
    procedure tbStockAdjustHeaderBeforePost(DataSet: TDataSet);
    procedure tbStockAdjustDetailAfterScroll(DataSet: TDataSet);
    procedure qryOnhandDetailAfterScroll(DataSet: TDataSet);
    procedure tbStockAdjustDetailITEM_CODEChange(Sender: TField);
    procedure tbStockAdjustDetailLOT_NOChange(Sender: TField);
    procedure tbStockAdjustDetailREF_NOChange(Sender: TField);
    procedure tbStockAdjustDetailQTYChange(Sender: TField);
    procedure tbStockAdjustDetailNewRecord(DataSet: TDataSet);
    procedure tbStockAdjustHeaderTRX_TYPEChange(Sender: TField);
    procedure tbStockAdjustHeaderAfterPost(DataSet: TDataSet);
    procedure tbStockAdjustDetailAfterPost(DataSet: TDataSet);
    procedure tbStockAdjustDetailAfterDelete(DataSet: TDataSet);
    procedure tbStockAdjustHeaderAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
     qryAdhoc1: TIBQuery;
    { Public declarations }
    procedure doFilterOnhandQueryDetail(dataSet:TDataSet);
    function deleteStockAdjust(docNo:String):String;
    function postStockAdjust(docNo:String;docDate:TDateTime;mode:String;module:String;userid:string):boolean;
    {11-12-2017:tinnarat}
    function isMeltNohasEverIssued(meltNo:String):boolean;
  end;

const ADJUST_TRX_TYPE:String ='SA';
      MELT_ADJUST_TRX_TYPE:String='MA';
var
  StockAdjustDataModule: TStockAdjustDataModule;
  stockAdjustPostManager:TStockAdjustPostManager;

implementation
uses WareHouseDM,SystemConfig;

{$R *.dfm}

function TStockAdjustPostManager.execute(docNo:String;docDate:TDateTime;mode:String;module:String;userid:string):boolean;
procedure fail(e:Exception);
begin
      errorex('Failed: Posting stock adjustment'+e.Message);
      result:=false;
end;
begin
  result:=true;
  try
   StockAdjustDataModule.spPostStockAdjust.ParamByName('ADOC_NO').AsString:= docNo;

   StockAdjustDataModule.spPostStockAdjust.ParamByName('ADOC_DATE').AsDate:= docDate;

   StockAdjustDataModule.spPostStockAdjust.ParamByName('AMODE').AsString:= mode;
   StockAdjustDataModule.spPostStockAdjust.ParamByName('AMODULE').AsString:=module;
   StockAdjustDataModule.spPostStockAdjust.ParamByName('AUSERID').AsString:=userid;
   StockAdjustDataModule.spPostStockAdjust.ExecProc;

  except
  on e:Exception do  fail(e);

  end;

end;

function TStockAdjustDataModule.isMeltNohasEverIssued(meltNo:String):boolean;
procedure fail(e:Exception);
begin
      errorex('Failed: isMeltNohasEverIssued'+e.Message);
      result:=false;
end;
begin
   try
   qryAdhoc.Active := false;
   qryAdhoc.SQL.Text :='select count(*) from ic_stockcard where TRX_TYPE='+QuotedStr('RT')+' and melt_no='+quotedStr(meltNo);
   qryAdhoc.Open;
   result :=  (qryAdhoc.Fields[0].Value > 0)
   except
    on e:exception   do
      fail(e)
   end

end;

function  TStockAdjustDataModule.postStockAdjust(docNo:String;docDate:TDateTime;mode:String;module:String;userid:string):boolean;
begin
  stockAdjustPostManager := TStockAdjustPostManager.Create;
  result:=stockAdjustPostManager.execute(docNo,docDate,mode,module,userid);
end;
procedure TStockAdjustDataModule.DataModuleCreate(Sender: TObject);
begin
  inherited;
  qryAdhoc := WarehouseDataManager.qryAdhoc;
  qryAdhoc.Database:= WarehouseDataManager.IBDatabase;
  qryAdhoc1:=TIBQuery.Create(self);
  qryAdhoc1 :=WarehouseDataManager.qryAdhoc;
  setTransaction(WarehouseDataManager.IBTransaction);
  setDisplayFormat;
  initEvents;

end;

procedure TStockAdjustDataModule.tbStockAdjustHeaderAfterOpen(
  DataSet: TDataSet);
begin
  if (dataset.State=dsEdit)  then
  begin
    DataSet.Filter:=DataSet.Filter +' and status='+quotedStr('N');
    DataSet.Filtered:=true;
  end;
 // DataSet.First;

end;

procedure TStockAdjustDataModule.tbStockAdjustHeaderNewRecord(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('STATUS').AsString:='N';
  DataSet.FieldByName('UPDATE_USER').AsString:=WarehouseDataManager.User.userid;
  DataSet.FieldByName('DESCS').AssTring:='Stock Adjustment Transaction';
  DataSet.FieldByName('doc_date').AsDateTime:=Date;
//  DataSet.fbn('UPDATE_USER').AsString:=ware

end;

function TStockAdjustDataModule.deleteStockAdjust(docNo:String):String;
begin
  result:='OK';
  try
   //  qryAdhoc :=TIBQuery.Create(self);
    // qryAdhoc1 :=   WarehouseDataManager.qryAdhoc;
     qryAdhoc.Active:=false;
     qryAdhoc.SQL.Text:='delete from ic_stock_adjust_hd where doc_no='+quotedStr(docNo);
     qryAdhoc.ExecSQL;
      qryAdhoc.Active:=false;
     commit;
  except
    on e:exception do
      errorex('Could not delete adjust document for'+docNo+#13+'Error['+e.Message+']');
   end;
end;

procedure TStockAdjustDataModule.tbStockAdjustHeaderBeforePost(
  DataSet: TDataSet);
var meltno:string;
begin
  inherited;
  {Tinnarat.A
  }
  meltno:=dataset.FieldByName('MELT_NO').AsString   ;
  if (meltno <> '') and (meltno <> 'melt_no')then
  begin
     if not (isMeltNohasEverIssued(meltno) ) then
     begin
         errorEx('Cound Not find Stock issue transaction for '+meltNo+'. Check Again stock card report!')  ;
         dataSet.Cancel;
     end ELSE DataSet.FieldByName('UPDATE_DATE').AsDateTime:=now;
  end else DataSet.FieldByName('UPDATE_DATE').AsDateTime:=now;
end;

procedure TStockAdjustDataModule.tbStockAdjustDetailAfterScroll(
  DataSet: TDataSet);
begin
   if (dataset.Active ) then
    if (dataset.fieldbyname('item_code').AsString <>'') then
    begin
       doFilterOnhandQueryDetail(dataset);
    end;

end;

procedure   TStockAdjustDataModule.doFilterOnhandQueryDetail(dataSet:TDataSet);
var query:String;
begin

{
 19-Feb-2018: Add new filter logic  : instead of checking value in windows registry
select LOT_CD,PURCHASE_DATE,SUM(onhand_qty) AS ONHAND_QTY from ic_mat_stk_dt_LINK
WHERE group_id not in ('SG008','SG009')
 and stock_cd = 'A001'
  AND( (purchase_date >= CURRENT_DATE - 365)
 or (ic_mat_stk_dt_LINK.onhand_qty > 0.9)    )
GROUP BY LOT_CD,purchase_date
order by purchase_date
}

{

 query:='select * from ic_mat_stk_dt '+
' where  purchase_date >= current_date - 365'+IntToStr(SystemConfigure.readIntRegistry('LastPurchaseDays')) +
' and group_id not in (''SG008'',''SG009'') '+
' and stock_cd = '+quotedStr(dataset.fieldbyname('item_code').AsString)+
' order by purchase_date' ;       {** 7 July,2010 add order by .Aon**}

     query :='select LOT_CD,PURCHASE_DATE,SUM(onhand_qty) AS ONHAND_QTY from ic_mat_stk_dt_LINK'+
            ' where ( (purchase_date >= current_date - 365) or (ic_mat_stk_dt_LINK.onhand_qty > 0.9) ) '+
            ' and group_id not in (''SG008'',''SG009'') '+
            ' and stock_cd = '+quotedStr(dataset.fieldbyname('item_code').AsString)+
            ' GROUP BY LOT_CD,purchase_date '+
            ' order by purchase_date' ;

     qryOnhandDetail.Close;
     qryOnhandDetail.SQL.Text:=query;

     qryOnhandDetail.Open;
end;

procedure TStockAdjustDataModule.qryOnhandDetailAfterScroll(
  DataSet: TDataSet);
begin
 if (dataset.Active ) then
    if (dataset.fieldbyname('lot_cd').AsString <>'') then
    begin
      qryOnhandLink.ParamByName('lot_cd').asString:=dataset.fieldbyname('lot_cd').AsString;
      //qryOnhandLink.ParamByName('dayOfPurchase').asInteger:=SystemConfigure.readIntRegistry('LastPurchaseDays');
      qryOnhandLink.Close;
      qryOnhandLink.Open;
    end;


end;

procedure TStockAdjustDataModule.tbStockAdjustDetailITEM_CODEChange(
  Sender: TField);
begin
 tbStockAdjustDetailSTOCK_DESCS.AsString:=qryStockMaster.fieldbyname('en_descs').AsString;
 tbStockAdjustDetailUOM_CD.AsString := qryStockMasterUOM_CD.AsString;
 tbStockAdjustDetailGROUP_ID.AsString := qryStockMasterGROUP_ID.AsString;
  if (Sender.AsString <>'') then
    begin
    doFilterOnhandQueryDetail(Sender.DataSet);
    end;
end;

procedure TStockAdjustDataModule.tbStockAdjustDetailLOT_NOChange(
  Sender: TField);
begin
  tbStockAdjustDetailPURCHASE_DATE.AsDateTime:=qryOnhandDetail.fieldbyname('purchase_date').AsDateTime;

end;

procedure TStockAdjustDataModule.tbStockAdjustDetailREF_NOChange(
  Sender: TField);
begin
 tbStockAdjustDetailREF_DATE.AsDateTime:=qryOnhandLinkREF_DATE.AsDateTime;
 tbStockAdjustDetailUNIT_COST.AsFloat:= qryOnhandLinkUNIT_COST.AsFloat;
 tbStockAdjustDetailONHAND_QTY.AsFloat:= qryOnhandLinkONHAND_QTY.AsFloat;
 tbStockAdjustDetailACCT_CD.AsString:= qryOnhandLinkACCT_CODE.AsString;
end;

procedure TStockAdjustDataModule.tbStockAdjustDetailQTYChange(
  Sender: TField);
begin
    if (tbStockAdjustHeaderMODE.AsString ='C') then
    begin
     tbStockAdjustDetailVQTY.AsFloat:= 0;
     tbStockAdjustDetailTOTAL_COST.AsFloat:=  tbStockAdjustDetailQTY.AsFloat*tbStockAdjustDetailUNIT_COST.AsFloat;
    end else
    if (tbStockAdjustHeaderMODE.AsString ='O') then
    begin
        if (sender.AsFloat >0 ) then
        begin
          warning('Adjust MODE is [-OUT] quantity must be minus value!');
          sender.AsFloat:=0;
        end else
        begin
          tbStockAdjustDetailVQTY.AsFloat:= tbStockAdjustDetailONHAND_QTY.AsFloat + Sender.AsFloat;
          tbStockAdjustDetailTOTAL_COST.AsFloat:=  Sender.AsFloat*tbStockAdjustDetailUNIT_COST.AsFloat;
        end;
        //Sender.Value := sender.OldValue;
    end
    else if ((tbStockAdjustHeaderMODE.AsString ='I') ) THEN
    BEGIN
       if  (sender.asfloat<0) then
       begin
         warning('Adjust MODE is [+IN] adjust quantity can not less than zero!');
         sender.asFloat := 0;
      END  else
      begin
       tbStockAdjustDetailVQTY.AsFloat:= tbStockAdjustDetailONHAND_QTY.AsFloat + Sender.AsFloat;
      tbStockAdjustDetailTOTAL_COST.AsFloat:=  Sender.AsFloat*tbStockAdjustDetailUNIT_COST.AsFloat;
      end;
    end;
end;

procedure TStockAdjustDataModule.tbStockAdjustDetailNewRecord(
  DataSet: TDataSet);
begin
 tbStockAdjustDetailQTY.AsFloat:=0;
 tbStockAdjustDetailVQTY.AsFloat:=0;
 tbStockAdjustDetailDoc_Date.AsDateTime:=  tbStockAdjustHeaderDOC_DATE.AsDateTime;

end;

procedure TStockAdjustDataModule.tbStockAdjustHeaderTRX_TYPEChange(
  Sender: TField);
begin
   if (sender.asstring ='SA') then
       tbStockAdjustHeaderMELT_NO.AsString:='melt_no';

end;

procedure TStockAdjustDataModule.tbStockAdjustHeaderAfterPost(
  DataSet: TDataSet);
begin
  commit;
end;

procedure TStockAdjustDataModule.tbStockAdjustDetailAfterPost(
  DataSet: TDataSet);
begin

commit;
end;

procedure TStockAdjustDataModule.tbStockAdjustDetailAfterDelete(
  DataSet: TDataSet);
begin

 commit;
end;

procedure TStockAdjustDataModule.tbStockAdjustHeaderAfterClose(
  DataSet: TDataSet);
begin
 // dataset.Filtered:=false;
  dataset.filter:='STATUS<>''X''';
end;

end.
