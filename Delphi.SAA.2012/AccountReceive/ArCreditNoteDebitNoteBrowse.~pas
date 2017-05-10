unit ArCreditNoteDebitNoteBrowse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataBrowse, Menus, DB, StdCtrls, Buttons, ExtCtrls,
  Grids, Wwdbigrd, Wwdbgrid, fcStatusBar, wwSpeedButton, wwDBNavigator,
  wwclearpanel, DBGrids,dialogutils;
//type ARMODE = enum[CREDIT,DEBIT];
type
  TfrmCreditDebitNoteShareBrowse = class(TAbstractDataBrowseForm)
    btnDelete: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  protected
    {**open with credit or debit*}
    drcrMode:String;
  public
    procedure doPostAction(Sender: TObject);override;
    procedure doNewAction(Sender: TObject);override;
    procedure doEditAction(Sender: TObject);override;
    procedure doDeleteAction(sender:TObject);override;
    procedure setupdatasets;override;
    constructor create(Aowner:TComponent;keyColumn,Mode:String);overload;
  end;

var
  frmCreditDebitNoteShareBrowse: TfrmCreditDebitNoteShareBrowse;

implementation
uses AccountReceiveDataModule,ARCreditDebitNoteEntry,DebitNoteEntry,TestForm,CreditNoteEntry;

{$R *.dfm}



constructor TfrmCreditDebitNoteShareBrowse.create(Aowner:TComponent;keyColumn,Mode:String);
BEGIN
    inherited create(Aowner,keyColumn);
    drcrMode :=Mode;
    setupdatasets;
    if (drcrMode ='CR') then
    begin
        caption :='Credit Note'  ;
       // datasource.DataSet.Close;
        dataSource.DataSet.Filter:='MODE='+QuotedStr('C');
        dataSource.DataSet.Filtered := true   ;
        caption :=caption + dataSource.DataSet.Filter;
        datasource.DataSet.close;
        datasource.dataset.open;
    end else
    if (drcrMode ='DR') then
    begin
      caption :='Debit Note'  ;
     // datasource.DataSet.Close;
        dataSource.DataSet.Filter:='MODE='+QuotedStr('D');
        dataSource.DataSet.Filtered := true;
        datasource.DataSet.close;
        datasource.dataset.open;

    end;


END;



procedure TfrmCreditDebitNoteShareBrowse.doPostAction(Sender: TObject);
begin
//
   fsuccess :=AccountReceiveDM.postCreditNote(datasource.DataSet.FieldByName('debtor_acct').AsString,
   datasource.dataset.fieldbyname('doc_no').AsString,
   datasource.dataset.fieldbyname('trx_type').AsString, //17 nov,2010 use trxtype to indicate transaction
   datasource.DataSet.FieldByName('doc_date').asDateTime);
   if not(fsuccess) then
   begin
      errorEx('Could not post transaction please contract system administrator');
   end;
end;
procedure TfrmCreditDebitNoteShareBrowse.doNewAction(Sender: TObject);
begin
   if (drcrMode ='DR') then
   begin
      //debit note
     frmARDebitNote := TfrmARDebitNote.create(self,fselectedObject,'DOC_NO',0);
     frmARDebitNote.ShowModal;
     frmARDebitNote.Free;

   end else  //credit note
   begin
       //debit note
     frmARCreditNote := TfrmARCreditNote.create(self,fselectedObject,'DOC_NO',0);
     frmARCreditNote.ShowModal;
     frmARCreditNote.Free;


   end;
     doRefreshAction(SENDER);
end;

procedure TfrmCreditDebitNoteShareBrowse.doEditAction(Sender: TObject);
begin
  if (fSelectedObject <> '') then
  begin
    if (drcrMode ='DR') then
   begin
      //debit note
     frmARDebitNote := TfrmARDebitNote.create(self,fselectedObject,'DOC_NO',1);
     frmARDebitNote.ShowModal;
     frmARDebitNote.Free;
   end else  //credit note
   begin

       //credit note
     frmARCreditNote := TfrmARCreditNote.create(self,fselectedObject,'DOC_NO',1);
     frmARCreditNote.ShowModal;
     frmARCreditNote.Free;

   end;
     doRefreshAction(SENDER);
 end;
end;

procedure TfrmCreditDebitNoteShareBrowse.doDeleteAction(sender:TObject);
begin
    fsuccess := false;
     if confirm('Are you sure. Do you want delete?'+fSelectedObject)=mrYes then
     begin
       fsuccess:= AccountReceiveDM.deleteCreditNote(dataSource.DataSet.FieldByName('debtor_acct').AsString,
       fselectedObject);
       if (fsuccess) then
       begin
            info(fSelectedObject+' has been deleted');
       end;
     end;
end;

procedure TfrmCreditDebitNoteShareBrowse.setupdatasets;
begin
   if (drcrmode ='CR')  then
   begin
    AccountReceiveDM.qryUnpostCreditNoteDebitNote.Close;
    AccountReceiveDM.qryUnpostCreditNoteDebitNote.ParamByName('PMODE').Value:='C';
   // AccountReceiveDM.qryUnpostCreditNoteDebitNote.SQL.Text :='SELECT * FROM AR_CREDIT_NOTE_HD WHERE STATUS='+QuotedStr()

   end else
   begin
       AccountReceiveDM.qryUnpostCreditNoteDebitNote.Close;
    AccountReceiveDM.qryUnpostCreditNoteDebitNote.ParamByName('PMODE').Value:='D';
   end;
     datasource.DataSet :=AccountReceiveDM.qryUnpostCreditNoteDebitNote;
end;

procedure TfrmCreditDebitNoteShareBrowse.Button1Click(Sender: TObject);
begin
   datasource.DataSet.Close;
   AccountReceiveDM.qryUnpostCreditNoteDebitNote.ParamByName('PMODE').Value:='C';
   datasource.DataSet.Open;
end;

procedure TfrmCreditDebitNoteShareBrowse.btnDeleteClick(Sender: TObject);
begin
  inherited;
   doDeleteAction(sender);
end;

end.
