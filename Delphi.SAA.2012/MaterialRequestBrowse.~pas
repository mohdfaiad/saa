unit MaterialRequestBrowse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, ComCtrls, ActnList, XPStyleActnCtrls, ActnMan, Grids,
  DBGrids, ToolWin,DB,MaterialRequest, Wwdbigrd, Wwdbgrid, StdCtrls,
  StdStyleActnCtrls, ExtCtrls, fcStatusBar;


const materialPostAccountCode :String ='PLMODULE';
const materialPostModule :String ='PL';
const materialPostMode :String ='O';
type
  TMaterialRequestBrowseForm = class(TBaseUIForm)
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    ActionManager1: TActionManager;
    actEdit: TAction;
    actPrint: TAction;
    actPost: TAction;
    actExit: TAction;
    Button5: TButton;
    actNew: TAction;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actEditExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    selectedDocument:String;
    success:boolean;
    procedure setStatusBar(msg:String);
    procedure initComponents;
  public
    { Public declarations }
  end;

var
  MaterialRequestBrowseForm: TMaterialRequestBrowseForm;
  dataSet:TDataSet;
  MaterialEdit:TMaterialRequestForm;

implementation

uses WareHouseDM,progress,RuntimeController;{Unposted material Request}

{$R *.dfm}

procedure TMaterialRequestBrowseForm.DBGrid1DblClick(Sender: TObject);
begin
  actEditExecute(Sender);

end;

procedure TMaterialRequestBrowseForm.FormCreate(Sender: TObject);
begin
  inherited;
  dataSet := wwDBGrid1.DataSource.DataSet;
  wwDBGrid1.DataSource.DataSet.Open;
  initComponents;


end;
procedure TMaterialRequestBrowseForm.initComponents;
begin
  keyPreview:=true;
end;

procedure TMaterialRequestBrowseForm.wwDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  wwDBGrid1.SelectRecord;

end;

procedure TMaterialRequestBrowseForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   wwDBGrid1.DataSource.DataSet.Close


end;
procedure TMaterialRequestBrowseForm.setStatusBar(msg:String);
begin
  StatusBar1.panels[1].Text:=msg;
end;

procedure TMaterialRequestBrowseForm.actEditExecute(Sender: TObject);
begin

  SelectedDocument:=dataSet.FieldByName('DOC_NO').AsString;
  try
    cursor :=crSQLWait;
      setStatusBar('Opening material Request window ['+SelectedDocument+']');
    //open material edit from with edit mode
    MaterialEdit :=TMaterialRequestForm.create(self,SelectedDocument,'DOC_NO',1);
    MaterialEdit.ShowModal;
   // RController.commit;
    MaterialEdit.Free;
  finally
    setStatusBar('Ready');
    cursor :=crDefault;
  end;
end;

procedure TMaterialRequestBrowseForm.actExitExecute(Sender: TObject);
begin
   Close;

end;

procedure TMaterialRequestBrowseForm.actNewExecute(Sender: TObject);
begin
   try
   cursor :=crSQLWait;
    setStatusBar('Opening material Request window ['+SelectedDocument+']');
     MaterialEdit :=TMaterialRequestForm.create(self,SelectedDocument,'DOC_NO',0);
    MaterialEdit.ShowModal;
    RController.commit;
    MaterialEdit.Free;
     dataset.Close;
     dataSet.Open;
  finally
    setStatusBar('Ready');
    cursor :=crDefault;
  end;

end;

procedure TMaterialRequestBrowseForm.actPostExecute(Sender: TObject);


begin
if(wwDBGrid1.IsSelectedRecord ) then
begin
  selectedDocument:= dataSet.FieldByName('DOC_NO').AsString;
if MessageDlg('Do you want to post ['+selectedDocument+']?',mtConfirmation,[mbOK,mbCancel],0)=mrOK then
begin
    try
       Screen.cursor :=crSQLWait;
      if (WarehouseDataManager<> nil) then
      begin
        ProgressDialog :=TProgressDialog.Create(SELF,'Material request is Posting'+selectedDocument,5);
        ProgressDialog.Show;
        ProgressDialog.doneFor(15);
        ProgressDialog.Update;
        success:=WarehouseDataManager.postMaterialRequest(materialPostAccountCode,
                                                  dataSet.FieldByName('DOC_NO').AsString,
                                                  dataSet.FieldByName('DOC_DATE').AsDateTime,
                                                  WarehouseDataManager.User.userid,
                                                  materialPostModule,
                                                  materialPostMode  );

        ProgressDialog.doneFor(25);

        ProgressDialog.Update;
        dataSet.Close;
        ProgressDialog.doneFor(50);
        ProgressDialog.update;
        dataSet.Open;
        ProgressDialog.doneFor(75);
      end
      else
      begin
        MessageDlg('Null object! no warehouse data manager found',mtError,[mbCancel],0);
      end;
    finally
      ProgressDialog.success;
      Screen.cursor:=crDefault;
      ProgressDialog.Close;

      if  (success) then
      begin
        MessageDlg(selectedDocument+' has already posted',mtInformation,[mbOK],0);
        rcontroller.commit;
      end;
    end;
end ;
end
else
begin
   MessageDlg('No record has been selected!',mtWarning,[mbCancel],0);
end;

end;

procedure TMaterialRequestBrowseForm.wwDBGrid1RowChanged(Sender: TObject);
begin
 selectedDocument:= dataSet.FieldByName('DOC_NO').AsString;
  statusbar1.Panels[0].Text:='Selected['+selectedDocument+']';

end;

procedure TMaterialRequestBrowseForm.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (wwDBGrid1.IsSelected) then
    if (key = #13) then
          actEditExecute(sender);//trigger open edit

end;

procedure TMaterialRequestBrowseForm.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = vk_f5) then
  begin
    wwDBGrid1.datasource.DataSet.Close;
    wwDBGrid1.datasource.DataSet.open;
  end else
  if (key = vk_return) then
  begin
    // actEditExecute(sender);
  end;
end;

end.
