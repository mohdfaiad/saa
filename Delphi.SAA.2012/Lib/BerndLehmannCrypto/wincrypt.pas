  {---------------------------------------------------------
Copyright (c) 1996-97 Massimo Maria Ghisalberti
CopyRight (c) 1996-97 MAx!
CopyRight (c) 1996-97 Objects Built for you! (O.B.you!)
Internet EMail: roentgen@mbox.vol.it

translate from: wincrypt.h
date:           mm/gg/yy
version:        2beta.

note: use at own risk.
      If you use this code, please mention O.B.you!
      somewhere in your program


----------------------------------------------------------
IMPORTANT : USE ONLY IF YOU HAVE WINDOWS NT 4.X OR WINDOWS
95 OSR2 OR/AND INTERNET EXPLORER 3.X.
----------------------------------------------------------}

unit wincrypt;

interface

uses
  Windows;

const CryptDll = 'advapi32.dll';
     
{--------------------------------------------------------------------------- 

Microsoft Windows
Copyright (C) Microsoft Corporation, 1992 - 1996. 

File: wincrypt.h
Contents: Cryptographic API Prototypes and Definitions
----------------------------------------------------------------------------}


{Algorithm IDs and Flags }

{ALG_ID crackers }
{function GET_ALG_CLASS(x:integer) :integer;
function GET_ALG_TYPE(x:integer) :integer;
function GET_ALG_SID(x:integer) :integer;}

{Algorithm classes }
Const 
  ALG_CLASS_ANY          = 0;
  ALG_CLASS_SIGNATURE    = (1 shl 13);
  ALG_CLASS_MSG_ENCRYPT  = (2 shl 13);
  ALG_CLASS_DATA_ENCRYPT = (3 shl 13);
  ALG_CLASS_HASH         = (4 shl 13);
  ALG_CLASS_KEY_EXCHANGE = (5 shl 13);
{Algorithm types }
  ALG_TYPE_ANY    = 0;
  ALG_TYPE_DSS    = (1 shl 9);
  ALG_TYPE_RSA    = (2 shl 9);
  ALG_TYPE_BLOCK  = (3 shl 9);
  ALG_TYPE_STREAM = (4 shl 9);
{Generic sub-ids }
  ALG_SID_ANY = 0;
{Some RSA sub-ids }
  ALG_SID_RSA_ANY      = 0;
  ALG_SID_RSA_PKCS     = 1;
  ALG_SID_RSA_MSATWORK = 2;
  ALG_SID_RSA_ENTRUST  = 3;
  ALG_SID_RSA_PGP      = 4;
{Some DSS sub-ids}
  ALG_SID_DSS_ANY    = 0;
  ALG_SID_DSS_PKCS   = 1;
  ALG_SID_DSS_DMS    = 2;
{Block cipher sub ids DES sub_ids }
  ALG_SID_DES        = 1;
  ALG_SID_3DES       = 3;
  ALG_SID_DESX       = 4;
  ALG_SID_IDEA       = 5;
  ALG_SID_CAST       = 6;
  ALG_SID_SAFERSK64  = 7;
  ALD_SID_SAFERSK128 = 8;
{KP_MODE }
  CRYPT_MODE_CBCI    = 6;  {ANSI CBC Interleaved}
  CRYPT_MODE_CFBP    = 7;  {ANSI CFB Pipelined}
  CRYPT_MODE_OFBP    = 8;  {ANSI OFB Pipelined}
  CRYPT_MODE_CBCOFM  = 9;  {ANSI CBC + OF Masking}
  CRYPT_MODE_CBCOFMI = 10; {ANSI CBC + OFM Interleaved}
{RC2 sub-ids }
  ALG_SID_RC2        = 2;
{Stream cipher sub-ids }
  ALG_SID_RC4        = 1;
  ALG_SID_SEAL       = 2;
{Hash sub ids }
  ALG_SID_MD2        = 1;
  ALG_SID_MD4        = 2;
  ALG_SID_MD5        = 3;
  ALG_SID_SHA        = 4;
  ALG_SID_MAC        = 5;
  ALG_SID_RIPEMD     = 6;
  ALG_SID_RIPEMD160  = 7;
  ALG_SID_SSL3SHAMD5 = 8;
{Our silly example sub-id }
  ALG_SID_EXAMPLE    = 80;

