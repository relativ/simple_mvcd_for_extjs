object dlgReportProps: TdlgReportProps
  Left = 213
  Top = 127
  BorderStyle = bsDialog
  Caption = 'Rapor Ayarlar'#305
  ClientHeight = 311
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TTechButton
    Left = 272
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Tamam'
    TabOrder = 0
    TabStop = True
    OnClick = Button1Click
    Cornerradius = 5
    DrawDisabledImg = False
    Default = True
    Colors.BackgroundFrom = clWhite
    Colors.BackgroundTo = 15199215
    Colors.BorderLine = clGray
    Colors.ClickedFrom = 13029334
    Colors.ClickedTo = 15463415
    Colors.FocusedFrom = 16771022
    Colors.FocusedTo = 15697005
    Colors.HighlightFrom = 13562879
    Colors.HighlightTo = 38631
    Colors.HotTrack = clRed
    Colors.Downarrow = clBlack
    Colors.GradientShift = 0
    Colors.GradientStyle = gsButterfly
    ShowAccelChar = True
    ShowFocusRect = True
    CanRepeat = False
    ShowDownArrow = False
    Lines.Strings = (
      'Tamam')
    Multiline = False
  end
  object Button2: TTechButton
    Left = 352
    Top = 280
    Width = 75
    Height = 25
    Caption = #304'ptal'
    TabOrder = 1
    TabStop = True
    Cornerradius = 5
    Cancel = True
    DrawDisabledImg = False
    ModalResult = 2
    Colors.BackgroundFrom = clWhite
    Colors.BackgroundTo = 15199215
    Colors.BorderLine = clGray
    Colors.ClickedFrom = 13029334
    Colors.ClickedTo = 15463415
    Colors.FocusedFrom = 16771022
    Colors.FocusedTo = 15697005
    Colors.HighlightFrom = 13562879
    Colors.HighlightTo = 38631
    Colors.HotTrack = clRed
    Colors.Downarrow = clBlack
    Colors.GradientShift = 0
    Colors.GradientStyle = gsButterfly
    ShowAccelChar = True
    ShowFocusRect = True
    CanRepeat = False
    ShowDownArrow = False
    Lines.Strings = (
      #304'ptal')
    Multiline = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 425
    Height = 49
    Caption = 'Ka'#287#305't'
    TabOrder = 2
    object Label1: TLabel
      Left = 110
      Top = 20
      Width = 39
      Height = 13
      Caption = 'Uzunluk'
    end
    object Label2: TLabel
      Left = 215
      Top = 20
      Width = 37
      Height = 13
      Caption = 'Geni'#351'lik'
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 16
      Width = 97
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        'Default'
        'A3'
        'A4'
        'A4 Small'
        'A5'
        'B4'
        'B5'
        #214'zel')
    end
    object Edit1: TEdit
      Left = 152
      Top = 16
      Width = 57
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
      OnKeyPress = Edit3KeyPress
    end
    object Edit2: TEdit
      Left = 256
      Top = 16
      Width = 57
      Height = 21
      TabOrder = 2
      Text = 'Edit2'
      OnKeyPress = Edit3KeyPress
    end
    object ComboBox2: TComboBox
      Left = 328
      Top = 16
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'Portait'
        'Landscape')
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 64
    Width = 425
    Height = 81
    Caption = 'Kenarlar'
    TabOrder = 3
    object Label3: TLabel
      Left = 17
      Top = 21
      Width = 15
      Height = 13
      Caption = 'Sol'
    end
    object Label4: TLabel
      Left = 13
      Top = 52
      Width = 19
      Height = 13
      Caption = 'Sa'#287
    end
    object Label5: TLabel
      Left = 120
      Top = 20
      Width = 16
      Height = 13
      Caption = #220'st'
    end
    object Label6: TLabel
      Left = 120
      Top = 52
      Width = 12
      Height = 13
      Caption = 'Alt'
    end
    object Label7: TLabel
      Left = 272
      Top = 19
      Width = 69
      Height = 13
      Caption = 'S'#252'tun Bo'#351'lu'#287'u'
    end
    object Label8: TLabel
      Left = 283
      Top = 51
      Width = 58
      Height = 13
      Caption = 'S'#252'tun Say'#305's'#305
    end
    object Edit3: TEdit
      Left = 40
      Top = 16
      Width = 57
      Height = 21
      TabOrder = 0
      Text = 'Edit3'
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 40
      Top = 48
      Width = 57
      Height = 21
      TabOrder = 1
      Text = 'Edit3'
      OnKeyPress = Edit3KeyPress
    end
    object Edit5: TEdit
      Left = 152
      Top = 16
      Width = 65
      Height = 21
      TabOrder = 2
      Text = 'Edit3'
      OnKeyPress = Edit3KeyPress
    end
    object Edit6: TEdit
      Left = 152
      Top = 48
      Width = 65
      Height = 21
      TabOrder = 3
      Text = 'Edit3'
      OnKeyPress = Edit3KeyPress
    end
    object Edit7: TEdit
      Left = 352
      Top = 16
      Width = 57
      Height = 21
      TabOrder = 4
      Text = 'Edit3'
      OnKeyPress = Edit3KeyPress
    end
    object Edit8: TEdit
      Left = 352
      Top = 48
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 5
      Text = '1'
    end
    object UpDown1: TUpDown
      Left = 393
      Top = 48
      Width = 15
      Height = 21
      Associate = Edit8
      Min = 1
      Max = 20
      Position = 1
      TabOrder = 6
      Wrap = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 152
    Width = 425
    Height = 121
    Caption = 'Di'#287'er'
    TabOrder = 4
    object Label9: TLabel
      Left = 262
      Top = 27
      Width = 36
      Height = 13
      Caption = #220'niteler'
    end
    object ComboBox3: TComboBox
      Left = 304
      Top = 24
      Width = 105
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'MM'
        'Inches'
        'Pixels'
        'Characters'
        'Native')
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 16
      Width = 185
      Height = 97
      Caption = 'Font'
      TabOrder = 1
      object Panel1: TPanel
        Left = 8
        Top = 48
        Width = 169
        Height = 41
        Caption = 'Aa Bb Cc Dd Ee'
        TabOrder = 0
      end
      object Button3: TTechButton
        Left = 8
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Font Ayarla'
        TabOrder = 1
        TabStop = True
        OnClick = Button3Click
        Cornerradius = 5
        DrawDisabledImg = False
        Colors.BackgroundFrom = clWhite
        Colors.BackgroundTo = 15199215
        Colors.BorderLine = clGray
        Colors.ClickedFrom = 13029334
        Colors.ClickedTo = 15463415
        Colors.FocusedFrom = 16771022
        Colors.FocusedTo = 15697005
        Colors.HighlightFrom = 13562879
        Colors.HighlightTo = 38631
        Colors.HotTrack = clRed
        Colors.Downarrow = clBlack
        Colors.GradientShift = 0
        Colors.GradientStyle = gsButterfly
        ShowAccelChar = True
        ShowFocusRect = True
        CanRepeat = False
        ShowDownArrow = False
        Lines.Strings = (
          'Font Ayarla')
        Multiline = False
      end
    end
    object CheckBox1: TTechCheckBox
      Left = 264
      Top = 64
      Width = 145
      Height = 17
      Caption = #304'lk sayfan'#305'n ba'#351' taraf'#305
      TabOrder = 2
      TabStop = True
      Colors.BackgroundFrom = clWhite
      Colors.BackgroundTo = clSilver
      Colors.BorderLine = clGray
      Colors.ClickedFrom = clGray
      Colors.ClickedTo = clWhite
      Colors.FocusedFrom = 16771022
      Colors.FocusedTo = 15697005
      Colors.HighlightFrom = 13562879
      Colors.HighlightTo = 38631
      Colors.HotTrack = clRed
      Colors.Bounds = clGray
      Colors.CheckSymbol = clNavy
      Colors.GradientShift = 0
      Colors.GradientStyle = gsLinearH
      Transparent = False
    end
    object CheckBox2: TTechCheckBox
      Left = 264
      Top = 88
      Width = 145
      Height = 17
      Caption = 'Son sayfan'#305'n alt taraf'#305
      TabOrder = 3
      TabStop = True
      Colors.BackgroundFrom = clWhite
      Colors.BackgroundTo = clSilver
      Colors.BorderLine = clGray
      Colors.ClickedFrom = clGray
      Colors.ClickedTo = clWhite
      Colors.FocusedFrom = 16771022
      Colors.FocusedTo = 15697005
      Colors.HighlightFrom = 13562879
      Colors.HighlightTo = 38631
      Colors.HotTrack = clRed
      Colors.Bounds = clGray
      Colors.CheckSymbol = clNavy
      Colors.GradientShift = 0
      Colors.GradientStyle = gsLinearH
      Transparent = False
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 32
    Top = 272
  end
end
