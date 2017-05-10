unit InvoiceBrowse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataBrowse, DB, StdCtrls, Buttons, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, fcStatusBar,dialogutils, Menus;

type
  TInvoiceBrowseForm = class(TAbstractDataBrowseForm)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure doEditAction(Sender:TObject);override;
    procedure doNewAction(Sender:TObject); override;
    procedure doPostAction(Sender:TObject);override;
    procedure doDeleteAction(Sender:TObject);override;
    procedure setupDataSets;  override;
  end;

var
  InvoiceBrowseForm: TInvoiceBrowseForm;

implementation
uses AccountReceiveDataModule,invoiceEntry,runtimecontroller;

{$R *.dfm}
procedure TInvoiceBrowseForm.setupDataSets;
begin
  datasource.dataset:=  AccountReceiveDM.qryUnpostInvoice;
end;


procedure TInvoiceBrowseForm.doEditAction(Sender:TObject);
begin
  InvoiceForm := TInvoiceForm.create(SELF,fSelectedObject,'DOC_NO',1);
  InvoiceForm.ShowModal;
  InvoiceForm.Free;
  self.Handle
 //
end;
procedure TInvoiceBrowseForm.doNewAction(Sender:TObject);
begin
  InvoiceForm := TInvoiceForm.create(SELF,fSelectedObject,'DOC_NO',0);
  InvoiceForm.ShowModal;
  InvoiceForm.Free;
  doRefreshAction(sender);
end;
procedure TInvoiceBrowseForm.doPostAction(Sender:TObject);

begin
   with datasource.DataSet do
   begin
   fsuccess :=  AccountReceiveDM.postArInvoice(fieldbyname('doc_no').asstring,
   fieldbyname('doc_date').asDateTime,
   fieldbyname('debtor_acct').asstring);

    if (fsuccess) then
    BEGIN
     info('successful posted '+vartostr(fSelectedObject)+' Press F5 TO refresh window') ;
     RController.commit;
    END
  else
    warning('failed to post '+vartostr(fSelectedObject));
 end;
end;
procedure TInvoiceBrowseForm.doDeleteAction(Sender:TObject);
begin
//
end;

end.
