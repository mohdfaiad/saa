unit ARCreditDebitNoteEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMasterDetail, DB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  fcStatusBar, StdCtrls, ComCtrls, wwriched, Wwdbdlg, wwdblook,
  wwdbdatetimepicker, Mask, wwdbedit, wwSpeedButton, wwDBNavigator,
  wwclearpanel;

type
  TfrmARCreditDebitNote = class(TBaseUIMasterDetailForm)
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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    Label7: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    cbTrxTypeLookkup: TwwDBLookupCombo;
    wwDBEdit2: TwwDBEdit;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    wwDBEdit3: TwwDBEdit;
    wwDBRichEdit1: TwwDBRichEdit;
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
  private
    { Private declarations }
    drcrmode:String;
  public
    { Public declarations }
  procedure setupDataSets; override;
    constructor create(AOwner:TComponent;documentNo:String;keyColumn,crMode:String;mode:integer);overload;
  end;

var
  frmARCreditDebitNote: TfrmARCreditDebitNote;

implementation
uses  AccountReceiveDataModule;

{$R *.dfm}
constructor TfrmARCreditDebitNote.create(AOwner:TComponent;documentNo:String;keyColumn,crMode:String;mode:integer);
begin
  inherited   create(AOwner,documentNo,keyColumn,mode);
 //CRDRMODE :=  CRMODE ;
   drcrMode :=crMode;
    if (drcrMode ='CR') then
    begin
        caption :='Credit Note'  ;
        cbTrxTypeLookkup.DataSource.dataset.filtered:=false;
        cbTrxTypeLookkup.DataSource.dataset.Filter:='MODE='+QuotedStr('C');
        cbTrxTypeLookkup.DataSource.dataset.FilterED :=true;
        cbTrxTypeLookkup.DataSource.dataset.open;

    end else if (drcrMode ='DR') then
    begin
      caption :='Debit Note'  ;
      cbTrxTypeLookkup.DataSource.dataset.filtered:=false;;
      cbTrxTypeLookkup.DataSource.dataset.Filter:='MODE='+QuotedStr('D');
      cbTrxTypeLookkup.DataSource.dataset.FilterED :=true;
      cbTrxTypeLookkup.DataSource.dataset.open;
    end;

end;

procedure   TfrmARCreditDebitNote.setupDataSets;
begin
   // dsMaster.DataSet := AccountReceiveDM.tbCreditNoteHD;
    //dsDetail.DataSet := AccountReceiveDM.tbCreditNoteDT;
end;
end.