{$IFNDEF ALGIDDEF}
  {$DEFINE ALGIDDEF}
Type ALG_ID = Cardinal;
{$ENDIF}

{algorithm identifier definitions }
Const 
  CALG_MD2 = (ALG_CLASS_HASH or ALG_TYPE_ANY or ALG_SID_MD2);
  CALG_MD4 = (ALG_CLASS_HASH or ALG_TYPE_ANY or ALG_SID_MD4);
  CALG_MD5 = (ALG_CLASS_HASH or ALG_TYPE_ANY or ALG_SID_MD5);
  CALG_SHA = (ALG_CLASS_HASH or ALG_TYPE_ANY or ALG_SID_SHA);
  CALG_MAC = (ALG_CLASS_HASH or ALG_TYPE_ANY or ALG_SID_MAC);
  CALG_RSA_SIGN = (ALG_CLASS_SIGNATURE or ALG_TYPE_RSA or ALG_SID_RSA_ANY);
  CALG_DSS_SIGN = (ALG_CLASS_SIGNATURE or ALG_TYPE_DSS or ALG_SID_DSS_ANY);
  CALG_RSA_KEYX = (ALG_CLASS_KEY_EXCHANGE or ALG_TYPE_RSA or ALG_SID_RSA_ANY);
  CALG_DES = (ALG_CLASS_DATA_ENCRYPT or ALG_TYPE_BLOCK or ALG_SID_DES);
  CALG_RC2 = (ALG_CLASS_DATA_ENCRYPT or ALG_TYPE_BLOCK or ALG_SID_RC2);
  CALG_RC4 = (ALG_CLASS_DATA_ENCRYPT or ALG_TYPE_STREAM or ALG_SID_RC4);
  CALG_SEAL = (ALG_CLASS_DATA_ENCRYPT or ALG_TYPE_STREAM or ALG_SID_SEAL);
  
type VTableProvStruc = record
  Version: LongInt;
  FuncVerifyImage: TFarProc;
  FuncReturnhWnd: TFarProc;
end;
  PVTableProvStruc = ^VTableProvStruc;

  
const
{dwFlags definitions for CryptAquireContext }
  CRYPT_VERIFYCONTEXT  = $F0000000;
  CRYPT_NEWKEYSET      = $8;
  CRYPT_DELETEKEYSET   = $10;
{dwFlag definitions for CryptGenKey }
  CRYPT_EXPORTABLE     = $00000001;
  CRYPT_USER_PROTECTED = $00000002;
  CRYPT_CREATE_SALT    = $00000004;
  CRYPT_UPDATE_KEY     = $00000008;
{exported key blob definitions }
  SIMPLEBLOB        = $1;
  PUBLICKEYBLOB     = $6;
  PRIVATEKEYBLOB    = $7;
  AT_KEYEXCHANGE    = 1;
  AT_SIGNATURE      = 2;
  CRYPT_USERDATA    = 1;
 {dwParam }
  KP_IV             = 1; {Initialization vector}
  KP_SALT           = 2; {Salt value}
  KP_PADDING        = 3; {Padding values}
  KP_MODE           = 4; {Mode of the cipher}
  KP_MODE_BITS      = 5; {Number of bits to feedback}
  KP_PERMISSIONS    = 6; {Key permissions DWORD}
  KP_ALGID          = 7; {Key algorithm}
  KP_BLOCKLEN       = 8; {Block size of the cipher}
{KP_PADDING }
  PKCS5_PADDING     = 1; {PKCS 5 (sec 6.2) padding method}
{KP_MODE }
  CRYPT_MODE_CBC    = 1; {Cipher block chaining}
  CRYPT_MODE_ECB    = 2; {Electronic code book}
  CRYPT_MODE_OFB    = 3; {Output feedback mode}
  CRYPT_MODE_CFB    = 4; {Cipher feedback mode}
  CRYPT_MODE_CTS    = 5; {Ciphertext stealing mode}
{KP_PERMISSIONS }
  CRYPT_ENCRYPT     = $0001; {Allow encryption}
  CRYPT_DECRYPT     = $0002; {Allow decryption}
  CRYPT_EXPORT      = $0004; {Allow key to be exported}
  CRYPT_READ        = $0008; {Allow parameters to be read}
  CRYPT_WRITE       = $0010; {Allow parameters to be set}
  CRYPT_MAC         = $0020; {Allow MACs to be used with key}
  HP_ALGID          = $0001; {Hash algorithm}
  HP_HASHVAL        = $0002; {Hash value}
  HP_HASHSIZE       = $0004; {Hash value size}
  CRYPT_FAILED      = FALSE;
  CRYPT_SUCCEED     = TRUE;

