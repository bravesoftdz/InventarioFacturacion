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
// File generated on 1/24/2011 1:46:49 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Development\3t-Inventory And Sales\Source\Server\DataServer.tlb (1)
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
  IID_IrdmAbsChild: TGUID = '{80F1C15F-FA5D-4C97-B262-1EEA2CA2B029}';
  CLASS_rdmAbsChild: TGUID = '{E4E71AD9-75EF-499C-9E5F-86226E73B385}';
  IID_IInventario_RDM: TGUID = '{8F5E065A-F02E-4055-9DD7-9043A614C7FE}';
  CLASS_Inventario_RDM: TGUID = '{8B4D5D46-2378-4D61-8BF4-5CB8CDC47364}';
  IID_ICaja_RDM: TGUID = '{FCE1A41B-5A57-41D2-BBF5-7C3E926EE900}';
  CLASS_Caja_RDM: TGUID = '{CBF8398B-199A-4027-AC9A-C207351EC4B6}';
  IID_ISeguridad_RDM: TGUID = '{A9E81CA5-39FA-49A7-BE04-45E744D73B3F}';
  CLASS_Seguridad_RDM: TGUID = '{857D5D57-060B-4C3B-AD2E-A377BAF805C5}';
  IID_IMov_Inventario_RDM: TGUID = '{5C0FE1A6-BAC8-49EE-9E30-1F4416CC82CB}';
  CLASS_Mov_Inventario_RDM: TGUID = '{0964C986-16EA-4424-AF87-EA4D493162EF}';
  IID_ICtasXCobrar_RDM: TGUID = '{F1303286-B3F1-4CFD-95B2-2A567B7AA649}';
  CLASS_CtasXCobrar_RDM: TGUID = '{4CB803AE-6BDC-474F-AC8A-BF0D8C4B15A9}';
  IID_ICtasXPagar_RDM: TGUID = '{D662179B-60DF-42FE-B8E6-A6EF8CA06FAC}';
  CLASS_CtasXPagar_RDM: TGUID = '{FC994C2E-681C-4EF4-9D0A-3647C5867200}';
  IID_ILibro_Banco_RDM: TGUID = '{23B6CF06-2578-4B6D-A120-E5182298E7AD}';
  CLASS_Libro_Banco_RDM: TGUID = '{8B631307-DE87-4727-AD53-6CA8DDD396DF}';
  IID_IGenerales_RDM: TGUID = '{17F55E26-609D-4790-B9D9-212BD38B23B8}';
  CLASS_Generales_RDM: TGUID = '{1E6E0F51-E1C9-4A1B-B020-9BE6E2350BCD}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IRemoteModule = interface;
  IRemoteModuleDisp = dispinterface;
  IrdmAbsChild = interface;
  IrdmAbsChildDisp = dispinterface;
  IInventario_RDM = interface;
  IInventario_RDMDisp = dispinterface;
  ICaja_RDM = interface;
  ICaja_RDMDisp = dispinterface;
  ISeguridad_RDM = interface;
  ISeguridad_RDMDisp = dispinterface;
  IMov_Inventario_RDM = interface;
  IMov_Inventario_RDMDisp = dispinterface;
  ICtasXCobrar_RDM = interface;
  ICtasXCobrar_RDMDisp = dispinterface;
  ICtasXPagar_RDM = interface;
  ICtasXPagar_RDMDisp = dispinterface;
  ILibro_Banco_RDM = interface;
  ILibro_Banco_RDMDisp = dispinterface;
  IGenerales_RDM = interface;
  IGenerales_RDMDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  RemoteModule = IRemoteModule;
  rdmAbsChild = IrdmAbsChild;
  Inventario_RDM = IInventario_RDM;
  Caja_RDM = ICaja_RDM;
  Seguridad_RDM = ISeguridad_RDM;
  Mov_Inventario_RDM = IMov_Inventario_RDM;
  CtasXCobrar_RDM = ICtasXCobrar_RDM;
  CtasXPagar_RDM = ICtasXPagar_RDM;
  Libro_Banco_RDM = ILibro_Banco_RDM;
  Generales_RDM = IGenerales_RDM;


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
    function Get_Inventario_RDM: IrdmAbsChild; safecall;
    function Get_Caja_RDM: IrdmAbsChild; safecall;
    function Get_Seguridad_RDM: IrdmAbsChild; safecall;
    function Get_Mov_Inventario_RDM: IrdmAbsChild; safecall;
    function Get_CtasXCobrar_RDM: IrdmAbsChild; safecall;
    function Get_CtasXPagar_RDM: IrdmAbsChild; safecall;
    function Get_Libro_Banco_RDM: IrdmAbsChild; safecall;
    function Get_Generales_RDM: IrdmAbsChild; safecall;
    property Inventario_RDM: IrdmAbsChild read Get_Inventario_RDM;
    property Caja_RDM: IrdmAbsChild read Get_Caja_RDM;
    property Seguridad_RDM: IrdmAbsChild read Get_Seguridad_RDM;
    property Mov_Inventario_RDM: IrdmAbsChild read Get_Mov_Inventario_RDM;
    property CtasXCobrar_RDM: IrdmAbsChild read Get_CtasXCobrar_RDM;
    property CtasXPagar_RDM: IrdmAbsChild read Get_CtasXPagar_RDM;
    property Libro_Banco_RDM: IrdmAbsChild read Get_Libro_Banco_RDM;
    property Generales_RDM: IrdmAbsChild read Get_Generales_RDM;
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
    property Inventario_RDM: IrdmAbsChild readonly dispid 307;
    property Caja_RDM: IrdmAbsChild readonly dispid 308;
    property Seguridad_RDM: IrdmAbsChild readonly dispid 309;
    property Mov_Inventario_RDM: IrdmAbsChild readonly dispid 310;
    property CtasXCobrar_RDM: IrdmAbsChild readonly dispid 311;
    property CtasXPagar_RDM: IrdmAbsChild readonly dispid 312;
    property Libro_Banco_RDM: IrdmAbsChild readonly dispid 313;
    property Generales_RDM: IrdmAbsChild readonly dispid 314;
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
// Interface: IrdmAbsChild
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {80F1C15F-FA5D-4C97-B262-1EEA2CA2B029}
// *********************************************************************//
  IrdmAbsChild = interface(IAppServer)
    ['{80F1C15F-FA5D-4C97-B262-1EEA2CA2B029}']
    procedure Set_IB_Database(Param1: Integer); safecall;
    property IB_Database: Integer write Set_IB_Database;
  end;

