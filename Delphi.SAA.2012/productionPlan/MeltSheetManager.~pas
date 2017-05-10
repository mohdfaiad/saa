unit MeltSheetManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractcxDataBrowse, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxBar, Menus,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, fcStatusBar,DialogUtils;

type
  TfrmMeltSheetManager = class(TcxAbstractDataBrowse)
    cxGridDBTableViewPLAN_DATE: TcxGridDBColumn;
    cxGridDBTableViewPLAN_DOC: TcxGridDBColumn;
    cxGridDBTableViewMELT_NO: TcxGridDBColumn;
    cxGridDBTableViewITEM_CODE: TcxGridDBColumn;
    cxGridDBTableViewTOTAL_CHARGED_WEIGHT: TcxGridDBColumn;
    cxGridDBTableViewTOTAL_RECOVERY_WEIGHT: TcxGridDBColumn;
    cxGridDBTableViewTOTAL_COST: TcxGridDBColumn;
    cxGridDBTableViewCUST_NAME: TcxGridDBColumn;
    cxGridDBTableViewITEM_DESCS: TcxGridDBColumn;
    cxGridDBTableViewTAP_REMARK: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure doPostAction(Sender: TObject);override;
    procedure doNewAction(Sender: TObject);override;
    procedure doEditAction(Sender: TObject);override;
    procedure doDeleteAction(sender:TObject);override;
    procedure setupdatasets;override;
  end;

var
  frmMeltSheetManager: TfrmMeltSheetManager;

implementation

USES productionplandatamodule,MeltSheetForm, AbstractDataBrowse;
{$R *.dfm}

procedure TfrmMeltSheetManager.doPostAction(Sender: TObject);
begin
   if (confirm('Are you sure. Do you want to post this docuemnt='+fSelectedObject)=mrYES) THEN
   BEGIN
      fsuccess:= ProductionDM.updateMeltSheetStatus(fSelectedObject,
      Datasource.DataSet.Fieldbyname('MELT_NO').AsString,
      'X');
      if  (fsuccess) then
      begin
        doRefreshAction(sender);
      end;
   END ELSE INFO('Process Aborted') ;

//
end;
procedure TfrmMeltSheetManager.doNewAction(Sender: TObject);
begin
  frmMeltSheet:= TfrmMeltSheet.create(self,fSelectedObject,'PLAN_DOC',0);
  frmMeltSheet.FormStyle :=fsMdiChild;
  frmMeltSheet.Top :=0;
  frmMeltSheet.Left :=0;
  frmMeltSheet.WindowState:= wsMaximized;
  frmMeltSheet.Show;
end;
procedure TfrmMeltSheetManager.doEditAction(Sender: TObject);
begin
  frmMeltSheet:= TfrmMeltSheet.create(self,fSelectedObject,'PLAN_DOC',1);
  frmMeltSheet.FormStyle :=fsMdiChild;
  frmMeltSheet.Top :=0;
  frmMeltSheet.Left :=0;
  frmMeltSheet.WindowState:= wsMaximized; 
  frmMeltSheet.Show;
end;
procedure TfrmMeltSheetManager.doDeleteAction(sender:TObject);
begin
 if (confirm('Are you sure. Do you want to Delete this docuemnt='+fSelectedObject)=mrYES) THEN
   BEGIN
      fsuccess:= ProductionDM.deleteMeltSheet(fSelectedObject,
      Datasource.DataSet.Fieldbyname('MELT_NO').AsString);
      if  (fsuccess) then
      begin
        doRefreshAction(sender);
      end;
   END ELSE INFO('Process Aborted') ;

end;
procedure TfrmMeltSheetManager.setupdatasets;
begin
  datasource.DataSet := ProductionDM.qryUnPostMeltSheet;
end;


end.
