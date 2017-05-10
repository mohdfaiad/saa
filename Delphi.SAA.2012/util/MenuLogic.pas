unit MenuLogic;

interface

uses
  SysUtils, Classes, XPStyleActnCtrls, ActnList, ActnMan,WarehouseDM, DB,
  IBCustomDataSet, IBQuery,AbstractDataModule,dialogutils,Forms,sALEUIHelper;

type TMatchedMenuItem     =class


    public
      MenuName,ModuleID:String;
      menuIndex,menuItemIndex:Integer;
      constructor create(sysID,Caption:String;mIndex,mItemIndex:integer);
end;

type
  TLogicDM = class(TAbstractDM)
    ActionManager: TActionManager;
    qryAdhoc: TIBQuery;
  private
    { Private declarations }
   //  function matchedWithExistCaption(Caption:String):boolean;
     function verifyLogic(matchedItem:TMatchedMenuItem):boolean;
     //getnext menu item index id

  public
    { Public declarations }
    function matchLogic(Caption,MODULE:String):boolean;
    function locateLogic(Caption:string):string;

    function getNextMenuItemID(ModuleID:String;MenuLevelID:Integer):iNTEGER;
    {regist new menu into database}
    function registerMenu(ModuleID:String;MenuLevelID,MenuItemIndex:Integer;menuName:string) :boolean;
    {delete menu from ststem}
    function deleteMenu(ModuleID:String;MenuLevelID,MenuItemIndex:Integer):boolean;

    //7 March,2011
    function getModuelID(ACaption:String):String;


  end;

var
  LogicDM: TLogicDM;

implementation
uses SYSMenuRegister
{*** AR  Units****} ,
InvoiceBrowse,ReceiptBrowse,ArCreditNoteDebitNoteBrowse,
debtor,debtortype,
{*** AR  Units****}
  MainForm, GoodsReceiveNoteBrowse, StockAdjustMentBrowse,MaterialRequestBrowse,
  DrossReceiveBrowse, StockEnquiry, DrossEnquiry, UserManagement, Bank ,MaterialGroupSetup,
  MaterialItemSetup,
  SaleItemSetup,SaleQuotationManager,
  saleOrderCancelManager,SaleOrderRevisionManager,
  SaleOrderManager,taxsetup,discountsetup,currencysetup,
  UOMsetup,PurchaseOrderBrowse,PurchaseOrderCloseCancelBrowse,creditorType,creditor ,DeliveryOrderManagerForm,
  productionplanmanager,meltsheetmanager ,QAInspectManager,FinishedGoodsReceiveManager,FinishedGoodsStockAdjustManager,FinishedGoodsReturnManager,
  SystemUserMenuManager ,materialElementSetup,sysTEMmodules,systemrolemanager,CustomerRequirementManager,
  CompanySetupForm;


  {** SO Sale unit**}


{$R *.dfm}


constructor TMatchedMenuItem.create(SysID,Caption:String;mIndex,mItemIndex:integer);
begin
   moduleID := sysID;
   menuName :=caption;
   menuIndex :=mIndex;
   menuItemIndex:=mItemIndex;
end;

function   TLogicDM.verifyLogic(matchedItem:TMatchedMenuItem):boolean;

