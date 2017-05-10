unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ActnList, ToolWin, ActnMan, ActnCtrls, Menus,
  XPStyleActnCtrls ,BaseMasterDetail,MaterialRequestBrowse, ExtCtrls,
  CustomizeDlg, fcStatusBar, ImgList, StdCtrls, Buttons, jpeg,ABSTRACTDataModule,dialogUtils,
  cxGraphics, cxCustomData, cxStyles, cxTL, cxTextEdit, cxInplaceContainer,
  cxControls, fcTreeView, ExceptionLog, dxBar, cxClasses,DB, dxBarExtItems,
  cxSplitter, cxBarEditItem,Progress;

Type TfcTreeNodeEx = Class(TfcTreeNode)
  public
     ModuleID:String;
     MenuIndex,MenuItemIndex:integer     ;
end;
type
  TformMain = class(TForm)
    WareHouseMainMenu: TMainMenu;
    ActionManager1: TActionManager;
    actOpenWinMaterialRequest: TAction;
    CustomizeDlg1: TCustomizeDlg;
    StatusBar: TfcStatusBar;
    Bevel1: TBevel;
    actLogin: TAction;
    actLogOut: TAction;
    Image1: TImage;
    Bevel2: TBevel;
    actStockEnqExecute: TAction;
    ImageList1: TImageList;
    actionExit: TAction;
    openStockAdjustAction: TAction;
    DrossReceiveAction: TAction;
    Process1: TMenuItem;
    Enquiry1: TMenuItem;
    OpenMaterialRequest1: TMenuItem;
    StockAdjustment1: TMenuItem;
    DrossEntry1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    onlinestockenquiry1: TMenuItem;
    actDrossInquiry: TAction;
    onlinestockenquiry2: TMenuItem;
    N4: TMenuItem;
    actSystemConfig: TAction;
    System: TMenuItem;
    N5: TMenuItem;
    SystemConfiguration1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    actAbout: TAction;
    About1: TMenuItem;
    N9: TMenuItem;
    ARMainMenu: TMainMenu;
    ransaction1: TMenuItem;
    Inquiry1: TMenuItem;
    Setup1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    ARInvoiceEntryAction: TAction;
    ARReceiptEntryAction: TAction;
    ARLedgerAction: TAction;
    ARInvoiceEntry1: TMenuItem;
    ARReceiptEntry1: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    ARLedgerInquriy1: TMenuItem;
    UserConfigAction: TAction;
    AdminMainMenu: TMainMenu;
    LoadeMenuAction: TAction;
    Setup2: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    UserManagement1: TMenuItem;
    N17: TMenuItem;
    LoadMenu1: TMenuItem;
    Timer1: TTimer;
    BankSetupAction: TAction;
    BankSetup1: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    TransactionTypeConfigAction: TAction;
    SysModuleConfigAction: TAction;
    ransactionTypeConfig1: TMenuItem;
    N20: TMenuItem;
    SystemModuleConfig1: TMenuItem;
    N21: TMenuItem;
    GoodsReceiveNote1: TMenuItem;
    action_GoodsReceiveNote: TAction;
    ool1: TMenuItem;
    N22: TMenuItem;
    ExecuteQuery1: TMenuItem;
    actSYS001: TAction;
    POMenu: TMainMenu;
    ransaction2: TMenuItem;
    PurchaseOrder1: TMenuItem;
    N23: TMenuItem;
    PurchaseOrderCloseCancel1: TMenuItem;
    actPurchaseOrder: TAction;
    actCancelClosePurchaseOrder: TAction;
    N24: TMenuItem;
    CNDN1: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    actCreditNote: TAction;
    actDebitNote: TAction;
    CreditNote1: TMenuItem;
    DebitNote1: TMenuItem;
    treeViewMain: TfcTreeView;
    ImageList2: TImageList;
    EurekaLog1: TEurekaLog;
    dxBarManager1: TdxBarManager;
    dxBarGroup1: TdxBarGroup;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarManager1Bar1: TdxBar;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarManager1Bar2: TdxBar;
    dxBarButton13: TdxBarButton;
    SYSMenuRegist: TAction;
    dxBarProgressItem1: TdxBarProgressItem;
    cxSplitter1: TcxSplitter;
    actSysRegisMenu: TAction;
    windowMenu: TMainMenu;
    Window1: TMenuItem;
    Window2: TMenuItem;
    dxBarMRUListItem1: TdxBarMRUListItem;
    cxQuickLuanch: TcxBarEditItem;
    procedure actOpenWinMaterialRequestExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actLoginExecute(Sender: TObject);
    procedure actLogOutExecute(Sender: TObject);
    procedure actStockEnqExecuteExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure actionExitExecute(Sender: TObject);
    procedure openStockAdjustActionExecute(Sender: TObject);
    procedure DrossReceiveActionExecute(Sender: TObject);
    procedure actDrossInquiryExecute(Sender: TObject);
    procedure actSystemConfigExecute(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
    procedure ARInvoiceEntryActionExecute(Sender: TObject);
    procedure UserConfigActionExecute(Sender: TObject);
    procedure LoadeMenuActionExecute(Sender: TObject);
    procedure StatusBarPanels3DblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure ARReceiptEntryActionExecute(Sender: TObject);
    procedure BankSetupActionExecute(Sender: TObject);
    procedure TransactionTypeConfigActionExecute(Sender: TObject);
    procedure SysModuleConfigActionExecute(Sender: TObject);
    procedure action_GoodsReceiveNoteExecute(Sender: TObject);
    procedure actPurchaseOrderExecute(Sender: TObject);
    procedure actCancelClosePurchaseOrderExecute(Sender: TObject);
    procedure actCreditNoteExecute(Sender: TObject);
    procedure actDebitNoteExecute(Sender: TObject);
    procedure treeViewMainClick(Sender: TObject);
    procedure treeViewMainDblClick(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure actSysRegisMenuExecute(Sender: TObject);
    procedure cxQuickLuanchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private

    requiredVersionUpgrade:boolean;
    upgradeVersion:string;

    MenuObjectsList:TList;
  // procedure TestExecute(Sender: TObject);
    { Private declarations }
   // procedure changeMenuStatus(enabled:boolean);
   procedure initComponents;
   procedure CreateMenuLogic;
  public
    { Public declarations }

    procedure setConnectoinStatus(Text:String);
    procedure setLoginStatus(Text:String);
    procedure LoadMenu(menuIndex:integer);
    procedure startLicenseChecker;
    procedure generateTreeViewMenu;


  end;

var
  formMain: TformMain;
  masterialRequestBrowser:TMaterialRequestBrowseForm;




implementation
uses LoginDialog,WareHouseDM,StockEnquiry,stockAdjustmentBrowse,drossReceiveBrowse,
DrossEnquiry,DrossDataModule,StockAdjustDM ,
StockEnquiryDM,SystemPanel ,about,invoiceBrowse,userManagement,menuloader,versioninfo,licenseManagerDataModule,
ReceiptBrowse,bank,transactiontype,SystemModules,GoodsReceiveNoteBrowse,PurchaseOrderBrowse,
PurchaseOrderCloseCancelBrowse,ArCreditNoteDebitNoteBrowse,systemmenu, MenuLogic,SYSMenuRegister;


{$R *.dfm}

{
@created date 3 June,2010    10:00 am
@auther A.Tinnarat
generate treeview menu extract system_menu and rebuild
}
 // TOTO          { TODO 4 -cFormmain : Move procedue working in thread }
procedure TFormMain.generateTreeViewMenu;
var dataset:Tdataset;
    ROOT:TfcTreeNode;
    NODE,CHILD: TfcTreeNode;
    MenuText,moduleID :String;
         processDlg:TProgressDialog;
      progressdone,taskCount,updateProgress:integer;

    procedure generateChildItems(var node:TfcTreeNode;moduleID:String;MenuIndex:integer);
    var dataset:TDataSet;
        nodeItem:TfcTreeNodeEx;

      //  nodeItemEx: TfcTreeNodeEx;
    begin

      Cursor := crSQLWait;

      //generate subItem query

      SystemMenuDM.qryAdhoc.Close;
      SystemMenuDM.qryAdhoc.SQL.Text :=  'select menu_index,menu_item_index,FORM_CAPTION from sys_USER_menus '+#13+
                                         'where module_id =' +quotedStr(moduleID)+#13+
                                         'and menu_index ='+IntToStr(MenuIndex)+#13+
                                         'and USER_ID='+QuotedStr(WarehouseDataManager.User.userid)+#13+ //27 nov,2010 filtered only active menu
                                         'ORDER BY MENU_INDEX,MENU_ITEM_INDEX ';
       try

         SystemMenuDM.qryAdhoc.active :=true;
         dataset :=   SystemMenuDM.qryAdhoc;
         dataset.First;
         while not dataset.Eof do
         begin
          TfcTreeNode(nodeItem):=treeViewMain.Items.AddChild(node,dataset.FieldByName('FORM_CAPTION').AsString);
          //nodeItem.ModuleID :=  moduleID;
          //nodeItem.MenuIndex:=  MenuIndex;
          //nodeItem.MenuItemIndex := dataSet.FieldByName('MENU_ITEM_INDEX').AsInteger;
          nodeItem.ImageIndex :=3;

          //nodeItemEx :=TfcTreeNodeEx(nodeItem);
          //nodeItemEx.ModuleID :=  moduleID;
          //nodeItemEx.MenuIndex:=  MenuIndex;
          //nodeItemEx.MenuItemIndex := dataSet.FieldByName('MENU_ITEM_INDEX').AsInteger;
          //nodeItem.
        //  menuObjectsList.Add(nodeItemEx);
           dataset.next;
         end;
         cursor:=crDefault;

        except on e:exception do
         errorex('Error while extract tree menu'+e.Message);
      end;


    end;

begin
   dataset := SystemMenuDM.tbSysModule;
   dataset.Open;
   dataset.First;
   progressdone:=1;
   taskCount := dataset.RecordCount;
   treeViewMain.Items.Clear;
   ROOT:=treeViewMain.Items.AddFirst(NIL,'@ROOT');
   ROOT.ImageIndex :=0;
   try
     processDlg :=TProgressDialog.create(formmain,'loading..',10);
     processDlg.BorderStyle :=bsNone;
     processDlg.show;
     processDlg.Update;
   with dataset do
   begin
      try
      while not eof do
      begin
         menuText :=   FieldByName('module_description').AsString;
         moduleID :=   FieldByName('MODULE_ID').AsString;
         if menuText <>'' then
         begin
           node := treeViewMain.Items.AddChild(ROOT,menuText);

           node.Selected :=true;
           child := treeViewMain.Items.AddChild(node ,'Set up');
   
           child.ImageIndex:=1;
           child.Selected;
           generateChildItems(child,moduleID,0); //generate subitem menus
           child:=treeViewMain.Items.AddChild(node ,'Transaction');
           child.Selected;
           child.ImageIndex:=2;
           generateChildItems(child,moduleID,1);
         end;

         next;
         progressdone := progressdone +1;
         updateprogress := StrToInt(FloatToStr((progressDone/taskCount *100)));
         processDlg.DoneFor(updateprogress);
         processDlg.Update;
      end;
      except on e:exception do
         errorex('Error while create menu'+e.Message);
      end;
   end;
   finally
    dataset.Close;
    processDlg.doneFor(100);
    processDlg.Close;
    processDlg:=nil;
   end;

end;
procedure TFormMain.setConnectoinStatus(Text:String);
begin
 statusBar.Panels[2].Text := 'Connected:'+Text;
end;
procedure TFormMain.setLoginStatus(Text:String);
begin
 statusBar.Panels[0].Text := 'Welcome you are now login as :'+Text;

end;




procedure TformMain.actOpenWinMaterialRequestExecute(Sender: TObject);

begin
 // MaterialRequestForm:= TMaterialRequestForm.Create(NIL);
  //MaterialRequestForm.Show;
  try
   masterialRequestBrowser:= TMaterialRequestBrowseForm.Create(self);
   Cursor :=crSQLWait;
  finally
   masterialRequestBrowser.Show;
   Cursor :=crDefault;
   end;
end;

procedure TformMain.CreateMenuLogic;
begin
   IF LOGICDM = nil then
   begin
      LogicDM :=TLogicDM.Create(self);
   end;
end;

procedure TformMain.FormCreate(Sender: TObject);
var rootNode:TFcTreeNode;
begin
 Menu:=nil;
 initComponents;
 Left:=(Screen.Width-Width)  div 2;
 Top:=(Screen.Height-Height) div 2;
 windowState := wsMaximized;
 rootNode:=treeViewMain.Items.GetFirstNode;
 treeViewMain.Items.Delete(rootNode);



 {actionitem:=ActionManager1.FindItemByCaption('') ;
 fTestAction:=taction.Create(ActionManager1);
 fTestAction.Caption:='Runtime Act';
 fTestAction.ShortCut:= 116;    //F5
 fTestAction.Enabled:=true;
 fTestAction.ActionList:= ActionManager1;

 fTestAction.OnExecute :=TestExecute;
 button1.Action :=FtestACTION;
 button1.ShowHint:=true;
 button1.Hint:=  fTestAction.Caption;
ActionManager1.AddAction(fTestAction,actionitem,true); }

end;
procedure TFormMain.initComponents;
 procedure initBitMapButtons;
 var i:integer;
 begin
   for i:=0 to ComponentCount -1 do
   begin
      if (Components[i] is TBitBtn) then
      begin
         TBitBtn(Components[i]).ShowHint:=true;
        TBitBtn(Components[i]).Caption :='';
      end;
   end;

 end;

 procedure setStatusBar;
 var sAppNamePath:string;
begin
   sAppNamePath := Application.ExeName;
   GetAppVersionInfo(sAppNamePath);
   statusbar.Panels[3].Text:='Version :'+FileVersionInfo.fFileVersion;
   menuObjectsList := TList.Create;
  // menuObjectsList.Add()
 end;


begin
  Position := poMainFormCenter;
  initBitMapButtons;//init TBitBtn properties
  setStatusBar;
  treeViewMain.Items.Clear;
  CreateMenuLogic;

end;


procedure TformMain.actLoginExecute(Sender: TObject);
begin
  LoginDlg:=TLoginDlg.Create(formMain);
  LoginDlg.ShowModal;
  if (LoginDlg.loginValid) then
  begin
  if WarehouseDataManager.User.defaultModule='WH' then
    menu:=WareHouseMainMenu
  else if WarehouseDataManager.User.defaultModule='AR' then
    menu :=ARMainMenu
    else if (WarehouseDataManager.User.defaultModule='SA') then
      menu:= AdminMainMenu
     else if (WarehouseDataManager.User.defaultModule='PO') then
       menu :=POMenu;

   setConnectoinStatus(WarehouseDataManager.currentConnected);
   setLoginStatus(WarehouseDataManager.User.userid);
   TAction(sender).Enabled:=false;
   actLogout.Enabled :=true;

   //check version upgrade
   requiredVersionUpgrade := LicenseManagerDM.requireUpgrade(FileVersionInfo.fFileVersion);
   if (requiredVersionUpgrade) then
   begin
      upgradeVersion :=  LicenseManagerDM.existVersion;
      statusBar.Panels[3].Text:='Upgrade Now to:'+ upgradeVersion;
      startLicenseChecker;
   end;
   generateTreeViewMenu;
   treeViewMain.Enabled:=true;
  end;
end;

procedure  TformMain.startLicenseChecker;
begin
   timer1.Enabled:=true;
end;

procedure TformMain.actLogOutExecute(Sender: TObject);
begin
  menu := nil;
  TAction(sender).Enabled:=false;
  actLogin.Enabled:=true;
  statusbar.Panels[0].Text:='Please login to system';
  treeViewMain.Enabled := false;

end;

procedure TformMain.actStockEnqExecuteExecute(Sender: TObject);
begin
      if(StockEnquiryForm = nil) then
      begin
      StockEnquiryForm := TStockEnquiryForm.Create(self);
      StockEnquiryForm.Show;
      end
      else StockEnquiryForm.Show;

     // StockEnquiryForm.Free;

end;

procedure TformMain.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TformMain.actionExitExecute(Sender: TObject);
begin
 close;
end;

procedure TformMain.openStockAdjustActionExecute(Sender: TObject);
begin
   if (StockAdjustBrowseForm=nil) then
   begin
   StockAdjustBrowseForm:=TStockAdjustBrowseForm.create(self,'DOC_NO');
   StockAdjustBrowseForm.Show;
   end
   else StockAdjustBrowseForm.Show;
end;

procedure TformMain.DrossReceiveActionExecute(Sender: TObject);
begin
  if (DrossReceiptBrowseForm =nil) then
  begin
    DrossReceiptBrowseForm :=TDrossReceiptBrowseForm.create(SELF,'RECEIVE_DOC');
    DrossReceiptBrowseForm.Show;
  end else DrossReceiptBrowseForm.Show;
end;

procedure TformMain.actDrossInquiryExecute(Sender: TObject);
begin
    Application.CreateForm(TDrossEnquiryForm, DrossEnquiryForm);
    DrossEnquiryForm.ShowModal;
end;

procedure TformMain.actSystemConfigExecute(Sender: TObject);
begin
if (WarehouseDataManager.User<>nil) then
begin
if (WarehouseDataManager.User.userid='admin') then
begin
 SystemPanelForm := TSystemPanelForm.Create(SELF);
 SystemPanelForm.ShowModal;
 SystemPanelForm.Free;
end
else
begin
  warning('You are not authorized to run this action');
end;
end
else warning('Please login to system to run this action');

end;

procedure TformMain.actAboutExecute(Sender: TObject);
begin
  Application.CreateForm(TAboutDialog, AboutDialog);
  AboutDialog.showmodal ;
end;

procedure TformMain.ARInvoiceEntryActionExecute(Sender: TObject);
begin
  InvoiceBrowseForm:= TInvoiceBrowseForm.create(Application,'DOC_NO');
  InvoiceBrowseForm.ShowModal;
  InvoiceBrowseForm.Free;
end;

procedure TformMain.UserConfigActionExecute(Sender: TObject);
begin
if (WarehouseDataManager.User<>nil) then
begin
if (WarehouseDataManager.User.userid='admin') then
begin
  Application.CreateForm(TUserManagementForm, UserManagementForm);
  UserManagementForm.ShowModal;
  UserManagementForm.Free;
end
else
begin
  warning('You are not authorized to run this action');
end;
end
else warning('Please login to system to run this action');
end;

procedure TformMain.LoadMenu(menuIndex:integer);
begin
  case menuindex of
    0:menu:=AdminMainMenu;
    1:menu:=WareHouseMainMenu;
    2:menu:=ARMainMenu;
  end;
end;

procedure TformMain.LoadeMenuActionExecute(Sender: TObject);
begin
     if (WarehouseDataManager.User<>nil) then
    begin
    if (WarehouseDataManager.User.userid='admin') then
    begin
     Application.CreateForm(TMenuLoadDialog, MenuLoadDialog);
      MenuLoadDialog.ShowModal;
     MenuLoadDialog.Free;
    end
    else
    begin
      warning('You are not authorized to run this action');
    end;
    end
    else warning('Please login to system to run this action');

end;

procedure TformMain.StatusBarPanels3DblClick(Sender: TObject);
begin
  actAboutExecute(sender);
end;

procedure TformMain.Timer1Timer(Sender: TObject);
begin
  Warning('Your machine has been running with SGL Version '+FileVersionInfo.fFileVersion+'.'+#13+' There is '+upgradeVersion+' needs to be upgrade');
end;

procedure TformMain.Panel1Click(Sender: TObject);
  var control:TControl;
begin
control:=nil;
control.Enabled:=true;//exception

end;

procedure TformMain.ARReceiptEntryActionExecute(Sender: TObject);
begin
  ReceiptBrowseForm := TReceiptBrowseForm.create(self,'DOC_NO');
  ReceiptBrowseForm.ShowModal;
  ReceiptBrowseForm.Free;
end;

procedure TformMain.BankSetupActionExecute(Sender: TObject);
begin
   BankForm := TbankForm.Create(SELF);
   BankForm.FormStyle:=fsMDIChild;
   BankForm.show;
   //BankForm.Free;

end;

procedure TformMain.TransactionTypeConfigActionExecute(Sender: TObject);
begin
   TransactionTypeForm := TTransactionTypeForm.Create(self);
   TransactionTypeForm.ShowModal;
   TransactionTypeForm.Free;

end;

procedure TformMain.SysModuleConfigActionExecute(Sender: TObject);
begin
   FRMSYSMODULE := TFRMSYSMODULE.Create(self);
   FRMSYSMODULE.ShowModal;
   FRMSYSMODULE.Free;
end;
{
open goods receive note UI manager
}
procedure TformMain.action_GoodsReceiveNoteExecute(Sender: TObject);
begin
  
 if (GoodsReceiveNoteBrowseForm=nil) then
   begin
   GoodsReceiveNoteBrowseForm:=TGoodsReceiveNoteBrowseForm.create(self,'GRN_NO');
   GoodsReceiveNoteBrowseForm.Show;
   end
   else GoodsReceiveNoteBrowseForm.Show;
end;

procedure TformMain.actPurchaseOrderExecute(Sender: TObject);
begin
   FRMpurchaseOrderBrowse := TfrmPurchaseOrderBrowse.create(formmain,'ORDER_NO');
   FRMpurchaseOrderBrowse.showmodal;
   FRMpurchaseOrderBrowse.free;
end;

procedure TformMain.actCancelClosePurchaseOrderExecute(Sender: TObject);
begin
   frmPurchaseOrderCloseCancelBrowse := TfrmPurchaseOrderCloseCancelBrowse.create(formmain,'ORDER_NO');
   frmPurchaseOrderCloseCancelBrowse.showModal;
   frmPurchaseOrderCloseCancelBrowse.free;
end;

procedure TformMain.actCreditNoteExecute(Sender: TObject);
begin
  frmCreditDebitNoteShareBrowse := TfrmCreditDebitNoteShareBrowse.create(formmain,'DOC_NO','CR');
  frmCreditDebitNoteShareBrowse.ShowModal;
  frmCreditDebitNoteShareBrowse.Free;
end;

procedure TformMain.actDebitNoteExecute(Sender: TObject);
begin
    frmCreditDebitNoteShareBrowse := TfrmCreditDebitNoteShareBrowse.create(formmain,'DOC_NO','DR');
    frmCreditDebitNoteShareBrowse.ShowModal;
    frmCreditDebitNoteShareBrowse.Free;
 end;

procedure TformMain.treeViewMainClick(Sender: TObject);
begin
  // TreeViewMain.Items.
end;

procedure TformMain.treeViewMainDblClick(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);


  var ModuleID:String;
    Parent :TfcTreeNode;


begin

  Parent := nODE.Parent.Parent;
  if (parent <> nil) then
  begin
    ModuleID :=logicDM.getModuelID(pARENT.Text);
  if not (Node.HasChildren)   then //only validate memu context when it is the child node
  if (WarehouseDataManager.loginOK) then
  if not (  logicDM.matchLogic(nODE.TEXT,ModuleID) )then
     warning (nODE.TEXT+'menu has not been setting up properly');
  end;

  // info('module'+TfcTreeNodeEx(Node).ModuleID+'/'+TfcTreeNodeEx(Node).Text+'MenuIndex ='+IntToStr(TfcTreeNodeEx(Node).MenuIndex)+'/MENU ITEM='+inttostr(TfcTreeNodeEx(Node).MenuItemIndex));
end;

procedure TformMain.actSysRegisMenuExecute(Sender: TObject);
begin
  if (WarehouseDataManager.loginOK )AND (WarehouseDataManager.User.userid='admin') then
  begin
    frmSysMenuRegister := TfrmSysMenuRegister.Create(Self);
    frmSysMenuRegister.show;
  end;  
end;

procedure TformMain.cxQuickLuanchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var selectText,foundItem,moduleid:String;

begin
   if (WarehouseDataManager.loginOK) then
   if key = VK_RETURN then
  begin
    selectText   :=  VarToStr(cxQuickLuanch.CurEditValue);
    foundItem := logicDM.locateLogic(selectText);
     if foundItem <>'' then
     begin
       //  ModuleID :=logicDM.getModuelID(foundItem);
     if not (  logicDM.matchLogic(foundItem,'') )then
       warning (selectText+'menu has not been setting up properly');
     end else
     begin
        warning(selectText+'Item not found');
     end

  END;

end;

end.
