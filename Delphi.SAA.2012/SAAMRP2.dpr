program SAAMRP2;

{%ToDo 'SAAMRP2.todo'}

uses
  Forms,
  WINDOWS,
  controls,
  MainForm in 'MainForm.pas' {formMain},
  BaseForm in 'BaseForm.pas' {BaseUIForm},
  AbstractDialog in 'AbstractDialog.pas' {AbStractDialogForm},
  Progress in 'Progress.pas' {ProgressDialog},
  BaseMasterDetail in 'BaseMasterDetail.pas' {BaseUIMasterDetailForm},
  MaterialRequest in 'MaterialRequest.pas' {MaterialRequestForm},
  MaterialRequestBrowse in 'MaterialRequestBrowse.pas' {MaterialRequestBrowseForm},
  DialogUtils in 'DialogUtils.pas',
  StockReserved in 'StockReserved.pas' {StockReservedForm},
  LoginDialog in 'LoginDialog.pas' {LoginDlg},
  Splash in 'Splash.pas' {SplashForm},
  StockEnquiry in 'StockEnquiry.pas' {StockEnquiryForm},
  SystemConfig in 'SystemConfig.pas',
  AbstractDataModule in 'AbstractDataModule.pas' {AbstractDM: TDataModule},
  WarehouseDM in 'WarehouseDM.pas' {WarehouseDataMoudule: TDataModule},
  StockEnquiryDM in 'StockEnquiryDM.pas' {StockInquiryDM: TDataModule},
  AbstractDataBrowse in 'AbstractDataBrowse.pas' {AbstractDataBrowseForm},
  StockAdjustMentBrowse in 'StockAdjustMentBrowse.pas' {StockAdjustBrowseForm},
  StockAdjustDM in 'StockAdjustDM.pas' {StockAdjustDataModule: TDataModule},
  StockAdjustment in 'StockAdjustment.pas' {StockAdjustmentForm},
  DrossReceiveBrowse in 'DrossReceiveBrowse.pas' {DrossReceiptBrowseForm},
  DrossAdjustMentBrowse in 'DrossAdjustMentBrowse.pas' {DrossAdjustBrowseForm},
  DrossReceive in 'DrossReceive.pas' {DrossReceiveForm},
  DrossAdjustMent in 'DrossAdjustMent.pas' {DrossAdjustMentForm},
  DrossDataModule in 'DrossDataModule.pas' {DROSSDM: TDataModule},
  DrossEnquiry in 'DrossEnquiry.pas' {DrossEnquiryForm},
  RunTimeController in 'RunTimeController.pas',
  SystemPanel in 'SystemPanel.pas' {SystemPanelForm},
  About in 'About.pas' {AboutDialog},
  VersionInfo in 'VersionInfo.pas',
  AccountReceiveDataModule in 'AccountReceive\AccountReceiveDataModule.pas' {AccountReceiveDM: TDataModule},
  InvoiceEntry in 'AccountReceive\InvoiceEntry.pas' {InvoiceForm},
  InvoiceBrowse in 'AccountReceive\InvoiceBrowse.pas' {InvoiceBrowseForm},
  ReceiptEntry in 'AccountReceive\ReceiptEntry.pas' {ReceiptForm},
  ReceiptBrowse in 'AccountReceive\ReceiptBrowse.pas' {ReceiptBrowseForm},
  ARLedgerInquiry in 'AccountReceive\ARLedgerInquiry.pas' {ARLedgerInquiryForm},
  ToThaiBath in 'util\ToThaiBath.pas',
  MenuLoader in 'MenuLoader.pas' {MenuLoadDialog},
  LicenseManagerDataModule in 'LicenseManagerDataModule.pas' {LicenseManagerDM: TDataModule},
  NetUtils in 'util\NetUtils.pas',
  UserManagement in 'UserManagement.pas' {UserManagementForm},
  InvoiceLineEdit in 'AccountReceive\InvoiceLineEdit.pas' {InvoiceLineEditForm},
  Bank in 'Common\Bank.pas' {BankForm},
  SelectCustomer in 'SelectCustomer.pas' {SelectSupplierForm},
  CommomShareDataModule in 'CommomShareDataModule.pas' {CommomShareDM: TDataModule},
  BaseDataGridEdit in 'BaseDataGridEdit.pas' {BaseDataGridEditForm},
  TransactionType in 'Common\TransactionType.pas' {TransactionTypeForm},
  SystemModules in 'Common\SystemModules.pas' {frmSysModule},
  GoodsReceiveForm in 'GoodsReceiveForm.pas' {GoodsReceiveNoteForm},
  GoodsReceiveDataModule in 'GoodsReceiveDataModule.pas' {GoodsReceiveDM: TDataModule},
  GoodsReceiveNoteBrowse in 'GoodsReceiveNoteBrowse.pas' {GoodsReceiveNoteBrowseForm},
  SQLExecute in 'SQLExecute.pas' {SQLExecuteForm},
  PurchaseOrderShareDataModule in 'datamodule\PurchaseOrderShareDataModule.pas' {PurchasOrderShareDM: TDataModule},
  PurchaseOrderDataModule in 'datamodule\PurchaseOrderDataModule.pas' {PurchaseOrderDM: TDataModule},
  PurchaseOrderBrowse in 'PurchaseOrder\PurchaseOrderBrowse.pas' {frmPurchaseOrderBrowse},
  PurchaseOrderForm in 'PurchaseOrder\PurchaseOrderForm.pas' {frmPurchaseOrder},
  SystemMenu in 'Common\SystemMenu.pas' {SystemMenuDM: TDataModule},
  PurchaseOrderCloseCancelBrowse in 'PurchaseOrder\PurchaseOrderCloseCancelBrowse.pas' {frmPurchaseOrderCloseCancelBrowse},
  KeyValueSearchForm in 'Common\KeyValueSearchForm.pas' {frmSearch},
  ArCreditNoteDebitNoteBrowse in 'AccountReceive\ArCreditNoteDebitNoteBrowse.pas' {frmCreditDebitNoteShareBrowse},
  ARCreditDebitNoteEntry in 'AccountReceive\ARCreditDebitNoteEntry.pas' {frmARCreditDebitNote},
  TestForm in 'Common\TestForm.pas' {frmTest},
  DebitNoteEntry in 'AccountReceive\DebitNoteEntry.pas' {frmARDebitNote},
  CreditNoteEntry in 'AccountReceive\CreditNoteEntry.pas' {frmARCreditNote},
  abstractFrameWindow in 'Frame\abstractFrameWindow.pas' {abstractFrame: TFrame},
  MasterSetupDataModule in 'datamodule\MasterSetupDataModule.pas' {MasterSetupDM: TDataModule},
  BaseDBSingleEntryForm in 'BaseDBSingleEntryForm.pas' {frmDBSingleEntry},
  Creditor in 'MasterSetup\Creditor.pas' {frmCreditor},
  MenuLogic in 'util\MenuLogic.pas' {LogicDM: TDataModule},
  SYSMenuRegister in 'System\SYSMenuRegister.pas' {frmSysMenuRegister},
  CreditorType in 'CreditorType.pas' {frmCreditorType},
  Debtor in 'Debtor.pas' {frmDebtor},
  DebtorType in 'DebtorType.pas' {frmDebtorType},
  SaleItemSetup in 'SaleOrder\SaleItemSetup.pas' {frmSaleItemSetup},
  UomSetup in 'Common\UomSetup.pas' {frmUOM},
  BaseDBGridEditForm in 'BaseDBGridEditForm.pas' {frmDBGridEntry},
  MaterialElementSetup in 'MaterialSetup\MaterialElementSetup.pas' {frmMaterialElementSetup},
  WaitingFrame in 'Frame\WaitingFrame.pas' {FrameWaiting: TFrame},
  TaxSetup in 'Common\TaxSetup.pas' {frmTax},
  DiscountSetup in 'Common\DiscountSetup.pas' {frmDiscount},
  CurrencySetup in 'Common\CurrencySetup.pas' {frmCurrency},
  AbstractcxDataBrowse in 'AbstractcxDataBrowse.pas' {cxAbstractDataBrowse},
  SaleQuotationManager in 'SaleOrder\SaleQuotationManager.pas' {frmCXSaleQuotaionManager},
  BaseCXMasterDetail in 'BaseCXMasterDetail.pas' {BaseCXUIMasterDetailForm},
  SaleOrderDataModule in 'SaleOrder\SaleOrderDataModule.pas' {SaleOrderDataManager: TDataModule},
  SaleOrderManager in 'SaleOrder\SaleOrderManager.pas' {frmCXSaleOrderManager},
  SaleOrderRevisionManager in 'SaleOrder\SaleOrderRevisionManager.pas' {frmCXSaleOrderRevisionManager},
  SaleQuotation in 'SaleOrder\SaleQuotation.pas' {frmCXSaleQuotation},
  SaleContractManage in 'SaleOrder\SaleContractManage.pas' {frmSaleContractDialog},
  SaleOrder in 'SaleOrder\SaleOrder.pas' {frmCXSaleOrder},
  SaleOrderRevision in 'SaleOrder\SaleOrderRevision.pas' {frmCXSaleOrderRevision},
  SaleUIHelper in 'SaleOrder\SaleUIHelper.pas',
  SaleOrderCancelManager in 'SaleOrder\SaleOrderCancelManager.pas' {frmCXSaleOrderCancleManager},
  MaterialGroupSetup in 'MaterialSetup\MaterialGroupSetup.pas' {frmCXMaterialStockGroup},
  MaterialItemSetup in 'MaterialSetup\MaterialItemSetup.pas' {frmCXMaterialItemSetup},
  SaleOrderRevisionInputDialog in 'SaleOrder\SaleOrderRevisionInputDialog.pas' {frmSaleRevisionInputDialog},
  BaseDBCXGridFilterForm in 'BaseDBCXGridFilterForm.pas' {frmCXGridFilterView},
  SystemUserMenuAndSecurity in 'System\SystemUserMenuAndSecurity.pas' {frmCXUserMenuAndSecurity},
  SystemRoleManager in 'System\SystemRoleManager.pas' {frmCXSysRole},
  DeliveryOrderForm in 'SaleOrder\Delivery\DeliveryOrderForm.pas' {frmDeliveryOrder},
  DeliveryOrderManagerForm in 'SaleOrder\Delivery\DeliveryOrderManagerForm.pas' {frmDeliveryOrderManager},
  DeliveryOrderMeltForm in 'SaleOrder\Delivery\DeliveryOrderMeltForm.pas' {frmDeliveryOrderMelt},
  DeliveryOrderWizardForm in 'SaleOrder\Delivery\DeliveryOrderWizardForm.pas' {frmDeliveryOrderWizard},
  StringUtils in 'util\StringUtils.pas',
  DeliveryOrderItemLinkPopupForm in 'SaleOrder\Delivery\DeliveryOrderItemLinkPopupForm.pas' {frmDeliveryItemLinkPopup},
  ProductionPlanDataModule in 'datamodule\ProductionPlanDataModule.pas' {ProductionDM: TDataModule},
  ProductionPlanForm in 'productionPlan\ProductionPlanForm.pas' {frmProductionPlan},
  productionplanManager in 'productionPlan\productionplanManager.pas' {frmproductionplanmanager},
  productionplanItemSwapPopupForm in 'productionPlan\productionplanItemSwapPopupForm.pas' {frmProductionPlanItemSwapPopup},
  productonplanMergePlanPOPUPForm in 'productionPlan\productonplanMergePlanPOPUPForm.pas' {frmProductionPlanMergePlanPopup},
  PurchaseOrderContractForm in 'PurchaseOrder\PurchaseOrderContractForm.pas' {frmPurchaseContractDialog},
  productionplanLineMovePOPUPForm in 'productionPlan\productionplanLineMovePOPUPForm.pas' {frmProductionPlanLineMovePopup},
  MeltSheetForm in 'productionPlan\MeltSheetForm.pas' {frmMeltSheet},
  MeltSheetManager in 'productionPlan\MeltSheetManager.pas' {frmMeltSheetManager},
  MeltSheetGLXPOPUPForm in 'productionPlan\MeltSheetGLXPOPUPForm.pas' {frmMeltSheetGLXPopup},
  QAInspectManager in 'productionPlan\QAInspectManager.pas' {frmQAInspectManager},
  QAInspectEditForm in 'productionPlan\QAInspectEditForm.pas' {frmQAInspectPopupEdit},
  MeltSheetInspectDataImportPopupForm in 'productionPlan\MeltSheetInspectDataImportPopupForm.pas' {frmMeltSheetInspectImportPOPUP},
  FinishedGoodsReceiveManager in 'productionPlan\FinishedGoodsReceiveManager.pas' {frmFNGReceiveManager},
  FinishedGoodsReceiveForm in 'productionPlan\FinishedGoodsReceiveForm.pas' {frmFNGReceiveForm},
  FinishedGoodsStockAdjustManager in 'productionPlan\FinishedGoodsStockAdjustManager.pas' {frmFNGAdjustManager},
  FinishedGoodsStockAdjustForm in 'productionPlan\FinishedGoodsStockAdjustForm.pas' {frmFNGAdjustForm},
  FinishedGoodsReturnManager in 'productionPlan\FinishedGoodsReturnManager.pas' {frmFNGReturnManager},
  FinishedGoodsReturnForm in 'productionPlan\FinishedGoodsReturnForm.pas' {frmFNGReturn},
  SystemUserMenuManager in 'System\SystemUserMenuManager.pas' {frmSysUserMenuManager},
  MeltSheetTemplateImportPopupForm in 'productionPlan\MeltSheetTemplateImportPopupForm.pas' {frmMeltSheetImportTemplatePopup},
  MeltSheetGotoColumnPopupForm in 'productionPlan\MeltSheetGotoColumnPopupForm.pas' {frmMeltSheetGotoColumnPopup},
  CustomerRequirementManager in 'productionPlan\CustomerRequirementManager.pas' {frmCustomerRequirementManager},
  CustomerRequirementEditPopupForm in 'productionPlan\CustomerRequirementEditPopupForm.pas' {frmCustomerRequirementEditPopup},
  CustomerRequirementCardViewFrame in 'productionPlan\CustomerRequirementCardViewFrame.pas' {frameCustomerRequirementCardView: TFrame},
  BaseDialog in 'BaseDialog.pas' {BaseDialogNew},
  SaleItemDuplicateDialog in 'SaleOrder\SaleItemDuplicateDialog.pas' {frmSaleItemDupliatePopup},
  MeltsheetCustomerRequirementFrame in 'productionPlan\MeltsheetCustomerRequirementFrame.pas' {FrameMeltSheetCustomerRequirement: TFrame},
  ProductionPlanMeltSummaryReportGeneratePopupForm in 'productionPlan\ProductionPlanMeltSummaryReportGeneratePopupForm.pas' {frmProPlanMeltSummayReportGenerate},
  CompanySetupForm in 'Common\CompanySetupForm.pas' {frmCompanySetup};

