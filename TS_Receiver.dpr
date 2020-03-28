program TS_Receiver;

uses
  Vcl.Forms,
  TS_ReceiverMain in 'TS_ReceiverMain.pas' {frmMain},
  GSDLib_TLB in 'GSDLib_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
