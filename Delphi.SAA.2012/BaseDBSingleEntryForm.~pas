unit BaseDBSingleEntryForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, fcStatusBar, ComCtrls, ImgList, ToolWin, ExtCtrls, DB,
  dialogutils, dxLayoutLookAndFeels, wwSpeedButton, wwDBNavigator,
  wwclearpanel, wwDialog, wwidlg, wwrcdvw, wwdbdatetimepicker, StdCtrls,
  Mask, wwdbedit, cxCheckBox, cxDBEdit, cxDropDownEdit, cxCalendar, cxMemo,
  cxMaskEdit, cxControls, cxContainer, cxEdit, cxTextEdit, wwriched,wwdbgrid;

type
  TfrmDBSingleEntry = class(TBaseUIForm)
    ToolBar: TToolBar;
    ImageIconList: TImageList;
    newButton: TToolButton;
    deleteBotton: TToolButton;
    saveButton: TToolButton;
    exitButton: TToolButton;
    ToolButton6: TToolButton;
    ToolButton1: TToolButton;
    mainPanel: TPanel;
    dataSource: TDataSource;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    searchDialog: TwwSearchDialog;
    tbQuickSearch: TToolButton;
    RecordViewDialog: TwwRecordViewDialog;
    tbRecordView: TToolButton;
    ToolButton2: TToolButton;
    tbNext: TToolButton;
    tbPrev: TToolButton;
    tbEdit: TToolButton;
    ToolButton74: TToolButton;
    tbRefresh: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure saveButtonClick(Sender: TObject);
    procedure tbQuickSearchClick(Sender: TObject);
    procedure tbRecordViewClick(Sender: TObject);
    procedure tbNextClick(Sender: TObject);
    procedure tbPrevClick(Sender: TObject);
    procedure newButtonClick(Sender: TObject);
    procedure deleteBottonClick(Sender: TObject);
    procedure dataSourceStateChange(Sender: TObject);
    procedure tbEditClick(Sender: TObject);
    procedure tbRefreshClick(Sender: TObject);
  private
    { Private declarations }

  protected
     activeDataSet:TDataSet;
     procedure doPost(Sender:TObject);
     procedure doNew(Sender:TObject);
     procedure doEdit(sender:TObject);
     procedure doDelete(Sender:TObject);
     procedure doRefresh(sender:TObject);
     procedure doWindowExit(Sender:TObject);
     procedure doSearch(Sender:TObject);
     procedure doSetupDataSet;virtual;
     procedure initComponents;virtual;
     procedure doPreviouseRecord(sender:TObject);
     procedure doNextRecord(sender:TObject);
     procedure doDisplayTextChange;virtual;
     procedure editColorChange(state:TDataSetState);
  public


    { Public declarations }
  end;

var
  frmDBSingleEntry: TfrmDBSingleEntry;

implementation
uses waitingFrame;

{$R *.dfm}
//virtual method


procedure TfrmDBSingleEntry.editColorChange(state:TDataSetState);
var componentIndex:integer;
  procedure displayState(state:TDataSetState);
  begin
    case state of
      dsInsert:statusbar1.Panels[0].Text := 'State = [INSERT,APPEND]';
      dsEdit :statusbar1.Panels[0].Text := 'State = [EDITING]';
      dsBrowse :statusbar1.Panels[0].Text := 'State = [DISPLAY]';
    end;
//    statusbar1.Panels[2].Text :='Total '+IntToStr(datasource.dataset.RecordCount)+' record(s) loaded';
  end;
