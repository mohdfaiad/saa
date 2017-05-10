unit PurchaseOrderBrowse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataBrowse, DB, StdCtrls, Buttons, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, fcStatusBar,PurchaseOrderDataModule,dialogutils,
  Menus, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid,SaleUIHelper;

type
  TfrmPurchaseOrderBrowse = class(TAbstractDataBrowseForm)
    cxGrid: TcxGrid;
    cxGridDBTableView: TcxGridDBTableView;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel: TcxGridLevel;
    cxGridLevel1: TcxGridLevel;
    dsOrderItem: TDataSource;
    cxGridDBTableViewORDER_NO: TcxGridDBColumn;
    cxGridDBTableViewORDER_DATE: TcxGridDBColumn;
    cxGridDBTableViewSUPP_CODE: TcxGridDBColumn;
    cxGridDBTableView1ITEM_CODE: TcxGridDBColumn;
    cxGridDBTableView1ITEM_DESCS: TcxGridDBColumn;
    cxGridDBTableView1UNIT_COST: TcxGridDBColumn;
    cxGridDBTableView1TOTAL_AMT: TcxGridDBColumn;
    cxGridDBTableView1QTY: TcxGridDBColumn;
    cxGridDBTableViewColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxGridDBTableViewDblClick(Sender: TObject);
    procedure cxGridDBTableViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
   procedure doNewAction(Sender:TObject); override;
    procedure doPostAction(Sender:TObject);override;
    procedure doDeleteAction(Sender:TObject);override;
    procedure doEditAction(sender:TObject);override;
    procedure setupdatasets; override  ;

  end;

var
  frmPurchaseOrderBrowse: TfrmPurchaseOrderBrowse;

implementation
uses purchaseorderform;


{$R *.dfm}

procedure TfrmPurchaseOrderBrowse.doNewAction(Sender:TObject);
begin
  frmPurchaseOrder := TfrmPurchaseOrder.create(self,datasource.DataSet.FieldByName('ORDER_NO').AsString
  ,'ORDER_NO',0);
  ArrangeUI(frmPurchaseOrder);
  frmPurchaseOrder.Show;
end;

procedure TfrmPurchaseOrderBrowse.doEditAction(sender:TObject);
begin
  frmPurchaseOrder := TfrmPurchaseOrder.create(self,datasource.DataSet.FieldByName('ORDER_NO').AsString
  ,'ORDER_NO',1);
   ArrangeUI(frmPurchaseOrder);
  frmPurchaseOrder.Show;
end;
procedure TfrmPurchaseOrderBrowse.doPostAction(Sender:TObject);
begin
   fsuccess := purchaseOrderDM.updatePurchaseOrderStatus(datasource.DataSet.FieldByName('order_no').AsString,
  datasource.dataset.fieldbyname('supp_code').AsString,  PURCHASE_APPROVED_STATE  ,
  datasource.dataset.fieldbyname('order_date').AsDateTime);

 if not (fsuccess) then
 begin
  errorex('Cound not approve purchase order'+datasource.DataSet.fieldbyname('order_no').AsString);
 end
end;
procedure TfrmPurchaseOrderBrowse.doDeleteAction(Sender:TObject);
begin
 //
end;

procedure TfrmPurchaseOrderBrowse.setupdatasets;
begin
   datasource.DataSet :=purchaseOrderDM.qryUnApprovePurchaseOrder;
   dsOrderItem.DataSet :=   PurchaseOrderDM.tbPurchaseOrderDTView;
   
   datasource.DataSet.open;
   dsOrderItem.DataSet.Open;

end;

procedure TfrmPurchaseOrderBrowse.FormCreate(Sender: TObject);
begin
  inherited;
  postbutton.Caption :='Approve';
end;

procedure TfrmPurchaseOrderBrowse.cxGridDBTableViewDblClick(
  Sender: TObject);
begin
  inherited;
  doEditAction(sender);
end;

procedure TfrmPurchaseOrderBrowse.cxGridDBTableViewCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
 //  cxGridDBTableView1.MasterGridView
end;

end.
