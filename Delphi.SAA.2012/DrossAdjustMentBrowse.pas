unit DrossAdjustMentBrowse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataBrowse, DB, StdCtrls, Buttons, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, fcStatusBar, Menus;

type
  TDrossAdjustBrowseForm = class(TAbstractDataBrowseForm)
  private
    { Private declarations }
  public

  end;

var
  DrossAdjustBrowseForm: TDrossAdjustBrowseForm;

implementation
USES DrossReceive;

{$R *.dfm}



end.
