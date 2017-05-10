unit CurrencySetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBGridEditForm, dxExEdtr, wwrcdvw, wwDialog, wwidlg,
  dxLayoutLookAndFeels, DB, ImgList, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  cxPC, cxControls, StdCtrls, ExtCtrls, ComCtrls, ToolWin, fcStatusBar,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmCurrency = class(TfrmDBGridEntry)
    cxGrid1DBTableView1CURRENCY_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1CURRENCY_RATE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCS: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATE_USER: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATE_DATE: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
       procedure doSetupDataset;override;
  end;

var
  frmCurrency: TfrmCurrency;

implementation
uses   MasterSetupDataModule;

{$R *.dfm}

procedure TfrmCurrency.doSetupDataset;
begin
  datasource.DataSet := MasterSetupDM.tbCurrency;
end;

end.
