unit Progress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDialog, ComCtrls, StdCtrls, Gauges;

type
  TProgressDialog = class(TBaseDialog)
    Label1: TLabel;
    progressBar1: TGauge;
    Animate1: TAnimate;
  private
    { Private declarations }
  public
 // constructor  create(AOwner:TComponent);overload;
  constructor create(AOwner:TComponent;initText:String;initProgress:integer);overload;
  procedure success;
  procedure doneFor(progress:integer);

    { Public declarations }
  end;

var
  ProgressDialog: TProgressDialog;

implementation

{$R *.dfm}
constructor TProgressDialog.create(AOwner:TComponent;initText:String;initProgress:integer);
begin
  inherited create(Aowner);
  Label1.caption :=initText+'. Please wait...';                                                                      
  progressbar1.progress:=initProgress;
end;
procedure TProgressDialog.success;
begin
  ProgressBar1.Progress:=100;
  Label1.Caption:='Done';
  Label1.Color :=clGreen;
end;
procedure TProgressDialog.doneFor(progress:integer);
begin
   ProgressBar1.Progress:=progress;
   update;
end;

end.
