program Project1;

uses
  Forms,dialogs, Controls,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  BaseForm in '..\BaseForm.pas' {BaseUIForm},
  AbstractDialog in '..\AbstractDialog.pas' {BaseDialog};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TBaseDialog, BaseDialog);
  try
    Form2.ShowModal;
    IF (Form2.ModalResult=mrOK)  then
    begin
        MessageDlg('Good',mtInformation,[mbok],0);
        Application.Run;
    end;

  finally
   Form2.Free;
  end;

end.
