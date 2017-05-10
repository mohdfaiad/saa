unit Crypto;

interface
uses Windows,Dialogs,Win32Error,WinCrypt,SysUtils;

function CreateKeyForUser: boolean;
function CAPIEncryptFile(Source,Destination,Password: string): BOOL;
function CAPIDecryptFile(Source,Destination,Password: string): boolean;

implementation
type	ECryptoError=class(Exception);
const 	CRLF=#$0D+#$0A;
		ENCRYPT_ALGORITHM=CALG_RC4;
	   	ENCRYPT_BLOCK_SIZE=1;
{File Encryption


The ENCRYPT sample is a console application that encrypts files. Files
encrypted with this sample can be later decrypted with the DECRYPT sample.

Note that the INITUSER sample (or equivalent) must be run prior to running
these samples, to create a key container for the default user.

Usage
-----

The ENCRYPT sample is run from the command line as follows:

    encrypt <source file> <dest file> [ <password> ]

The <source file> argument specifies the filename of the plaintext file
to be encrypted, and the <dest file> argument specifies the filename of
the ciphertext file to be created. The optional <password> argument specifies
a password with which to encrypt the file.

If no password is specified, then a random session key is used to encrypt
the file. This session key is then encrypted with the key exchange public
key of the default user and stored with the encrypted file. In this case,
the corresponding key exchange private key is later used (by DECRYPT) to
decrypt the session key, which is used in turn to decrypt the file itself.

The DECRYPT sample is run from the command line as follows:

    decrypt <source file> <dest file> [ <password> ]

The <source file> argument specifies the filename of the ciphertext file
to be decrypted, and the <dest file> argument specifies the filename of
the plaintext file to be created. The optional <password> argument specifies
a password with which to decrypt the file.

If a bogus password is supplied to DECRYPT, no error is typically generated.
Of course, the file isn't decrypted properly either.

Exercises for the Reader
------------------------

1. By default, these samples use the RC4 stream cipher to perform the
   encryption and decryption operations. If the USE_BLOCK_CIPHER constant is
   defined at the top of each file, however, the RC2 block cipher is used
   instead.

2. For the sake of simplicity, these samples do not use salt values or (in the
   case of a block cipher) initialization vectors (IVs). This greatly
   diminishes their effective security. It would be a small matter to modify
   these programs such that salt values and IVs are used (see CryptSetKeyParam
   in the documentation). These values should be generated using the
   CryptGenRandom function, and need to be stored (in a non-encrypted form)
   along with the ciphertext file.

3. Another command line argument could be added, which would specify a file
   containing the public key to use when encrypting the session key. This file
   would ideally be in the form of a certificate. If this is done, then it
   becomes possible to encrypt a file such that only the owner of the
   corresponding private key would be able to decrypt the file. This is useful
   if you want to send the file to someone else. Note that this is only
   applicable in the case when a password is not specified.}

//************************** Schlüssel für Default user erzeugen
function CreateKeyForUser: boolean;
var    hProv: HCRYPTPROV;
   	hKey: HCRYPTKEY;
   	UserName: string;
const	dwUserNameLen: DWORD=100;
		ErrorText1='Schlüssel für Verschlüsselung konnte nicht erzeugt werden.';

       procedure ShowErrorCreateKey;
begin
	MessageDlg(ErrorText1+CRLF+'Meldung: '+GetErrorText(GetLastError),mtError,[mbOK],0);
end;

