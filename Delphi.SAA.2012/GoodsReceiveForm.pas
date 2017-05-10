unit GoodsReceiveForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMasterDetail, DB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  fcStatusBar, wwSpeedButton, wwDBNavigator, wwclearpanel, StdCtrls, Mask,
  wwdbedit, DBCtrls, wwdblook, Wwdbdlg, wwdbdatetimepicker, DBGrids;

type
  TGoodsReceiveNoteForm = class(TBaseUIMasterDetailForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    edGRNNO: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    plSummary: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBEdit2: TwwDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBEdit3: TwwDBEdit;
    DBMemo1: TDBMemo;
    Panel2: TPanel;
    DBText3: TDBText;
    Panel3: TPanel;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    Panel4: TPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwDBNavigator2Insert: TwwNavButton;
    wwDBNavigator2Delete: TwwNavButton;
    wwDBNavigator2Edit: TwwNavButton;
    wwDBNavigator2Post: TwwNavButton;
    wwDBNavigator2Cancel: TwwNavButton;
    wwDBNavigator2Refresh: TwwNavButton;
    dsGRNSummary: TDataSource;
    dlgOrderDetail: TwwDBLookupComboDlg;
    dlgSupplier: TwwDBLookupComboDlg;
    dlgOrderHeader: TwwDBLookupComboDlg;
    procedure FormCreate(Sender: TObject);

    procedure dsDetailDataChange(Sender: TObject; Field: TField);
    procedure Label6Click(Sender: TObject);
  private
    { Private declarations }
    procedure updateGrandTotal;
  protected
    procedure setupdatasets;override;
  public
    { Public declarations }
  end;

var
  GoodsReceiveNoteForm: TGoodsReceiveNoteForm;

implementation
uses    GoodsReceiveDataModule, BaseForm;

{$R *.dfm}

procedure TGoodsReceiveNoteForm.FormCreate(Sender: TObject);
begin
  inherited;
  activeControl :=   edGRNNO;
  dsGRNSummary.DataSet.Open;
  dlgOrderHeader.LookupTable.Open;
 // dlgOrderHeader.ReadOnly :=true; //do not allow to edit 24 April,2010

 
end;

procedure TGoodsReceiveNoteForm.setupdatasets;
BEGIN
   dsMaster.DataSet := GoodsReceiveDM.tbGRNHD;
   dsDetail.dataset := GoodsReceiveDM.tbGRNDT;
   dsGRNSummary.DataSet :=  GoodsReceiveDM.qryGRNSummary;
END    ;

procedure TGoodsReceiveNoteForm.updateGrandTotal;
begin
   GoodsReceiveDM.qryGRNSummary.Close;
   GoodsReceiveDM.qryGRNSummary.ParamByName('paramGRNNO').Value:=    dsMaster.DataSet.FieldByName('grn_no').AsString;
   GoodsReceiveDM.qryGRNSummary.Open;

end;

procedure TGoodsReceiveNoteForm.dsDetailDataChange(Sender: TObject;
  Field: TField);
begin


     GoodsReceiveDM.qryPurchaseOrderHeaderLookup.Close;
     GoodsReceiveDM.qryPurchaseOrderHeaderLookup.ParamByName('psuppCode').value :=   dsMaster.DataSet.FieldByName('supp_code').AsString;
     GoodsReceiveDM.qryPurchaseOrderHeaderLookup.open;
     StatusBar1.Panels[2].Text :='Filter supp_code ='+ dlgOrderHeader.LookupTable.FieldByName('supp_code').AsString;
   //  if Field.FieldName ='ORDER_NO' then
    // begin
       StatusBar1.Panels[2].Text :=   GoodsReceiveDM.qryPurchaseOrderDetailLookup.FieldByName('order_no').AsString;
    // end;
     updateGrandTotal;
end;

procedure TGoodsReceiveNoteForm.Label6Click(Sender: TObject);
begin
  inherited;
  dlgSupplier.DropDown;
end;

end.
