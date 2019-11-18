unit RealTimeFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls,Activex, Riss_Devices_TLB, IdGlobal,
  IdBaseComponent, IdComponent, IdUDPBase, IdUDPServer,IdSocketHandle;

const
  GLogPrefix: Integer = $77EDC45C;
  GLogLen: integer = 24;

type
  TRealTimeForm = class(TForm)
    lbl1: TLabel;
    cbbMode: TComboBox;
    lbl2: TLabel;
    edtPort: TEdit;
    btnListen: TButton;
    lvRecord: TListView;
    mmoDataLog: TMemo;
    lblLogData: TLabel;
    TheUDPSERVER: TIdUDPServer;
    procedure btnListenClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TheUDPSERVERUDPRead(Sender: TObject; AData: TBytes;
      ABinding: TIdSocketHandle);
  private
    { Private declarations }
    FUDPServer: TIdUDPServer;
    procedure UDPServerUDPRead(Sender: TObject; AData: TIdBytes;ABinding: TIdSocketHandle);
    procedure AddRecord(AIRecord: IRecordExt);
    procedure ShowDataLog(AData: array of Byte);
    function IsCorectGLog(AData: array of Byte): Boolean;
  public
    { Public declarations }
  end;

var
  RealTimeForm: TRealTimeForm;
  procedure ShowRealTimeFrm;

implementation

uses CMFrm, CommonUnt;

{$R *.dfm}

procedure ShowRealTimeFrm;
begin
  RealTimeForm := TRealTimeForm.Create(Application);
  try
    RealTimeForm.ShowModal;
  finally
    RealTimeForm.Free;
  end;
end;

procedure TRealTimeForm.btnListenClick(Sender: TObject);
begin
  try
   TheUDPSERVER.DefaultPort := StrToInt(edtPort.Text);
   TheUDPSERVER.OnUDPRead := UDPServerUDPRead;
   TheUDPSERVER.Active := True;
   btnListen.Enabled := False;
 except
   on E:Exception do
    ShowMessage(e.Message);
 end;
end;

procedure TRealTimeForm.UDPServerUDPRead(Sender: TObject; AData: TIdBytes;
  ABinding: TIdSocketHandle);
var
  i: integer;
  lReceiveData: array of Byte;
  sDIN: string;
  year,month,day,hour,minute,second: integer;
  rec: IRecordExt;
  iInt64: Int64;
  t : tStream;
begin
  //5C C4 ED 77 FE 01 00 00 02 00 00 00 00 00 00 00 8D 31 01 00 02 00 A8 93 //data sample
  //00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 //order
  try
    t := TStream.Create;
    t.WriteBuffer(AData,Length(AData));

    if t.Size <> GLogLen then
    begin
      SetLength(lReceiveData,t.Size);
      t.ReadBuffer(lReceiveData,t.Size);
      ShowDataLog(lReceiveData);
      Exit;
    end;
    SetLength(lReceiveData,GLogLen);
    t.ReadBuffer(lReceiveData[0],GLogLen);
    ShowDataLog(lReceiveData);
    if not IsCorectGLog(lReceiveData) then
      Exit;
    rec := CoRecordExt.Create;

    iInt64 := 0;
    for i := 8 to 15 do
    begin
      iInt64 := iInt64 + lReceiveData[i] shl ((i-8) * 8);
    end;
    sDIN := IntToStr(iInt64);
    year := lReceiveData[16] and $7F + 2000;
    month := ((lReceiveData[16] + lReceiveData[17] shl 8) shr 7) and $0F;
    day := (lReceiveData[17] + lReceiveData[18] shl 8) shr 3 and $1F;
    hour := (lReceiveData[21] + lReceiveData[22] shl 8) shr 7 and $1F;
    minute := (lReceiveData[22] + lReceiveData[23] shl 8) shr 4 and $3F;
    second := lReceiveData[23] shr 2 and $3F;

    rec.DIN := sDIN;
    rec.Clock := EncodeDate(year,month,day) + EncodeTime(hour,minute,second,0);
    rec.Verify := (lReceiveData[18] + lReceiveData[19] shl 8) shr 4 and $1F;
    rec.Action := lReceiveData[18] and $0F;
    rec.DN := (lReceiveData[20] + lReceiveData[21] shl 8 + lReceiveData[22] shl 16) shr 1 and $3FFF;
    AddRecord(rec);
  except
    on E: Exception do
    begin
      mmoDataLog.Lines.Add(e.Message);
    end;
  end;
end;

