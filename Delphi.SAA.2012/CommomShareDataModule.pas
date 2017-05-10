unit CommomShareDataModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataModule, DB, IBCustomDataSet, IBTable, IBQuery;

type
  TCommomShareDM = class(TAbstractDM)
    TransactionType: TIBTable;
    TransactionTypeTRX_TYPE: TIBStringField;
    TransactionTypeDESCRIPTION: TIBStringField;
    TransactionTypeDEFAULT_MODULE: TIBStringField;
    TransactionTypeUPDATE_USER: TIBStringField;
    TransactionTypeUPDATE_DATE: TDateTimeField;
    SysModule: TIBTable;
    SysModuleMODULE_ID: TIBStringField;
    SysModuleMODULE_DESCRIPTION: TIBStringField;
    SysModuleUPDATE_USER: TIBStringField;
    SysModuleUPDATE_DATE: TDateTimeField;
    TransactionTypeREQUIRE_REFERENCE: TStringField;
    TransactionTypeMODE: TStringField;
    tbSysMenus: TIBTable;
    tbSysMenusFORM_NAME: TIBStringField;
    tbSysMenusMENU_INDEX: TSmallintField;
    tbSysMenusMODULE_ID: TIBStringField;
    tbSysMenusMENU_ITEM_INDEX: TSmallintField;
    tbSysMenusFORM_CAPTION: TIBStringField;
    tbSysMenusENABLED: TIBStringField;
    tbSysMenusUPDATE_DATE: TDateTimeField;
    tbSysMenusUPDATE_USER: TIBStringField;
    tbSysMenusFORM_TAG: TSmallintField;
    tbSysMenusHISTORY_CAPTION: TIBStringField;
    tbSysMenusMAIN_MENU_NAME: TIBStringField;
    qryAdhoc: TIBQuery;
    tbSysRole: TIBTable;
    tbSysRoleGROUP_ID: TIBStringField;
    tbSysRoleGROUP_NAME: TIBStringField;
    tbSysRoleEDIT_FLAG: TIBStringField;
    tbSysRoleDELETE_FLAG: TIBStringField;
    tbSysRoleINSERT_FLAG: TIBStringField;
    tbSysRoleUPDATE_USER: TIBStringField;
    tbSysRoleUPDATE_DATE: TDateTimeField;
    tbSysRoleDEFAULT_MODULE_ID: TIBStringField;
    tbSysRoleADMIN_USER: TIBStringField;
    tbSysRoleEXECUTE_FLAG: TIBStringField;
    tbSysRolePOST_FLAG: TIBStringField;
    tbCompany: TIBTable;
    tbCompanyENG_NAME: TIBStringField;
    tbCompanyTHAI_NAME: TIBStringField;
    tbCompanyADDRESS1: TIBStringField;
    tbCompanyADDRESS2: TIBStringField;
    tbCompanyADDRESS3: TIBStringField;
    tbCompanyTH_ADDRESS1: TIBStringField;
    tbCompanyTH_ADDRESS2: TIBStringField;
    tbCompanyTH_ADDRESS3: TIBStringField;
    tbCompanyPOSTCODE: TIBStringField;
    tbCompanyPROVINCE: TIBStringField;
    tbCompanyTELEPHONE: TIBStringField;
    tbCompanyFAX: TIBStringField;
    tbCompanyLOGO: TBlobField;
    tbCompanyEMAIL: TIBStringField;
    tbCompanyWEBSITE: TIBStringField;
    tbCompanyTAXREGISTERED_ID: TIBStringField;
    tbCompanyBRANCH_CODE: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure TransactionTypeBeforePost(DataSet: TDataSet);
    procedure SysModuleBeforePost(DataSet: TDataSet);
    procedure TransactionTypeNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CommomShareDM: TCommomShareDM;

implementation
USES WarehouseDM;

{$R *.dfm}

procedure TCommomShareDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
 setTransaction(WarehouseDataManager.IBTransaction);
end;

procedure TCommomShareDM.TransactionTypeBeforePost(DataSet: TDataSet);
begin
  inherited;
  dataset.fieldbyname('update_user').asstring:=WarehouseDataManager.User.userid;
  dataset.FieldByName('update_date').asDateTime:=now;
end;

procedure TCommomShareDM.SysModuleBeforePost(DataSet: TDataSet);
begin
  inherited;
  dataset.fieldbyname('update_user').asstring:=WarehouseDataManager.User.userid;
  dataset.FieldByName('update_date').asDateTime:=now;
end;

procedure TCommomShareDM.TransactionTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('require_reference').AsString :='Y';

end;

end.
