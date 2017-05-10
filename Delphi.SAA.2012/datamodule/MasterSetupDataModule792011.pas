unit MasterSetupDataModule792011;
{
MasterSetupDataModule.pas contains of all master data setup
}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataModule,WarehouseDM, DB, IBCustomDataSet, IBTable,dialogutils;

type
  TMasterSetupDM = class(TAbstractDM)
    tbAPCreditor: TIBTable;
    tbArDebtor: TIBTable;
    tbApCreditorType: TIBTable;
    tbArDebtorType: TIBTable;
    tbAPCreditorCREDITOR_ACCT: TIBStringField;
    tbAPCreditorNAME: TIBStringField;
    tbAPCreditorCREDITOR_TYPE: TIBStringField;
    tbAPCreditorADDRESS1: TIBStringField;
    tbAPCreditorADDRESS2: TIBStringField;
    tbAPCreditorADDRESS3: TIBStringField;
    tbAPCreditorTELPHONE: TIBStringField;
    tbAPCreditorFAX_NO: TIBStringField;
    tbAPCreditorSHORT_NAME: TIBStringField;
    tbAPCreditorCREDIT_TERM: TSmallintField;
    tbAPCreditorTAX_REGISTED_NO: TIBStringField;
    tbAPCreditorBALANCE_AMT: TFloatField;
    tbAPCreditorCREDIT_LIMIT: TFloatField;
    tbAPCreditorCURRENCY_CODE: TIBStringField;
    tbAPCreditorMAILADDR1: TIBStringField;
    tbAPCreditorMAILADDR2: TIBStringField;
    tbAPCreditorMAILADDR3: TIBStringField;
    tbAPCreditorUPDATE_USER: TIBStringField;
    tbAPCreditorUPDATE_DATE: TDateTimeField;
    tbAPCreditorTAX_CD: TIBStringField;
    tbAPCreditorPROVINCE: TIBStringField;
    tbAPCreditorPOSTCODE: TIBStringField;
    tbAPCreditorTH_ADDR1: TIBStringField;
    tbAPCreditorTH_ADDR2: TIBStringField;
    tbAPCreditorTH_ADDR3: TIBStringField;
    tbAPCreditorTH_NAME: TIBStringField;
    tbApCreditorTypeCREDITOR_TYPE: TIBStringField;
    tbApCreditorTypeDESCS: TIBStringField;
    tbApCreditorTypeUPDATE_USER: TIBStringField;
    tbApCreditorTypeUPDATE_DATE: TDateTimeField;
    tbArDebtorTypeDEBTOR_TYPE: TIBStringField;
    tbArDebtorTypeDESCS: TIBStringField;
    tbArDebtorTypeUPDATE_USER: TIBStringField;
    tbArDebtorTypeUPDATE_DATE: TDateTimeField;
    tbArDebtorDEBTOR_ACCT: TIBStringField;
    tbArDebtorNAME: TIBStringField;
    tbArDebtorADDRESS1: TIBStringField;
    tbArDebtorADDRESS2: TIBStringField;
    tbArDebtorADDRESS3: TIBStringField;
    tbArDebtorTELPHONE: TIBStringField;
    tbArDebtorFAX_NO: TIBStringField;
    tbArDebtorDEBTOR_TYPE: TIBStringField;
    tbArDebtorSHORT_NAME: TIBStringField;
    tbArDebtorCREDIT_TERM: TSmallintField;
    tbArDebtorTAX_REGISTED_NO: TIBStringField;
    tbArDebtorBALANCE_AMT: TFloatField;
    tbArDebtorCREDIT_LIMIT: TFloatField;
    tbArDebtorCURRENCY_CODE: TIBStringField;
    tbArDebtorMAILADDR1: TIBStringField;
    tbArDebtorMAILADDR2: TIBStringField;
    tbArDebtorMAILADDR3: TIBStringField;
    tbArDebtorUPDATE_USER: TIBStringField;
    tbArDebtorUPDATE_DATE: TDateTimeField;
    tbArDebtorTAX_CD: TIBStringField;
    tbArDebtorPOSTCODE: TIBStringField;
    tbArDebtorPROVINCE: TIBStringField;
    tbArDebtorTH_ADDR1: TIBStringField;
    tbArDebtorTH_ADDR2: TIBStringField;
    tbArDebtorTH_ADDR3: TIBStringField;
    tbArDebtorTH_NAME: TIBStringField;
    dsArDebtorType: TDataSource;
    tbTax: TIBTable;
    tbTaxSCHEME_CD: TIBStringField;
    tbTaxTAX_CD: TIBStringField;
    tbTaxDESCS: TIBStringField;
    tbTaxTAX_RATE: TFloatField;
    tbTaxUPDATE_USER: TIBStringField;
    tbTaxUPDATE_DATE: TDateTimeField;
    tbTaxINCL: TIBStringField;
    tbCurrency: TIBTable;
    tbCurrencyCURRENCY_CODE: TIBStringField;
    tbCurrencyCURRENCY_RATE: TFloatField;
    tbCurrencyDESCS: TIBStringField;
    tbCurrencyBASE_RATE: TFloatField;
    tbCurrencyCOMPARE_RATE: TFloatField;
    tbCurrencyUPDATE_USER: TIBStringField;
    tbCurrencyUPDATE_DATE: TDateTimeField;
    tbUOM: TIBTable;
    tbSaleItemHD: TIBTable;
    tbUOMUOM_CD: TIBStringField;
    tbUOMDESCS: TIBStringField;
    tbUOMUPDATE_USER: TIBStringField;
    tbUOMUPDATE_DATE: TDateTimeField;
    tbSaleItemHDITEM_CODE: TIBStringField;
    tbSaleItemHDDESCS: TIBStringField;
    tbSaleItemHDREMARKS: TIBStringField;
    tbSaleItemHDUNIT_COST: TFloatField;
    tbSaleItemHDSALE_PRICE: TFloatField;
    tbSaleItemHDUPDATE_USER: TIBStringField;
    tbSaleItemHDCUST_CODE: TIBStringField;
    tbSaleItemHDUOM_CD: TIBStringField;
    tbSaleItemHDUPDATE_DATE: TDateTimeField;
    tbSaleItemHDSTANDARD_PRICE: TFloatField;
    tbSaleItemReqSheet: TIBTable;
    tbICElement: TIBTable;
    tbICElementLabel: TIBTable;
    tbSaleItemHDCURRENT_ACTIVE: TIBStringField;
    dsOrderHistory: TDataSource;
    dsSaleItemHD: TDataSource;
    tbOrderHistory: TIBTable;
    tbOrderHistoryORDER_NO: TIBStringField;
    tbOrderHistoryORDER_DATE: TDateTimeField;
    tbOrderHistoryITEM_CODE: TIBStringField;
    tbOrderHistoryCUST_CODE: TIBStringField;
    tbOrderHistoryLINE_NO: TSmallintField;
    tbOrderHistoryUOM: TIBStringField;
    tbOrderHistoryITEM_DESCS: TIBStringField;
    tbOrderHistoryUNIT_COST: TFloatField;
    tbOrderHistoryTOTAL_AMT: TFloatField;
    tbOrderHistoryREMARKS: TIBStringField;
    tbOrderHistoryDISCS_AMT: TFloatField;
    tbOrderHistoryTAX_AMT: TFloatField;
    tbOrderHistoryBASE_AMT: TFloatField;
    tbOrderHistoryTAX_CD: TIBStringField;
    tbOrderHistoryDISCS_CD: TIBStringField;
    tbOrderHistoryQTY: TFloatField;
    tbOrderHistoryTAX_RATE: TFloatField;
    tbOrderHistorySTATUS: TIBStringField;
    tbOrderHistoryDET_QTY: TFloatField;
    tbOrderHistoryDELIVERY_DATE: TDateTimeField;
    tbOrderHistoryURGENT_FLAG: TIBStringField;
    tbOrderHistoryMARK_UP: TSmallintField;
    tbOrderHistorySTOCK_USAGED_FLAG: TIBStringField;
    tbOrderHistorySTOCK_USAGED_QTY: TFloatField;
    tbSaleItemReqSheetITEM_CODE: TIBStringField;
    tbSaleItemReqSheetUOM_CD: TIBStringField;
    tbSaleItemReqSheetCUST_CODE: TIBStringField;
    tbSaleItemReqSheetMAX_ELE1: TFloatField;
    tbSaleItemReqSheetMAX_ELE2: TFloatField;
    tbSaleItemReqSheetMAX_ELE3: TFloatField;
    tbSaleItemReqSheetMAX_ELE4: TFloatField;
    tbSaleItemReqSheetMAX_ELE5: TFloatField;
    tbSaleItemReqSheetMAX_ELE6: TFloatField;
    tbSaleItemReqSheetMAX_ELE7: TFloatField;
    tbSaleItemReqSheetMAX_ELE8: TFloatField;
    tbSaleItemReqSheetMAX_ELE9: TFloatField;
    tbSaleItemReqSheetMAX_ELE10: TFloatField;
    tbSaleItemReqSheetMAX_ELE11: TFloatField;
    tbSaleItemReqSheetMAX_ELE12: TFloatField;
    tbSaleItemReqSheetMAX_ELE13: TFloatField;
    tbSaleItemReqSheetMAX_ELE14: TFloatField;
    tbSaleItemReqSheetMAX_ELE15: TFloatField;
    tbSaleItemReqSheetMIN_ELE1: TFloatField;
    tbSaleItemReqSheetMIN_ELE2: TFloatField;
    tbSaleItemReqSheetMIN_ELE3: TFloatField;
    tbSaleItemReqSheetMIN_ELE4: TFloatField;
    tbSaleItemReqSheetMIN_ELE5: TFloatField;
    tbSaleItemReqSheetMIN_ELE6: TFloatField;
    tbSaleItemReqSheetMIN_ELE7: TFloatField;
    tbSaleItemReqSheetMIN_ELE8: TFloatField;
    tbSaleItemReqSheetMIN_ELE9: TFloatField;
    tbSaleItemReqSheetMIN_ELE10: TFloatField;
    tbSaleItemReqSheetMIN_ELE11: TFloatField;
    tbSaleItemReqSheetMIN_ELE12: TFloatField;
    tbSaleItemReqSheetMIN_ELE13: TFloatField;
    tbSaleItemReqSheetMIN_ELE14: TFloatField;
    tbSaleItemReqSheetMIN_ELE15: TFloatField;
    tbSaleItemReqSheetELABEL1: TIBStringField;
    tbSaleItemReqSheetELABEL2: TIBStringField;
    tbSaleItemReqSheetELABEL3: TIBStringField;
    tbSaleItemReqSheetELABEL4: TIBStringField;
    tbSaleItemReqSheetELABEL5: TIBStringField;
    tbSaleItemReqSheetELABEL6: TIBStringField;
    tbSaleItemReqSheetELABEL7: TIBStringField;
    tbSaleItemReqSheetELABEL8: TIBStringField;
    tbSaleItemReqSheetELABEL9: TIBStringField;
    tbSaleItemReqSheetELABEL10: TIBStringField;
    tbSaleItemReqSheetELABEL11: TIBStringField;
    tbSaleItemReqSheetELABEL12: TIBStringField;
    tbSaleItemReqSheetELABEL13: TIBStringField;
    tbSaleItemReqSheetELABEL14: TIBStringField;
    tbSaleItemReqSheetELABEL15: TIBStringField;
    tbSaleItemReqSheetMIN_FLOAT_POINT1: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT2: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT3: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT4: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT5: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT6: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT7: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT8: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT9: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT10: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT11: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT12: TSmallintField;
    tbSaleItemReqSheetMIN_FLOAT_POINT13: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT1: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT2: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT3: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT4: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT5: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT6: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT7: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT8: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT9: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT10: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT11: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT12: TSmallintField;
    tbSaleItemReqSheetMAX_FLOAT_POINT13: TSmallintField;
    tbSaleItemReqSheetMIN_MASK1: TIBStringField;
    tbSaleItemReqSheetMIN_MASK2: TIBStringField;
    tbSaleItemReqSheetMIN_MASK3: TIBStringField;
    tbSaleItemReqSheetMIN_MASK4: TIBStringField;
    tbSaleItemReqSheetMIN_MASK5: TIBStringField;
    tbSaleItemReqSheetMIN_MASK6: TIBStringField;
    tbSaleItemReqSheetMIN_MASK7: TIBStringField;
    tbSaleItemReqSheetMIN_MASK8: TIBStringField;
    tbSaleItemReqSheetMIN_MASK9: TIBStringField;
    tbSaleItemReqSheetMIN_MASK10: TIBStringField;
    tbSaleItemReqSheetMIN_MASK11: TIBStringField;
    tbSaleItemReqSheetMIN_MASK12: TIBStringField;
    tbSaleItemReqSheetMIN_MASK13: TIBStringField;
    tbSaleItemReqSheetMAX_MASK1: TIBStringField;
    tbSaleItemReqSheetMAX_MASK2: TIBStringField;
    tbSaleItemReqSheetMAX_MASK3: TIBStringField;
    tbSaleItemReqSheetMAX_MASK4: TIBStringField;
    tbSaleItemReqSheetMAX_MASK5: TIBStringField;
    tbSaleItemReqSheetMAX_MASK6: TIBStringField;
    tbSaleItemReqSheetMAX_MASK7: TIBStringField;
    tbSaleItemReqSheetMAX_MASK8: TIBStringField;
    tbSaleItemReqSheetMAX_MASK9: TIBStringField;
    tbSaleItemReqSheetMAX_MASK10: TIBStringField;
    tbSaleItemReqSheetMAX_MASK11: TIBStringField;
    tbSaleItemReqSheetMAX_MASK12: TIBStringField;
    tbSaleItemReqSheetMAX_MASK13: TIBStringField;
    tbSaleItemReqSheetCUST_NAME: TIBStringField;
    tbCustomerLookup: TIBTable;
    dsCustomerLookup: TDataSource;
    tbCustomerLookupCUSTOMER_CD: TIBStringField;
    tbCustomerLookupNAME: TIBStringField;
    tbCustomerLookupADDRESS1: TIBStringField;
    tbCustomerLookupADDRESS2: TIBStringField;
    tbCustomerLookupADDRESS3: TIBStringField;
    tbCustomerLookupTELEPHONE: TIBStringField;
    tbCustomerLookupFAX_NO: TIBStringField;
    tbCustomerLookupCONTRACT_PERSON: TIBStringField;
    tbCustomerLookupUPDATE_USER: TIBStringField;
    tbCustomerLookupUPDATE_DATE: TDateTimeField;
    tbCustomerLookupDEBTOR_ACCT: TIBStringField;
    tbCustomerLookupTAX_CD: TIBStringField;
    tbCustomerLookupPOSTCODE: TIBStringField;
    tbCustomerLookupPROVINCE: TIBStringField;
    dsUom: TDataSource;
    tbSaleItemHDCustomerName: TStringField;
    tbDiscount: TIBTable;
    tbDiscountDISCS_CD: TIBStringField;
    tbDiscountDESCS: TIBStringField;
    tbDiscountDISCS_DESCS: TIBStringField;
    tbDiscountDISCS_RATE: TFloatField;
    tbMaterialGroup: TIBTable;
    tbMaterialGroupGROUP_ID: TIBStringField;
    tbMaterialGroupDESCS: TIBStringField;
    tbMaterialGroupREMARKS: TIBStringField;
    tbMaterialGroupUPDATE_USER: TIBStringField;
    tbMaterialGroupUPDATE_DATE: TDateTimeField;
    tbMaterialItemHD: TIBTable;
    dsApCreditorType: TDataSource;
    tbMaterialStockOnhandDetail: TIBTable;
    dsMaterialItemHD: TDataSource;
    tbMaterialDefaultElement: TIBTable;
    tbMaterialDefaultElementSTOCK_CD: TIBStringField;
    tbMaterialDefaultElementGROUP_ID: TIBStringField;
    tbMaterialDefaultElementUOM_CD: TIBStringField;
    tbMaterialDefaultElementELE1_PERC: TFloatField;
    tbMaterialDefaultElementELE2_PERC: TFloatField;
    tbMaterialDefaultElementELE3_PERC: TFloatField;
    tbMaterialDefaultElementELE4_PERC: TFloatField;
    tbMaterialDefaultElementELE5_PERC: TFloatField;
    tbMaterialDefaultElementELE6_PERC: TFloatField;
    tbMaterialDefaultElementELE7_PERC: TFloatField;
    tbMaterialDefaultElementELE8_PERC: TFloatField;
    tbMaterialDefaultElementELE9_PERC: TFloatField;
    tbMaterialDefaultElementELE10_PERC: TFloatField;
    tbMaterialDefaultElementELE11_PERC: TFloatField;
    tbMaterialDefaultElementELE12_PERC: TFloatField;
    tbMaterialDefaultElementELE13_PERC: TFloatField;
    tbMaterialStockOnhandDetailSTOCK_CD: TIBStringField;
    tbMaterialStockOnhandDetailGROUP_ID: TIBStringField;
    tbMaterialStockOnhandDetailUOM_CD: TIBStringField;
    tbMaterialStockOnhandDetailLOT_CD: TIBStringField;
    tbMaterialStockOnhandDetailUNIT_COST: TFloatField;
    tbMaterialStockOnhandDetailLAST_PURCHASE_PRICE: TFloatField;
    tbMaterialStockOnhandDetailPURCHASE_DATE: TDateTimeField;
    tbMaterialStockOnhandDetailONHAND_QTY: TFloatField;
    tbMaterialStockOnhandDetailRESERVED_QTY: TFloatField;
    tbMaterialStockOnhandDetailSTOCK_VALUE: TFloatField;
    tbMaterialStockOnhandDetailTOTAL_COST: TFloatField;
    tbMaterialStockOnhandDetailACCT_CODE: TIBStringField;
    tbMaterialStockOnhandDetailORDER_LINE: TSmallintField;
    tbMaterialStockOnhandDetailREF_NO: TIBStringField;
    tbMaterialStockOnhandDetailREF_DATE: TDateTimeField;
    tbCustomerView: TIBTable;
    tbCustomerViewDEBTOR_ACCT: TIBStringField;
    tbCustomerViewNAME: TIBStringField;
    tbCustomerViewADDRESS1: TIBStringField;
    tbCustomerViewADDRESS2: TIBStringField;
    tbCustomerViewADDRESS3: TIBStringField;
    tbCustomerViewTELPHONE: TIBStringField;
    tbCustomerViewFAX_NO: TIBStringField;
    tbCustomerViewDEBTOR_TYPE: TIBStringField;
    tbCustomerViewSHORT_NAME: TIBStringField;
    tbCustomerViewCREDIT_TERM: TSmallintField;
    tbCustomerViewTAX_REGISTED_NO: TIBStringField;
    tbCustomerViewBALANCE_AMT: TFloatField;
    tbCustomerViewCREDIT_LIMIT: TFloatField;
    tbCustomerViewCURRENCY_CODE: TIBStringField;
    tbCustomerViewMAILADDR1: TIBStringField;
    tbCustomerViewMAILADDR2: TIBStringField;
    tbCustomerViewMAILADDR3: TIBStringField;
    tbCustomerViewUPDATE_USER: TIBStringField;
    tbCustomerViewUPDATE_DATE: TDateTimeField;
    tbCustomerViewTAX_CD: TIBStringField;
    tbCustomerViewPOSTCODE: TIBStringField;
    tbCustomerViewPROVINCE: TIBStringField;
    tbCustomerViewTH_ADDR1: TIBStringField;
    tbCustomerViewTH_ADDR2: TIBStringField;
    tbCustomerViewTH_ADDR3: TIBStringField;
    tbCustomerViewTH_NAME: TIBStringField;
    dsCustomerView: TDataSource;
    tbMaterialStockOnhandDetailName: TStringField;
    tbICElementRUN_NO: TSmallintField;
    tbICElementELEMENT_CODE: TIBStringField;
    tbICElementNAME: TIBStringField;
    tbICElementUPDATE_USER: TIBStringField;
    tbICElementUPDATE_DATE: TDateTimeField;
    procedure tbSaleItemHDAfterScroll(DataSet: TDataSet);
    procedure tbSaleItemReqSheetBeforeDelete(DataSet: TDataSet);
    procedure tbSaleItemReqSheetNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tbMaterialItemHDNewRecord(DataSet: TDataSet);
    procedure tbMaterialItemHDBeforePost(DataSet: TDataSet);
    procedure tbMaterialDefaultElementBeforeInsert(DataSet: TDataSet);
    procedure tbSaleItemHDNewRecord(DataSet: TDataSet);
    procedure tbSaleItemReqSheetBeforePost(DataSet: TDataSet);
    procedure tbSaleItemHDAfterPost(DataSet: TDataSet);
    procedure tbMaterialDefaultElementELE1_PERCChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MasterSetupDM: TMasterSetupDM;

