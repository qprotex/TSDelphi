unit GSDLib_TLB;

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

// $Rev: 52393 $
// File generated on 3/24/2020 11:14:09 AM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\TradeStation 10.0\Program\Gsd.exe (1)
// LIBID: {3B96CB39-1E8E-43BA-BF06-22BB8B49C5C6}
// LCID: 0
// Helpfile: 
// HelpString: GSD 1.0 Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
//   Error creating palette bitmap of (TELDictionary) : Server C:\Program Files (x86)\TradeStation 10.0\Program\gsd.exe contains no icons
//   Error creating palette bitmap of (TELDictionaries) : Server C:\Program Files (x86)\TradeStation 10.0\Program\gsd.exe contains no icons
//   Error creating palette bitmap of (TGSDMessageFilter) : Server C:\Program Files (x86)\TradeStation 10.0\Program\gsd.exe contains no icons
//   WARN: Could not find file 'C:\Users\Francisco Valades\Downloads\tlibimp.sym, C:\Users\Francisco Valades\Downloads\tlibimp.sym, C:\Users\Francisco Valades\Downloads\..\bin\tlibimp.sym'
// Cmdline:
//   tlibimp.exe  -P "C:\Program Files (x86)\TradeStation 10.0\Program\Gsd.exe"
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  GSDLibMajorVersion = 1;
  GSDLibMinorVersion = 0;

  LIBID_GSDLib: TGUID = '{3B96CB39-1E8E-43BA-BF06-22BB8B49C5C6}';

  DIID__IELDictionaryEvents: TGUID = '{97A94A38-F51A-431A-B1B0-0F6039ECCF7B}';
  IID_IELDictionary: TGUID = '{0937290C-61AC-4A56-BEA2-40007BF6D043}';
  CLASS_ELDictionary: TGUID = '{62261D73-33BB-425D-9685-AD45ADF078AA}';
  IID_IELDictionaries: TGUID = '{02756E60-9FF3-444C-B05E-95B42B16BBF2}';
  CLASS_ELDictionaries: TGUID = '{A6BB47C5-B4D4-449B-8AF7-A80627236D22}';
  IID_IMessageFilter: TGUID = '{00000016-0000-0000-C000-000000000046}';
  IID_IGSDMessageFilter: TGUID = '{FF0CFCCD-AC7C-4001-AA14-1AA3E8D820FF}';
  CLASS_GSDMessageFilter: TGUID = '{094E9A00-C73B-43CD-BA2D-2C3BEAEF69AA}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _IELDictionaryEvents = dispinterface;
  IELDictionary = interface;
  IELDictionaryDisp = dispinterface;
  IELDictionaries = interface;
  IELDictionariesDisp = dispinterface;
  IMessageFilter = interface;
  IGSDMessageFilter = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ELDictionary = IELDictionary;
  ELDictionaries = IELDictionaries;
  GSDMessageFilter = IGSDMessageFilter;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PUserType1 = ^tagINTERFACEINFO; {*}

  tagINTERFACEINFO = record
    pUnk: IUnknown;
    iid: TGUID;
    wMethod: Word;
  end;


// *********************************************************************//
// DispIntf:  _IELDictionaryEvents
// Flags:     (4096) Dispatchable
// GUID:      {97A94A38-F51A-431A-B1B0-0F6039ECCF7B}
// *********************************************************************//
  _IELDictionaryEvents = dispinterface
    ['{97A94A38-F51A-431A-B1B0-0F6039ECCF7B}']
    function OnAdd(const key: WideString; const value: WideString; size: Integer): HResult; dispid 1;
    function OnRemove(const key: WideString; size: Integer): HResult; dispid 2;
    function OnChange(const key: WideString; const value: WideString; size: Integer): HResult; dispid 3;
    function OnClear: HResult; dispid 4;
  end;

// *********************************************************************//
// Interface: IELDictionary
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0937290C-61AC-4A56-BEA2-40007BF6D043}
// *********************************************************************//
  IELDictionary = interface(IDispatch)
    ['{0937290C-61AC-4A56-BEA2-40007BF6D043}']
    procedure Add(const key: WideString; const value: WideString); safecall;
    procedure Remove(const key: WideString); safecall;
    procedure GetValue(const key: WideString; var value: WideString; var pVal: Integer); safecall;
    function Get_Find(const key: WideString): Integer; safecall;
    function Get_size: Integer; safecall;
    procedure Clear; safecall;
    procedure GetValueByIndex(index: Integer; var value: WideString); safecall;
    procedure GetKeyByIndex(index: Integer; var key: WideString); safecall;
    procedure SetValue(const key: WideString; const value: WideString); safecall;
    property Find[const key: WideString]: Integer read Get_Find;
    property size: Integer read Get_size;
  end;

