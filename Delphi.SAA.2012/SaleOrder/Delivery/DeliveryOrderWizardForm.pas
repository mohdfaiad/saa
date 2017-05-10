unit DeliveryOrderWizardForm;

{
TODO : Recheck below method need to add condition to check if no of melt = total row in so_order_dt hennce needless to perform action.
21-9-2014 - frmDeliveryOrderWizard.actionSynchronizeExecute(
  Added-enterAsTab in meltDeliveryOrderGrid.
}


interface

uses
  Windows, Messages,  Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwSpeedButton, wwDBNavigator, ExtCtrls, wwclearpanel, ComCtrls,
  ToolWin, ImgList, wwDialog, wwidlg, cxPC, fcStatusBar, cxControls,
  StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Grids, Wwdbigrd, Wwdbgrid, cxTextEdit,
  cxContainer, cxDBEdit, Buttons,Dialogutils, wwdblook, Wwdbdlg,stringutils,
  cxMemo, ActnList, XPStyleActnCtrls, ActnMan, Menus, DBGrids,SysUtils;

type
  TfrmDeliveryOrderWizard = class(TForm)
    cxPageControlMain: TcxPageControl;
    fcStatusBar1: TfcStatusBar;
    cxTabSheetMeltStock: TcxTabSheet;
    wwLookupDialog1: TwwLookupDialog;
    wwLookupDialog2: TwwLookupDialog;
    wwLookupDialog3: TwwLookupDialog;
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    GroupBox3: TGroupBox;
    wwDBGridMelt: TwwDBGrid;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    Splitter1: TSplitter;
    cxPageControlLink: TcxPageControl;
    cxTabSheetLinkCurrent: TcxTabSheet;
    cxTabSheetLinkAll: TcxTabSheet;
    cxTabPageOrder: TcxTabSheet;
    wwDBNavigator2: TwwDBNavigator;
    wwDBNavigator2First: TwwNavButton;
    wwDBNavigator2PriorPage: TwwNavButton;
    wwDBNavigator2Prior: TwwNavButton;
    wwDBNavigator2Next: TwwNavButton;
    wwDBNavigator2NextPage: TwwNavButton;
    wwDBNavigator2Last: TwwNavButton;
    wwDBNavigator2Insert: TwwNavButton;
    wwDBNavigator2Edit: TwwNavButton;
    wwDBNavigator2Post: TwwNavButton;
    wwDBNavigator2Cancel: TwwNavButton;
    wwDBNavigator2Refresh: TwwNavButton;
    wwDBNavigator2SaveBookmark: TwwNavButton;
    wwDBNavigator2RestoreBookmark: TwwNavButton;
    wwDBGridOrder: TwwDBGrid;
    Splitter2: TSplitter;
    GroupBox4: TGroupBox;
    dsOrder: TDataSource;
    dsAll: TDataSource;
    dsLink: TDataSource;
    dsMelt: TDataSource;
    cxGridAll: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    Label5: TLabel;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox5: TGroupBox;
    btnValidate: TBitBtn;
    btnAddWeight: TBitBtn;
    lbTotalCharged: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxWeightInput: TcxMemo;
    btnClear: TBitBtn;
    cxGridDBTableView1BUNDLE_NO: TcxGridDBColumn;
    cxGridDBTableView1ORDER_NO: TcxGridDBColumn;
    cxGridDBTableView1ORDER_DATE: TcxGridDBColumn;
    cxGridDBTableView1ITEM_CODE: TcxGridDBColumn;
    cxGridDBTableView1DESCS: TcxGridDBColumn;
    cxGridDBTableView1UOM: TcxGridDBColumn;
    cxGridDBTableView1MELT_NO: TcxGridDBColumn;
    cxGridDBTableView1REF_NO: TcxGridDBColumn;
    cxGridDBTableView1REF_DATE: TcxGridDBColumn;
    cxGridDBTableView1DET_QTY: TcxGridDBColumn;
    cxGridDBTableView1UNIT_COST: TcxGridDBColumn;
    cxGridDBTableView1TOTAL_AMT: TcxGridDBColumn;
    cxGridDBTableView1DELIVERY_NO: TcxGridDBColumn;
    cxGridDBTableView1DELIVERY_DATE: TcxGridDBColumn;
    cxGridDBTableView1CUST_CODE: TcxGridDBColumn;
    cxGridDBTableView1TAX_AMT: TcxGridDBColumn;
    cxGridDBTableView1TAX_CD: TcxGridDBColumn;
    cxGridDBTableView1ORDER_QTY: TcxGridDBColumn;
    cxGridDBTableView1ONHAND_QTY: TcxGridDBColumn;
    cxGridDBTableView1MARK_UP: TcxGridDBColumn;
    cxGridDBTableView1MARK_UP_QTY: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    DeleteCurrentLine1: TMenuItem;
    N1: TMenuItem;
    InsertLine1: TMenuItem;
    N2: TMenuItem;
    Refresh1: TMenuItem;
    ActionManager1: TActionManager;
    ActionDelete: TAction;
    ActionInsert: TAction;
    ActionRefresh: TAction;
    ToolBar1: TToolBar;
    tbSynchronizeExit: TToolButton;
    tbExit: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    actionSynchronize: TAction;
    dsLinkAll: TDataSource;
    Splitter3: TSplitter;
    dsMeltSummary: TDataSource;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2MELT_NO: TcxGridDBColumn;
    cxGridDBTableView2REF_NO: TcxGridDBColumn;
    cxGridDBTableView2REF_DATE: TcxGridDBColumn;
    cxGridDBTableView2BUNDLE_NO: TcxGridDBColumn;
    cxGridDBTableView2QTY: TcxGridDBColumn;
    cxGridDTLink: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    DeleteAll1: TMenuItem;
    ActionDeleteAll: TAction;
    ActionAddweight: TAction;
    ActionValidate: TAction;
    wwDBNavigator2Button: TwwNavButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnValidateClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnAddWeightClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDTLinkDBTableView1CustomDrawFooterCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure ActionDeleteExecute(Sender: TObject);
    procedure ActionInsertExecute(Sender: TObject);
    procedure ActionRefreshExecute(Sender: TObject);
    procedure actionSynchronizeExecute(Sender: TObject);
    procedure tbExitClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure wwDBGridMeltUpdateFooter(Sender: TObject);
    procedure wwDBGridMeltEnter(Sender: TObject);
    procedure ActionDeleteAllExecute(Sender: TObject);
    procedure cxPageControlMainPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure ActionAddweightExecute(Sender: TObject);
    procedure ActionValidateExecute(Sender: TObject);
    procedure cxPageControlMainChange(Sender: TObject);
  private
    { Private declarations }

    refDataSet:TDataSet   ;
    weightInputList:TStringList;
    totalBundle:integer;
    ready:boolean;
    totalchargedWeight:double;
    manualaddData:boolean;

    procedure openDataset;
    procedure closedataset;

    function validateWeightInput:boolean;
    function validateMarkup:boolean;
    function validateOnhand:boolean;

    function allowtosynchronize:boolean;

    function getWeightInput(aString:TStringlist):double;

   // procedure
  public
    { Public declarations }

    procedure datalinkOnNewRecord(DataSet:TDataSet);

    constructor Create(AOwner : TComponent; ADataSet : TDataSet; ACaption : string ); overload;

  end;

var
  frmDeliveryOrderWizard: TfrmDeliveryOrderWizard;


implementation

uses saleorderDatamodule,DeliveryORDERITEMLINKPOPUPForm, Math;

{$R *.dfm}


constructor   TfrmDeliveryOrderWizard.Create(AOwner : TComponent; ADataSet : TDataSet; ACaption : string);
begin
   inherited   Create(AOwner) ;
   refDataSet := adataset  ;
   totalBundle :=0;
   ready :=false;
   manualaddData :=true;

   cxPageControlMain.ActivePageIndex:=0;
end;

procedure  TfrmDeliveryOrderWizard.datalinkOnNewRecord(DataSet:TDataSet);
begin
  if (manualaddData=true)  then
  // ActionInsertExecute(dataset);
end;

procedure  TfrmDeliveryOrderWizard.opendataset;
begin
  try
      dsOrder.dataset := SaleOrderDataManager.tbDeliveryDTOrder;
      dsMelt.DataSet :=  SaleOrderDataManager.tbDeliveryDTMelt;
      dsLink.DataSet :=  SaleOrderDataManager.tbDeliveryDTLink;
      dslink.dataset.OnNewRecord :=   datalinkOnNewRecord;
      dsAll.DataSet := SaleOrderDataManager.tbDeliveryDTClone;
      dsLinkAll.dataset := SaleOrderDataManager.tbDeliveryDTLinkAll ;
      dsMeltSummary.dataset :=    SaleOrderDataManager.qryDeliveryDTMeltSummary;


   dsOrder.dataset.open;
   dsMelt.dataset.open;
   dsLink.dataset.open;
   dsAll.dataset.open;
   dsLinkAll.dataset.open;
   SaleOrderDataManager.qryDeliveryDTMeltSummary.ParamByName('pdeliveryNo').Value:=  refDataSet.FieldByName('delivery_no').AsString;
   dsMeltSummary.dataset.open;
   wwDBLookupComboDlg1.LookupTable := SaleOrderDataManager.qryDOActiveOrderItem;
   SaleOrderDataManager.qryDOActiveOrderItem.Close;
   SaleOrderDataManager.qryDOActiveOrderItem.ParamByName('acustcode').value := refDataSet.FieldByName('CUST_CODE').aSString;
   fcStatusBar1.Panels[1].Text :='Active Customer ='+refDataSet.FieldByName('CUST_CODE').aSString;
   wwDBLookupComboDlg1.LookupTable.Open;
   wwDBLookupComboDlg2.LookupTable := SaleOrderDataManager.qryDOStock    ;
   wwDBLookupComboDlg2.LookupTable.open;
  except on e:exception do

     errorEx('Could not open dataset '+e.Message)
  end;
end;


procedure  TfrmDeliveryOrderWizard.Closedataset;
begin
  try
    dsOrder.dataset.close;
    dsMelt.dataset.close;
    dsLink.dataset.Close;

    dsAll.dataset.Close;
    dsLinkAll.dataset.close;
    wwDBLookupComboDlg1.LookupTable.CLOSE;
       dsMeltSummary.dataset.open;
      wwDBLookupComboDlg1.LookupTable.Filtered:=false;
       wwDBLookupComboDlg2.LookupTable.close;
   except on e:exception do

     errorEx('Could not close dataset '+e.Message)
  end;
end;


procedure TfrmDeliveryOrderWizard.FormCreate(Sender: TObject);
begin
  openDataset;
end;

procedure TfrmDeliveryOrderWizard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   closedataset;
   if (     weightInputList <> nil ) then weightInputList.Free;
   action := caFree;
end;




function TfrmDeliveryOrderWizard.getWeightInput(aString:TStringList):double;
var i :integer;
begin
  result:=0;
  for i:= 0 to   aString.Count -1 do
  begin
    result := result+ StrToFloat(aString[i]);
  end;

end;

procedure TfrmDeliveryOrderWizard.btnValidateClick(Sender: TObject);


begin
   ready :=false;
   totalBundle :=dsMelt.DataSet.FieldByName('total_bundle').asinteger;
   if (cxWeightInput.Lines.Text='') then warning('Weight input can not be blank')
   else
   begin

    weightInputList := TStringList.Create;
   try
     Split(',', Trim(cxWeightInput.Lines.Text), weightInputList) ;
     if (validateWeightInput =false)  then
     begin
        warning('Weight input does not match with total bundle number '+IntTOSTR(TotalBundle));
     end
     else
     begin
        totalchargedWeight  := getWeightInput(weightInputList);
        if validateonhand = false then
        begin
          ready :=false;
          warning('Charge weight ='+FloatToStr(totalchargedWeight)+' is greater than stock balance');
        end else
        begin
          lbTotalCharged.Caption :=  FormatFloat('#,###0.00',totalchargedWeight) ;
        end;

     end;
   finally
      if (validateMarkup=false) then
      begin
        ready :=false;
        warning('Delivery quantity could not grater than order qty + markup qty');
      end else         ready:=true;
   end;
  end;



end;


function TfrmDeliveryOrderWizard.validateWeightInput:boolean;
begin
    if ((weightInputList.Count)<> totalBundle)  then
     begin
        result := false;
     end else
     result := true;
end;



procedure TfrmDeliveryOrderWizard.btnClearClick(Sender: TObject);
begin
  cxWeightInput.Lines.Clear;
end;

procedure TfrmDeliveryOrderWizard.btnAddWeightClick(Sender: TObject);
var i,bundleno :integer;
begin
 btnValidateClick(sender);
 if (ready)  then
 begin
     manualaddData:=false;
    bundleno := dsMelt.DataSet.FieldByName('start_bundle').AsInteger;

      for i:=0 to  totalBundle -1 do
      begin

         dsLink.DataSet.Append;
         dsLink.DataSet.FieldByName('QTY').AsFloat := strToFloat(weightInputList[i]);
         dsLink.DataSet.FieldByName('BUNDLE_NO').AsInteger :=  bundleno ;
         dsLink.DataSet.post;
         bundleno := bundleno +1;

    end;
    //update charged qty
    with dsMelt.DataSet do
    begin
       edit ;
       fieldbyname('total_charged_qty').asfloat := totalchargedWeight;
       post;
       //update reserved qty
       SaleOrderDataManager.synchronizeDeliveryReservedQty(
        Fieldbyname('melt_no').AsString,
        '',
        FieldByName('ref_no').AsString ,
        totalchargedWeight
       );
    end;
    actionSynchronizeExecute(sender) ;
    dsAll.DataSet.Close;
    dsAll.DataSet.Open;
 end;

end;


procedure TfrmDeliveryOrderWizard.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   case Key of
      VK_F7:begin
       if (ActiveControl = wwDBGridMelt) then  DSMELT.DataSet.Append;
       if (activecontrol = wwDBGridOrder) then  DSORDER.DataSet.APPEND;
       if (activecontrol = cxGridDTLink) THEN    dsLink.DataSet.Append;
      end;
      VK_F8:begin
        if (ActiveControl = wwDBGridMelt) then  DSMELT.DataSet.edit;
       if (activecontrol = wwDBGridOrder) then  DSORDER.DataSet.edit;
       if (activecontrol = cxGridDTLink) THEN    dsLink.DataSet.edit;
      end;

      VK_f9:  begin
        if (ActiveControl = wwDBGridMelt) then  DSMELT.DataSet.post;
       if (activecontrol = wwDBGridOrder) then  DSORDER.DataSet.post;
       if (activecontrol = cxGridDTLink) THEN    dsLink.DataSet.post;
      end;

   end;

end;

function TfrmDeliveryOrderWizard.validatemarkup:boolean;
begin
  result:=false;
  result :=(totalchargedWeight <= ((dsOrder.DataSet.FieldByName('ORDER_QTY').AsFloat -
  dsOrder.DataSet.FieldByName('det_qty').AsFloat) +   dsOrder.DataSet.FieldByName('markupqty').AsFloat));
end;


//- 2-Oct-2014 - change from less than equal to less than
function TfrmDeliveryOrderWizard.validateonhand:boolean;
var    postonhand:double;
begin
  result:=false;
  //3-oct-2014 : use 2 decimal by converting using sysutils:roundto
  postonhand := RoundTo(dsMelt.DataSet.FieldByName('postonhand').asFloat, -2) ;
  //postonhand :=FloatToCurr(FormatFloat('#0.00',dsMelt.DataSet.FieldByName('postonhand').asFloat ) ;
  result :=(totalchargedWeight <= postonhand);
end;

procedure TfrmDeliveryOrderWizard.cxGridDTLinkDBTableView1CustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  AViewInfo.Text :='0000000';
  ADone :=true;
end;

procedure TfrmDeliveryOrderWizard.ActionDeleteExecute(Sender: TObject);
begin
    dsLink.DataSet.Delete;
end;

procedure TfrmDeliveryOrderWizard.ActionInsertExecute(Sender: TObject);
VAR lineCaption:String;
   bundle:integer;
   weight:double;
begin
    lineCaption := 'Adding ...'+dsLink.DataSet.FieldByName('melt_no').AsString +' ref_no ='+dsLink.dataset.FieldByName('ref_no').AsString;
    frmDeliveryItemLinkPopup := TfrmDeliveryItemLinkPopup.create(frmDeliveryOrderWizard,lineCaption);
    with frmDeliveryItemLinkPopup do
    begin
        ShowModal  ;
        if ModalResult=mrok then
        begin
          bundle :=  getBundle;
          weight := getWeight;
          if (bundle >-1) and (weight > -1) then
          begin
             if (bundle <= dsMelt.DataSet.FieldByName('start_bundle').AsInteger+ dsMelt.DataSet.FieldByName('total_bundle').AsInteger)  then
             else warning('Invalid bundle range');
             if (weight <=dsMelt.DataSet.FieldByName('postonhand').asfloat) then
             begin
             try
             dsLink.dataset.Append;
             dsLink.dataset.FieldByName('bundle_no').AsInteger := bundle;
             dsLink.DataSet.FieldByName('qty').AsFloat := weight;
             dsLink.DataSet.Post;
             except on e:exception do
                errorex('Error while inserting detail data'+e.Message);
             end;
             info('Succssfully insert delivery bundle no ='+IntToStr(bundle));
             end
             else
             begin
                warning('Stock is only '+FloatToStr(dsMelt.DataSet.FieldByName('postonhand').asfloat)+'Kg. remains');
             end;
          end;
        end;
    end;


end;

procedure TfrmDeliveryOrderWizard.ActionRefreshExecute(Sender: TObject);
begin
     dsLink.DataSet.close;
     dsLink.DataSet.Open;
end;
function TfrmDeliveryOrderWizard.allowtosynchronize:boolean;
begin
   result:=false;
   dsMeltSummary.DataSet.Close;
   dsMeltSummary.DataSet.open;
   result:=( dsMeltSummary.DataSet.FieldByName('TOTAL_BUNDLE').AsInteger = dsLinkAll.DataSet.RecordCount );
end;
procedure TfrmDeliveryOrderWizard.actionSynchronizeExecute(
  Sender: TObject);
  VAR syncDataSet:TDataSet;

  procedure handleException (e:exception);
  begin

       SaleOrderDataManager.deleteDeliveryOrderItem(
       refDataSet.Fieldbyname('delivery_no').AsString,
       refDataSet.Fieldbyname('CUST_CODE').AsString) ;
         errorex('Cound not insert delivery detail item'+e.Message);
  end;
begin
   //Check if
   if confirm('Are you confirm to synchronize item?')=  mrYes then
   begin
      if not allowtosynchronize then  begin warning('Total bundle does match with number of rows in link data Please recheck'); Abort;
      end else
      begin
      if ( SaleOrderDataManager.deleteDeliveryOrderItem(
       refDataSet.Fieldbyname('delivery_no').AsString,
       refDataSet.Fieldbyname('CUST_CODE').AsString)  =true )then
       begin
           syncDataSet := dsLinkAll.DataSet;
           syncDataSet.open;
           syncDataSet.First;
           while not syncDataSet.Eof do
           begin
               with dsAll.DataSet do
               begin
                  try
                      Append;
                      FieldByName('ITEM_CODE').AsString := dsOrder.DataSet.FieldByName('ITEM_CODE').AsString;
                      FieldByName('UOM').AsString := dsOrder.DataSet.FieldByName('UOM').AsString;
                      FieldByName('DESCS').AsString := 'Alloy '+dsOrder.DataSet.FieldByName('ITEM_CODE').AsString;
                      FieldByName('MARK_UP').AsInteger := dsOrder.DataSet.FieldByName('MARKUP').AsInteger;
                      FieldByName('MARK_UP_QTY').AsInteger := dsOrder.DataSet.FieldByName('MARKUPQTY').AsInteger;
                      FieldByName('UNIT_COST').AsFloat := dsOrder.DataSet.FieldByName('UNIT_COST').AsFloat;
                      FieldByName('ORDER_NO').AsString  :=dsOrder.DataSet.FieldByName('ORDER_NO').AsString;
                      FieldByName('ORDER_DATE').AsDateTime  :=dsOrder.DataSet.FieldByName('ORDER_DATE').AsDateTime;
                      FieldByName('ORDER_QTY').ASfLOAT:= dsOrder.DataSet.FieldByName('ORDER_QTY').AsFloat;


                      //Must refer to dsLinkAll.Dataset because dsLink in only per lot no but dslinkall is per document
                      FieldByName('DET_QTY').AsFloat := dsLinkAll.DataSet.FieldByName('QTY').AsFloat;
                      FieldByName('MELT_NO').AsString := dsLinkAll.DataSet.FieldByName('MELT_NO').AsString;
                      FieldByName('BUNDLE_NO').AsInteger := dsLinkAll.DataSet.FieldByName('BUNDLE_NO').AsInteger;

                      FieldByName('REF_NO').AsString := dsLinkAll.DataSet.Fieldbyname('ref_no').aSstring;
                      FieldByName('REF_DATE').AsDateTime := dsLinkAll.DataSet.FieldByName('REF_DATE').AsDateTime;
                      FieldByName('ONHAND_QTY').ASfLOAT:= dsMelt.DataSet.FieldByName('ONHAND_QTY').AsFloat;


                      FieldByName('TOTAL_AMT').AsFloat := FieldByName('DET_QTY').AsFloat*FieldByName('UNIT_COST').AsFloat;
                      FieldByName('TAX_AMT').ASfLOAT := 0;
                      FieldByName('TAX_CD').AsString := '7%';
                      post;
                  except on e:exception do
                    handleException(e);
                  end;

               end;
            syncDataSet.Next;
           end;
           dsAll.dataset.close;
           dsAll.dataset.open;
         end;
          info('Item has already synchronize');
       end;
      end;
end;

procedure TfrmDeliveryOrderWizard.tbExitClick(Sender: TObject);
begin
   close;
end;

procedure TfrmDeliveryOrderWizard.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (dsAll.DataSet.RecordCount = 0) and (dsLink.dataset.recordcount >0) THEN
     if confirm('Link item is not synchronize. Do you want to synchronize items now?')= mrNo then
       canClose :=true
     else
     begin
        actionSynchronizeExecute(sender);
        canClose:=true;
     end;
end;

procedure TfrmDeliveryOrderWizard.wwDBGridMeltUpdateFooter(
  Sender: TObject);
begin
  dsMeltSummary.DataSet.close;
  dsMeltSummary.DataSet.open;
  wwDBGridMelt.ColumnByName('TOTAL_CHARGED_QTY').footervalue :=FormatFloat('#,###.00',dsMeltSummary.DataSet.Fieldbyname('total_charged_qty').AsFloat);
  wwDBGridMelt.ColumnByName('TOTAL_BUNDLE').footervalue :=IntToStr(dsMeltSummary.DataSet.Fieldbyname('TOTAL_BUNDLE').AsInteger);

end;

procedure TfrmDeliveryOrderWizard.wwDBGridMeltEnter(Sender: TObject);
begin
  dsMeltSummary.DataSet.close;
  dsMeltSummary.DataSet.open;
end;

procedure TfrmDeliveryOrderWizard.ActionDeleteAllExecute(Sender: TObject);
begin
if confirm('Are you want to delete?') = mrYes then
begin
  SaleOrderDataManager.deleteDeliveryLinkByMeltNo(dsOrder.dataset.Fieldbyname('delivery_no').AsString,
  FormatDateTime ('mm/dd/yyyy',dsOrder.dataset.Fieldbyname('delivery_date').AsDatetime),
  dsMelt.dataset.Fieldbyname('batch_no').AsInteger,
  dsMelt.dataset.Fieldbyname('melt_no').AsString);

  dsLink.DataSet.Close;
  dsLink.dataset.Open;
  dsAll.dataset.Close;
  dsAll.dataset.Open;
end;
end;

procedure TfrmDeliveryOrderWizard.cxPageControlMainPageChanging(
  Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  dsAll.DataSet.close;
  dsAll.dataset.Open;
end;

procedure TfrmDeliveryOrderWizard.ActionAddweightExecute(Sender: TObject);
 var bundleno,i:integer;
 var reservedQty:double;
begin
 ActionValidateExecute(sender);
 if (ready)  then
 begin
     manualaddData:=false;
    bundleno := dsMelt.DataSet.FieldByName('start_bundle').AsInteger;

      for i:=0 to  totalBundle -1 do
      begin

         dsLink.DataSet.Append;
         dsLink.DataSet.FieldByName('QTY').AsFloat := strToFloat(weightInputList[i]);
         dsLink.DataSet.FieldByName('BUNDLE_NO').AsInteger :=  bundleno ;
         dsLink.DataSet.post;
         SaleOrderDataManager.commit;
         bundleno := bundleno +1;

    end;
    //update charged qty
    with dsMelt.DataSet do
    begin
       edit ;
       fieldbyname('total_charged_qty').asfloat := totalchargedWeight;
       post;
       SaleOrderDataManager.commit;
       //update reserved qty
       reservedQty:= SaleOrderDataManager.getCurrentReservedQty( Fieldbyname('melt_no').AsString,
        '',
        FieldByName('ref_no').AsString );
       SaleOrderDataManager.synchronizeDeliveryReservedQty(
        Fieldbyname('melt_no').AsString,
        '',
        FieldByName('ref_no').AsString ,
        reservedQty
       );
    end;
    actionSynchronizeExecute(sender) ;
    dsAll.DataSet.Close;
    dsAll.DataSet.Open;
 end;
end;

procedure TfrmDeliveryOrderWizard.ActionValidateExecute(Sender: TObject);

begin
   ready :=false;
   totalBundle :=dsMelt.DataSet.FieldByName('total_bundle').asinteger;
   if (cxWeightInput.Lines.Text='') or (dsLink.DataSet.RecordCount > 0) then warning('Weight input can not be blank or detail data not empty')
   else
   begin

    weightInputList := TStringList.Create;
   try
     Split(',', Trim(cxWeightInput.Lines.Text), weightInputList) ;
     if (validateWeightInput =false)  then
     begin
        warning('Weight input does not match with total bundle number '+IntTOSTR(TotalBundle));
     end
     else
     begin
        totalchargedWeight  := getWeightInput(weightInputList);
        if validateonhand = false then
        begin
          ready :=false;
          warning('Charge weight ='+FloatToStr(totalchargedWeight)+' is greater than stock balance');
        end else
        begin
          lbTotalCharged.Caption :=  FormatFloat('#,###0.00',totalchargedWeight) ;
        end;

     end;
   finally
      if (validateMarkup=false) then
      begin
        ready :=false;
        warning('Delivery quantity could not grater than order qty + markup qty');
      end else         ready:=true;
   end;
  end;



end;

procedure TfrmDeliveryOrderWizard.cxPageControlMainChange(Sender: TObject);
begin
   if (dsMelt.DataSet.Modified)  then
   begin
      if confirm('There is unsave melt data.Do you want to save now')=mrYes then
      begin
         dsMelt.DataSet.post ;
         dsMeltSummary.dataset.close;
         dsMeltSummary.dataset.open;
      end else
      begin
         dsMelt.DataSet.cancel;
      end;

   end else if dsOrder.DataSet.modified then
   begin
    if confirm('There is unsave order data.Do you want to save now')=mrYes then
      begin
         dsOrder.DataSet.post ;

     end
     else
     begin
        dsOrder.dataset.Cancel;
     end;
   end;

end;

end.
