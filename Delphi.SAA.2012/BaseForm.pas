unit BaseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, fcStatusBar;

type
  TBaseUIForm = class(TForm)
    StatusBar1: TfcStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseUIForm: TBaseUIForm;

implementation

{$R *.dfm}

procedure TBaseUIForm.FormCreate(Sender: TObject);
begin
  top:=150;
  left:=150;
end;

procedure TBaseUIForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action :=caFree;
end;

procedure TBaseUIForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if KEY = VK_F2 THEN CLOSE;
end;

end.
