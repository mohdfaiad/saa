unit productonplanMergePlanPOPUPForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls;

type
  TfrmProductionPlanMergePlanPopup = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
         function getSourceText:string   ;
     function getTargetText:string;
  end;

var
  frmProductionPlanMergePlanPopup: TfrmProductionPlanMergePlanPopup;

implementation

{$R *.dfm}



function TfrmProductionPlanMergePlanPopup.getSourceText:string   ;
begin

  result:=cxTextEdit1.Text;
end;
function TfrmProductionPlanMergePlanPopup.getTargetText:string;
begin
  result:=cxTextEdit2.Text;
end;


end.
