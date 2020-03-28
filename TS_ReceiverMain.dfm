object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'TSDelphi'
  ClientHeight = 222
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 122
    Width = 121
    Height = 33
    Caption = 'Send'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 176
    Top = 24
    Width = 185
    Height = 177
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object txtKey: TLabeledEdit
    Left = 24
    Top = 40
    Width = 121
    Height = 21
    EditLabel.Width = 18
    EditLabel.Height = 13
    EditLabel.Caption = 'Key'
    TabOrder = 2
  end
  object txtValue: TLabeledEdit
    Left = 24
    Top = 80
    Width = 121
    Height = 21
    EditLabel.Width = 26
    EditLabel.Height = 13
    EditLabel.Caption = 'Value'
    TabOrder = 3
  end
end
