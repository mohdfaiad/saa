unit VersionInfo;

interface

uses
Windows,Messages,SysUtils,forms;

//function 
procedure GetAppVersionInfo(sAppNamePath: string);
type
  TFileVersionInfo = record
    fCompanyName,
    fFileDescription,
    fFileVersion,
    fInternalName,
    fLegalCopyRight, 
    fLegalTradeMark, 
    fOriginalFileName, 
    fProductName,
    fProductVersion, 
    fComments: string;
  end;

var
  FileVersionInfo: TFileVersionInfo;


//function QueryValue(ThisValue: string): string;  
implementation
procedure GetAppVersionInfo(sAppNamePath: string);
var VerSize: integer;

  VerBufValue: pointer;
    VerBuf: PChar;



  {$IFDEF Delphi3Below}
   VerBufLen: cardinal;
   VerHandle: integer;

  {$ELSE}
  VerHandle: cardinal;
  VerBufLen: cardinal;
  {$ENDIF}

  
function GetInfo(ThisKey: string): string;
var   VerKey: string;

begin
    Result := '';
    VerKey := '\StringFileInfo\' + IntToHex(loword(integer(VerBufValue^)), 4) +
    IntToHex(hiword(integer(VerBufValue^)), 4) + '\' + ThisKey;
    if VerQueryValue(VerBuf, PChar(VerKey), VerBufValue, VerBufLen) then
      Result := StrPas(VerBufValue);
end;

function QueryValue(ThisValue: string): string;  cdecl;
begin
    Result := '';
    if GetFileVersionInfo(PChar(sAppNamePath), VerHandle, VerSize, VerBuf) and
      VerQueryValue(VerBuf, '\VarFileInfo\Translation', VerBufValue, VerBufLen) then
      Result := GetInfo(ThisValue);
end;


begin
  if sAppNamePath = '' then
    sAppNamePath := Application.ExeName;
  VerSize := GetFileVersionInfoSize(PChar(sAppNamePath), VerHandle);
  VerBuf := AllocMem(VerSize);
  try
    FileVersionInfo.fCompanyName      := QueryValue('CompanyName');
    FileVersionInfo.fFileDescription  := QueryValue('FileDescription');
    FileVersionInfo.fFileVersion      := QueryValue('FileVersion');
    FileVersionInfo.fInternalName     := QueryValue('InternalName'); 
    FileVersionInfo.fLegalCopyRight   := QueryValue('LegalCopyRight');
    FileVersionInfo.fLegalTradeMark   := QueryValue('LegalTradeMark');
    FileVersionInfo.fOriginalFileName := QueryValue('OriginalFileName');
    FileVersionInfo.fProductName      := QueryValue('ProductName'); 
    FileVersionInfo.fProductVersion   := QueryValue('ProductVersion');
    FileVersionInfo.fComments         := QueryValue('Comments');
  finally
    FreeMem(VerBuf, VerSize);
  end;
end;


end.


