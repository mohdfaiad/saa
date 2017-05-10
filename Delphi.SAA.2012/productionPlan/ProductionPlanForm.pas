unit ProductionPlanForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseCXMasterDetail, ImgList, DB, Grids, Wwdbigrd, Wwdbgrid,
  fcStatusBar, ComCtrls, ToolWin, ExtCtrls, StdCtrls, Menus, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxCalc, cxMemo,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxSpinEdit, DBGrids, wwdblook,
  Wwdbdlg, ActnList, XPStyleActnCtrls, ActnMan,dialogutils, wwSpeedButton,
  wwDBNavigator, wwclearpanel, ActnCtrls,productionplandatamodule;

type
  TfrmProductionPlan = class(TBaseCXUIMasterDetailForm)
    PopupMenu1: TPopupMenu;
    InsertPlan1: TMenuItem;
    DeletePlan1: TMenuItem;
    Swap1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    InsertLast1: TMenuItem;
    cxDBTextEdit1: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    Label6: TLabel;
    cxDBMemo1: TcxDBMemo;
    N3: TMenuItem;
    Label7: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    Bevel1: TBevel;
    dlgActiveOrder: TwwDBLookupComboDlg;
    dlgActiveStock: TwwDBLookupComboDlg;
    ActionManager1: TActionManager;
    ActionList1: TActionList;
    ActionGenerateMelt: TAction;
    ActionRefresh: TAction;
    Refresh1: TMenuItem;
    ActionManager2: TActionManager;
    ActionSwap: TAction;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ActionInsertLast: TAction;
    ActionInsert: TAction;
    ActionDelete: TAction;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    ActionViewUnplanOrder: TAction;
    ActionMoveToLine: TAction;
    MovetoLine1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ActionGenerateMeltExecute(Sender: TObject);
    procedure ActionRefreshExecute(Sender: TObject);
    procedure dsDetailDataChange(Sender: TObject; Field: TField);
    procedure ActionSwapExecute(Sender: TObject);
    procedure ActionInsertLastExecute(Sender: TObject);
    procedure ActionInsertExecute(Sender: TObject);
    procedure ActionDeleteExecute(Sender: TObject);
    procedure ActionViewUnplanOrderExecute(Sender: TObject);
    procedure ActionMoveToLineExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    planItem :TProductionPlanItem ;

    procedure doDataRefresh(Dataset:TDataSet);

  end;

var
  frmProductionPlan: TfrmProductionPlan;

implementation

uses BaseMasterDetail,productionplanitemswappopupFORM,productionplanLineMovePOPUPForm;

{$R *.dfm}

procedure TfrmProductionPlan.FormCreate(Sender: TObject);
begin
   dsMaster.DataSet := ProductionDM.tbProplanHD;
  dsDetail.dataset :=productiondm.tbProplanDT;

  inherited;
  activedataset :=dtsMaster;
  activecontrol:=cxDBTextEdit1;
end;

procedure TfrmProductionPlan.Button1Click(Sender: TObject);
begin
  inherited;
 //gen melt
end;

procedure TfrmProductionPlan.ActionGenerateMeltExecute(Sender: TObject);
var result :boolean;
begin
   result:=false;
   if (dtsDetail.RecordCount >0) then warning('You have already generated melt sheet data');
   if Confirm('Are you want to generate melt? System will delete all datas.')=mrYes then
   begin
   with dsMaster.DataSet do
   begin
     try
       screen.cursor :=crSQLWait;
    result := ProductionDM.generateMeltExec(
    Fieldbyname('PLAN_DOC').Asstring,
    Fieldbyname('PLAN_DATE').AsDateTime,
    Fieldbyname('MELT_PREFIX').AsString,
    Fieldbyname('capacity').asFloat,
    Fieldbyname('START_MELT_NO').Asinteger,
    Fieldbyname('END_MELT_NO').AsInteger)  ;
    finally

      if (result) then
      begin
         info('success generate melt');
         dsDetail.Dataset.close;
         dsdetail.dataset.open;
      end else
      begin
         warning('Problem generating melt. Please contract system admin');
      end;
    end;
    screen.Cursor :=crDefault;
   end;
  end else info('Cancle generate melt');
end;

procedure TfrmProductionPlan.ActionRefreshExecute(Sender: TObject);
begin
  inherited;
   dsDetail.dataset.close;
   dsDetail.dataset.Open;
end;

procedure TfrmProductionPlan.dsDetailDataChange(Sender: TObject;
  Field: TField);
