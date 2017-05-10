unit SaleItemSetup792001;

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
  cxMemo, wwriched, cxLookAndFeelPainters, cxGroupBox;
const MASK_EDIT_FOR_ZERO_POINT ='#0';
const MASK_EDIT_FOR_ONE_POINT ='#0.0';
const MASK_EDIT_FOR_TWO_POINT ='#0.00';
type
  TfrmSaleItemSetup792011 = class(TfrmDBSingleEntry)
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
    cxDBSpinMin111: TcxDBSpinEdit;
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
    DBText27: TDBText;
    ToolButton88: TToolButton;
    Label9: TLabel;
    ToolBar7: TToolBar;
    ToolButton89: TToolButton;
    cxDBSpinEdit1: TcxDBSpinEdit;
    ToolButton90: TToolButton;
    cxDBSpinEdit2: TcxDBSpinEdit;
    ToolButton91: TToolButton;
    cxDBSpinEdit3: TcxDBSpinEdit;
    ToolButton92: TToolButton;
    cxDBSpinEdit4: TcxDBSpinEdit;
    ToolButton93: TToolButton;
    cxDBSpinEdit5: TcxDBSpinEdit;
    ToolButton94: TToolButton;
    cxDBSpinEdit6: TcxDBSpinEdit;
    ToolButton95: TToolButton;
    cxDBSpinEdit7: TcxDBSpinEdit;
    ToolButton96: TToolButton;
    cxDBSpinEdit8: TcxDBSpinEdit;
    ToolButton97: TToolButton;
    cxDBSpinEdit9: TcxDBSpinEdit;
    ToolButton98: TToolButton;
    cxDBSpinEdit10: TcxDBSpinEdit;
    ToolButton99: TToolButton;
    cxDBSpinEdit11: TcxDBSpinEdit;
    ToolButton100: TToolButton;
    cxDBSpinEdit12: TcxDBSpinEdit;
    ToolButton101: TToolButton;
    cxDBSpinEdit13: TcxDBSpinEdit;
    ToolButton102: TToolButton;
    ToolBar8: TToolBar;
    ToolButton103: TToolButton;
    cxDBMaskEdit1: TcxDBMaskEdit;
    ToolButton104: TToolButton;
    cxDBMaskEdit2: TcxDBMaskEdit;
    ToolButton105: TToolButton;
    cxDBMaskEdit3: TcxDBMaskEdit;
    ToolButton106: TToolButton;
    cxDBMaskEdit4: TcxDBMaskEdit;
    ToolButton107: TToolButton;
    cxDBMaskEdit5: TcxDBMaskEdit;
    ToolButton108: TToolButton;
    cxDBMaskEdit6: TcxDBMaskEdit;
    ToolButton109: TToolButton;
    cxDBMaskEdit7: TcxDBMaskEdit;
    ToolButton110: TToolButton;
    cxDBMaskEdit8: TcxDBMaskEdit;
    ToolButton111: TToolButton;
    cxDBMaskEdit9: TcxDBMaskEdit;
    ToolButton112: TToolButton;
    cxDBMaskEdit10: TcxDBMaskEdit;
    ToolButton113: TToolButton;
    cxDBMaskEdit11: TcxDBMaskEdit;
    ToolButton114: TToolButton;
    cxDBMaskEdit12: TcxDBMaskEdit;
    ToolButton115: TToolButton;
    cxDBMaskEdit13: TcxDBMaskEdit;
    ToolButton116: TToolButton;
    Label10: TLabel;
    ToolBar9: TToolBar;
    ToolButton117: TToolButton;
    cxDBSpinEdit14: TcxDBSpinEdit;
    ToolButton118: TToolButton;
    cxDBSpinEdit15: TcxDBSpinEdit;
    ToolButton119: TToolButton;
    cxDBSpinEdit16: TcxDBSpinEdit;
    ToolButton120: TToolButton;
    cxDBSpinEdit17: TcxDBSpinEdit;
    ToolButton121: TToolButton;
    cxDBSpinEdit18: TcxDBSpinEdit;
    ToolButton122: TToolButton;
    cxDBSpinEdit19: TcxDBSpinEdit;
    ToolButton123: TToolButton;
    cxDBSpinEdit20: TcxDBSpinEdit;
    ToolButton124: TToolButton;
    cxDBSpinEdit21: TcxDBSpinEdit;
    ToolButton125: TToolButton;
    cxDBSpinEdit22: TcxDBSpinEdit;
    ToolButton126: TToolButton;
    cxDBSpinEdit23: TcxDBSpinEdit;
    ToolButton127: TToolButton;
    cxDBSpinEdit24: TcxDBSpinEdit;
    ToolButton128: TToolButton;
    cxDBSpinEdit25: TcxDBSpinEdit;
    ToolButton129: TToolButton;
    cxDBSpinEdit26: TcxDBSpinEdit;
    ToolButton130: TToolButton;
    ToolBar10: TToolBar;
    ToolButton131: TToolButton;
    cxDBMaskEdit14: TcxDBMaskEdit;
    ToolButton132: TToolButton;
    cxDBMaskEdit15: TcxDBMaskEdit;
    ToolButton133: TToolButton;
    cxDBMaskEdit16: TcxDBMaskEdit;
    ToolButton134: TToolButton;
    cxDBMaskEdit17: TcxDBMaskEdit;
    ToolButton135: TToolButton;
    cxDBMaskEdit18: TcxDBMaskEdit;
    ToolButton136: TToolButton;
    cxDBMaskEdit19: TcxDBMaskEdit;
    ToolButton137: TToolButton;
    cxDBMaskEdit20: TcxDBMaskEdit;
    ToolButton138: TToolButton;
    cxDBMaskEdit21: TcxDBMaskEdit;
    ToolButton139: TToolButton;
    cxDBMaskEdit22: TcxDBMaskEdit;
    ToolButton140: TToolButton;
    cxDBMaskEdit23: TcxDBMaskEdit;
    ToolButton141: TToolButton;
    cxDBMaskEdit24: TcxDBMaskEdit;
    ToolButton142: TToolButton;
    cxDBMaskEdit25: TcxDBMaskEdit;
    ToolButton143: TToolButton;
    cxDBMaskEdit26: TcxDBMaskEdit;
    ToolButton144: TToolButton;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxDBCheckBox20: TcxDBCheckBox;
    cxDBCheckBox21: TcxDBCheckBox;
    cxDBCheckBox22: TcxDBCheckBox;
    cxDBCheckBox23: TcxDBCheckBox;
    cxDBCheckBox24: TcxDBCheckBox;
    cxDBCheckBox25: TcxDBCheckBox;
    cxDBCheckBox26: TcxDBCheckBox;
    cxDBCheckBox27: TcxDBCheckBox;
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
    DBText39: TDBText;
    ToolButton157: TToolButton;
    DBText40: TDBText;
    ToolButton158: TToolButton;
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
    cxDBCheckBox52: TcxDBCheckBox;
    cxDBCheckBox53: TcxDBCheckBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxDBCheckBox1PropertiesChange(Sender: TObject);
    procedure dsSaleRequimentSheetStateChange(Sender: TObject);
    procedure cxPageControlChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dataSourceDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }

    procedure createEditMask;
  public
    { Public declarations }

    procedure doSetupDataSet;override;
    procedure doDisplayTextChange;override;
    procedure SaleItemOnRowChanged(Dataset:TDataSet);
    procedure SaleItemRequirementSheetBeforePost(DataSet :TDataSet);
    procedure saveDisplayMask(var DataSet:TDataSet;fieldName:string;maskIndex:integer);
  end;

