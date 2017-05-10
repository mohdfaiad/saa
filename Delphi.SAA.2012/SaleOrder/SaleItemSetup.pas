unit SaleItemSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBSingleEntryForm, wwrcdvw, wwDialog, wwidlg,
  dxLayoutLookAndFeels, DB, ImgList, ExtCtrls, ComCtrls, ToolWin,
  fcStatusBar, cxLookAndFeels, cxStyles, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, cxPC, cxControls, StdCtrls, cxGraphics,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DBCtrls, dxExEdtr, cxCheckBox, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxSpinEdit,DialogUtils, wwdbdatetimepicker, Mask, wwdbedit, cxCalendar,
  cxMemo, wwriched, cxLookAndFeelPainters, cxGroupBox, Menus;
const MASK_EDIT_FOR_ZERO_POINT ='#0';
const MASK_EDIT_FOR_ONE_POINT ='#0.0';
const MASK_EDIT_FOR_TWO_POINT ='#0.00';
const MAX_ELEMENT = 25;


const CHECKBOXEDIT_PREFIX ='cxDBCheckBoxS';
// component prefix
const MAXSPINEDIT_PREFIX ='cxDBSpinMax' ;
const MAXMASKEDIT_PREFIX = 'cxDBMaskEditMax';

// component prefix 
const MINSPINEDIT_PREFIX ='cxDBSpinMin';
const MINMASKEDIT_PREFIX ='cxDBMaskEditMin';


type TSaleItemMaster = class
   custcode,itemcode,description,uom:string;
   saleprice:double;