begin
  if (dsDetail.DataSet.FieldByName('STOCK_FLAG').AsString='N') THEN
  BEGIN
     wwDBGrid1.RemoveField('STOCK_ITEM_CODE',true);
     wwDBGrid1.ADDField('ORDER_NO',4,TRUE);
  END ELSE
  BEGIN
    wwDBGrid1.AddField('STOCK_ITEM_CODE',3,true);
    wwDBGrid1.RemoveField('ORDER_NO',TRUE);
  END;

end;

procedure TfrmProductionPlan.ActionSwapExecute(Sender: TObject);
var source,target:string;
sourceItem,targetItem:TProductionPlanItem;
begin

   frmProductionPlanItemSwapPopup := TfrmProductionPlanItemSwapPopup.Create(SELF);
   frmProductionPlanItemSwapPopup.ShowModal;
   if (frmProductionPlanItemSwapPopup.ModalResult = mrok) then
   begin
     if Confirm('Are you confirm to swap item') =mrYes then
     begin
      source:=  frmProductionPlanItemSwapPopup.getSourceText;
      target :=frmProductionPlanItemSwapPopup.getTargetText;
      if ProductionDM.isExistMeltNo(source) and
         ProductionDM.isExistMeltNo(target)  then
         begin
            try
            screen.Cursor :=crSQLWait;
            sourceItem:= ProductionDM.createProductionItem(dsMaster.DataSet.Fieldbyname('plan_doc').AsString,
            source);
            targetitem :=ProductionDM.createProductionItem(dsMaster.DataSet.Fieldbyname('plan_doc').AsString,
            target);
            ProductionDM.swapItem(sourceitem,targetitem);
            finally
              screen.Cursor:=crDefault;
              info('SWAP items done. Click refresh button to see updates');
              dsDetail.dataset.Refresh;

            end; //finally

         end //meltexist
         ELSE
           WARNING('SOURCE or Target not found');
      end  //confirm
      else info('Cancel swap item');

   end; //modal ok

end;

procedure TfrmProductionPlan.ActionInsertLastExecute(Sender: TObject);
begin
  inherited;
   dsDetail.dataset.Last;
  dsDetail.dataset.Append;
end;

procedure TfrmProductionPlan.ActionInsertExecute(Sender: TObject);
begin
  inherited;
   dsDetail.DataSet.Insert;
end;

procedure TfrmProductionPlan.ActionDeleteExecute(Sender: TObject);
begin
  inherited;
  deleteBottonClick(sender);

end;


procedure TfrmProductionPlan.doDataRefresh(Dataset:TDataSet);
begin
  dataset.close;
  dataset.open;
end;

procedure TfrmProductionPlan.ActionViewUnplanOrderExecute(Sender: TObject);
begin
  inherited;
  debug('The feature will display all Order that are not in the plan yet.But feature is not implement yet.'+#13+' Contract system admin for more information') ;
end;

procedure TfrmProductionPlan.ActionMoveToLineExecute(Sender: TObject);
var linetomove:integer;
begin
  if dsDetail.State in [ dsInsert ,dsEdit] then warning('Data should not be in edit mode')
  else
  begin
       //productionplanLineMovePOPUPForm := T
       frmProductionPlanLineMovePopup :=TfrmProductionPlanLineMovePopup.Create(self);
       frmProductionPlanLineMovePopup.ShowModal;

     if frmProductionPlanLineMovePopup.ModalResult = mrOK then
     begin
        linetomove := frmProductionPlanLineMovePopup.getLineText;
        if (linetomove >0) then
        begin
          planItem :=NIL;
          planItem :=TProductionPlanItem.Create;

          with dsDetail.DataSet do
          begin
            planitem.plandoc := Fieldbyname('plan_doc').AsString;
            planitem.plandate := Fieldbyname('plan_date').AsDateTime;
            planitem.meltno :=Fieldbyname('MELT_NO').AsString;
            planitem.orderno := Fieldbyname('ORDER_NO').AsString;
            planitem.orderdate := Fieldbyname('order_date').AsDateTime;
            PlanItem.custcode :=FieldByName('cust_code').aSsTRING;
            PlanItem.itemcode :=Fieldbyname('item_CODE').AsString;
            PlanItem.lineno :=Fieldbyname('LINE_NO').AsInteger;
          end;
         if (ProductionDM.moveItem(planitem,linetomove) ) then
         begin
           dsDetail.DataSet.Close;
           dsDetail.DataSet.Open;
         end;

        end    else warning('Invalid line.Process abort!') ;
   end else info('Process Cancel');
 end;

  //
  //
end;

end.
