unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
  function good:boolean;
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
//   Form1 := tform1.Create(nil);
  // form1.Show;
end;

function TForm2.good:boolean;
 begin
   result:=(modalResult=mrOK);
 end;

procedure TForm2.Button3Click(Sender: TObject);
begin
//close;
end;

end.
