unit GoodsReceiveDataModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataModule,WAREHOUSEDM, DB, IBCustomDataSet, IBTable,
  IBQuery, IBStoredProc;

type
  TGoodsReceiveDM = class(TAbstractDM)
    tbGRNHD: TIBTable;
    tbGRNDT: TIBTable;
    tbGRNHDSUPP_CODE: TIBStringField;
    tbGRNHDGRN_NO: TIBStringField;
    tbGRNHDGRN_DATE: TDateTimeField;
    tbGRNHDREF_NO: TIBStringField;
    tbGRNHDREF_DATE: TDateTimeField;
    tbGRNHDUPDATE_USER: TIBStringField;
    tbGRNHDUPDATE_DATE: TDateTimeField;
    tbGRNHDSTATUS: TIBStringField;
    tbGRNHDGRN_AMT: TFloatField;
    tbGRNHDDESCS: TIBStringField;
    tbGRNHDTAX_AMT: TFloatField;
    tbGRNHDREMARKS: TIBStringField;
    tbGRNHDNAME: TIBStringField;
    tbGRNHDNO_OF_PRINT: TSmallintField;
    tbGRNDTITEM_CODE: TIBStringField;
    tbGRNDTORDER_LINE: TSmallintField;
    tbGRNDTSUPP_CODE: TIBStringField;
    tbGRNDTGRN_DATE: TDateTimeField;
    tbGRNDTGRN_NO: TIBStringField;
    tbGRNDTUOM: TIBStringField;
    tbGRNDTITEM_DESCS: TIBStringField;
    tbGRNDTUNIT_COST: TFloatField;
    tbGRNDTTOTAL_AMT: TFloatField;
    tbGRNDTREMARKS: TIBStringField;
    tbGRNDTDISCS_AMT: TFloatField;
    tbGRNDTTAX_AMT: TFloatField;
    tbGRNDTBASE_AMT: TFloatField;
    tbGRNDTTAX_CD: TIBStringField;
    tbGRNDTGRN_LINE: TSmallintField;
    tbGRNDTDISCS_CD: TIBStringField;
    tbGRNDTGRN_QTY: TFloatField;
    tbGRNDTORDER_QTY: TFloatField;
    tbGRNDTTAX_RATE: TFloatField;
    tbGRNDTORDER_NO: TIBStringField;
    tbGRNDTORDER_DATE: TDateTimeField;
    tbGRNDTSTATUS: TIBStringField;
    tbGRNDTGROUP_ID: TIBStringField;
    tbGRNDTLOT_NO: TIBStringField;
    tbGRNDTMARK_UP: TSmallintField;
    qryUnPostedGRN: TIBQuery;
    qryUnPostedGRNGRN_NO: TIBStringField;
    qryUnPostedGRNGRN_DATE: TDateTimeField;
    qryUnPostedGRNDESCS: TIBStringField;
    qryUnPostedGRNNAME: TIBStringField;
    sp_postGrn: TIBStoredProc;
    qryUnPostedGRNSUPP_CODE: TIBStringField;
    tbSupplier: TIBTable;
    qrySupplierLookup: TIBQuery;
    qrySupplierLookupSUPPLIER_CD: TIBStringField;
    qrySupplierLookupCREDITOR_ACCT: TIBStringField;
    qrySupplierLookupNAME: TIBStringField;
    qrySupplierLookupADDRESS1: TIBStringField;
    qrySupplierLookupADDRESS2: TIBStringField;
    qrySupplierLookupADDRESS3: TIBStringField;
    qrySupplierLookupTELEPHONE: TIBStringField;
    qrySupplierLookupFAX_NO: TIBStringField;
    qrySupplierLookupCONTRACT_PERSON: TIBStringField;
    qrySupplierLookupUPDATE_USER: TIBStringField;
    qrySupplierLookupUPDATE_DATE: TDateTimeField;
    qrySupplierLookupTAX_CD: TIBStringField;
    qrySupplierLookupPOSTCODE: TIBStringField;
    qrySupplierLookupPROVINCE: TIBStringField;
    tbSupplierSUPPLIER_CD: TIBStringField;
    tbSupplierCREDITOR_ACCT: TIBStringField;
    tbSupplierNAME: TIBStringField;
    tbSupplierADDRESS1: TIBStringField;
    tbSupplierADDRESS2: TIBStringField;
    tbSupplierADDRESS3: TIBStringField;
    tbSupplierTELEPHONE: TIBStringField;
    tbSupplierFAX_NO: TIBStringField;
    tbSupplierCONTRACT_PERSON: TIBStringField;
    tbSupplierUPDATE_USER: TIBStringField;
    tbSupplierUPDATE_DATE: TDateTimeField;
    tbSupplierTAX_CD: TIBStringField;
    tbSupplierPOSTCODE: TIBStringField;
    tbSupplierPROVINCE: TIBStringField;
    qryPurchaseOrderHeaderLookup: TIBQuery;
    qryPurchaseOrderDetailLookup: TIBQuery;
    qryPurchaseOrderHeaderLookupSUPP_CODE: TIBStringField;
    qryPurchaseOrderHeaderLookupORDER_NO: TIBStringField;
    qryPurchaseOrderHeaderLookupORDER_DATE: TDateTimeField;
    qryPurchaseOrderHeaderLookupREF_NO: TIBStringField;
    qryPurchaseOrderHeaderLookupREF_DATE: TDateTimeField;
    qryPurchaseOrderHeaderLookupUPDATE_USER: TIBStringField;
    qryPurchaseOrderHeaderLookupUPDATE_DATE: TDateTimeField;
    qryPurchaseOrderHeaderLookupSTATUS: TIBStringField;
    qryPurchaseOrderHeaderLookupORDER_AMT: TFloatField;
    qryPurchaseOrderHeaderLookupDESCS: TIBStringField;
    qryPurchaseOrderHeaderLookupDELIVERY_DATE: TDateTimeField;
    qryPurchaseOrderHeaderLookupFAX_TO: TIBStringField;
    qryPurchaseOrderHeaderLookupCC_TO: TIBStringField;
    qryPurchaseOrderHeaderLookupREMARKS: TIBStringField;
    qryPurchaseOrderHeaderLookupNO_OF_PRINT: TSmallintField;
    qryPurchaseOrderHeaderLookupVALIDITY: TDateTimeField;
    qryPurchaseOrderHeaderLookupMARKUP: TSmallintField;
    qryPurchaseOrderHeaderLookupTAX_AMT: TFloatField;
    qryPurchaseOrderHeaderLookupDISCS_AMT: TFloatField;
    qryPurchaseOrderHeaderLookupTERM_OF_PAYMENT: TSmallintField;
    qryPurchaseOrderHeaderLookupSTOCK_EMPTY: TIBStringField;
    dsPurchaseOrderHeaderLookup: TDataSource;
    qryGRNSummary: TIBQuery;
    qryGRNSummaryBASEAMOUNT: TFloatField;
    qryGRNSummaryTAXAMOUNT: TFloatField;
    qryGRNSummaryTOTALAMOUNT: TFloatField;
    dsGRNHD: TDataSource;
    dsGRNDT: TDataSource;
    qryAdhoc: TIBQuery;
    qryPurchaseOrderDetailLookupITEM_CODE: TIBStringField;
    qryPurchaseOrderDetailLookupLINE_NO: TSmallintField;
    qryPurchaseOrderDetailLookupORDER_DATE: TDateTimeField;
    qryPurchaseOrderDetailLookupSUPP_CODE: TIBStringField;
    qryPurchaseOrderDetailLookupUOM: TIBStringField;
    qryPurchaseOrderDetailLookupORDER_NO: TIBStringField;
    qryPurchaseOrderDetailLookupITEM_DESCS: TIBStringField;
    qryPurchaseOrderDetailLookupUNIT_COST: TFloatField;
    qryPurchaseOrderDetailLookupTOTAL_AMT: TFloatField;
    qryPurchaseOrderDetailLookupREMARKS: TIBStringField;
    qryPurchaseOrderDetailLookupDISCS_AMT: TFloatField;
    qryPurchaseOrderDetailLookupTAX_AMT: TFloatField;
    qryPurchaseOrderDetailLookupBASE_AMT: TFloatField;
    qryPurchaseOrderDetailLookupTAX_CD: TIBStringField;
    qryPurchaseOrderDetailLookupDISCS_CD: TIBStringField;
    qryPurchaseOrderDetailLookupQTY: TFloatField;
    qryPurchaseOrderDetailLookupTAX_RATE: TFloatField;
    qryPurchaseOrderDetailLookupSTATUS: TIBStringField;
    qryPurchaseOrderDetailLookupGRN_QTY: TFloatField;
    qryPurchaseOrderDetailLookupLOT_NO: TIBStringField;
    qryPurchaseOrderDetailLookupGROUP_ID: TIBStringField;
    qryPurchaseOrderDetailLookupMARKUP: TSmallintField;
    qryPurchaseOrderDetailLookupDISCS_RATE: TFloatField;
    qryPurchaseOrderDetailLookupUPDATE_PRICE: TFloatField;
    qryPurchaseOrderDetailLookupUPDATE_TOTAL_AMT: TFloatField;
    qryPurchaseOrderDetailLookupSTOCK_EMPTY: TIBStringField;
    tbGRNDTReceivedQty: TFloatField;
    qryOrderItemLookupByItemCode: TIBQuery;
    qrygetCurrentGoodsReceiveQty: TIBQuery;
    procedure tbGRNHDNewRecord(DataSet: TDataSet);
    procedure tbGRNHDSUPP_CODEChange(Sender: TField);
    procedure tbGRNHDAfterScroll(DataSet: TDataSet);
    procedure tbGRNHDBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tbGRNDTAfterScroll(DataSet: TDataSet);
    procedure qryPurchaseOrderHeaderLookupAfterScroll(DataSet: TDataSet);
    procedure tbGRNDTORDER_NOChange(Sender: TField);
    procedure tbGRNDTITEM_CODEChange(Sender: TField);
    procedure tbGRNDTGRN_QTYChange(Sender: TField);
    procedure tbGRNDTNewRecord(DataSet: TDataSet);
    procedure tbGRNDTBeforeDelete(DataSet: TDataSet);
    procedure tbGRNDTAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function postGoodsReceiveNote(ASuppCode:String;AGrnNo:String;AGrnDate:TDateTime):boolean;
    function deleteGoodsReceiveNote(AGrnNo:String):boolean;
    function isGRNExists(AGRNNO:String):boolean;
    function getNextGRNLine(asuppCode,agrnno:string) :integer;
    function updatePurchaseOrderHistory(asuppCode,aOrderNo,aitemcode:string;aQty:double;aOption:integer):boolean;
    function getCurrentPurchaseOrderReceivedQty(asuppCode,aOrderNo,aitemcode:string):double;



  end;