end;
type
  TfrmSaleItemSetup = class(TfrmDBSingleEntry)
    cxPageControl: TcxPageControl;
    tabGeneral: TcxTabSheet;
    tabOrderHistory: TcxTabSheet;
    dxLayoutOfficeLookAndFeel1: TdxLayoutOfficeLookAndFeel;
    cxLookAndFeelController1: TcxLookAndFeelController;
    edItemCode: TcxDBTextEdit;
    edItemDesc: TcxDBTextEdit;
    edRemark: TcxDBTextEdit;
    edSalePrice: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbCustomer: TcxDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    cbUom: TcxDBLookupComboBox;
    DBText1: TDBText;
    cxDBCheckBox1: TcxDBCheckBox;
    dsOrderHistory: TDataSource;
    dsSaleRequimentSheet: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1ORDER_NO: TcxGridDBColumn;
    cxGrid1DBTableView1ORDER_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1UOM: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_DESCS: TcxGridDBColumn;
    cxGrid1DBTableView1UNIT_COST: TcxGridDBColumn;
    cxGrid1DBTableView1REMARKS: TcxGridDBColumn;
    cxGrid1DBTableView1BASE_AMT: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1DET_QTY: TcxGridDBColumn;
    cxGrid1DBTableView1DELIVERY_DATE: TcxGridDBColumn;
    customerSearchDialog: TwwSearchDialog;
    tabCustomerRequiment: TcxTabSheet;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    DBText2: TDBText;
    ToolButton16: TToolButton;
    DBText3: TDBText;
    ToolButton17: TToolButton;
    DBText4: TDBText;
    ToolButton18: TToolButton;
    DBText5: TDBText;
    ToolButton19: TToolButton;
    DBText6: TDBText;
    ToolButton20: TToolButton;
    DBText7: TDBText;
    ToolButton21: TToolButton;
    DBText8: TDBText;
    ToolButton22: TToolButton;
    DBText9: TDBText;
    ToolButton23: TToolButton;
    DBText10: TDBText;
    ToolButton24: TToolButton;
    DBText11: TDBText;
    ToolButton25: TToolButton;
    DBText12: TDBText;
    ToolButton26: TToolButton;
    DBText13: TDBText;
    ToolButton27: TToolButton;
    DBText14: TDBText;
    cxDBSpinMax13: TcxDBSpinEdit;
    cxDBSpinMax12: TcxDBSpinEdit;
    cxDBSpinMax11: TcxDBSpinEdit;
    cxDBSpinMax10: TcxDBSpinEdit;
    cxDBSpinMax9: TcxDBSpinEdit;
    cxDBSpinMax8: TcxDBSpinEdit;
    cxDBSpinMax7: TcxDBSpinEdit;
    cxDBSpinMax6: TcxDBSpinEdit;
    cxDBSpinMax5: TcxDBSpinEdit;
    cxDBSpinMax4: TcxDBSpinEdit;
    cxDBSpinMax3: TcxDBSpinEdit;
    cxDBSpinMax2: TcxDBSpinEdit;
    cxDBSpinMax1: TcxDBSpinEdit;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolBar3: TToolBar;
    cxDBMaskEditMax13: TcxDBMaskEdit;
    cxDBMaskEditMax12: TcxDBMaskEdit;
    cxDBMaskEditMax11: TcxDBMaskEdit;
    cxDBMaskEditMax10: TcxDBMaskEdit;
    cxDBMaskEditMax9: TcxDBMaskEdit;
    cxDBMaskEditMax8: TcxDBMaskEdit;
    cxDBMaskEditMax7: TcxDBMaskEdit;
    cxDBMaskEditMax6: TcxDBMaskEdit;
    cxDBMaskEditMax5: TcxDBMaskEdit;
    cxDBMaskEditMax4: TcxDBMaskEdit;
    cxDBMaskEditMax3: TcxDBMaskEdit;
    cxDBMaskEditMax2: TcxDBMaskEdit;
    cxDBMaskEditMax1: TcxDBMaskEdit;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton39: TToolButton;
    Label8: TLabel;
    ToolBar4: TToolBar;
    cxDBSpinMin1: TcxDBSpinEdit;
    ToolButton40: TToolButton;
    cxDBSpinMin2: TcxDBSpinEdit;
    ToolButton41: TToolButton;
    cxDBSpinMin3: TcxDBSpinEdit;
    ToolButton42: TToolButton;
    cxDBSpinMin4: TcxDBSpinEdit;
    ToolButton43: TToolButton;
    cxDBSpinMin5: TcxDBSpinEdit;
    ToolButton44: TToolButton;
    cxDBSpinMin6: TcxDBSpinEdit;
    ToolButton45: TToolButton;
    cxDBSpinMin7: TcxDBSpinEdit;
    ToolButton46: TToolButton;
    cxDBSpinMin8: TcxDBSpinEdit;
    ToolButton47: TToolButton;
    cxDBSpinMin9: TcxDBSpinEdit;
    ToolButton48: TToolButton;
    cxDBSpinMin10: TcxDBSpinEdit;
    ToolButton49: TToolButton;
    cxDBSpinMin11: TcxDBSpinEdit;
    ToolButton50: TToolButton;
    cxDBSpinMin12: TcxDBSpinEdit;
    ToolButton51: TToolButton;
    cxDBSpinMin13: TcxDBSpinEdit;
    ToolBar5: TToolBar;
    cxDBMaskEditMin1: TcxDBMaskEdit;
    ToolButton52: TToolButton;
    cxDBMaskEditMin2: TcxDBMaskEdit;
    ToolButton53: TToolButton;
    cxDBMaskEditMin3: TcxDBMaskEdit;
    ToolButton54: TToolButton;
    cxDBMaskEditMin4: TcxDBMaskEdit;
    ToolButton55: TToolButton;
    cxDBMaskEditMin5: TcxDBMaskEdit;
    ToolButton56: TToolButton;
    cxDBMaskEditMin6: TcxDBMaskEdit;
    ToolButton57: TToolButton;
    cxDBMaskEditMin7: TcxDBMaskEdit;
    ToolButton58: TToolButton;
    cxDBMaskEditMin8: TcxDBMaskEdit;
    ToolButton59: TToolButton;
    cxDBMaskEditMin9: TcxDBMaskEdit;
    ToolButton60: TToolButton;
    cxDBMaskEditMin10: TcxDBMaskEdit;
    ToolButton61: TToolButton;
    cxDBMaskEditMin11: TcxDBMaskEdit;
    ToolButton62: TToolButton;
    cxDBMaskEditMin12: TcxDBMaskEdit;
    ToolButton63: TToolButton;
    cxDBMaskEditMin13: TcxDBMaskEdit;
    ToolButton64: TToolButton;
    ToolButton65: TToolButton;
    ToolButton66: TToolButton;
    ToolButton67: TToolButton;
    ToolButton68: TToolButton;
    ToolButton69: TToolButton;
    ToolButton70: TToolButton;
    ToolButton71: TToolButton;
    ToolButton72: TToolButton;
    ToolButton73: TToolButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Panel1: TPanel;
    lbHeader: TLabel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dsCustomer: TDataSource;
    cxGrid2DBTableView1DEBTOR_ACCT: TcxGridDBColumn;
    cxGrid2DBTableView1NAME: TcxGridDBColumn;
    Splitter1: TSplitter;
    cxGrid2Level2: TcxGridLevel;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2DBTableView2ITEM_CODE: TcxGridDBColumn;
    cxGrid2DBTableView2DESCS: TcxGridDBColumn;
    cxGrid2DBTableView2STANDARD_PRICE: TcxGridDBColumn;
    cxTabSheet1: TcxTabSheet;
    ToolBar6: TToolBar;
    ToolButton75: TToolButton;
    DBText15: TDBText;
    ToolButton76: TToolButton;
    DBText16: TDBText;
    ToolButton77: TToolButton;
    DBText17: TDBText;
    ToolButton78: TToolButton;
    DBText18: TDBText;
    ToolButton79: TToolButton;
    DBText19: TDBText;
    ToolButton80: TToolButton;
    DBText20: TDBText;
    ToolButton81: TToolButton;
    DBText21: TDBText;
    ToolButton82: TToolButton;
    DBText22: TDBText;
    ToolButton83: TToolButton;
    DBText23: TDBText;
    ToolButton84: TToolButton;
    DBText24: TDBText;
    ToolButton85: TToolButton;
    DBText25: TDBText;
    ToolButton86: TToolButton;
    DBText26: TDBText;
    ToolButton87: TToolButton;
    ToolButton88: TToolButton;
    Label9: TLabel;
    ToolBar7: TToolBar;
    ToolButton89: TToolButton;
    cxDBSpinMax14: TcxDBSpinEdit;
    ToolButton90: TToolButton;
    cxDBSpinMax15: TcxDBSpinEdit;
    ToolButton91: TToolButton;
    cxDBSpinMax16: TcxDBSpinEdit;
    ToolButton92: TToolButton;
    cxDBSpinMax17: TcxDBSpinEdit;
    ToolButton93: TToolButton;
    cxDBSpinMax18: TcxDBSpinEdit;
    ToolButton94: TToolButton;
    cxDBSpinMax19: TcxDBSpinEdit;
    ToolButton95: TToolButton;
    cxDBSpinMax20: TcxDBSpinEdit;
    ToolButton96: TToolButton;
    cxDBSpinMax21: TcxDBSpinEdit;
    ToolButton97: TToolButton;
    cxDBSpinMax22: TcxDBSpinEdit;
    ToolButton98: TToolButton;
    cxDBSpinMax23: TcxDBSpinEdit;
    ToolButton99: TToolButton;
    cxDBSpinMax24: TcxDBSpinEdit;
    ToolButton100: TToolButton;
    cxDBSpinMax25: TcxDBSpinEdit;
    ToolButton101: TToolButton;
    ToolButton102: TToolButton;
    ToolBar8: TToolBar;
    ToolButton103: TToolButton;
    cxDBMaskEditMax14: TcxDBMaskEdit;
    ToolButton104: TToolButton;
    cxDBMaskEditMax15: TcxDBMaskEdit;
    ToolButton105: TToolButton;
    cxDBMaskEditMax16: TcxDBMaskEdit;
    ToolButton106: TToolButton;
    cxDBMaskEditMax17: TcxDBMaskEdit;
    ToolButton107: TToolButton;
    cxDBMaskEditMax18: TcxDBMaskEdit;
    ToolButton108: TToolButton;
    cxDBMaskEditMax19: TcxDBMaskEdit;
    ToolButton109: TToolButton;
    cxDBMaskEditMax20: TcxDBMaskEdit;
    ToolButton110: TToolButton;
    cxDBMaskEditMax21: TcxDBMaskEdit;
    ToolButton111: TToolButton;
    cxDBMaskEditMax22: TcxDBMaskEdit;
    ToolButton112: TToolButton;
    cxDBMaskEditMax23: TcxDBMaskEdit;
    ToolButton113: TToolButton;
    cxDBMaskEditMax24: TcxDBMaskEdit;
    ToolButton114: TToolButton;
    cxDBMaskEditMax25: TcxDBMaskEdit;
    ToolButton115: TToolButton;
    ToolButton116: TToolButton;
    Label10: TLabel;
    ToolBar9: TToolBar;
    ToolButton117: TToolButton;
    cxDBSpinMin14: TcxDBSpinEdit;
    ToolButton118: TToolButton;
    cxDBSpinMin15: TcxDBSpinEdit;
    ToolButton119: TToolButton;
    cxDBSpinMin16: TcxDBSpinEdit;
    ToolButton120: TToolButton;
    cxDBSpinMin17: TcxDBSpinEdit;
    ToolButton121: TToolButton;
    cxDBSpinMin18: TcxDBSpinEdit;
    ToolButton122: TToolButton;
    cxDBSpinMin19: TcxDBSpinEdit;
    ToolButton123: TToolButton;
    cxDBSpinMin20: TcxDBSpinEdit;
    ToolButton124: TToolButton;
    cxDBSpinMin21: TcxDBSpinEdit;
    ToolButton125: TToolButton;
    cxDBSpinMin22: TcxDBSpinEdit;
    ToolButton126: TToolButton;
    cxDBSpinMin23: TcxDBSpinEdit;
    ToolButton127: TToolButton;
    cxDBSpinMin24: TcxDBSpinEdit;
    ToolButton128: TToolButton;
    cxDBSpinMin25: TcxDBSpinEdit;
    ToolButton129: TToolButton;
    ToolButton130: TToolButton;
    ToolBar10: TToolBar;
    ToolButton131: TToolButton;
    cxDBMaskEditMin14: TcxDBMaskEdit;
    ToolButton132: TToolButton;
    cxDBMaskEditMin15: TcxDBMaskEdit;
    ToolButton133: TToolButton;
    cxDBMaskEditMin16: TcxDBMaskEdit;
    ToolButton134: TToolButton;
    cxDBMaskEditMin17: TcxDBMaskEdit;
    ToolButton135: TToolButton;
    cxDBMaskEditMin18: TcxDBMaskEdit;
    ToolButton136: TToolButton;
    cxDBMaskEditMin19: TcxDBMaskEdit;
    ToolButton137: TToolButton;
    cxDBMaskEditMin20: TcxDBMaskEdit;
    ToolButton138: TToolButton;
    cxDBMaskEditMin21: TcxDBMaskEdit;
    ToolButton139: TToolButton;
    cxDBMaskEditMin22: TcxDBMaskEdit;
    ToolButton140: TToolButton;
    cxDBMaskEditMin23: TcxDBMaskEdit;
    ToolButton141: TToolButton;
    cxDBMaskEditMin24: TcxDBMaskEdit;
    ToolButton142: TToolButton;
    cxDBMaskEditMin25: TcxDBMaskEdit;
    ToolButton143: TToolButton;
    ToolButton144: TToolButton;
    cxDBCheckBoxS1: TcxDBCheckBox;
    cxDBCheckBoxS2: TcxDBCheckBox;
    cxDBCheckBoxS3: TcxDBCheckBox;
    cxDBCheckBoxS4: TcxDBCheckBox;
    cxDBCheckBoxS5: TcxDBCheckBox;
    cxDBCheckBoxS6: TcxDBCheckBox;
    cxDBCheckBoxS7: TcxDBCheckBox;
    cxDBCheckBoxS8: TcxDBCheckBox;
    cxDBCheckBoxS9: TcxDBCheckBox;
    cxDBCheckBoxS10: TcxDBCheckBox;
    cxDBCheckBoxS11: TcxDBCheckBox;
    cxDBCheckBoxS12: TcxDBCheckBox;
    cxDBCheckBoxS13: TcxDBCheckBox;
    cxDBCheckBoxS14: TcxDBCheckBox;
    cxDBCheckBoxS15: TcxDBCheckBox;
    cxDBCheckBoxS16: TcxDBCheckBox;
    cxDBCheckBoxS17: TcxDBCheckBox;
    cxDBCheckBoxS18: TcxDBCheckBox;
    cxDBCheckBoxS19: TcxDBCheckBox;
    cxDBCheckBoxS20: TcxDBCheckBox;
    cxDBCheckBoxS21: TcxDBCheckBox;
    cxDBCheckBoxS22: TcxDBCheckBox;
    cxDBCheckBoxS23: TcxDBCheckBox;
    cxDBCheckBoxS24: TcxDBCheckBox;
    cxDBCheckBoxS25: TcxDBCheckBox;
    Label11: TLabel;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxTabSheet3: TcxTabSheet;
    ToolBar11: TToolBar;
    ToolButton145: TToolButton;
    DBText28: TDBText;
    ToolButton146: TToolButton;
    DBText29: TDBText;
    ToolButton147: TToolButton;
    DBText30: TDBText;
    ToolButton148: TToolButton;
    DBText31: TDBText;
    ToolButton149: TToolButton;
    DBText32: TDBText;
    ToolButton150: TToolButton;
    DBText33: TDBText;
    ToolButton151: TToolButton;
    DBText34: TDBText;
    ToolButton152: TToolButton;
    DBText35: TDBText;
    ToolButton153: TToolButton;
    DBText36: TDBText;
    ToolButton154: TToolButton;
    DBText37: TDBText;
    ToolButton155: TToolButton;
    DBText38: TDBText;
    ToolButton156: TToolButton;
    ToolButton157: TToolButton;
    ToolBar12: TToolBar;
    ToolButton159: TToolButton;
    DBText41: TDBText;
    ToolButton160: TToolButton;
    DBText42: TDBText;
    ToolButton161: TToolButton;
    DBText43: TDBText;
    ToolButton162: TToolButton;
    DBText44: TDBText;
    ToolButton163: TToolButton;
    DBText45: TDBText;
    ToolButton164: TToolButton;
    DBText46: TDBText;
    ToolButton165: TToolButton;
    DBText47: TDBText;
    ToolButton166: TToolButton;
    DBText48: TDBText;
    ToolButton167: TToolButton;
    DBText49: TDBText;
    ToolButton168: TToolButton;
    DBText50: TDBText;
    ToolButton169: TToolButton;
    DBText51: TDBText;
    ToolButton170: TToolButton;
    DBText52: TDBText;
    ToolButton171: TToolButton;
    DBText53: TDBText;
    ToolButton172: TToolButton;
    cxDBCheckBox28: TcxDBCheckBox;
    cxDBCheckBox29: TcxDBCheckBox;
    cxDBCheckBox30: TcxDBCheckBox;
    cxDBCheckBox31: TcxDBCheckBox;
    cxDBCheckBox32: TcxDBCheckBox;
    cxDBCheckBox33: TcxDBCheckBox;
    cxDBCheckBox34: TcxDBCheckBox;
    cxDBCheckBox35: TcxDBCheckBox;
    cxDBCheckBox36: TcxDBCheckBox;
    cxDBCheckBox37: TcxDBCheckBox;
    cxDBCheckBox38: TcxDBCheckBox;
    cxDBCheckBox39: TcxDBCheckBox;
    cxDBCheckBox40: TcxDBCheckBox;
    cxDBCheckBox41: TcxDBCheckBox;
    cxDBCheckBox42: TcxDBCheckBox;
    cxDBCheckBox43: TcxDBCheckBox;
    cxDBCheckBox44: TcxDBCheckBox;
    cxDBCheckBox45: TcxDBCheckBox;
    cxDBCheckBox46: TcxDBCheckBox;
    cxDBCheckBox47: TcxDBCheckBox;
    cxDBCheckBox48: TcxDBCheckBox;
    cxDBCheckBox49: TcxDBCheckBox;
    cxDBCheckBox50: TcxDBCheckBox;
    cxDBCheckBox51: TcxDBCheckBox;
    dsSaleComponentDetail: TDataSource;
    PopupMenu1: TPopupMenu;
    Duplicatethisitem1: TMenuItem;
    N1: TMenuItem;
    Delete1: TMenuItem;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxDBCheckBox1PropertiesChange(Sender: TObject);
    procedure dsSaleRequimentSheetStateChange(Sender: TObject);
    procedure cxPageControlChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dataSourceDataChange(Sender: TObject; Field: TField);
    procedure Duplicatethisitem1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure cxDBCheckBoxS1Click(Sender: TObject);


    procedure createEditMask;
    procedure cxGroupBox1DblClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }

    procedure doSetupDataSet;override;
    procedure doDisplayTextChange;override;
    procedure SaleItemOnRowChanged(Dataset:TDataSet);
    procedure SaleItemRequirementSheetBeforePost(DataSet :TDataSet);
    procedure saveDisplayMask(var DataSet:TDataSet;fieldName:string;maskIndex:integer);

    procedure refresh(DataSet:TDataSet);
  end;

