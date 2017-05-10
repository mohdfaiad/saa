unit InvoiceLineEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, DB, ComCtrls, ImgList, ToolWin, wwrcdpnl, fcStatusBar,dialogutils,
  StdCtrls, Mask, wwdbedit, DBCtrls;

type
  TInvoiceLineEditForm = class(TBaseUIForm)
    wwRecordViewPanel1: TwwRecordViewPanel;
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    ToolButton4: TToolButton;
    dataSource: TDataSource;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setBarInfo(infoText:string);
    constructor create(AOwner:TComponent;dataSet:TDataset);overload;
  end;

var
  InvoiceLineEditForm: TInvoiceLineEditForm;

implementation
USES AccountReceiveDataModule;

{$R *.dfm}

constructor TInvoiceLineEditForm.create(AOwner:TComponent;dataSet:TDataset);
begin
  inherited create(AOwner);
  datasource.dataset:= dataset;
  dataset.active:=true;
end;

procedure TInvoiceLineEditForm.ToolButton4Click(Sender: TObject);
begin
  inherited;
 if (datasource.DataSet.State in [dsEdit]) then
 BEGIN

    datasource.dataset.Post;
 END
end;

procedure TInvoiceLineEditForm.ToolButton3Click(Sender: TObject);
begin
  showSystemCalculator(self);

end;
procedure TInvoiceLineEditForm.setBarInfo(infoText:string);
begin
 statusbar1.Panels[0].Text:='Editing.['+infoText+']';
end;
procedure TInvoiceLineEditForm.ToolButton1Click(Sender: TObject);
begin
  inherited;
  ToolButton4Click(sender);
  close;
end;

end.
