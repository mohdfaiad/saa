unit LicenseManagerDataModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataModule, IBTable, DB, IBCustomDataSet, IBQuery,dialogutils,netUtils;

type
  TLicenseManagerDM = class(TAbstractDM)
    qryAdhoc: TIBQuery;
    tbDBVersion: TIBTable;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    fexistVersion:string;
    function getCurrentVersion:string;
    function upgradeVersion(version:string):boolean;
  public
    { Public declarations }
    function requireUpgrade(currentVersion:String):boolean;
    function existVersion:string;


  end;

var
  LicenseManagerDM: TLicenseManagerDM;

implementation
uses WareHouseDM, StrUtils;

{$R *.dfm}

procedure TLicenseManagerDM.DataModuleCreate(Sender: TObject);
begin
  setTransaction(WarehouseDataManager.IBTransaction);
  setDisplayFormat;
  initEvents;
  fexistVersion:=getCurrentVersion;

end;

function TLicenseManagerDM.getCurrentVersion:string;
  procedure handleException(e:exception);
  begin
      warning('Fail:Validating version '+e.Message);
  end;

begin
  result:='NOVERSION';
  try
   qryAdhoc.Close;
   qryAdhoc.SQL.Text :='select max(versions) from dbversions '+
                       'where lastUpdate = (select max(lastupdate) from dbversions)' ;
   qryAdhoc.Open;
   if (qryAdhoc.fields[0].AsString<>'') then
    result:=  qryAdhoc.fields[0].AsString;
  except
  on  e:exception do
        handleException(e);
  end;
end;

function TLicenseManagerDM.existVersion:string;
begin
  result:=fexistVersion;
end;
function  TLicenseManagerDM.requireUpgrade(currentVersion:string):boolean;
       function extractVersion(aver:string):string;
       var ver:string;
          pos :integer;
          found:boolean;
       begin
           pos := AnsiPos('.',aver);
           found:=true;
           ver := aver;
           while (found) do
           begin
              ver :=rightStr(ver,StrLen(PChar(ver))-pos)  ;
              if (ansipos('.',ver) =0) then found:=false;
           end;
           result:=ver;
       end;

begin
  result:=false;
  if (currentVersion<>'NOVERSION') then
  begin

     result:= strToInt(extractVersion(currentVersion)) >   strToInt(extractVersion(fexistVersion))   ;
   //  result:=  (rightStr(currentVersion,1) < (fexistVersion);
    if (result )  then
    if upgradeVersion(currentVersion) then
     begin
        info('SECCESS: version has been upgraded to '+currentVersion);
        fexistVersion :=  currentVersion;
     end;

  end

end;
function TLicenseManagerDM.upgradeVersion(version:string):boolean;
  procedure handleException(e:exception) ;
  begin
     warning('Fail:Version upgrade'+e.Message);
     
  end;
begin
  result:=false;
  try
    qryAdhoc.close;
    qryAdhoc.SQL.Text :='insert into dbversions values ('+quotedStr(version)+', CURRENT_TIMESTAMP,'+QuotedStr(getIPs.Text)+')';
    qryAdhoc.ExecSQL;
    result := (qryAdhoc.RowsAffected>0) ;
  except on e:exception do  handleException(e);
  end;
end;

end.