var
  frmSaleItemSetup: TfrmSaleItemSetup;

implementation
uses systemmenu,MasterSetupDataModule,saleitemduplicatedialog, StrUtils;

{$R *.dfm}

procedure TfrmSaleItemSetup.doSetupDataSet;
begin

   //0. #0
   //1. #0.0
   // 3.#0.00
   dsCustomer.DataSet := MasterSetupDM.tbCustomerView;
   datasource.DataSet := MasterSetupDM.tbSaleItemHD;
   dsOrderHistory.DataSet :=masterSetupDM.tbOrderHistory;
   dsSaleRequimentSheet.dataset :=masterSetupDM.tbSaleItemReqSheet;
   cbUOM.Properties.ListSource :=masterSetupDM.dsUom;
   cbCustomer.Properties.ListSource :=masterSetupDM.dsCustomerLookup;

   //12 oCT, 2011
   dsSaleComponentDetail.DataSet := MasterSetupDM.tbSaleComponentDetail;

   dsCustomer.DataSet.open;
   datasource.DataSet.Open;
   datasource.DataSet.NEXT;
   datasource.DataSet.FIRST;
   dsOrderHistory.DataSet.Open;
   dsSaleRequimentSheet.dataset.Open;
   cbUOM.Properties.ListSource.DataSet.open;
   cbCustomer.Properties.ListSource.dataset.open;
   dsSaleComponentDetail.DATASET.OPEN;
   searchDialog.SearchTable:=  datasource.DataSet;



   //delegate method
  // mastersetupDM.tbSaleItemHD.AfterScroll:=SaleItemOnRowChanged;
   mastersetupDM.tbSaleItemReqSheet.BeforePost := SaleItemRequirementSheetBeforePost;

 //
