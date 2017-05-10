unit SaleItemDuplicateDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, cxControls, cxContainer, cxEdit, cxTextEdit;

type
  TfrmSaleItemDupliatePopup = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    cxTextEdit1: TcxTextEdit;
    Label1: TLabel;
  private
    { Private declarations }
    fitemcode:string;
  public
    { Public declarations }

    constructor create(aowner:TComponent;aitemcode:string);overload;
    function getnewItemCode:string;
  end;

var
  frmSaleItemDupliatePopup: TfrmSaleItemDupliatePopup;

implementation

{$R *.dfm}


constructor TfrmSaleItemDupliatePopup.create(aowner:TComponent;aitemcode:string);

begin
   Inherited  create(aowner)  ;
   fitemcode:= aitemcode;
   cxTextEdit1.Text :=fITEMCODE+'._';
end;

function TfrmSaleItemDupliatePopup.getnewItemCode:STRING;
BEGIN
   result:=    cxTextEdit1.Text;
END;

end.
