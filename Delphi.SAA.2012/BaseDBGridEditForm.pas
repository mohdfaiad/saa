unit BaseDBGridEditForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBSingleEntryForm, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, wwrcdvw, wwDialog, wwidlg, dxLayoutLookAndFeels, DB, ImgList,
  ExtCtrls, ComCtrls, ToolWin, fcStatusBar, StdCtrls, cxPC, cxControls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmDBGridEntry = class(TfrmDBSingleEntry)
    lbHelpText: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    procedure exitButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDBGridEntry: TfrmDBGridEntry;

implementation

{$R *.dfm}

procedure TfrmDBGridEntry.exitButtonClick(Sender: TObject);
begin
  inherited;
  EXIT;
end;

end.
