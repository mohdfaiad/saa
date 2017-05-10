unit Win32Error;

interface
uses Windows,SysUtils;
const
	//Errorcodes von Windows
   ROR_NETWORK_ACCESS_DENIED=65;
   ROR_BAD_NET_NAME=67;
   RROR_BAD_ARGUMENTS=160;
   RROR_BAD_PATHNAME=161;
   RROR_INVALID_STARTING_CODESEG=188;
   RROR_INVALID_STACKSEG=189;
   RROR_INVALID_MODULETYPE=190;
   RROR_INVALID_EXE_SIGNATURE=191;
   RROR_BAD_EXE_FORMAT=193;
   RROR_INVALID_MINALLOCSIZE=195;
   RROR_DYNLINK_FROM_INVALID_RING=196;
   RROR_AUTODATASEG_EXCEEDS_64k=199;
   RROR_TOO_MANY_MODULES=214;
   RROR_RING2SEG_MUST_BE_MOVABLE=200;
   RROR_ENVVAR_NOT_FOUND=203;
   RROR_FILENAME_EXCED_RANGE=206;
   RROR_RING2_STACK_IN_USE=207;
   RROR_NOACCESS=998;
   ERROR_DESTROY_OBJECT_OF_OTHER_THREAD=1435;
   ERROR_COM_NOINIT=-2147221008;
   ROR_SHARING_VIOLATION=32;
	RROR_DISK_FULL=112;
	RROR_SWAPERROR=999;   

function GetErrorText(ErrorCode: DWORD): string;
function GetWin32ErrorText: string;

implementation

