unit SaleOrderRevision;

{
25 June,2010 Don know why could not update data through data aware control.
with tbRevisionDT.NEW_ORDER_FLAG data always revers to blank

}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseCXMasterDetail, ImgList, DB, Grids, Wwdbigrd, Wwdbgrid,
  fcStatusBar, ComCtrls, ToolWin, ExtCtrls, StdCtrls,
  cxLookAndFeelPainters, cxGroupBox, cxMemo, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxSplitter,
  cxCheckBox,DialogUtils, DBGrids, Menus, cxButtons, cxSpinEdit;

type
  TfrmCXSaleOrderRevision = class(TBaseCXUIMasterDetailForm)
    Bevel1: TBevel;
    Label1: TLabel;
    EDDocNo: TcxDBTextEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    Label5: TLabel;
    Label6: TLabel;
    dsDelivery: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1SCHEDULE_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1SCHEDULE_QTY: TcxGridDBColumn;
    cxGrid1DBTableView1REMARKS: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox4: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cxGridDBTableView1ORDER_NO: TcxGridDBColumn;
    cxGridDBTableView1ORDER_DATE: TcxGridDBColumn;
    cxGridDBTableView1ITEM_CODE: TcxGridDBColumn;
    cxGridDBTableView1CUST_CODE: TcxGridDBColumn;
    cxGridDBTableView1UOM: TcxGridDBColumn;
    cxGridDBTableView1UNIT_COST: TcxGridDBColumn;
    cxGridDBTableView1TOTAL_AMT: TcxGridDBColumn;
    cxGridDBTableView1QTY: TcxGridDBColumn;
    cxGridDBTableView1REMARKS: TcxGridDBColumn;
    cxGridDBTableView1LINE_NO: TcxGridDBColumn;
    createDetail: TToolButton;
    ToolButton4: TToolButton;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure createDetailClick(Sender: TObject);
    procedure cxGrid2Enter(Sender: TObject);
    procedure cxGrid1Enter(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGridDBTableView1Column1GetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
      var AText: String);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setupDataSets;override;
  end;

var
  frmCXSaleOrderRevision: TfrmCXSaleOrderRevision;

implementation
uses SaleOrderDataModule, BaseMasterDetail;


procedure TfrmCXSaleOrderRevision.setupDataSets;
begin
   dsMaster.DataSet :=SaleOrderDataManager.tbRevisionHD;
   dsDetail.DataSet :=SaleOrderDataManager.tbRevisionDT;
   dsDelivery.DataSet := SaleOrderDataManager.tbRevisionSchedule;
   dsDelivery.DataSet.Open;
end;

{$R *.dfm}

procedure TfrmCXSaleOrderRevision.FormCreate(Sender: TObject);
begin
  inherited;
  activeControl :=edDOCNO;

end;

procedure TfrmCXSaleOrderRevision.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dsDelivery.DataSet.CLOSE;
  SaleDocumentType:=TYPE_REVISION;
  SaleOrderDataManager.refreshNoneApproveSaleDocument(SaleDocumentType);
  inherited;

end;

procedure TfrmCXSaleOrderRevision.createDetailClick(Sender: TObject);
begin
  if confirm('Please confirm?')=mrYes then
  begin
     SaleOrderDataManager.createNewSaleOrderRevisionDetail(dtsMaster);
     dsDetail.DataSet.close;
     dsDetail.DataSet.open;
  end;
end;

procedure TfrmCXSaleOrderRevision.cxGrid2Enter(Sender: TObject);
begin
   ActiveDataSet := dsDetail.DataSet;

end;

procedure TfrmCXSaleOrderRevision.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  activeDatasET:= dsDELIVERY.DataSet;
end;

procedure TfrmCXSaleOrderRevision.cxButton1Click(Sender: TObject);
begin
  inherited;
  SaleDocumentType:=type_revision;
  SaleOrderDataManager.UpdateSaleDocumentStatus('',
  dsMaster.DataSet.FieldByName('doc_no').asstring,
  dateToStr(dsMaster.DataSet.FieldByName('doc_date').asDateTime),
  SaleDocumentType,
  'X' );
end;

procedure TfrmCXSaleOrderRevision.cxGridDBTableView1Column1GetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
  var AText: String);
begin
  inherited;
  showmessage('update new order status='+atext);
end;

end.
