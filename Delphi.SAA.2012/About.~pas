unit About;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDialog, StdCtrls, Buttons, ExtCtrls, jpeg,versioninfo;

type
  TAboutDialog = class(TBaseDialog)
    Image1: TImage;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    StaticText1: TStaticText;
    Label1: TLabel;
    lbVersion: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutDialog: TAboutDialog;

implementation

{$R *.dfm}

procedure TAboutDialog.BitBtn1Click(Sender: TObject);
//var sAppNamePath:string;
begin
  inherited;
// lbVersion.Caption:= 'Version '+QueryValue('FileVersion');

  close;
end;

procedure TAboutDialog.FormCreate(Sender: TObject);
var sAppNamePath:string;
begin
   	sAppNamePath := Application.ExeName;
  	GetAppVersionInfo(sAppNamePath);
  	lbVersion.Caption:='Version '+FileVersionInfo.fFileVersion;
end;

end.
