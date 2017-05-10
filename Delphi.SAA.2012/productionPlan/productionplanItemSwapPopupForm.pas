unit productionplanItemSwapPopupForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit;

type
  TfrmProductionPlanItemSwapPopup = class(TForm)
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
  private
    { Private declarations }
  public
     function getSourceText:string   ;
     function getTargetText:string;
    { Public declarations }
  end;

var
  frmProductionPlanItemSwapPopup: TfrmProductionPlanItemSwapPopup;

implementation

{$R *.dfm}


function TfrmProductionPlanItemSwapPopup.getSourceText:string   ;
begin

  result:=cxTextEdit1.Text;
end;
function TfrmProductionPlanItemSwapPopup.getTargetText:string;
begin
  result:=cxTextEdit2.Text;
end;

end.
