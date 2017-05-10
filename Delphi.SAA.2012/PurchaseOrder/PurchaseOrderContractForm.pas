unit PurchaseOrderContractForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SaleContractManage, cxLookAndFeelPainters, Menus, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxDBEdit, cxContainer, cxGroupBox,DIALOGUTILS;

type
  TfrmPurchaseContractDialog = class(TfrmSaleContractDialog)
    procedure FormCreate(Sender: TObject);
    procedure cxButtonOKClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPurchaseContractDialog: TfrmPurchaseContractDialog;

implementation
uses purchaseorderDataModule,math;

{$R *.dfm}

procedure TfrmPurchaseContractDialog.FormCreate(Sender: TObject);
begin
  datasource.DataSet := PurchaseOrderDM.tbContract;
  datasource.DataSet.open;
 // datasource.DataSet.Insert;

end;

procedure TfrmPurchaseContractDialog.cxButtonOKClick(Sender: TObject);
begin
  If Confirm('Are you want to save current information')=mrYes Then
  begin
     PurchaseOrderDM.SaveContract(refDataSet,docNo,docDate);
     datasource.DataSet.close;
  end

end;

procedure TfrmPurchaseContractDialog.cxButton1Click(Sender: TObject);
begin
 If Confirm('Are you want to Delete current information')=mrYes Then
  begin
     datasource.DataSet.Delete;
     //datasource.DataSet.close;
  end;

end;

end.