// *********************************************************************//
// DispIntf:  IELDictionaryDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0937290C-61AC-4A56-BEA2-40007BF6D043}
// *********************************************************************//
  IELDictionaryDisp = dispinterface
    ['{0937290C-61AC-4A56-BEA2-40007BF6D043}']
    procedure Add(const key: WideString; const value: WideString); dispid 1;
    procedure Remove(const key: WideString); dispid 2;
    procedure GetValue(const key: WideString; var value: WideString; var pVal: Integer); dispid 3;
    property Find[const key: WideString]: Integer readonly dispid 4;
    property size: Integer readonly dispid 5;
    procedure Clear; dispid 6;
    procedure GetValueByIndex(index: Integer; var value: WideString); dispid 7;
    procedure GetKeyByIndex(index: Integer; var key: WideString); dispid 8;
    procedure SetValue(const key: WideString; const value: WideString); dispid 9;
  end;

// *********************************************************************//
// Interface: IELDictionaries
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {02756E60-9FF3-444C-B05E-95B42B16BBF2}
// *********************************************************************//
  IELDictionaries = interface(IDispatch)
    ['{02756E60-9FF3-444C-B05E-95B42B16BBF2}']
    procedure GetDictionary(const name: WideString; out dictionary: IDispatch); safecall;
  end;

// *********************************************************************//
// DispIntf:  IELDictionariesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {02756E60-9FF3-444C-B05E-95B42B16BBF2}
// *********************************************************************//
  IELDictionariesDisp = dispinterface
    ['{02756E60-9FF3-444C-B05E-95B42B16BBF2}']
    procedure GetDictionary(const name: WideString; out dictionary: IDispatch); dispid 1;
  end;

// *********************************************************************//
// Interface: IMessageFilter
// Flags:     (0)
// GUID:      {00000016-0000-0000-C000-000000000046}
// *********************************************************************//
  IMessageFilter = interface(IUnknown)
    ['{00000016-0000-0000-C000-000000000046}']
    function HandleInComingCall(dwCallType: LongWord; htaskCaller: Pointer; dwTickCount: LongWord; 
                                var lpInterfaceInfo: tagINTERFACEINFO): LongWord; stdcall;
    function RetryRejectedCall(htaskCallee: Pointer; dwTickCount: LongWord; dwRejectType: LongWord): LongWord; stdcall;
    function MessagePending(htaskCallee: Pointer; dwTickCount: LongWord; dwPendingType: LongWord): LongWord; stdcall;
  end;

// *********************************************************************//
// Interface: IGSDMessageFilter
// Flags:     (0)
// GUID:      {FF0CFCCD-AC7C-4001-AA14-1AA3E8D820FF}
// *********************************************************************//
  IGSDMessageFilter = interface(IMessageFilter)
    ['{FF0CFCCD-AC7C-4001-AA14-1AA3E8D820FF}']
    function block: HResult; stdcall;
    function unblock: HResult; stdcall;
    function registerMessageFilter: HResult; stdcall;
    function unregisterMessageFilter: HResult; stdcall;
  end;

// *********************************************************************//
// The Class CoELDictionary provides a Create and CreateRemote method to          
// create instances of the default interface IELDictionary exposed by              
// the CoClass ELDictionary. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoELDictionary = class
    class function Create: IELDictionary;
    class function CreateRemote(const MachineName: string): IELDictionary;
  end;

  TELDictionaryOnAdd = procedure(ASender: TObject; const key: WideString; const value: WideString; 
                                                   size: Integer) of object;
  TELDictionaryOnRemove = procedure(ASender: TObject; const key: WideString; size: Integer) of object;
  TELDictionaryOnChange = procedure(ASender: TObject; const key: WideString; 
                                                      const value: WideString; size: Integer) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TELDictionary
