unit BaseDataGridEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, fcStatusBar, ImgList, DB, Grids, Wwdbigrd, Wwdbgrid,
  ComCtrls, ExtCtrls, ToolWin,wwdblook,wwriched, wwdbdatetimepicker, wwdbedit,  Mask,
  Wwdotdot, Wwdbcomb,Wwdbdlg, DBCtrls, StdCtrls,IBTable,shellAPI,wwDBNavigator,
  wwSpeedButton, wwclearpanel;

type
  TBaseDataGridEditForm = class(TBaseUIForm)
    HeaderControl1: THeaderControl;
    ToolBar: TToolBar;
    plGrid: TPanel;
    Bevel1: TBevel;
    tbNew: TToolButton;
    tbEdit: TToolButton;
    tbDelete: TToolButton;
    tbPost: TToolButton;
    DBGrid: TwwDBGrid;
    dataSource: TDataSource;
    ImageList1: TImageList;
    DBNavigator: TwwDBNavigator;
    DBNavigatorInsert: TwwNavButton;
    DBNavigatorDelete: TwwNavButton;
    DBNavigatorEdit: TwwNavButton;
    DBNavigatorPost: TwwNavButton;
    DBNavigatorRefresh: TwwNavButton;
    tbRefresh: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    tbClose: TToolButton;
    DBNavigatorButtonCancel: TwwNavButton;
    tbCancel: TToolButton;
    procedure dataSourceStateChange(Sender: TObject);
    procedure tbNewClick(Sender: TObject);
    procedure tbEditClick(Sender: TObject);
    procedure tbDeleteClick(Sender: TObject);
    procedure tbPostClick(Sender: TObject);
    procedure tbRefreshClick(Sender: TObject);
    procedure tbCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure initComponents;
  end;

var
  BaseDataGridEditForm: TBaseDataGridEditForm;

implementation

{$R *.dfm}

procedure TBaseDataGridEditForm.dataSourceStateChange(Sender: TObject);
begin
 tbNew.Enabled :=  DBNavigatorInsert.Enabled;
 tbEdit.Enabled:=DBNavigatorEdit.ENABLED;
 tbDelete.Enabled :=DBNavigatorDelete.Enabled;
 tbPost.Enabled:=DBNavigatorPost.Enabled;
 tbRefresh.Enabled :=DBNavigatorRefresh.Enabled;
 tbCancel.Enabled :=DBNavigatorButtonCancel.Enabled;
 initcomponents;

end;
procedure TBaseDataGridEditForm.initComponents;
procedure INITLookupComponents;
 var comIndex:integer;
 begin
    for comIndex:=0 to componentCount -1 do
    begin
      if (components[comIndex] is TwwDBCustomLookupCombo) then
      begin
          TwwDBCustomLookupCombo(Components[comIndex]).AutoDropDown:=true  ;
          TwwDBCustomLookupCombo(Components[comIndex]).LookupTable.Open;
      end
      else if  (components[comIndex] is TwwDBComboBox) then
      begin
          TwwDBComboBox(components[comIndex]).AutoDropDown:=true ;

      end
      else if (components[comIndex] is TwwDBLookupComboDlg ) then
      begin
          TwwDBLookupComboDlg(components[comIndex]).AutoDropDown:=true  ;
          TwwDBLookupComboDlg(components[comIndex]).LookupTable.Open;
      end
      else if  (components[comIndex] is TwwDBLookupCombo ) then
      begin
           TwwDBLookupCombo(components[comIndex]).AutoDropDown:=true;
           TwwDBLookupCombo(components[comIndex]).LookupTable.Open;
      end
      else if (components[comIndex] is TwwDBNavigator) THEN
      begin
           TwwDBNavigator(components[comIndex]).Flat :=FALSE;
           TwwDBNavigator(components[comIndex]).Align:=alLeft;
      end;
    end;

 end;
begin
 INITLookupComponents;
end;

procedure TBaseDataGridEditForm.tbNewClick(Sender: TObject);
begin
  DBNavigatorInsert.Click;
  DBGrid.SetActiveField(DBGrid.Fields[0].FieldName);

end;

procedure TBaseDataGridEditForm.tbEditClick(Sender: TObject);
begin
DBNavigatorEdit.Click;

end;

procedure TBaseDataGridEditForm.tbDeleteClick(Sender: TObject);
begin
 DBNavigatorDelete.Click;

end;

procedure TBaseDataGridEditForm.tbPostClick(Sender: TObject);
begin
  DBNavigatorPost.Click;

end;

procedure TBaseDataGridEditForm.tbRefreshClick(Sender: TObject);
begin
  DBNavigatorRefresh.Click;

end;

procedure TBaseDataGridEditForm.tbCloseClick(Sender: TObject);
begin
  inherited;
  datasource.dataset.Close;
  close;

end;

procedure TBaseDataGridEditForm.FormCreate(Sender: TObject);
begin
  inherited;
  if (datasource.dataset <> nil) then datasource.dataset.Open;
end;

procedure TBaseDataGridEditForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F5: tbRefresh.Click;
    VK_F7: tbNew.Click;
    VK_F8: tbEdit.Click;
    VK_F9: tbPost.Click;
    VK_ESCAPE: tbCancelClick(sender);
  end;

end;

procedure TBaseDataGridEditForm.tbCancelClick(Sender: TObject);
begin
  inherited;
  DBNavigatorButtonCancel.Click;
end;

end.