implementation

{$R *.dfm}

procedure TMasterSetupDM.tbSaleItemHDAfterScroll(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TMasterSetupDM.tbSaleItemReqSheetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
 warning('Could not delete sale item requirement sheet');
 dataset.Cancel;
end;

procedure TMasterSetupDM.tbSaleItemReqSheetNewRecord(DataSet: TDataSet);
var i:integer;
begin
  if (DataSet.RecordCount =0) then
  begin
  for i:=1 to 13 do
  begin

    dataset.FieldByName('MAX_ELE'+IntToStr(i)).AsFloat:=0;
    dataset.FieldByName('MIN_ELE'+IntToStr(i)).AsFloat:=0;
    dataset.FieldByName('MIN_FLOAT_POINT'+IntToStr(i)).AsFloat:=0;
    dataset.FieldByName('MAX_FLOAT_POINT'+IntToStr(i)).AsFloat:=0;
  end;
  end
  else
  begin
     warning('Data can only be editing not insert');
     dataset.Cancel;
  end;

end;

procedure TMasterSetupDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
 setDisplayFormat;
end;

procedure TMasterSetupDM.tbMaterialItemHDNewRecord(DataSet: TDataSet);
begin
  with dataset do
  begin
       FieldByName('DEFAULT_ELEMENT_DETAIL').AsString :='N';
       FieldByName('CONSUMEABLE_ITEM').AsString :='N';
       FieldByName('ONHAND_QTY').AsFloat :=0;
       FieldByName('UNIT_COST').AsFloat :=0;
       FieldByName('TOTAL_COST').AsFloat :=0;
       FieldByName('RECOVERY').AsInteger :=95;
       FieldByName('MARKED_UP').AsInteger :=10;
  end;

 

end;

procedure TMasterSetupDM.tbMaterialItemHDBeforePost(DataSet: TDataSet);
begin
  activeUser := WarehouseDataManager.User.userid;
  updateModifiedRecord(dataset);
end;

procedure TMasterSetupDM.tbMaterialDefaultElementBeforeInsert(
  DataSet: TDataSet);
begin
   IF (Dataset.RecordCount =1) then
   begin
       info('Only 1 default element template per item. Use edit instead');
       dataset.Cancel;
   end;

end;

procedure TMasterSetupDM.tbSaleItemHDNewRecord(DataSet: TDataSet);
begin
  inherited;
  DATASET.FieldByName('CURRENT_ACTIVE').AsString :='Y';
  Dataset.FieldByName('UNIT_COST').AsFloat :=0;
  Dataset.FieldByName('Remarks').AsString :='';
  DataSet.FieldByName('sale_price').aSfLOAT :=0;
  DataSet.FieldByName('STANDARD_PRICE').AsFloat :=0;
end;

procedure TMasterSetupDM.tbSaleItemReqSheetBeforePost(DataSet: TDataSet);
var labelindex:integer;
begin

  
end;

procedure TMasterSetupDM.tbSaleItemHDAfterPost(DataSet: TDataSet);
var elementIndex,MASKINDEX:integer;
    itemCode :String;

begin
   MASKINDEX:=-1;

   if (tbSaleItemReqSheet.FieldByName('item_code').asstring ='') then
   begin
   mastersetupDM.TBICElement.Open;
   mastersetupDM.TBICElement.First;
   tbSaleItemReqSheet.Insert;
   with tbSaleItemReqSheet do
   begin
        for elementIndex:=1 to 13 do
        begin
            //SAVE UPPERBOUND VALUE DISPLAY MASK
             MASKINDEX :=fieldbyname('MAX_FLOAT_POINT'+IntToStr(elementIndex)).AsInteger;
            // saveDisplayMask(DataSet,'MAX_MASK'+IntToStr(elementIndex), MASKINDEX);
             //SAVE UPPERBOUND VALUE INNER BOULD MASK
             MASKINDEX :=fieldbyname('MIN_FLOAT_POINT'+IntToStr(elementIndex)).AsInteger;
          //   saveDisplayMask(DataSet,'MIN_MASK'+IntToStr(elementIndex), MASKINDEX);
              //12 NOV,2010 Save element label
             FieldByName('ELABEL'+IntToStr(elementIndex)).AsString :=   mastersetupDM.TBICElement.FieldByname('ELEMENT_CODE').AsString;
             mastersetupDM.TBICElement.next;
             FieldByName('MAX_ELE'+IntToStr(elementIndex)).AsFloat:=0;
             FieldByName('MIN_ELE'+IntToStr(elementIndex)).AsFloat:=0;
             FieldByName('MIN_FLOAT_POINT'+IntToStr(elementIndex)).AsFloat:=0;
             FieldByName('MAX_FLOAT_POINT'+IntToStr(elementIndex)).AsFloat:=0;
        end;
        Post;
   end;

    mastersetupDM.TBICElement.close;
    commit;
    end;

end;

procedure TMasterSetupDM.tbMaterialDefaultElementELE1_PERCChange(
  Sender: TField);
begin
 tbMaterialDefaultElementELE13_PERC.AsFloat := 100 -
 (
                                      tbMaterialDefaultElementELE1_PERC.AsFloat  +
                                      tbMaterialDefaultElementELE2_PERC.AsFloat  +
                                      tbMaterialDefaultElementELE3_PERC.AsFloat  +
                                      tbMaterialDefaultElementELE4_PERC.AsFloat  +
                                      tbMaterialDefaultElementELE5_PERC.AsFloat  +
                                      tbMaterialDefaultElementELE6_PERC.AsFloat  +
                                      tbMaterialDefaultElementELE7_PERC.AsFloat  +
                                      tbMaterialDefaultElementELE8_PERC.AsFloat  +
                                      tbMaterialDefaultElementELE9_PERC.AsFloat  +
                                      tbMaterialDefaultElementELE10_PERC.AsFloat  +
                                      tbMaterialDefaultElementELE11_PERC.AsFloat  +
                                      tbMaterialDefaultElementELE12_PERC.AsFloat  

 );

end;

end.