procedure TRealTimeForm.FormDestroy(Sender: TObject);
begin
  FUDPServer.Active := False;
  FreeAndNil(FUDPServer);
  inherited;
end;

procedure TRealTimeForm.FormCreate(Sender: TObject);
begin
  inherited;
  FUDPServer := TIdUDPServer.Create(Self);
end;

procedure TRealTimeForm.AddRecord(AIRecord: IRecordExt);
var
  lItem: TListItem;
begin
  lItem := lvRecord.Items.Add;
  lItem.Caption := IntToStr(lvRecord.Items.Count);
  lItem.SubItems.Add(IntToStr(AIRecord.DN));
  lItem.SubItems.Add(AIRecord.DIN);
  lItem.SubItems.Add('');
  lItem.SubItems.Add(GetGLogVerify(AIRecord.Verify));
  lItem.SubItems.Add(IntToStr(AIRecord.Action));
  lItem.SubItems.Add(FormatDateTime('yyyy-mm-dd hh:nn:ss', AIRecord.Clock));
end;

procedure TRealTimeForm.ShowDataLog(AData: array of Byte);
var
  i: integer;
  sData: string;                                 
begin
  sData := '';
  for i := 0 to Length(AData) - 1 do
  begin
    sData := sData + IntToHex(AData[i], 2) + ' ';
  end;
  mmoDataLog.Lines.Add(sData);
end;

procedure TRealTimeForm.TheUDPSERVERUDPRead(Sender: TObject; AData: TBytes;
  ABinding: TIdSocketHandle);
var
  i: integer;
  lReceiveData: array of Byte;
  sDIN: string;
  year,month,day,hour,minute,second: integer;
  rec: IRecordExt;
  iInt64: Int64;
  t : tStream;
begin
  //5C C4 ED 77 FE 01 00 00 02 00 00 00 00 00 00 00 8D 31 01 00 02 00 A8 93 //data sample
  //00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 //order
  try
    t := TStream.Create;
    t.WriteBuffer(AData,Length(AData));

    if t.Size <> GLogLen then
    begin
      SetLength(lReceiveData,t.Size);
      t.ReadBuffer(lReceiveData,t.Size);
      ShowDataLog(lReceiveData);
      Exit;
    end;
    SetLength(lReceiveData,GLogLen);
    t.ReadBuffer(lReceiveData[0],GLogLen);
    ShowDataLog(lReceiveData);
    if not IsCorectGLog(lReceiveData) then
      Exit;
    rec := CoRecordExt.Create;

    iInt64 := 0;
    for i := 8 to 15 do
    begin
      iInt64 := iInt64 + lReceiveData[i] shl ((i-8) * 8);
    end;
    sDIN := IntToStr(iInt64);
    year := lReceiveData[16] and $7F + 2000;
    month := ((lReceiveData[16] + lReceiveData[17] shl 8) shr 7) and $0F;
    day := (lReceiveData[17] + lReceiveData[18] shl 8) shr 3 and $1F;
    hour := (lReceiveData[21] + lReceiveData[22] shl 8) shr 7 and $1F;
    minute := (lReceiveData[22] + lReceiveData[23] shl 8) shr 4 and $3F;
    second := lReceiveData[23] shr 2 and $3F;

    rec.DIN := sDIN;
    rec.Clock := EncodeDate(year,month,day) + EncodeTime(hour,minute,second,0);
    rec.Verify := (lReceiveData[18] + lReceiveData[19] shl 8) shr 4 and $1F;
    rec.Action := lReceiveData[18] and $0F;
    rec.DN := (lReceiveData[20] + lReceiveData[21] shl 8 + lReceiveData[22] shl 16) shr 1 and $3FFF;
    AddRecord(rec);
  except
    on E: Exception do
    begin
      mmoDataLog.Lines.Add(e.Message);
    end;
  end;
end;

function TRealTimeForm.IsCorectGLog(AData: array of Byte): Boolean;
var
  prefix,sum,checksum,i: integer;
begin
  prefix := AData[0] + AData[1] shl 8 + AData[2] shl 16 + AData[3] shl 24;
  if prefix <> GLogPrefix then
  begin
    Result := False;
    Exit;
  end;
  checksum := 0;
  sum := AData[4] + AData[5] shl 8 + AData[6] shl 16 + AData[7] shl 24;
  for i := 8 to High(AData) do
  begin
    checksum := checksum + AData[i];
  end;
  if sum <> checksum then
  begin
    Result := False;
    Exit;
  end;
  Result := True;
end;

end.
