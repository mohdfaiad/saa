unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,Crypto;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    OpenDialog: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}


procedure TForm1.FormCreate(Sender: TObject);
var	LibHandle: THandle;
		ProcAddress: pointer;
begin
	CreateKeyForUser;
end;

procedure TForm1.Button1Click(Sender: TObject);
var	Destination: string;
const	Password='ClipNT';
begin
	with OpenDialog do begin
   	FileName:='*.*';
   	if Execute then begin
			Destination:=ExtractFilePath(ParamStr(0))+'Temp.cry';
			if CAPIEncryptFile(FileName,Destination,Password) then
           	if not CopyFile(PChar(Destination),PChar(FileName),FALSE) then
					MessageDlg('Fehler beim Kopieren',mtError,[mbOK],0)
               else DeleteFile(Destination);
       end;
   end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var	Destination: string;
const	Password='ClipNT';
begin
	with OpenDialog do begin
   	FileName:='*.*';
   	if Execute then begin
			Destination:=ExtractFilePath(ParamStr(0))+'Temp.cry';
			if CAPIDecryptFile(FileName,Destination,Password) then
           	if not CopyFile(PChar(Destination),PChar(FileName),FALSE) then
					MessageDlg('Fehler beim Kopieren',mtError,[mbOK],0)
               else DeleteFile(Destination);
       end;
   end;
end;

end.