begin
  result:=false;

  if   matchedItem.ModuleID = 'AR' then
  begin
     case matchedItem.menuIndex of
        0: case matchedItem.menuitemIndex of
             1:begin
                frmDebtorType := TfrmDebtorType.Create(SELF);
                frmDebtorType.Show;
                result:=true;
               end;
             2:begin
                frmDebtor :=TfrmDebtor.Create(SELF);
                frmDebtor.Show;
                result:=true;
             end;
             3:Begin
                BankForm := TBankForm.create(self);
                ArrangeUI(BANKFORM);
                result:=true;
             end;

        end;
        1: case matchedItem.menuitemIndex of  //at transaction
               1:begin  //ar invice
                    InvoiceBrowseForm:= TInvoiceBrowseForm.create(self,'DOC_NO');
                    ArrangeUI(InvoiceBrowseForm) ;
                    InvoiceBrowseForm .SHOW;

                   result:=true;
                 end;
               2:begin {*** ar receipt***}
                    ReceiptBrowseForm := TReceiptBrowseForm.create(self,'DOC_NO');
                      ArrangeUI(ReceiptBrowseForm);
                    ReceiptBrowseForm.SHOW;

                    result:=true;
                 end;
               3:begin //AR Credit note
                    frmCreditDebitNoteShareBrowse := TfrmCreditDebitNoteShareBrowse.create(self,'DOC_NO','CR');
                    ArrangeUI(frmCreditDebitNoteShareBrowse) ;
                    frmCreditDebitNoteShareBrowse.SHOW;
                    result:=true;
                 end;
               4:begin  //AR Debit note
                   frmCreditDebitNoteShareBrowse := TfrmCreditDebitNoteShareBrowse.create(self,'DOC_NO','DR');
              ArrangeUI(frmCreditDebitNoteShareBrowse) ;
                   frmCreditDebitNoteShareBrowse.SHOW;
            
                  result:=true;
                 end;
                5:begin
                    if (StockAdjustBrowseForm=nil) then
                 begin
                    StockAdjustBrowseForm:=TStockAdjustBrowseForm.create(self,'DOC_NO');
                    ArrangeUI(StockAdjustBrowseForm) ;
                    StockAdjustBrowseForm.Show;
                 end
                 else StockAdjustBrowseForm.Show;
                     result:=true;
                end;
           end;

     end;
  end  //	Account Receivable	admin	11/8/2008 11:02:12
  else if     matchedItem.ModuleID = 'WH' then//Warehouse	admin	11/8/2008 11:02:31
  BEGIN
     case matchedItem.menuIndex of
        0: case matchedItem.menuitemIndex of
          1:
        end;

        1: case matchedItem.menuitemIndex of
             1:Begin
                 if (GoodsReceiveNoteBrowseForm=nil) then
                 begin
                      GoodsReceiveNoteBrowseForm:=TGoodsReceiveNoteBrowseForm.create(self,'GRN_NO');
                      GoodsReceiveNoteBrowseForm.Show;
                 end
                 else GoodsReceiveNoteBrowseForm.Show;
                     result:=true;
               end;
             2:begin

                 masterialRequestBrowser:= TMaterialRequestBrowseForm.Create(self);
                 masterialRequestBrowser.Show;
                     result:=true;

             end;
             3:begin
                 if (StockAdjustBrowseForm=nil) then
                 begin
                 StockAdjustBrowseForm:=TStockAdjustBrowseForm.create(self,'DOC_NO');
                 StockAdjustBrowseForm.Show;
                 end
                 else StockAdjustBrowseForm.Show;
                     result:=true;
             end;
             4:begin
                if (DrossReceiptBrowseForm =nil) then
                begin
                  DrossReceiptBrowseForm :=TDrossReceiptBrowseForm.create(SELF,'RECEIVE_DOC');
                  DrossReceiptBrowseForm.Show;
                end else DrossReceiptBrowseForm.Show;
                    result:=true;
             end;
             5:begin
                
                  if(StockEnquiryForm = nil) then
                  begin
                  StockEnquiryForm := TStockEnquiryForm.Create(self);
                  StockEnquiryForm.Show;
                  end
                  else StockEnquiryForm.Show;
                      result:=true;
             end;
             6:begin
                  if (DrossEnquiryForm = nil) then
                  begin
                      DrossEnquiryForm := TDrossEnquiryForm.Create(self);
                      DrossEnquiryForm.show;
                  end else   DrossEnquiryForm.show;
                      result:=true;

             end;
        end; //1
     end; // end case matchedItem.menuIndex
  END
  else if     matchedItem.ModuleID = 'SA' then	//System Administrator	admin	16/8/2008 10:19:03
  begin
      case matchedItem.menuIndex of
        0: case matchedItem.menuitemIndex of
               0:begin
                    BankForm := TbankForm.Create(SELF);
                    BankForm.FormStyle:=fsMDIChild;
                    BankForm.show;
                    result:=true;
               end;
               1:begin  //currency
                   frmCurrency := TfrmCurrency.create(SELF);
                   frmCurrency.FormStyle :=fsMDIChild;
                   frmCurrency.show;
                   result:=true;
                end;

               2:begin  //Tax
                   frmTax := TfrmTax.create(SELF);
                   frmTax.FormStyle :=fsMDIChild;
                   frmTax.show;
                   result:=true;

                end;
               3:begin  //discount
                   frmDiscount := TfrmDiscount.create(SELF);
                   frmDiscount.FormStyle :=fsMDIChild;
                   frmDiscount.show;
                   result:=true;

                end;
               4:begin {register new menu}
                   frmSysMenuRegister := TfrmSysMenuRegister.Create(SELF);
                   frmSysMenuRegister.Show;
                   result:=true;
                 end;
                6:begin {Company Setup}      //14 Nov,2013
                   frmCompanySetup := TfrmCompanySetup.Create(SELF);
                   frmCompanySetup.Show;
                   result:=true;
                 end;
           end;
        1: case matchedItem.menuItemIndex of
             1:BEGIN //USER GROUP
               frmCXSysRole := TfrmCXSysRole.Create(SELF);
               arrangeUI(frmCXSysRole);
               frmCXSysRole.SHOW;
               Result:=true;
             END;
              2:begin
                if (WarehouseDataManager.User<>nil) then
                  begin
                  if (WarehouseDataManager.User.userid='admin') then
                  begin
                    Application.CreateForm(TUserManagementForm, UserManagementForm);
                    UserManagementForm.SHOW;
                   // UserManagementForm.Free;
                    result:=true;
                  end
                  else
                  begin
                    warning('You are not authorized to run this action');
                  end;
                  end
                  else warning('Please login to system to run this action');
              end;
              3:BEGIN // sysmodule
                 frmSysmodule := TFRMSYSMODULE.Create(SELF);
                  arrangeUI(frmSysmodule);
                  frmSysmodule.Show;
                  result:=true;

              END;
              4:begin //user menu setup
                frmSysUserMenuManager := TfrmSysUserMenuManager.Create(self);
                ArrangeUI(frmSysUserMenuManager)  ;
                frmSysUserMenuManager.Show;
                result:=true;
              end;
        end;
     end;
  end
  else if     matchedItem.ModuleID = 'PL' then	//Planing	admin	11/8/2008 11:07:57
  BEGIN
        case matchedItem.menuIndex of
          0: Case matchedItem.menuItemIndex of         //Customer requirementsheet 23 June,2011
             1:begin
                 frmCustomerRequirementManager := TfrmCustomerRequirementManager.create(SELF,'DEBTOR_ACCT');
                 arrangeUI(frmCustomerRequirementManager);
                 frmCustomerRequirementManager.SHOW;
                 Result:=true;
               end;
          end;
           1: Case matchedItem.menuItemIndex of
              0:BEGIN
                  frmDeliveryOrderManager := TfrmDeliveryOrderManager.create(SELF,'DELIVERY_NO');
                  arrangeUI(frmDeliveryOrderManager) ;
                  frmDeliveryOrderManager.Show;
                  result:=true;
              END;
              2:BEGIN //PRODUCTION PLAN 3 JAN,2011
                     frmproductionplanmanager := Tfrmproductionplanmanager.create(SELF,'PLAN_DOC');
                     arrangeUI(frmproductionplanmanager);
                     frmproductionplanmanager.Show;
                     result:=true;
                   // FRMPRODUCTIONPLANAGER :=
               END;
             3:begin         // 15 march,2011 TODO: Should use adjustment instead of this ??
                    frmFNGReturnManager := TfrmFNGReturnManager.create(SELF,'DOC_NO');
                    arrangeUI(frmFNGReturnManager);
                    frmFNGReturnManager.SHOW;
                    result:=true;
                 end;
               4:begin // 2 Feb,2011 cHANGE MENU TO Melt Sheet management
                      frmMeltSheetManager := TFrmMeltSheetManager.create(self,'PLAN_DOC') ;
                      arrangeUI(frmMeltSheetManager);
                      frmMeltSheetManager.SHOW;
                      result:=true;

                 end;
                 6:begin // 5 mARCH,2011 FNG adjustment
                      frmFNGAdjustManager := TfrmFNGAdjustManager.create(self,'DOC_NO') ;
                      arrangeUI(frmFNGAdjustManager);
                      frmFNGAdjustManager.SHOW;
                      result:=true;

                 end;
                  9:begin // 15 mARCH,2011 FNG Receive
                      frmFNGReceiveManager := TfrmFNGReceiveManager.create(self,'DOC_NO') ;
                      arrangeUI(frmFNGReceiveManager);
                      frmFNGReceiveManager.SHOW;
                      result:=true;

                 end;


            end;

        END;
  END
  else if     matchedItem.ModuleID = 'SO' then
  begin
   case matchedItem.menuIndex of
        0: case matchedItem.menuitemIndex of
               1:begin //customer type setup
                   frmDebtorType := TfrmDebtorType.Create(SELF);
                   frmDEBTORTYPE.Show;
                   result:=true;
                 end;
               2:begin   //customer setup
                   frmDebtor := TfrmDebtor.Create(SELF);
                   frmDEBTOR.Show;
                   result:=true;
                 end;
               3:begin     //sale item setup
                   frmSaleItemSetup := TfrmSaleItemSetup.Create(SELF);
                   frmSaleItemSetup.top :=0;
                   frmSaleItemSetup.left :=0;
                   frmSaleItemSetup.Show;
                   result:=true;
                 end;
        end;
        1: case matchedItem.menuitemIndex of
                1:begin //Quotation
                    frmCXSaleQuotaionManager := TfrmCXSaleQuotaionManager.create(SELF,'doc_no');
                    frmCXSaleQuotaionManager.FormStyle :=fsMDIChild;
                    frmCXSaleQuotaionManager.Show;
                    frmCXSaleQuotaionManager.top :=0;
                    frmCXSaleQuotaionManager.left :=0;
                   // frmCXSaleQuotaionManager.
                    result:=true;
                end;
                2:begin
                   frmCXSaleOrderManager   :=  TfrmCXSaleOrderManager.create(SELF,'ORDER_NO');
                   frmCXSaleOrderManager.FormStyle := fsMDIChild;
                   frmCXSaleOrderManager.show;
                   frmCXSaleOrderManager.Top :=0;
                   frmCXSaleOrderManager.Left :=0;
                   result:=true;
                end;
                3:begin   //Sale order revision
                   frmCXSaleOrderRevisionManager   :=  TfrmCXSaleOrderRevisionManager.create(SELF,'DOC_NO');
                   frmCXSaleOrderRevisionManager.FormStyle := fsMDIChild;
                   frmCXSaleOrderRevisionManager.show;
                   frmCXSaleOrderRevisionManager.Top :=0;
                   frmCXSaleOrderRevisionManager.Left :=0;
                   result:=true;
                end;
                4:begin  //Sale Order Cancel      23 June,2010
                   frmCXSaleOrderCancleManager :=  TfrmCXSaleOrderCancleManager.create(self,'ORDER_NO');
                   frmCXSaleOrderCancleManager.FormStyle := fsMDIChild;
                   frmCXSaleOrderCancleManager.show;
                   frmCXSaleOrderCancleManager.TOP:=0;
                   frmCXSaleOrderCancleManager.Left:=0;
                   result:=true;
                end;

      end;
      end

