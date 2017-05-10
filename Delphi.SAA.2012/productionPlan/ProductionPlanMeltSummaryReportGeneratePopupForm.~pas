unit ProductionPlanMeltSummaryReportGeneratePopupForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDialog, StdCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit,dialogutils;

type
  TfrmProPlanMeltSummayReportGenerate = class(TBaseDialogNew)
    GroupBox1: TGroupBox;
    cxFromMelt: TcxTextEdit;
    cxToMelt: TcxTextEdit;
    btConfirm: TButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cbMeltSuffix: TCheckBox;
    cxMeltSuffix: TcxTextEdit;
    Button1: TButton;
    Label3: TLabel;
    lbResultValue: TLabel;
    procedure btConfirmClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    meltSuffixValid:boolean;
    { Private declarations }
         plandoc:String  ;
    function valid:boolean;

  public
    { Public declarations }
    function getPlanDOc:string;
    constructor create(AOwner:TComponent; aplandoc:String);overload;
  end;

var
  frmProPlanMeltSummayReportGenerate: TfrmProPlanMeltSummayReportGenerate;



implementation

uses productionplandatamodule;

{$R *.dfm}

constructor TfrmProPlanMeltSummayReportGenerate.create(AOwner:TComponent;aplandoc:string);
begin
 inherited Create(AOwner);
  plandoc :=aplandoc;
  meltSuffixValid := true;
end;
 //retrun if input parameter is valid
function   TfrmProPlanMeltSummayReportGenerate.valid:boolean;
begin

   result:= ((cxFromMelt.Text<>'') and (cxToMelt.Text<>'') and (plandoc<>'')) and meltSuffixValid ;
   //
end;
procedure TfrmProPlanMeltSummayReportGenerate.btConfirmClick(
  Sender: TObject);

  procedure handleError(e:Exception);
  begin
     modalResult:=mrAbort;
  end;
begin
  if   valid  then
  begin
      try
       MODALRESULT:=MRYES;
     except on e:exception do
       handleError(e);
     end;
  end else begin
      errorEx('Invalid melt summary report generate parameter');
      modalResult:=mrAbort;
     close;
  end;

end;

procedure TfrmProPlanMeltSummayReportGenerate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  
  action:=caFree;

end;


function TfrmProPlanMeltSummayReportGenerate.getPlanDOc:string;
begin
    result:= plandoc;
end;

procedure TfrmProPlanMeltSummayReportGenerate.Button1Click(
  Sender: TObject);
  var vplanDoc:String;
begin
     vplanDoc:='';
    if (cbMeltSuffix.Checked) and (cxMeltSuffix.Text <>'')then
    begin
        vplanDoc:= ProductionDM.getPlaningDocumentByMeltSuffix(cxMeltSuffix.text)  ;
        if (vplanDoc<>'') then
        begin
            plandoc:=     vplanDoc;
            lbResultValue.Caption:=plandoc;
            meltSuffixValid :=true;
            cxFromMelt.Text :=  '0?'+ cxMeltSuffix.text;
            cxToMelt.Text :=   '??'+cxMeltSuffix.text;
        end else
        begin
           warning('Invalid melt suffix. System could not find melt suffix in planning history data');
           cbMeltSuffix.Checked:=false;
           cxMeltSuffix.text:='';
           end;
    end   else
    begin
          warning('Melt suffix must be check and Melt suffix Text must have valid value');
          meltSuffixValid :=true;
    end;


end;

end.
