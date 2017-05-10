unit FinishedGoodsStockAdjustManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractcxDataBrowse, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxBar, Menus,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, fcStatusBar;

type
  TfrmFNGAdjustManager = class(TcxAbstractDataBrowse)
    cxGridDBTableViewDOC_NO: TcxGridDBColumn;
    cxGridDBTableViewDOC_DATE: TcxGridDBColumn;
    cxGridDBTableViewDESCS: TcxGridDBColumn;
    cxGridDBTableViewDESCS1: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure doPostAction(Sender: TObject);override;
    procedure doNewAction(Sender: TObject);override;
    procedure doEditAction(Sender: TObject);override;
    procedure doDeleteAction(sender:TObject);override;
    procedure setupdatasets;override;
  end;

var
  frmFNGAdjustManager: TfrmFNGAdjustManager;

implementation

uses productionPlanDataModule,FinishedGoodsStockAdjustForm, BaseMasterDetail,
  AbstractDataBrowse;

{$R *.dfm}


procedure TfrmFNGAdjustManager.setupdatasets;
begin
  datasource.DataSet := ProductionDM.qryFNGAdjustUnpost;
end;

procedure   TfrmFNGAdjustManager.doNewAction(Sender: TObject);
begin
frmFNGAdjustForm :=      TfrmFNGAdjustForm.create(SELF,FSELECTEDOBJECT,'DOC_NO',0);
frmFNGAdjustForm.Show;
end;

procedure   TfrmFNGAdjustManager.doEditAction(Sender: TObject);
begin
frmFNGAdjustForm :=      TfrmFNGAdjustForm.create(SELF,FSELECTEDOBJECT,'DOC_NO',1);
frmFNGAdjustForm.Show;
end;

procedure   TfrmFNGAdjustManager.doPostAction(Sender: TObject);
begin
     fsuccess := productiondm.PostFinishedGoodsAdjust(datasource.DataSet.Fieldbyname('doc_no').AsString,
     FormatDateTime('mm/dd/yyyy',datasource.dataset.Fieldbyname('doc_date').asdatetime));
     doRefreshAction(sender);
//post
end;


procedure   TfrmFNGAdjustManager.doDeleteAction(Sender: TObject);
begin

//delete
end;


end.
