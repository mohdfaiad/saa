unit StockAdjustment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMasterDetail, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  fcStatusBar, DB, StdCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel,
  ComCtrls, wwriched, wwdbdatetimepicker, wwdbedit, wwdblook, Mask,
  Wwdotdot, Wwdbcomb, DBCtrls, Wwdbdlg;

type
  TStockAdjustmentForm = class(TBaseUIMasterDetailForm)
    Panel2: TPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwDBNavigator2First: TwwNavButton;
    wwDBNavigator2PriorPage: TwwNavButton;
    wwDBNavigator2Prior: TwwNavButton;
    wwDBNavigator2Next: TwwNavButton;
    wwDBNavigator2NextPage: TwwNavButton;
    wwDBNavigator2Last: TwwNavButton;
    wwDBNavigator2Insert: TwwNavButton;
    wwDBNavigator2Delete: TwwNavButton;
    wwDBNavigator2Edit: TwwNavButton;
    wwDBNavigator2Post: TwwNavButton;
    wwDBNavigator2Cancel: TwwNavButton;
    wwDBNavigator2Refresh: TwwNavButton;
    wwDBNavigator2SaveBookmark: TwwNavButton;
    wwDBNavigator2RestoreBookmark: TwwNavButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    wwDBComboBoxTrxType: TwwDBComboBox;
    Label5: TLabel;
    wwDBLookupComboMeltNo: TwwDBLookupCombo;
    lbMeltNo: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBEdit2: TwwDBEdit;
    Label6: TLabel;
    wwDBComboBoxMode: TwwDBComboBox;
    DBLookupComboDlgStock: TwwDBLookupComboDlg;
    DBLookupComboDlgLot: TwwDBLookupComboDlg;
    DBLookupComboDlgGRN: TwwDBLookupComboDlg;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Button1: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1Button: TwwNavButton;
    DBMemo1: TDBMemo;
    procedure wwDBComboBoxTrxTypeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
    fdocNo:String;
  public
    { Public declarations }
   // Constructor  create(Aowner:TComponent; documentNo:String;mode:integer ); overload;
    //destructor Destroy; override;
    procedure setupDataSets;override;

  end;

var
  StockAdjustmentForm: TStockAdjustmentForm;

implementation
uses stockAdjustDM,WarehouseDM;

{$R *.dfm}
{
Constructor  TStockAdjustmentForm.create(Aowner:TComponent; documentNo:String;mode:integer );
begin
    inherited create(aowner);
    dtsmaster := dsMaster.DataSet;
    dtsdetail := dsDetail.DataSet;
    fdocNo:=documentNo;

    if mode = 0 then
    begin
        try
          dtsMaster.Filter:='DOC_NO='+''''+documentNo+'''';
        finally
          dtsMaster.Filtered:=true;
         dtsMaster.Open;
        end;
        caption:=caption+' [Editing '+documentNo+']';
    end
    else
    begin
      dtsMaster.Open;
      dtsMaster.Insert;
    end;


     dtsDetail.Open;
     wwDBLookupComboMeltNo.LookupTable.Open;
end;
destructor TStockAdjustmentForm.Destroy;
begin
end;
}

procedure TStockAdjustmentForm.setupDataSets;
begin
 begin
     dsMaster.DataSet := StockAdjustDataModule.tbStockAdjustHeader;
     dsDetail.DataSet :=StockAdjustDataModule.tbStockAdjustDetail;
end;
end;

procedure TStockAdjustmentForm.wwDBComboBoxTrxTypeChange(Sender: TObject);
begin
  if (wwDBComboBoxTrxType.Value='MA') then
  begin
    lbMeltNo.Visible:=true;
    wwDBLookupComboMeltNo.Visible:=true;
  end else
  begin
    lbMeltNo.Visible:=false;
    wwDBLookupComboMeltNo.Visible:=false;
  end;

end;

procedure TStockAdjustmentForm.FormCreate(Sender: TObject);
begin
  //inherited;
  activeControl:=wwDBEdit1;

end;

procedure TStockAdjustmentForm.wwDBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
   inherited;
  if (dtsmaster.Active) then
  begin
 if dtsMaster.FieldByName('MODE').AsString ='C' then
   begin
     wwDBGrid1.ColumnByName('QTY').ReadOnly:=TRUE;
     wwDBGrid1.ColumnByName('unit_cost').ReadOnly:=FALSE;
   end else
   begin
      wwDBGrid1.ColumnByName('QTY').ReadOnly:=FALSE;
      wwDBGrid1.ColumnByName('unit_cost').ReadOnly:=TRUE;

   end
   end;

end;

end.
