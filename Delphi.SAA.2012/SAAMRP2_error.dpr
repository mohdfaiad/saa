program SAAMRP2_error;

{%ToDo 'SAAMRP2.todo'}

uses
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
  StockAdjustment in 'StockAdjustment.pas' {StockAdjustmentForm};

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
  }


begin
  Application.Initialize;
  SplashForm:= TSplashForm.Create(NIL);
  SplashForm.Show;
  SplashForm.Cursor:=crSQLWait;
  Application.Title := 'The System II';
  SplashForm.Update;
  Application.CreateForm(TWarehouseDataManager, WarehouseDataManager);
  Application.CreateForm(TStockEnquriyDM, StockEnquriyDM);
  Application.CreateForm(TStockAdjustDataModule, StockAdjustDataModule);
  SplashForm.Update;
  Application.CreateForm(TformMain, formMain);
  SplashForm.Update;
  SplashForm.Cursor:=crDefault;
  SplashForm.Hide;
  SPLASHFORM.Free;
  Application.Run;


end.