begin
   displayState(STATE);
   case state of
     dsInsert:begin
       NEWbUTTON.Enabled:=FALSE;
       tbEdit.Enabled :=false;
       tbNext.Enabled :=false;
       tbPrev.Enabled := false;
       tbRefresh.Enabled :=false;
       for componentIndex:=0 to ComponentCount -1 do
       begin
       {****CX DEV EXPRESS EDIT COMPOENT**}
         if (Components[componentIndex] is TcxDBMaskEdit)  Then
              TcxDBMaskEdit(components[componentIndex]).style.Font.Color:=clBlue;
         if (Components[componentIndex] is TcxDBTextEdit)  Then
             TcxDBTextEdit(Components[componentIndex]).style.Font.Color:=clBlue;
         if (Components[componentIndex] is TcxDBMemo)  Then
             TcxDBMemo(components[componentIndex]).style.Font.Color:=clBlue;
         if (Components[componentIndex] is TcxDBDateEdit)  Then
             TcxDBDateEdit(Components[componentIndex]).style.Font.Color:=clBlue;
         if (Components[componentIndex] is TcxDBCheckBox)  Then
             TcxDBCheckBox(Components[componentIndex]).style.Font.Color:=clBlue;
         {****CX DEV EXPRESS EDIT COMPOENT**}
         {******INFO POWER***}
         if (Components[componentIndex] is TwwDBEdit)  Then
             TwwDBEdit(Components[componentIndex]).Font.Color:=clBlue;
         if (Components[componentIndex] is TwwDBDateTimePicker)  Then
             TwwDBDateTimePicker(Components[componentIndex]).Font.Color:=clBlue;
         if (Components[componentIndex] is TwwDBRichEdit)  Then
             TwwDBRichEdit(Components[componentIndex]).Font.Color:=clBlue;
         if (Components[componentIndex] is TwwDBGrid)  Then
             TwwDBGrid(Components[componentIndex]).Font.Color:=clBlue;
       {******INFO POWER***}


       end;
     end;
     dsEdit:begin
       NEWbUTTON.Enabled:=FALSE;
       tbEdit.Enabled :=false;
       tbNext.Enabled :=false;
       tbPrev.Enabled := false;
       tbRefresh.Enabled :=false;
       for componentIndex:=0 to ComponentCount -1 do
       begin
       {****CX DEV EXPRESS EDIT COMPOENT**}
         if (Components[componentIndex] is TcxDBMaskEdit)  Then
              TcxDBMaskEdit(components[componentIndex]).style.Font.Color:=clRed;
         if (Components[componentIndex] is TcxDBTextEdit)  Then
             TcxDBTextEdit(Components[componentIndex]).style.Font.Color:=clRed;
         if (Components[componentIndex] is TcxDBMemo)  Then
             TcxDBMemo(components[componentIndex]).style.Font.Color:=clBlue;
         if (Components[componentIndex] is TcxDBDateEdit)  Then
             TcxDBDateEdit(Components[componentIndex]).style.Font.Color:=clRed;
         if (Components[componentIndex] is TcxDBCheckBox)  Then
             TcxDBCheckBox(Components[componentIndex]).style.Font.Color:=clRed;
         {****CX DEV EXPRESS EDIT COMPOENT**}
         {******INFO POWER***}
         if (Components[componentIndex] is TwwDBEdit)  Then
             TwwDBEdit(Components[componentIndex]).Font.Color:=clRed;
         if (Components[componentIndex] is TwwDBDateTimePicker)  Then
             TwwDBDateTimePicker(Components[componentIndex]).Font.Color:=clRed;
         if (Components[componentIndex] is TwwDBRichEdit)  Then
             TwwDBRichEdit(Components[componentIndex]).Font.Color:=clRed;
         if (Components[componentIndex] is TwwDBGrid)  Then
             TwwDBGrid(Components[componentIndex]).Font.Color:=clRed;
       {******INFO POWER***}
       end;
     end;
     dsBrowse:
     begin
      NEWbUTTON.Enabled:=true;
       tbEdit.Enabled :=true;
       tbNext.Enabled :=true;
       tbPrev.Enabled := true;
       tbRefresh.Enabled :=true;
     for componentIndex:=0 to ComponentCount -1 do
       begin
       {****CX DEV EXPRESS EDIT COMPOENT**}
         if (Components[componentIndex] is TcxDBMaskEdit)  Then
              TcxDBMaskEdit(components[componentIndex]).style.Font.Color:=clBlack;
         if (Components[componentIndex] is TcxDBTextEdit)  Then
             TcxDBTextEdit(Components[componentIndex]).style.Font.Color:=clBlack;
         if (Components[componentIndex] is TcxDBMemo)  Then
             TcxDBMemo(components[componentIndex]).style.Font.Color:=clBlack;
         if (Components[componentIndex] is TcxDBDateEdit)  Then
             TcxDBDateEdit(Components[componentIndex]).style.Font.Color:=clBlack;
         if (Components[componentIndex] is TcxDBCheckBox)  Then
             TcxDBCheckBox(Components[componentIndex]).style.Font.Color:=clBlack;
         {****CX DEV EXPRESS EDIT COMPOENT**}
         {******INFO POWER***}
         if (Components[componentIndex] is TwwDBEdit)  Then
             TwwDBEdit(Components[componentIndex]).Font.Color:=clBlack;
         if (Components[componentIndex] is TwwDBDateTimePicker)  Then
             TwwDBDateTimePicker(Components[componentIndex]).Font.Color:=clBlack;
         if (Components[componentIndex] is TwwDBRichEdit)  Then
             TwwDBRichEdit(Components[componentIndex]).Font.Color:=clBlack;
         if (Components[componentIndex] is TwwDBGrid)  Then
             TwwDBGrid(Components[componentIndex]).Font.Color:=clbLACK;

       {******INFO POWER***}
       end;
     end;
   end;
end;
procedure TfrmDBSingleEntry.initComponents;
begin
 //
end;
//virtual method
procedure TfrmDBSingleEntry.doSetupDataSet;
begin
//

end;

procedure  TfrmDBSingleEntry.doDisplayTextChange;
begin
 //
end;

