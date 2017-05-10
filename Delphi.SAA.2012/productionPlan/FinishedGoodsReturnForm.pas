unit FinishedGoodsReturnForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseCXMasterDetail, ImgList, DB, Grids, Wwdbigrd, Wwdbgrid,
  fcStatusBar, ComCtrls, ToolWin, ExtCtrls, StdCtrls, wwdblook, Wwdbdlg,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit;

type
  TfrmFNGReturn = class(TBaseCXUIMasterDetailForm)
    Bevel1: TBevel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    dlgLookupMelt: TwwDBLookupComboDlg;
    Label9: TLabel;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label5: TLabel;
    dlgLookupCustomer: TwwDBLookupComboDlg;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    Label6: TLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setupDataSets;override;
  end;

var
  frmFNGReturn: TfrmFNGReturn;

implementation

uses ProductionPlanDataModule;
{$R *.dfm}

procedure TfrmFNGReturn.setupDataSets;
begin
   dsDetail.DataSet :=ProductionDM.tbFNGRETURNDT;
   dsMaster.DataSet :=ProductionDM.tbFNGRETURNHD;
   dlgLookupMelt.LookupTable:=   ProductionDM.qryActiveMeltNo;
   dlgLookupCustomer.LookupTable :=   ProductionDM.tbCustomer;

   ActiveControl :=  cxDBTextEdit1;


end;



end.
