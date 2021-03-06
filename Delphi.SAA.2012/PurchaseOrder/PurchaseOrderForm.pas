unit PurchaseOrderForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMasterDetail, DB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  fcStatusBar, StdCtrls, ComCtrls, wwriched, wwdblook, Wwdbdlg,
  wwdbdatetimepicker, Mask, wwdbedit, wwSpeedButton, wwDBNavigator,
  wwclearpanel, DBCtrls, cxGraphics, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLookAndFeelPainters, cxGroupBox;

type
  TfrmPurchaseOrder = class(TBaseUIMasterDetailForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    Panel2: TPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwDBNavigator2First: TwwNavButton;
    wwDBNavigator2PriorPage: TwwNavButton;
    wwDBNavigator2Prior: TwwNavButton;
    wwDBNavigator2Next: TwwNavButton;
    wwDBNavigator2NextPage: TwwNavButton;
    wwDBNavigator2Last: TwwNavButton;
    wwDBNavigator2Insert: TwwNavButton;
    wwDBNavigator2Delete: TwwNavButton;
    wwDBNavigator2Edit: TwwNavButton;
    wwDBNavigator2Post: TwwNavButton;
    wwDBNavigator2Cancel: TwwNavButton;
    wwDBNavigator2Refresh: TwwNavButton;
    wwDBNavigator2SaveBookmark: TwwNavButton;
    wwDBNavigator2RestoreBookmark: TwwNavButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel3: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBEdit2: TwwDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBRichEdit1: TwwDBRichEdit;
    dsPurchaseSummary: TDataSource;
    Bevel1: TBevel;
    DBText1: TDBText;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    dlgOrderItem: TwwDBLookupComboDlg;
    dlgDiscount: TwwDBLookupComboDlg;
    cxGroupBox2: TcxGroupBox;
    CBFAXTO: TcxDBLookupComboBox;
    CBCCTO: TcxDBLookupComboBox;
    dsFax: TDataSource;
    dsAttend: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure cxGroupBox2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPurchaseOrder: TfrmPurchaseOrder;

implementation
uses    PurchaseOrderDataModule,PurchaseOrderContractForm;

{$R *.dfm}

procedure TfrmPurchaseOrder.FormCreate(Sender: TObject);
begin
  inherited;

   PurchaseOrderDM.tbContract.MasterSource :=  PurchaseOrderDM.dsPurchaseOrderHD;
   PurchaseOrderDM.tbContract.IndexFieldNames :='SUPP_CODE';
   PurchaseOrderDM.tbContract.MasterFields:='SUPP_CODE';
   cbCCTO.Properties.ListSource.DataSet := PurchaseOrderDM.tbContract;
   cbCCTO.Properties.ListSource.DataSet.Open;
   cbFaxTo.Properties.ListSource.DataSet := PurchaseOrderDM.tbContract;
   dsMaster.DataSet :=  PurchaseOrderDM.tbPurchaseOrderHeader;
    dsDetail.DataSet :=  PurchaseOrderDM.tbPurchaseOrderDetail;
  ActiveControl :=wwDBEdit1;
end;

procedure TfrmPurchaseOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  PurchaseOrderDM.refreshOrder;
  inherited;

end;

procedure TfrmPurchaseOrder.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  inherited;
  wwDBGrid1.ColumnByName('ITEM_DESCS').FooterValue :=
   dsDetail.DataSet.FieldByName('remarks').asstring;



end;

procedure TfrmPurchaseOrder.cxGroupBox2DblClick(Sender: TObject);
begin

 inherited;
   if (frmPurchaseContractDialog =nil) then
   begin
       frmPurchaseContractDialog :=TfrmPurchaseContractDialog.Create(self);
      // frmSaleContractDialog.
       frmPurchaseContractDialog.docNo :=dsMaster.DataSet.FieldByName('ORDER_NO').AsString;
       frmPurchaseContractDialog.docDate :=dsMaster.DataSet.FieldByName('ORDER_DATE').AsDateTime;
       frmPurchaseContractDialog.RefDataSet :=dsMaster.DataSet;
       frmPurchaseContractDialog.ShowModal;
       PurchaseOrderDM.refreshContract;
   end
   else
   begin
     frmPurchaseContractDialog.docNo :=dsMaster.DataSet.FieldByName('ORDER_NO').AsString;
     frmPurchaseContractDialog.docDate :=dsMaster.DataSet.FieldByName('ORDER_DATE').AsDateTime;
     frmPurchaseContractDialog.RefDataSet :=dsMaster.DataSet;
     frmPurchaseContractDialog.ShowModal;
     PurchaseOrderDM.refreshContract;
   end;
end;

end.
