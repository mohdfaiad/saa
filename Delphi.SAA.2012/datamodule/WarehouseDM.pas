unit WarehouseDM;

interface

uses
  SysUtils, Classes,INIFILES, DB, IBDatabase,Dialogs, IBCustomDataSet,
  IBTable, IBQuery, IBStoredProc,Controls,abstractDataModule;


type
  TUser = class
  private
    fuserid,fuserName:String;
  public
   property userid:string read fuserid write fuserid;
   property username:string read fusername write fusername;
   constructor create(userID,userName:String);overload;
end;
type
  TWarehouseDataManager = class(TAbstractDM)
    IBTransaction: TIBTransaction;
    IBDatabase: TIBDatabase;
    tbMaterialRequestHD: TIBTable;
    tbMaterialRequestDT: TIBTable;
    dsMaterialRequestHD: TDataSource;
    dsMaterialRequestDT: TDataSource;
    tbMaterialRequestHDDOC_NO: TIBStringField;
    tbMaterialRequestHDDOC_DATE: TDateTimeField;
    tbMaterialRequestHDDESCS: TIBStringField;
    tbMaterialRequestHDREQ_BY: TIBStringField;
    tbMaterialRequestHDREQ_DATE: TDateTimeField;
    tbMaterialRequestHDUPDATE_USER: TIBStringField;
    tbMaterialRequestHDUPDATE_DATE: TDateTimeField;
    tbMaterialRequestHDTRX_TYPE: TIBStringField;
    tbMaterialRequestHDIC_MODE: TIBStringField;
    tbMaterialRequestHDREMARKS: TIBStringField;
    tbMaterialRequestHDMELT_NO: TIBStringField;
    tbMaterialRequestHDSTATUS: TIBStringField;
    tbMaterialRequestHDPLAN_DOC: TIBStringField;
    tbMaterialRequestHDPLAN_DATE: TDateTimeField;
    tbMaterialRequestHDALLOY_CODE: TIBStringField;
    tbMaterialRequestHDISSUE_BY: TIBStringField;
    qryUnPostedMaterialRequest: TIBQuery;
    dsUnPostedMaterialRequest: TDataSource;
    qryUnPostedMaterialRequestDOC_NO: TIBStringField;
    qryUnPostedMaterialRequestDOC_DATE: TDateTimeField;
    qryUnPostedMaterialRequestREQ_BY: TIBStringField;
    qryUnPostedMaterialRequestISSUE_BY: TIBStringField;
    qryUnPostedMaterialRequestMELT_NO: TIBStringField;
    qryUnPostedMaterialRequestSTATUS: TIBStringField;
    qryUnClosedRawmaterialPlan: TIBQuery;
    dsUnClosedRawmaterialPlan: TDataSource;
    qryUnClosedRawmaterialPlanMELT_NO: TIBStringField;
    qryUnClosedRawmaterialPlanPLAN_DOC: TIBStringField;
    qryUnClosedRawmaterialPlanPLAN_DATE: TDateTimeField;
    qryUnClosedRawmaterialPlanITEM_CODE: TIBStringField;
    tbMaterialRequestDTDOC_NO: TIBStringField;
    tbMaterialRequestDTDOC_DATE: TDateTimeField;
    tbMaterialRequestDTTRX_TYPE: TIBStringField;
    tbMaterialRequestDTITEM_CODE: TIBStringField;
    tbMaterialRequestDTITEM_DESCS: TIBStringField;
    tbMaterialRequestDTLOT_NO: TIBStringField;
    tbMaterialRequestDTPURCHASE_DATE: TDateTimeField;
    tbMaterialRequestDTQTY: TFloatField;
    tbMaterialRequestDTUNIT_COST: TFloatField;
    tbMaterialRequestDTUOM: TIBStringField;
    tbMaterialRequestDTTOTAL_COST: TFloatField;
    tbMaterialRequestDTGROUP_ID: TIBStringField;
    tbMaterialRequestDTUSAGED_QTY: TFloatField;
    tbMaterialRequestDTITEM_TYPE: TIBStringField;
    tbMaterialRequestDTONHAND_QTY: TFloatField;
    tbMaterialRequestDTREF_NO: TIBStringField;
    tbMaterialRequestDTREF_DATE: TDateTimeField;
    tbMaterialRequestDTACCT_CD: TIBStringField;
    spRequestDetailInsert: TIBStoredProc;
    qryStockOnhandDetail: TIBQuery;
    dsStockOnhandDetail: TDataSource;
    qryStockOnhandDetailLink: TIBQuery;
    dsStockOnhandDetailLink: TDataSource;
    qryStockOnhandDetailLinkREF_NO: TIBStringField;
    qryStockOnhandDetailLinkREF_DATE: TDateTimeField;
    qryStockOnhandDetailLinkLOT_CD: TIBStringField;
    qryStockOnhandDetailLinkONHAND_QTY: TFloatField;
    qryStockOnhandDetailLinkRESERVED_QTY: TFloatField;
    qryStockOnhandDetailLOT_CD: TIBStringField;
    qryStockOnhandDetailPURCHASE_DATE: TDateTimeField;
    qryStockOnhandDetailONHAND_QTY: TFloatField;
    qryStockOnhandDetailSTOCK_CD: TIBStringField;
    qryStockOnhandDetailGROUP_ID: TIBStringField;
    qryStockOnhandDetailUOM_CD: TIBStringField;
    qryStockOnhandDetailACCT_CODE: TIBStringField;
    qryAdhoc: TIBQuery;
    qryStockOnhandDetailLinkUNIT_COST: TFloatField;
    spStockQualify: TIBStoredProc;
    spStockReserved: TIBStoredProc;
    tbStockMaster: TIBTable;
    dsStockMaster: TDataSource;
    tbMaterialRequestDTStockName: TStringField;
    tbStockMasterSTOCK_CD: TIBStringField;
    tbStockMasterEN_DESCS: TIBStringField;
    tbStockMasterTH_DESCS: TIBStringField;
    tbStockMasterUOM_CD: TIBStringField;
    tbStockMasterGROUP_ID: TIBStringField;
    qryStockReserved: TIBQuery;
    dsStockReserved: TDataSource;
    tbUser: TIBTable;
    dsUser: TDataSource;
    tbUserUSER_ID: TIBStringField;
    tbUserUSER_NAME: TIBStringField;
    tbUserGROUP_ID: TIBStringField;
    tbUserOLD_PASSWORD: TIBStringField;
    tbUserCURRENT_PASSWORD: TIBStringField;
    tbUserCONFIRM_PASSWORD: TIBStringField;
    tbUserUPDATE_USER: TIBStringField;
    tbUserUPDATE_DATE: TDateTimeField;
    tbUserACTIVED: TIBStringField;
    qryStockOnhandLinkEnq: TIBQuery;
    IBStringField1: TIBStringField;
    DateTimeField1: TDateTimeField;
    IBStringField2: TIBStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    qryStockReservedDOC_NO: TIBStringField;
    qryStockReservedDOC_DATE: TDateTimeField;
    qryStockReservedLOT_CD: TIBStringField;
    qryStockReservedPURCHASE_DATE: TDateTimeField;
    qryStockReservedREF_NO: TIBStringField;
    qryStockReservedREF_DATE: TDateTimeField;
    qryStockReservedSTOCK_CD: TIBStringField;
    qryStockReservedGROUP_ID: TIBStringField;
    qryStockReservedUOM_CD: TIBStringField;
    qryStockReservedQTY: TFloatField;
    qryStockReservedUPDATE_USER: TIBStringField;
    qryStockReservedUPDATE_DATE: TDateTimeField;
    spPostMaterialRequest: TIBStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure tbMaterialRequestHDAfterPost(DataSet: TDataSet);
    procedure tbMaterialRequestHDMELT_NOChange(Sender: TField);
    procedure tbMaterialRequestHDNewRecord(DataSet: TDataSet);
    procedure tbMaterialRequestHDBeforePost(DataSet: TDataSet);
    procedure qryUnClosedRawmaterialPlanAfterScroll(DataSet: TDataSet);
    procedure tbMaterialRequestDTAfterOpen(DataSet: TDataSet);
    procedure qryStockOnhandDetailAfterScroll(DataSet: TDataSet);
    procedure tbMaterialRequestDTLOT_NOChange(Sender: TField);
    procedure tbMaterialRequestDTREF_NOChange(Sender: TField);
    procedure tbMaterialRequestDTQTYChange(Sender: TField);
    procedure tbMaterialRequestDTQTYValidate(Sender: TField);
    procedure tbMaterialRequestDTAfterPost(DataSet: TDataSet);
    procedure tbMaterialRequestDTAfterDelete(DataSet: TDataSet);
    procedure tbMaterialRequestDTITEM_CODEChange(Sender: TField);
    procedure tbMaterialRequestDTBeforePost(DataSet: TDataSet);
    procedure tbMaterialRequestDTBeforeDelete(DataSet: TDataSet);
    procedure tbMaterialRequestDTNewRecord(DataSet: TDataSet);
    procedure tbMaterialRequestDTAfterScroll(DataSet: TDataSet);
  private
  // SystemConfig:TIniFile;
   databaseName :String;
   databaseHost :String;
   databaseUrl :String;
   fsuccess,floginOK :boolean;
   logonUser:String;
   userObject:TUser;


   function createDataBaseConnection:boolean;
   procedure stockReserveUpdate(stockCode,lotNo:String;purchaseDate:TDateTime;refNo:String;refDate:TDateTime;docNo:String;docDate:TDateTime;userID:String;qty:Double;mode:String);


    { Private declarations }
  public

 // property CurrentDatabase String read  databaseUrl write databaseUrl;
  property success :Boolean read fsuccess write fsuccess;
  property currentConnected:String read databaseUrl write databaseUrl;
  property User:TUser read userObject write userObject;
  property loginOK:boolean read floginOK  write floginOK;
  {check if there is no record in production request detail then
   auto insert data base on pl_rawmat_sheet_hd and dt
   @@see also
  }

  procedure commit;
  function autoInsertRequestDetailRecord:boolean;
  procedure insertMaterialRequestDetail(docNo:String;docDate:TDateTime;planDoc:String;meltNo:String);
  //check if issued qty is qualified (not greater than onhand_qty+reserved_qty)
  function IsIssuedQuantityIsQualified(stockCode,lotNo,refNo:String;refDate:TDateTime;issueQty:Double):boolean;

  procedure filterStockLink(lotNo:String);
  function loginValid(user,pwd :String):boolean;
  {#### post material request ###############}
  procedure postMaterialRequest(acctcd:String; docNo:String;docDate:TDateTime;user:String;module:String;mode:String);
  procedure setLogonUser(user:String);
    { Public declarations }
  end;
  {stock qualify object declare}
type
   TStockQualifyItem = class
   private

    fStockCode,fLotNo,frefNo:String;
    frefDate:TDateTime;
    fonhandQty,freservedQty,fissuedQty:Double;

   public
  // constructor create; o;
   constructor create(stockCode,lotNo,refNo:String;refDate:TDateTime;issuedQty:Double);overload;
   function isqualify :boolean;
   property onhandQty :Double read fonhandQty write fonhandqty;
   property reservedQty:Double read freservedqty write freservedqty;
   property issuedQty:double read fissuedQty write fissuedQty;


end;
{******stock reserved object declare******}
{########### material request post manager########}
type
  TMaterialPostManager = class
  private

    facctCd,fdocNo,fuser,fmodule,fmode:string;
    fdocDate:TDateTime;
    procedure initParameters;
  public
  constructor create(acctcd:String; docNo:String;docDate:TDateTime;user:String;module:String;mode:String);overload;
  procedure execute;

end;
{########### material request post manager########}
type
 TStockReservedManager = class
 private
   fstockCode,flotNo,fdocNo,frefNo,fmode,fuserID:String;
   fpurchaseDate,frefDate,fdocDate:TDateTime;
   fqty:double;


   procedure execute;
   public
   constructor create(stockCode,lotNo:String;purchaseDate:TDateTime;refNo:String;
   refDate:TDateTime;docNo:String;docDate:TDateTime;userID:String;qty:Double;mode:String);overload;
end;
{*********************************}




var

  WarehouseDataManager: TWarehouseDataManager;

  DefaultTransactionType:String ;
  DefaultTransactoinDescription:String;
  qualifyItem:TStockQualifyItem ;  {stock quantity check manager}
  stockReserveManager:TStockReservedManager; {stock reserved  manager}
  materialPostManager:TMaterialPostManager;



implementation
 uses DialogUtils,systemConfig;
{$R *.dfm}
{*****************TUSER**********}
constructor  TUser.create(userID,userName:String);
begin
   fuserid:=userID;
   fuserName:=userName;
end;
{*****************TUSER**********}

{########### TMaterialPostManager########}
constructor  TMaterialPostManager.create(acctcd:String; docNo:String;docDate:TDateTime;user:String;module:String;mode:String);
begin
  facctcd:=acctcd;
  fdocNo:=docNo;
  fdocdate:=docDate;
  fuser:=user;
  fmodule:=module;
  fmode:=mode;

end;
procedure TMaterialPostManager.initParameters;
begin
   try
     WarehouseDataManager.spPostMaterialRequest.ParamByName('ACCT_CD').AsString:=facctcd;
     WarehouseDataManager.spPostMaterialRequest.ParamByName('DOC_NO').AsString:=fdocNO;
     WarehouseDataManager.spPostMaterialRequest.ParamByName('DOC_DATE').AsDateTime:=fdocDate;
     WarehouseDataManager.spPostMaterialRequest.ParamByName('UPDATE_USER').AsString:=fuser;
     WarehouseDataManager.spPostMaterialRequest.ParamByName('MODULE').AsString:=fmodule;
     WarehouseDataManager.spPostMaterialRequest.ParamByName('MODE').AsString:=fmode;
   except
    on e:Exception do
       MessageDlg('Failed to initialze parameter message'+#13+'['+e.Message+']',mtError,[mbCancel],0);
   end;
end;
procedure TMaterialPostManager.execute;
begin
  initParameters;
  try
    WarehouseDataManager.spPostMaterialRequest.ExecProc;
    WarehouseDataManager.commit;
   except
    on e:Exception do
       MessageDlg('Failed to initialze parameter message'+#13+'['+e.Message+']',mtError,[mbCancel],0);
   end;
end;

{########### TMaterialPostManager########}
{*****************TStockQualifyItem**********}

constructor TStockQualifyItem.create(stockCode,lotNo,refNo:String;refDate:TDateTime;issuedQty:Double);
begin
   fStockCode :=stockCode;
   fLotNo:=lotNo;
   frefNo:=refNo;
   frefDate:=refDate;
   fissuedQty:=issuedQty
end;
function TStockQualifyItem.isqualify:boolean;
 procedure qualify();
 begin
 try
   WarehouseDataManager.spStockQualify.ParamByName('ASTOCK_CODE').AsString:=fStockCode;
   WarehouseDataManager.spStockQualify.ParamByName('ALOT_CD').AsString:=flotNo;
   WarehouseDataManager.spStockQualify.ParamByName('AREF_NO').AsString:=frefNo;
   WarehouseDataManager.spStockQualify.ParamByName('AREF_DATE').AsDateTime:=frefDate;
   WarehouseDataManager.spStockQualify.ExecProc;

   freservedQty:=WarehouseDataManager.spStockQualify.ParamByName('RESERVED_QTY').AsFloat;
   fonhandQty:=WarehouseDataManager.spStockQualify.ParamByName('ONHAND_QTY').AsFloat;
   except
    on e:Exception do
      MessageDlg('Could not check stock qualify '+e.Message,mtWarning,[mbOK],0);
   end;
 end;
begin
qualify;
result:=(fissuedQty <=(fonhandQty-freservedQty));
end;
{*****************TStockQualifyItem**********}
{****************TStockServedManager*******}
constructor  TStockReservedManager.create(stockCode,lotNo:String;purchaseDate:TDateTime;refNo:String;refDate:TDateTime;docNo:String;docDate:TDateTime;userID:String;qty:Double;mode:String);
begin
   fstockCode := stockCode;
   flotNo :=lotNo;
   fpurchaseDate :=purchaseDate;
   fRefNo :=refNo;
   frefDate :=refDate;
   fdocNo :=DocNo;
   fDocDate :=docDate;
   fuserid :=userid;
   fQty :=qty;
   fmode :=mode;
end;

procedure TStockReservedManager.execute;
begin
try
 // WarehouseDataManager.IBTransaction.StartTransaction;
   WarehouseDataManager.spStockReserved.ParamByName('ASTOCK_CD').AsString:=fstockCode;
   WarehouseDataManager.spStockReserved.ParamByName('ALOT_CD').AsString:=flotNo;
   WarehouseDataManager.spStockReserved.ParamByName('Apurchase_date').AsDateTime:=fpurchaseDate;
   WarehouseDataManager.spStockReserved.ParamByName('Aref_no').AsString:=frefNo;
   WarehouseDataManager.spStockReserved.ParamByName('Aref_date').AsDateTime:=frefDate;
   WarehouseDataManager.spStockReserved.ParamByName('ADOC_NO').AsString:=fdocNo;
   WarehouseDataManager.spStockReserved.ParamByName('ADOC_date').AsDateTime:=fdocDate;
   WarehouseDataManager.spStockReserved.ParamByName('AUSER_ID').AsString:=fuserid;
   WarehouseDataManager.spStockReserved.ParamByName('AQTY').AsFloat:=fqty;
   WarehouseDataManager.spStockReserved.ParamByName('AMODE').AsString:=fmode;
   WarehouseDataManager.spStockReserved.ExecProc;
   WarehouseDataManager.IBTransaction.CommitRetaining;
except
 on e:Exception do
 MessageDlg('Could not update stock reserved'+e.Message,mtWarning,[mbCancel],0);
 end;
end;
{****************TStockServedManager*******}
procedure TWarehouseDataManager.DataModuleCreate(Sender: TObject);
begin
    inherited;
    // SystemConfig := TiniFile.Create('.\conf\system.ini');
     SystemConfigure := TSystemConfig.create('.\conf\system.ini');
     databaseName := SystemConfigure.databaseName;
     databaseHost := SystemConfigure.databaseHost;
     databaseUrl:= databaseHost+':'+databaseName;
     if (createDataBaseConnection=true) then
     begin
     fsuccess :=true;
     end
     else
     begin
        MessageDlg('Could not create connection to '+databaseUrl,mtWarning,[mbOK],0);

     end ;
    setLogonUser('sysMrp2');
    DefaultTransactionType:=SystemConfigure.DefaultTransactionType;
    DefaultTransactoinDescription:=SystemConfigure.DefaultTransactoinDescription;
   // SystemConfig.Free;
    setDisplayFormat;

end;

function TWarehouseDataManager.loginValid(user,pwd :String):boolean;
begin
  try

    tbUser.Open;
    if (tbUser.Locate('USER_ID',user,[loCaseInsensitive, loPartialKey])) then
    begin
      if (tbUser.fieldByName('current_password').AsString=pwd) then
      begin
        userObject := TUser.create(user,tbUser.fieldByName('user_name').AsString);
        setLogonUser(user);
        floginOK :=true;
        loginValid:=true;
      end
      else loginValid:=false;

   end ;


  finally
   tbUser.Close;
  end;

end;
{****** Post material request ***}
procedure TWarehouseDataManager.postMaterialRequest(acctcd:String; docNo:String;docDate:TDateTime;user:String;module:String;mode:String);
begin
  materialPostManager := TmaterialPostManager.create(acctcd,docNo,docDate,user,module,mode);
  materialPostManager.execute;
end;
function TWarehouseDataManager.IsIssuedQuantityIsQualified(stockCode,lotNo,refNo:String;refDate:TDateTime;issueQty:Double):boolean;

begin
 qualifyItem :=  TStockQualifyItem.create(stockCode,lotNo,refNo,refDate,issueQty);

 result:=  qualifyItem.isqualify;
end;
procedure TWarehouseDataManager.setLogonUser(user:String);
begin
  logonUser:=user;
end;


procedure TWarehouseDataManager.stockReserveUpdate(stockCode,lotNo:String;purchaseDate:TDateTime;refNo:String;refDate:TDateTime;docNo:String;docDate:TDateTime;userID:String;qty:Double;mode:String);
begin
   stockReserveManager:=TStockReservedManager.create(stockCode,lotNo,purchaseDate,refNo,refDate,docNo,docDate,userid,qty,mode);
   stockReserveManager.execute;
end;



 {check if there is no record in production request detail then
   auto insert data base on pl_rawmat_sheet_hd and dt
   @see also
  }
function TWarehouseDataManager.autoInsertRequestDetailRecord:boolean;
begin
  result:=(tbMaterialRequestDT.RecordCount=0)   ;

end;
procedure TWarehouseDataManager.insertMaterialRequestDetail(docNo:String;docDate:TDateTime;planDoc:String;meltNo:String);

begin
   // IBStoreProcedure.StoredProcedureNames :='X_INS_PL_REQ_DT';
    try
      spRequestDetailInsert.ParamByName('ADOC_NO').AsString:=docNo;
      spRequestDetailInsert.ParamByName('ADOC_DATE').AsDateTime:=docDate;
      spRequestDetailInsert.ParamByName('APLAN_DOC').AsString:=planDOc;
      spRequestDetailInsert.ParamByName('AMELT_NO').AsString:=meltNo;
      spRequestDetailInsert.ExecProc;
      commit;
    except
     on e:Exception do
       MessageDlg('Could not insert detail value'+e.Message,mtError,[mbCancel],0);
     end;


end;


procedure TWarehouseDataManager.tbMaterialRequestHDAfterPost(DataSet: TDataSet);
begin
  IBTransaction.CommitRetaining;
  if (autoInsertRequestDetailRecord) then
  begin
    if MessageDlg('System will automatically insert production request detail.'+#13+
    'Please confirm?',mtConfirmation,[mbYes, mbNo], 0) =  mrYes then
    begin
    try
      insertMaterialRequestDetail(dataSet.FieldByName('DOC_NO').AsString,
                                dataSet.FieldByName('DOC_DATE').AsDateTime,
                                dataSet.FieldByName('PLAN_DOC').AsString,
                                dataSet.FieldByName('MELT_NO').AsString);
    finally
      tbMaterialRequestDT.Close;
      tbMaterialRequestDT.active:=true;
      IBTransaction.CommitRetaining;
    end;
   end;
  end
 // ShowMessage('Commited changes');
end;

function    TWarehouseDataManager.createDataBaseConnection:boolean;
begin
  IBDatabase.Connected := false;
  IBDatabase.DatabaseName :=databaseUrl;
  IBDatabase.SQLDialect:=3;
  IBDatabase.Connected:=true;
  result:=  IBDatabase.Connected;
end;

procedure TWarehouseDataManager.tbMaterialRequestHDMELT_NOChange(
  Sender: TField);
begin
    tbMaterialRequestHD.FieldByName('ALLOY_CODE').AsString := qryUnClosedRawmaterialPlan.FieldByName('ITEM_CODE').AsString;
    tbMaterialRequestHD.FieldByName('PLAN_DOC').AsString :=  qryUnClosedRawmaterialPlan.FieldByName('PLAN_DOC').AsString;
    tbMaterialRequestHD.FieldByName('PLAN_DATE').AsDateTime :=qryUnClosedRawmaterialPlan.FieldByName('PLAN_DATE').AsDateTime;
end;

procedure TWarehouseDataManager.tbMaterialRequestHDNewRecord(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('REQ_DATE').AsDateTime:=Now;
  DataSet.FieldByName('TRX_TYPE').AsString:=DefaultTransactionType;
  DataSet.FieldByName('STATUS').AsString:='N'; //default value for non post
  DataSet.FieldByName('DESCS').AsString:=DefaultTransactoinDescription;
end;

procedure TWarehouseDataManager.tbMaterialRequestHDBeforePost(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('UPDATE_USER').AsString := logonUser;
   DataSet.FieldByName('UPDATE_DATE').AsDateTime:=now;
end;

procedure TWarehouseDataManager.qryUnClosedRawmaterialPlanAfterScroll(
  DataSet: TDataSet);
begin
 //DataSet.Refresh;
end;

procedure TWarehouseDataManager.tbMaterialRequestDTAfterOpen(
  DataSet: TDataSet);
begin
 qryStockOnhandDetail.Open;
 qryStockOnhandDetailLink.Open;
end;

procedure TWarehouseDataManager.qryStockOnhandDetailAfterScroll(
  DataSet: TDataSet);
begin
 // qryStockOnhandDetailLink.ParamByName('LOT_CD').AsString := DataSet.FieldByName('LOT_CD').AsString ;
 // qryStockOnhandDetailLink.Close;
 // qryStockOnhandDetailLink.Open;
end;

procedure TWarehouseDataManager.tbMaterialRequestDTLOT_NOChange(
  Sender: TField);

begin
  tbMaterialRequestDT.FieldByName('PURCHASE_DATE').AsDateTime:=  qryStockOnhandDetail.FieldByName('PURCHASE_DATE').AsDateTime;
  tbMaterialRequestDT.FieldByName('ITEM_CODE').AsString:=  qryStockOnhandDetail.FieldByName('STOCK_CD').AsString;
  tbMaterialRequestDT.FieldByName('GROUP_ID').AsString:=  qryStockOnhandDetail.FieldByName('GROUP_ID').AsString;
  tbMaterialRequestDT.FieldByName('UOM').AsString:=  qryStockOnhandDetail.FieldByName('UOM_CD').AsString;
  tbMaterialRequestDT.FieldByName('ACCT_CD').AsString:=  qryStockOnhandDetail.FieldByName('ACCT_CODE').AsString;

  filterStockLink(sender.AsString);

end;

procedure TWarehouseDataManager.filterStockLink(lotNo:String);
begin
    qryStockOnhandDetailLink.ParamByName('LOT_CD').AsString:=lotNo;
    qryStockOnhandDetailLink.CLOSE;
    qryStockOnhandDetailLink.Open;
end ;

procedure TWarehouseDataManager.tbMaterialRequestDTREF_NOChange(
  Sender: TField);
begin
  tbMaterialRequestDT.FieldByName('REF_DATE').AsDateTime :=  qryStockOnhandDetailLink.FieldByName('REF_DATE').AsDateTime;
  tbMaterialRequestDT.FieldByName('onhand_qty').AsFloat :=  qryStockOnhandDetailLink.FieldByName('ONHAND_QTY').AsFloat;
  tbMaterialRequestDT.FieldByName('unit_cost').AsFloat :=  qryStockOnhandDetailLink.FieldByName('unit_cost').AsFloat;
end;

procedure TWarehouseDataManager.tbMaterialRequestDTQTYChange(
  Sender: TField);
var dataSet:TDataSet;
begin
    dataSet:=tbMaterialRequestDT ;
   if not (IsIssuedQuantityIsQualified(dataSet.FieldByName('ITEM_CODE').AsString,
    dataSet.FieldByName('lot_no').AsString,
    dataSet.FieldByName('ref_no').AsString,
    dataSet.FieldByName('ref_date').AsDateTime,
    dataSet.FieldByName('qty').AsFloat) ) then
    begin
      messageDlg('Your issue qty is exceed than current onhand amount?'+#13+
      'Current onhand =['+FloatToStr(qualifyItem.onhandQty)+']'+#13+
      'Reserved Qty=['+FloatToStr(qualifyItem.reservedQty)+']',mtWarning,[mbOK],1);
      dataSet.Cancel;
    end
    else
    begin

    end;
end;
procedure TWarehouseDataManager.tbMaterialRequestDTQTYValidate(
  Sender: TField);
begin
//
end;

procedure TWarehouseDataManager.tbMaterialRequestDTAfterPost(
  DataSet: TDataSet);
begin
 if (DataSet.FieldByName('qty').AsFloat >0) then
 begin
          stockReserveUpdate(DataSet.FieldByName('ITEM_CODE').AsString,
                  DataSet.FieldByName('lot_no').AsString,
                  DataSet.FieldByName('purchase_date').AsDateTime,
                  DataSet.FieldByName('ref_no').AsString,
                  DataSet.FieldByName('ref_DATE').AsDateTime,
                  DataSet.FieldByName('doc_no').AsString,
                  DataSet.FieldByName('doc_date').AsDateTime,
                  logonUser,
                  DataSet.FieldByName('qty').AsFloat,'U') ;//UPDATE
end;
commit;
end;
procedure   TWarehouseDataManager.commit;
begin
IBTransaction.CommitRetaining;
end;
procedure TWarehouseDataManager.tbMaterialRequestDTAfterDelete(
  DataSet: TDataSet);
begin

 commit;
end;

procedure TWarehouseDataManager.tbMaterialRequestDTITEM_CODEChange(
  Sender: TField);
begin
    tbMaterialRequestDT.FieldByName('ITEM_DESCS').AsString:=  tbMaterialRequestDT.FieldByName('StockName').AsString;
end;

procedure TWarehouseDataManager.tbMaterialRequestDTBeforePost(
  DataSet: TDataSet);
begin
   DataSet.FieldByName('TOTAL_COST').AsFloat:=dataSet.FieldByName('unit_cost').AsFloat*DataSet.FieldByName('qty').AsFloat;
end;

procedure TWarehouseDataManager.tbMaterialRequestDTBeforeDelete(
  DataSet: TDataSet);
begin
if (DataSet.FieldByName('ref_no').AsString<>'GRN_NO') then
begin
    stockReserveUpdate(DataSet.FieldByName('ITEM_CODE').AsString,
          DataSet.FieldByName('lot_no').AsString,
          DataSet.FieldByName('purchase_date').AsDateTime,
          DataSet.FieldByName('ref_no').AsString,
          DataSet.FieldByName('ref_DATE').AsDateTime,
          DataSet.FieldByName('doc_no').AsString,
          DataSet.FieldByName('doc_date').AsDateTime,
          logonUser,
          DataSet.FieldByName('qty').AsFloat,'D') ;//DELETE
end;
end;

procedure TWarehouseDataManager.tbMaterialRequestDTNewRecord(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('QTY').AsFloat :=0;
  DataSet.FieldByName('total_cost').AsFloat :=0;
  DataSet.FieldByName('unit_cost').AsFloat :=0;
end;

procedure TWarehouseDataManager.tbMaterialRequestDTAfterScroll(
  DataSet: TDataSet);
begin
if (dataSet.RecordCount>0)  then
begin
  filterStockLink(dataSet.FieldByName('LOT_NO').AsString);
end;
end;

end.
