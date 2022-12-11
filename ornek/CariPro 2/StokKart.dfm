object FStokKart: TFStokKart
  Left = 210
  Top = 171
  BorderStyle = bsSingle
  Caption = 'Stok Kart'#305
  ClientHeight = 435
  ClientWidth = 709
  Color = clBtnFace
  Constraints.MinHeight = 462
  Constraints.MinWidth = 717
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 435
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    Color = 16769968
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 705
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Stok Kart'#305
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
      Width = 705
      Height = 362
      Align = alClient
      BevelOuter = bvNone
      Color = 16769968
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 298
        Top = 4
        Width = 417
        Height = 364
        ActivePage = TabSheet1
        Style = tsFlatButtons
        TabIndex = 0
        TabOrder = 2
        object TabSheet1: TTabSheet
          Caption = 'Stok Bilgiler'
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 409
            Height = 333
            Align = alClient
            BevelOuter = bvNone
            Color = 16769968
            TabOrder = 0
            object GroupBox3: TGroupBox
              Left = 4
              Top = 0
              Width = 404
              Height = 329
              Caption = '  Stok Bilgiler  '
              Color = 16769968
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              OnExit = GroupBox3Exit
              object Label1: TLabel
                Left = 17
                Top = 23
                Width = 39
                Height = 13
                Caption = 'Stok No'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label2: TLabel
                Left = 16
                Top = 47
                Width = 40
                Height = 13
                Caption = 'Stok Ad'#305
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label4: TLabel
                Left = 39
                Top = 264
                Width = 17
                Height = 13
                Caption = 'Not'
                FocusControl = DBMemo1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label3: TLabel
                Left = 34
                Top = 167
                Width = 22
                Height = 13
                Caption = 'Birim'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label5: TLabel
                Left = 12
                Top = 95
                Width = 44
                Height = 13
                Caption = 'K'#226'r Oran'#305
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label6: TLabel
                Left = 10
                Top = 141
                Width = 47
                Height = 13
                Caption = 'Kdv Oran'#305
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 271
                Top = 71
                Width = 28
                Height = 13
                Caption = 'A'#287#305'rl'#305'k'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label8: TLabel
                Left = 269
                Top = 95
                Width = 30
                Height = 13
                Caption = 'Hacim'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 219
                Top = 119
                Width = 80
                Height = 13
                Caption = 'Minumum Seviye'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label10: TLabel
                Left = 14
                Top = 70
                Width = 42
                Height = 13
                Caption = 'Stok Tipi'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label11: TLabel
                Left = 231
                Top = 23
                Width = 34
                Height = 13
                Caption = 'Barkod'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label12: TLabel
                Left = 7
                Top = 118
                Width = 49
                Height = 13
                Alignment = taRightJustify
                Caption = 'Para Birimi'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label13: TLabel
                Left = 5
                Top = 191
                Width = 51
                Height = 13
                Caption = 'Koli Miktar'#305
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 20
                Top = 238
                Width = 36
                Height = 13
                Caption = 'Kaynak'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label15: TLabel
                Left = 214
                Top = 143
                Width = 85
                Height = 13
                Caption = 'Maksimum Seviye'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label16: TLabel
                Left = 226
                Top = 167
                Width = 73
                Height = 13
                Caption = 'Sipari'#351' Seviyesi'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object DBMemo1: TDBMemo
                Left = 64
                Top = 263
                Width = 329
                Height = 55
                Color = 14811135
                DataSource = DMStok.StokKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 19
              end
              object DBOnlineEdit4: TDBTechEdit
                Left = 64
                Top = 19
                Width = 86
                Height = 21
                Color = 14811135
                DataField = 'STOKNO'
                DataSource = DMStok.StokKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = DBOnlineEdit4Exit
                RenkGiris = 16777088
                RenkCikis = 14811135
                BuyukKucuk = True
              end
              object DBOnlineEdit7: TDBTechEdit
                Left = 64
                Top = 43
                Width = 326
                Height = 21
                Color = 14811135
                DataField = 'STOKADI'
                DataSource = DMStok.StokKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnExit = DBOnlineEdit7Exit
                RenkGiris = 16777088
                RenkCikis = 14811135
                BuyukKucuk = True
              end
              object DBOnlineEdit2: TDBTechEdit
                Left = 63
                Top = 137
                Width = 48
                Height = 21
                Color = 14811135
                DataField = 'KDVORAN'
                DataSource = DMStok.StokKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
                RenkGiris = 16777088
                RenkCikis = 14811135
                BuyukKucuk = True
              end
              object DBOnlineEdit3: TDBTechEdit
                Left = 304
                Top = 67
                Width = 86
                Height = 21
                Color = 14811135
                DataField = 'AGIRLIK'
                DataSource = DMStok.StokKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 9
                RenkGiris = 16777088
                RenkCikis = 14811135
                BuyukKucuk = True
              end
              object DBOnlineEdit5: TDBTechEdit
                Left = 304
                Top = 91
                Width = 86
                Height = 21
                Color = 14811135
                DataField = 'HACIM'
                DataSource = DMStok.StokKartDS
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
              object DBOnlineEdit6: TDBTechEdit
                Left = 304
                Top = 115
                Width = 86
                Height = 21
                Color = 14811135
                DataField = 'MINSEVIYE'
                DataSource = DMStok.StokKartDS
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
              object OnlineDBCheckBox1: TTechDBCheckbox
                Left = 304
                Top = 189
                Width = 48
                Height = 17
                Caption = 'Aktif'
                TabOrder = 14
                TabStop = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
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
                DataField = 'ACTIVITE'
                DataSource = DMStok.StokKartDS
                ValueChecked = '1'
                ValueUnChecked = '2'
              end
              object OnlineDBCheckBox3: TTechDBCheckbox
                Left = 304
                Top = 210
                Width = 96
                Height = 17
                Caption = 'Negatif Seviye'
                TabOrder = 15
                TabStop = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
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
                DataField = 'NEGSEVIYE'
                DataSource = DMStok.StokKartDS
                ValueChecked = '1'
                ValueUnChecked = '2'
              end
              object DBOnlineCombo1: TDBTechCombo
                Left = 64
                Top = 162
                Width = 88
                Height = 21
                Color = 14811135
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ItemHeight = 13
                ParentFont = False
                TabOrder = 7
                Text = 'DBOnlineCombo1'
                Items.Strings = (
                  'Adet'
                  'Metre'
                  'Cm'
                  'Litre'
                  'Gr'
                  'Kg'
                  'Ton')
                RenkGiris = 16777088
                RenkCikis = 14811135
                KayitList.Strings = (
                  'Adet'
                  'Metre'
                  'Cm'
                  'Litre'
                  'Gr'
                  'Kg'
                  'Ton')
                DataField = 'BIRIM'
                DataSource = DMStok.StokKartDS
              end
              object DBOnlineEdit8: TDBTechEdit
                Left = 271
                Top = 19
                Width = 119
                Height = 21
                Color = 14811135
                DataField = 'BARKOD'
                DataSource = DMStok.StokKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnExit = DBOnlineEdit8Exit
                RenkGiris = 16777088
                RenkCikis = 14811135
                BuyukKucuk = True
              end
              object DBOnlineEdit1: TDBTechEdit
                Left = 64
                Top = 91
                Width = 48
                Height = 21
                Color = 14811135
                DataField = 'KARORANI'
                DataSource = DMStok.StokKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
                RenkGiris = 16777088
                RenkCikis = 14811135
                BuyukKucuk = True
              end
              object DBOnlineEdit9: TDBTechEdit
                Left = 64
                Top = 187
                Width = 86
                Height = 21
                Color = 14811135
                DataField = 'KOLIMIKTAR'
                DataSource = DMStok.StokKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 8
                RenkGiris = 16777088
                RenkCikis = 14811135
                BuyukKucuk = True
              end
              object DBOnlineLookupCombo1: TDBTechLookupCombo
                Left = 64
                Top = 114
                Width = 153
                Height = 21
                DataField = 'PARABIRIMIKOD'
                DataSource = DMStok.StokKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'PARABIRKOD'
                ListField = 'PARABIRIMI'
                ListSource = DMSabit.ParaBirimiDS
                ParentFont = False
                TabOrder = 5
                RenkGiris = clInfoBk
                RenkCikis = clWhite
              end
              object DBOnlineEdit10: TDBTechEdit
                Left = 64
                Top = 236
                Width = 238
                Height = 21
                Color = 14811135
                DataField = 'C_KAYNAKADI'
                DataSource = DMStok.StokKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 16
                RenkGiris = 16777088
                RenkCikis = 14811135
                BuyukKucuk = True
              end
              object OnlineButton5: TTechButton
                Left = 307
                Top = 236
                Width = 58
                Height = 22
                Caption = 'Se'#231
                TabOrder = 17
                TabStop = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                OnClick = OnlineButton5Click
                Cornerradius = 5
                DrawDisabledImg = False
                Glyph.Data = {
                  F6000000424DF600000000000000760000002800000010000000100000000100
                  04000000000080000000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                  5555555000000005555555099999990055555099999999010555001111111101
                  105500000000000011055070FFFFFF0F01105500FFFFFF0F00105550FF70000F
                  0F005555000FFFFF0F00555550FF70000F05555555000FFFFF0555555550FF70
                  0005555555550005555555555555555555555555555555555555}
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
                  'Cari Se'#231)
                Multiline = False
                Cizim = True
              end
              object OnlineButton6: TTechButton
                Left = 367
                Top = 236
                Width = 25
                Height = 22
                TabOrder = 18
                TabStop = True
                OnClick = OnlineButton6Click
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
                Multiline = False
                Cizim = True
              end
              object DBOnlineEdit11: TDBTechEdit
                Left = 304
                Top = 139
                Width = 86
                Height = 21
                Color = 14811135
                DataField = 'MAXSEVIYE'
                DataSource = DMStok.StokKartDS
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
              object DBOnlineEdit12: TDBTechEdit
                Left = 304
                Top = 163
                Width = 86
                Height = 21
                Color = 14811135
                DataField = 'SIPSEVIYE'
                DataSource = DMStok.StokKartDS
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
                Left = 64
                Top = 67
                Width = 153
                Height = 21
                DataField = 'STOKTIPIKOD'
                DataSource = DMStok.StokKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'STOKTIPIKOD'
                ListField = 'STOKTIPI'
                ListSource = DMSabit.StokTipiDS
                ParentFont = False
                TabOrder = 3
                RenkGiris = clInfoBk
                RenkCikis = clWhite
              end
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Stok Guruplar'#305
          ImageIndex = 1
          object GroupBox4: TGroupBox
            Left = 5
            Top = 0
            Width = 404
            Height = 329
            Caption = ' Stok Guruplar'#305' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnExit = GroupBox4Exit
            object OnlineDBGrid1: TTechDBGrid
              Left = 8
              Top = 17
              Width = 297
              Height = 304
              Ctl3D = True
              DataSource = DMStok.GrupBaglantiDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
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
              GridOptions = []
              Columns = <
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'GurupAdi'
                  Title.Alignment = taCenter
                  Width = 259
                  Visible = True
                  Siralama = False
                  CokluTus = False
                  Sirala1_Rengi = clBlack
                  Sirala2_Rengi = clBlack
                end>
            end
            object BitBtn4: TTechButton
              Left = 310
              Top = 264
              Width = 75
              Height = 25
              Caption = '&Ekle'
              TabOrder = 1
              TabStop = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              OnClick = BitBtn4Click
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
                '&Ekle')
              Multiline = False
              Cizim = True
            end
            object BitBtn5: TTechButton
              Left = 310
              Top = 296
              Width = 75
              Height = 25
              Caption = '&Sil'
              TabOrder = 2
              TabStop = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              OnClick = BitBtn5Click
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
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Stok '#214'zellikleri'
          ImageIndex = 2
          object GroupBox1: TGroupBox
            Left = 5
            Top = 0
            Width = 404
            Height = 329
            Caption = ' Stok '#214'zellikleri '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnExit = GroupBox1Exit
            object OnlineButton1: TTechButton
              Left = 102
              Top = 296
              Width = 75
              Height = 25
              Caption = '&Ekle'
              TabOrder = 0
              TabStop = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              OnClick = OnlineButton1Click
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
                '&Ekle')
              Multiline = False
              Cizim = True
            end
            object OnlineButton2: TTechButton
              Left = 190
              Top = 296
              Width = 75
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
            object OnlineDBGrid3: TTechDBGrid
              Left = 9
              Top = 16
              Width = 387
              Height = 273
              DataSource = DMStok.StokOzellikDS
              TabOrder = 2
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
              GridOptions = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'OZELLIKNO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Visible = True
                  Siralama = False
                  CokluTus = False
                  Sirala1_Rengi = clBlack
                  Sirala2_Rengi = clBlack
                end
                item
                  Expanded = False
                  FieldName = 'OZELLIK'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Width = 155
                  Visible = True
                  Siralama = False
                  CokluTus = False
                  Sirala1_Rengi = clBlack
                  Sirala2_Rengi = clBlack
                end
                item
                  Expanded = False
                  FieldName = 'ACIKLAMA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Width = 131
                  Visible = True
                  Siralama = False
                  CokluTus = False
                  Sirala1_Rengi = clBlack
                  Sirala2_Rengi = clBlack
                end>
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Stok Alternatifleri'
          ImageIndex = 3
          OnShow = TabSheet4Show
          object GroupBox2: TGroupBox
            Left = 5
            Top = 0
            Width = 404
            Height = 329
            Caption = ' Stok Alternatifleri  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnExit = GroupBox2Exit
            object OnlineButton3: TTechButton
              Left = 134
              Top = 296
              Width = 75
              Height = 25
              Caption = '&Ekle'
              TabOrder = 0
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
                '&Ekle')
              Multiline = False
              Cizim = True
            end
            object OnlineButton4: TTechButton
              Left = 222
              Top = 296
              Width = 75
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
              OnClick = OnlineButton4Click
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
            object OnlineDBGrid4: TTechDBGrid
              Left = 9
              Top = 16
              Width = 387
              Height = 273
              DataSource = DMStok.StokAlterDS
              TabOrder = 2
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
              GridOptions = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'C_STOKADI'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Width = 200
                  Visible = True
                  Siralama = False
                  CokluTus = False
                  Sirala1_Rengi = clBlack
                  Sirala2_Rengi = clBlack
                end
                item
                  Expanded = False
                  FieldName = 'ACIKLAMA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Width = 150
                  Visible = True
                  Siralama = False
                  CokluTus = False
                  Sirala1_Rengi = clBlack
                  Sirala2_Rengi = clBlack
                end>
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Resim'
          ImageIndex = 4
          object GroupBox6: TGroupBox
            Left = 5
            Top = 0
            Width = 404
            Height = 329
            Caption = ' Stok Resmi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnExit = GroupBox1Exit
            object DBImage1: TDBImage
              Left = 7
              Top = 14
              Width = 389
              Height = 307
              Color = 14811135
              DataField = 'RESIM'
              DataSource = DMStok.StokResimDS
              Stretch = True
              TabOrder = 0
              OnDblClick = DBImage1DblClick
            end
          end
        end
      end
      object Panel5: TPanel
        Left = 6
        Top = 2
        Width = 291
        Height = 25
        BevelOuter = bvNone
        Caption = 'Stok Kartlar'#305' Listesi'
        Color = 33023
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object GroupBox5: TGroupBox
        Left = 6
        Top = 28
        Width = 291
        Height = 332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnExit = GroupBox1Exit
        object OnlineDBGrid2: TTechDBGrid
          Left = 2
          Top = 15
          Width = 287
          Height = 315
          Align = alClient
          DataSource = DMStok.StokKartDS
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
          GridOptions = [goRowSizing, goColSizing]
          Columns = <
            item
              Expanded = False
              FieldName = 'STOKNO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Width = 48
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Expanded = False
              FieldName = 'STOKADI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Width = 201
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Expanded = False
              FieldName = 'BARKOD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Width = 104
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end>
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 394
      Width = 705
      Height = 39
      Align = alBottom
      BevelOuter = bvNone
      Color = 13395456
      TabOrder = 2
      object BFirstPage: TTechButton
        Left = 5
        Top = 8
        Width = 45
        Height = 25
        Caption = '&'#304'lk'
        TabOrder = 0
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
          '&'#304'lk')
        Multiline = False
        Cizim = True
      end
      object ButtonPrevious: TTechButton
        Left = 52
        Top = 8
        Width = 75
        Height = 25
        Caption = '&'#214'nceki'
        TabOrder = 1
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
          '&'#214'nceki')
        Multiline = False
        Cizim = True
      end
      object ButtonNext: TTechButton
        Left = 129
        Top = 8
        Width = 75
        Height = 25
        Caption = '&Sonraki'
        TabOrder = 2
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
          '&Sonraki')
        Multiline = False
        Cizim = True
      end
      object BLastPage: TTechButton
        Left = 206
        Top = 8
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
      object BitBtn1: TTechButton
        Left = 454
        Top = 8
        Width = 54
        Height = 25
        Caption = '&Yeni'
        TabOrder = 5
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
        Left = 568
        Top = 8
        Width = 54
        Height = 25
        Caption = '&Sil'
        TabOrder = 6
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
      object OnlineEdit2: TTechEdit
        Left = 256
        Top = 10
        Width = 193
        Height = 21
        RenkGiris = 16777088
        RenkCikis = 14155775
        BuyukKucuk = True
        Color = 14155775
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = OnlineEdit2KeyPress
      end
      object BitBtn3: TTechButton
        Left = 627
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Kapat'
        TabOrder = 7
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
      object OnlineButton7: TTechButton
        Left = 512
        Top = 8
        Width = 54
        Height = 25
        Caption = 'Kopyala'
        TabOrder = 8
        TabStop = True
        OnClick = OnlineButton7Click
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
          'K')
        Multiline = False
        Cizim = True
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 104
    Top = 160
  end
end