{MENU_INDEX	MENU_ITEM_INDEX	FORM_NAME	FORM_CAPTION
1	0	SOACT10	Quotation Preparation
1	1	SOACT11	Sale Quotation Approval
1	2	SOACT12	Sale Order Generate
1	4	SOACT13	Sale Order Preparation
1	5	SOACT14	Sale Order Approval(AOR)
1	7	SOACT15	Sales Order Cancelation
1	9	SOACT17	Close Sale Order
1	11	SOACT16	Sale Order Revision}

  end	//Sale Order	admin	16/8/2008 10:58:39
  else if     matchedItem.ModuleID  = 'PO' then	//Purchase Order	admin	16/8/2008 10:58:50
  begin
         case matchedItem.menuIndex of
              0: case matchedItem.menuitemIndex of
                     1:begin //customer type setup
                         frmUOM := TfrmUOM.Create(SELF);
                         frmUOM.Show;
                         result:=true;
                       end;
                      2:begin
                         frmCXMaterialStockGroup :=TfrmCXMaterialStockGroup.Create(self);
                         arrangeUI(frmCXMaterialStockGroup) ;
                         frmCXMaterialStockGroup.Show;
                         result:=true;
                      end;
                       3:begin //material setup
                         frmCXMaterialItemSetup :=TfrmCXMaterialItemSetup.Create(self);
                         arrangeUI(frmCXMaterialItemSetup) ;
                         frmCXMaterialItemSetup.Show;
                         result:=true;
                      end;
                       4:begin //Supplier type
                         frmCreditorType :=TfrmCreditorType.Create(self);
                         arrangeUI(frmCreditorType) ;
                         frmCreditorType.Show;
                         result:=true;
                      end;
                       5:begin //Supplier
                         frmCreditor :=TfrmCreditor.Create(self);
                         arrangeUI(frmCreditor) ;
                         frmCreditor.Show;
                         result:=true;
                      end;
                      6://discount 12 Nov,2010
                      begin
                         frmDiscount := TfrmDiscount.Create(self);
                         arrangeUI(frmdiscount);
                         frmDiscount.Show;
                         result:=true;
                      end;
              end;
              1: case matchedItem.menuitemIndex of
                      1:begin    //purchase order
                         frmPurchaseOrderBrowse := TfrmPurchaseOrderBrowse.Create(self,'ORDER_NO');
                         frmPurchaseOrderBrowse.FormStyle :=fsMdiChild;
                         frmPurchaseOrderBrowse.Top:=0;
                         frmPurchaseOrderBrowse.Left:=0;
                         frmPurchaseOrderBrowse.Show;
                         result:=true;
                      end;
                      2:begin //purchase order cancle
                         frmPurchaseOrderCloseCancelBrowse :=TfrmPurchaseOrderCloseCancelBrowse.create(SELF,'ORDER_NO');
                         frmPurchaseOrderCloseCancelBrowse.FormStyle :=fsMdiChild;
                         frmPurchaseOrderCloseCancelBrowse.Top:=0 ;
                         frmPurchaseOrderCloseCancelBrowse.Left:=0;
                         frmPurchaseOrderCloseCancelBrowse.Show;
                         result:=true;
                      end;
                       3:begin //purchase order cancle
                           if (GoodsReceiveNoteBrowseForm=nil) then
                           begin
                                GoodsReceiveNoteBrowseForm:=TGoodsReceiveNoteBrowseForm.create(self,'GRN_NO');
                                GoodsReceiveNoteBrowseForm.FormStyle:=fsMDIChild;
                                GoodsReceiveNoteBrowseForm.top:=0;
                                GoodsReceiveNoteBrowseForm.Left:=0;
                                GoodsReceiveNoteBrowseForm.Show;
                           end
                           else GoodsReceiveNoteBrowseForm.Show;
                          result:=true;
                       end;
              end; //case menuitemindex

          end; //case menu index

   end  else if   matchedItem.ModuleID = 'QA' then
        begin
            case matchedItem.menuIndex of
             0 : case matchedItem.menuitemIndex of
                0:begin
                  frmMaterialElementSetup:= TfrmMaterialElementSetup.Create(self);
                  arrangeUI (frmMaterialElementSetup);
                  frmMaterialElementSetup.Show;
                  result:=true;

                end;
                1: begin
                     frmCXMaterialItemSetup :=TfrmCXMaterialItemSetup.Create(self);
                     arrangeUI(frmCXMaterialItemSetup) ;
                     frmCXMaterialItemSetup.Show;
                     result:=true;
                end;
                2:begin

                   frmSaleItemSetup := TfrmSaleItemSetup.Create(SELF);
                   frmSaleItemSetup.top :=0;
                   frmSaleItemSetup.left :=0;
                   frmSaleItemSetup.Show;
                   result:=true;
                end;

                  3:begin

                   frmMaterialElementSetup := TfrmMaterialElementSetup.Create(SELF);
                   arrangeUI(frmMaterialElementSetup);
                   frmMaterialElementSetup.Show;
                   result:=true;
                end;
             end  ; // 0 menu_index =0 setup menus
             1 :case matchedItem.menuitemIndex of
                1: begin
                  frmQAInspectManager := TfrmQAInspectManager.create(self,'LOT_CD');
                  arrangeUI(frmQAInspectManager);
                  frmQAInspectManager.show;
                   result := true;
                end;
              end
           end

        end;