begin
	Result:=FALSE;
    // Attempt to acquire a handle to the default key container.
	if not CryptAcquireContext(@hProv,nil,MS_DEF_PROV,PROV_RSA_FULL,0) then begin
		// Some sort of error occured.

		// Create default key container.
		if not CryptAcquireContext(@hProv,nil,MS_DEF_PROV,PROV_RSA_FULL,CRYPT_NEWKEYSET) then
			MessageDlg('Schlüssel-Container für Verschlüsselung konnte nicht erzeugt werden.',
           mtError,[mbOK],0);
    		exit;

		// Get name of default key container.
       SetLength(UserName,Succ(dwUserNameLen));
		if not CryptGetProvParam(hProv,PP_CONTAINER,PByte(PChar(UserName)),@dwUserNameLen,0) then
    		// Error getting key container name.
    		UserName:='';
       SetLength(UserName,StrLen(PChar(UserName)));
	end;

    // Attempt to get handle to signature key.
    if not CryptGetUserKey(hProv,AT_SIGNATURE,@hKey) then begin
		if GetLastError=NTE_NO_KEY then begin
    		if not CryptGenKey(hProv,AT_SIGNATURE,0,@hKey) then begin
				ShowErrorCreateKey;
				exit;
            end
    		else CryptDestroyKey(hKey);
        end
       else begin
       	ShowErrorCreateKey;
    		exit;
       end;
    end;

    // Attempt to get handle to exchange key.
    if not CryptGetUserKey(hProv,AT_KEYEXCHANGE,@hKey) then begin
		if GetLastError=NTE_NO_KEY then begin
    		if not CryptGenKey(hProv,AT_KEYEXCHANGE,0,@hKey) then begin
				ShowErrorCreateKey;
				exit;
             end
       	else CryptDestroyKey(hKey);
        end
		else begin
       	ShowErrorCreateKey;
    		exit;
		end;
    end;

    CryptReleaseContext(hProv,0);
    Result:=TRUE;
end;

//***************************** File verschlüsseln

procedure CheckCryptoError(ReturnValue: boolean);
begin
	if not ReturnValue then raise ECryptoError.Create('');
end;

//*****************************************************************************
function CAPIEncryptFile(Source,Destination,Password: string): BOOL;
var    MessageStr: string;
		SourceFile: file;
    	DestinationFile: file;

    	hProv: HCRYPTPROV;
    	hKey: HCRYPTKEY;
    	hXchgKey: HCRYPTKEY;
    	hHash: HCRYPTHASH;

    	pbKeyBlob: PBYTE;
    	dwKeyBlobLen: DWORD;

    	pbBuffer: PBYTE;
    	dwBlockLen: DWORD;
    	dwBufferLen: DWORD;
    	dwCount: DWORD;

       SourceOpen,DestOpen: boolean;

