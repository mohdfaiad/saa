unit Creditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBSingleEntryForm, StdCtrls, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, dxLayoutLookAndFeels, DB, ImgList,
  ExtCtrls, ComCtrls, ToolWin, fcStatusBar,MasterSetupDataModule,
  dxLayoutControl, cxGraphics, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxNavigator, cxDBNavigator, wwrcdvw,
  wwDialog, wwidlg, cxLookAndFeelPainters, DBCtrls, cxGroupBox;

type
  TfrmCreditor = class(TfrmDBSingleEntry)
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edAccountCode: TcxDBTextEdit;
    cbType: TcxDBLookupComboBox;
    cbTax: TcxDBLookupComboBox;
    edCRTerm: TcxDBTextEdit;
    edProvince: TcxDBTextEdit;
    cbCurrency: TcxDBLookupComboBox;
    edPostCode: TcxDBTextEdit;
    edTel: TcxDBTextEdit;
    edFax: TcxDBTextEdit;
    edTaxReg: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    edAddr3: TcxDBTextEdit;
    edAddr2: TcxDBTextEdit;
    edAddr1: TcxDBTextEdit;
    edShortName: TcxDBTextEdit;
    edName: TcxDBTextEdit;
    edLocalName: TcxDBTextEdit;
    edLAddr1: TcxDBTextEdit;
    edLAddr2: TcxDBTextEdit;
    edLAddr3: TcxDBTextEdit;
    dsCurrencyLookup: TDataSource;
    dsCreditorTypeLookup: TDataSource;
    dsTaxLookup: TDataSource;
  private
    { Private declarations }
  public
    procedure initcomponents;override;
    procedure doSetupDataSet;override;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    { Public declarations }
  end;

var
  frmCreditor: TfrmCreditor;

implementation

{$R *.dfm}

procedure TFrmCreditor.initcomponents;
begin
   ActiveControl := edAccountCode;
 //
end;

procedure TFrmCreditor.doSetupDataSet;
begin
  datasource.DataSet :=MasterSetupDM.tbAPCREDITOR;
  dsCreditorTypeLookup.DataSet :=masterSetupDM.tbApCreditorType;
  dsCurrencyLookup.DataSet :=mastersetupDM.tbCurrency;
  dsTaxLookup.DataSet :=mastersetupdm.tbTax;
  dsTaxLookup.DataSet.Open;
  dsCreditorTypeLookup.DataSet.open;
  dsCurrencyLookup.DataSet.Open;
  datasource.DataSet.Open;

end;

procedure TFrmCreditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  dsTaxLookup.DataSet.cLOSE;
  dsCreditorTypeLookup.DataSet.cLOSE;
  dsCurrencyLookup.DataSet.Close;
  DataSource.DataSet.Close;
  inherited;

end;
end.
