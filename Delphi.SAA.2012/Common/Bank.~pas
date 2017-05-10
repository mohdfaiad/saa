unit Bank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, fcStatusBar, DB, ImgList, ComCtrls, wwSpeedButton,
  wwDBNavigator, ExtCtrls, wwclearpanel, Grids, Wwdbigrd, Wwdbgrid, ToolWin,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid;

type
  TBankForm = class(TBaseUIForm)
    ToolBar1: TToolBar;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    btNew: TToolButton;
    btEdit: TToolButton;
    btDelete: TToolButton;
    ImageList1: TImageList;
    btSave: TToolButton;
    ToolButton5: TToolButton;
    dataSource: TDataSource;
    btExit: TToolButton;
    ToolButton2: TToolButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1BANK_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1BANK_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1BRANCH_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1REMARKS: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATE_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1UPDATE_USER: TcxGridDBColumn;
    procedure dataSourceDataChange(Sender: TObject; Field: TField);
    procedure btNewClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BankForm: TBankForm;

implementation
uses accountReceiveDataModule;

{$R *.dfm}

procedure TBankForm.dataSourceDataChange(Sender: TObject; Field: TField);
begin
  btNew.Enabled:=wwDBNavigator1.Buttons.Items[0].Enabled;
  btEdit.Enabled:=wwDBNavigator1.Buttons.Items[1].Enabled;
  btDelete.Enabled:=wwDBNavigator1.Buttons.Items[2].Enabled;
  btSave.Enabled:=wwDBNavigator1.Buttons.Items[3].Enabled;

end;

procedure TBankForm.btNewClick(Sender: TObject);
begin
  wwDBNavigator1.Buttons.Items[0].click;

end;

procedure TBankForm.btEditClick(Sender: TObject);
begin
  wwDBNavigator1.Buttons.Items[1].click;

end;

procedure TBankForm.btDeleteClick(Sender: TObject);
begin
  wwDBNavigator1.Buttons.Items[2].click;

end;

procedure TBankForm.btSaveClick(Sender: TObject);
begin
   wwDBNavigator1.Buttons.Items[3].click;;

end;

procedure TBankForm.btExitClick(Sender: TObject);
begin
  inherited;
    datasource.DataSet.Open;
  close;
end;

procedure TBankForm.FormCreate(Sender: TObject);
begin
  inherited;
  datasource.DataSet.Open;
end;

end.