// Help String      : ELDictionary Class
// Default Interface: IELDictionary
// Def. Intf. DISP? : No
// Event   Interface: _IELDictionaryEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TELDictionary = class(TOleServer)
  private
    FOnAdd: TELDictionaryOnAdd;
    FOnRemove: TELDictionaryOnRemove;
    FOnChange: TELDictionaryOnChange;
    FOnClear: TNotifyEvent;
    FIntf: IELDictionary;
    function GetDefaultInterface: IELDictionary;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Find(const key: WideString): Integer;
    function Get_size: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IELDictionary);
    procedure Disconnect; override;
    procedure Add(const key: WideString; const value: WideString);
    procedure Remove(const key: WideString);
    procedure GetValue(const key: WideString; var value: WideString; var pVal: Integer);
    procedure Clear;
    procedure GetValueByIndex(index: Integer; var value: WideString);
    procedure GetKeyByIndex(index: Integer; var key: WideString);
    procedure SetValue(const key: WideString; const value: WideString);
    property DefaultInterface: IELDictionary read GetDefaultInterface;
    property Find[const key: WideString]: Integer read Get_Find;
    property size: Integer read Get_size;
  published
    property OnAdd: TELDictionaryOnAdd read FOnAdd write FOnAdd;
    property OnRemove: TELDictionaryOnRemove read FOnRemove write FOnRemove;
    property OnChange: TELDictionaryOnChange read FOnChange write FOnChange;
    property OnClear: TNotifyEvent read FOnClear write FOnClear;
  end;

// *********************************************************************//
// The Class CoELDictionaries provides a Create and CreateRemote method to          
// create instances of the default interface IELDictionaries exposed by              
// the CoClass ELDictionaries. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoELDictionaries = class
    class function Create: IELDictionaries;
    class function CreateRemote(const MachineName: string): IELDictionaries;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TELDictionaries
// Help String      : ELDictionaries Class
// Default Interface: IELDictionaries
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TELDictionaries = class(TOleServer)
  private
    FIntf: IELDictionaries;
    function GetDefaultInterface: IELDictionaries;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IELDictionaries);
    procedure Disconnect; override;
    procedure GetDictionary(const name: WideString; out dictionary: IDispatch);
    property DefaultInterface: IELDictionaries read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoGSDMessageFilter provides a Create and CreateRemote method to          
// create instances of the default interface IGSDMessageFilter exposed by              
// the CoClass GSDMessageFilter. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGSDMessageFilter = class
    class function Create: IGSDMessageFilter;
    class function CreateRemote(const MachineName: string): IGSDMessageFilter;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TGSDMessageFilter
// Help String      : GSDMessageFilter Class
// Default Interface: IGSDMessageFilter
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TGSDMessageFilter = class(TOleServer)
  private
    FIntf: IGSDMessageFilter;
    function GetDefaultInterface: IGSDMessageFilter;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IGSDMessageFilter);
    procedure Disconnect; override;
    function HandleInComingCall(dwCallType: LongWord; htaskCaller: Pointer; dwTickCount: LongWord; 
                                var lpInterfaceInfo: tagINTERFACEINFO): LongWord;
    function RetryRejectedCall(htaskCallee: Pointer; dwTickCount: LongWord; dwRejectType: LongWord): LongWord;
    function MessagePending(htaskCallee: Pointer; dwTickCount: LongWord; dwPendingType: LongWord): LongWord;
    function block: HResult;
    function unblock: HResult;
    function registerMessageFilter: HResult;
    function unregisterMessageFilter: HResult;
    property DefaultInterface: IGSDMessageFilter read GetDefaultInterface;
  published
  end;

procedure Register;

resourcestring
  dtlServerPage = 'Servers';

  dtlOcxPage = 'ActiveX';

implementation

uses System.Win.ComObj;

class function CoELDictionary.Create: IELDictionary;
begin
  Result := CreateComObject(CLASS_ELDictionary) as IELDictionary;
end;

class function CoELDictionary.CreateRemote(const MachineName: string): IELDictionary;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ELDictionary) as IELDictionary;
end;

procedure TELDictionary.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{62261D73-33BB-425D-9685-AD45ADF078AA}';
    IntfIID:   '{0937290C-61AC-4A56-BEA2-40007BF6D043}';
    EventIID:  '{97A94A38-F51A-431A-B1B0-0F6039ECCF7B}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TELDictionary.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IELDictionary;
  end;
end;

procedure TELDictionary.ConnectTo(svrIntf: IELDictionary);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TELDictionary.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TELDictionary.GetDefaultInterface: IELDictionary;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TELDictionary.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TELDictionary.Destroy;
begin
  inherited Destroy;
end;

procedure TELDictionary.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    1: if Assigned(FOnAdd) then
         FOnAdd(Self,
                Params[0] {const WideString},
                Params[1] {const WideString},
                Params[2] {Integer});
    2: if Assigned(FOnRemove) then
         FOnRemove(Self,
                   Params[0] {const WideString},
                   Params[1] {Integer});
    3: if Assigned(FOnChange) then
         FOnChange(Self,
                   Params[0] {const WideString},
                   Params[1] {const WideString},
                   Params[2] {Integer});
    4: if Assigned(FOnClear) then
         FOnClear(Self);
  end; {case DispID}
end;

function TELDictionary.Get_Find(const key: WideString): Integer;
begin
  Result := DefaultInterface.Find[key];