end;

function TLogicDM.matchLogic(Caption,MODULE:String):boolean;
var dataset:TDataSet;
  matchedItem:TMatchedMenuItem  ;
begin
     result:=false;
     if (module <>'') then
     begin
     qryAdhoc.Close;
     qryAdhoc.SQL.Text :=' select max(module_ID) as moduleID, max(menu_index)menuIndex,max(menu_item_index)  menuItemIndex '+
                         ' from sys_user_menus where module_id='+QuotedStr(MODULE)+
                         ' and form_caption ='+QuotedStr(caption) +
                         'and user_id ='+quotedstr(WarehouseDataManager.User.userid) ;
    dataset := qryAdhoc;
    dataSet.Open;
    end else
    begin
       qryAdhoc.Close;
       qryAdhoc.SQL.Text :=' select max(module_ID) as moduleID, max(menu_index)menuIndex,max(menu_item_index)  menuItemIndex '+
                         ' from sys_user_menus where form_caption ='+QuotedStr(caption) +
                         'and user_id ='+quotedstr(WarehouseDataManager.User.userid) ;
       dataset := qryAdhoc;
       dataSet.Open;

    end;
    if (dataset.RecordCount>0) then
    begin
       matchedItem :=  TMatchedMenuItem.create(dataset.FieldByName('moduleID').AsString,
                        caption,dataset.FieldByName('menuIndex').AsInteger,
                        dataset.FieldByName('menuItemIndex').AsInteger);
       result:=verifyLogic(matchedItem);

    end;

