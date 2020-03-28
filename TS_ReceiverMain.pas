unit TS_ReceiverMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections,
  GSDLib_TLB, Vcl.ExtCtrls;

const
  WM_STARTUP = WM_USER;


type

  TfrmMain = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    txtKey: TLabeledEdit;
    txtValue: TLabeledEdit;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    Fdictionaries: TELDictionaries;
    Fdictionary: TELDictionary;
    SavedDictionary: TDictionary<string,string>;

    procedure WMStartup(var Msg: TMessage); message WM_STARTUP;
    procedure Log(Msg: string);
    procedure DefineValue(key: string; value: string);
    procedure SubscribeToEvents;
    procedure UnSubscribeFromEvents;
    procedure DictionaryItemAdded(ASender: TObject; const key: WideString; const value: WideString;
                                                   size: Integer);
    procedure DictionaryItemChanged(ASender: TObject; const key: WideString; const value: WideString;
                                                   size: Integer);
    procedure DictionaryItemRemoved(ASender: TObject; const key: WideString; size: Integer);
    procedure DictionaryItemCleared(Sender: TObject);
    procedure doaction(key: string; initialValue: string;  action: string;  size: Integer);

  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

const
   mainDictName = 'delphi_dict';

implementation

{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  DefineValue(txtKey.Text, txtValue.Text);
end;

procedure TfrmMain.DictionaryItemAdded(ASender: TObject; const key: WideString; const value: WideString;
                                                   size: Integer);
begin
  doaction(key, value, 'add', size);
end;

procedure TfrmMain.DictionaryItemChanged(ASender: TObject; const key: WideString; const value: WideString;
                                                   size: Integer);
begin
  doaction(key, value, 'change', size);
end;

procedure TfrmMain.DictionaryItemCleared(Sender: TObject);
begin
  doaction('', '', 'cleared', 0);
end;

procedure TfrmMain.DictionaryItemRemoved(ASender: TObject; const key: WideString; size: Integer);
begin
  doaction(key, '', 'remove', size);
end;

procedure TfrmMain.doaction(key, initialValue, action: string; size: Integer);
begin
  Log(Format('action: %s', [action]));
  Log(Format('key: %s', [key]));
  Log(Format('initialValue: %s', [initialValue]));
  Log(Format('size: %d', [action]));

end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  SavedDictionary.Clear;
  SavedDictionary.Free;
  UnSubscribeFromEvents;
  Fdictionary.Free;
  Fdictionaries.Free;
end;


procedure TfrmMain.FormShow(Sender: TObject);
begin
  PostMessage(Handle, WM_STARTUP, 0, 0);
  OnShow := nil;
end;

procedure TfrmMain.Log(Msg: string);
begin
   Memo1.Lines.Add(Msg);
end;

procedure TfrmMain.DefineValue(key, value: string);
begin
  // Add or set
  Fdictionary.Add(key, value);
  //Fdictionary.SetValue(key, value);
end;

procedure TfrmMain.SubscribeToEvents;
begin
  Fdictionary.OnAdd := DictionaryItemAdded;
  Fdictionary.OnChange := DictionaryItemChanged;
  Fdictionary.OnRemove := DictionaryItemRemoved;
  Fdictionary.OnClear := DictionaryItemCleared;
end;

procedure TfrmMain.UnSubscribeFromEvents;
begin
  if Assigned(Fdictionary) then
  begin
    Fdictionary.OnAdd := nil;
    Fdictionary.OnChange := nil;
    Fdictionary.OnRemove := nil;
    Fdictionary.OnClear := nil;
  end;
end;


procedure TfrmMain.WMStartup(var Msg: TMessage);
var
  idil: IDispatch;
begin
  SavedDictionary := TDictionary<string, string>.Create;

  try
    Fdictionaries := TELDictionaries.Create(Self);
  except
    on e: Exception do
      ShowMessage('Error creating ELDictionaries: ' + e.Message);
  end;

  if Assigned(Fdictionaries) then
  begin
    Fdictionary := nil;
    try
      Fdictionaries.GetDictionary(mainDictName, idil);
      Fdictionary:= TELDictionary.Create(nil);
      Fdictionary.ConnectTo(idil as IELDictionary);
      SubscribeToEvents();
      Log('Started: ' + DateTimeToStr(Now));
    except
      on e: Exception do
        ShowMessage('Error getting ELDictionary: ' + e.Message);
    end;
  end;
end;


end.
