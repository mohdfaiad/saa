unit BaseCXMasterDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMasterDetail, DB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  fcStatusBar, ComCtrls, ToolWin, ImgList, StdCtrls;

type
  TBaseCXUIMasterDetailForm = class(TBaseUIMasterDetailForm)
    lbTitle: TLabel;
    ImageIconList: TImageList;
    ToolBar: TToolBar;
    ToolButton74: TToolButton;
    newButton: TToolButton;
    tbEdit: TToolButton;
    tbPrev: TToolButton;
    tbNext: TToolButton;
    tbRefresh: TToolButton;
    ToolButton1: TToolButton;
    saveButton: TToolButton;
    ToolButton6: TToolButton;
    deleteBotton: TToolButton;
    ToolButton2: TToolButton;
    tbQuickSearch: TToolButton;
    tbRecordView: TToolButton;
    exitButton: TToolButton;
    procedure newButtonClick(Sender: TObject);
    procedure tbEditClick(Sender: TObject);
    procedure saveButtonClick(Sender: TObject);
    procedure deleteBottonClick(Sender: TObject);
    procedure exitButtonClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure tbRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseCXUIMasterDetailForm: TBaseCXUIMasterDetailForm;

implementation

{$R *.dfm}

procedure TBaseCXUIMasterDetailForm.newButtonClick(Sender: TObject);
begin
  inherited;
  doInsert(activeDataSet);
end;

procedure TBaseCXUIMasterDetailForm.tbEditClick(Sender: TObject);
begin
  inherited;
  doEdit(activeDataSet);
end;

procedure TBaseCXUIMasterDetailForm.saveButtonClick(Sender: TObject);
begin
  inherited;
  doPost(activeDataSet);
end;

procedure TBaseCXUIMasterDetailForm.deleteBottonClick(Sender: TObject);
begin
  inherited;
  doDelete(ActiveDataSet);
end;

procedure TBaseCXUIMasterDetailForm.exitButtonClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TBaseCXUIMasterDetailForm.wwDBGrid1Enter(Sender: TObject);
begin
  inherited;
  activeDataSet:=dsDetail.DataSet;
end;

procedure TBaseCXUIMasterDetailForm.tbRefreshClick(Sender: TObject);
begin
  inherited;
  ActiveDataSet.Close;
  ACTIVEDATASET.Open;
end;

end.
