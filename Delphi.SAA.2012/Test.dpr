program Test;

uses
  Forms,
  Unit1 in 'testProject\Unit1.pas' {Form1},
  Unit2 in 'testProject\Unit2.pas' {Form2},
  AbstractDialog in 'AbstractDialog.pas' {BaseDialog},
  BaseForm in 'BaseForm.pas' {BaseUIForm},
  BaseMasterDetail in 'BaseMasterDetail.pas' {BaseUIMasterDetailForm},
  DialogUtils in 'DialogUtils.pas',
  LoginDialog in 'LoginDialog.pas' {LoginDlg},
  MainForm in 'MainForm.pas' {formMain},
  MaterialRequest in 'MaterialRequest.pas' {MaterialRequestForm},
  MaterialRequestBrowse in 'MaterialRequestBrowse.pas' {MaterialRequestBrowseForm},
  Progress in 'Progress.pas' {ProgressDialog},
  StockReserved in 'StockReserved.pas' {StockReservedForm},
  WarehouseDM in 'WarehouseDM.pas' {WarehouseDataManager: TDataModule};

{$R *.res}

begin
  Application.Initialize;

  Application.CreateForm(TWarehouseDataManager, WarehouseDataManager);
  Application.CreateForm(TformMain, formMain);
  Application.CreateForm(TLoginDlg, LoginDlg);
 try
    LoginDlg.ShowModal;
    IF (LoginDlg.loginValid)  then
    begin
      //Application.CreateForm(TForm1, Form1);
      Application.Run;
    end;

  finally
  LoginDlg.Free;
  end;
  //Application.Run;
end.
