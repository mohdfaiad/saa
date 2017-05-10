unit BaseMasterDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, Grids, DBGrids, ExtCtrls, ComCtrls, Wwdbigrd, Wwdbgrid,
  fcStatusBar,DB,wwdblook,wwriched, wwdbdatetimepicker, wwdbedit,  Mask,
  Wwdotdot, Wwdbcomb,Wwdbdlg, DBCtrls, StdCtrls,IBTable,shellAPI,wwDBNavigator,
   cxCheckBox, cxDBEdit, cxDropDownEdit, cxCalendar, cxMemo,
  cxMaskEdit, cxControls, cxContainer, cxEdit, cxTextEdit;
type DataState = (STATE_INSERT,STATE_EDIT);
type
  TBaseUIMasterDetailForm = class(TBaseUIForm)
    panel1: TPanel;
    Splitter1: TSplitter;
    plHeader: TPanel;
    plToolBar: TPanel;
    wwDBGrid1: TwwDBGrid;
    dsMaster: TDataSource;
    dsDetail: TDataSource;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure dsMasterStateChange(Sender: TObject);
    procedure dsDetailStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

         procedure CMDialogKey(Var Msg: TWMKey) ;
    message CM_DIALOGKEY;

  protected
    dtsmaster,ActiveDataSet,dtsdetail:TDataSet;

    detailActive,canPost,canModify:boolean;
    fdocumentNo:String;
    fpkColumn:String;
    dataMode:DataState;
    DefaultFocusedControl:TWinControl;
    procedure doInsert(dataSet:TDataSet);virtual;
    procedure doEdit(dataSet:TDataSet);virtual;
    procedure doPost(dataSet:TDataSet);virtual;
    procedure doCancel(dataSet:TDataSet);virtual;
    procedure doDelete(dataset:TDataSet);virtual;  //22 June,2010

    //validate UI before post data
    procedure doBeforePost(dataSet:TDataSet);virtual;

    procedure doBeforeInsert(dataSet:TDataSet);virtual;

    procedure doBeforeEdit(dataSet:TDataSet);
    procedure openLookupDataSet;
    procedure changeEditFontColor(Color:TColor);
    procedure initComponents; virtual;
    procedure doBeforeWindowClose;
    procedure doGridExport();
    procedure setupDataSets;virtual;

  public

    { Public declarations }
    constructor create(AOwner:TComponent;documentNo:String;keyColumn:String;mode:integer);overload;
    destructor destroy;overload;
  end;

var
  BaseUIMasterDetailForm: TBaseUIMasterDetailForm;

implementation
USES DialogUtils, Math;

{$R *.dfm}


constructor TBaseUIMasterDetailForm.create(AOwner:TComponent;documentNo:String;keyColumn:String;mode:integer);
begin
    inherited create(Aowner);
    setupDataSets;
    if (dsMaster.DataSet=nil) or (dsDetail.DataSet=nil) then
    begin
        errorex('Master dataset or detail dataset is not define. Please contract system administrator');
        close;
    end  else
    begin
        fdocumentNo:=documentNo;
        fpkColumn :=keyColumn;
        dsMaster.AutoEdit:=true;
        dsDetail.AutoEdit:=true;
        dtsmaster := dsMaster.DataSet;
        ActiveDataSet :=dtsMaster;
        dtsdetail := dsDetail.DataSet;
        case mode of
         0: dataMode :=  STATE_INSERT;
         1: dataMode :=  STATE_EDIT;

        end;
        if dataMode = STATE_EDIT then
        begin
            try
                  dtsMaster.Open;
                  if (dtsMaster.FindField('STATUS')<>nil )then
                     dtsMaster.Filter:='STATUS<>'+QuotedStr('X')+' AND '+fpkColumn+'='+quotedStr(fdocumentNo)
                  else   dtsMaster.Filter:=fpkColumn+'='+quotedStr(fdocumentNo)
           finally
              dtsMaster.Filtered:=true;
              dtsMaster.Open;
            end;
            caption:=caption+' [Editing '+documentNo+']';
        end
        else
        begin
         try
             dtsMaster.Open;
             dtsMaster.Insert;
         except on e:Exception do
            errorEx('Error while opending/insert master dataset'+e.Message);
         end;
        end;

         try
             dtsDetail.Open;
             openLookupDataSet;
         except on e:Exception do
            errorEx('Error while opending/insert master dataset'+e.Message);
         end;
    end;
   initComponents;
end;
destructor TBaseUIMasterDetailForm.destroy;
begin
 inherited;
end;


  //Enter AS tab
procedure TBaseUIMasterDetailForm.CMDialogKey(Var Msg: TWMKey) ;
BEGIN
 If NOT (ActiveControl Is TButton) Then
         If Msg.Charcode = 13 Then
            Msg.Charcode := 9;
      inherited;
