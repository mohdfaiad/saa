unit DrossEnquiry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, fcStatusBar, DB, StdCtrls, Buttons, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid,ShellApi,dialogutils, ComCtrls, ToolWin, ImgList;

type
  TDrossEnquiryForm = class(TBaseUIForm)
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    edMelt: TEdit;
    Label1: TLabel;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    tbRun: TToolButton;
    tbClose: TToolButton;
    tbExport: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    procedure executeExport(Sender: TObject);
    procedure executeQuery(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tbCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const exportFileName:String='c:\wwDBGridExport.csv';
var
  DrossEnquiryForm: TDrossEnquiryForm;

implementation
uses drossDataModule;

{$R *.dfm}

procedure TDrossEnquiryForm.executeExport(Sender: TObject);
begin
  if (dataSource1.dataset.RecordCount>0) then
  begin
try
  try

    wwDBGrid1.ExportOptions.Save;
  except
   on e:exception do errorex('Could not exported data '+e.Message);
  end;
finally
//@see also shellAPI.DCU
  ShellExecute(Handle, Pchar('open'), Pchar(exportFileName), nil, nil, SW_SHOWNORMAL) ;
end;
end
else
begin
  warning('Nothing need to be export');
end;
end;

procedure TDrossEnquiryForm.executeQuery(Sender: TObject);
begin
  inherited;
  try
    Cursor:=crsqlWait;
    DROSSDM.qryDrossBalance.Close;
    DROSSDM.qryDrossBalance.ParamByName('melt_no').AsString:='%'+edMelt.text+'%';
    DROSSDM.qryDrossBalance.Active:=true;
    IF (dataSource1.dataset.RecordCount <=0) then
    begin
       warning('No result found');
       tbExport.Enabled:=false;
    end else
    begin
       tbExport.Enabled:=true;
    end;
  finally
   Cursor:=crDefault;
  end;
end;

procedure TDrossEnquiryForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   datasource1.DataSet.Close;
end;

procedure TDrossEnquiryForm.FormCreate(Sender: TObject);
begin
  inherited;
  wwDBGrid1.ExportOptions.FileName:=EXPORTFILENAME;
end;

procedure TDrossEnquiryForm.tbCloseClick(Sender: TObject);
begin
  inherited;
 close;
end;

end.
