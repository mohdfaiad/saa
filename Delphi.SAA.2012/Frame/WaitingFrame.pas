unit WaitingFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxControls, cxContainer, cxEdit, cxProgressBar;

type
  TFrameWaiting = class(TFrame)
    cxProgressBar1: TcxProgressBar;
    procedure FrameEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var FrameWaiting :TFrameWaiting ;
implementation


{$R *.dfm}

procedure TFrameWaiting.FrameEnter(Sender: TObject);
begin
   //cxProgressBar1.ActiveProperties.active;
end;

end.
