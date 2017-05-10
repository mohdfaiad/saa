unit MaterialRequest;
{
Note:
 14 June,2008
  -make sure all lookup componants in wwdbgrid mark tag property to -1 or less
  than zero.

}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMasterDetail, DB, DBCtrls, Grids, DBGrids, ExtCtrls,
  ComCtrls, Wwdbigrd, Wwdbgrid, StdCtrls, wwriched, wwdblook,
  wwdbdatetimepicker, Mask, wwdbedit, wwSpeedButton, wwDBNavigator, wwclearpanel,
  Buttons,IBTable, Wwdbdlg, fcStatusBar, ActnList, XPStyleActnCtrls,
  ActnMan, Menus,dialogUtils, cxLookAndFeelPainters, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit;



type
  TMaterialRequestForm = class(TBaseUIMasterDetailForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edDocNo: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    DBText1: TDBText;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1Button1: TwwNavButton;
    PopupMenu1: TPopupMenu;
    Insert1: TMenuItem;
    Delete1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    DeleteAll1: TMenuItem;
    Save1: TMenuItem;
    popupMenusActionMgr: TActionManager;
    DeleteAllAction: TAction;
    DBMemo1: TDBMemo;
    actExit: TAction;
    actExcel: TAction;
    N3: TMenuItem;
    DeleteAll2: TMenuItem;
    Panel2: TPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwDBNavigator2First: TwwNavButton;
    wwDBNavigator2PriorPage: TwwNavButton;
    wwDBNavigator2Prior: TwwNavButton;
    wwDBNavigator2Next: TwwNavButton;
    wwDBNavigator2NextPage: TwwNavButton;
    wwDBNavigator2Last: TwwNavButton;
    wwDBNavigator2Insert: TwwNavButton;
    wwDBNavigator2Delete: TwwNavButton;
    wwDBNavigator2Edit: TwwNavButton;
    wwDBNavigator2Post: TwwNavButton;
    wwDBNavigator2Cancel: TwwNavButton;
    wwDBNavigator2Refresh: TwwNavButton;
    wwDBNavigator2SaveBookmark: TwwNavButton;
    wwDBNavigator2RestoreBookmark: TwwNavButton;
    lookupLotNo: TwwDBLookupComboDlg;
    LookupComboDlgStockDetailLink: TwwDBLookupComboDlg;
    GroupBox1: TGroupBox;
    monthOfPO: TcxSpinEdit;
    yearOfPO: TcxSpinEdit;
    btStockReservedReset: TcxButton;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure LookupComboDlgStockDetailLinkEnter(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure DeleteAllActionExecute(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure dsHeaderStateChange(Sender: TObject);
    procedure DataSource2StateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure btStockReservedResetClick(Sender: TObject);
  private
    { Private declarations }
    fdocNo:String;
    dataMode:DataState;
    procedure initcomponents;
  public
    // constructor Create(AOwner: TComponent); overload;
   // constructor create;override;
    constructor create(AOwner:TComponent;documentNo:String;keyColumn:String;mode:integer); overload;
    destructor Destroy; overload;
    procedure setupDataSets; override;



    { Public declarations }
  end;

var
  MaterialRequestForm: TMaterialRequestForm;
 // stockReservedForm:TStockReservedForm;
 dtsMelts :TDataSet;

implementation
uses
 WareHouseDM,StockReserved;

{$R *.dfm}

constructor TMaterialRequestForm.create(AOwner:TComponent;documentNo:String;keyColumn:String;mode:integer);
begin
    // inherited create(Aowner);
  

     inherited create(Aowner,documentNo,keyColumn,mode);
     dtsMelts:=   wwDBLookupCombo1.LookupTable;
     dtsMelts.Open;
     initcomponents;

    // wwDBLookupCombo1.LookupTable.Active:=true;

end;
procedure TMaterialRequestForm.setupDataSets;
begin
     dsMaster.DataSet := WarehouseDataManager.tbMaterialRequestHD;
     dsDetail.DataSet :=WarehouseDataManager.tbMaterialRequestDT;
end;
destructor    TMaterialRequestForm.Destroy;
begin

  
end;


procedure TMaterialRequestForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtsmaster.Filter:='';
  dtsMaster.filtered:=false;
  dtsMaster.Close;
  dtsdetail.close;
  Action:=caFree;
end;
procedure TMaterialRequestForm.initcomponents;
begin
  wwDBNavigator1.ShowHint:=true;
  wwDBNavigator2.ShowHint:=true;

  ActiveControl:=edDocNo;
  dsDetail.AutoEdit:=true;
  //wwDBGrid1.a

 

end;
procedure TMaterialRequestForm.wwDBGrid1DblClick(Sender: TObject);
begin
  //MessageDlg(WarehouseDataManager.qryStockOnhandDetailLink.SQL.Text,mtInformation,[mbok],0);
 StockReservedForm := TStockReservedForm.create(self,dtsDetail.fieldByName('LOT_NO').AsString);
 StockReservedForm.ShowModal;
 StockReservedForm.Free;


end;

procedure TMaterialRequestForm.LookupComboDlgStockDetailLinkEnter(
  Sender: TObject);
begin
try
  cursor :=crSQLWait;
  LookupComboDlgStockDetailLink.LookupTable.Close;
  LookupComboDlgStockDetailLink.LookupTable.open;
  finally
  cursor :=crDefault;
  end;

end;

procedure TMaterialRequestForm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
   WarehouseDataManager.qryMaterialRequestTotal.active:= False;
   WarehouseDataManager.qryMaterialRequestTotal.ParamByName('doc_no').asString:= dtsMaster.FieldByName('doc_No').asString;
   WarehouseDataManager.qryMaterialRequestTotal.active:= True;
   wwDBGrid1.ColumnByName('Qty').FooterValue:=
      FloatToStrF(WarehouseDataManager.qryMaterialRequestTotal.FieldByName('total_qty').asFloat, ffNumber, 10, 2);
   wwDBGrid1.ColumnByName('Total_Cost').FooterValue:=
      FloatToStrF(WarehouseDataManager.qryMaterialRequestTotal.FieldByName('total_cost').asFloat, ffNumber, 10, 2);

    wwDBGrid1.ColumnByName('unit_cost').FooterValue:='Total :' ;
    wwDBGrid1.Columns[0].FooterValue:='Total Record';
    wwDBGrid1.Columns[2].FooterValue:=IntToStr( WarehouseDataManager.qryMaterialRequestTotal.FieldByName('total_records').AsInteger) +'(records)';
end;

procedure TMaterialRequestForm.Delete1Click(Sender: TObject);
begin
 wwDBNavigator2Delete.Click;

end;

procedure TMaterialRequestForm.Save1Click(Sender: TObject);
begin
  if (dtsDetail.State  in [ dsEdit,dsInsert]) then
    wwDBNavigator2Post.Click;

end;

procedure TMaterialRequestForm.DeleteAllActionExecute(Sender: TObject);
var totalDelete:integer;
begin
  Screen.Cursor:=crSQLWait;
  if (MessageDlg('Are you sure? Do you want to delete all records?',mtWarning,[mbOK,MBCancel],1)=mrOK) then
  begin
    try
      if (fdocumentNo='') then warning('Document is blank')
     else WarehouseDataManager.deleteAllMaterialRequest(fdocumentNo);
    finally
      dtsdetail.close;
      dtsdetail.Open;
    end;

  end else MessageDlg('Delete cancel',mtInformation,[mbok],0);
 screen.Cursor:=crDefault;
end;

procedure TMaterialRequestForm.Insert1Click(Sender: TObject);
begin
 doInsert(dtsDetail);

end;

procedure TMaterialRequestForm.actExitExecute(Sender: TObject);
begin
  close;

end;

procedure TMaterialRequestForm.dsHeaderStateChange(Sender: TObject);
begin
  inherited;
  if (dsMaster.State in [dsInsert,dsEdit]) then
    statusbar1.Panels[1].text:='Modifying header data'
  else statusbar1.Panels[1].text:=''
end;

procedure TMaterialRequestForm.DataSource2StateChange(Sender: TObject);
begin
  inherited;
 if (dsDetail.State in [dsEdit,dsInsert]) then
     statusbar1.Panels[0].Text :='Editing data'
  else statusbar1.Panels[0].Text :='Display data';
end;

procedure TMaterialRequestForm.FormCreate(Sender: TObject);
begin
  inherited;
   activeControl:=edDocNo;
end;

procedure TMaterialRequestForm.actExcelExecute(Sender: TObject);
begin
    doGridExport;

end;

procedure TMaterialRequestForm.btStockReservedResetClick(Sender: TObject);
begin
  if (confirm( Format('Do you want to reset stock reserved for year =%s month =%s?',[yearOfPo.value,monthOfPO.Value]))   =mrYes )
  then
  begin
        Try
            Screen.Cursor := crSQLWait;
            try
              WarehouseDataManager.spAutoStockReservedReset.Close;
              WarehouseDataManager.spAutoStockReservedReset.ParamByName('ayear').Value := yearofpo.value;
              WarehouseDataManager.spAutoStockReservedReset.ParamByName('amonth').Value := monthofpo.value;
              WarehouseDataManager.spAutoStockReservedReset.ExecProc;
             except on e:exception do
                errorEx('Could not reset stock reserved '+e.Message);

            end;

        finally
            Screen.cursor :=crDefault;
            info(format('Successful reset stock reserved for year =%s month =%s?',[yearOfPo.Value,monthOfPO.Value]))  ;
        end;
  end else
  begin
      warning('Action Canceled');
  end;

end;

end.
