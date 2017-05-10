unit MeltsheetCustomerRequirementFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  StdCtrls, DB;

type
  TFrameMeltSheetCustomerRequirement = class(TFrame)
    GroupBox2: TGroupBox;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    cxDBTextEdit30: TcxDBTextEdit;
    cxDBTextEdit31: TcxDBTextEdit;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBTextEdit33: TcxDBTextEdit;
    cxDBTextEdit34: TcxDBTextEdit;
    cxDBTextEdit35: TcxDBTextEdit;
    cxDBTextEdit36: TcxDBTextEdit;
    cxDBTextEdit37: TcxDBTextEdit;
    cxDBTextEdit38: TcxDBTextEdit;
    cxDBTextEdit39: TcxDBTextEdit;
    cxDBTextEdit40: TcxDBTextEdit;
    cxDBTextEdit41: TcxDBTextEdit;
    cxDBTextEdit42: TcxDBTextEdit;
    cxDBTextEdit43: TcxDBTextEdit;
    cxDBTextEdit44: TcxDBTextEdit;
    cxDBTextEdit45: TcxDBTextEdit;
    cxDBTextEdit46: TcxDBTextEdit;
    cxDBTextEdit47: TcxDBTextEdit;
    GroupBox6: TGroupBox;
    GroupBox4: TGroupBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit77: TcxDBTextEdit;
    cxDBTextEdit90: TcxDBTextEdit;
    cxDBTextEdit91: TcxDBTextEdit;
    cxDBTextEdit92: TcxDBTextEdit;
    cxDBTextEdit93: TcxDBTextEdit;
    cxDBTextEdit94: TcxDBTextEdit;
    cxDBTextEdit95: TcxDBTextEdit;
    cxDBTextEdit96: TcxDBTextEdit;
    cxDBTextEdit97: TcxDBTextEdit;
    cxDBTextEdit98: TcxDBTextEdit;
    cxDBTextEdit99: TcxDBTextEdit;
    cxDBTextEdit100: TcxDBTextEdit;
    cxDBTextEdit65: TcxDBTextEdit;
    cxDBTextEdit66: TcxDBTextEdit;
    cxDBTextEdit67: TcxDBTextEdit;
    cxDBTextEdit68: TcxDBTextEdit;
    cxDBTextEdit69: TcxDBTextEdit;
    cxDBTextEdit70: TcxDBTextEdit;
    cxDBTextEdit71: TcxDBTextEdit;
    cxDBTextEdit72: TcxDBTextEdit;
    cxDBTextEdit73: TcxDBTextEdit;
    cxDBTextEdit74: TcxDBTextEdit;
    cxDBTextEdit75: TcxDBTextEdit;
    cxDBTextEdit76: TcxDBTextEdit;
    cxDBTextEdit79: TcxDBTextEdit;
    cxDBTextEdit80: TcxDBTextEdit;
    cxDBTextEdit81: TcxDBTextEdit;
    cxDBTextEdit82: TcxDBTextEdit;
    cxDBTextEdit83: TcxDBTextEdit;
    cxDBTextEdit84: TcxDBTextEdit;
    cxDBTextEdit85: TcxDBTextEdit;
    cxDBTextEdit86: TcxDBTextEdit;
    cxDBTextEdit87: TcxDBTextEdit;
    cxDBTextEdit88: TcxDBTextEdit;
    cxDBTextEdit89: TcxDBTextEdit;
    cxDBTextEdit102: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit48: TcxDBTextEdit;
    cxDBTextEdit49: TcxDBTextEdit;
    cxDBTextEdit50: TcxDBTextEdit;
    cxDBTextEdit51: TcxDBTextEdit;
    cxDBTextEdit52: TcxDBTextEdit;
    cxDBTextEdit53: TcxDBTextEdit;
    cxDBTextEdit54: TcxDBTextEdit;
    cxDBTextEdit55: TcxDBTextEdit;
    cxDBTextEdit56: TcxDBTextEdit;
    cxDBTextEdit57: TcxDBTextEdit;
    cxDBTextEdit58: TcxDBTextEdit;
    cxDBTextEdit59: TcxDBTextEdit;
    cxDBTextEdit60: TcxDBTextEdit;
    cxDBTextEdit61: TcxDBTextEdit;
    cxDBTextEdit62: TcxDBTextEdit;
    cxDBTextEdit63: TcxDBTextEdit;
    cxDBTextEdit64: TcxDBTextEdit;
    Label1: TLabel;
    dsMaster: TDataSource;
    dsReqSheet: TDataSource;
    procedure GroupBox4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    constructor create(Aowner:TComponent);override;
  end;

implementation

uses meltsheetForm,productionplanDatamodule;

{$R *.dfm}

constructor TFrameMeltSheetCustomerRequirement.create(Aowner:TComponent);
var i :integer;
begin
   inherited create(Aowner)     ;
   
end;

procedure TFrameMeltSheetCustomerRequirement.GroupBox4Click(
  Sender: TObject);
begin
   cxDBTextEdit64.DataBinding.DataSource.DataSet.Open;
end;

end.
