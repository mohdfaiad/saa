unit FinishedGoodsReturnManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractcxDataBrowse, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxBar, Menus,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, fcStatusBar;

type
  TfrmFNGReturnManager = class(TcxAbstractDataBrowse)
    cxGridDBTableViewDOC_NO: TcxGridDBColumn;
    cxGridDBTableViewDOC_DATE: TcxGridDBColumn;
    cxGridDBTableViewCUST_CODE: TcxGridDBColumn;
    cxGridDBTableViewMELT_NO: TcxGridDBColumn;
    cxGridDBTableViewDESCS: TcxGridDBColumn;
    cxGridDBTableViewBUNDLE_QTY: TcxGridDBColumn;
    cxGridDBTableViewITEM_CODE: TcxGridDBColumn;
    procedure postButtonDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure postButtonDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure cxGridDBTableViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
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
  frmFNGReturnManager: TfrmFNGReturnManager;


  implementation

uses productionPlanDataModule,FinishedGoodsReturnForm, BaseMasterDetail,
  AbstractDataBrowse;

{$R *.dfm}

procedure TfrmFNGReturnManager.setupdatasets;
begin
  datasource.DataSet := ProductionDM.qryFNGReturnUnpost;
end;

procedure   TfrmFNGReturnManager.doNewAction(Sender: TObject);
begin
frmFNGReturn :=      TfrmFNGReturn.create(SELF,FSELECTEDOBJECT,'DOC_NO',0);
frmFNGReturn.Show;
end;

procedure   TfrmFNGReturnManager.doEditAction(Sender: TObject);
begin
frmFNGReturn :=      TfrmFNGReturn.create(SELF,FSELECTEDOBJECT,'DOC_NO',1);
frmFNGReturn.Show;
end;

procedure   TfrmFNGReturnManager.doPostAction(Sender: TObject);
begin
     fsuccess := productiondm.PostFinishedGoodsReturn(datasource.DataSet.Fieldbyname('doc_no').AsString,
     FormatDateTime('mm/dd/yyyy',datasource.dataset.Fieldbyname('doc_date').asdatetime));
     doRefreshAction(sender);
//post
end;


procedure   TfrmFNGReturnManager.doDeleteAction(Sender: TObject);
begin

//delete
end;

procedure TfrmFNGReturnManager.postButtonDragDrop(Sender, Source: TObject;
  X, Y: Integer);
begin
  showMessage(DataSource.DataSet.FieldbYname('doc_no').AsString +' has dropped') ;
end;

procedure TfrmFNGReturnManager.postButtonDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
accept := Source is TcxDragControlObject;
end;

procedure TfrmFNGReturnManager.cxGridDBTableViewCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
//cxGrid.DRAG
end;

end.