end;
procedure TfrmSaleItemSetup.saveDisplayMask(var DataSet:TDataSet;fieldName:string;maskIndex:integer);
begin
       with dataset do
       begin
           case maskIndex of
            0:begin
              FieldByName(fieldName).AsString := MASK_EDIT_FOR_ZERO_POINT;
            end;
            1:begin
                FieldByName(fieldName).AsString:= MASK_EDIT_FOR_ONE_POINT;
            end;
            2:begin
                FieldByName(fieldName).AsString := MASK_EDIT_FOR_TWO_POINT;
            end;
         end;
       end;

end;
procedure TfrmSaleItemSetup.createEditMask;
var foundComponent:TComponent;
    spinEdit :TcxDBSpinEdit;
    maskEdit :TcxDBMaskEdit;
    componentIndex:integer;
    componentenabled:boolean;

    procedure buildMask(sEdit:TcxDBSpinEdit;mEdit:TcxDBMaskEdit) ;
    begin
        //SAVE ALL MASK EDIT TO BLANK
       case sEdit.Value of
            0:begin
               mEdit.Properties.EditMask := '';//MASK_EDIT_FOR_ZERO_POINT;
            end;
            1:begin
             mEdit.Properties.EditMask := '';//MASK_EDIT_FOR_ONE_POINT;
            end;
            2:begin
             mEdit.Properties.EditMask :='';// MASK_EDIT_FOR_TWO_POINT;
            end;
         end;
    end;
