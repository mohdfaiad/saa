unit SystemConfig;

interface
uses
SysUtils, Classes,INIFiles,types,Registry,Windows;



type TSystemConfig = class(TObject)
  private
      Reg:TRegistry;
     SystemConfig:TIniFile;
     LastPurchaseDays:integer;
     procedure read;


  protected
  public
    databaseName:String;
    databaseHost:String;
    databaseUrl:String;
    DefaultTransactionType:String;
    DefaultTransactoinDescription:String;

    procedure write(Section:String;Ident:String;value:String);
    procedure refresh;
    function readIntRegistry(key:String):integer;
    constructor create(configFile:String);
    destructor destroy;override;


end;


const REGISTRY_KEY:String ='\SOFTWARE\SGL System II';
const DEFAULT_LAST_PURCHASE_DAYS:Integer = 365;

var
  SystemConfigure:TSystemConfig;
  

implementation

constructor TSystemConfig.create;
 begin
     SystemConfig := TiniFile.Create('.\conf\system.ini');
     reg := TRegistry.Create;
     reg.RootKey:=HKEY_LOCAL_MACHINE;

   if  reg.KeyExists(REGISTRY_KEY) then
   begin
    reg.OpenKey(REGISTRY_KEY,true);
    if (reg.ValueExists('LastPurchaseDays'))  then
      LastPurchaseDays :=reg.ReadInteger('LastPurchaseDays');
     REG.CloseKey; 
   end else
   begin
        reg.CreateKey(REGISTRY_KEY);
        reg.OpenKey(REGISTRY_KEY,true);
        reg.WriteInteger('LastPurchaseDays',DEFAULT_LAST_PURCHASE_DAYS);
        reg.CLOSEKEY;
        LastPurchaseDays:=DEFAULT_LAST_PURCHASE_DAYS;
   end;

   reg.Free;

    read;
 end;
destructor  TSystemConfig.destroy;
begin
  inherited destroy;
 SystemConfig.Free;
end;
procedure TSystemConfig.write(Section:String;Ident:String;value:String);
begin
   SystemConfig.WriteString(section,ident,value);
end;
procedure TSystemConfig.read;
begin
     databaseName := SystemConfig.ReadString('database','databaseName','saadb');
     databaseHost := SystemConfig.ReadString('database','databaseHost','localhost');
     databaseUrl:= databaseHost+':'+databaseName;
     DefaultTransactionType:=SystemConfig.ReadString('default','transactionType','RT');
     DefaultTransactoinDescription:=SystemConfig.ReadString('default','description','');


end;
function TSystemConfig.readIntRegistry(key:string):integer;
begin
     result:=0;
     reg := TRegistry.Create;
     reg.RootKey:=HKEY_LOCAL_MACHINE;
     if (reg.KeyExists(REGISTRY_KEY)) then
     begin
       reg.OpenKey(REGISTRY_KEY,false);
       if (reg.ValueExists(key))  then     // if (reg.KeyExists(key)) then
         result:=reg.ReadInteger(key);
      reg.CloseKey;
     end;
    reg.Free;
end;
procedure TSystemConfig.refresh;
begin
  read;
end;





end.
