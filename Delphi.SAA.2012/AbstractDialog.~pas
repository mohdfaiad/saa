unit AbstractDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TBaseDialog = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseDialog: TBaseDialog;

implementation

{$R *.dfm}

procedure TBaseDialog.FormCreate(Sender: TObject);
begin
 Left:=(Screen.Width-Width)  div 2;
 Top:=(Screen.Height-Height) div 2;

end;

end.