begin
   componentIndex:=1;
   //1.Max
     for componentIndex:=1 to MAX_COMPOSITION_CONTROL do
     begin
      componentenabled:=  (dsSaleRequimentSheet.DataSet.FieldByName('ELE'+IntToStr(componentIndex)+'_ACTIVE').AsString ='Y');
       spinEdit := TcxDBSpinEdit(FindComponent('cxDBSpinMax'+IntToStr(componentIndex)));
       if (spinEdit<> nil) then //max value found
       begin

         maskEdit:= TcxDBMaskEdit(FindComponent('cxDBMaskEditMax'+IntToStr(componentIndex)));
         buildMask( spinEdit,  maskEdit);
         spinEdit.Enabled :=   componentenabled;
         maskEdit.Enabled :=   componentenabled;
         spinEdit:=nil;
         maskEdit:=nil;
       end;

        spinEdit := TcxDBSpinEdit(FindComponent('cxDBSpinMin'+IntToStr(componentIndex)));
       if (spinEdit<> nil) then //max value found
       begin

         maskEdit:= TcxDBMaskEdit(FindComponent('cxDBMaskEditMin'+IntToStr(componentIndex)));
          buildMask( spinEdit,  maskEdit);
           spinEdit.Enabled :=   componentenabled;
         maskEdit.Enabled :=   componentenabled;
         spinEdit:=nil;
         maskEdit:=nil;
       end;

      // inc(componentIndex);
     end;

