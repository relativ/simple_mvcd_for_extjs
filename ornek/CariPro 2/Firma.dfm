object FFirma: TFFirma
  Left = 393
  Top = 149
  BorderStyle = bsToolWindow
  Caption = 'Firma Bilgileri'
  ClientHeight = 466
  ClientWidth = 426
  Color = clBtnFace
  Constraints.MinHeight = 436
  Constraints.MinWidth = 427
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 426
    Height = 466
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 422
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Firma Bilgileri'
      Color = 13395456
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 2
      Top = 32
      Width = 422
      Height = 396
      Align = alClient
      BevelOuter = bvNone
      Color = 7972351
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 7
        Top = 6
        Width = 407
        Height = 379
        Caption = ' Firma Bilgileri '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = GroupBox1Exit
        object Label1: TLabel
          Left = 8
          Top = 124
          Width = 62
          Height = 13
          Caption = 'Firma '#220'nvan'#305
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 42
          Top = 156
          Width = 28
          Height = 13
          Caption = 'Yetkili'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 34
          Top = 188
          Width = 36
          Height = 13
          Caption = 'Telefon'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 47
          Top = 220
          Width = 23
          Height = 13
          Caption = 'Faks'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 43
          Top = 252
          Width = 27
          Height = 13
          Caption = 'Adres'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 13
          Top = 316
          Width = 59
          Height = 13
          Caption = 'Vergi Dairesi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 31
          Top = 348
          Width = 41
          Height = 13
          Caption = 'Vergi No'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 233
          Top = 316
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'Web'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 227
          Top = 348
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'E-Mail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 61
          Top = 284
          Width = 5
          Height = 13
          Caption = #304'l'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 233
          Top = 284
          Width = 17
          Height = 13
          Caption = #304'l'#231'e'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBOnlineEdit4: TDBTechEdit
          Left = 75
          Top = 120
          Width = 310
          Height = 21
          Color = 14811135
          DataField = 'FIRMAUNVAN'
          DataSource = DMSabit.FirmaDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          RenkGiris = 16777088
          RenkCikis = 14811135
          BuyukKucuk = True
        end
        object DBOnlineEdit7: TDBTechEdit
          Left = 75
          Top = 152
          Width = 238
          Height = 21
          Color = 14811135
          DataField = 'YETKILI'
          DataSource = DMSabit.FirmaDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          RenkGiris = 16777088
          RenkCikis = 14811135
          BuyukKucuk = True
        end
        object DBOnlineEdit8: TDBTechEdit
          Left = 75
          Top = 184
          Width = 102
          Height = 21
          Color = 14811135
          DataField = 'TELEFON'
          DataSource = DMSabit.FirmaDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 9
          ParentFont = False
          TabOrder = 3
          RenkGiris = 16777088
          RenkCikis = 14811135
          BuyukKucuk = True
        end
        object DBOnlineEdit10: TDBTechEdit
          Left = 75
          Top = 216
          Width = 102
          Height = 21
          Color = 14811135
          DataField = 'FAKS'
          DataSource = DMSabit.FirmaDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 9
          ParentFont = False
          TabOrder = 6
          RenkGiris = 16777088
          RenkCikis = 14811135
          BuyukKucuk = True
        end
        object DBOnlineEdit1: TDBTechEdit
          Left = 75
          Top = 248
          Width = 312
          Height = 21
          Color = 14811135
          DataField = 'ADRES'
          DataSource = DMSabit.FirmaDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          RenkGiris = 16777088
          RenkCikis = 14811135
          BuyukKucuk = True
        end
        object DBOnlineEdit2: TDBTechEdit
          Left = 75
          Top = 312
          Width = 142
          Height = 21
          Color = 14811135
          DataField = 'VERGIDAIRE'
          DataSource = DMSabit.FirmaDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          RenkGiris = 16777088
          RenkCikis = 14811135
          BuyukKucuk = True
        end
        object DBOnlineEdit3: TDBTechEdit
          Left = 75
          Top = 344
          Width = 142
          Height = 21
          Color = 14811135
          DataField = 'VERGINO'
          DataSource = DMSabit.FirmaDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          RenkGiris = 16777088
          RenkCikis = 14811135
          BuyukKucuk = True
        end
        object DBImage1: TDBImage
          Left = 83
          Top = 16
          Width = 101
          Height = 91
          Color = 14155775
          DataField = 'LOGO'
          DataSource = DMSabit.FirmaDS
          TabOrder = 0
          OnClick = DBImage1Click
        end
        object DBOnlineEdit5: TDBTechEdit
          Left = 179
          Top = 184
          Width = 102
          Height = 21
          Color = 14811135
          DataField = 'TEL2'
          DataSource = DMSabit.FirmaDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 9
          ParentFont = False
          TabOrder = 4
          RenkGiris = 16777088
          RenkCikis = 14811135
          BuyukKucuk = True
        end
        object DBOnlineEdit6: TDBTechEdit
          Left = 283
          Top = 184
          Width = 102
          Height = 21
          Color = 14811135
          DataField = 'TEL3'
          DataSource = DMSabit.FirmaDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 9
          ParentFont = False
          TabOrder = 5
          RenkGiris = 16777088
          RenkCikis = 14811135
          BuyukKucuk = True
        end
        object DBOnlineEdit9: TDBTechEdit
          Left = 259
          Top = 312
          Width = 142
          Height = 21
          Color = 14811135
          DataField = 'WEB'
          DataSource = DMSabit.FirmaDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          RenkGiris = 16777088
          RenkCikis = 14811135
          BuyukKucuk = True
        end
        object DBOnlineEdit11: TDBTechEdit
          Left = 259
          Top = 344
          Width = 142
          Height = 21
          Color = 14811135
          DataField = 'MAIL'
          DataSource = DMSabit.FirmaDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          RenkGiris = 16777088
          RenkCikis = 14811135
          BuyukKucuk = True
        end
        object DBOnlineLookupCombo2: TDBTechLookupCombo
          Left = 74
          Top = 280
          Width = 143
          Height = 21
          Color = 14811135
          DataField = 'SEHIRKOD'
          DataSource = DMSabit.FirmaDS
          DropDownRows = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'SEHIRKOD'
          ListField = 'SEHIRADI'
          ListSource = DMSabit.ilDS
          NullValueKey = 46
          ParentFont = False
          TabOrder = 8
          RenkGiris = 16777088
          RenkCikis = 14811135
        end
        object DBOnlineLookupCombo1: TDBTechLookupCombo
          Left = 259
          Top = 280
          Width = 142
          Height = 21
          Color = 14811135
          DataField = 'ILCEKOD'
          DataSource = DMSabit.FirmaDS
          DropDownRows = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'ILCEKOD'
          ListField = 'ILCEADI'
          ListSource = DMSabit.ilceDS
          NullValueKey = 46
          ParentFont = False
          TabOrder = 9
          RenkGiris = 16777088
          RenkCikis = 14811135
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 428
      Width = 422
      Height = 36
      Align = alBottom
      BevelOuter = bvNone
      Color = 13395456
      TabOrder = 2
      object BitBtn3: TTechButton
        Left = 342
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Kapat'
        TabOrder = 0
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = BitBtn3Click
        Cornerradius = 5
        DrawDisabledImg = False
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
          BB3333BB00BBBBBBBB3333BB0BBBBBB0BB3333BBB0BBBB000B3333BBB00BB00B
          BB3333BBBB0B00BBBB3333BBBB000BBBBB3333EEEE000EEEEE3333EE0E80000E
          EE3333EEE0800EEEEE3333EEEE000EEEEE3333EEEEE00EEEEE3333EEEEEE00EE
          EE3333EEEEEE00EEEE3333EEEEEEEEEEEE3333EEEEEEEEEEEE33}
        Layout = blGlyphRight
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
          'Kapat')
        Multiline = False
        Cizim = True
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 40
    Top = 80
  end
end
