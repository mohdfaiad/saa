unit DrossDataModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataModule, DB, IBCustomDataSet, IBQuery, IBStoredProc,
  IBTable,dialogutils;

type
  TDROSSDM = class(TAbstractDM)
    tbDrossReceiveHD: TIBTable;
    tbDrossReceiveDT: TIBTable;
    spPostDrossReceive: TIBStoredProc;
    qryUnClosedRawmaterialPlan: TIBQuery;
    qryUnClosedRawmaterialPlanMELT_NO: TIBStringField;
    qryUnClosedRawmaterialPlanPLAN_DOC: TIBStringField;
    qryUnClosedRawmaterialPlanPLAN_DATE: TDateTimeField;
    qryUnClosedRawmaterialPlanITEM_CODE: TIBStringField;
    tbDrossReceiveHDMELT_NO: TIBStringField;
    tbDrossReceiveHDDESCS: TIBStringField;
    tbDrossReceiveHDRECEIVE_DATE: TDateTimeField;
    tbDrossReceiveHDRECEIVE_DOC: TIBStringField;
    tbDrossReceiveHDUPDATE_USER: TIBStringField;
    tbDrossReceiveHDUPDATE_DATE: TDateTimeField;
    tbDrossReceiveHDSTATUS: TIBStringField;
    tbDrossReceiveDTMELT_NO: TIBStringField;
    tbDrossReceiveDTDROSS_TYPE: TSmallintField;
    tbDrossReceiveDTWEIGHT: TFloatField;
    tbDrossReceiveDTDESCS: TIBStringField;
    tbDrossReceiveDTNET_WEIGHT: TFloatField;
    dsDrossReceiveHD: TDataSource;
    dsDrossReceiveDT: TDataSource;
    tbDrossReceiveDTRECEIVE_DOC: TIBStringField;
    tbDrossReceiveDTRECEIVE_DATE: TDateTimeField;
    qryUnpostDross: TIBQuery;
    qryUnpostDrossMELT_NO: TIBStringField;
    qryUnpostDrossDESCS: TIBStringField;
    qryUnpostDrossRECEIVE_DATE: TDateTimeField;
    qryUnpostDrossRECEIVE_DOC: TIBStringField;
    qryUnpostDrossUPDATE_USER: TIBStringField;
    qryUnpostDrossUPDATE_DATE: TDateTimeField;
    qryUnpostDrossSTATUS: TIBStringField;
    tbDross: TIBTable;
    tbDrossDROSS_TYPE: TSmallintField;
    tbDrossDESCS: TIBStringField;
    qryDrossBalance: TIBQuery;
    qryDrossBalanceMELT_NO: TIBStringField;
    qryDrossBalanceDROSS_TYPE: TSmallintField;
    qryDrossBalanceONHAND_QTY: TFloatField;
    qryDrossBalanceDROSS_TYPE1: TSmallintField;
    qryDrossBalanceDESCS: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure tbDrossReceiveHDBeforePost(DataSet: TDataSet);
    procedure tbDrossReceiveHDNewRecord(DataSet: TDataSet);
    procedure tbDrossReceiveDTNewRecord(DataSet: TDataSet);
    procedure tbDrossReceiveDTAfterPost(DataSet: TDataSet);
    procedure tbDrossReceiveHDAfterPost(DataSet: TDataSet);
    procedure tbDrossReceiveHDAfterDelete(DataSet: TDataSet);
    procedure tbDrossReceiveDTAfterDelete(DataSet: TDataSet);
    procedure tbDrossReceiveDTBeforePost(DataSet: TDataSet);
    procedure tbDrossReceiveHDAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
   function deleteDross(docNo:String):boolean;
   function postDross(meltNo,docNo:string):boolean;
    { Public declarations }
  end;

var
  DROSSDM: TDROSSDM;

implementation
uses WareHouseDM;

{$R *.dfm}
function TDROSSDM.DeleteDross(docNo:String):boolean;
begin
try
  WarehouseDataManager.qryAdhoc.Close;
  WarehouseDataManager.qryAdhoc.sql.Text:=' delete from pl_dross_hd where receive_doc='+quotedstr(docNo);
  WarehouseDataManager.qryAdhoc.ExecSQL;
except
on  e:exception do
   errorex('Failed to delete '+docNo+' error ='+#13+e.Message);
end;
  commit;
  result:= (WarehouseDataManager.qryAdhoc.RowsAffected>0)
end;
function TDROSSDM.postDross(meltNo,docNo:string):boolean;
 procedure   failed(e:exception);
 begin
   errorex('Failed to post '+docNo+' error='+#13+e.Message);
   result:=false;
 end;
begin
  result:= true;
  try
     with  spPostDrossReceive do
     begin
        parambyname('AMELT_NO').AsString:=meltNo;
        parambyname('Areceive_doc').AsString:=docNo;
        parambyname('AUSERID').AsString:=WarehouseDataManager.User.userid;
        ExecProc;
     end;
  except
  on  e:exception do   failed(e);

  end;
  {
   RowsAffected not working with TIBStorproc but works with TIBQuery
   alway return true
  }
 //
end;
procedure TDROSSDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  setTransaction(WarehouseDataManager.IBTransaction);
  setDisplayFormat;
end;

procedure TDROSSDM.tbDrossReceiveHDBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('update_date').asDateTime:= NOW;
end;

procedure TDROSSDM.tbDrossReceiveHDNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('RECEIVE_date').asDateTime:= Date;
  DataSet.FieldByName('UPDATE_USER').AsString:=WarehouseDataManager.User.userid;
  DataSet.FieldByName('STATUS').AsString:='N';

end;

procedure TDROSSDM.tbDrossReceiveDTNewRecord(DataSet: TDataSet);
begin
  inherited;
 tbDrossReceiveDTWEIGHT.asfloat:=0;
 tbDrossReceiveDTNET_WEIGHT.AsFloat:=0;
end;

procedure TDROSSDM.tbDrossReceiveDTAfterPost(DataSet: TDataSet);
begin
  inherited;
commit;
end;

procedure TDROSSDM.tbDrossReceiveHDAfterPost(DataSet: TDataSet);
begin
  inherited;
 commit;
end;

procedure TDROSSDM.tbDrossReceiveHDAfterDelete(DataSet: TDataSet);
begin
  inherited;
 commit;
end;

procedure TDROSSDM.tbDrossReceiveDTAfterDelete(DataSet: TDataSet);
begin
  inherited;
commit;
end;

procedure TDROSSDM.tbDrossReceiveDTBeforePost(DataSet: TDataSet);
begin
  inherited;
   tbDrossReceiveDTWEIGHT.AsFloat:=  tbDrossReceiveDTNET_WEIGHT.AsFloat
end;

procedure TDROSSDM.tbDrossReceiveHDAfterClose(DataSet: TDataSet);
begin
  inherited;
  dataset.Filtered:=false;
  dataset.filter:='STATUS<>''X''';
end;

end.
