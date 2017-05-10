unit MeltSheetForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseCXMasterDetail, ImgList, DB, Grids, Wwdbigrd, Wwdbgrid,
  fcStatusBar, ComCtrls, ToolWin, ExtCtrls, StdCtrls, cxPC, cxControls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxMemo, cxDBEdit,
  wwdblook, Wwdbdlg, cxMaskEdit, cxDropDownEdit, cxCalendar, cxContainer,
  cxTextEdit, Menus,DIALOGUTILS, ActnList, XPStyleActnCtrls, ActnMan, Mask,
  wwdbedit, wwriched, DBGrids, MeltsheetCustomerRequirementFrame;

  const MAX_NUMBER_OF_ELEMENT = 25 ;
  const CXGRID_SUMMARY_CHARGEDWEIGHT_POSITION = 25;
  const CXGRID_SUMMARY_RECOVERWEIGHT_POSITION = 26;
  const CXGRID_SUMMARY_TOTALCOST_POSITION = 27;
type
  TfrmMeltSheet = class(TBaseCXUIMasterDetailForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Bevel1: TBevel;
    cxGridDBTableView2GROUP_ID: TcxGridDBColumn;
    cxGridDBTableView2LOT_NO: TcxGridDBColumn;
    cxGridDBTableView2UOM: TcxGridDBColumn;
    cxGridDBTableView2PURCHASE_DATE: TcxGridDBColumn;
    cxGridDBTableView2SUPPLIER_CD: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC1: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC2: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC3: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC4: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC5: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC6: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC7: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC8: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC9: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC10: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC11: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC12: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC13: TcxGridDBColumn;
    cxGridDBTableView2CHARGED_WEIGHT: TcxGridDBColumn;
    cxGridDBTableView2RECOVERY_WEIGHT: TcxGridDBColumn;
    cxGridDBTableView2UNIT_COST: TcxGridDBColumn;
    cxGridDBTableView2TOTAL_COST: TcxGridDBColumn;
    cxGridDBTableView2RECOVERY_PERC: TcxGridDBColumn;
    cxGridDBTableView2LAST_MELT_ITEM: TcxGridDBColumn;
    cxGridDBTableView2REF_MELT_NO: TcxGridDBColumn;
    cxGridDBTableView2DESCS: TcxGridDBColumn;
    cxGridDBTableView2ONHAND_QTY: TcxGridDBColumn;
    cxGridDBTableView2LINE_NO: TcxGridDBColumn;
    cxGridDBTableView2CHECK_PLATE_FLAG: TcxGridDBColumn;
    cxGridDBTableView2ORDER_QTY: TcxGridDBColumn;
    cxGridDBTableView2CHECK_PLATE_GROUP_ID: TcxGridDBColumn;
    cxGridDBTableView2STOCK_CODE: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox5: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    cxDBTextPlanDoc: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    dlgMeltNo: TwwDBLookupComboDlg;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBMemo2: TcxDBMemo;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    dsReqSheet: TDataSource;
    cxDBTextEdit48: TcxDBTextEdit;
    GroupBox7: TGroupBox;
    btRecal: TButton;
    PopupMenu1: TPopupMenu;
    DeleteGroup1: TMenuItem;
    N1: TMenuItem;
    ImportDataFromSpectro1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    dlgMaterial: TwwDBLookupComboDlg;
    dlgPurchaserOrder: TwwDBLookupComboDlg;
    ActionManager1: TActionManager;
    ActionDeleteGroup: TAction;
    ActionImport: TAction;
    actionRecalculate: TAction;
    ActionRefresh: TAction;
    Refresh1: TMenuItem;
    ActionSaveTemplate: TAction;
    ActionImportTemplate: TAction;
    SavetoTemplate1: TMenuItem;
    ImportTemplate1: TMenuItem;
    ActionGotoColumn: TAction;
    Label7: TLabel;
    FrameMeltSheetCustomerRequirement1: TFrameMeltSheetCustomerRequirement;
    cxGridDBTableView2ELE_PERC14: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC15: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC16: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC17: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC18: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC19: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC20: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC21: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC22: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC23: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC24: TcxGridDBColumn;
    cxGridDBTableView2ELE_PERC25: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure ActionDeleteGroupExecute(Sender: TObject);
    procedure dsDetailDataChange(Sender: TObject; Field: TField);
    procedure actionRecalculateExecute(Sender: TObject);
    procedure ActionRefreshExecute(Sender: TObject);
    procedure cxDBTextPlanDocEnter(Sender: TObject);
    procedure ActionImportExecute(Sender: TObject);
    procedure ActionSaveTemplateExecute(Sender: TObject);
    procedure ActionImportTemplateExecute(Sender: TObject);
    procedure ActionGotoColumnExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
     ElementItems:TList;
     groupSummaryElementStartAT,FooterSummaryElementStartAt:integer;

     procedure setDataGridDisplayFormat;
     //DataSet method that require to be deligate go here.
     procedure Delegates;
     procedure DoOnMaterialSheetHDNewRecord(DataSet:TDataSet);
     procedure doOnMaterialSheetDTNewRecord(DataSet:TDataSet);

    procedure init;
  public
     QADataSet:TDataSet;
    { Public declarations }
  end;

var
  frmMeltSheet: TfrmMeltSheet;

implementation

uses BaseMasterDetail,productionplandatamodule,MeltSheetGLXPopupForm,
  BaseForm,MeltSheetInspectDataImportPopupForm,MeltSheetTemplateImportPopupForm,MeltSheetGotoColumnPopupForm;

{$R *.dfm}

procedure TfrmMeltSheet.FormCreate(Sender: TObject);
begin

  init;
  inherited;
  setDataGridDisplayFormat;
  Delegates;

end;

procedure    TfrmMeltSheet.Delegates;
begin
 ProductionDM.tbMaterialSheetHD.OnNewRecord :=    DoOnMaterialSheetHDNewRecord;
 ProductionDM.tbMaterialSheetDT.OnNewRecord :=    doOnMaterialSheetDTNewRecord;
end;

procedure  TfrmMeltSheet.DoOnMaterialSheetHDNewRecord(DataSet:TDataSet);
begin
 with dataset do
         begin

            Fieldbyname('PLAN_DATE').AsDateTime := date;
            Fieldbyname('STATUS').AsString :='N';
            Fieldbyname('FLB1').AsFloat :=0;
            Fieldbyname('FLB2').AsFloat :=0;
            Fieldbyname('FLB3').AsFloat :=0;
            Fieldbyname('FLB4').AsFloat :=0;
            Fieldbyname('FLB5').AsFloat :=0;
            Fieldbyname('FLB6').AsFloat :=0;
            Fieldbyname('FLB7').AsFloat :=0;
            Fieldbyname('FLB8').AsFloat :=0;
            Fieldbyname('FLB9').AsFloat :=0;
            Fieldbyname('FLB10').AsFloat :=0;
            Fieldbyname('FLB11').AsFloat :=0;
            Fieldbyname('FLB12').AsFloat :=0;
            Fieldbyname('FLB12').AsFloat :=0;
            Fieldbyname('FLB13').AsFloat :=0;
            Fieldbyname('FLB14').AsFloat :=0;
            Fieldbyname('FLB15').AsFloat :=0;
            Fieldbyname('FLB16').AsFloat :=0;
            Fieldbyname('FLB17').AsFloat :=0;
            Fieldbyname('FLB18').AsFloat :=0;
            Fieldbyname('FLB19').AsFloat :=0;
            Fieldbyname('FLB20').AsFloat :=0;
            Fieldbyname('FLB21').AsFloat :=0;
            Fieldbyname('FLB22').AsFloat :=0;
            Fieldbyname('FLB23').AsFloat :=0;
            Fieldbyname('FLB24').AsFloat :=0;
            Fieldbyname('FLB25').AsFloat :=0;
         end;
end;

procedure  TfrmMeltSheet.doOnMaterialSheetDTNewRecord(DataSet:TDataSet);
var glx:integer;
begin
  if (dataset.RecordCount =0) then
  begin
     frmMeltSheetGLXPopup :=   TfrmMeltSheetGLXPopup.Create(frmMeltSheet);

    frmMeltSheetGLXPopup.ShowModal;
   if (frmMeltSheetGLXPopup.ModalResult = mrOK) THEN
   BEGIN
     glx := frmMeltSheetGLXPopup.GetGLXID;
     if (glx >=0) then

     begin
         with dataset do
         begin
            Fieldbyname('CHECK_PLATE_GROUP_ID').AsInteger := glx;
            Fieldbyname('LINE_NO').AsInteger :=productionDM.getMeltSheetLineNo(
            Fieldbyname('PLAN_DOC').AsString,
            Fieldbyname('MELT_NO').AsString,
          glx)     ;

           // Fieldbyname('PLAN_DATE').AsDateTime := date;
               Fieldbyname('CHARGED_WEIGHT').AsFloat :=0;
            Fieldbyname('onhand_qty').AsFloat :=0;
            Fieldbyname('CHECK_PLATE_FLAG').ASSTRING :='N';
            Fieldbyname('LAST_MELT_ITEM').ASSTRING  :='N';
         end;
     end ELSE warning('Invalid Group id') ;
   END;
 end else
 begin
    glx:= productionDM.LastGlxID;
     with dataset do
         begin
            Fieldbyname('CHECK_PLATE_GROUP_ID').AsInteger := glx;
            Fieldbyname('LINE_NO').AsInteger :=productionDM.getMeltSheetLineNo(
            Fieldbyname('PLAN_DOC').AsString,
            Fieldbyname('MELT_NO').AsString,
          glx)     ;

           // Fieldbyname('PLAN_DATE').AsDateTime := date;
               Fieldbyname('CHARGED_WEIGHT').AsFloat :=0;
            Fieldbyname('onhand_qty').AsFloat :=0;
            Fieldbyname('CHECK_PLATE_FLAG').ASSTRING :='N';
            Fieldbyname('LAST_MELT_ITEM').ASSTRING  :='N';
         end;
 end;
end;

procedure  TfrmMeltSheet.init;
begin
   wwDBGrid1.Parent :=cxTabSheet1;
      wwDBGrid1.KeyOptions:=    [];
   wwDBGrid1.KeyOptions:=    [dgEnterToTab,dgAllowDelete,dgAllowInsert];
   wwDBGrid1.Align := alClient  ;
   dsMaster.DataSet := ProductionDM.tbMaterialSheetHD;
   dsDetail.DataSet := ProductionDM.tbMaterialSheetDT;
   //dsUnplanOrder.DataSet := productiondm.qryUnplanOrder;
   ElementItems := ProductionDM.getElementItems;

   cxPageControl1.ActivePage := cxTabSheet1;

   activeControl :=   cxDBTextPlanDoc; //set first focus to plan doc

   dlgMeltNo.LookupTable := productionDM.qryActiveMeltNo;
   dsReqSheet.DataSet := productionDM.tbSaleItemReqSheet;
   dlgMaterial.LookupTable :=  productionDM.qryMaterial;
   dlgPurchaserOrder.LookupTable := ProductionDM.qryActiveMeltSheetStock;
   dsReqSheet.DataSet.Open;
 //   dsUnplanOrder.DataSet.Open;


end;
procedure  TfrmMeltSheet.setDataGridDisplayFormat;
var eindex :integer;
    format:string;
    elementPanel:TPanel;

begin
  dsDetail.Dataset.OPEN;
  dsReqSheet.DataSet.Open;
  for eindex:=1 to MAX_NUMBER_OF_ELEMENT do      //only concern for 12 item
  begin
      elementItem:= TElementItem(elementitems.Items[eindex -1]);
      if (elementItem <> nil) then
      begin


          format := elementItem.name +'0.0'+ elementItem.prefix;
           try
            cxGridDBTableView2.DataController.Summary.FooterSummaryItems[eindex-1].Format:=   format;
            cxGridDBTableView2.DataController.Summary.SummaryGroups[0].SummaryItems[eindex-1].Format:=   format;

         except on e:exception do
              errorex('Erorr while setting display format'+e.message);
         end;
        dsDetail.DataSet.FieldByName('ELE_PERC'+IntTosTR(eindex)).DisplayLabel :=elementItem.Name;
        if ( dsReqSheet.DataSet.FieldByName('PELE'+IntTosTR(eindex)+'_ACTIVE').AsString='N') then wwDBGrid1.RemoveField('ELE_PERC'+IntTosTR(eindex),TRUE);
      end;
  end;

 // set extra column
 cxGridDBTableView2.DataController.Summary.FooterSummaryItems[CXGRID_SUMMARY_CHARGEDWEIGHT_POSITION].Format:='Total Charged:0.00';
 cxGridDBTableView2.DataController.Summary.FooterSummaryItems[CXGRID_SUMMARY_RECOVERWEIGHT_POSITION].Format:='Total Recovered:0.00';
 cxGridDBTableView2.DataController.Summary.FooterSummaryItems[CXGRID_SUMMARY_TOTALCOST_POSITION].Format:='Total Cost:0.00';
 cxGridDBTableView2.DataController.Summary.SummaryGroups[0].SummaryItems[CXGRID_SUMMARY_CHARGEDWEIGHT_POSITION].Format:='Total Charged:0.00';
 cxGridDBTableView2.DataController.Summary.SummaryGroups[0].SummaryItems[CXGRID_SUMMARY_RECOVERWEIGHT_POSITION].Format:='Total Recovered:0.00';
 cxGridDBTableView2.DataController.Summary.SummaryGroups[0].SummaryItems[CXGRID_SUMMARY_TOTALCOST_POSITION].Format:='Total Cost:0.00';
end;


procedure TfrmMeltSheet.ActionDeleteGroupExecute(Sender: TObject);
var glx:integer;
begin
   frmMeltSheetGLXPopup :=   TfrmMeltSheetGLXPopup.Create(frmMeltSheet);

    frmMeltSheetGLXPopup.ShowModal;
   if (frmMeltSheetGLXPopup.ModalResult = mrOK) THEN
   BEGIN
     glx := frmMeltSheetGLXPopup.GetGLXID;
     if (glx >=0) then
     begin

        productionDM.deleteMeltSheetByGroup(
            dtsMaster.Fieldbyname('PLAN_DOC').AsString,
            dtsMaster.Fieldbyname('MELT_NO').AsString,
          glx)     ;
          dsDetail.dataset.Close;
          dsDetail.dataset.open;
     end;
   end;

end;

procedure TfrmMeltSheet.dsDetailDataChange(Sender: TObject; Field: TField);
begin
  ActionSaveTemplate.Enabled:=  ( dsDetail.DataSet.FieldByName('LAST_MELT_ITEM').AsString ='Y');
  ActionImportTemplate.Enabled:=  ActionSaveTemplate.Enabled;
  {
  if (dsDetail.State in [dsEdit,dsInsert])  then
  begin
     if (dsDetail.DataSet.FieldByName('LAST_MELT_ITEM').AsString ='Y') then
     begin
       wwDBGrid1.AddField('REF_MELT_NO',4,true);


       wwDBGrid1.RemoveField('LOT_NO',true);
       wwDBGrid1.RemoveField('PURCHASE_DATE',true);
       wwDBGrid1.RemoveField('SUPPLIER_CD',true);
       wwDBGrid1.RemoveField('GROUP_ID',TRUE);
       wwDBGrid1.RemoveField('STOCK_CODE',true);
       wwDBGrid1.RemoveField('UOM',true);
     end  else
     begin
       wwDBGrid1.RemoveField('REF_MELT_NO',true);


       wwDBGrid1.AddField('LOT_NO',7,true);
       wwDBGrid1.AddField('PURCHASE_DATE',8,true);
       wwDBGrid1.AddField('SUPPLIER_CD',9,true);
       wwDBGrid1.AddField('GROUP_ID',6,TRUE);
       wwDBGrid1.AddField('STOCK_CODE',5,true);
       wwDBGrid1.AddField('UOM',7,true);
     
     end;
  end;
  }
//  wwDBGrid1.KeyOptions:=  [dgEnterToTab,dgAllowDelete,dgAllowInsert];
end;

procedure TfrmMeltSheet.actionRecalculateExecute(Sender: TObject);
begin
  inherited;
  //to recalculate final blend
end;

procedure TfrmMeltSheet.ActionRefreshExecute(Sender: TObject);
begin
  inherited;
   dsDetail.DataSet.Close;
   dsDetail.DataSet.Open;
end;

procedure TfrmMeltSheet.cxDBTextPlanDocEnter(Sender: TObject);
begin
  inherited;
  ActiveDataSet := dtsMaster;
end;

procedure TfrmMeltSheet.ActionImportExecute(Sender: TObject);

begin
  //inherited;
  wwDBGrid1.KeyOptions :=      [dgEnterToTab,dgAllowDelete,dgAllowInsert];
  frmMeltSheetInspectImportPOPUP := TfrmMeltSheetInspectImportPOPUP.create(self,dsDetail.DataSet.Fieldbyname('LOT_NO').aSString);
  frmMeltSheetInspectImportPOPUP.ShowModal;
  if (frmMeltSheetInspectImportPOPUP.ModalResult = mrOK) then
  begin
    // QW :=  frmMeltSheetInspectImportPOPUP.DATASOURCE.DataSet;

     QADataSET.Open;
     dsdetail.DataSet.Edit;
     with dsdetail.DataSet do
     begin
       dsdetail.DataSet.Edit;
       Fieldbyname('ELE_PERC1').AsFloat :=QADataSET.Fieldbyname('ELE1_PERC').AsFloat;
       Fieldbyname('ELE_PERC2').AsFloat := QADataSET.Fieldbyname('ELE2_PERC').AsFloat;
       Fieldbyname('ELE_PERC3').AsFloat :=QADataSET.Fieldbyname('ELE3_PERC').AsFloat;
       Fieldbyname('ELE_PERC4').AsFloat := QADataSET.Fieldbyname('ELE4_PERC').AsFloat;
       Fieldbyname('ELE_PERC5').AsFloat := QADataSET.Fieldbyname('ELE5_PERC').AsFloat;
       Fieldbyname('ELE_PERC6').AsFloat := QADataSET.Fieldbyname('ELE6_PERC').AsFloat;
       Fieldbyname('ELE_PERC7').AsFloat :=QADataSET.Fieldbyname('ELE7_PERC').AsFloat;
       Fieldbyname('ELE_PERC8').AsFloat := QADataSET.Fieldbyname('ELE8_PERC').AsFloat;
       Fieldbyname('ELE_PERC9').AsFloat := QADataSET.Fieldbyname('ELE9_PERC').AsFloat;
       Fieldbyname('ELE_PERC10').AsFloat :=QADataSET.Fieldbyname('ELE10_PERC').AsFloat;
       Fieldbyname('ELE_PERC11').AsFloat := QADataSET.Fieldbyname('ELE11_PERC').AsFloat;
       Fieldbyname('ELE_PERC12').AsFloat := QADataSET.Fieldbyname('ELE12_PERC').AsFloat;
       Fieldbyname('REF_NO').AsString:=QADataSET.Fieldbyname('REF_NO').AsString;
       Fieldbyname('REF_DATE').AsDateTime := QADataSET.Fieldbyname('REF_DATE').AsDateTime;
       Fieldbyname('DESCS').AsString  := Fieldbyname('DESCS').AsString +'#'+ DateToStr(Fieldbyname('REF_DATE').AsDateTime);

     end;
      dsdetail.DataSet.post;
     info('Import data Done');
   // import inspect data.......
  end;
end;

procedure TfrmMeltSheet.ActionSaveTemplateExecute(Sender: TObject);
begin
 if Confirm('Are you want to save this data')=mrYes then
   if (ProductionDM.saveTemplateData(dsDetail.DataSet) = true ) then
  begin
       info('save Done.');
  end;



end;

procedure TfrmMeltSheet.ActionImportTemplateExecute(Sender: TObject);
var chargedWeightText:String;
    chargedWeight:double;
begin
  frmMeltSheetImportTemplatePopup := TfrmMeltSheetImportTemplatePopup.Create(SELF);
  frmMeltSheetImportTemplatePopup.ShowModal;
  if (frmMeltSheetImportTemplatePopup.ModalResult = mrOK) THEN
  BEGIN
     if (dsDetail.DataSet.FieldByName('charged_weight').AsFloat > 0) then
     begin
       if (ProductionDM.ImportTemplateData(dsDetail.DataSet,0) = true ) then
        begin
              info('save Done.');
        end;
     end else
     begin
       if (InputQuery('Enter Charged weight:','Charged weight',chargedWeightText)=true) then
       begin
        if  StrToFloat(chargedWeightText) > 0 then
        begin
           chargedWeight := StrToFloat(chargedWeightText);
          if (ProductionDM.ImportTemplateData(dsDetail.DataSet,chargedWeight) = true ) then
           begin
              info('save Done.');
            end;
        end    else warning('Charged weight is require!!!');
     end;
    END; //Weight is zero
  end; //ModalResult = OK
end;

procedure TfrmMeltSheet.ActionGotoColumnExecute(Sender: TObject);
var activeColIndex:integer;
    activeFieldName:string;
    fieldlist:TStrings;
begin
  inherited;
 // wwDBGrid1.get
  ActiveControl := wwDBGrid1;
  fieldlist:= wwDBGrid1.Selected;
 frmMeltSheetGotoColumnPopup := TfrmMeltSheetGotoColumnPopup.Create(SELF,fieldlist);
 //frmMeltSheetGotoColumnPopup.FieldList:=fieldlist;
 frmMeltSheetGotoColumnPopup.ShowModal;
 if  frmMeltSheetGotoColumnPopup.ModalResult = mrOK then
 begin
 // wwDBGrid1.SetActiveField('CHARGED_WEIGHT');
    activeColIndex :=  frmMeltSheetGotoColumnPopup.getColumnNumber;
    activeFieldName:=wwDBGrid1.Columns[activeColIndex].FieldName;
    wwDBGrid1.SetActiveField(activeFieldName);
 end;
end;

procedure TfrmMeltSheet.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ssCtrl in Shift then
   begin

     Case Key of
        17:     // 'R'
          wwDBGrid1.SetActiveField('CHARGED_WEIGHT');

    end;
  END
end;

end.
