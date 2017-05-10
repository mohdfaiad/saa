unit SystemRoleManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBGridEditForm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, wwrcdvw, wwDialog,
  wwidlg, dxLayoutLookAndFeels, ImgList, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, StdCtrls, ExtCtrls, ComCtrls, ToolWin,
  fcStatusBar, cxCheckBox;

type
  TfrmCXSysRole = class(TfrmDBGridEntry)
    cxGrid1DBTableView1GROUP_ID: TcxGridDBColumn;
    cxGrid1DBTableView1GROUP_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1EDIT_FLAG: TcxGridDBColumn;
    cxGrid1DBTableView1DELETE_FLAG: TcxGridDBColumn;
    cxGrid1DBTableView1INSERT_FLAG: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATE_USER: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATE_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1DEFAULT_MODULE_ID: TcxGridDBColumn;
    cxGrid1DBTableView1ADMIN_USER: TcxGridDBColumn;
    cxGrid1DBTableView1EXECUTE_FLAG: TcxGridDBColumn;
    cxGrid1DBTableView1POST_FLAG: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCXSysRole: TfrmCXSysRole;

implementation
USES CommomShareDataModule;

{$R *.dfm}

end.
