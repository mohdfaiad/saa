unit FinishedGoodsReceiveManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractcxDataBrowse, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxBar, Menus,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, fcStatusBar,dialogutils;

type
  TfrmFNGReceiveManager = class(TcxAbstractDataBrowse)
    cxGridDBTableViewDOC_NO: TcxGridDBColumn;
    cxGridDBTableViewDOC_DATE: TcxGridDBColumn;
    cxGridDBTableViewDESCS: TcxGridDBColumn;
    cxGridDBTableViewMELT_NO: TcxGridDBColumn;
    cxGridDBTableViewITEM_CODE: TcxGridDBColumn;
    cxGridDBTableViewMARKUP_WEIGHT1: TcxGridDBColumn;
    cxGridDBTableViewMARKUP_WEIGHT2: TcxGridDBColumn;
    cxGridDBTableViewBUNDLE_QTY: TcxGridDBColumn;
  private
    { Private declarations }
  public
   procedure doPostAction(Sender: TObject);override;
    procedure doNewAction(Sender: TObject);override;
    procedure doEditAction(Sender: TObject);override;
    procedure doDeleteAction(sender:TObject);override;
    procedure setupdatasets;override;
  end;

var
  frmFNGReceiveManager: TfrmFNGReceiveManager;

implementation

uses productionPlanDataModule,FinishedGoodsReceiveForm, BaseMasterDetail,
  AbstractDataBrowse;

{$R *.dfm}

procedure TfrmFNGReceiveManager.setupdatasets;
begin
  datasource.DataSet := ProductionDM.qryFNGReceiveUnpost;
end;

procedure   TfrmFNGReceiveManager.doNewAction(Sender: TObject);
begin
frmFNGReceiveForm :=      TfrmFNGReceiveForm.create(SELF,FSELECTEDOBJECT,'DOC_NO',0);
frmFNGReceiveForm.Show;
end;

procedure   TfrmFNGReceiveManager.doEditAction(Sender: TObject);
begin
frmFNGReceiveForm :=      TfrmFNGReceiveForm.create(SELF,FSELECTEDOBJECT,'DOC_NO',1);
frmFNGReceiveForm.Show;
end;

procedure   TfrmFNGReceiveManager.doPostAction(Sender: TObject);
begin
     fsuccess := productiondm.PostFinishedGoodsReceive(datasource.DataSet.Fieldbyname('doc_no').AsString,
     FormatDateTime('mm/dd/yyyy',datasource.dataset.Fieldbyname('doc_date').asdatetime));
     doRefreshAction(sender);
//post
end;


procedure   TfrmFNGReceiveManager.doDeleteAction(Sender: TObject);
begin

//delete
end;

end.
