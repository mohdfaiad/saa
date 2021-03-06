unit MaterialElementSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBGridEditForm, dxExEdtr, wwrcdvw, wwDialog, wwidlg,
  dxLayoutLookAndFeels, DB, ImgList, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls, ComCtrls, ToolWin, fcStatusBar, cxPC, cxControls, StdCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox;

type
  TfrmMaterialElementSetup = class(TfrmDBGridEntry)
    cxGrid1DBTableView1RUN_NO: TcxGridDBColumn;
    cxGrid1DBTableView1ELEMENT_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATE_USER: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATE_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1ELEMENT_LOCKED: TcxGridDBColumn;
    cxGrid1DBTableView1ELEMENT_ACTIVE: TcxGridDBColumn;
    cxGrid1DBTableView1ELEMENT_CONTROLED: TcxGridDBColumn;
    tbControlConfig: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    dsCompositionControl: TDataSource;
    cxGridDBTableView2COMPOSITIONCONTROLID: TcxGridDBColumn;
    cxGridDBTableView2COMPOSITIONCONTROLNAME: TcxGridDBColumn;
    cxGridDBTableView2COMPOSITIONCONTROLSTARTINDEX: TcxGridDBColumn;
    cxGridDBTableView2COMPOSITIONCONTROLENDINDEX: TcxGridDBColumn;
    cxGridDBTableView2COMPOSITIONCONTROLCODE: TcxGridDBColumn;
    cxGridDBTableView2COMPOSITIONACTIVE: TcxGridDBColumn;
    cxGridDBTableView2REMELTRECOVERYPERCENTAGE: TcxGridDBColumn;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMaterialElementSetup: TfrmMaterialElementSetup;

implementation

uses MasterSetupDataModule;
{$R *.dfm}

procedure TfrmMaterialElementSetup.FormCreate(Sender: TObject);
begin
  inherited;
   cxGrid1.Align := alnone;
   cxPageControl1.Align:=alClient;
   cxGrid1.Parent := cxTabSheet1;
   cxGrid1.Align := alClient;
   dsCompositionControl.DataSet :=MasterSetupDM.tbCompositionControl;
   dsCompositionControl.DataSet.open;
end;

end.
