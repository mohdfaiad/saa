unit CreditorType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBSingleEntryForm, dxLayoutLookAndFeels, DB, ImgList,
  ExtCtrls, ComCtrls, ToolWin, fcStatusBar, dxExEdtr, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid,mastersetupdatamodule, dxDBTLCl, dxGrClms, Grids,
  DBGrids, cxControls, cxNavigator, cxDBNavigator, wwrcdvw, wwDialog,
  wwidlg;

type
  TfrmCreditorType = class(TfrmDBSingleEntry)
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2CREDITOR_TYPE: TdxDBGridMaskColumn;
    dxDBGrid2DESCS: TdxDBGridMaskColumn;
    dxDBGrid2UPDATE_USER: TdxDBGridMaskColumn;
    dxDBGrid2UPDATE_DATE: TdxDBGridDateColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure doSetupDataSet;override;
  end;

var
  frmCreditorType: TfrmCreditorType;

implementation

{$R *.dfm}


procedure TFrmCreditorType.doSetupDataSet;
begin
  datasource.DataSet := MasterSetupDM.tbApCreditorType;
    datasource.DataSet.active:=true;
    //dxDBGrid2.OptionsBehavior[edgoEnterpass]
end;

end.
