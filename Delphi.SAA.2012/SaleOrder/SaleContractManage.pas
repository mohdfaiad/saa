unit SaleContractManage;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, cxLookAndFeelPainters, Menus, cxTextEdit, cxDBEdit,
  cxButtons, cxControls, cxContainer, cxEdit, cxGroupBox,DialogUtils, DB,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmSaleContractDialog = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButtonOK: TcxButton;
    cxButtonCancel: TcxButton;
    cxDBTextEdit1: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    DataSource: TDataSource;
    cxButton1: TcxButton;
    cxGrid: TcxGrid;
    cxGridDBTableView: TcxGridDBTableView;
    cxGridLevel: TcxGridLevel;
    cxGridDBTableViewCUST_CODE: TcxGridDBColumn;
    cxGridDBTableViewCONTRACT_PERSON1: TcxGridDBColumn;
    cxGridDBTableViewCONTRACT_PERSON2: TcxGridDBColumn;
    cxGridDBTableViewLAST_USED_DOC_NO: TcxGridDBColumn;
    cxGridDBTableViewLAST_USED_DOC_DATE: TcxGridDBColumn;
    cxGridDBTableViewUPDATE_USER: TcxGridDBColumn;
    cxGridDBTableViewUPDATE_DATE: TcxGridDBColumn;
    cxButtonNew: TcxButton;
    procedure cxButtonOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButtonCancelClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButtonNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    docNo:sTRING;
    RefDataSet:TDataSet;
    docDate:TDateTime;
    { Public declarations }
  end;

var
  frmSaleContractDialog: TfrmSaleContractDialog;

implementation
uses saleOrderDataModule, Math;

{$R *.dfm}

procedure TfrmSaleContractDialog.cxButtonOKClick(Sender: TObject);
begin
  If Confirm('Are you want to save current information')=mrYes Then
  begin
     SaleOrderDataManager.SaveContract(refDataSet,docNo,docDate);
     datasource.DataSet.close;
  end;
end;

procedure TfrmSaleContractDialog.FormCreate(Sender: TObject);
begin
  datasource.DataSet := SaleOrderDataManager.tbContract;
  datasource.DataSet.open;
  datasource.DataSet.Insert;
end;

procedure TfrmSaleContractDialog.cxButtonCancelClick(Sender: TObject);
begin
 datasource.DataSet.Close;
end;

procedure TfrmSaleContractDialog.cxButton1Click(Sender: TObject);
begin
 If Confirm('Are you want to Delete current information')=mrYes Then
  begin
     datasource.DataSet.Delete;
     //datasource.DataSet.close;
  end;

end;

procedure TfrmSaleContractDialog.cxButtonNewClick(Sender: TObject);
begin
  datasource.dataset.insert;
end;

end.