var
  frmSaleItemSetup792011: TfrmSaleItemSetup792011;

implementation
uses systemmenu,MasterSetupDataModule;

{$R *.dfm}

procedure TfrmSaleItemSetup792011.doSetupDataSet;
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
   dsCustomer.DataSet.open;
   datasource.DataSet.Open;
   datasource.DataSet.NEXT;
   datasource.DataSet.FIRST;
   dsOrderHistory.DataSet.Open;
   dsSaleRequimentSheet.dataset.Open;
   cbUOM.Properties.ListSource.DataSet.open;
   cbCustomer.Properties.ListSource.dataset.open;
   searchDialog.SearchTable:=  datasource.DataSet;



   //delegate method
  // mastersetupDM.tbSaleItemHD.AfterScroll:=SaleItemOnRowChanged;
   mastersetupDM.tbSaleItemReqSheet.BeforePost := SaleItemRequirementSheetBeforePost;

 //
end;
procedure TfrmSaleItemSetup792011.saveDisplayMask(var DataSet:TDataSet;fieldName:string;maskIndex:integer);
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
procedure TfrmSaleItemSetup792011.createEditMask;
var foundComponent:TComponent;
    spinEdit :TcxDBSpinEdit;
    maskEdit :TcxDBMaskEdit;
    componentIndex:integer;

    procedure buildMask(sEdit:TcxDBSpinEdit;mEdit:TcxDBMaskEdit) ;
    begin

       case sEdit.Value of
            0:begin
               mEdit.Properties.EditMask := MASK_EDIT_FOR_ZERO_POINT;
            end;
            1:begin
             mEdit.Properties.EditMask := MASK_EDIT_FOR_ONE_POINT;
            end;
            2:begin
             mEdit.Properties.EditMask := MASK_EDIT_FOR_TWO_POINT;
            end;
         end;
    end;
