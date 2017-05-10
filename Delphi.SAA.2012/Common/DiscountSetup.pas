unit DiscountSetup;

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
  TfrmDiscount = class(TfrmDBGridEntry)
    cxGrid1DBTableView1DISCS_CD: TcxGridDBColumn;
    cxGrid1DBTableView1DESCS: TcxGridDBColumn;
    cxGrid1DBTableView1DISCS_DESCS: TcxGridDBColumn;
    cxGrid1DBTableView1DISCS_RATE: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
      procedure doSetupDataset;override;
  end;

var
  frmDiscount: TfrmDiscount;

implementation
uses   MasterSetupDataModule;

procedure TfrmDiscount.doSetupDataset;
begin
  datasource.DataSet := MasterSetupDM.tbDiscount;
end;

{$R *.dfm}

end.