const
{CryptGetProvParam}
  PP_ENUMALGS            = 1;
  PP_ENUMCONTAINERS      = 2;
  PP_IMPTYPE             = 3;
  PP_NAME                = 4;
  PP_VERSION             = 5;
  PP_CONTAINER           = 6;
  CRYPT_FIRST            = 1;
  CRYPT_NEXT             = 2;
  CRYPT_IMPL_HARDWARE    = 1;
  CRYPT_IMPL_SOFTWARE    = 2;
  CRYPT_IMPL_MIXED       = 3;
  CRYPT_IMPL_UNKNOWN     = 4;
{CryptSetProvParam}
  PP_CLIENT_HWND         = 1;
  PROV_RSA_FULL          = 1;
  PROV_RSA_SIG           = 2;
  PROV_DSS               = 3;
  PROV_FORTEZZA          = 4;
  PROV_MS_EXCHANGE       = 5;
  PROV_SSL               = 6;
{STT defined Providers}
  PROV_STT_MER           = 7;
  PROV_STT_ACQ           = 8;
  PROV_STT_BRND          = 9;
  PROV_STT_ROOT          = 10;
  PROV_STT_ISS           = 11;
  MS_DEF_PROV_A          = 'Microsoft Base Cryptographic Provider v1.0';
  MS_DEF_PROV_W          = 'Microsoft Base Cryptographic Provider v1.0';
{$IFDEF UNICODE}
  MS_DEF_PROV            = MS_DEF_PROV_W;
{$ELSE}
  MS_DEF_PROV            = MS_DEF_PROV_A;
{$ENDIF}
  MAXUIDLEN              = 64;
  CUR_BLOB_VERSION       = 2;


type PROV_ENUMALGS = record
  aiAlgid   :ALG_ID;
  dwBitLen  :LongInt;
  dwNameLen :LongInt;
  szName    :array[0..20-1] of Char;
end ;
  PPROV_ENUMALGS = ^PROV_ENUMALGS;


type PUBLICKEYSTRUC = record
  bType    :BYTE;
  bVersion :BYTE;
  reserved :Word;
  aiKeyAlg :ALG_ID;
end;
  PPUBLICKEYSTRUC = ^PUBLICKEYSTRUC;

