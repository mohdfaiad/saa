program SAAMRP2_MDI;

{%ToDo 'SAAMRP2_MDI.todo'}

uses
  ExceptionLog,
  Forms,
  WINDOWS,
  controls,
  MainForm in 'MainForm.pas' {formMain},
  BaseForm in 'BaseForm.pas' {BaseUIForm},
  AbstractDialog in 'AbstractDialog.pas' {BaseDialog},
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
  SystemModules in 'Common\SystemModules.pas' {SystemModuleForm};

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
  }


begin
  Application.Initialize;
  SplashForm:= TSplashForm.Create(NIL);
  SplashForm.Show;
  SplashForm.Cursor:=crSQLWait;
  Application.Title := 'The System II';
  Application.CreateForm(TWarehouseDataManager, WarehouseDataManager);
  SplashForm.Update('Creating warehouse data..');
  SplashForm.refresh;
  Application.CreateForm(TCommomShareDM, CommomShareDM);
  SplashForm.Update('Creating warehouse data..');
  SplashForm.refresh;
  Application.CreateForm(TLicenseManagerDM, LicenseManagerDM);
  SplashForm.Update('Creating License data..');
  Application.CreateForm(TStockEnquriyDM, StockEnquriyDM);
  SplashForm.Update('Creating stock data..');
  SplashForm.refresh;
  Application.CreateForm(TStockAdjustDataModule, StockAdjustDataModule);
  SplashForm.Update('Creating adjustment data..');
  SplashForm.refresh;
  Application.CreateForm(TDROSSDM, DROSSDM);
  SplashForm.Update('Creating Dross data..');
  SplashForm.refresh;
   Application.CreateForm(TAccountReceiveDM, AccountReceiveDM);
  SplashForm.Update('Creating ar  data..');
  SplashForm.refresh;
  RController:=TRuntimeController.create;
  Application.CreateForm(TformMain, formMain);
  SplashForm.Cursor:=crDefault;
  SplashForm.Hide;
  SPLASHFORM.Free;
  Application.Run;



  end.
