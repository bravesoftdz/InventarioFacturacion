unit PayRoll_Server_TLB;

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
// File generated on 2/3/2009 10:20:59 AM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Development\Nomina\Source\Server\PayRoll_Server.tlb (1)
// LIBID: {781A90BB-9AF6-4578-AED5-539C56084028}
// LCID: 0
// Helpfile: 
// HelpString: PayRoll Data Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\WINDOWS\system32\midas.dll)
//   (2) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
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
  PayRoll_ServerMajorVersion = 1;
  PayRoll_ServerMinorVersion = 0;

  LIBID_PayRoll_Server: TGUID = '{781A90BB-9AF6-4578-AED5-539C56084028}';

  IID_IRemoteModule: TGUID = '{7030E5F2-E8DE-4346-AD7F-DEBA46702CFF}';
  CLASS_RemoteModule: TGUID = '{36D3ECC4-D488-4FBB-8548-0CDD7B8D2C08}';
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
// GUID:      {7030E5F2-E8DE-4346-AD7F-DEBA46702CFF}
// *********************************************************************//
  IRemoteModule = interface(IAppServer)
    ['{7030E5F2-E8DE-4346-AD7F-DEBA46702CFF}']
    function ServerDate: TDateTime; safecall;
    function ServerTime: TDateTime; safecall;
    function LastTableCode(const TableName: WideString): Integer; safecall;
    procedure SetRootKey(const RootKey: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRemoteModuleDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7030E5F2-E8DE-4346-AD7F-DEBA46702CFF}
// *********************************************************************//
  IRemoteModuleDisp = dispinterface
    ['{7030E5F2-E8DE-4346-AD7F-DEBA46702CFF}']
    function ServerDate: TDateTime; dispid 301;
    function ServerTime: TDateTime; dispid 302;
    function LastTableCode(const TableName: WideString): Integer; dispid 303;
    procedure SetRootKey(const RootKey: WideString); dispid 304;
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
