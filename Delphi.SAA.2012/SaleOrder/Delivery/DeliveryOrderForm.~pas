unit DeliveryOrderForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseCXMasterDetail, ImgList, DB, Grids, Wwdbigrd, Wwdbgrid,
  fcStatusBar, ComCtrls, ToolWin, ExtCtrls, StdCtrls, cxMemo, cxDBEdit,
  wwdblook, Wwdbdlg, cxMaskEdit, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TfrmDeliveryOrder = class(TBaseCXUIMasterDetailForm)
    cxDBTextEdit1: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBMemo1: TcxDBMemo;
    tbWizard: TToolButton;
    ToolButton4: TToolButton;
    cxGridAll: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1BUNDLE_NO: TcxGridDBColumn;
    cxGridDBTableView1ORDER_NO: TcxGridDBColumn;
    cxGridDBTableView1ORDER_DATE: TcxGridDBColumn;
    cxGridDBTableView1ITEM_CODE: TcxGridDBColumn;
    cxGridDBTableView1DESCS: TcxGridDBColumn;
    cxGridDBTableView1UOM: TcxGridDBColumn;
    cxGridDBTableView1MELT_NO: TcxGridDBColumn;
    cxGridDBTableView1REF_NO: TcxGridDBColumn;
    cxGridDBTableView1REF_DATE: TcxGridDBColumn;
    cxGridDBTableView1DET_QTY: TcxGridDBColumn;
    cxGridDBTableView1UNIT_COST: TcxGridDBColumn;
    cxGridDBTableView1TOTAL_AMT: TcxGridDBColumn;
    cxGridDBTableView1DELIVERY_NO: TcxGridDBColumn;
    cxGridDBTableView1DELIVERY_DATE: TcxGridDBColumn;
    cxGridDBTableView1CUST_CODE: TcxGridDBColumn;
    cxGridDBTableView1TAX_AMT: TcxGridDBColumn;
    cxGridDBTableView1TAX_CD: TcxGridDBColumn;
    cxGridDBTableView1ORDER_QTY: TcxGridDBColumn;
    cxGridDBTableView1ONHAND_QTY: TcxGridDBColumn;
    cxGridDBTableView1MARK_UP: TcxGridDBColumn;
    cxGridDBTableView1MARK_UP_QTY: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure tbWizardClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxDBTextEdit1Enter(Sender: TObject);
    procedure cxGridAllEnter(Sender: TObject);
    procedure tbRefreshClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGridDBTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDeliveryOrder: TfrmDeliveryOrder;

implementation


uses SaleOrderDataModule,DELIVERYoRDERwIZARDForm, BaseMasterDetail;

{$R *.dfm}

procedure TfrmDeliveryOrder.FormCreate(Sender: TObject);
begin
  dsMaster.DataSet := SaleOrderDataManager.tbDeliveryHD;
  dsDetail.DataSet :=   SaleOrderDataManager.tbDeliveryDT;
  inherited;
  activedataset := dsMaster.DataSet;
  activeControl := cxDBTextEdit1;
end;

procedure TfrmDeliveryOrder.wwDBGrid1DblClick(Sender: TObject);
begin
     frmDeliveryOrderWizard := TfrmDeliveryOrderWizard.Create(SELF,dsMaster.dataset,'');
     frmDeliveryOrderWizard.ShowModal;
     cxGridAll.Refresh;

end;

procedure TfrmDeliveryOrder.wwDBGrid1Enter(Sender: TObject);
begin
  dtsDetail.Open;
  inherited;

end;

procedure TfrmDeliveryOrder.tbWizardClick(Sender: TObject);
begin
//trigger griddbclick
 wwDBGrid1DblClick(sender);
 

end;

procedure TfrmDeliveryOrder.cxGridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
    wwDBGrid1DblClick(sender);
end;

procedure TfrmDeliveryOrder.cxDBTextEdit1Enter(Sender: TObject);
begin
  inherited;
   ActiveDataSet := dtsMaster;
end;

procedure TfrmDeliveryOrder.cxGridAllEnter(Sender: TObject);
begin
  inherited;
    ActiveDataSet := dtsDetail;
    dtsDetail.Close;
    dtsDetail.Open;
    dtsDetail.Refresh;
end;

procedure TfrmDeliveryOrder.tbRefreshClick(Sender: TObject);
begin
  inherited;
   ActiveDataSet.close;
   activedataset.open;
end;

procedure TfrmDeliveryOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   SaleOrderDataManager.qryUnapproveDelivery.Close;
   SaleOrderDataManager.qryUnapproveDelivery.Open;
  inherited;

end;

procedure TfrmDeliveryOrder.cxGridDBTableView1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   ActiveDataSet := dtsDetail;
    dtsDetail.Close;
    dtsDetail.Open;
    dtsDetail.Refresh;

end;

end.
