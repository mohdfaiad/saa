unit DebtorType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBSingleEntryForm, dxLayoutLookAndFeels, DB, ImgList,
  ExtCtrls, ComCtrls, ToolWin, fcStatusBar,MasterSetupDataModule, Grids,
  Wwdbigrd, Wwdbgrid, wwSpeedButton, wwDBNavigator, wwclearpanel, wwrcdvw,
  wwDialog, wwidlg;

type
  TfrmDebtorType = class(TfrmDBSingleEntry)
    dxLayoutOfficeLookAndFeel1: TdxLayoutOfficeLookAndFeel;
    wwDBGrid1: TwwDBGrid;
   

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
        procedure doSetupDataSet;override;
  end;

var
  frmDebtorType: TfrmDebtorType;

implementation

{$R *.dfm}



procedure TfrmDebtorType.doSetupDataSet;
begin
  datasource.DataSet := MasterSetupDM.tbArDebtorType;
  datasource.DataSet.active:=true;
    //dxDBGrid2.OptionsBehavior[edgoEnterpass]
end;

procedure TfrmDebtorType.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   action :=caFree;
end;

end.
