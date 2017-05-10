unit StockReserved;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, ComCtrls, DB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls,
  ExtCtrls, Buttons, fcStatusBar;

type
  TStockReservedForm = class(TBaseUIForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    reservedGrid: TwwDBGrid;
    dsReserved: TDataSource;
    TabSheet2: TTabSheet;
    dsOnhand: TDataSource;
    Panel1: TPanel;
    lbHeaderInfo: TLabel;
    BitBtn1: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure reservedGridDblClick(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
  private
  flotNo:String;
    { Private declarations }
    procedure openDataSets;
  public
    { Public declarations }
    constructor create(AOwner:TComponent;lotNo:String);overload;

  end;

var
  StockReservedForm: TStockReservedForm;

implementation
uses    WarehouseDM;

{$R *.dfm}
constructor TStockReservedForm.create(AOwner:TComponent;lotNo:String);
begin
    inherited create(AOwner) ;
   WarehouseDataManager.qryStockReserved.ParamByName('LOT_CD').AsString:=lotNo;
   WarehouseDataManager.qryStockOnhandLinkEnq.ParamByName('LOT_CD').AsString:=lotNo;
   flotNo:=lotNo;
   WarehouseDataManager.qryStockReserved.open;
   lbHeaderInfo.Caption := lbHeaderInfo.Caption+' ['+flotNo+']';
   if (WarehouseDataManager.qryStockReserved.RecordCount =0) then
   begin
      TabSheet1.Caption := 'Not record found';
   end
   else
   begin

   end;
  openDataSets;
end;
procedure  TStockReservedForm.openDataSets;
begin
 dsReserved.DataSet.Open;
 dsOnhand.DataSet.Open;
end;
procedure TStockReservedForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsReserved.DataSet.close;
  dsOnhand.DataSet.close;
  action:=caFree;

end;

procedure TStockReservedForm.reservedGridDblClick(Sender: TObject);
begin
  inherited;
  dsReserved.DataSet.close;
  dsReserved.DataSet.Open;
  dsOnhand.DataSet.close;
  dsOnhand.DataSet.Open;
end;

procedure TStockReservedForm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
 //

end;

end.
