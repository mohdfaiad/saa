unit MeltSheetTemplateImportPopupForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, fcStatusBar, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DB,
  StdCtrls,Dialogutils;

type
  TfrmMeltSheetImportTemplatePopup = class(TBaseUIForm)
    datasource: TDataSource;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    btImport: TButton;
    btExit: TButton;
    btDelete: TButton;
    btSave: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btImportClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btDeleteClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure datasourceDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMeltSheetImportTemplatePopup: TfrmMeltSheetImportTemplatePopup;

implementation

uses productionPlanDataModule;

{$R *.dfm}

procedure TfrmMeltSheetImportTemplatePopup.FormCreate(Sender: TObject);
begin
  inherited;
  datasource.DataSet :=  ProductionDM.tbPLElementTemplate;
  datasource.DataSet.open;
end;

procedure TfrmMeltSheetImportTemplatePopup.btImportClick(Sender: TObject);
begin
  MODALRESULT:= MROK;

end;

procedure TfrmMeltSheetImportTemplatePopup.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF KEY = VK_F2 THEN
   BEGIN
    //  frmMeltSheet.QADataSet:= datasource.DataSet;
       // frmMeltSheet.QADataSet.
     // frmMeltSheet.QADataSet.Open;
      MODALRESULT:= MROK;
   END else     IF KEY = VK_F9 THEN  DATASOURCE.DataSet.Post
    else if (key =VK_ESCAPE) then
      close;
  //inherited;

end;

procedure TfrmMeltSheetImportTemplatePopup.btDeleteClick(Sender: TObject);
begin
  if confirm('Are you want to delete this item') =mrYes then
    Datasource.DataSet.Delete;
end;

procedure TfrmMeltSheetImportTemplatePopup.btSaveClick(Sender: TObject);
begin
   if confirm('Are you want to save this item') =mrYes then
           Datasource.DataSet.Post;
end;

procedure TfrmMeltSheetImportTemplatePopup.datasourceDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if (datasource.State  = dsEdit) then
     wwDBGrid1.Font.Color :=clRed
  ELSE  wwDBGrid1.Font.Color :=clBlack;
end;

end.
