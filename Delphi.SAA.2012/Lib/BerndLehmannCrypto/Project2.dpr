program Project2;

uses
  Forms,
  Unit3 in 'Unit3.pas' {Form1},
  Crypto in 'Crypto.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