begin
   componentIndex:=1;
   //1.Max
     for componentIndex:=1 to 13 do
     begin
       spinEdit := TcxDBSpinEdit(FindComponent('cxDBSpinMax'+IntToStr(componentIndex)));
       if (spinEdit<> nil) then //max value found
       begin
         maskEdit:= TcxDBMaskEdit(FindComponent('cxDBMaskEditMax'+IntToStr(componentIndex)));
         buildMask( spinEdit,  maskEdit);
         spinEdit:=nil;
         maskEdit:=nil;
       end;

        spinEdit := TcxDBSpinEdit(FindComponent('cxDBSpinMin'+IntToStr(componentIndex)));
       if (spinEdit<> nil) then //max value found
       begin
         maskEdit:= TcxDBMaskEdit(FindComponent('cxDBMaskEditMin'+IntToStr(componentIndex)));
          buildMask( spinEdit,  maskEdit);
         spinEdit:=nil;
         maskEdit:=nil;
       end;

      // inc(componentIndex);
     end;

end;


procedure TfrmSaleItemSetup792011.doDisplayTextChange;
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
procedure TfrmSaleItemSetup792011.SaleItemOnRowChanged(Dataset:TDataSet);
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

procedure TfrmSaleItemSetup792011.SaleItemRequirementSheetBeforePost(DataSet :TDataSet);
var elementIndex,MASKINDEX:integer;


begin
   MASKINDEX:=-1;

   mastersetupDM.TBICElement.Open;
   mastersetupDM.TBICElement.First;

   with dataset do
   begin
        for elementIndex:=1 to 13 do
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


procedure TfrmSaleItemSetup792011.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmSaleItemSetup792011.FormCreate(Sender: TObject);
begin
  inherited;
  cxPageControl.ActivePageIndex:=0;
  
 // createEditMask;
end;

procedure TfrmSaleItemSetup792011.cxDBCheckBox1PropertiesChange(Sender: TObject);
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

procedure TfrmSaleItemSetup792011.dsSaleRequimentSheetStateChange(
  Sender: TObject);
begin

  editColorChange(dsSaleRequimentSheet.State);
end;

procedure TfrmSaleItemSetup792011.cxPageControlChange(Sender: TObject);
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
  end;

end;

procedure TfrmSaleItemSetup792011.FormClose(Sender: TObject;
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

procedure TfrmSaleItemSetup792011.dataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  SaleItemOnRowChanged(datasource.DataSet);

end;

end.