END;

procedure TBaseUIMasterDetailForm.setupDataSets;
begin
 //
end;
procedure  TBaseUIMasterDetailForm.doGridExport;
const exportFILE:String= 'c:\detailGrid.csv';
begin
   If(dsDetail.DataSet.active) and (dsDetail.DataSet.RecordCount>0) then
   begin
       wwDBGrid1.ExportOptions.FileName:=exportFILE;
       wwDBGrid1.ExportOptions.Save;
       if (FileExists(exportFILE)) then
          ShellExecute(Handle, Pchar('open'), Pchar(exportFILE), nil, nil, SW_SHOWNORMAL) ;
   end
   else warning('No data found to be export');
end;
procedure TBaseUIMasterDetailForm.initComponents;
 procedure setAutoDropdown;
 var comIndex:integer;
 begin
    for comIndex:=0 to componentCount -1 do
    begin
      if (components[comIndex] is TwwDBCustomLookupCombo) then
          TwwDBCustomLookupCombo(Components[comIndex]).AutoDropDown:=true
      else if  (components[comIndex] is TwwDBComboBox) then
          TwwDBComboBox(components[comIndex]).AutoDropDown:=true
      else if (components[comIndex] is TwwDBLookupComboDlg ) then
          TwwDBLookupComboDlg(components[comIndex]).AutoDropDown:=true
      else if  (components[comIndex] is TwwDBLookupCombo ) then
           TwwDBLookupCombo(components[comIndex]).AutoDropDown:=true
      else if (components[comIndex] is TwwDBNavigator) THEN
      begin
           TwwDBNavigator(components[comIndex]).Flat :=FALSE;
           TwwDBNavigator(components[comIndex]).Align:=alLeft;
      end;
    end;

 end;
begin
   Statusbar1.Panels[0].Width := '200';
   detailActive:=false;
   setAutoDropdown;
   canPost:=true;
   canModify:=true;
end;

procedure TBaseUIMasterDetailForm.doBeforePost(dataSet:TDataSet);
begin
  canPost:=true;;
  //info('Before UI Post Action execute do not call inherited to avoid this message');
  //overwritable
end;

procedure TBaseUIMasterDetailForm.changeEditFontColor(Color:TColor);
var comIndex:integer;
begin
  for comIndex:=0 to componentCount -1 do
  begin
    if (components[comIndex] is TwwDBCustomLookupCombo) then
            if NOT (     detailActive ) then
       TwwDBCustomLookupCombo(components[comIndex]).Font.Color:=color;
    if (components[comIndex] is TwwDBGrid) then
            if  (  detailActive ) then
        TwwDBGrid(components[comIndex]).Font.Color:=color;
    if  (components[comIndex] is TwwDBComboBox) then
           if NOT (     detailActive ) then
          TwwDBComboBox(components[comIndex]).Font.Color:=color;
    if (components[comIndex] is TwwDBEdit) then
      if (TwwDBEdit(components[comIndex]).Tag =0) then
             if NOT (     detailActive ) then
         TwwDBEdit(components[comIndex]).Font.Color:=color;
    if (components[comIndex] is TwwDBDateTimePicker) then
       if NOT (     detailActive ) then
         TwwDBDateTimePicker(components[comIndex]).Font.Color:=color;
    if (components[comIndex] is TwwDBRichEdit) then
       if NOT (     detailActive ) then
         TwwDBRichEdit(components[comIndex]).Font.Color:=color;
    if (components[comIndex] is TDBMemo) then
       if NOT (     detailActive ) then
         TDBMemo(components[comIndex]).Font.Color:=color;
    if (Components[comIndex] is TcxDBMaskEdit)  Then
    if NOT (     detailActive ) then
    TcxDBMaskEdit(components[comIndex]).style.Font.Color:=color;
    if (Components[comIndex] is TcxDBTextEdit)  Then
    if NOT (     detailActive ) then

    TcxDBTextEdit(Components[comIndex]).style.Font.Color:=color;
    if (Components[comIndex] is TcxDBMemo)  Then
    if NOT (     detailActive ) then

    TcxDBMemo(components[comIndex]).style.Font.Color:=color;
    if (Components[comIndex] is TcxDBDateEdit)  Then
    if NOT (     detailActive ) then

    TcxDBDateEdit(Components[comIndex]).style.Font.Color:=color;
    if (Components[comIndex] is TcxDBCheckBox)  Then
    if NOT (     detailActive ) then

    TcxDBCheckBox(Components[comIndex]).style.Font.Color:=color;
    {****CX DEV EXPRESS EDIT COMPOENT**}
    {******INFO POWER***}
    if (Components[comIndex] is TwwDBEdit)  Then
    if NOT (     detailActive ) then

    TwwDBEdit(Components[comIndex]).Font.Color:=color;
    if (Components[comIndex] is TwwDBDateTimePicker)  Then
    if NOT (     detailActive ) then

    TwwDBDateTimePicker(Components[comIndex]).Font.Color:=color;
    if (Components[comIndex] is TwwDBRichEdit)  Then
    if NOT (     detailActive ) then
      TwwDBRichEdit(Components[comIndex]).Font.Color:=color;
     if (components[comIndex] is TwwDBGrid) then
            TwwDBGrid(components[comIndex]).Font.Color:=color;
       {******INFO POWER***}
  end;