end;

function TELDictionary.Get_size: Integer;
begin
  Result := DefaultInterface.size;
end;

procedure TELDictionary.Add(const key: WideString; const value: WideString);
begin
  DefaultInterface.Add(key, value);
end;

procedure TELDictionary.Remove(const key: WideString);
begin
  DefaultInterface.Remove(key);
end;

procedure TELDictionary.GetValue(const key: WideString; var value: WideString; var pVal: Integer);
begin
  DefaultInterface.GetValue(key, value, pVal);
end;

procedure TELDictionary.Clear;
begin
  DefaultInterface.Clear;
end;

procedure TELDictionary.GetValueByIndex(index: Integer; var value: WideString);
begin
  DefaultInterface.GetValueByIndex(index, value);
end;

procedure TELDictionary.GetKeyByIndex(index: Integer; var key: WideString);
begin
  DefaultInterface.GetKeyByIndex(index, key);
end;

procedure TELDictionary.SetValue(const key: WideString; const value: WideString);
begin
  DefaultInterface.SetValue(key, value);
end;

class function CoELDictionaries.Create: IELDictionaries;
begin
  Result := CreateComObject(CLASS_ELDictionaries) as IELDictionaries;
end;

class function CoELDictionaries.CreateRemote(const MachineName: string): IELDictionaries;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ELDictionaries) as IELDictionaries;
end;

procedure TELDictionaries.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A6BB47C5-B4D4-449B-8AF7-A80627236D22}';
    IntfIID:   '{02756E60-9FF3-444C-B05E-95B42B16BBF2}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TELDictionaries.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IELDictionaries;
  end;
end;

procedure TELDictionaries.ConnectTo(svrIntf: IELDictionaries);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TELDictionaries.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TELDictionaries.GetDefaultInterface: IELDictionaries;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TELDictionaries.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TELDictionaries.Destroy;
begin
  inherited Destroy;
end;

procedure TELDictionaries.GetDictionary(const name: WideString; out dictionary: IDispatch);
begin
  DefaultInterface.GetDictionary(name, dictionary);
end;

class function CoGSDMessageFilter.Create: IGSDMessageFilter;
begin
  Result := CreateComObject(CLASS_GSDMessageFilter) as IGSDMessageFilter;
end;

class function CoGSDMessageFilter.CreateRemote(const MachineName: string): IGSDMessageFilter;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GSDMessageFilter) as IGSDMessageFilter;
end;

procedure TGSDMessageFilter.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{094E9A00-C73B-43CD-BA2D-2C3BEAEF69AA}';
    IntfIID:   '{FF0CFCCD-AC7C-4001-AA14-1AA3E8D820FF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TGSDMessageFilter.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IGSDMessageFilter;
  end;
end;

procedure TGSDMessageFilter.ConnectTo(svrIntf: IGSDMessageFilter);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TGSDMessageFilter.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TGSDMessageFilter.GetDefaultInterface: IGSDMessageFilter;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TGSDMessageFilter.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TGSDMessageFilter.Destroy;
begin
  inherited Destroy;
end;

function TGSDMessageFilter.HandleInComingCall(dwCallType: LongWord; htaskCaller: Pointer; 
                                              dwTickCount: LongWord; 
                                              var lpInterfaceInfo: tagINTERFACEINFO): LongWord;
begin
  Result := DefaultInterface.HandleInComingCall(dwCallType, htaskCaller, dwTickCount, 
                                                lpInterfaceInfo);
end;

function TGSDMessageFilter.RetryRejectedCall(htaskCallee: Pointer; dwTickCount: LongWord; 
                                             dwRejectType: LongWord): LongWord;
begin
  Result := DefaultInterface.RetryRejectedCall(htaskCallee, dwTickCount, dwRejectType);
end;

function TGSDMessageFilter.MessagePending(htaskCallee: Pointer; dwTickCount: LongWord; 
                                          dwPendingType: LongWord): LongWord;
begin
  Result := DefaultInterface.MessagePending(htaskCallee, dwTickCount, dwPendingType);
end;

function TGSDMessageFilter.block: HResult;
begin
  Result := DefaultInterface.block;
end;

function TGSDMessageFilter.unblock: HResult;
begin
  Result := DefaultInterface.unblock;
end;

function TGSDMessageFilter.registerMessageFilter: HResult;
begin
  Result := DefaultInterface.registerMessageFilter;
end;

function TGSDMessageFilter.unregisterMessageFilter: HResult;
begin
  Result := DefaultInterface.unregisterMessageFilter;
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TELDictionary, TELDictionaries, TGSDMessageFilter]);
end;

end.
