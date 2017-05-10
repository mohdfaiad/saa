unit MeltSheetGotoColumnPopupForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmMeltSheetGotoColumnPopup = class(TForm)
    btOK: TButton;
    btCancel: TButton;
    edColumnNumber: TEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCancelClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
    columnNo:integer;
  public
    { Public declarations }
    FieldList:TStrings;
    function verify:boolean;
    function getColumnNumber: integer;

   constructor create(AOwner:TComponent;list:TStrings);overload;
  end;

var
  frmMeltSheetGotoColumnPopup: TfrmMeltSheetGotoColumnPopup;

implementation

uses Math;

{$R *.dfm}


constructor TfrmMeltSheetGotoColumnPopup.create(AOwner:TComponent;list:TStrings);
begin
  inherited create(AOwner)       ;
  fieldList:=list;
  combobox1.Items :=  fieldList;
    combobox1.ItemIndex:=0;
end;
function TfrmMeltSheetGotoColumnPopup.verify: boolean;
begin
    columnNo:=StrToInt(edColumnNumber.Text);
    result:=columnNo>-1
end;


procedure TfrmMeltSheetGotoColumnPopup.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) then
  begin
    if  verify then
       modalResult:=mrOk
    else modalResult :=mrNone;   
  end
  else if (key=VK_END) THEN
  begin
   // combobox1.ItemIndex :=  combobox1.Items.Count;
    //combobox1
    //edColumnNumber.Text := IntToStr(ComboBox1.ItemIndex) ;
    //close;
  end
  else if (key =VK_ESCAPE) then
      close;
end;


function TfrmMeltSheetGotoColumnPopup.getColumnNumber: integer;
begin
  result:= columnNo;
end;

procedure TfrmMeltSheetGotoColumnPopup.btCancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMeltSheetGotoColumnPopup.ComboBox1Change(Sender: TObject);
begin
   edColumnNumber.Text := IntToStr(ComboBox1.ItemIndex) ;
end;

end.
