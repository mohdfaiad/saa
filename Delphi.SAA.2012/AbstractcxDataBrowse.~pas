unit AbstractcxDataBrowse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataBrowse, StdCtrls, Menus, DB, Buttons, ExtCtrls,
  Grids, Wwdbigrd, Wwdbgrid, fcStatusBar, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxBar;

type
  TcxAbstractDataBrowse = class(TAbstractDataBrowseForm)
    lbHeader: TLabel;
    cxGrid: TcxGrid;
    cxGridDBTableView: TcxGridDBTableView;
    cxGridLevel: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    procedure cxGridDBTableViewDblClick(Sender: TObject);
    procedure cxGridDBTableViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure datasourceDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure AfterRefresh(dataset:TDataSet);
  end;

var
  cxAbstractDataBrowse: TcxAbstractDataBrowse;

implementation

{$R *.dfm}

procedure TcxAbstractDataBrowse.cxGridDBTableViewDblClick(Sender: TObject);
begin
  inherited;
  doEditAction(sender);
   
end;

procedure TcxAbstractDataBrowse.cxGridDBTableViewCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  inherited;
  fSelectedObject :=datasource.DataSet.FieldByName(fPkColumnName).AsString;
  statusbar1.Panels[1].Text:='Cell Current Active document='+varToStr(fSelectedObject);
end;

procedure TcxAbstractDataBrowse.FormCreate(Sender: TObject);
begin
  inherited;
  fdataset := datasource.DataSet;
  //bug stiill sould move this to datasource.OndataChangeInstead
 // Datasource.DataSet.AfterRefresh := AfterRefresh;
end;
procedure TcxAbstractDataBrowse.AfterRefresh(dataset:TDataSet);
begin
  lbHeader.Caption:='Found'+  IntToStr(Datasource.DataSet.RecordCount)+' records';
end;

procedure TcxAbstractDataBrowse.datasourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (datasource.dataset<>nil) then
     if datasource.dataset.Active then
          AfterRefresh(datasource.dataset);
end;

end.
