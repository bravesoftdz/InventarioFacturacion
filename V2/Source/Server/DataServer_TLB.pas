unit DataServer_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 2/24/2015 3:00:29 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Development\3t-Inventory And Sales - V2\Source\Server\DataServer.tlb (1)
// LIBID: {7145D94C-1969-4233-B0A2-63B410FBF93D}
// LCID: 0
// Helpfile: 
// HelpString: DataServer Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\Windows\system32\midas.dll)
//   (2) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  DataServerMajorVersion = 1;
  DataServerMinorVersion = 0;

  LIBID_DataServer: TGUID = '{7145D94C-1969-4233-B0A2-63B410FBF93D}';

  IID_IRemoteModule: TGUID = '{4B9CEB7E-9DA4-4A7C-BB47-EF96BED8ACF0}';
  CLASS_RemoteModule: TGUID = '{FE2D2862-63F0-4E4A-9996-7B534DA8CA93}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IRemoteModule = interface;
  IRemoteModuleDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  RemoteModule = IRemoteModule;


// *********************************************************************//
// Interface: IRemoteModule
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4B9CEB7E-9DA4-4A7C-BB47-EF96BED8ACF0}
// *********************************************************************//
  IRemoteModule = interface(IAppServer)
    ['{4B9CEB7E-9DA4-4A7C-BB47-EF96BED8ACF0}']
    function ServerDate: TDateTime; safecall;
    function ServerTime: TDateTime; safecall;
    function LastTableCode(const TableName: WideString): Integer; safecall;
    function OriginalProductSQL: WideString; safecall;
    procedure ReloadLink; safecall;
    procedure LoginToDb(const DB_Name: WideString; const User_Name: WideString; 
                        const PassWord: WideString; const Terminal: WideString); safecall;
    function Validar_Codigo_Barra(const Codigo_Barra: WideString; out Codigo: WideString; 
                                  out Descripcion: WideString): Shortint; safecall;
    procedure SET_LAYS_VENCIDOS; safecall;
  end;

// *********************************************************************//
// DispIntf:  IRemoteModuleDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4B9CEB7E-9DA4-4A7C-BB47-EF96BED8ACF0}
// *********************************************************************//
  IRemoteModuleDisp = dispinterface
    ['{4B9CEB7E-9DA4-4A7C-BB47-EF96BED8ACF0}']
    function ServerDate: TDateTime; dispid 301;
    function ServerTime: TDateTime; dispid 302;
    function LastTableCode(const TableName: WideString): Integer; dispid 303;
    function OriginalProductSQL: WideString; dispid 304;
    procedure ReloadLink; dispid 305;
    procedure LoginToDb(const DB_Name: WideString; const User_Name: WideString; 
                        const PassWord: WideString; const Terminal: WideString); dispid 306;
    function Validar_Codigo_Barra(const Codigo_Barra: WideString; out Codigo: WideString; 
                                  out Descripcion: WideString): {??Shortint}OleVariant; dispid 307;
    procedure SET_LAYS_VENCIDOS; dispid 308;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoRemoteModule provides a Create and CreateRemote method to          
// create instances of the default interface IRemoteModule exposed by              
// the CoClass RemoteModule. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRemoteModule = class
    class function Create: IRemoteModule;
    class function CreateRemote(const MachineName: string): IRemoteModule;
  end;

implementation

uses ComObj;

class function CoRemoteModule.Create: IRemoteModule;
begin
  Result := CreateComObject(CLASS_RemoteModule) as IRemoteModule;
end;

class function CoRemoteModule.CreateRemote(const MachineName: string): IRemoteModule;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RemoteModule) as IRemoteModule;
end;

end.