procedure TfrmDBSingleEntry.doPost(Sender:TObject);
begin
 if not activeDataSet.active then activeDataSet.Open;
activeDataSet.Post;
end;
procedure TfrmDBSingleEntry.doNew(Sender:TObject);
begin
 if not activeDataSet.active then activeDataSet.Open;
activeDataSet.append;
end;
procedure TfrmDBSingleEntry.doDelete(Sender:TObject);
begin
 if confirm('Do you want to delete?')=mrYes then
 begin
   activeDataSet.Delete;
 end;
end;
procedure TfrmDBSingleEntry.doWindowExit(Sender:TObject);
begin
  close;
end;
procedure TfrmDBSingleEntry.doSearch(Sender:TObject);
begin
// TODO : Open search form with spacific key.
end;

procedure TfrmDBSingleEntry.FormCreate(Sender: TObject);
begin
  inherited;
  searchDialog.SearchTable :=datasource.DataSet;
  activeDataSet:= datasource.DataSet;
  initcomponents;
  doSetupDataSet();
  if (datasource.DataSet = nil) then
  begin
     errorEx('Dataset has never assigned');
  end ELSE
  begin
    datasource.dataset.Open;
    activeDataSet:= datasource.DataSet;
  end;
end;

procedure TfrmDBSingleEntry.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

    case Key of
    VK_F1:
   begin
     searchDialog.Execute;
   end;
         //end;
     VK_F2: begin
     if  activeDataSet.Modified then
            doPost(SENDER);close;
     end;//save then close
    VK_ESCAPE:
       if (activeDataSet.State in [dsInsert,dsEdit]) then
       begin
           activeDataSet.Cancel;
       end;


     VK_F7:
     // if (activeControl is TwwDBGrid) or (activeControl.Tag <0 ) then
      //begin
          doNew(activeDataSet);
         // activeControl.SetFocus;
        //  detailActive:=true;
      //end
       //else
       //begin
         // doInsert(dtsmaster);
         // detailActive:=false;
       //end;
     VK_F8: doEdit(Sender); 
        //if (activeControl is TwwDBGrid) or (activeControl.Tag <0 ) then
        //  doEdit(datasource.dataset)
       //else
       //begin
         //doEdit(dtsmaster);
        // info('get command edit master data');
       //end;
     VK_F9:  doPost(SENDER);
         //  if (activeControl is TwwDBGrid) or (activeControl.Tag <0 ) then

       //else
       //begin
         //doPost(dtsmaster);
       //end;
      vk_RETURN:    ;
      VK_DOWN:
         doNextRecord(sender);
      vK_UP:
         doPreviouseRecord(sender);



  end;

  

end;

procedure TfrmDBSingleEntry.saveButtonClick(Sender: TObject);
begin
  inherited;
  doPost(sender);
end;

procedure TfrmDBSingleEntry.tbQuickSearchClick(Sender: TObject);
begin
  inherited;
    searchDialog.Execute;
end;

procedure TfrmDBSingleEntry.tbRecordViewClick(Sender: TObject);
begin
  inherited;
  recordViewDialog.Execute;
end;


procedure  TfrmDBSingleEntry.doPreviouseRecord(sender:TObject);
begin
            activeDataSet.Prior;
end;
procedure  TfrmDBSingleEntry.doNextRecord(sender:TObject);
begin
     activeDataSet.Next;
end;

procedure TfrmDBSingleEntry.tbNextClick(Sender: TObject);
begin
  inherited;
  doNextRecord(sender);
end;

procedure TfrmDBSingleEntry.tbPrevClick(Sender: TObject);
begin
  inherited;
  doPreviouseRecord(sender);
end;

procedure TfrmDBSingleEntry.newButtonClick(Sender: TObject);
begin
  inherited;
  doNew(sender);
end;

procedure TfrmDBSingleEntry.deleteBottonClick(Sender: TObject);
begin
  inherited;
  doDelete(Sender);
end;

procedure TfrmDBSingleEntry.dataSourceStateChange(Sender: TObject);
begin
  if (activeDataSet <> nil) then
    editColorChange(activeDataSet.State)

end;
procedure TfrmDBSingleEntry.doEdit(sender:tobject);
begin
activeDataSet.Edit;
end;
procedure TfrmDBSingleEntry.tbEditClick(Sender: TObject);
begin
 doEdit(sender);

end;

procedure TfrmDBSingleEntry.doRefresh(SENDER:Tobject);
var wFrame:TFrameWaiting;
begin
    activeDataSet.Close;
//    FrameWaiting.
    wFrame := TFrameWaiting.Create(frmDBSingleEntry);
    wFrame.Visible:=true;
    wFrame.Show;
    datasource.dataset.open;
end;
procedure TfrmDBSingleEntry.tbRefreshClick(Sender: TObject);
begin
  inherited;
 doRefresh(sender);
end;

end.
