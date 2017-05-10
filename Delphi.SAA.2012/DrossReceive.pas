unit DrossReceive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMasterDetail, DB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  fcStatusBar, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook,
  Wwdbdlg, wwdbdatetimepicker, wwSpeedButton, wwDBNavigator, wwclearpanel,
  DBCtrls, DBGrids;

type
  TDrossReceiveForm = class(TBaseUIMasterDetailForm)
    Panel2: TPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    DBMemo1: TDBMemo;
    wwDBLookupComboDrossType: TwwDBLookupCombo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure doBeforePost(dataSet:TDataSet); override;
    procedure setupDataSets;override;
    { Public declarations }
  end;

var
  DrossReceiveForm: TDrossReceiveForm;

implementation
uses drossDataModule,dialogutils;

{$R *.dfm}

procedure TDrossReceiveForm.FormCreate(Sender: TObject);
begin
  inherited;
  activeControl:=wwDBEdit1;
  DefaultFocusedControl:= wwDBEdit1;
  dsdetail.AutoEdit:=true;

end;

procedure TDrossReceiveForm.setupDataSets;
begin

     dsMaster.DataSet := DROSSDM.tbDrossReceiveHD;
     dsDetail.DataSet :=DROSSDM.tbDrossReceiveDT;
end;

procedure   TDrossReceiveForm.doBeforePost(dataSet:TDataSet); 
begin
  canPost:=true;
  if (detailActive) then
  begin
    if (dataset.FieldByName('WEIGHT').AsFloat=0) then
    begin
      warning('Weight could not be zero');
      wwDBGrid1.SetActiveField('WEIGHT');
      canPost:=false;
    end
  end
end;

end.
