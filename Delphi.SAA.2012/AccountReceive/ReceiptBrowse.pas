unit ReceiptBrowse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataBrowse, DB, StdCtrls, Buttons, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, fcStatusBar,dialogutils, Menus;

type
  TReceiptBrowseForm = class(TAbstractDataBrowseForm)
  private
    { Private declarations }
  public
    { Public declarations }

    procedure doEditAction(Sender:TObject);override;
    procedure doNewAction(Sender:TObject); override;
    procedure doPostAction(Sender:TObject);override;
    procedure doDeleteAction(Sender:TObject);override;
    procedure setupDataSet;
  end;

var
  ReceiptBrowseForm: TReceiptBrowseForm;

implementation
uses AccountReceiveDataModule,receiptEntry,runtimecontroller;

{$R *.dfm}


procedure TReceiptBrowseForm.setupDataSet;
begin
  datasource.dataset:=  AccountReceiveDM.qryUnpostReceipt;
end;


procedure TReceiptBrowseForm.doEditAction(Sender:TObject);
begin
  ReceiptForm := TReceiptForm.create(SELF,fSelectedObject,'DOC_NO',1);
  ReceiptForm.ShowModal;
  ReceiptForm.Free;
  self.Handle
 //
end;
procedure TReceiptBrowseForm.doNewAction(Sender:TObject);
begin
   ReceiptForm := TReceiptForm.create(SELF,fSelectedObject,'DOC_NO',0);
  ReceiptForm.ShowModal;
  ReceiptForm.Free;
   doRefreshAction(sender);
end;
procedure TReceiptBrowseForm.doPostAction(Sender:TObject);

begin
   with datasource.DataSet do
   begin
   fsuccess :=  AccountReceiveDM.postarreceipt(fieldbyname('doc_no').asstring,
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
procedure TReceiptBrowseForm.doDeleteAction(Sender:TObject);
begin
//
end;


end.