// *********************************************************************//
// DispIntf:  IrdmAbsChildDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {80F1C15F-FA5D-4C97-B262-1EEA2CA2B029}
// *********************************************************************//
  IrdmAbsChildDisp = dispinterface
    ['{80F1C15F-FA5D-4C97-B262-1EEA2CA2B029}']
    property IB_Database: Integer writeonly dispid 301;
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
// Interface: IInventario_RDM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8F5E065A-F02E-4055-9DD7-9043A614C7FE}
// *********************************************************************//
  IInventario_RDM = interface(IAppServer)
    ['{8F5E065A-F02E-4055-9DD7-9043A614C7FE}']
  end;

// *********************************************************************//
// DispIntf:  IInventario_RDMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8F5E065A-F02E-4055-9DD7-9043A614C7FE}
// *********************************************************************//
  IInventario_RDMDisp = dispinterface
    ['{8F5E065A-F02E-4055-9DD7-9043A614C7FE}']
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
// Interface: ICaja_RDM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FCE1A41B-5A57-41D2-BBF5-7C3E926EE900}
// *********************************************************************//
  ICaja_RDM = interface(IAppServer)
    ['{FCE1A41B-5A57-41D2-BBF5-7C3E926EE900}']
  end;

// *********************************************************************//
// DispIntf:  ICaja_RDMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FCE1A41B-5A57-41D2-BBF5-7C3E926EE900}
// *********************************************************************//
  ICaja_RDMDisp = dispinterface
    ['{FCE1A41B-5A57-41D2-BBF5-7C3E926EE900}']
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
// Interface: ISeguridad_RDM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A9E81CA5-39FA-49A7-BE04-45E744D73B3F}
// *********************************************************************//
  ISeguridad_RDM = interface(IAppServer)
    ['{A9E81CA5-39FA-49A7-BE04-45E744D73B3F}']
  end;

// *********************************************************************//
// DispIntf:  ISeguridad_RDMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A9E81CA5-39FA-49A7-BE04-45E744D73B3F}
// *********************************************************************//
  ISeguridad_RDMDisp = dispinterface
    ['{A9E81CA5-39FA-49A7-BE04-45E744D73B3F}']
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
// Interface: IMov_Inventario_RDM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5C0FE1A6-BAC8-49EE-9E30-1F4416CC82CB}
// *********************************************************************//
  IMov_Inventario_RDM = interface(IAppServer)
    ['{5C0FE1A6-BAC8-49EE-9E30-1F4416CC82CB}']
  end;