end;
procedure TBaseUIMasterDetailForm.openLookupDataSet;
var comIndex:integer;
begin
   for comIndex:=0 to ComponentCount -1 do
   begin
     if (components[comIndex] is TwwDBCustomLookupCombo) then
     begin
       if TwwDBCustomLookupCombo(components[comIndex]).LookupTable <> nil then
         TwwDBCustomLookupCombo(components[comIndex]).LookupTable.Open
         else errorex('Lookup table did not define component name ='+components[comIndex].Name);
     end  else if (components[comIndex] is TwwDBLookupComboDlg) then
       if TwwDBLookupComboDlg(components[comIndex]).LookupTable <> nil then
         TwwDBLookupComboDlg(components[comIndex]).LookupTable.Open
         else errorex('Lookup table did not define component name ='+components[comIndex].Name);

   end;

end;
procedure TBaseUIMasterDetailForm.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if ActiveControl is TwwDBGrid then
begin
   detailActive:=true;
   ActiveDataSet :=dsDetail.DataSet;
  end
else
begin
  detailActive:=false;
     ActiveDataSet :=dsMaster.DataSet;

end;

    case Key of
    VK_F1:
      IF (activeControl is TwwDBLookupComboDlg)  then
      begin
        TwwDBLookupComboDlg(activeControl).Show;
      end;

    VK_ESCAPE:
      if (activeControl is TwwDBGrid) or (activeControl.Tag <0 ) then
      begin
          detailActive:=true;
          doCancel(dtsDetail);

      end
       else
       begin
         doCancel(dtsmaster);
          detailActive:=false;
       end;


     VK_F7:
      if (activeControl is TwwDBGrid) or (activeControl.Tag <0 ) then
      begin
          doInsert(dtsDetail);
          activeControl.SetFocus;
          detailActive:=true;
      end
       else
       begin
          doInsert(dtsmaster);
          detailActive:=false;
       end;
     VK_F8:
        if (activeControl is TwwDBGrid) or (activeControl.Tag <0 ) then
          doEdit(dtsDetail)
       else
       begin
         doEdit(dtsmaster);
        // info('get command edit master data');
       end;
     VK_F9:
           if (activeControl is TwwDBGrid) or (activeControl.Tag <0 ) then
           BEGIN
            TwwDBGrid(activeControl).SetFocus;
            doPost(dtsDetail) ;
           TIBTable(dtsDetail).Transaction.CommitRetaining;
          END
       else
       begin
         doPost(dtsmaster);
          TIBTable(dtsmaster).Transaction.CommitRetaining;
       end;
       VK_F11:
     IF (ActiveControl is TwwDBLookupComboDlg) then
     begin
       TwwDBLookupComboDlg(ActiveControl).DropDown;

     end;
   




  end;

  end;
procedure TBaseUIMasterDetailForm.doCancel(dataSet:TDataSet);
begin
  if (dataset.State in [dsInsert,dsEdit]) then
    if confirm('Do you want to cancel changes?')=mrYes then
      dataset.Cancel;

end;
procedure TBaseUIMasterDetailForm.doBeforeInsert (dataSet:TDataSet);
begin
   canModify:=true;
   if (detailActive) then
     if (dtsmaster.State in [dsInsert,dsEdit]) then
     begin
       //Warning();
       if (confirm('You are modifing document header. Please commit changes before insert detail data?')=mrYes) then
          doPost(dtsMaster)
       else
       if (DefaultFocusedControl<>nil) then
       begin
          DefaultFocusedControl.SetFocus;
          canModify:=false;
       end;
     end
     else
     begin
          wwDBGrid1.SetActiveField(wwDBGrid1.Columns[0].FieldName);
     end;
end;
procedure TBaseUIMasterDetailForm.doInsert(dataSet:TDataSet);
begin
  doBeforeInsert(dataSet);
  dataset.Append;

end;
procedure  TBaseUIMasterDetailForm.doBeforeEdit(dataSet:TDataSet);
begin
    doBeforeInsert(dataSet);
