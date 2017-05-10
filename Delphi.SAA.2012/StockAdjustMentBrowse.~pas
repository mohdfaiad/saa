unit StockAdjustMentBrowse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataBrowse, ImgList, DB, StdCtrls, Buttons, ExtCtrls,
  Grids, Wwdbigrd, Wwdbgrid, fcStatusBar;

type
  TStockAdjustBrowseForm = class(TAbstractDataBrowseForm)
    deleteButton: TBitBtn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure doEditAction(Sender:TObject);override;
    procedure doNewAction(Sender:TObject); override;
    procedure doPostAction(Sender:TObject);override;
    procedure doDeleteAction(Sender:TObject);override;
    procedure setupDataSets;override;
    
  end;

var
  StockAdjustBrowseForm: TStockAdjustBrowseForm;

implementation
uses stockadjustDM,WAREHOUSEDM,StockAdjustment,runtimecontroller;

{$R *.dfm}


procedure TStockAdjustBrowseForm.doEditAction(Sender:TObject);
begin
   fSelectedObject := datasource.DataSet.FieldByName('DOC_NO').AsString;
   StockAdjustmentForm := TStockAdjustmentForm.create(self,fSelectedObject,'DOC_NO',1);
   StockAdjustmentForm.ShowModal;
   StockAdjustmentForm.Free;
   doRefreshAction(sender);

end;
procedure  TStockAdjustBrowseForm.setupDataSets;
begin
  datasource.dataset:=StockAdjustDataModule.qryUnPostedStockAdjust;
end;
procedure TStockAdjustBrowseForm.doNewAction(Sender:TObject);
begin

   StockAdjustmentForm := TStockAdjustmentForm.create(self,fSelectedObject,'DOC_NO',0);
   StockAdjustmentForm.ShowModal;

   StockAdjustmentForm.Free;
   RController.commit;
   doRefreshAction(sender);

end;
procedure TStockAdjustBrowseForm.doPostAction(Sender:TObject);
var dataSet:TDataSet;
begin
  dataSet :=dataSource.DataSet;
  fsuccess :=StockAdjustDataModule.postStockAdjust(
  dataSet.FieldByName('doc_no').AsString,
  dataSet.FieldByName('doc_date').AsDateTime,
  dataset.FieldByName('mode').AsString,
  'WH',
  WarehouseDataManager.User.userid);
  if (fsuccess ) then RController.commit;


end;

procedure TStockAdjustBrowseForm.FormCreate(Sender: TObject);
begin
  datasource.DataSet :=StockAdjustDataModule.qryUnPostedStockAdjust;
  inherited;
  deleteButton.Action:=deleteAction;
  deleteButton.ShowHint:=true;
  deleteButton.Hint:=deleteAction.Caption;
end;

procedure  TStockAdjustBrowseForm.doDeleteAction(Sender:TObject);
begin
  inherited;
  StockAdjustDataModule.deleteStockAdjust(fSelectedObject);
  doRefreshAction(sender);
end;

end.