// *********************************************************************//
// DispIntf:  IMov_Inventario_RDMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5C0FE1A6-BAC8-49EE-9E30-1F4416CC82CB}
// *********************************************************************//
  IMov_Inventario_RDMDisp = dispinterface
    ['{5C0FE1A6-BAC8-49EE-9E30-1F4416CC82CB}']
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
// Interface: ICtasXCobrar_RDM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F1303286-B3F1-4CFD-95B2-2A567B7AA649}
// *********************************************************************//
  ICtasXCobrar_RDM = interface(IAppServer)
    ['{F1303286-B3F1-4CFD-95B2-2A567B7AA649}']
  end;

// *********************************************************************//
// DispIntf:  ICtasXCobrar_RDMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F1303286-B3F1-4CFD-95B2-2A567B7AA649}
// *********************************************************************//
  ICtasXCobrar_RDMDisp = dispinterface
    ['{F1303286-B3F1-4CFD-95B2-2A567B7AA649}']
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
// Interface: ICtasXPagar_RDM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D662179B-60DF-42FE-B8E6-A6EF8CA06FAC}
// *********************************************************************//
  ICtasXPagar_RDM = interface(IAppServer)
    ['{D662179B-60DF-42FE-B8E6-A6EF8CA06FAC}']
  end;

// *********************************************************************//
// DispIntf:  ICtasXPagar_RDMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D662179B-60DF-42FE-B8E6-A6EF8CA06FAC}
// *********************************************************************//
  ICtasXPagar_RDMDisp = dispinterface
    ['{D662179B-60DF-42FE-B8E6-A6EF8CA06FAC}']
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
// Interface: ILibro_Banco_RDM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {23B6CF06-2578-4B6D-A120-E5182298E7AD}
// *********************************************************************//
  ILibro_Banco_RDM = interface(IAppServer)
    ['{23B6CF06-2578-4B6D-A120-E5182298E7AD}']
  end;

// *********************************************************************//
// DispIntf:  ILibro_Banco_RDMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {23B6CF06-2578-4B6D-A120-E5182298E7AD}
// *********************************************************************//
  ILibro_Banco_RDMDisp = dispinterface
    ['{23B6CF06-2578-4B6D-A120-E5182298E7AD}']
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
// Interface: IGenerales_RDM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17F55E26-609D-4790-B9D9-212BD38B23B8}
// *********************************************************************//
  IGenerales_RDM = interface(IAppServer)
    ['{17F55E26-609D-4790-B9D9-212BD38B23B8}']
  end;

// *********************************************************************//
// DispIntf:  IGenerales_RDMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17F55E26-609D-4790-B9D9-212BD38B23B8}
// *********************************************************************//
  IGenerales_RDMDisp = dispinterface
    ['{17F55E26-609D-4790-B9D9-212BD38B23B8}']
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

// *********************************************************************//
// The Class CordmAbsChild provides a Create and CreateRemote method to          
// create instances of the default interface IrdmAbsChild exposed by              
// the CoClass rdmAbsChild. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CordmAbsChild = class
    class function Create: IrdmAbsChild;
    class function CreateRemote(const MachineName: string): IrdmAbsChild;
  end;

// *********************************************************************//
// The Class CoInventario_RDM provides a Create and CreateRemote method to          
// create instances of the default interface IInventario_RDM exposed by              
// the CoClass Inventario_RDM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoInventario_RDM = class
    class function Create: IInventario_RDM;
    class function CreateRemote(const MachineName: string): IInventario_RDM;
  end;

// *********************************************************************//
// The Class CoCaja_RDM provides a Create and CreateRemote method to          
// create instances of the default interface ICaja_RDM exposed by              
// the CoClass Caja_RDM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCaja_RDM = class
    class function Create: ICaja_RDM;
    class function CreateRemote(const MachineName: string): ICaja_RDM;
  end;

// *********************************************************************//
// The Class CoSeguridad_RDM provides a Create and CreateRemote method to          
// create instances of the default interface ISeguridad_RDM exposed by              
// the CoClass Seguridad_RDM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSeguridad_RDM = class
    class function Create: ISeguridad_RDM;
    class function CreateRemote(const MachineName: string): ISeguridad_RDM;
  end;

// *********************************************************************//
// The Class CoMov_Inventario_RDM provides a Create and CreateRemote method to          
// create instances of the default interface IMov_Inventario_RDM exposed by              
// the CoClass Mov_Inventario_RDM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMov_Inventario_RDM = class
    class function Create: IMov_Inventario_RDM;
    class function CreateRemote(const MachineName: string): IMov_Inventario_RDM;
  end;

