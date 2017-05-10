unit AbstractDataModule;

interface

uses
  SysUtils, Classes,DB;

type
  TAbstractDM = class(TDataModule)
  private
    { Private declarations }
  protected
    procedure setDisplayFormat;
  public
    { Public declarations }
  end;

var
  AbstractDM: TAbstractDM;

implementation




procedure   TAbstractDM.setDisplayFormat;
var componentIndex:integer;
begin
  for componentIndex:=0 to ComponentCount -1 DO
  BEGIN
    if (Components[componentIndex] is TFloatField) then
    begin
      TFloatField(Components[componentIndex]).DisplayFormat:='#,##0.000';
    end
  END;

end;

{$R *.dfm}

end.
