unit LoginDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDialog, StdCtrls, ExtCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxControls, cxContainer, cxEdit,
  cxTextEdit;

type
  TLoginDlg = class(TBaseDialog)
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    edUserID: TcxTextEdit;
    edPassword: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure Label1DblClick(Sender: TObject);
  private
    floginCount:integer;
    floginTimeOut:boolean;
    { Private declarations }
  public
   function loginValid:boolean;
   function EnDeCrypt(const Value : String) : String;
   procedure      CenterForm(Aform:TForm);
    { Public declarations }
    property loginCount:integer  read floginCount write floginCount;
    property loginTimeout:boolean read floginTimeOut write floginTimeOut;
  end;

var
  LoginDlg: TLoginDlg;
  const maxTry:integer=3;


implementation
uses WareHouseDM,mainForm;

{$R *.dfm}

function TLoginDlg.loginValid:boolean;
begin
result:=(modalResult=mrOK);
end;
procedure TLoginDlg.FormCreate(Sender: TObject);
begin
  floginCount:=1;
  floginTimeOut:=false;
  CenterForm(self);
  caption :='Centre @Login';
 // maxTry := 3;
end;

procedure TLoginDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin

 action:=caFree;
end;

procedure TLoginDlg.edPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
  cxButton1Click(nil);
    //trigger

end;

procedure TLoginDlg.CenterForm (AForm: TForm);
var ALeft, ATop: integer;
begin
  ALeft := (Screen.Width - AForm.Width) div 2;
  ATop  := (Screen.Height - AForm.Height) div 2;
  { prevents form being twice repainted! }
  AForm.SetBounds (ALeft, ATop, AForm.Width, AForm.Height);
end;



procedure TLoginDlg.cxButton1Click(Sender: TObject);
begin
 Screen.Cursor:=crSQLWait;
 if(floginCount >maxTry) then
 begin
   MessageDlg('Authentication timeout please contract your system admin',mtWarning,[mbCancel],0);
   flogintimeout:=true;
   close;
   Application.Terminate;

 end
 else
 begin
 if(WarehouseDataManager.loginValid(edUserID.text,edPassword.Text)) then
 begin
   ModalResult :=mrOK;
  // Licen
 //  formMain.ShowModal;
   //close;
 end
 else
 begin
    MessageDlg('Invalid User login Please retry',mtWarning,[mbCancel],0);
    inc(floginCount);

 end
 end;
 screen.Cursor:=crDefault;

end;

procedure TLoginDlg.cxButton2Click(Sender: TObject);
begin
  inherited;
 close;
  //Application.Terminate;

end;

function TLoginDlg.EnDeCrypt(const Value : String) : String;
var
  CharIndex : integer;
begin
  Result := Value;
  for CharIndex := 1 to Length(Value) do
    Result[CharIndex] := chr(not(ord(Value[CharIndex])));
end;

procedure TLoginDlg.Label1DblClick(Sender: TObject);
begin
 inherited;
  edUserID.text:='admin';
  edPassword.Text:='1234';
  cxButton1Click(sender);
end;

end.
