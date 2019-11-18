unit Acc_Server_TLB;

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
// File generated on 6/22/2013 16:10:14 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Development\Lib\Contabilidad_Server\Acc_Server.tlb (1)
// LIBID: {5A25770C-EF5F-4776-8E94-7A37336AC799}
// LCID: 0
// Helpfile: 
// HelpString: Accounting Data Library
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
  Acc_ServerMajorVersion = 1;
  Acc_ServerMinorVersion = 0;

  LIBID_Acc_Server: TGUID = '{5A25770C-EF5F-4776-8E94-7A37336AC799}';

  IID_IRemoteModule: TGUID = '{2C6A985F-D315-4DF5-AB28-81C7E4CF7AE3}';
  CLASS_RemoteModule: TGUID = '{72BCE1D4-41DC-42A0-8A61-746E8304C220}';
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
// GUID:      {2C6A985F-D315-4DF5-AB28-81C7E4CF7AE3}
// *********************************************************************//
  IRemoteModule = interface(IAppServer)
    ['{2C6A985F-D315-4DF5-AB28-81C7E4CF7AE3}']
    function ServerDate: TDateTime; safecall;
    function ServerTime: TDateTime; safecall;
    function LastTableCode(const TableName: WideString): Integer; safecall;
    procedure SetRootKey(const RootKey: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRemoteModuleDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2C6A985F-D315-4DF5-AB28-81C7E4CF7AE3}
// *********************************************************************//
  IRemoteModuleDisp = dispinterface
    ['{2C6A985F-D315-4DF5-AB28-81C7E4CF7AE3}']
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