begin
	Result:=FALSE;
   SourceOpen:=FALSE;
   pbKeyBlob:=nil;
   pbBuffer:=nil;
   DestOpen:=FALSE;
	hKey:=0;
   hXchgKey:=0;
   hHash:=0;
   hProv:=0;
   // Open source file.
   AssignFile(SourceFile,Source);
   {$I+}
   try
		try
           Reset(SourceFile,1);
           SourceOpen:=TRUE;
        // Open destination file.
           AssignFile(DestinationFile,Destination);
           Rewrite(DestinationFile,1);
           DestOpen:=TRUE;

           // Get handle to the default provider.
           CheckCryptoError(CryptAcquireContext(@hProv,nil,nil, PROV_RSA_FULL,0));

           if Length(Password)=0 then begin
               // Encrypt the file with a random session key.
               // Create a random session key.
               CheckCryptoError(CryptGenKey(hProv,ENCRYPT_ALGORITHM,CRYPT_EXPORTABLE,@hKey));

               // Get handle to key exchange public key.
               CheckCryptoError(CryptGetUserKey(hProv,AT_KEYEXCHANGE,@hXchgKey));

               // Determine size of the key blob and allocate memory.
               CheckCryptoError(CryptExportKey(hKey,hXchgKey,SIMPLEBLOB,0,nil,@dwKeyBlobLen));
               GetMem(pbKeyBlob,dwKeyBlobLen);
               if pbKeyBlob=nil then
                   raise Exception.Create('Nicht genügend Speicher vorhanden.');

               // Export session key into a simple key blob.
               CheckCryptoError(CryptExportKey(hKey,hXchgKey,SIMPLEBLOB,0,pbKeyBlob,@dwKeyBlobLen));

               // Release key exchange key handle.
               CryptDestroyKey(hXchgKey);
               hXchgKey:=0;

               // Write size of key blob to destination file.
               BlockWrite(DestinationFile,dwKeyBlobLen,SizeOf(DWORD));

               // Write key blob to destination file.
               BlockWrite(DestinationFile,pbKeyBlob,dwKeyBlobLen);
            end
           else begin
               // Encrypt the file with a session key derived from a password.

               // Create a hash object.
               CheckCryptoError(CryptCreateHash(hProv,CALG_MD5,0,0,@hHash));

               // Hash in the password data.
               CheckCryptoError(CryptHashData(hHash,PByte(PChar(Password)),Length(Password),0));


               // Derive a session key from the hash object.
               CheckCryptoError(CryptDeriveKey(hProv, ENCRYPT_ALGORITHM, hHash, 0,@hKey));

               // Destroy the hash object.
               CryptDestroyHash(hHash);
               hHash:=0;
           end;

           // Determine number of bytes to encrypt at a time. This must be a multiple
           // of ENCRYPT_BLOCK_SIZE.
           dwBlockLen:=1000-1000 mod ENCRYPT_BLOCK_SIZE;

           // Determine the block size. If a block cipher is used this must have
           // room for an extra block.
           if ENCRYPT_BLOCK_SIZE>1 then
               dwBufferLen:=dwBlockLen+ENCRYPT_BLOCK_SIZE
           else
               dwBufferLen:=dwBlockLen;

           // Allocate memory.
           GetMem(pbBuffer,dwBufferLen);
           if pbBuffer=nil then
               raise Exception.Create('Nicht genügend Speicher vorhanden.');

           // Encrypt source file and write to Source file.
           repeat
               // Read up to 'dwBlockLen' bytes from source file.
               BlockRead(SourceFile,pbBuffer^,dwBlockLen,dwCount);
                // Encrypt data
               CheckCryptoError(CryptEncrypt(hKey,0,EOF(SourceFile),0,pbBuffer,@dwCount,dwBufferLen));

               // Write data to destination file.
               BlockWrite(DestinationFile,pbBuffer^,dwCount);

           until EOF(SourceFile);
           Result:=TRUE;
    	finally
       	if SourceOpen then CloseFile(SourceFile);
       	if DestOpen then CloseFile(DestinationFile);
    		if pbKeyBlob<>nil then FreeMem(pbKeyBlob);
    		if pbBuffer<>nil then FreeMem(pbBuffer);
    		if hKey<>0 then CryptDestroyKey(hKey);
    		if hXchgKey<>0 then CryptDestroyKey(hXchgKey);
    		if hHash<>0 then CryptDestroyHash(hHash);
    		if hProv<>0 then CryptReleaseContext(hProv,0);
		end;
    except
		on E: ECryptoError do begin
           MessageStr:='Es ist ein Fehler beim Verschlüsseln aufgetreten.';
           if Length(E.Message)>0 then MessageStr:=MessageStr+CRLF+'Meldung: '+E.Message;
       	MessageDlg(MessageStr,mtError,[mbOK],0);
       end;
       on E: EInOutError do MessageDlg('Fehler bei Dateizugriff.'+CRLF+
       'Meldung: '+GetWin32ErrorText,mtError,[mbOK],0);
    end;
end;

//*******************************File entschlüsseln
function CAPIDecryptFile(Source,Destination,Password: string): boolean;
var    MessageStr: string;
		SourceFile: file;
    	DestinationFile: file;

    	hProv: HCRYPTPROV;
    	hKey: HCRYPTKEY;
    	hHash: HCRYPTHASH;

    	pbKeyBlob: PBYTE;
    	dwKeyBlobLen: DWORD;

    	pbBuffer: PBYTE;
    	dwBlockLen: DWORD;
    	dwBufferLen: DWORD;
    	dwCount: DWORD;

       SourceOpen,DestOpen: boolean;
