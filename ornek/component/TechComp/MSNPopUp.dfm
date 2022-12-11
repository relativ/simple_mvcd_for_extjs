object frmMSNPopUp: TfrmMSNPopUp
  Left = 490
  Top = 323
  BorderIcons = []
  BorderStyle = bsDialog
  BorderWidth = 1
  Caption = 'MSNPopUp'
  ClientHeight = 146
  ClientWidth = 215
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBorder: TPanel
    Left = 0
    Top = 0
    Width = 215
    Height = 146
    Align = alClient
    BevelOuter = bvLowered
    Color = clSkyBlue
    FullRepaint = False
    Locked = True
    TabOrder = 0
    object imgGradient: TImage
      Left = 1
      Top = 1
      Width = 213
      Height = 101
      Align = alClient
      OnMouseUp = imgGradientMouseUp
    end
    object imgIcon: TImage
      Left = 8
      Top = 8
      Width = 32
      Height = 32
      Stretch = True
      Transparent = True
      OnMouseUp = imgIconMouseUp
    end
    object lblText: TLabel
      Left = 9
      Top = 49
      Width = 3
      Height = 13
      Alignment = taCenter
      Transparent = True
      Layout = tlCenter
      WordWrap = True
      OnClick = lblTextClick
      OnMouseUp = lblTextMouseUp
      OnMouseEnter = lblTextMouseEnter
      OnMouseLeave = lblTextMouseLeave
    end
    object lblTitle: TLabel
      Left = 48
      Top = 8
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object MsgText: TLabel
      Left = 1
      Top = 102
      Width = 213
      Height = 43
      Align = alBottom
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoSize = False
      Transparent = True
      WordWrap = True
    end
  end
  object tmrExit: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = tmrExitTimer
    Left = 48
    Top = 32
  end
  object tmrScroll: TTimer
    Enabled = False
    Interval = 25
    OnTimer = tmrScrollTimer
    Left = 96
    Top = 8
  end
end
