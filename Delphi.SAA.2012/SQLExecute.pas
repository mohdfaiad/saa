unit SQLExecute;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, fcStatusBar, IBSQLMonitor, IBSQL;

type
  TSQLExecuteForm = class(TBaseUIForm)
    IBSQL1: TIBSQL;
    IBSQLMonitor1: TIBSQLMonitor;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SQLExecuteForm: TSQLExecuteForm;

implementation

{$R *.dfm}

end.