begin
	Result:=FALSE;
   SourceOpen:=FALSE;
   pbKeyBlob:=nil;
   pbBuffer:=nil;
   DestOpen:=FALSE;
	hKey:=0;
   hHash:=0;
   hProv:=0;
   // Open source file.
   AssignFile(SourceFile,Source);
   {$I+}
   try
		try
           Reset(SourceFile,1);
           SourceOpen:=TRUE;
        // Open destination file.
           AssignFile(DestinationFile,Destination);
           Rewrite(DestinationFile,1);
           DestOpen:=TRUE;

    	// Get handle to the default provider.
           CheckCryptoError(CryptAcquireContext(@hProv,nil,nil,PROV_RSA_FULL,0));

           if Length(Password)=0 then begin
               // Decrypt the file with the saved session key.

               // Read key blob length from source file and allocate memory.
               BlockRead(SourceFile,dwKeyBlobLen,SizeOf(DWORD));
               if EOF(SourceFile) then raise ECryptoError.Create('Ungültiges Dateiformat.');
               GetMem(pbKeyBlob,dwKeyBlobLen);
               if pbKeyBlob=nil then raise Exception.Create('Nicht genügend Speicher vorhanden '+
               'oder ungültiges Format der Qelldatei.');

               // Read key blob from source file.
               BlockRead(SourceFile,pbKeyBlob^,dwKeyBlobLen);
               if EOF(SourceFile)then raise ECryptoError.Create('Ungültiges Dateiformat.');

               // Import key blob into CSP.
               CheckCryptoError(CryptImportKey(hProv, pbKeyBlob, dwKeyBlobLen, 0, 0,@hKey));
            end
           else begin
               // Decrypt the file with a session key derived from a password.

               // Create a hash object.
               CheckCryptoError(CryptCreateHash(hProv, CALG_MD5, 0, 0,@hHash));

               // Hash in the password data.
               CheckCryptoError(CryptHashData(hHash,PByte(PChar(Password)),Length(Password), 0));

               // Derive a session key from the hash object.
               CheckCryptoError(CryptDeriveKey(hProv,ENCRYPT_ALGORITHM,hHash,0,@hKey));

               // Destroy the hash object.
               CryptDestroyHash(hHash);
               hHash:=0;
           end;

           // Determine number of bytes to decrypt at a time. This must be a multiple
           // of ENCRYPT_BLOCK_SIZE.
           dwBlockLen:= 1000-1000 mod ENCRYPT_BLOCK_SIZE;
           dwBufferLen:=dwBlockLen;

           // Allocate memory.
            GetMem(pbBuffer,dwBufferLen);
            if pbBuffer=nil then raise Exception.Create('Nicht genügend Speicher vorhanden.');

            // Decrypt source file and write to destination file.
            repeat
               // Read up to 'dwBlockLen' bytes from source file.
               BlockRead(SourceFile,pbBuffer^,dwBlockLen,dwCount);
                // Decrypt data
                CheckCryptoError(CryptDecrypt(hKey,0,EOF(SourceFile),0,pbBuffer,@dwCount));

                // Write data to destination file.
               BlockWrite(DestinationFile,pbBuffer^,dwCount);
            until EOF(SourceFile);
			Result:=TRUE;
    	finally
       	if SourceOpen then CloseFile(SourceFile);
       	if DestOpen then CloseFile(DestinationFile);
    		if pbKeyBlob<>nil then FreeMem(pbKeyBlob);
    		if pbBuffer<>nil then FreeMem(pbBuffer);
    		if hKey<>0 then CryptDestroyKey(hKey);
    		if hHash<>0 then CryptDestroyHash(hHash);
    		if hProv<>0 then CryptReleaseContext(hProv,0);
		end;
    except
		on E: ECryptoError do begin
           MessageStr:='Es ist ein Fehler beim Verschlüsseln aufgetreten.';
           if Length(E.Message)>0 then MessageStr:=MessageStr+CRLF+'Meldung: '+E.Message;
       	MessageDlg(MessageStr,mtError,[mbOK],0);
       end;
       on E: EInOutError do MessageDlg('Fehler bei Dateizugriff.'+CRLF+
       'Meldung: '+GetWin32ErrorText,mtError,[mbOK],0);
    end;
end;

end.
