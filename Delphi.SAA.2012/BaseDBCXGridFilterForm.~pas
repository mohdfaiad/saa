unit BaseDBCXGridFilterForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TfrmCXGridFilterView = class(TForm)
    cxGrid: TcxGrid;
    cxTableView: TcxGridDBTableView;
    cxTableLevel: TcxGridLevel;
    datasource: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  protected
     procedure retriveFields(DATASET:TDataset);
  public
    { Public declarations }
    constructor create(AOWNER:TComponent;Title:String;dataset:TDataSet);overload;

  end;

var
  frmCXGridFilterView: TfrmCXGridFilterView;

implementation

{$R *.dfm}

constructor TfrmCXGridFilterView.create(AOwner:TComponent;Title:String;dataset:TDataSet);
begin
   inherited create(aowner);
   caption  := title;
   datasource.dataset :=dataset;

end;

procedure TfrmCXGridFilterView.retriveFields(dataset:TDataset);
var FieldIndex:integer;
    cxGridColumn:TcxGridDBColumn;
begin
     for FieldIndex:=0 to dataset.FieldCount -1 do
     begin
        cxGridColumn :=cxTableView.CreateColumn;
        cxGridColumn.DataBinding.DataController.DataSource:=datasource;
        cxGridColumn.DataBinding.FieldName := dataset.Fields[FieldIndex].FieldName;
     end;
end;
procedure TfrmCXGridFilterView.FormCreate(Sender: TObject);
begin

  if not (datasource.dataset = nil) then
  begin
     datasource.dataset.Open;
     retriveFields(datasource.dataset );
  end;
end;

procedure TfrmCXGridFilterView.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  datasource.DataSet.close;
  action := caFree;

end;

end.