end;


procedure TfrmSaleItemSetup.doDisplayTextChange;
VAR displayText:String;
begin
   if (datasource.dataset.Active =true) then
   begin
    displayText :='You are managing item->'+  datasource.DataSet.FieldByName('item_code').AsString+
    '('+ datasource.DataSet.FieldByName('descs').AsString+')'+ #13+
                  'Customer->'+datasource.DataSet.FieldByName('customerName').AsString+
                  #13+'There is(are)'+intToStr(dsOrderHistory.DataSet.RecordCount)+' order(s) active';
    lbHeader.Caption := displayText;
   end;

end;
procedure TfrmSaleItemSetup.SaleItemOnRowChanged(Dataset:TDataSet);
procedure fail(e:exception)   ;
begin
    errorEx('Error in SaleItemOnRowChanged'+e.Message);
    Close;
end;
BEGIN
  try
     if(datasource <> nil)  then
       if(datasource.DataSet<> nil) then
     doDisplayTextChange;
  except on e:exception  do
     fail(e);

  end;
END;

procedure TfrmSaleItemSetup.SaleItemRequirementSheetBeforePost(DataSet :TDataSet);
var elementIndex,MASKINDEX:integer;


begin
   MASKINDEX:=-1;

   mastersetupDM.TBICElement.Open;
   mastersetupDM.TBICElement.First;

   with dataset do
   begin
        for elementIndex:=1 to MAX_ELEMENT do
        begin
            //SAVE UPPERBOUND VALUE DISPLAY MASK
             MASKINDEX :=fieldbyname('MAX_FLOAT_POINT'+IntToStr(elementIndex)).AsInteger;
             saveDisplayMask(DataSet,'MAX_MASK'+IntToStr(elementIndex), MASKINDEX);
             //SAVE UPPERBOUND VALUE INNER BOULD MASK
             MASKINDEX :=fieldbyname('MIN_FLOAT_POINT'+IntToStr(elementIndex)).AsInteger;
             saveDisplayMask(DataSet,'MIN_MASK'+IntToStr(elementIndex), MASKINDEX);
              //12 NOV,2010 Save element label
             FieldByName('ELABEL'+IntToStr(elementIndex)).AsString :=   mastersetupDM.TBICElement.FieldByname('ELEMENT_CODE').AsString;
             mastersetupDM.TBICElement.next;
        end;
   end;

    mastersetupDM.TBICElement.close;

