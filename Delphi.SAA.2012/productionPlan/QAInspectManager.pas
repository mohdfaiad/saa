unit QAInspectManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractcxDataBrowse, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxBar, Menus,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, fcStatusBar;

type
  TfrmQAInspectManager = class(TcxAbstractDataBrowse)
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableViewLOT_CD: TcxGridDBColumn;
    cxGridDBTableViewPURCHASE_DATE: TcxGridDBColumn;
    cxGridDBTableViewREF_NO: TcxGridDBColumn;
    cxGridDBTableViewREF_DATE: TcxGridDBColumn;
    cxGridDBTableViewSTOCK_CD: TcxGridDBColumn;
    cxGridDBTableViewGROUP_ID: TcxGridDBColumn;
    cxGridDBTableViewACCT_CODE: TcxGridDBColumn;
    cxGridDBTableViewONHAND_QTY: TcxGridDBColumn;
    dsDetail: TDataSource;
    cxGridDBTableView1PURCHASE_DATE: TcxGridDBColumn;
    cxGridDBTableView1ELE1_PERC: TcxGridDBColumn;
    cxGridDBTableView1ELE2_PERC: TcxGridDBColumn;
    cxGridDBTableView1ELE3_PERC: TcxGridDBColumn;
    cxGridDBTableView1ELE4_PERC: TcxGridDBColumn;
    cxGridDBTableView1ELE5_PERC: TcxGridDBColumn;
    cxGridDBTableView1ELE6_PERC: TcxGridDBColumn;
    cxGridDBTableView1ELE7_PERC: TcxGridDBColumn;
    cxGridDBTableView1ELE8_PERC: TcxGridDBColumn;
    cxGridDBTableView1ELE9_PERC: TcxGridDBColumn;
    cxGridDBTableView1ELE10_PERC: TcxGridDBColumn;
    cxGridDBTableView1ELE11_PERC: TcxGridDBColumn;
    cxGridDBTableView1ELE12_PERC: TcxGridDBColumn;
    cxGridDBTableView1ELE13_PERC: TcxGridDBColumn;
    cxGridDBTableView1ACCT_CD: TcxGridDBColumn;
    cxGridDBTableView1REF_NO: TcxGridDBColumn;
    cxGridDBTableView1REF_DATE: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView2LINE_NO: TcxGridDBColumn;
    cxGridDBTableView2REF_DATE: TcxGridDBColumn;
    cxGridDBTableView2REF_NO: TcxGridDBColumn;
    cxGridDBTableView2ELE1_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE2_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE3_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE4_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE5_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE6_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE7_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE8_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE9_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE10_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE11_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE12_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE13_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE14_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE15_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE16_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE17_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE18_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE19_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE20_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE21_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE22_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE23_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE24_PERC: TcxGridDBColumn;
    cxGridDBTableView2ELE25_PERC: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxGridDBTableViewDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQAInspectManager: TfrmQAInspectManager;

implementation


uses ProductionPlanDataModule,QAInspectEditForm;

{$R *.dfm}

procedure TfrmQAInspectManager.FormCreate(Sender: TObject);
begin
  datasource.dataset := ProductionDM.qryQAInspect;
  dsDetail.DataSet := ProductionDM.tbQAElement;
  inherited;

end;

procedure TfrmQAInspectManager.cxGridDBTableViewDblClick(Sender: TObject);
begin
 // inherited;
   frmQAInspectPopupEdit :=   TfrmQAInspectPopupEdit.Create(self);
   frmQAInspectPopupEdit.ShowModal;
end;

end.
