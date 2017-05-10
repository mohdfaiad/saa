unit MenuLoader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDialog, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls,
  fcClearPanel, fcButtonGroup;

type
  TMenuLoadDialog = class(TBaseDialog)
    fcButtonGroup1: TfcButtonGroup;
    fcButtonGroup1fcShapeBtn1: TfcShapeBtn;
    fcButtonGroup1fcShapeBtn2: TfcShapeBtn;
    fcButtonGroup1fcShapeBtn3: TfcShapeBtn;
    procedure fcButtonGroup1fcShapeBtn1Click(Sender: TObject);
    procedure fcButtonGroup1fcShapeBtn2Click(Sender: TObject);
    procedure fcButtonGroup1fcShapeBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuLoadDialog: TMenuLoadDialog;

implementation
uses mainForm;

{$R *.dfm}

procedure TMenuLoadDialog.fcButtonGroup1fcShapeBtn1Click(Sender: TObject);
begin
  inherited;
formmain.LoadMenu(0);
end;

procedure TMenuLoadDialog.fcButtonGroup1fcShapeBtn2Click(Sender: TObject);
begin
formmain.LoadMenu(1);

end;

procedure TMenuLoadDialog.fcButtonGroup1fcShapeBtn3Click(Sender: TObject);
begin
  inherited;
formmain.LoadMenu(2);
end;

end.