end;


function TLogicDM.getNextMenuItemID(ModuleID:String;MenuLevelID:Integer):iNTEGER;
Var itemId:integer;
begin
    result:=-1;
   try
     qryAdhoc.close;
     qryAdhoc.SQL.Text :='select max(menu_item_index) from sys_menus where module_id='+quotedStr(moduleID)+#13+
                         'AND MENU_INDEX='+IntToStr(MenuLevelID);
     qryAdhoc.Open;
     itemID := qryAdhoc.Fields[0].AsInteger +1;
     result := itemid;
   except on e:exception do
     errorex('Could not get menu item index '+e.Message);

   end;

 //
end;



function TLogicDM.registerMenu(ModuleID:String;MenuLevelID,menuItemIndex:Integer;menuName:String) :boolean;
VAR cmdSQL:String ;
begin
   result:=false;

    cmdSQL:='INSERT INTO SYS_MENUS ('+#13+
            'FORM_NAME,'+#13+
            'MENU_INDEX,'+#13+
            'MODULE_ID,'+#13+
            'MENU_ITEM_INDEX,'+#13+
            'FORM_CAPTION,'+#13+
            'ENABLED,'+#13+
            'UPDATE_DATE,'+#13+
            'UPDATE_USER,'+#13+
            'FORM_TAG,'+#13+
            'HISTORY_CAPTION,'+#13+
            'MAIN_MENU_NAME ) VALUES ('+#13+
            quotedStr(ModuleID+IntToStr(menuLevelID)+IntToStr(menuItemIndex))+',' +#13+
            IntToStr(menuLevelID)+',' +#13+
            QuotedStr(moduleID)+',' +#13+
            IntToStr(menuItemIndex)+',' +#13+
            quotedStr(menuName)+',' +#13+
            quotedStr('Y')+',' +#13+
            'current_timestamp,' +#13+
            QuotedStr(WarehouseDataManager.User.userid)+',' +#13+
            IntToStr(menuLevelID)+IntToStr(menuItemIndex)+',' +#13+
            quotedStr(menuName)+',' +#13+
            quotedStr(ModuleID+'MENU')+')';
   try
      qryAdhoc.Close;
   try

      qryAdhoc.SQL.text :=cmdSQL;
      qryAdhoc.ExecSQL;
      result:=true;
   except on e:exception do

      errorex('Could not retist menu ='+menuName+' error='+e.Message);
   end;

   finally
       qryAdhoc.Close;
   end;

