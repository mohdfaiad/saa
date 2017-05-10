unit FinishedGoodsStockAdjustForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseCXMasterDetail, ImgList, DB, Grids, Wwdbigrd, Wwdbgrid,
  fcStatusBar, ComCtrls, ToolWin, ExtCtrls, StdCtrls, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, wwdblook, Wwdbdlg;

type
  TfrmFNGAdjustForm = class(TBaseCXUIMasterDetailForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    dlgLookupMelt: TwwDBLookupComboDlg;
  private
    { Private declarations }
  public
    { Public declarations }
       procedure setupDataSets;override;
  end;

var
  frmFNGAdjustForm: TfrmFNGAdjustForm;

implementation

uses productionplanDataModule;

{$R *.dfm}



procedure TfrmFNGAdjustForm.setupDataSets;
begin
   dsDetail.DataSet :=ProductionDM.tbFNGAdjustDT;
   dsMaster.DataSet :=ProductionDM.tbFNGAdjustHD;
   dlgLookupMelt.LookupTable:=   ProductionDM.qryFNGStockItem;

   ActiveControl :=  cxDBTextEdit1;


end;


end.