{$R *.res}
{
 Application.Initialize;
  SplashForm:= TSplashForm.Create(NIL);
  SplashForm.Show;
  SplashForm.Cursor:=crSQLWait;
  Application.Title := 'The System II';
  SplashForm.Update;
  Application.CreateForm(TWarehouseDataManager, WarehouseDataManager);
  Application.CreateForm(TStockEnquriyDM, StockEnquriyDM);
 // Application.CreateForm(TStockAdjustmentForm, StockAdjustmentForm);
  SplashForm.Update;
  Application.CreateForm(TformMain, formMain);
  SplashForm.Update;
  SplashForm.Cursor:=crDefault;
  SplashForm.Hide;
  SPLASHFORM.Free;
  Application.Run;
}
{
12 June,2008
  -ware house datamodule must be fisrt created datamoduloe
16 June,2008
  -Found access violation ffixed by remove datamodule unit from project then add again
  -rebuild fix. the problem when trying to refer qryadHoc but runtime show
  "Access violoation"
28 June,2008
   RowsAffected not working with TIBStorproc but works with TIBQuery

15 March,2011
   FNG stock adjustment ,FNG REceive
  }


begin
  Application.Initialize;
  SplashForm:= TSplashForm.Create(NIL);
  SplashForm.Show;
  SplashForm.Cursor:=crSQLWait;
  Application.Title := 'The SAA System II ';
  Application.CreateForm(TWarehouseDataManager, WarehouseDataManager);
  SplashForm.Update('Creating warehouse data..');
  SplashForm.refresh;
  Application.CreateForm(TCommomShareDM, CommomShareDM);
  SplashForm.Update('Creating Commom share data..');
  SplashForm.refresh;
  Application.CreateForm(TLicenseManagerDM, LicenseManagerDM);
  SplashForm.Update('Creating License data..');
  Application.CreateForm(TStockEnquriyDM, StockEnquriyDM);
  SplashForm.Update('Creating stock data..');
  SplashForm.refresh;
  Application.CreateForm(TStockAdjustDataModule, StockAdjustDataModule);
  SplashForm.Update('Creating adjustment data..');
  SplashForm.refresh;
  Application.CreateForm(TMasterSetupDM,MasterSetupDM);
  SplashForm.Update('Creating Master setup data..');
  SplashForm.refresh;
  Application.CreateForm(TDROSSDM, DROSSDM);
  SplashForm.Update('Creating Dross data..');
  SplashForm.refresh;
  Application.CreateForm(TAccountReceiveDM, AccountReceiveDM);
  SplashForm.Update('Creating ar  data..');
  SplashForm.refresh;
  Application.CreateForm(TGoodsReceiveDM,GoodsReceiveDM);
  SplashForm.Update('Creating Goods receive data..');
  SplashForm.refresh;
  Application.CreateForm(TPurchaseOrderDM, PurchaseOrderDM);
  SplashForm.Update('Creating Purchase Order data..');
  SplashForm.refresh;
  Application.CreateForm(TSystemMenuDM, SystemMenuDM);
  SplashForm.Update('Creating Menus data..');
  SplashForm.refresh;
  // 16 June,2010 add sale transaction datamodule
  Application.CreateForm(TSaleOrderDataManager, SaleOrderDataManager);
  SplashForm.Update('Creating Sale data..');
  //29 Jan,2010 add production planing data module
  Application.CreateForm(TProductionDM, ProductionDM);
  SplashForm.Update('Creating production data..');
  SplashForm.refresh;
  SplashForm.refresh;
  RController:=TRuntimeController.create;
  Application.CreateForm(TformMain, formMain);
  SplashForm.Cursor:=crDefault;
  SplashForm.Hide;
  SPLASHFORM.Free;
  Application.Run;



  end.
