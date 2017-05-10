unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    edUserID: TEdit;
    edPassword: TEdit;
  private
    { Private declarations }
  public
  function good:boolean;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function Tform1.good:boolean;
begin
   result:= (modalresult=mrok);
end   ;

end.
