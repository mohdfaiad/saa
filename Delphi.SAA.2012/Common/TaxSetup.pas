unit TaxSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBGridEditForm, dxExEdtr, wwrcdvw, wwDialog, wwidlg,
  dxLayoutLookAndFeels, DB, ImgList, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  cxPC, cxControls, StdCtrls, ExtCtrls, ComCtrls, ToolWin, fcStatusBar,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmTax = class(TfrmDBGridEntry)
    cxGrid1DBTableView1SCHEME_CD: TcxGridDBColumn;
    cxGrid1DBTableView1TAX_CD: TcxGridDBColumn;
    cxGrid1DBTableView1DESCS: TcxGridDBColumn;
    cxGrid1DBTableView1TAX_RATE: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATE_USER: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATE_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1INCL: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure doSetupDataset;override;
  end;

var
  frmTax: TfrmTax;

implementation
uses   MasterSetupDataModule;

{$R *.dfm}

procedure TfrmTax.doSetupDataset;
begin
  datasource.DataSet := MasterSetupDM.tbTax;
end;

end.
