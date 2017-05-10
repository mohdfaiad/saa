unit MaterialGroupSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBGridEditForm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, wwrcdvw, wwDialog,
  wwidlg, dxLayoutLookAndFeels, ImgList, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, StdCtrls, ExtCtrls, ComCtrls, ToolWin,
  fcStatusBar;

type
  TfrmCXMaterialStockGroup = class(TfrmDBGridEntry)
    cxGrid1DBTableView1GROUP_ID: TcxGridDBColumn;
    cxGrid1DBTableView1DESCS: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATE_USER: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATE_DATE: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure doSetupDataSet;override;
  end;

var
  frmCXMaterialStockGroup: TfrmCXMaterialStockGroup;

implementation

uses MasterSetupDataModule;


procedure TfrmCXMaterialStockGroup.doSetupDataSet;
begin
  datasource.DataSet :=  MasterSetupDM.tbMaterialGroup;
end;

{$R *.dfm}

end.