end;
procedure TBaseUIMasterDetailForm.doDelete(dataset:TDataSet);
begin
if confirm('Do you want to Delete?')=mrYes then
begin
  if (dtsDetail.RecordCount =0) then
     dataset:= dtsMaster;
  dataset.Delete;
end;

end;
procedure TBaseUIMasterDetailForm.doEdit(dataSet:TDataSet);
begin
  if (dataset.State = dsBrowse) then
  begin
    if (canModify) then
      dataset.Edit;
  end
end;
procedure TBaseUIMasterDetailForm.doPost(dataSet:TDataSet);
begin
 if (dataset.State IN [dsEdit,dsInsert]) then
 begin
  doBeforePost(dataSet);
   if (canPost) then
   begin
    dataset.Post;
     TIBTable(dtsmaster).Transaction.CommitRetaining;
    changeEditFontColor(clBlack) ;
  //  info('Successfuly save data');
   end;
 end;
end;

procedure    TBaseUIMasterDetailForm.doBeforeWindowClose ;
begin
  if (dtsmaster <> nil ) and (dtsDetail <> nil) then
 begin
  if (dtsmaster.Modified) then
      if confirm('You have pending master save data. Do you want to save?')=mrYes then
      begin
          dtsMaster.Post;
          TIBTable(dtsmaster).Transaction.CommitRetaining;
      end
      else                 //11 nov,2010 add rollback support case.
      begin
          dtsMaster.Cancel;
          TIBTable(dtsmaster).Transaction.RollbackRetaining;
      end;
  if (dtsDetail.modified) then
     if confirm('You have pending detail save data. Do you want to save?')=mrYes then
      begin
       dtsDetail.Post;
        TIBTable(dtsdetail).Transaction.CommitRetaining;
     end
     else      //11 nov,2010 add rollback support case.
     begin
        dtsDetail.Cancel  ;
        TIBTable(dtsdetail).Transaction.RollbackRetaining;
     end;



  end;

   dtsmaster.Close;
   dtsdetail.Close;
end;

procedure TBaseUIMasterDetailForm.wwDBGrid1Enter(Sender: TObject);
begin
  inherited;
  if (dtsMaster.Modified) then
  begin
     if (confirm('You have been modifing header data! Please save pending transaction before edit detail data?')=mrYes) then
     begin
        doPost(dtsMaster)   ;
     end
     else if (defaultFocusedControl<>nil) then
     begin
        DefaultFocusedControl.SetFocus;
        detailActive:=false;
     end;
  end
  else
  begin
    detailActive:=true;
    ActiveDataSet :=dtsDetail;
  end;
end;

procedure TBaseUIMasterDetailForm.wwDBGrid1Exit(Sender: TObject);
begin
  detailActive:=false;
end;

procedure TBaseUIMasterDetailForm.dsMasterStateChange(Sender: TObject);
var stateText:String;
begin
  if (dsMaster.DataSet <> nil) then
  begin
    case  dsMaster.DataSet.State of
        dsEdit:stateText:='Editing..';
        dsInsert:stateText:='Inserting..';
        dsBrowse:stateText:='Displaying..';
        dsOpening:stateText:='Opening..';
    end;
  if dsMaster.DataSet.State = dsEdit then
  begin
    changeEditFontColor(clRed)  ;
    //statusbar1.Panels[0].Text:='Editing Master data';
   // StateText :='Editing..';
    detailActive:=FALSE;
  end
  else   if dsMaster.State = dsInsert then
  begin
    changeEditFontColor(clBlue);
  //  statusbar1.Panels[0].Text:='Inserting Master data';
    //stateText:='Inserting...';
    detailActive:=FALSE;
  end  else
  begin
       changeEditFontColor(clBlack)  ;

  end       ;
   statusbar1.Panels[0].Text:=stateText+' Master Data'  ;
 end else
 begin
  //  errorEx('Master data is null');
 end;
end;

procedure TBaseUIMasterDetailForm.dsDetailStateChange(Sender: TObject);
var stateText:String;
begin
    case  dsMaster.DataSet.State of
        dsEdit:stateText:='Editing..';
        dsInsert:stateText:='Inserting..';
        dsBrowse:stateText:='Displaying..';
        dsOpening:stateText:='Opening..';
    end;

  if (detailActive) then
  begin
  if dsDetail.State = dsEdit then
  begin
     changeEditFontColor(clRed)  ;
         //  detailActive:=TRUE;
  end
    else   if dsDetail.State = dsInsert then
    begin
          changeEditFontColor(clBlue);
            //    detailActive:=TRUE;
    end
    else
    begin
          changeEditFontColor(clBlack)  ;
    end;
 end;
 statusbar1.Panels[1].Text:=stateText+' Detail Data'  ;


end;

procedure TBaseUIMasterDetailForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  doBeforeWindowClose;

end;

end.
