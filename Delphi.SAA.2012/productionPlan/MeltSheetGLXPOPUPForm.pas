unit MeltSheetGLXPOPUPForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit,Dialogutils;

type
  TfrmMeltSheetGLXPopup = class(TForm)
    cxBundleEdit: TcxMaskEdit;
    Label1: TLabel;
    btSave: TButton;
    btCancel: TButton;
    procedure cxBundleEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetGLXID:INTEGER;
  end;

var
  frmMeltSheetGLXPopup: TfrmMeltSheetGLXPopup;

implementation

{$R *.dfm}

function tfrmMeltSheetGLXPopup.GetGLXID:INTEGER;
BEGIN
   result :=-1;
  if cxBundleEdit.Text <>'' then
  begin
    try

     result := StrToInt(cxBundleEdit.Text)  ;
    except on e:exception do
       ErrorEx('Converting error '+e.Message)
    end;
  end;
END;

procedure TfrmMeltSheetGLXPopup.cxBundleEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key =vk_RETURN then
   begin
       modalResult:=MROK;
   end;
end;

end.
