unit SystemPanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, fcStatusBar, StdCtrls, Buttons,dialogutils,
  IBDatabase, DB,Registry;

type
  TSystemPanelForm = class(TBaseUIForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    btTest: TBitBtn;
    btSave: TBitBtn;
    btCancel: TBitBtn;
    edHost: TEdit;
    edFileName: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edTrxType: TEdit;
    edTrxDescs: TEdit;
    Database: TIBDatabase;
    Transaction: TIBTransaction;
    Label5: TLabel;
    edDayOfPurchase: TEdit;
    Label6: TLabel;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btTestClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edHostChange(Sender: TObject);
  private
    { Private declarations }

     reg:TRegistry;
     procedure readConfiguration;
     procedure writeConfiguration;
     procedure initComponents;
  public

    { Public declarations }
  end;

var
  SystemPanelForm: TSystemPanelForm;

implementation
USES SYSTEMCONFIG;

{$R *.dfm}

procedure TSystemPanelForm.FormCreate(Sender: TObject);
begin
  inherited;
  try
   SystemConfigure := TSystemConfig.create('.\conf\system.ini');
  except
    on e:exception do
    warning('Could note find system configuration '+e.Message);
  end;
  readConfiguration;
  initComponents;
end;
procedure TSystemPanelForm.initComponents ;
begin
end;

procedure TSystemPanelForm.readConfiguration;
begin
  edHost.Text :=   SystemConfigure.databaseHost;
  edFileName.Text := SystemCONFIGURE.databaseName;
  edTrxType.Text :=  SystemCONFIGURE.DefaultTransactionType;
  edTrxDescs.Text := SystemConfigure.DefaultTransactoinDescription;
  edDayOfPurchase.Text:=intToStr(SystemConfigure.readIntRegistry('LastPurchaseDays') );
end;
procedure TSystemPanelForm.writeConfiguration;
begin
  SystemConfigure.write('database','databaseHost',edHost.Text);
  SystemCONFIGURE.write('database','databaseName',edFileName.Text);
  SystemCONFIGURE.write('default','transactionType',edTrxType.Text);
  SystemConfigure.write('default','description',edTrxDescs.Text);
  SystemConfigure.refresh;
  readConfiguration;
  info('SUCCESS: Save configuration. Please exit and reopen application');
end;

procedure TSystemPanelForm.btCancelClick(Sender: TObject);
begin
  inherited;
 Close;
end;

procedure TSystemPanelForm.btSaveClick(Sender: TObject);

begin

  reg := TRegistry.Create;
  reg.RootKey:=HKEY_LOCAL_MACHINE;
  //reg.CreateKey('\SOFTWARE\SGL System II');
  if (reg.KeyExists(REGISTRY_KEY)) THEN
  begin
     reg.OpenKey(REGISTRY_KEY,true);
     reg.WriteInteger('LastPurchaseDays',strToInt(edDayOfPurchase.Text)) ;
  end
  else warning('write LastPurchaseDays');
  reg.Free;
   writeConfiguration ;

end;

procedure TSystemPanelForm.btTestClick(Sender: TObject);
begin
try
  try
    DATABASE.Close;
    DATABASE.DatabaseName:=SystemConfigure.databaseUrl;
    database.Open;
  except
  on e:Exception do warning(e.Message);
  end;
  finally
    if (database.Connected) then
    begin
       info('Able to connect to '+SystemConfigure.databaseUrl) ;
    end;
  end;
end;

procedure TSystemPanelForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (database.Connected) then
  database.Close;

end;

procedure TSystemPanelForm.edHostChange(Sender: TObject);
begin
btSave.Enabled:=true;
 //TCustomEdit(sender).

end;

end.
