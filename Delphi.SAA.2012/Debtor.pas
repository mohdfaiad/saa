unit Debtor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBSingleEntryForm, StdCtrls, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, dxLayoutLookAndFeels, DB, ImgList,
  ExtCtrls, ComCtrls, ToolWin, fcStatusBar,MasterSetupDataModule,
  dxLayoutControl, cxGraphics, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxNavigator, cxDBNavigator,
  wwSpeedButton, wwDBNavigator, wwclearpanel, cxLookAndFeelPainters,
  cxGroupBox, DBCtrls, wwDialog, wwidlg, wwrcdvw, cxCheckBox;

type
  TfrmDebtor = class(TfrmDBSingleEntry)
    edAccountCode: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
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
    cbType: TcxDBLookupComboBox;
    cbTax: TcxDBLookupComboBox;
    edCRTerm: TcxDBTextEdit;
    edProvince: TcxDBTextEdit;
    cbCurrency: TcxDBLookupComboBox;
    edShortName: TcxDBTextEdit;
    edLocalName: TcxDBTextEdit;
    edAddr1: TcxDBTextEdit;
    edAddr2: TcxDBTextEdit;
    edAddr3: TcxDBTextEdit;
    edPostCode: TcxDBTextEdit;
    edTel: TcxDBTextEdit;
    edFax: TcxDBTextEdit;
    edTaxReg: TcxDBTextEdit;
    edLAddr1: TcxDBTextEdit;
    edLAddr2: TcxDBTextEdit;
    edLAddr3: TcxDBTextEdit;
    wwDBNavigator1: TwwDBNavigator;
    dsDebtorTypeLookup: TDataSource;
    dsCurrencyLookup: TDataSource;
    dsTaxLookup: TDataSource;
    dxLayoutOfficeLookAndFeel1: TdxLayoutOfficeLookAndFeel;
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
    wwDBNavigatorNext: TwwNavButton;
    wwDBNavigatorPrev: TwwNavButton;
    edName: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    Label16: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    procedure initcomponents;override;
    procedure doSetupDataSet;override;
    { Public declarations }
  end;

var
  frmDebtor: TfrmDebtor;

implementation

{$R *.dfm}

procedure TfrmDebtor.initcomponents;
procedure setTabOrder;
begin
   edAccountCode.TabOrder:=0;
   cbType.TabOrder:=1;
   cbTax.TabOrder:=2;
   cbCurrency.TabOrder:=3;
   edName.TabOrder:=4;
   edTaxReg.TabOrder:=5;
   edShortName.TabOrder:=6;
   edCRTerm.TabOrder:=7;
   edAddr1.TabOrder:=8;
   edAddr2.taborder:=9;
   edAddr3.tabOrder:=10;
   edProvince.TabOrder :=11;
   edPostCode.TabOrder:=12;
   edTel.TabOrder:=13;
   EDFAX.TabOrder:=14;
   edLocalName.TabOrder:=15;
   EDLADDR1.TABORDER:=16;
   edLAddr2.taborder:=17;
   edLAddr3.TabOrder:=18;
end;
begin
   ActiveControl := edAccountCode;
   setTabOrder;
end;



procedure TfrmDebtor.doSetupDataSet;
begin
  datasource.DataSet :=MasterSetupDM.tbArDebtor;
  dsDebtorTypeLookup.DataSet :=masterSetupDM.tbArDebtorType;
  dsCurrencyLookup.DataSet :=mastersetupDM.tbCurrency;
  dsTaxLookup.DataSet :=mastersetupdm.tbTax;
  dsTaxLookup.DataSet.Open;
  dsDebtorTypeLookup.DataSet.open;
  dsCurrencyLookup.DataSet.Open;
  datasource.DataSet.Open;

  //7 Dec,2012 define search table when press f1
  searchDialog.SearchTable := datasource.DataSet ;

end;

procedure TfrmDebtor.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  dsTaxLookup.DataSet.cLOSE;
  dsDebtorTypeLookup.DataSet.cLOSE;
  dsCurrencyLookup.DataSet.Close;
  DataSource.DataSet.Close;
  inherited;

end;

end.
