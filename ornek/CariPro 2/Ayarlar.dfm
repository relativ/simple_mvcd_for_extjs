object FAyarlar: TFAyarlar
  Left = 314
  Top = 159
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ayarlar'
  ClientHeight = 311
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 444
    Height = 311
    ActivePage = TabSheet3
    Align = alClient
    Style = tsFlatButtons
    TabIndex = 2
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = '   Bi'#231'imler    '
      ImageIndex = 1
      DesignSize = (
        436
        280)
      object GroupBox3: TGroupBox
        Left = 3
        Top = 2
        Width = 430
        Height = 274
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Say'#305' Bi'#231'imleri'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          430
          274)
        object Label1: TLabel
          Left = 120
          Top = 24
          Width = 82
          Height = 13
          Caption = 'TELALANKOD'
        end
        object OnlineDBGrid1: TTechDBGrid
          Left = 8
          Top = 16
          Width = 414
          Height = 250
          Anchors = [akLeft, akTop, akRight, akBottom]
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clRed
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnKeyDown = OnlineDBGrid1KeyDown
          About = 
            'Online Yaz'#305'l'#305'm/ Serkan G'#252'ne'#351' '#13#10'E-Mail: online@onlinebilgisayar.c' +
            'om. '#13#10'Web: www.onlinebilgisayar.com'
          WordExport = True
          SatirRenk = False
          SatirRenk1 = clBlack
          SatirFontRengi = clBlack
          SatirFontRengi2 = clBlack
          SatirRenk2 = clBlack
          DefaultRowHeight = 17
          GridOptions = [goColSizing]
          Columns = <
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'TABLOADI'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 216
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'FORMAT'
              PickList.Strings = (
                '###,###'
                '###,###.0'
                '###,###.00'
                '###,### TL'
                '###,###.0 TL'
                '###,###.00 TL'
                '###,### $'
                '###,###.0 $'
                '###,###.00 $'
                '###,### EU'
                '###,###.0 EU'
                '###,###.00 EU')
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 152
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end>
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = '  Yedekleme   '
      object GroupBox1: TGroupBox
        Left = 3
        Top = 2
        Width = 430
        Height = 274
        Caption = ' Yedekleme Ayarlar'#305'   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 48
          Top = 162
          Width = 106
          Height = 13
          Caption = 'Yedek Al'#305'nacak Saat :'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 24
          Top = 40
          Width = 99
          Height = 13
          Caption = 'Yedeklenecek Adres'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RadioButton1: TRadioButton
          Left = 24
          Top = 96
          Width = 193
          Height = 17
          Caption = 'Program Her Kapand'#305#287#305'nda Yedek Al'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 24
          Top = 146
          Width = 241
          Height = 17
          Caption = 'G'#252'nl'#252'k Yedek Al'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = RadioButton2Click
        end
        object RadioButton3: TRadioButton
          Left = 24
          Top = 228
          Width = 185
          Height = 17
          Caption = 'Yedek Alma'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          TabStop = True
          OnClick = RadioButton3Click
        end
        object DBEdit1: TDBEdit
          Left = 48
          Top = 178
          Width = 121
          Height = 21
          Color = 12713983
          DataField = 'YEDEKSAAT'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object BitBtn5: TTechButton
          Left = 334
          Top = 54
          Width = 57
          Height = 25
          Caption = '&Se'#231
          TabOrder = 4
          TabStop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = BitBtn5Click
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
            '&Se'#231)
          Multiline = False
          Cizim = True
        end
        object DBOnlineEdit1: TDBTechEdit
          Left = 24
          Top = 56
          Width = 297
          Height = 21
          Color = 12713983
          DataField = 'YEDEKYER'
          DataSource = DMSabit.FirmaDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          RenkGiris = 12713983
          RenkCikis = 12713983
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = '    Uyar'#305'      '
      ImageIndex = 2
      object GroupBox2: TGroupBox
        Left = 8
        Top = 8
        Width = 417
        Height = 41
        Caption = ' Hesap Plan'#305' Takibi '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = GroupBox2Exit
        object OnlineDBCheckBox1: TTechDBCheckbox
          Left = 152
          Top = 16
          Width = 185
          Height = 17
          Caption = 'G'#252'n'#252' Gelen '#304#351'lemleri Uyar'
          TabOrder = 0
          TabStop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
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
          DataField = 'CEKUYAR'
          DataSource = DMSabit.FirmaDS
          ValueChecked = '1'
          ValueUnChecked = '0'
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Kapat'
      ImageIndex = 3
      OnShow = TabSheet4Show
    end
  end
  object dfsBrowseDirectoryDlg1: TdfsBrowseDirectoryDlg
    ShowSelectionInStatus = False
    Left = 360
    Top = 240
  end
end
