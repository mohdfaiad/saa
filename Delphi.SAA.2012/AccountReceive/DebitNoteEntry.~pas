unit DebitNoteEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMasterDetail, DB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  fcStatusBar, wwSpeedButton, wwDBNavigator, wwclearpanel, StdCtrls,
  ComCtrls, wwriched, Wwdbdlg, wwdblook, wwdbdatetimepicker, Mask, wwdbedit,
  DBGrids,dialogutils,toThaiBath;

type
  TfrmARDebitNote = class(TBaseUIMasterDetailForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBRichEdit1: TwwDBRichEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    cbTrxTypeLookup: TwwDBLookupCombo;
    wwDBEdit2: TwwDBEdit;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    Panel2: TPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwDBNavigator2First: TwwNavButton;
    wwDBNavigator2PriorPage: TwwNavButton;
    wwDBNavigator2Prior: TwwNavButton;
    wwDBNavigator2Next: TwwNavButton;
    wwDBNavigator2NextPage: TwwNavButton;
    wwDBNavigator2Last: TwwNavButton;
    wwDBNavigator2Insert: TwwNavButton;
    wwDBNavigator2Delete: TwwNavButton;
    wwDBNavigator2Edit: TwwNavButton;
    wwDBNavigator2Post: TwwNavButton;
    wwDBNavigator2Cancel: TwwNavButton;
    wwDBNavigator2Refresh: TwwNavButton;
    wwDBNavigator2SaveBookmark: TwwNavButton;
    wwDBNavigator2RestoreBookmark: TwwNavButton;
    wwDBEdit3: TwwDBEdit;
    dlgUnPaidInvoice: TwwDBLookupComboDlg;
    Panel3: TPanel;
    ldbBahtText: TwwDBEdit;
    Bevel1: TBevel;
    Label4: TLabel;
    wwDBGrid2: TwwDBGrid;
    dsUnpaidInvoice: TDataSource;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure wwDBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure wwDBEdit3DblClick(Sender: TObject);
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }


  protected
       ACCOUNT_MODE:String;
  public
    { Public declarations }
    procedure setupDataSets; override;
    procedure showInvoiceWindow;
  end;

var
  frmARDebitNote: TfrmARDebitNote;

implementation
uses AccountReceiveDataModule;
{$R *.dfm}


procedure TfrmARDebitNote.setupDataSets;
begin
      dsMaster.DataSet :=AccountReceiveDM.tbCNHD;
      dsDetail.DataSet :=AccountReceiveDM.tbDebitNoteDT;
   // AccountReceiveDM.qryDebtor.in
     dtsmaster :=    AccountReceiveDM.tbCNHD;
    dtsDetail :=   AccountReceiveDM.tbDebitNoteDT;
   // cbTrxTypeLookkup.DataSource.DataSet :=AccountReceiveDM.tbTransactionType;
      cbTrxTypeLookup.LookupTable :=  AccountReceiveDM.tbTransactionType;
      cbTrxTypeLookup.LookupTable.Filter :='MODE='+QuotedStr('D');
      cbTrxTypeLookup.LookupTable.Filtered :=true;
      ActiveControl:=wwDBEdit1;

end;
procedure TfrmARDebitNote.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  inherited;
  try
    try
       if (dtsMaster <> nil) and (dtsDetail <> nil) then
       begin
       if (dtsMaster.State = dsEdit) and (dtsDetail.RecordCount >0) then
       begin
          AccountReceiveDM.qryCreditNoteSummary.Close;
          AccountReceiveDM.qryCreditNoteSummary.ParamByName('pdoc_no').Value:=dtsMaster.FieldByName('doc_no').AsString;
          AccountReceiveDM.qryCreditNoteSummary.ParamByName('pdoc_date').Value:=dtsMaster.FieldByName('doc_date').AsDateTime;
          AccountReceiveDM.qryCreditNoteSummary.ParamByName('pdebtor_acct').Value :=dtsMaster.FieldByName('debtor_acct').AsString;
          AccountReceiveDM.qryCreditNoteSummary.Open;
       end;

      end;


     except on e:exception do
        errorex(e.Message);
    end;
    finally
    //FormatFloat()
       wwDBGrid1.ColumnByName('ITEM_DESCS').FooterValue :='[Total:]->'  ;
       //wwDBGrid1.Colu
        wwDBGrid1.ColumnByName('BASE_AMOUNT').FooterValue := FormatFloat('#,###.00',AccountReceiveDM.qryCreditNoteSummary.FieldByName('base_amount').AsFloat);
        wwDBGrid1.ColumnByName('tax_AMOUNT').FooterValue := FormatFloat('#,###.00',AccountReceiveDM.qryCreditNoteSummary.FieldByName('tax_amount').AsFloat);
        wwDBGrid1.ColumnByName('total_AMOUNT').FooterValue := FormatFloat('#,###.00',AccountReceiveDM.qryCreditNoteSummary.FieldByName('total_amount').AsFloat);
        AccountReceiveDM.qryCreditNoteSummary.Close;

    end;
  //
  //if (wwDBGrid1.FieldName('').)
end;

procedure TfrmARDebitNote.wwDBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
 // var ColIndex:integer;
begin
   //ColIndex :=0;

  // for ColIndex:=0 to wwDBGrid1.GetColCount DO
   //BEGIN
    //   if (wwdbGrid1.Columns[colindex].ReadOnly=true) then
          // wwdbGrid1.co
   //END

end;

procedure TFrmARDebitNote.showInvoiceWindow;
begin
   if (wwDBGrid2.Visible = false) then
   begin
       wwDBGrid2.BringToFront;
       wwdbgrid2.Visible:=true;
   end
   else
   begin

       wwDBGrid2.SendToBack;
       wwdbgrid2.Visible:=false;


   end;
end;

procedure TfrmARDebitNote.wwDBEdit3DblClick(Sender: TObject);
begin
   showInvoiceWindow();
end;

procedure TfrmARDebitNote.dsMasterDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
   if (dsMaster.State in [dsEdit,dsInsert]) then
   begin
   end;
end;

procedure TfrmARDebitNote.FormCreate(Sender: TObject);
begin
  inherited;
  ldbBahtText.Color :=clBtnFace;
end;

end.
