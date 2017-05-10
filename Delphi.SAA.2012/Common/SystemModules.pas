unit SystemModules;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDataGridEdit, ImgList, DB, Grids, Wwdbigrd, Wwdbgrid,
  ExtCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel, ComCtrls, ToolWin,
  fcStatusBar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid;

type
  TfrmSysModule = class(TBaseDataGridEditForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1MODULE_ID: TcxGridDBColumn;
    cxGrid1DBTableView1MODULE_DESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATE_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATE_USER: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSysModule: TfrmSysModule;

implementation
uses CommomShareDataModule;

{$R *.dfm}

end.