end;


function TLogicDM.deleteMenu(ModuleID:String;MenuLevelID,MenuItemIndex:Integer):boolean;
begin
   result:=false;

    try
      qryAdhoc.close;
      qryAdhoc.SQL.text :='delete from sys_menus where module_id='+quotedStr(moduleID)+
                          ' AND MENU_INDEX='+IntToStr(menuLevelID)+
                          ' AND MENU_ITEM_INDEX='+IntToStr(menuItemIndex)  ;
      qryAdhoc.ExecSQL;
      result:=true;
   except on e:exception do

      errorex('Could not delete menu error='+e.Message);
   end;

end;

//function TLogicDM.matchedWithExistCaption(caption:String):boolean;
//begin
  // result :=true;
//end;

funcTION TLogicDM.locateLogic(Caption:string):string;
begin
result:='';

    try
      qryAdhoc.close;
      qryAdhoc.SQL.text :='select max(form_caption) from sys_user_menus '+
                      'where form_caption like' +quotedStr('%'+caption+'%') +
                      ' and user_id='+QuotedStr(WarehouseDataManager.User.userid);
      qryAdhoc.open;
      result:=qryAdhoc.Fields[0].asstring;
      except on e:exception do

      errorex('Could not delete menu error='+e.Message);
   end;

end;

function TLogicDM.getModuelID(ACaption:String):String;
begin

result:='';

    try
      qryAdhoc.close;
      qryAdhoc.SQL.text :='select max(module_id) from sys_modules '+
                      'where  MODULE_DESCRIPTION =' +quotedStr(ACaption);
      qryAdhoc.open;
      result:=qryAdhoc.Fields[0].asstring;
      except on e:exception do

      errorex('Could not get module id error='+e.Message);
   end;
end;
end.
