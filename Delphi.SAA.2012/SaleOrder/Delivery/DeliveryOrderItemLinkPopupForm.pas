unit DeliveryOrderItemLinkPopupForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  StdCtrls,DialogUtils;

type
  TfrmDeliveryItemLinkPopup = class(TForm)
    Label5: TLabel;
    btCancel: TButton;
    btSave: TButton;
    cxWeightText: TcxMaskEdit;
    cxBundleEdit: TcxMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    function getBundle:integer;
    function getWeight :double;

    constructor create(AOwner : TComponent;acaption:string );overload;
  end;

var
  frmDeliveryItemLinkPopup: TfrmDeliveryItemLinkPopup;

implementation

{$R *.dfm}


constructor TfrmDeliveryItemLinkPopup.create(AOwner : TComponent;acaption:string )   ;

begin
  inherited create(aowner);
  self.Caption := acaption;
end;
function  TfrmDeliveryItemLinkPopup.getBundle:integer;
begin
   result :=-1;
  if cxBundleEdit.Text <>'' then
  begin
    try

     result := StrToInt(cxBundleEdit.Text)  ;
    except on e:exception do
       ErrorEx('Converting error '+e.Message)
    end;
  end;
//
end;
function  TfrmDeliveryItemLinkPopup.getWeight :double;
begin
   result:=-1;
   if (cxWeightText.Text <>'') then
   begin
     try
      result:= strtofloat(cxWeightText.Text);
      except on e:exception do
       ErrorEx('Converting error '+e.Message)
    end;
   end;
end;



end.
