unit CreditNoteEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DebitNoteEntry, DB, wwdblook, wwdbdatetimepicker, StdCtrls,
  ComCtrls, wwriched, Mask, wwdbedit, Wwdbdlg, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  fcStatusBar, DBGrids;

type
  TfrmARCreditNote = class(TfrmARDebitNote)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setupDataSets;override;
  end;

var
  frmARCreditNote: TfrmARCreditNote;

implementation
uses AccountReceiveDataModule;

{$R *.dfm}


procedure TfrmARCreditNote.setupDataSets;
begin
    dsMaster.DataSet :=AccountReceiveDM.tbCNHD;
    dsDetail.DataSet :=AccountReceiveDM.tbDebitNoteDT;
     // AccountReceiveDM.qryDebtor.in
    //  dtsmaster :=    AccountReceiveDM.tbDebitNoteHD;
   //  dtsDetail :=   AccountReceiveDM.tbDebitNoteDT;
   // cbTrxTypeLookkup.DataSource.DataSet :=AccountReceiveDM.tbTransactionType;
    cbTrxTypeLookup.LookupTable :=  AccountReceiveDM.tbTransactionType;
    cbTrxTypeLookup.LookupTable.Filter :='MODE='+QuotedStr('C');
     cbTrxTypeLookup.LookupTable.Filtered :=true;
     ActiveControl:=wwDBEdit1;

end;


end.
