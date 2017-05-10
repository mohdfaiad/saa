unit QAInspectEditForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBSingleEntryForm, wwrcdvw, wwDialog, wwidlg,
  dxLayoutLookAndFeels, DB, ImgList, ExtCtrls, ComCtrls, ToolWin,
  fcStatusBar, Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmQAInspectPopupEdit = class(TfrmDBSingleEntry)
    wwDBGrid1: TwwDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure   createElementTable;
  end;

var
  frmQAInspectPopupEdit: TfrmQAInspectPopupEdit;

implementation

uses productionplandatamodule,MasterSetupDataModule;

{$R *.dfm}

procedure TfrmQAInspectPopupEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  datasource.DataSet.Close;
  inherited;

end;

procedure TfrmQAInspectPopupEdit.FormCreate(Sender: TObject);
begin
  inherited;
  datasource.DataSet :=  ProductionDM.tbQAElement;
  datasource.DataSet.close;
  datasource.DataSet.Open;
 //  createElementTable;
end;

procedure TfrmQAInspectPopupEdit.createElementTable;
var elementNo:integer;
begin
   with MasterSetupDM.tbICElement DO
   BEGIN
     OPEN;
     FIRST;
      datasource.DataSet.oPEN;
     for elementNo:= 0 to 12 do
     begin
         datasource.DataSet.FieldByName('ELE'+IntToStr(elementNo+1)+'_PERC').DisplayLabel   :=
       FieldByName('ELEMENT_CODE').AsString;
       next;

     end;

     close;
   END;


end;


procedure TfrmQAInspectPopupEdit.FormShow(Sender: TObject);
begin
//createElementTable;

end;

end.
