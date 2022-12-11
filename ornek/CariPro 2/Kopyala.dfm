object FKopyala: TFKopyala
  Left = 306
  Top = 241
  BorderStyle = bsToolWindow
  Caption = 'Kopyalan'#305'yor...'
  ClientHeight = 63
  ClientWidth = 274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Animate1: TAnimate
    Left = 0
    Top = 0
    Width = 272
    Height = 60
    Active = False
    CommonAVI = aviCopyFile
    StopFrame = 20
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 40
    Top = 16
  end
end