function GetErrorText(ErrorCode: DWORD): string;
begin
	Case ErrorCode of
   	ERROR_FILE_NOT_FOUND:	Result:='Datei nicht gefunden.';
       ERROR_PATH_NOT_FOUND:	Result:='Verzeichnis nicht gefunden.';
       ERROR_TOO_MANY_OPEN_FILES: Result:='Zu viele Dateien ge�ffnet.';
       ERROR_ACCESS_DENIED: Result:='Zugriff verweigert.';
       ERROR_INVALID_HANDLE: Result:='Ung�ltiges Handle.';
       ERROR_NOT_ENOUGH_MEMORY: Result:='Nicht genug Speicher vorhanden.';
       ERROR_INVALID_BLOCK: Result:='Ung�ltiger Block.';
		ERROR_BAD_NETPATH: Result:='Der Netzwerk-Pfad konnte nicht gefunden werden.';
       RROR_BAD_ARGUMENTS: Result:='Falsche Argument.';
      	RROR_BAD_PATHNAME: Result:='Falscher Verzeichnispfad.';
      	RROR_INVALID_STARTING_CODESEG: Result:='Ung�ltiges Start-Code-Segment.';
      	RROR_INVALID_STACKSEG: Result:='Ung�ltiges Stack-Segment';
      	RROR_INVALID_MODULETYPE: Result:='Ung�ltiger Modultyp.';
      	RROR_INVALID_EXE_SIGNATURE: Result:='Das Programm ist unter Windows NT nicht lauff�hig.';
      	RROR_BAD_EXE_FORMAT: Result:='Falsches EXE-Format.';
      	RROR_INVALID_MINALLOCSIZE: Result:='MinAllocSize ist �ng�ltig.';
	    RROR_DYNLINK_FROM_INVALID_RING: Result:='Ung�ltiger dynamischer Link.';
		RROR_AUTODATASEG_EXCEEDS_64k: Result:='Das Betriebssystem kann diese Programm nicht starten.';
		RROR_RING2SEG_MUST_BE_MOVABLE: Result:='Segment mu� verschiebbar sein.';
		RROR_ENVVAR_NOT_FOUND: Result:='Umgebungsvariable nicht gefunden.';
		RROR_FILENAME_EXCED_RANGE: Result:='Der Dateiname ist zu lang.';
		RROR_RING2_STACK_IN_USE: Result:='Der Stackbereich wird schon benutzt.';
		ERROR_BAD_COMMAND: Result:='Falsches Kommando.';
		ERROR_BAD_DEV_TYPE: Result:='Der Typ der Netzwerk-Resource ist falsch.';
		ERROR_BAD_ENVIRONMENT: Result:='Die Prozess-Umgebung ist nicht korrekt';
		ERROR_BAD_LENGTH: Result:='Die L�nge des Kommandos ist nicht korrekt.';
		ERROR_BAD_USERNAME: Result:='Der angegebene Nutzername ist ung�ltig.';
		ERROR_BUFFER_OVERFLOW: Result:='Der Dateiname ist zu lang.';
		ERROR_CAN_NOT_COMPLETE: Result:='Die Funktion kann nicht abgeschlossen werden.';
		ERROR_CANNOT_FIND_WND_CLASS: Result:='Die Fenster-Klasse wurde nicht gefunden.';
		ERROR_CLASS_ALREADY_EXISTS: Result:='Die Klasse existiert bereits.';
       ERROR_CLASS_DOES_NOT_EXIST: Result:='Die Klasse existiert nicht.';
       ERROR_DESTROY_OBJECT_OF_OTHER_THREAD: Result:='Kann das Objekt nicht freigeben,'
       +' da es durch einen andere Thread erzeugt wurde.';
       ERROR_DEV_NOT_EXIST: Result:='Die angegebene Netzwerk-Resource ist nicht mehr verf�gbar.';
       ERROR_DEVICE_IN_USE: Result:='das Ger�t kann nicht getrennt werden,'+
       ' da es noch durch einen andere Prozess benutzt wird.';
       ERROR_DIR_NOT_ROOT: Result:='Das Verzeichnis ist kein Unterverzeichnis des Root-Verzeichnisses.';
       ERROR_DIRECTORY: Result:='Der Verzeichnis-Name ist ung�ltig.';
       ERROR_DLL_INIT_FAILED: Result:='Eine DLL-Initialisierung ist fehlgeschlagen.';
       ERROR_DRIVE_LOCKED: Result:='Das Laufwerk ist durch einen anderen Prozess gesperrt worden.';
       ERROR_DUP_NAME: Result:='Der Name existiert schon im Netzwerk.';
       ERROR_EXE_MARKED_INVALID: Result:='Das Betriebssystem kann das Programm nicht starten.';
       ERROR_EXTENDED_ERROR: Result:='Ein erweiterter Fehler ist aufgetreten.';
       ERROR_FILE_CORRUPT: Result:='Die Datei oder das Verzeichis ist defekt oder unlesbar.';
       ERROR_FILE_INVALID: Result:='Der Datentr�ger wurde gewechselt, die '+
       'ge�ffnete Datei ist nicht l�nger g�ltig.';
       ERROR_INSUFFICIENT_BUFFER: Result:='Der �bergebene Datenpuffer ist zu klein.';
       ERROR_INVALID_ADDRESS: Result:='Ung�ltige Adresse.';
       ERROR_INVALID_COMPUTERNAME: Result:='Der angegebene Computer-Name ist ung�ltig.';
       ERROR_INVALID_DATA: Result:='Die Daten sind ung�ltig.';
       ERROR_INVALID_DATATYPE: Result:='Der angegebene Datentyp ist ung�ltig.';
       ERROR_INVALID_DRIVE: Result:='Das angegebene Laufwerk wurde nicht gefunden.';
		ERROR_INVALID_FLAGS: Result:='Die Flags sind ung�ltig.';
       ERROR_INVALID_FUNCTION: Result:='Ung�ltige Funktion.';
       ERROR_INVALID_NAME: Result:='Der Datei-, Verzeichnis- oder Volume-Name ist falsch angegeben.';
       ERROR_INVALID_NETNAME: Result:='Das Format des angegebenen Netzwerk-Namens ist falsch.';
       ERROR_INVALID_PARAMETER: Result:='Der Parameter ist falsch.';
       ERROR_INVALID_PASSWORD: Result:='Das angegebene Netzwerk-Pa�wort ist falsch.';
       ERROR_INVALID_PASSWORDNAME: Result:='Das Format des Pa�wortes ist falsch.';
		ERROR_INVALID_SEGMENT_NUMBER: Result:='das System hat eine falsche Segmentnummer festgestellt.';
       ERROR_NETNAME_DELETED: Result:='Der angegebene Netzwerk-Name ist nicht mehr g�ltig.';
       ERROR_NETWORK_ACCESS_DENIED: Result:='Der Zugriff auf das Netzwerk wurde verweigert.';
       ERROR_NETWORK_BUSY: Result:='Das Netzwerk ist besetzt.';
       ERROR_NO_NETWORK: Result:='Es existiert kein Netzwerk oder es wurde nicht gestartet.';
       ERROR_NOACCESS: Result:='Ubg�ltiger Zugriff auf einen Speicherbreich.';
       ERROR_NOT_CONNECTED: Result:='Die Netzwerk-Verbindung existiert nicht.';
       ERROR_NOT_DOS_DISK: Result:='Auf die Diskette kann nicht zugegriffen werden.';
       ERROR_NOT_READY: Result:='Das Laufwerk ist nicht bereit.';
       ERROR_PRIVILEGE_NOT_HELD: Result:='Sie besitzen nicht das notwendige Zugriffsrecht.';
       ERROR_PROCESS_ABORTED: Result:='Der Prozess wurde unerwartet abgebrochen.';
		STG_E_FILENOTFOUND:	Result:='OLE-Dokument  nicht gefunden.';
		OLE_E_CANT_BINDTOSOURCE: Result:='Kann keine Verbindung zum Dokument herstellen.';
		STG_E_MEDIUMFULL: Result:='Datentr�ger ist voll.';
		DV_E_TYMED:	Result:='Der Typ des Speichermediums ist �ng�ltig.';
		DV_E_LINDEX: Result:='LINDEX ist ung�ltig.';
		DV_E_FORMATETC:	Result:='Die Datenstruktur FormatEtc ist ung�ltig.';
		E_OUTOFMEMORY:	Result:='Nicht genug Speicher.';
		OLE_E_WRONGCOMPOBJ: Result:='Falsche Version der Bibliothek COMPOBJ.DLL.';
		E_INVALIDARG: Result:='Falsches Argument.';
		E_UNEXPECTED: Result:='Ein unerwarteter Fehler ist aufgetreten.';
       ERROR_COM_NOINIT: Result:='COM-Bibliothek nicht initialisiert (CoInitialize).';
		ERROR_BAD_NET_NAME: Result:='�ng�ltiger Netzwerkname.';
		ERROR_RESOURCE_DATA_NOT_FOUND: Result:='Das angegebene Modul enth�lt keine Resource-Daten';
		ERROR_RESOURCE_TYPE_NOT_FOUND: Result:='Der angegebene Resource-Typ im Modul nicht gefunden.';
       ERROR_RESOURCE_NAME_NOT_FOUND: Result:='Der angegebene Resource-Name wurde im Modul nicht gefunden.';
		ERROR_RESOURCE_LANG_NOT_FOUND: Result:='Das angegebene Sprach-ID wurde im Modul nicht gefunden.';
		ROR_SHARING_VIOLATION: Result:='Die Datei wird noch anderweitig ge�ffnet.';
		RROR_DISK_FULL: Result:='Kein ausreichender Speicherplatz auf dem Datentr�ger mehr vorhanden.';
		RROR_SWAPERROR: Result:='Fehler bei Zugriff aus die Auslagerungsdatei.';
          	else Result:=SysErrorMessage(ErrorCode);
   end;
end;

function GetWin32ErrorText: string;
begin
	Result:=GetErrorText(GetlastError);
end;

end.
 