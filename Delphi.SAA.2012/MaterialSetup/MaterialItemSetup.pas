unit MaterialItemSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBSingleEntryForm, wwrcdvw, wwDialog, wwidlg,
  dxLayoutLookAndFeels, DB, ImgList, ExtCtrls, ComCtrls, ToolWin,
  fcStatusBar, cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox,
  cxPC, cxControls, StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, wwcheckbox, cxTextEdit, cxDBEdit,DialogUtils,
  cxSSheet, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmCXMaterialItemSetup = class(TfrmDBSingleEntry)
    lbHeader: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dsOnHand: TDataSource;
    cxTabSheet3: TcxTabSheet;
    dsDefaultElement: TDataSource;
    cxDBTextStockCD: TcxDBTextEdit;
    edShortDescs: TcxDBTextEdit;
    edENDescs: TcxDBTextEdit;
    edTHDescs: TcxDBTextEdit;
    Label11: TLabel;
    Label12: TLabel;
    edUnitCost: TcxDBTextEdit;
    edRecovery: TcxDBTextEdit;
    edMarkup: TcxDBTextEdit;
    cbUseDefault: TwwCheckBox;
    cbIsConsumItem: TwwCheckBox;
    cbGroup: TcxDBLookupComboBox;
    cbUom: TcxDBLookupComboBox;
    dsStockGroup: TDataSource;
    dsUom: TDataSource;
    cxGrid1DBTableView1LOT_CD: TcxGridDBColumn;
    cxGrid1DBTableView1UNIT_COST: TcxGridDBColumn;
    cxGrid1DBTableView1LAST_PURCHASE_PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1PURCHASE_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1ONHAND_QTY: TcxGridDBColumn;
    cxGrid1DBTableView1RESERVED_QTY: TcxGridDBColumn;
    cxGrid1DBTableView1STOCK_VALUE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL_COST: TcxGridDBColumn;
    cxGrid1DBTableView1REF_NO: TcxGridDBColumn;
    cxGrid1DBTableView1REF_DATE: TcxGridDBColumn;
    filterButton: TToolButton;
    ToolButton3: TToolButton;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    wwDBGrid1: TwwDBGrid;
    procedure cxPageControl1Change(Sender: TObject);
    procedure cbUseDefaultClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dataSourceDataChange(Sender: TObject; Field: TField);
    procedure filterButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure doSetupDataSet;override;
    procedure createElementTable;

  end;

var
  frmCXMaterialItemSetup: TfrmCXMaterialItemSetup;

implementation
uses  MasterSetupDataModule,BaseDBCXGridFilterForm;



procedure TfrmCXMaterialItemSetup.createElementTable;
var elementNo:integer;
begin
   with MasterSetupDM.tbICElement DO
   BEGIN
     OPEN;
     FIRST;
      dsDefaultElement.DataSet.oPEN;
     for elementNo:= 1 to MAX_COMPOSITION_CONTROL do
     begin
       dsDefaultElement.DataSet.FieldByName('ELE'+IntToStr(elementNo)+'_PERC').DisplayLabel   :=
       FieldByName('ELEMENT_CODE').AsString;
       next;

     end;

     close;
   END;


end;

procedure TfrmCXMaterialItemSetup.doSetupDataSet;
begin
  datasource.DataSet :=MasterSetupDM.tbMaterialItemHD;
  dsDefaultElement.DataSet := MasterSetupDM.tbMaterialDefaultElement;
  dsOnhand.DataSet := MasterSetupDM.tbMaterialStockOnhandDetail;
  dsDefaultElement.DataSet.open;
  dsOnhand.DataSet.open;
  cbGroup.Properties.ListSource.DataSet.open;
  cbUOM.Properties.ListSource.DataSet.open;
  createElementTable;
  

  {
   STOCK_CD                VARCHAR15 NOT NULL,
    EN_DESCS                VARCHAR150,
    TH_DESCS                VARCHAR150,
    SHORT_DESCS             VARCHAR45,
    ONHAND_QTY              FFLOAT NOT NULL,
    UNIT_COST               FFLOAT NOT NULL,
    TOTAL_COST              FFLOAT NOT NULL,
    UOM_CD                  VARCHAR4 NOT NULL,
    GROUP_ID                VARCHAR10 NOT NULL,
    RECOVERY                FFLOAT,
    MARKED_UP               FFLOAT,
    UPDATE_USER             VARCHAR10,
    UPDATE_DATE             TIMESTAMP,
    DEFAULT_ELEMENT_DETAIL  FLAG,
    CONSUMEABLE_ITEM        FLAG DEFAULT 'N'
  }
end;

{$R *.dfm}

procedure TfrmCXMaterialItemSetup.cxPageControl1Change(Sender: TObject);
begin
  inherited;

   // if (  dsDefaultElement.DataSet.RecordCount >0) then
     // createElementTable;


    case  cxPageControl1.ActivePageIndex of
       0:activedataset:=datasource.DataSet;
       2:activedataset:=dsDefaultElement.DataSet;
    end;
end;

procedure TfrmCXMaterialItemSetup.cbUseDefaultClick(Sender: TObject);
begin
   if (cbUseDefault.Checked) then
   begin
      if (dsDefaultElement.DataSet <> nil) then
     if (dsDefaultElement.DataSet.RecordCount =0) then
     begin
        if confirm('Default element has never been setup. Do want to set it now?')=mrYes then
        BEGIN
          cxPageControl1.ActivePageIndex :=2   ;
          info('Entering default value now');
          dsDefaultElement.DataSet.Insert;

        END;

     end
     else  cxPageControl1.ActivePageIndex :=2;
   end;
end;

procedure TfrmCXMaterialItemSetup.FormCreate(Sender: TObject);
begin
  inherited;
  cxPageControl1.ActivePageIndex:=0;
end;

procedure TfrmCXMaterialItemSetup.dataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  lbHeader.Caption := 'Active Record=' +datasource.DataSet.FieldByName('STOCK_CD').AsString+
  datasource.DataSet.FieldByName('EN_DESCS').AsString;

end;

procedure TfrmCXMaterialItemSetup.filterButtonClick(Sender: TObject);
begin
  inherited;
   frmCXGridFilterView := TfrmCXGridFilterView.create(self,'Material Item Filting view',datasource.DataSet);
   frmCXGridFilterView.ShowModal;
   dataSource.DataSet.Open;
   //dataSource.DataSet.Open;
end;

end.
