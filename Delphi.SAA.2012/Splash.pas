unit Splash;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TSplashForm = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Image1: TImage;
    lbHeaderInfo: TLabel;
    Label2: TLabel;
    procedure update(status:String);
    procedure FormCreate(Sender: TObject);
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.dfm}

procedure TSplashForm.update(status:String);
begin
  label1.Caption:=status;


end;

procedure TSplashForm.FormCreate(Sender: TObject);
begin
   position:=poMainFormCenter;
end;

end.