var
  GoodsReceiveDM: TGoodsReceiveDM;

implementation
uses DialogUtils;



{$R *.dfm}

{check if grn no already exists since primary key is combinate with grndate,supp_code}
function TGoodsReceiveDM.isGRNExists(agrnno:String):boolean ;
 procedure   failed(e:exception);
 begin
   errorex('Could not find '+agrnNo+' error='+#13+e.Message);
   result:=false;
 end ;
begin
   result:=false;
   try
     with qryAdhoc do
     begin
        close;
        qryAdhoc.SQL.Text :='SELECT COUNT(*) FROM PO_GRN_HD WHERE GRN_NO='+QuotedStr(aGrnNo);
        Open;
        result:=(Fields[0].AsInteger >0);
     end;
   except on e:exception do failed(e);
   end;
end;

{**
generate n ext line no
*}
function       TGoodsReceiveDM.getNextGRNLine(asuppcode,agrnno:string):integer;
 procedure   failed(e:exception);
 begin
   errorex('Could not generate grn line for '+agrnNo+' error='+#13+e.Message);
   result:=-1;
 end   ;
begin
   result:=-1;
   try
     with qryAdhoc do
     begin
        close;
        qryAdhoc.SQL.Text :='SELECT max(grn_line) FROM PO_GRN_dt WHERE GRN_NO='+QuotedStr(aGrnNo)+ 'and supp_code='+quotedStr(asuppCode);
        Open;
        result:=(Fields[0].AsInteger +1);
     end;
   except on e:exception do failed(e);
   end;

end;
{***
update grnqty back to po_order_dt

**}


function TGoodsReceiveDM.postGoodsReceiveNote(ASuppCode:String;AGrnNo:String;AGrnDate:TDateTime):boolean;
 procedure   failed(e:exception);
 begin
   errorex('Failed to post '+agrnNo+' error='+#13+e.Message);
   result:=false;
 end;
begin
  result:= true;
  try
     with  sp_postGrn do
     begin
        Close;
        parambyname('ACCT_CD').AsString:=aSuppCode;
        parambyname('DOC_NO').AsString:=aGrnNo;
        parambyname('DOC_Date').AsDateTime:= agrnDate ;
        parambyname('MODULE').AsString :='PO';
        parambyname('UPDATE_USER').AsString :=WarehouseDataManager.User.userid;
        parambyname('MODE').AsString  :='I';
        ExecProc;
     end;
  except
  on  e:exception do   failed(e);

  end;
  {
   RowsAffected not working with TIBStorproc but works with TIBQuery
   alway return true
  }
 //
end;

{***
get current grn qty
}
function TGoodsReceiveDM.getCurrentPurchaseOrderReceivedQty(asuppCode,aOrderNo,aitemcode:string):double;
procedure   failed(e:exception);
 begin
   errorex('Could not update purchase history '+aOrderNo+' error='+#13+e.Message);
   result:=0;
 end;

begin
   result:=0;
   with qryAdhoc do
   begin
   try
      close;
      sql.text :='select sum(grn_qty) from po_grn_dt'+#13+
                  'where supp_code='+quotedStr(aSuppCode)+
                  'and order_no='+quotedStr(aOrderNo) +
                  'and item_code ='+quotedStr(aitemcode);
      open;
      result := fields[0].asfloat;
      except on e:exception do failed(e);
   end;
   end;


end;
 {
 9 Jan,2009 add aitemcode to avoid wrongly update when purchase has been issued with
 multiple lines
 }
function TGoodsReceiveDM.updatePurchaseOrderHistory(asuppcode,aOrderNo,aitemcode:string;aQty:double;aoption:integer):boolean;
 procedure   failed(e:exception);
 begin
   errorex('Could not update purchase history '+aOrderNo+' error='+#13+e.Message);
   result:=false;
 end;
  var currentGrnQty:double;
begin
   result:=true;
   currentGrnQty:=0;

   try

      currentGrnQty :=     getCurrentPurchaseOrderReceivedQty(asuppcode,aorderno,aitemcode);
   except on E:eXCEPTION do
         failed(e);
   end;
   with qryAdhoc do
   begin
   try
      close;
     
      begin
          //update full amount
          sql.text :='update po_order_dt set grn_qty= '+floattostr(currentGrnQty)+#13+
                  'where supp_code='+quotedStr(aSuppCode)+
                  'and order_no='+quotedStr(aOrderNo)+
                  'and item_code ='+quotedStr(aitemcode);
      end  ;
      ExecSQL;
      except on e:exception do failed(e);
   end;
   END;
end;

function TGoodsReceiveDM.deleteGoodsReceiveNote(AGrnNo:String):boolean ;
procedure   failed(e:exception);
 begin
   errorex('Failed to post '+agrnNo+' error='+#13+e.Message);
   result:=false;
 end;
begin
  result:= true;
  try
     with  qryAdhoc do
     begin
      close;
       sql.Text:='Delete from PO_GRN_HD WHERE GRN_NO='+QuotedStr(agrnNo);
       ExecSQL;
     end;
  except
  on  e:exception do   failed(e);

  end;
  {
   RowsAffected not working with TIBStorproc but works with TIBQuery
   alway return true
  }
 //
end;

procedure TGoodsReceiveDM.tbGRNHDNewRecord(DataSet: TDataSet);
begin
  dataset.FieldByName('STATUS').AsString:='N';
  dataset.FieldByName('DESCS').AsString :='Goods Receive Note';
  DataSet.FieldByName('GRN_DATE').AsDateTime:=Date;
  tbGRNHDGRN_AMT.AsFloat :=0;

end;

procedure TGoodsReceiveDM.tbGRNHDSUPP_CODEChange(Sender: TField);
begin
  inherited;
   tbGRNHDName.AsString :=tbSupplierNAME.AsString;
end;

procedure TGoodsReceiveDM.tbGRNHDAfterScroll(DataSet: TDataSet);
begin
  //inherited;
 {     tbGRNDT.Active :=true;
     if (tbGRNDT.RecordCount >0) THEN
     BEGIN
        commit;
        qryGRNSummary.Close;
        qryGRNSummary.ParamByName('paramGRNNO').Value:=   tbGRNHDGRN_NO.AsString;
        qryGRNSummary.Open;
     END     }
end;

procedure TGoodsReceiveDM.tbGRNHDBeforePost(DataSet: TDataSet);
begin
  if (dataset.State = dsInsert) then    //only check when data is in insert mode
  // 11 Nov,2010
  if isGrnExists(DataSet.fieldByName('GRN_NO').AsString) then
  begin
       warning('GRN NO ='+DataSet.fieldByName('GRN_NO').AsString+' has already exist.!!!');
      if (dataset.Modified) then dataset.Cancel;

  end
  else
  begin
    DataSet.FieldByName('UPDATE_user').AsString :=WarehouseDataManager.User.userid;
    dataset.FieldByName('update_date').AsDateTime:=now;
  end;

end;

procedure TGoodsReceiveDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  setDisplayFormat;
end;

procedure TGoodsReceiveDM.tbGRNDTAfterScroll(DataSet: TDataSet);
var suppCode,ORDERNO:String;
begin

  if (dataset.RecordCount>0) then
  begin
     suppCode  :=tbGRNHD.FieldByName('supp_code').AsString;
     if (suppcode <>'')  then
     begin
         qryPurchaseOrderHeaderLookup.Close;
         qryPurchaseOrderHeaderLookup.ParamByName('psuppCode').value :=suppCode;
         qryPurchaseOrderHeaderLookup.open;
     end;

  end
  else
  begin
     suppCode  :=tbGRNHD.FieldByName('supp_code').AsString;
     qryPurchaseOrderHeaderLookup.Close;
     qryPurchaseOrderHeaderLookup.ParamByName('psuppCode').value :=suppCode;
     qryPurchaseOrderHeaderLookup.open;



  end;
end;

procedure TGoodsReceiveDM.qryPurchaseOrderHeaderLookupAfterScroll(
  DataSet: TDataSet);
  var orderNo:string;
begin

   

end;
 {

   ITEM_CODE   VARCHAR15 NOT NULL,
    ORDER_LINE  SSMALLINT NOT NULL,
    SUPP_CODE   VARCHAR10 NOT NULL,
    GRN_DATE    DDATE NOT NULL,
    GRN_NO      VARCHAR15 NOT NULL,
    UOM         VARCHAR4 NOT NULL,
    ITEM_DESCS  VARCHAR60 NOT NULL,
    UNIT_COST   FFLOAT NOT NULL,
    TOTAL_AMT   FFLOAT NOT NULL,
    REMARKS     VARCHAR60,
    DISCS_AMT   FFLOAT,
    TAX_AMT     FFLOAT NOT NULL,
    BASE_AMT    FFLOAT NOT NULL,
    TAX_CD      VARCHAR2 NOT NULL,
    GRN_LINE    SSMALLINT NOT NULL,
    DISCS_CD    VARCHAR2,
    GRN_QTY     FFLOAT NOT NULL,
    ORDER_QTY   FFLOAT NOT NULL,
    TAX_RATE    FFLOAT NOT NULL,
    ORDER_NO    VARCHAR15 NOT NULL,
    ORDER_DATE  TIMESTAMP NOT NULL,
    STATUS      FLAG,
    GROUP_ID    VARCHAR10 NOT NULL,
    LOT_NO      VARCHAR15 NOT NULL,
    MARK_UP     SSMALLINT

    CREATE TABLE PO_ORDER_DT (
    ITEM_CODE         VARCHAR15 NOT NULL,
    LINE_NO           SSMALLINT NOT NULL,
    ORDER_DATE        DDATE NOT NULL,
    SUPP_CODE         VARCHAR10 NOT NULL,
    UOM               VARCHAR4 NOT NULL,
    ORDER_NO          VARCHAR15 NOT NULL,
    ITEM_DESCS        VARCHAR60 NOT NULL,
    UNIT_COST         FFLOAT NOT NULL,
    TOTAL_AMT         FFLOAT NOT NULL,
    REMARKS           VARCHAR60 NOT NULL,
    DISCS_AMT         FFLOAT,
    TAX_AMT           FFLOAT NOT NULL,
    BASE_AMT          FFLOAT NOT NULL,
    TAX_CD            VARCHAR2 NOT NULL,
    DISCS_CD          VARCHAR2,
    QTY               FFLOAT NOT NULL,
    TAX_RATE          FFLOAT NOT NULL,
    STATUS            FLAG,
    GRN_QTY           FFLOAT NOT NULL,
    LOT_NO            VARCHAR15 NOT NULL,
    GROUP_ID          VARCHAR10 NOT NULL,
    MARKUP            SMALLINT,
    DISCS_RATE        FFLOAT,
    UPDATE_PRICE      FLOAT,
    UPDATE_TOTAL_AMT  FLOAT,
    STOCK_EMPTY       FLAG DEFAULT 'N'
);


}
procedure TGoodsReceiveDM.tbGRNDTORDER_NOChange(Sender: TField);
var orderNo:string;
begin
  WITH tbGRNDT DO
  BEGIN
       orderno :=sender.NewValue;
       FieldByName('ORDER_DATE').AsDateTime :=qryPurchaseOrderHeaderLookup.fieldByName('order_date').AsDateTime;
       qryPurchaseOrderDetailLookup.close;
       qryPurchaseOrderDetailLookup.ParamByName('pOrderNo').value :=  orderNO;
       qryPurchaseOrderDetailLookup.open;
  END;

end;

procedure TGoodsReceiveDM.tbGRNDTITEM_CODEChange(Sender: TField);
Var orderNo,itemcode:String;
begin
   WITH tbGRNDT DO
  BEGIN
    if (Sender.AsString <> '') then
    begin
    try
       orderNo := Fieldbyname('order_no').AsString;
       itemcode:=Sender.AsString;

       FieldByName('order_line').AsInteger :=qryPurchaseOrderDetailLookup.fieldByName('line_no').AsInteger;
       fieldbyname('ITEM_DESCS').AsString := qryPurchaseOrderDetailLookup.fieldByName('item_descs').AsString;
       fieldbyname('UOM').AsString := qryPurchaseOrderDetailLookup.fieldByName('UOM').AsString;
       fieldbyname('unit_cost').AsFloat := qryPurchaseOrderDetailLookup.fieldByName('unit_cost').asFloat;
       fieldbyname('discs_amt').AsFloat := qryPurchaseOrderDetailLookup.fieldByName('discs_amt').asFloat;
       fieldbyname('discs_cd').AsString := qryPurchaseOrderDetailLookup.fieldByName('discs_cd').asString;
       fieldbyname('tax_rate').AsFloat := qryPurchaseOrderDetailLookup.fieldByName('tax_rate').asFloat;
       fieldbyname('tax_cd').AsString := qryPurchaseOrderDetailLookup.fieldByName('tax_cd').asString;
       fieldbyname('mark_up').AsInteger := qryPurchaseOrderDetailLookup.fieldByName('markup').AsInteger;
       fieldbyname('order_qty').AsFloat := qryPurchaseOrderDetailLookup.fieldByName('qty').AsFloat;
       fieldbyname('group_id').AsString := qryPurchaseOrderDetailLookup.fieldByName('group_id').asString;
       fieldbyname('lot_no').AsString := qryPurchaseOrderDetailLookup.fieldByName('lot_no').asString;
    except on e:exception do
      errorex('Could not filter item code in :: tbGRNDTITEM_CODEChange'+e.Message)   ;
    end;

     end;

  {  UNIT_COST   FFLOAT NOT NULL,
    TOTAL_AMT   FFLOAT NOT NULL,
    REMARKS     VARCHAR60,
    DISCS_AMT   FFLOAT,
    TAX_AMT     FFLOAT NOT NULL,
    BASE_AMT    FFLOAT NOT NULL,
    TAX_CD      VARCHAR2 NOT NULL,
    GRN_LINE    SSMALLINT NOT NULL,
    DISCS_CD    VARCHAR2,
    GRN_QTY     FFLOAT NOT NULL,
    ORDER_QTY   FFLOAT NOT NULL,
    TAX_RATE    FFLOAT NOT NULL,
    ORDER_NO    VARCHAR15 NOT NULL,
    ORDER_DATE  TIMESTAMP NOT NULL,
    STATUS      FLAG,
    GROUP_ID    VARCHAR10 NOT NULL,
    LOT_NO      VARCHAR15 NOT NULL,
    MARK_UP     SSMALLINT }

  END;



end;

procedure TGoodsReceiveDM.tbGRNDTGRN_QTYChange(Sender: TField);
var markUpQty,orderQty,orderGrnQTY,avaliableQty, inputQty:Double;

begin

   qryOrderItemLookupByItemCode.Close;
   qryOrderItemLookupByItemCode.ParamByName('pOrderNo').Value := tbGRNDT.FieldByname('order_no').aSsTRING;
   qryOrderItemLookupByItemCode.ParamByName('pItemCode').Value :=  tbGRNDT.FieldByName('item_code').aSsTRING;
   qryOrderItemLookupByItemCode.Open;


   orderQty :=qryOrderItemLookupByItemCode.fieldbyname('qty').AsFloat;
   markupQty := orderQty*qryOrderItemLookupByItemCode.fieldbyname('markup').asinteger/100;
   orderGRNQTY :=getCurrentPurchaseOrderReceivedQty(tbGRNDT.FieldByname('supp_code').aSsTRING,tbGRNDT.FieldByname('order_no').aSsTRING,tbGRNDT.FieldByname('item_code').aSsTRING);
   avaliableQty :=  (orderQty -orderGRNQTY) +markupQty;

  if ((sender.AsFloat) >( avaliableQty )) THEN
  BEGIN
     warning('Recgeive Quantities could not more than [order qty]-[grn qty]+[markup qty] ='+floattostr(avaliableQty)
     +#13+
     'order qty='+FloatToStr(orderQty)+#13+
     'markup qty ='+floattostr(markupQty)+#13+
     'GRN qty'+floattostr(orderGRNQTY));
      if Confirm('Are you want to delete this item? After deleted Please re-enter amount again') =mrYes then
          tbGRNDT.Delete
          else tbGRNDT.Cancel;
  END
  else
  begin
      with     tbGRNDT do
      begin
         fieldbyname('BASE_AMT').AsFloat := fieldbyname('unit_cost').asfloat *   sender.AsFloat;
         fieldbyname('tax_amt').asfloat := fieldbyname('base_amt').AsFloat*fieldbyname('tax_rate').asfloat/100;
         fieldbyname('total_amt').AsFloat := fieldbyname('base_amt').asfloat + fieldbyname('tax_amt').asfloat;
      end
  end;

end;

procedure TGoodsReceiveDM.tbGRNDTNewRecord(DataSet: TDataSet);
begin
 with     tbGRNDT do
      begin
         fieldbyname('GRN_DATE').AsDateTime :=tbGRNHD.Fieldbyname('grn_date').AsDateTime;
         fieldbyname('supp_code').asString :=tbgrnhd.fieldbyname('supp_code').asstring;
         fieldbyname('status').asstring :='N';
         fieldbyname('BASE_AMT').AsFloat :=0;
         fieldbyname('tax_amt').asfloat := 0;
         fieldbyname('total_amt').AsFloat := 0;
         fieldbyname('grn_line').asinteger:=getNextGRNLine(fieldbyname('supp_code').asstring,
         fieldbyname('grn_no').asstring);
      end
end;

procedure TGoodsReceiveDM.tbGRNDTBeforeDelete(DataSet: TDataSet);
var grnQty:double;
begin
  grnQty :=getCurrentPurchaseOrderReceivedQty(dataset.fieldbyname('supp_code').AsString,
  dataset.fieldbyname('order_no').AsString,
  dataset.fieldbyname('item_code').AsString) - dataSet.FieldByName('GRN_QTY').AsFloat;


   if not (updatePurchaseOrderHistory(dataset.fieldbyname('supp_code').AsString,
  dataset.fieldbyname('order_no').AsString,
  dataset.fieldbyname('item_code').AsString,grnQty,1)) then
  begin
      errorEx('Could not update Grn Qty');

  end;

end;

procedure TGoodsReceiveDM.tbGRNDTAfterPost(DataSet: TDataSet);
begin
  if not (updatePurchaseOrderHistory(dataset.fieldbyname('supp_code').AsString,
  dataset.fieldbyname('order_no').AsString,
  dataset.fieldbyname('item_code').AsString,dataset.fieldbyname('GRN_QTY').AsFloat,0)) then
  begin
      errorEx('Could not update Grn Qty');
  end;

end;

end.
