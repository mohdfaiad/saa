unit productionplanLineMovePOPUPForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,dialogutils;

type
  TfrmProductionPlanLineMovePopup = class(TForm)
    cxTextEdit1: TcxTextEdit;
    Button1: TButton;
    Button2: TButton;
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    FUNCTION getLineText:Integer;
  end;

var
  frmProductionPlanLineMovePopup: TfrmProductionPlanLineMovePopup;

implementation

{$R *.dfm}

function     TfrmProductionPlanLineMovePopup.getLineText:integer;
begin
  result:=-1;

    try
      result :=StrToInt(cxTextEdit1.Text )  ;
    except on e:exception do
        warning('EConversion Error '+e.Message);
    end;

end;

procedure TfrmProductionPlanLineMovePopup.cxTextEdit1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 IF KEY = vk_return then
  begin
     ModalResult :=mrOK;

  end

end;

end.
