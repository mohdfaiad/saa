unit KeyValueSearchForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TfrmSearch = class(TForm)
    Panel1: TPanel;
    cbKey: TComboBoxEx;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    btnSearch: TBitBtn;
    edValue: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  frmSearch: TfrmSearch;

implementation

{$R *.dfm}

end.