type RSAPUBKEY = record
  magic  :LongInt;
{ DWORD bitlen; // # of bits in modulus }
  pubexp :LongInt;
{Modulus data follows }
end;
  PRSAPUBKEY = ^RSAPUBKEY;

type 
  HCRYPTPROV  = cardinal;
  PHCRYPTPROV = ^HCRYPTPROV;
  HCRYPTKEY   = cardinal;
  PHCRYPTKEY  = ^HCRYPTKEY;
  HCRYPTHASH  = cardinal;
  PHCRYPTHASH = ^HCRYPTHASH;

function CryptAcquireContextA(phProv       :PHCRYPTPROV;
                              pszContainer :PAnsiChar; 
                              pszProvider  :PAnsiChar; 
                              dwProvType   :LongInt; 
                              dwFlags      :LongInt) :BOOL; stdcall; external CryptDll;

function CryptAcquireContext(phProv        :PHCRYPTPROV;
                              pszContainer :PAnsiChar;
                              pszProvider  :PAnsiChar; 
                              dwProvType   :LongInt; 
                              dwFlags      :LongInt) :BOOL;stdcall; external CryptDll
                              Name 'CryptAcquireContextA';
                               
function CryptAcquireContextW(phProv       :PHCRYPTPROV; 
                              pszContainer :PWideChar; 
                              pszProvider  :PWideChar;
                              dwProvType   :LongInt; 
                              dwFlags      :LongInt) :BOOL ;stdcall; external CryptDll;


function CryptReleaseContext(hProv   :HCRYPTPROV; 
                             dwFlags :LongInt) :BOOL;stdcall; external CryptDll;



function CryptGenKey(hProv   :HCRYPTPROV; 
                     Algid   :ALG_ID; 
                     dwFlags :LongInt;
                     phKey   :PHCRYPTKEY) :BOOL;stdcall ; external CryptDll;


function CryptDeriveKey(hProv     :HCRYPTPROV; 
                        Algid     :ALG_ID; 
                        hBaseData :HCRYPTHASH; 
                        dwFlags   :LongInt; 
                        phKey     :PHCRYPTKEY) :BOOL;stdcall ; external CryptDll;



function CryptDestroyKey(hKey  :HCRYPTKEY) :BOOL;stdcall ; external CryptDll;


function CryptSetKeyParam(hKey    :HCRYPTKEY; 
                          dwParam :LongInt; 
                          pbData  :PBYTE; 
                          dwFlags :LongInt) :BOOL;stdcall; external CryptDll;


function CryptGetKeyParam(hKey       :HCRYPTKEY;
                          dwParam    :LongInt;
                          pbData     :PBYTE; 
                          pdwDataLen :PLongInt; 
                          dwFlags    :LongInt) :BOOL;stdcall; external CryptDll;


function CryptSetHashParam(hHash   :HCRYPTHASH;
                           dwParam :LongInt;
                           pbData  :PBYTE;
                           dwFlags:LongInt) :BOOL;stdcall; external CryptDll;


function CryptGetHashParam(hHash      :HCRYPTHASH;
                           dwParam    :LongInt;
                           pbData     :PBYTE;
                           pdwDataLen :PLongInt;
                           dwFlags    :LongInt) :BOOL;stdcall; external CryptDll;


function CryptSetProvParam(hProv   :HCRYPTPROV;
                           dwParam :LongInt;
                           pbData  :PBYTE;
                           dwFlags :LongInt) :BOOL;stdcall; external CryptDll;


function CryptGetProvParam(hProv      :HCRYPTPROV; 
                           dwParam    :LongInt; 
                           pbData     :PBYTE; 
                           pdwDataLen :PLongInt; 
                           dwFlags    :LongInt) :BOOL;stdcall; external CryptDll;


function CryptGenRandom(hProv    :HCRYPTPROV; 
                        dwLen    :LongInt; 
                        pbBuffer :PBYTE) :BOOL;stdcall; external CryptDll;


function CryptGetUserKey(hProv     :HCRYPTPROV; 
                         dwKeySpec :LongInt; 
                         phUserKey :PHCRYPTKEY) :BOOL;stdcall; external CryptDll;


function CryptExportKey(hKey       :HCRYPTKEY;
                        hExpKey    :HCRYPTKEY; 
                        dwBlobType :LongInt; 
                        dwFlags    :LongInt; 
                        pbData     :PBYTE; 
                        pdwDataLen :PLongInt) :BOOL;stdcall; external CryptDll;


function CryptImportKey(hProv     :HCRYPTPROV;
                        pbData    :PBYTE; 
                        dwDataLen :LongInt; 
                        hPubKey   :HCRYPTKEY; 
                        dwFlags   :LongInt; 
                        phKey     :PHCRYPTKEY) :BOOL;stdcall; external CryptDll;


function CryptEncrypt(hKey       :HCRYPTKEY; 
                      hHash      :HCRYPTHASH; 
                      Final      :Bool; 
                      dwFlags    :LongInt; 
                      pbData     :PBYTE;
                      pdwDataLen :PLongInt;
                      dwBufLen   :LongInt) :BOOL;stdcall; external CryptDll;


function CryptDecrypt(hKey       :HCRYPTKEY; 
                      hHash      :HCRYPTHASH; 
                      Final      :Bool; 
                      dwFlags    :LongInt; 
                      pbData     :PBYTE;
                      pdwDataLen :PLongInt) :BOOL;stdcall; external CryptDll;


function CryptCreateHash(hProv   :HCRYPTPROV; 
                         Algid   :ALG_ID; 
                         hKey    :HCRYPTKEY; 
                         dwFlags :LongInt; 
                         phHash  :PHCRYPTHASH) :BOOL;stdcall; external CryptDll;


function CryptHashData(hHash     :HCRYPTHASH; 
                       pbData    :PBYTE;
                       dwDataLen :LongInt;
                       dwFlags   :LongInt) :BOOL;stdcall; external CryptDll;


function CryptHashSessionKey(hHash   :HCRYPTHASH; 
                             hKey    :HCRYPTKEY; 
                             dwFlags :LongInt) :BOOL;stdcall; external CryptDll;


function CryptDestroyHash(hHash :HCRYPTHASH) :BOOL;stdcall; external CryptDll;


function CryptSignHashA(hHash        :HCRYPTHASH; 
                        dwKeySpec    :LongInt; 
                        sDescription :PAnsiChar; 
                        dwFlags      :LongInt; 
                        pbSignature  :PBYTE;
                        pdwSigLen    :PLongInt) :BOOL;stdcall; external CryptDll;

                         
function CryptSignHash(hHash         :HCRYPTHASH;
                        dwKeySpec    :LongInt;
                        sDescription :PAnsiChar; 
                        dwFlags      :LongInt; 
                        pbSignature  :PBYTE; 
                        pdwSigLen    :PLongInt) :BOOL;stdcall; external CryptDll;

function CryptSignHashW(hHash        :HCRYPTHASH; 
                        dwKeySpec    :LongInt; 
                        sDescription :PWideChar;
                        dwFlags      :LongInt; 
                        pbSignature  :PBYTE; 
                        pdwSigLen    :PLongInt) :BOOL;stdcall; external CryptDll;

function CryptVerifySignatureA(hHash        :HCRYPTHASH; 
                               pbSignature  :PBYTE; 
                               dwSigLen     :LongInt; 
                               hPubKey      :HCRYPTKEY; 
                               sDescription :PAnsiChar; 
                               dwFlags      :LongInt) :BOOL;stdcall; external CryptDll;

function CryptVerifySignature(hHash         :HCRYPTHASH;
                               pbSignature  :PBYTE;
                               dwSigLen     :LongInt; 
                               hPubKey      :HCRYPTKEY; 
                               sDescription :PAnsiChar; 
                               dwFlags      :LongInt) :BOOL;stdcall; external CryptDll;


function CryptVerifySignatureW(hHash        :HCRYPTHASH; 
                               pbSignature  :PBYTE;
                               dwSigLen     :LongInt; 
                               hPubKey      :HCRYPTKEY; 
                               sDescription :PWideChar; 
                               dwFlags      :LongInt) :BOOL;stdcall; external CryptDll;


function CryptSetProviderA(pszProvName :PAnsiChar; 
                           dwProvType  :LongInt) :BOOL;stdcall; external CryptDll;

function CryptSetProvider(pszProvName :PAnsiChar; 
                           dwProvType :LongInt) :BOOL;stdcall; external CryptDll;

function CryptSetProviderW(pszProvName :PWideChar;
                           dwProvType  :LongInt) :BOOL;stdcall; external CryptDll;


implementation


end.

