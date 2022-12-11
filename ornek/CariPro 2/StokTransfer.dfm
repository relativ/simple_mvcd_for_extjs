object FStokTransfer: TFStokTransfer
  Left = 202
  Top = 136
  Width = 696
  Height = 480
  Caption = 'Stok Transferi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 453
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    Color = 9757176
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 2
      Top = 37
      Width = 3
      Height = 376
      Cursor = crHSplit
    end
    object Splitter2: TSplitter
      Left = 2
      Top = 448
      Width = 684
      Height = 3
      Cursor = crVSplit
      Align = alBottom
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 684
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Stok Transferi'
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
      Left = 5
      Top = 37
      Width = 681
      Height = 376
      Align = alClient
      BevelOuter = bvNone
      Color = 13816575
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      object GroupBox2: TGroupBox
        Left = 10
        Top = 104
        Width = 664
        Height = 159
        Align = alClient
        Caption = ' Stok Hareket Listesi '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object OnlineDBGrid1: TTechDBGrid
          Left = 2
          Top = 15
          Width = 660
          Height = 142
          Align = alClient
          BorderStyle = bsNone
          DataSource = DMStokislem.StokTransferBodroDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
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
              Color = 14811135
              Expanded = False
              FieldName = 'SIRANO'
              Title.Alignment = taCenter
              Width = 31
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'BARKOD'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'STOKNO'
              Title.Alignment = taCenter
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'STOKADI'
              Title.Alignment = taCenter
              Width = 205
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'MIKTAR'
              Title.Alignment = taCenter
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'BIRIM'
              Title.Alignment = taCenter
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Expanded = False
              FieldName = 'C_PARABIRIMI'
              Width = 68
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'BIRIMFIYAT'
              Title.Alignment = taCenter
              Width = 96
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'ISKONTO1'
              Title.Alignment = taCenter
              Visible = False
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'ISKONTO2'
              Title.Alignment = taCenter
              Visible = False
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'ISKONTO3'
              Title.Alignment = taCenter
              Visible = False
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'ISKONTO4'
              Title.Alignment = taCenter
              Visible = False
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'KDVORANI'
              Title.Alignment = taCenter
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'CIKISTUTAR'
              Title.Alignment = taCenter
              Width = 114
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'TEDIYE'
              Title.Alignment = taCenter
              Width = 120
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'VADE'
              Title.Alignment = taCenter
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'ACIKLAMA'
              Title.Alignment = taCenter
              Width = 291
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'ISLEMKURU'
              Title.Alignment = taCenter
              Width = 81
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'C_TLBIRIMFIYAT'
              Title.Alignment = taCenter
              Width = 64
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'C_TLCIKISTUTARI'
              Title.Alignment = taCenter
              Width = 64
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'C_TLCIKISMATRAHI'
              Title.Alignment = taCenter
              Width = 103
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'C_TLCIKISKDVTUTARI'
              Title.Alignment = taCenter
              Width = 96
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end>
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 681
        Height = 104
        Align = alTop
        BevelOuter = bvNone
        Color = 13816575
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 9
          Top = 6
          Width = 496
          Height = 91
          Caption = ' Stok Yerleri '
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object Label11: TLabel
            Left = 63
            Top = 68
            Width = 43
            Height = 13
            Caption = 'A'#231#305'klama'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 14
            Top = 20
            Width = 93
            Height = 13
            Alignment = taRightJustify
            Caption = 'G'#246'nderen Stok Yeri'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 40
            Top = 44
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Alan Stok Yeri'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBOnlineEdit11: TDBTechEdit
            Left = 112
            Top = 64
            Width = 369
            Height = 21
            Color = 14811135
            DataField = 'ACIKLAMA'
            DataSource = DMStokislem.StokTransferDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
          object DBOnlineEdit16: TDBTechEdit
            Left = 111
            Top = 16
            Width = 282
            Height = 21
            Color = 14811135
            DataField = 'C_STOKYERI'
            DataSource = DMStokislem.StokTransferDS
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
          object OnlineButton1: TTechButton
            Left = 397
            Top = 15
            Width = 22
            Height = 23
            Caption = '...'
            TabOrder = 2
            TabStop = True
            OnClick = OnlineButton1Click
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
              '...')
            Multiline = False
            Cizim = True
          end
          object OnlineButton2: TTechButton
            Left = 397
            Top = 39
            Width = 22
            Height = 23
            Caption = '...'
            TabOrder = 3
            TabStop = True
            OnClick = OnlineButton2Click
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
              '...')
            Multiline = False
            Cizim = True
          end
          object OnlineEdit1: TTechEdit
            Left = 112
            Top = 40
            Width = 281
            Height = 21
            RenkGiris = 16777088
            RenkCikis = 14811135
            Color = 14811135
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
        end
        object GroupBox3: TGroupBox
          Left = 513
          Top = 6
          Width = 171
          Height = 91
          Caption = ' '#304#351'lem Bilgileri '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Label4: TLabel
            Left = 16
            Top = 20
            Width = 41
            Height = 13
            Caption = #304#351'lem No'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 33
            Top = 44
            Width = 24
            Height = 13
            Caption = 'Tarih'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 10
            Top = 68
            Width = 47
            Height = 13
            Caption = 'Fatura No'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBOnlineEdit3: TDBTechEdit
            Left = 66
            Top = 16
            Width = 98
            Height = 21
            TabStop = False
            Color = 14811135
            DataField = 'STOKISLEMNO'
            DataSource = DMStokislem.StokTransferDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
          object DBOnlineEdit5: TDBTechEdit
            Left = 66
            Top = 64
            Width = 98
            Height = 21
            Color = 14811135
            DataField = 'BELGENO'
            DataSource = DMStokislem.StokTransferDS
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
          object OnlineDBDateEdit1: TTechDBDateEdit
            Left = 66
            Top = 40
            Width = 97
            Height = 21
            Color = 14811135
            DataField = 'TARIH'
            DataSource = DMStokislem.StokTransferDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 2
            TarihOnay = True
            RenkGiris = 16777088
            RenkCikis = 14811135
            About = 
              'Online Yaz'#305'l'#305'm / Serkan G'#252'ne'#351#13#10'E-Mail: online@onlinebilgisayar.c' +
              'om. '#13#10'Web: www.onlinebilgisayar.com'
          end
        end
        object OnlineButton3: TTechButton
          Left = 689
          Top = 14
          Width = 112
          Height = 83
          Caption = '&Transfer Et'
          TabOrder = 2
          TabStop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = OnlineButton3Click
          Cornerradius = 5
          DrawDisabledImg = False
          Glyph.Data = {
            36010000424D3601000000000000760000002800000011000000100000000100
            040000000000C0000000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B300000003BB3777BB7777BB33000000033B0000000000B33300000003330
            FFFFFFFF0733300000003330FFFFFFFF0733300000003330FFFFFFFF07333000
            00003330FFFFFFFF073330000000BBB0FFFFFFFF0BB3700000003BB0FFFFFFFF
            0BBB300000003330FFFF00000333300000003330FFFF0FF03333300000003330
            FFFF0F0B3333300000003330FFFF003BB3333000000033B000000333BB333000
            00003BB3333BB3333BB330000000B333333B3333333B70000000}
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
            '&Transfer Et')
          Multiline = False
          Cizim = True
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 104
        Width = 10
        Height = 159
        Align = alLeft
        BevelOuter = bvNone
        Color = 13816575
        TabOrder = 3
      end
      object Panel8: TPanel
        Left = 674
        Top = 104
        Width = 7
        Height = 159
        Align = alRight
        BevelOuter = bvNone
        Color = 13816575
        TabOrder = 4
      end
      object Panel5: TPanel
        Left = 0
        Top = 263
        Width = 681
        Height = 113
        Align = alBottom
        BevelOuter = bvNone
        Color = 13816575
        TabOrder = 2
        object GroupBox4: TGroupBox
          Left = 10
          Top = 5
          Width = 199
          Height = 97
          Caption = ' Toplamlar '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label8: TLabel
            Left = 32
            Top = 71
            Width = 25
            Height = 13
            Caption = 'Vade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 8
            Top = 20
            Width = 49
            Height = 13
            Caption = 'Para Birimi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 8
            Top = 47
            Width = 49
            Height = 13
            Caption = #304#351'lem Kuru'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBOnlineEdit6: TDBTechEdit
            Left = 63
            Top = 67
            Width = 122
            Height = 21
            Color = 14811135
            DataField = 'VADE'
            DataSource = DMStokislem.StokTransferDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
          object DBOnlineEdit15: TDBTechEdit
            Left = 63
            Top = 43
            Width = 122
            Height = 21
            Color = 14811135
            DataField = 'ISLEMKURU'
            DataSource = DMStokislem.StokTransferDS
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
          object DBOnlineLookupCombo1: TDBTechLookupCombo
            Left = 64
            Top = 16
            Width = 121
            Height = 21
            BiDiMode = bdLeftToRight
            Color = 14811135
            DataField = 'PARABIRIMKOD'
            DataSource = DMStokislem.StokTransferDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'PARABIRKOD'
            ListField = 'KISAADI'
            ListSource = DMSabit.ParaBirimiDS
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
            OnClick = DBOnlineLookupCombo1Click
            OnExit = DBOnlineLookupCombo1Exit
            RenkGiris = 16777088
            RenkCikis = 14811135
          end
        end
        object GroupBox5: TGroupBox
          Left = 218
          Top = 5
          Width = 223
          Height = 97
          Caption = ' T'#252'rk Liras'#305' Tutar '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Label15: TLabel
            Left = 60
            Top = 26
            Width = 25
            Height = 13
            Caption = 'Tutar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 66
            Top = 50
            Width = 19
            Height = 13
            Caption = 'Kdv'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 19
            Top = 70
            Width = 66
            Height = 13
            Caption = 'Genel Toplam'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBOnlineEdit12: TDBTechEdit
            Left = 97
            Top = 22
            Width = 121
            Height = 21
            Color = clInfoBk
            DataField = 'CIKISMATRAH'
            DataSource = DMStokislem.StokTransferDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            RenkGiris = clAqua
            RenkCikis = clInfoBk
          end
          object DBOnlineEdit13: TDBTechEdit
            Left = 97
            Top = 46
            Width = 121
            Height = 21
            Color = clInfoBk
            DataField = 'CIKISKDVTUTAR'
            DataSource = DMStokislem.StokTransferDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            RenkGiris = clAqua
            RenkCikis = clInfoBk
          end
          object DBOnlineEdit14: TDBTechEdit
            Left = 97
            Top = 69
            Width = 121
            Height = 21
            Color = clInfoBk
            DataField = 'CIKISTUTAR'
            DataSource = DMStokislem.StokTransferDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            RenkGiris = clAqua
            RenkCikis = clInfoBk
          end
        end
        object GroupBox6: TGroupBox
          Left = 449
          Top = 5
          Width = 223
          Height = 97
          Caption = ' D'#246'vizli Tutar '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object Label7: TLabel
            Left = 60
            Top = 26
            Width = 25
            Height = 13
            Caption = 'Tutar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 66
            Top = 50
            Width = 19
            Height = 13
            Caption = 'Kdv'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 19
            Top = 70
            Width = 66
            Height = 13
            Caption = 'Genel Toplam'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBOnlineEdit9: TDBTechEdit
            Left = 91
            Top = 68
            Width = 121
            Height = 21
            Color = 14811135
            DataField = 'D_CIKISTUTAR'
            DataSource = DMStokislem.StokTransferDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            RenkGiris = 16777088
            RenkCikis = 14811135
            Ceviri = True
          end
          object DBOnlineEdit8: TDBTechEdit
            Left = 91
            Top = 44
            Width = 121
            Height = 21
            Color = 14811135
            DataField = 'D_CIKISKDVTUTAR'
            DataSource = DMStokislem.StokTransferDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
          object DBOnlineEdit10: TDBTechEdit
            Left = 91
            Top = 20
            Width = 121
            Height = 21
            Color = 14811135
            DataField = 'D_CIKISMATRAH'
            DataSource = DMStokislem.StokTransferDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 413
      Width = 684
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      Color = 13395456
      TabOrder = 2
      object Panel9: TPanel
        Left = 408
        Top = 0
        Width = 276
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        Color = 13395456
        TabOrder = 0
        object BitBtn1: TTechButton
          Left = 1
          Top = 6
          Width = 93
          Height = 25
          Caption = '&Yeni'
          TabOrder = 0
          TabStop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = BitBtn1Click
          Cornerradius = 5
          DrawDisabledImg = False
          Glyph.Data = {
            36010000424D3601000000000000760000002800000011000000100000000100
            040000000000C0000000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B300000003BB3777BB7777BB33000000033B0000000000B33300000003330
            FFFFFFFF0733300000003330FFFFFFFF0733300000003330FFFFFFFF07333000
            00003330FFFFFFFF073330000000BBB0FFFFFFFF0BB3700000003BB0FFFFFFFF
            0BBB300000003330FFFF00000333300000003330FFFF0FF03333300000003330
            FFFF0F0B3333300000003330FFFF003BB3333000000033B000000333BB333000
            00003BB3333BB3333BB330000000B333333B3333333B70000000}
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
            '&Yeni')
          Multiline = False
          Cizim = True
        end
        object BitBtn2: TTechButton
          Left = 98
          Top = 6
          Width = 92
          Height = 25
          Caption = '&Sil'
          TabOrder = 1
          TabStop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = BitBtn2Click
          Cornerradius = 5
          DrawDisabledImg = False
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
            5555000000005550555500550005505555550055500555555555500550050055
            5555550050501105555555550509991055555005550999910555500505509990
            305555005055090B03055555555550B0B03055550555550B0B33555555555550
            BBB35550555555550BBB55555555555550BB555555555555550B}
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
            '&Sil')
          Multiline = False
          Cizim = True
        end
        object BitBtn3: TTechButton
          Left = 197
          Top = 6
          Width = 75
          Height = 25
          Caption = '&Kapat'
          TabOrder = 2
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
            '&Kapat')
          Multiline = False
          Cizim = True
        end
      end
      object BitBtn4: TTechButton
        Left = 298
        Top = 7
        Width = 30
        Height = 26
        TabOrder = 1
        TabStop = True
        Cornerradius = 5
        DrawDisabledImg = False
        Glyph.Data = {
          AE060000424DAE06000000000000360000002800000017000000170000000100
          1800000000007806000000000000000000000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBF000000000000000000000000000000000000
          000000000000000000000000000000000000BFBFBFBFBFBF000000000000BFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF000000
          000000000000BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
          00007F7F7F000000000000BFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007F7F
          7FBFBFBFBFBFBF7F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000007F7F7FBFBFBFBFBFBFFFFF007F7F7F7F7F7F000000BFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF7F7F7FBFBFBF000000
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFFFFF00BFBFBFBFBFBF7F
          7F7FBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007F7F7FFFFF
          00FFFF00BFBFBF7F7F7F7F7F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0000007F7F7FBFBFBFBFBFBF7F7F7F000000BFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00000000000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000
          00000000000000000000000000000000000000000000000000BFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000}
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
        Multiline = False
        Cizim = True
      end
      object BitBtn5: TTechButton
        Left = 332
        Top = 7
        Width = 31
        Height = 25
        TabOrder = 2
        TabStop = True
        Cornerradius = 5
        DrawDisabledImg = False
        Glyph.Data = {
          36010000424D3601000000000000760000002800000011000000100000000100
          040000000000C0000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003300000000888888888888880700000000888888888888880700000000000
          000000000000700000000F8F8F8F8F8F8F807000000008F8F8F8F8F8F9F07000
          00000F8F8F8F8F8F8F80700000000000000000000000700000003330FFFFFFFF
          0333300000003330F0000F0F0333300000003330FFFFFFFF0333300000003330
          F00F00000333300000003330FFFF0FF03333300000003330F08F0F0333333000
          00003330FFFF0033333330000000333000000333333330000000}
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
        Multiline = False
        Cizim = True
      end
      object BLastPage: TTechButton
        Left = 205
        Top = 7
        Width = 45
        Height = 25
        Caption = 'So&n'
        TabOrder = 3
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = BLastPageClick
        Cornerradius = 5
        DrawDisabledImg = False
        Glyph.Data = {
          D6000000424DD60000000000000076000000280000000E0000000C0000000100
          0400000000006000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00778877777888
          87007F008777F00087007F000877F00087007F000087F00087007F000008F000
          87007F000000800087007F000000F00087007F000007F00087007F000077F000
          87007F000777F00087007F007777F00087007FF77777FFFF7700}
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
          'So&n')
        Multiline = False
        Cizim = True
      end
      object ButtonNext: TTechButton
        Left = 128
        Top = 7
        Width = 75
        Height = 25
        Caption = 'Son&raki'
        TabOrder = 4
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = ButtonNextClick
        Cornerradius = 5
        DrawDisabledImg = False
        Glyph.Data = {
          D6000000424DD60000000000000076000000280000000F0000000C0000000100
          0400000000006000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777778877
          77707777777F008777707777777F000877707888888700008770F00000000000
          0870F000000000000080F000000000000070F000000000000770FFFFFFFF0000
          77707777777F000777707777777F007777707777777FF7777770}
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
          'Son&raki')
        Multiline = False
        Cizim = True
      end
      object ButtonPrevious: TTechButton
        Left = 51
        Top = 7
        Width = 75
        Height = 25
        Caption = #214'n&ceki'
        TabOrder = 5
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = ButtonPreviousClick
        Cornerradius = 5
        DrawDisabledImg = False
        Glyph.Data = {
          D6000000424DD60000000000000076000000280000000F0000000C0000000100
          0400000000006000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777887777
          7770777770087777777077770008777777707770000888888880770000000000
          00807000000000000080F000000000000080FF000000000000807FF00007FFFF
          FF7077FF000877777770777FF008777777707777FFF777777770}
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
          #214'n&ceki')
        Multiline = False
        Cizim = True
      end
      object BFirstPage: TTechButton
        Left = 4
        Top = 7
        Width = 45
        Height = 25
        Caption = #304'l&k'
        TabOrder = 6
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = BFirstPageClick
        Cornerradius = 5
        DrawDisabledImg = False
        Glyph.Data = {
          D6000000424DD60000000000000076000000280000000E0000000C0000000100
          0400000000006000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777888777777
          88007F000877777008007F000877770008007F000877700008007F0008770000
          08007F000870000008007F0008F0000008007F0008FF000008007F00087FF000
          08007F000877FF0008007F0008777FF008007FFFF77777FFF700}
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
          #304'l&k')
        Multiline = False
        Cizim = True
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 480
    Top = 8
    object StokEkle1: TMenuItem
      Caption = 'Stok Ekle'
      ShortCut = 114
      OnClick = StokEkle1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object SatrEkle1: TMenuItem
      Caption = 'Sat'#305'r Ekle'
      ShortCut = 16429
    end
    object SatrSil1: TMenuItem
      Caption = 'Sat'#305'r Sil'
      ShortCut = 115
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object skontolarGster1: TMenuItem
      Caption = #304'skontolar'#305' G'#246'ster'
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object lemSrasnaGreSrala1: TMenuItem
      Caption = #304#351'lem S'#305'ras'#305'na G'#246're S'#305'rala'
    end
  end
  object TransferProc: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'STOKISLEM_TRANSFER'
    Left = 448
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ISLEMKOD3_IN'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'ISLEMKOD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ISLEMTUR_IN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'KULLANKOD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STOKYERIKOD_IN'
        ParamType = ptInput
      end>
    object TransferProcISLEMKOD3_IN: TIntegerField
      FieldName = 'ISLEMKOD3_IN'
      Origin = 'STOKISLEM_TRANSFER.ISLEMKOD3_IN'
    end
  end
end
