unit SaleOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseCXMasterDetail, ImgList, DB, Grids, Wwdbigrd, Wwdbgrid,
  fcStatusBar, ComCtrls, ToolWin, ExtCtrls, StdCtrls,DialogUtils,
  cxLookAndFeelPainters, cxGraphics, cxMemo, cxDBEdit, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  wwdblook, Wwdbdlg, cxTextEdit, DBCtrls, cxControls, cxContainer, cxEdit,
  cxGroupBox;

type
  TfrmCXSaleOrder = class(TBaseCXUIMasterDetailForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    cxGroupBox1: TcxGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    dlgCustomer: TwwDBLookupComboDlg;
    cxGroupBox2: TcxGroupBox;
    cbFaxTo: TcxDBLookupComboBox;
    cbCCTO: TcxDBLookupComboBox;
    edDocNo: TcxDBTextEdit;
    edDocDate: TcxDBDateEdit;
    edRefNo: TcxDBTextEdit;
    edRefDate: TcxDBDateEdit;
    cxGroupBox3: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    dlgItemLookup: TwwDBLookupComboDlg;
    wwMemoDialog1: TwwMemoDialog;
    dsFax: TDataSource;
    dsAttend: TDataSource;
    procedure wwDBGrid1ColEnter(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGroupBox2DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure setupDataSets;override;
  end;

var
  frmCXSaleOrder: TfrmCXSaleOrder;

implementation
uses SaleOrderDataModule,SaleContractManage;





{$R *.dfm}

procedure TfrmCXSaleOrder.setupDataSets;
begin
  dsMaster.DataSet := SaleOrderDataManager.tbSaleOrderHD;
  dsDetail.DataSet := SaleOrderDataManager.tbSaleOrderDT;


   SaleOrderDataManager.tbContract.MasterSource :=  SaleOrderDataManager.dsSaleOrderHD;
   SaleOrderDataManager.tbContract.IndexFieldNames :='CUST_CODE';
   SaleOrderDataManager.tbContract.MasterFields:='CUST_CODE';
   cbCCTO.Properties.ListSource.DataSet := SaleOrderDataManager.tbContract;
   cbCCTO.Properties.ListSource.DataSet.Open;
   cbFaxTo.Properties.ListSource.DataSet := SaleOrderDataManager.tbContract;
   dlgItemLookup.LookupTable:=SaleOrderDataManager.tbSaleItemLookup;
   dlgItemLookup.LookupTable.Open;
   dlgCustomer.LookupTable := SaleOrderDataManager.tbCustomerLookup;
   dlgCustomer.LookupTable.Open;
   SaleOrderDataManager.tbComponentDetailLookup.MasterSource:=   SaleOrderDataManager.dsSaleOrderDT;
   SaleOrderDataManager.tbComponentDetailLookup.IndexFieldNames:='CUST_CODE;ITEM_CODE';
   SaleOrderDataManager.tbComponentDetailLookup.MasterFields:='CUST_CODE;ITEM_CODE';
   SaleOrderDataManager.tbComponentDetailLookup.open;

end;

procedure TfrmCXSaleOrder.wwDBGrid1ColEnter(Sender: TObject);
begin
  inherited;
 inherited;
if (wwDBGrid1.GetActiveField.FieldName='REMARKS') then
               wwMemoDialog1.Execute;
if (wwDBGrid1.GetActiveField.FieldName='ITEM_CODE') then
               dlgItemLookup.DropDown;
end;

procedure TfrmCXSaleOrder.wwDBGrid1UpdateFooter(Sender: TObject);
var specDetail:String;
begin
  inherited;
  inherited;
 if ( SaleOrderDataManager.tbComponentDetailLookup.RecordCount =0) then
 begin
   SpecDetail:=  'No Requirement has been setup';
   statusBar1.Panels[2].Text :=SpecDetail

 end
 else begin
 try
   try
    SaleOrderDataManager.UpdateComponentDetail(dtsDetail.FieldByName('cust_code').AsString,
    dtsDetail.FieldByName('Item_Code').AsString);
   except on e:exception do
     errorex('update sale component detail'+e.Message);
   end;
    SpecDetail:=
    SaleOrderDataManager.tbComponentDetailLookup.FieldByName('LINE1').AsString+
    SaleOrderDataManager.tbComponentDetailLookup.FieldByName('LINE2').AsString+
    SaleOrderDataManager.tbComponentDetailLookup.FieldByName('LINE3').AsString ;///
 // wwDBGrid1.ColumnByName('ITEM_DESCS').FooterValue:=
    statusBar1.Panels[2].Text :=  SpecDetail;
    SaleOrderDataManager.updateOrderSummary(
    dtsDetail.FieldByName('cust_code').AsString,
    dtsDetail.FieldByName('order_no').AsString);
    wwDBGrid1.ColumnByName('Item_descs').FooterValue:='Grand Total:';
    wwDBGrid1.ColumnByName('BASE_AMT').FooterValue:= FormatFloat('#,00#,00',
    SaleOrderDataManager.qryOrderSummary.FieldByName('BASE_AMT').aSfLOAT );
    wwDBGrid1.ColumnByName('total_AMT').FooterValue:= FormatFloat('#,00#,00',
    SaleOrderDataManager.qryOrderSummary.FieldByName('total_AMT').aSfLOAT );
    except on e:exception do
      errorEx(e.Message);
    end;

end;
end;

procedure TfrmCXSaleOrder.FormCreate(Sender: TObject);
begin
  inherited;
  ActiveControl :=edDocNo;
end;

procedure TfrmCXSaleOrder.cxGroupBox2DblClick(Sender: TObject);
begin
 inherited;
   if (frmSaleContractDialog =nil) then
   begin
       frmSaleContractDialog :=TfrmSaleContractDialog.Create(self);
      // frmSaleContractDialog.
       frmSaleContractDialog.docNo :=dsMaster.DataSet.FieldByName('ORDER_NO').AsString;
       frmSaleContractDialog.docDate :=dsMaster.DataSet.FieldByName('ORDER_DATE').AsDateTime;
       frmSaleContractDialog.RefDataSet :=dsMaster.DataSet;
       frmSaleContractDialog.ShowModal;
       SaleOrderDataManager.refreshContract;
   end
   else
   begin
     frmSaleContractDialog.docNo :=dsMaster.DataSet.FieldByName('ORDER_NO').AsString;
     frmSaleContractDialog.docDate :=dsMaster.DataSet.FieldByName('ORDER_DATE').AsDateTime;
     frmSaleContractDialog.RefDataSet :=dsMaster.DataSet;
     frmSaleContractDialog.ShowModal;
     SaleOrderDataManager.refreshContract;
   end;

end;

procedure TfrmCXSaleOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 SaleDocumentType:=TYPE_ORDER;
 SaleOrderDataManager.refreshNoneApproveSaleDocument(SaleDocumentType);
  inherited;

end;

end.