// *********************************************************************//
// The Class CoCtasXCobrar_RDM provides a Create and CreateRemote method to          
// create instances of the default interface ICtasXCobrar_RDM exposed by              
// the CoClass CtasXCobrar_RDM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCtasXCobrar_RDM = class
    class function Create: ICtasXCobrar_RDM;
    class function CreateRemote(const MachineName: string): ICtasXCobrar_RDM;
  end;

// *********************************************************************//
// The Class CoCtasXPagar_RDM provides a Create and CreateRemote method to          
// create instances of the default interface ICtasXPagar_RDM exposed by              
// the CoClass CtasXPagar_RDM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCtasXPagar_RDM = class
    class function Create: ICtasXPagar_RDM;
    class function CreateRemote(const MachineName: string): ICtasXPagar_RDM;
  end;

// *********************************************************************//
// The Class CoLibro_Banco_RDM provides a Create and CreateRemote method to          
// create instances of the default interface ILibro_Banco_RDM exposed by              
// the CoClass Libro_Banco_RDM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLibro_Banco_RDM = class
    class function Create: ILibro_Banco_RDM;
    class function CreateRemote(const MachineName: string): ILibro_Banco_RDM;
  end;

// *********************************************************************//
// The Class CoGenerales_RDM provides a Create and CreateRemote method to          
// create instances of the default interface IGenerales_RDM exposed by              
// the CoClass Generales_RDM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGenerales_RDM = class
    class function Create: IGenerales_RDM;
    class function CreateRemote(const MachineName: string): IGenerales_RDM;
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

class function CordmAbsChild.Create: IrdmAbsChild;
begin
  Result := CreateComObject(CLASS_rdmAbsChild) as IrdmAbsChild;
end;

class function CordmAbsChild.CreateRemote(const MachineName: string): IrdmAbsChild;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_rdmAbsChild) as IrdmAbsChild;
end;

class function CoInventario_RDM.Create: IInventario_RDM;
begin
  Result := CreateComObject(CLASS_Inventario_RDM) as IInventario_RDM;
end;

class function CoInventario_RDM.CreateRemote(const MachineName: string): IInventario_RDM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Inventario_RDM) as IInventario_RDM;
end;

class function CoCaja_RDM.Create: ICaja_RDM;
begin
  Result := CreateComObject(CLASS_Caja_RDM) as ICaja_RDM;
end;

class function CoCaja_RDM.CreateRemote(const MachineName: string): ICaja_RDM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Caja_RDM) as ICaja_RDM;
end;

class function CoSeguridad_RDM.Create: ISeguridad_RDM;
begin
  Result := CreateComObject(CLASS_Seguridad_RDM) as ISeguridad_RDM;
end;

class function CoSeguridad_RDM.CreateRemote(const MachineName: string): ISeguridad_RDM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Seguridad_RDM) as ISeguridad_RDM;
end;

class function CoMov_Inventario_RDM.Create: IMov_Inventario_RDM;
begin
  Result := CreateComObject(CLASS_Mov_Inventario_RDM) as IMov_Inventario_RDM;
end;

class function CoMov_Inventario_RDM.CreateRemote(const MachineName: string): IMov_Inventario_RDM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Mov_Inventario_RDM) as IMov_Inventario_RDM;
end;

class function CoCtasXCobrar_RDM.Create: ICtasXCobrar_RDM;
begin
  Result := CreateComObject(CLASS_CtasXCobrar_RDM) as ICtasXCobrar_RDM;
end;

class function CoCtasXCobrar_RDM.CreateRemote(const MachineName: string): ICtasXCobrar_RDM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CtasXCobrar_RDM) as ICtasXCobrar_RDM;
end;

class function CoCtasXPagar_RDM.Create: ICtasXPagar_RDM;
begin
  Result := CreateComObject(CLASS_CtasXPagar_RDM) as ICtasXPagar_RDM;
end;

class function CoCtasXPagar_RDM.CreateRemote(const MachineName: string): ICtasXPagar_RDM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CtasXPagar_RDM) as ICtasXPagar_RDM;
end;

class function CoLibro_Banco_RDM.Create: ILibro_Banco_RDM;
begin
  Result := CreateComObject(CLASS_Libro_Banco_RDM) as ILibro_Banco_RDM;
end;

class function CoLibro_Banco_RDM.CreateRemote(const MachineName: string): ILibro_Banco_RDM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Libro_Banco_RDM) as ILibro_Banco_RDM;
end;

class function CoGenerales_RDM.Create: IGenerales_RDM;
begin
  Result := CreateComObject(CLASS_Generales_RDM) as IGenerales_RDM;
end;

class function CoGenerales_RDM.CreateRemote(const MachineName: string): IGenerales_RDM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Generales_RDM) as IGenerales_RDM;
end;

end.
