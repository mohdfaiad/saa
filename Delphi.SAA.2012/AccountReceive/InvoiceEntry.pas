unit InvoiceEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMasterDetail, wwSpeedButton, wwDBNavigator, wwclearpanel,
  DB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, fcStatusBar, wwdbdatetimepicker,
  Mask, wwdbedit, StdCtrls, wwdblook, Wwdbdlg, DBCtrls,   ImgList, ComCtrls, ToolWin,DIALOGUTILS;

type
  TInvoiceForm = class(TBaseUIMasterDetailForm)
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    Panel2: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dlgDebtor: TwwDBLookupComboDlg;
    wwDBEdit1: TwwDBEdit;
    edDocNo: TwwDBEdit;
    edDocDate: TwwDBDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label6: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    deDescs: TwwDBEdit;
    lookupDeliveryOrder: TwwDBLookupComboDlg;
    lookupDeliveryOrderItem: TwwDBLookupComboDlg;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ImageList1: TImageList;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Label10: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label11: TLabel;
    edCurrRate: TwwDBEdit;
    dlgTrxType: TwwDBLookupCombo;
    Label12: TLabel;
    DBText1: TDBText;
    dlgLookupIndirectSaleItem: TwwDBLookupComboDlg;
    procedure dsDetailDataChange(Sender: TObject; Field: TField);
    procedure Label2DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure wwDBGrid1BeforePaint(Sender: TObject);
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure repaintGrid;

  public
    { Public declarations }
    //RequireReference true then allow to specify delivery information else hidden
    //delivery information but minor specify Aor instead
    requireReference:boolean;
    procedure updateThaiBath;
    procedure setupDataSets; override;
    procedure openInvoiceLineEditor;
    procedure doAfterInsert(dataset:Tdataset);
    procedure initComponents;override;
    procedure filterTransactionType;

  end;

var
  InvoiceForm: TInvoiceForm;

implementation
uses accountReceiveDataModule,InvoiceLineEdit,CommomShareDataModule;

{$R *.dfm}

procedure TInvoiceForm.updateThaiBath;
BEGIN

END;

procedure TInvoiceForm.openInvoiceLineEditor;
var info:string  ;

begin
     info:= dsDetail.DataSet.fieldbyname('DELIVERY_NO').AsString+'/'+ dsDetail.DataSet.fieldbyname('ORDER_NO').AsString+'/'+
             dsDetail.DataSet.fieldbyname('ITEM_DESCS').AsString  ;

      InvoiceLineEditForm :=TInvoiceLineEditForm.create(self,dsDetail.DataSet);
      InvoiceLineEditForm.setBarInfo(info);
      InvoiceLineEditForm.ShowModal;
      InvoiceLineEditForm.Free;
      //if (dsDetail.DataSet.Modified) then dsDetail.dataset.post;
end;      


procedure TInvoiceForm.doAfterInsert(dataset:Tdataset);
begin
   openInvoiceLineEditor;
end;
procedure TInvoiceForm.filterTransactionType;
begin
    dlgTrxType.LookupTable.FilterED:=false;
    dlgTrxType.LookupTable.Filter:='Default_Module='+QuotedStr(DEFAULT_MODULE)+ ' AND MODE='+QuotedStr(INVOICE_MODE);
    dlgTrxType.LookupTable.FilterED:=true;
end;
procedure TInvoiceForm.repaintGrid;
begin
   if (dtsMaster.Active ) and (requireReference = false) then
  begin
     dlgLookupIndirectSaleItem.Visible :=true;
     lookupDeliveryOrderItem.Visible:=false;
     wwDBGrid1.SetControlType('DELIVERY_NO',fctNone,''); //set null control
     wwDBGrid1.SetControlType('ORDER_NO',fctCustom,'dlgLookupIndirectSaleItem;F');
     wwDBGrid1.SetActiveField('ORDER_NO');
     wwDBGrid1.ColumnByName('DELIVERY_DATE').ReadOnly :=true;
     wwDBGrid1.ColumnByName('DELIVERY_NO').ReadOnly :=true;
     wwDBGrid1.ColumnByName('PURCHASE_NO').ReadOnly :=false;
     wwDBGrid1.ColumnByName('PURCHASE_DATE').ReadOnly :=false;

  end  else
  begin
     lookupDeliveryOrderItem.Visible:=false;
     wwDBGrid1.SetControlType('DELIVERY_NO',fctCustom,'lookupDeliveryOrder;F');
     wwDBGrid1.SetControlType('ORDER_NO',fctCustom,'lookupDeliveryOrderItem;F');
     wwDBGrid1.ColumnByName('DELIVERY_DATE').ReadOnly :=false;
     wwDBGrid1.ColumnByName('DELIVERY_NO').ReadOnly :=false;
     lookupDeliveryOrderItem.Visible :=true;
     dlgLookupIndirectSaleItem.Visible :=false;

  end;
  wwdbgrid1.Repaint;
  //wwdbgrid1.applyselected;
end;
procedure TInvoiceForm.initComponents;
begin
    requireReference := (dsMaster.DataSet.FieldByName('REQUIRE_REFERENCE').AsString='Y');
    repaintGrid;
    dlgLookupIndirectSaleItem.Visible :=false;
    filterTransactionType;
end;
procedure TInvoiceForm.setupdatasets;
BEGIN
   dsMaster.DataSet := AccountReceiveDM.tbInvoiceHD;
   dsDetail.dataset := AccountReceiveDM.tbInvoiceDT;
END;
procedure TInvoiceForm.dsDetailDataChange(Sender: TObject; Field: TField);
begin
//updateThaiBath

end;

procedure TInvoiceForm.Label2DblClick(Sender: TObject);
begin
  inherited;
   edDocDate.DropDown;

end;

procedure TInvoiceForm.FormCreate(Sender: TObject);
begin
  inherited;
  activeControl:=edDocNo;

 // dsdetail.DataSet.AfterInsert := doAfterInsert;

end;

procedure TInvoiceForm.wwDBGrid1DblClick(Sender: TObject);
begin
  openInvoiceLineEditor;

end;

procedure TInvoiceForm.ToolButton1Click(Sender: TObject);
begin
openInvoiceLineEditor;

end;

procedure TInvoiceForm.ToolButton2Click(Sender: TObject);
begin
  inherited;
  showSystemCalculator(self);
end;

procedure TInvoiceForm.Label3Click(Sender: TObject);
begin
  inherited;
  dlgDebtor.DropDown;

end;

procedure TInvoiceForm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  inherited;
 fdocumentNo :=dsMaster.DataSet.FieldByName('DOC_NO').AsString;
  wwDBGrid1.ColumnByName('DELIVERY_NO').FooterValue:='Invoice Total:';
  wwDBGrid1.ColumnByName('DELIVERY_DATE').FooterValue:=FormatFloat('#,##0.00',AccountReceiveDM.getInvoiceAmount(fdocumentNo));
end;

procedure TInvoiceForm.wwDBGrid1BeforePaint(Sender: TObject);
begin
  inherited;
 //repaintGrid;
end;

procedure TInvoiceForm.dsMasterDataChange(Sender: TObject; Field: TField);
begin
  inherited;
   requireReference := (dsMaster.DataSet.FieldByName('REQUIRE_REFERENCE').AsString='Y');
   repaintGrid;

end;

end.
