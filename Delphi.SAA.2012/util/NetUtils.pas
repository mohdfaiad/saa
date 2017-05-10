unit NetUtils;

interface
uses winsock,Classes;

function getIPs: Tstrings;

implementation


function getIPs: Tstrings;
type 
  TaPInAddr = array[0..10] of PInAddr; 
  PaPInAddr = ^TaPInAddr; 
var 
  phe: PHostEnt; 
  pptr: PaPInAddr; 
  Buffer: array[0..63] of Char; 
  I: Integer; 
  GInitData: TWSAData; 
begin 
  WSAStartup($101, GInitData); 
  Result := TstringList.Create; 
  Result.Clear; 
  GetHostName(Buffer, SizeOf(Buffer)); 
  phe := GetHostByName(buffer); 
  if phe = nil then Exit; 
  pPtr := PaPInAddr(phe^.h_addr_list); 
  I    := 0; 
  while pPtr^[I] <> nil do 
  begin 
    Result.Add(inet_ntoa(pptr^[I]^)); 
    Inc(I); 
  end; 
  WSACleanup; 
end; 




end.
