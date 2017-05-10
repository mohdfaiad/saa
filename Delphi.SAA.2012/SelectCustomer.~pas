unit SelectCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, DB, Grids, Wwdbigrd, Wwdbgrid, fcStatusBar, StdCtrls,
  ExtCtrls,IBTABLE;

type
  TSelectSupplierForm = class(TBaseUIForm)
    wwDBGrid1: TwwDBGrid;
    dataSource: TDataSource;
    Panel1: TPanel;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function getSelectedSupplier:string;
  end;

var
  SelectSupplierForm: TSelectSupplierForm;

implementation
uses StockEnquiryDM;

{$R *.dfm}




procedure TSelectSupplierForm.FormCreate(Sender: TObject);
begin
  inherited;
  datasource.dataset.Open;
end;

function    TSelectSupplierForm.getSelectedSupplier:string;
begin
   result:=datasource.dataset.fieldbyname('NAME').AsString;
end;

procedure TSelectSupplierForm.wwDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TSelectSupplierForm.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF (KEY =#13) THEN
    CLOSE;
end;

procedure TSelectSupplierForm.Edit1Change(Sender: TObject);
begin
  if (edit1.Text<>'') then
  begin
    TIBTable(dataSource.DataSet).Locate('Name', VarArrayOf([edit1.Text]), [loPartialKey]);
    wwDBGrid1.SelectRecord;
  end;

end;

end.
