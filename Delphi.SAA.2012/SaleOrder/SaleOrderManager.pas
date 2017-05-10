unit SaleOrderManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractcxDataBrowse, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxBar, Menus,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, fcStatusBar,
  DBGrids,DialogUtils;

type
  TfrmCXSaleOrderManager = class(TcxAbstractDataBrowse)
    cxGridDBTableViewCUST_CODE: TcxGridDBColumn;
    cxGridDBTableViewORDER_NO: TcxGridDBColumn;
    cxGridDBTableViewORDER_DATE: TcxGridDBColumn;
    cxGridDBTableViewREF_NO: TcxGridDBColumn;
    cxGridDBTableViewREF_DATE: TcxGridDBColumn;
    cxGridDBTableViewREMARKS: TcxGridDBColumn;
    cxGridDBTableViewFAX_TO: TcxGridDBColumn;
    cxGridDBTableViewCC_TO: TcxGridDBColumn;
    cxGridDBTableViewNAME: TcxGridDBColumn;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1ITEM_CODE: TcxGridDBColumn;
    cxGridDBTableView1ITEM_DESCS: TcxGridDBColumn;
    cxGridDBTableView1UNIT_COST: TcxGridDBColumn;
    cxGridDBTableView1QTY: TcxGridDBColumn;
    cxGridDBTableView1TOTAL_AMT: TcxGridDBColumn;
    cxGridDBTableView1TAX_AMT: TcxGridDBColumn;
    cxGridDBTableView1REMARKS: TcxGridDBColumn;
    dsOrderItem: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure doPostAction(Sender: TObject);override;
    procedure doNewAction(Sender: TObject);override;
    procedure doEditAction(Sender: TObject);override;
    procedure doDeleteAction(sender:TObject);override;
    procedure doExitAction(Sender: TObject);override;
    procedure doRefreshAction(Sender: TObject);override;
    procedure setupDataSets;override;
    procedure InitComponents;
  end;

var
  frmCXSaleOrderManager: TfrmCXSaleOrderManager;

implementation
uses SaleOrderDataModule,saleOrder;

{$R *.dfm}


procedure TfrmCXSaleOrderManager.InitComponents;
begin
  inherited;
  postAction.Caption :='Approve';
end;

procedure TfrmCXSaleOrderManager.doPostAction(Sender: TObject);
Var docType:TSaleOrderDocumentType;begin
  IF (dsOrderItem.DataSet.RecordCount >0) then
  begin
  with datasource.DataSet do
  begin
      docType:=TYPE_ORDER;
      fsuccess :=SaleOrderDataManager.UpdateSaleDocumentStatus(
      FieldByName('cust_code').AsString,
      FieldByName('order_no').AsString,
      FormatDateTime('mm/dd/yyyy',FieldByName('ORDER_date').AsDateTime) ,
      docType,
      'A');

      doRefreshAction(sender);
  end;
  end else
  begin
     warning('Could not approve Sale order when detail record is empty');
  end;
end;
procedure TfrmCXSaleOrderManager.doNewAction(Sender: TObject);
begin
//
  frmCXSaleOrder:= TfrmCXSaleOrder.create(self,fSelectedObject,'ORDER_NO',0);
  frmCXSaleOrder.FormStyle :=fsMdiChild;
  frmCXSaleOrder.Top :=0;
  frmCXSaleOrder.Left :=0;
  frmCXSaleOrder.Show;

end;
procedure TfrmCXSaleOrderManager.doEditAction(Sender: TObject);
begin
  fSelectedObject := datasource.DataSet.FieldByName('order_no').AsString;
  frmCXSaleOrder := TfrmCXSaleOrder.create(self,fSelectedObject,'order_NO',1);
  frmCXSaleOrder.FormStyle :=fsMdiChild;
  frmCXSaleOrder.Top :=0;
  frmCXSaleOrder.Left :=0;
  frmCXSaleOrder.Show;
//
end;
procedure TfrmCXSaleOrderManager.doDeleteAction(sender:TObject);
begin
 //
end;
procedure TfrmCXSaleOrderManager.doExitAction(Sender: TObject);
begin
  CLOSE;
end;
procedure TfrmCXSaleOrderManager.doRefreshAction(Sender: TObject);
begin
 datasource.dataset.close;
 datasource.dataset.Open;
end;

procedure TfrmCXSaleOrderManager.setupdatasets;
begin
  datasource.dataset :=SaleOrderDataManager.qryUnApproveOrder;
  dsOrderItem.DataSet :=   SaleOrderDataManager.tbSaleOrderDTView;
end;



procedure TfrmCXSaleOrderManager.FormCreate(Sender: TObject);
begin
  inherited;
  if (datasource.dataset <> nil) then
       datasource.dataset.Open;
   if (dsOrderItem.DataSet <> nil) then dsOrderItem.DataSet.open;
end;

end.
