unit CustomerRequirementManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractcxDataBrowse, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxBar, Menus,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, fcStatusBar,
  cxGridBandedTableView, cxGridDBBandedTableView, cxMemo, cxContainer,
  cxTextEdit, cxDBEdit, DBGrids, DBCtrls, CustomerRequirementCardViewFrame,
  ComCtrls;

type
  TfrmCustomerRequirementManager = class(TcxAbstractDataBrowse)
    dsCustomerNote: TDataSource;
    cxGridDBTableViewDEBTOR_ACCT: TcxGridDBColumn;
    cxGridDBTableViewNAME: TcxGridDBColumn;
    cxGridDBTableViewTH_NAME: TcxGridDBColumn;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1REQUIREMENTNOTE: TcxGridDBColumn;
    cxGridDBTableView1UPDATE_USER: TcxGridDBColumn;
    cxGridDBTableView1UPDATE_DATE: TcxGridDBColumn;
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxDBMemo1: TcxDBMemo;
    frameCustomerRequirementCardView1: TframeCustomerRequirementCardView;
    wwDBGrid1: TwwDBGrid;
    Button1: TButton;
    procedure PageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxDBMemo1Enter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dsCustomerNoteStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure setupDatasets;override;
      procedure doPostAction(Sender: TObject);override;
      procedure doRefreshAction(Sender: TObject);override;
      procedure executeExport(Sender:TObject);
  end;

var
  frmCustomerRequirementManager: TfrmCustomerRequirementManager;

implementation
uses productionplanDataModule, AbstractDataBrowse, BaseForm, ComObj;

{$R *.dfm}

procedure TfrmCustomerRequirementManager.doPostAction(Sender: TObject);
begin
    if (dsCustomerNote.DataSet.state in [dsEdit,dsInsert]) then
    begin
       dsCustomerNote.DataSet.Post;
       fsuccess :=true;
    end
   
end;

procedure TfrmCustomerRequirementManager.doRefreshAction(Sender: TObject);
begin
  inherited;
   dsCustomerNote.DataSet.close;
   dsCustomerNote.DataSet.open;
   frameCustomerRequirementCardView1.DataSource1.DataSet.Close;
   frameCustomerRequirementCardView1.DataSource1.DataSet.open;


end;

procedure  TfrmCustomerRequirementManager.setupDatasets;
begin
    inherited;
    dsCustomerNote.DataSet := ProductionDM.tbCustomerRequirementNote;
    Datasource.DataSet := productionDM.qryCustomer;
    Datasource.DataSet.Open   ;
    dsCustomerNote.DataSet.Open;


end;




procedure TfrmCustomerRequirementManager.PageControl1Change(
  Sender: TObject);
begin
    frameCustomerRequirementCardView1.DataSource1.DataSet.Close;
    frameCustomerRequirementCardView1.DataSource1.DataSet.open;

end;

procedure TfrmCustomerRequirementManager.FormCreate(Sender: TObject);
begin
  inherited;
   // productionDM.
    newAction.visible :=false;
    newAction.Enabled :=false;
    editAction.Visible :=false;
    editAction.Enabled :=false;
    postAction.ShortCut := VK_F9;
  //  Datasource.DataSet.Open   ;
   // dsCustomerNote.DataSet.Open;
    PageControl1.ActivePage := TabSheet1;

end;

procedure TfrmCustomerRequirementManager.cxDBMemo1Enter(Sender: TObject);
begin
 //  dsCustomerNote.DataSet.Open;

end;

procedure TfrmCustomerRequirementManager.executeExport(Sender: TObject);
{   XlWBATemplate   }
CONST
    xlWBATChart   =   -4109;
    xlWBATExcel4IntlMacroSheet   =   4;
    xlWBATExcel4MacroSheet   =   3;
    xlWBATWorksheet   =   -4167;
var
  bm: TBookmark;
  col, row: Integer;
  sline: String;
  mem: TMemo;
  ExcelApp: Variant;
begin
  Screen.Cursor := crHourglass;
  wwDBGrid1.DataSource.DataSet.DisableControls;
  bm := wwDBGrid1.DataSource.DataSet.GetBookmark;
  wwDBGrid1.DataSource.DataSet.First;

  // create the Excel object
  if true then
  begin
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Add(xlWBATWorksheet);

   // ExcelApp.workbook.add(xlW)
    ExcelApp.WorkBooks[1].WorkSheets[1].Name := 'Grid Data';
  end;

  // First we send the data to a memo
  // works faster than doing it directly to Excel
  mem := TMemo.Create(Self);
  mem.Visible := false;
  mem.Parent := frmCustomerRequirementManager;
  mem.Clear;
  sline := '';

  // add the info for the column names
  for col := 0 to wwDBGrid1.FieldCount-1 do
    sline := sline + WWDBGrid1.Fields[col].DisplayLabel + #9;
  mem.Lines.Add(sline);

  // get the data into the memo
  for row := 0 to wwDBGrid1.DataSource.DataSet.RecordCount-1 do
  begin
    sline := '';
    for col := 0 to wwDBGrid1.FieldCount-1 do
      sline := sline + WWDBGrid1.Fields[col].AsString + #9;
    mem.Lines.Add(sline);
    wwDBGrid1.DataSource.DataSet.Next;
  end;

  // we copy the data to the clipboard
  mem.SelectAll;
  mem.CopyToClipboard;

  // if needed, send it to Excel
  // if not, we already have it in the clipboard
  if TRUE then
  begin
    ExcelApp.Workbooks[1].WorkSheets['Grid Data'].Paste;
    ExcelApp.Visible := true;
  end;

  FreeAndNil(ExcelApp);
  wwDBGrid1.DataSource.DataSet.GotoBookmark(bm);
  wwDBGrid1.DataSource.DataSet.FreeBookmark(bm);
  wwDBGrid1.DataSource.DataSet.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfrmCustomerRequirementManager.Button1Click(Sender: TObject);
begin
  inherited;
 // StatusBar1.Panels[2].Text:=IntToStr(cxDBMemo1.Lines.)  ;
  wwDBGrid1.ExportOptions.FileName:='.\export.csv';
 wwDBGrid1.ExportOptions.Save;
 wwDBGrid1.ExportOptions.Save;
 ShowMessage('Data has been exported to '+Application.GetNamePath+wwDBGrid1.ExportOptions.FileName);

end;

procedure TfrmCustomerRequirementManager.dsCustomerNoteStateChange(
  Sender: TObject);
begin
  //inherited;
  // postAction.Enabled := dsCustomerNote.State in [dsInsert,dsEdit];
   if (dsCustomerNote.State in [dsInsert,dsEdit]) then
   begin
     cxDBMemo1.Style.Font.Color := clRed;
     postAction.Enabled := true;
   end else
   begin
     cxDBMemo1.Style.Font.Color := clWindowText;
     postAction.Enabled := false;

   end;
end;

end.