end;


procedure TfrmSaleItemSetup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF (KEY =VK_F11) then
  begin
    if activeControl = cbCustomer then
    begin
       customerSearchDialog.Execute;
    //customerSearchDialog.Selected.Text;
   // customerSearchDialog.Selected.GetText;
    //cbCustomer.Properties.i
    end;
   // cbCustomerKeyUp.

  end;
end;

procedure TfrmSaleItemSetup.FormCreate(Sender: TObject);
begin
  inherited;
  cxPageControl.ActivePageIndex:=0;
  createEditMask;
end;

procedure TfrmSaleItemSetup.cxDBCheckBox1PropertiesChange(Sender: TObject);
begin
  if (cxDBCheckBox1.Checked = false) then
  begin
     if Confirm('Are you sure if you want to INACTIVE this product?') = mryes then
     begin
       cxDBCheckBox1.Checked :=false;
     end
     else
     begin
       cxDBCheckBox1.Checked :=true;
     end;
  end;
end;

procedure TfrmSaleItemSetup.dsSaleRequimentSheetStateChange(
  Sender: TObject);
begin

  editColorChange(dsSaleRequimentSheet.State);
end;

procedure TfrmSaleItemSetup.cxPageControlChange(Sender: TObject);
begin
 case cxPageControl.ActivePageIndex of
      0:  begin
           statusbar1.Panels[1].Text := 'Active data = saleorder item';
           activeDataset:=datasource.dataset;
         end;
      1:
       begin
          statusbar1.Panels[1].Text := 'Active data = ordre history';
          activeDataset:=datasource.dataset;
       end;
      2:
       begin
           statusbar1.Panels[1].Text := 'Active data = Requirement';
           activeDataset:= dsSaleRequimentSheet.DataSet;
           if (dsSaleRequimentSheet.dataset.FieldByName('ELABEL1').AsString ='') then
           begin
           try
             screen.Cursor :=crHourGlass;
              dsSaleRequimentSheet.DataSet.Edit;
              dsSaleRequimentSheet.DataSet.Post;
           finally
             screen.Cursor :=crDefault;
           end;
           end;
       end;
       4:BEGIN
          statusbar1.Panels[1].Text := 'Active data = Component Detail';
          refresh(dsSaleComponentDetail.dataset);
       END;
  end;

end;

procedure TfrmSaleItemSetup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   datasource.DataSet.Close;
//   datasource.DataSet.First;
   dsOrderHistory.DataSet.Close;
   dsSaleRequimentSheet.dataset.Close;
   cbUOM.Properties.ListSource.DataSet.Close;
   cbCustomer.Properties.ListSource.dataset.Close;
   //SaleItemOnRowChanged:=nil;
   inherited;
end;

procedure TfrmSaleItemSetup.dataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  SaleItemOnRowChanged(datasource.DataSet);

end;

