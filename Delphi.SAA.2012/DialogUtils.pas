unit DialogUtils;

interface

uses Dialogs,shellAPI,wINDOWS,controls,forms;
function warning(msg:String ):integer;stdcall;
function info(msg:String ):integer;stdcall;
function errorEx(msg:String ):integer;stdcall;
function confirm(msg:String):integer; stdcall;
function debug(msg:String):integer;stdcall;
procedure showSystemCalculator(Control:TForm);
procedure      CenterForm(Aform:TForm);

implementation
function warning(msg:String ):integer;stdcall;
begin
result:=MessageDlg(msg,mtWarning,[mbCancel],1);
end;
function errorEx(msg:String ):integer;stdcall;
begin
result:=MessageDlg(msg,mtError,[mbCancel],1);
end;

function info(msg:String ):integer;stdcall;
begin
result:=MessageDlg(msg,mtInformation,[mbOK],1);
end;
function confirm(msg:string):integer;stdcall;
begin
 result:=MessageDlg(msg,mtConfirmation,[MbNo ,mbYes],0);
end;

function debug(msg:string):integer;stdcall;
begin
   result:=messageDlg(msg,mtWarning,[mbOK],0);
end;
procedure showSystemCalculator(Control:TForm);
begin
   ShellExecute(control.Handle, Pchar('open'), Pchar('calc'), nil, nil, SW_SHOWNORMAL) ;
end;


procedure CenterForm (AForm: TForm);
var ALeft, ATop: integer;
begin
  ALeft := (Screen.Width - AForm.Width) div 2;
  ATop  := (Screen.Height - AForm.Height) div 2;
  { prevents form being twice repainted! }
  AForm.SetBounds (ALeft, ATop, AForm.Width, AForm.Height);
end;

end.
