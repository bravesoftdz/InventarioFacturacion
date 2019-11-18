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
// File generated on 1/17/2007 1:37:47 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Development\Ib-Projects\Lib\Contabilidad_Server\Acc_Server.tlb (1)
// LIBID: {62998E3D-D194-430A-A7C3-3246586BADEE}
// LCID: 0
// Helpfile: 
// HelpString: Accounting Data Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, StdVCL, Variants;
  

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

  LIBID_Acc_Server: TGUID = '{62998E3D-D194-430A-A7C3-3246586BADEE}';

  IID_IRemoteModule: TGUID = '{483AB5BE-1ED4-453A-A922-F18B209877CC}';
  CLASS_RemoteModule: TGUID = '{054BDB19-6F95-49A2-BFAC-987B3FF3FB5E}';
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
// GUID:      {483AB5BE-1ED4-453A-A922-F18B209877CC}
// *********************************************************************//
  IRemoteModule = interface(IDispatch)
    ['{483AB5BE-1ED4-453A-A922-F18B209877CC}']
    function ServerDate: TDateTime; safecall;
    function ServerTime: TDateTime; safecall;
    function LastTableCode(const TableName: WideString): Integer; safecall;
    procedure SetRootKey(const RootKey: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRemoteModuleDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {483AB5BE-1ED4-453A-A922-F18B209877CC}
// *********************************************************************//
  IRemoteModuleDisp = dispinterface
    ['{483AB5BE-1ED4-453A-A922-F18B209877CC}']
    function ServerDate: TDateTime; dispid 301;
    function ServerTime: TDateTime; dispid 302;
    function LastTableCode(const TableName: WideString): Integer; dispid 303;
    procedure SetRootKey(const RootKey: WideString); dispid 304;
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