procedure TfrmSaleItemSetup.Duplicatethisitem1Click(Sender: TObject);
var itemcode,newITEMCODE:string   ;

   done:boolean;
   SaleItem:TSaleItemMaster;

begin
  done:=false;
  itemcode:=datasource.DataSet.FieldByName('ITEM_CODE').ASSTRING;
   if (itemcode <> '') then
  if Confirm('Do you want to duplicate from item code'+itemcode)  =mrYes then
  begin
      frmSaleItemDupliatePopup := TfrmSaleItemDupliatePopup.create(self,itemcode);
      frmSaleItemDupliatePopup.SHOWmODAL;
      if   (frmSaleItemDupliatePopup.ModalResult = mrOK) then
      begin
          SaleItem := TSaleItemMaster.Create;

         SaleItem.itemcode := frmSaleItemDupliatePopup.getnewItemCode;
         SaleItem.uom := datasource.dataset.fieldbyname('UOM_CD').AsString ;
         SaleItem.saleprice :=  datasource.dataset.Fieldbyname('SALE_PRICE').AsFloat   ;
         SaleItem.description := datasource.dataset.Fieldbyname('descs').AsString   ;
           SaleItem.custcode :=  datasource.dataset.fieldbyname('cust_code').AsString ;
         with datasource.DataSet do
         begin
          TRY
            try
              insert;
              Fieldbyname('item_code').AsString :=  SaleItem.itemcode;
              Fieldbyname('cust_code').AsString :=      SaleItem.custcode;
              Fieldbyname('UOM_CD').AsString :=   SaleItem.uom ;
              Fieldbyname('SALE_PRICE').AsFloat :=        SaleItem.saleprice    ;
              Fieldbyname('DESCS').AsString :=     SaleItem.description  ;
              Fieldbyname('remarks').AsString :=     SaleItem.description;
              post;
              done:=true;
            except on e:exception do
               errorex('Error while coping item  master'+e.Message);
            end;

            finally //supplicate sale_item_requirement
               //
               try
                 done:=false;
                 done := MasterSetupDM.duplicateSaleItemComposition(itemcode,saleitem.itemcode,saleitem.custcode);

               except on e:exception do
                   errorex('Error while coping item composition'+e.Message);

               end;
            end;
           if done then INFO('Item '+newitemcode+' has completly copied.')
            else warning('Process abort!') ;


          
         end;
      end;
  end;

end;

procedure TfrmSaleItemSetup.Delete1Click(Sender: TObject);
begin
  if confirm('Are you want to delete'+datasource.DataSet.FieldByName('item_code').AsString) = mrYes then
       datasource.dataset.Delete;
end;



procedure TfrmSaleItemSetup.cxDBCheckBoxS1Click(Sender: TObject);


  var ID:String;
      nameStr:String;
      POS : Integer;
      maxspinEditComponent,minspinEditComponent:TcxDBSpinEdit;
      maxmaskEditComponent,minmaskEditComponent:TcxDBMaskEdit;
      checked:boolean;

begin
 if (Sender is TcxDBCheckBox) then
 begin
    nameStr:=TcxDBCheckBox(Sender).Name;
     checked:= TcxDBCheckBox(Sender).Checked;
     pos :=   StrLen(Pchar(nameStr)) - strlen(Pchar(CHECKBOXEDIT_PREFIX));
       ID:=  RightStr(nameStr,pos) ;
       TRY
        maxspinEditComponent := TcxDBSpinEdit(FindComponent(MAXSPINEDIT_PREFIX+ID));
        maxspinEditComponent.Enabled:=checked;
        minspinEditComponent := TcxDBSpinEdit(FindComponent(MINSPINEDIT_PREFIX+ID));
        minspinEditComponent.enabled:= checked;
        maxMASKEditComponent := TcxDBMASKEdit(FindComponent(MAXMASKEDIT_PREFIX+ID));
        maxMASKEditComponent.Enabled:=checked;
        MINMASKEditComponent := TcxDBMASKEdit(FindComponent(MINMASKEDIT_PREFIX+ID));
        MINMASKEditComponent.Enabled:=checked;
       EXCEPT ON E:EXCEPTION DO

          errorEx('Could not initilize control component ID ='+ID +' ERROR:');

       END;


 end;

end;


procedure TfrmSaleItemSetup.refresh (Dataset:TDataSet);
begin
   dataset.close;
   dataset.Open;
end;
procedure TfrmSaleItemSetup.cxGroupBox1DblClick(Sender: TObject);
begin
   Refresh(dsSaleComponentDetail.DataSet);

end;

end.
