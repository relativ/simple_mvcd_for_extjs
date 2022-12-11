object FFiyatSorgu: TFFiyatSorgu
  Left = 224
  Top = 142
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = 'Fiyat Sorgu Listesi'
  ClientHeight = 419
  ClientWidth = 592
  Color = clBtnFace
  Constraints.MaxHeight = 453
  Constraints.MaxWidth = 600
  Constraints.MinHeight = 446
  Constraints.MinWidth = 600
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 419
    Align = alClient
    BevelInner = bvLowered
    Constraints.MaxHeight = 419
    Constraints.MaxWidth = 592
    Constraints.MinHeight = 419
    Constraints.MinWidth = 592
    TabOrder = 0
    object GroupBox3: TGroupBox
      Left = 6
      Top = 208
      Width = 582
      Height = 166
      Caption = 'Stoklar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 176
        Top = 120
        Width = 28
        Height = 13
        Caption = 'SUM'
      end
      object Label2: TLabel
        Left = 184
        Top = 192
        Width = 35
        Height = 13
        Caption = 'SUM1'
      end
      object DBGrid2: TTechDBGrid
        Left = 2
        Top = 15
        Width = 578
        Height = 149
        Align = alClient
        BorderStyle = bsNone
        DataSource = DMStok.StokGrupKartDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clRed
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = DBGrid2DblClick
        OnKeyPress = DBGrid2KeyPress
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
            Color = 13041663
            Expanded = False
            FieldName = 'STOKNO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = 8454016
            Sirala2_Rengi = 16777088
          end
          item
            Color = 13041663
            Expanded = False
            FieldName = 'STOKADI'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 232
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = 8454016
            Sirala2_Rengi = 16777088
          end
          item
            Color = 13041663
            Expanded = False
            FieldName = 'BAKIYE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 74
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = 8454016
            Sirala2_Rengi = 16777088
          end
          item
            Color = 13041663
            Expanded = False
            FieldName = 'C_DURUM'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 43
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = 8454016
            Sirala2_Rengi = 16777088
          end
          item
            Color = 13041663
            Expanded = False
            FieldName = 'ALISFIYAT'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = False
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = 8454016
            Sirala2_Rengi = 16777088
          end
          item
            Color = 13041663
            Expanded = False
            FieldName = 'SATISFIYAT1'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = 8454016
            Sirala2_Rengi = 16777088
          end
          item
            Color = 13041663
            Expanded = False
            FieldName = 'SATISFIYAT2'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = 8454016
            Sirala2_Rengi = 16777088
          end
          item
            Color = 13041663
            Expanded = False
            FieldName = 'SATISFIYAT3'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = 8454016
            Sirala2_Rengi = 16777088
          end
          item
            Color = 13041663
            Expanded = False
            FieldName = 'C_PARABIRIMI'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 54
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = 8454016
            Sirala2_Rengi = 16777088
          end>
      end
    end
    object GroupBox2: TGroupBox
      Left = 6
      Top = 2
      Width = 470
      Height = 207
      Caption = 'Stok Gruplar'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object psDBTreeView1: TTechDBTree
        Left = 6
        Top = 14
        Width = 458
        Height = 187
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = 13041663
        DragMode = dmAutomatic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HideSelection = False
        Indent = 19
        MultiSelectStyle = []
        ParentFont = False
        ReadOnly = True
        RightClickSelect = True
        RowSelect = True
        TabOrder = 0
        OnClick = psDBTreeView1Click
        SilmeMesaji = 'Silmek istedi'#287'inizden emin misiniz?'
        ChildItemCount = 0
        FieldID = 'GRUPLARKOD'
        FieldParent = 'ANANO'
        FieldText = 'GRUPADI'
        FieldParentKontrol = 'KONTROLNO'
        CheckDurum = False
        DataSource = DMStok.StokGruplariDS
        OnlineOptions = [dtArrowsEnabled]
      end
    end
    object GroupBox4: TGroupBox
      Left = 480
      Top = 2
      Width = 107
      Height = 207
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object OnlineCheckBox2: TTechCheckBox
        Left = 5
        Top = 184
        Width = 79
        Height = 17
        Caption = 'Sat'#305#351' Fiyat'#305
        TabOrder = 3
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = OnlineCheckBox2Click
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
        Checked = True
        Transparent = False
      end
      object AktifStoklar: TRadioButton
        Left = 12
        Top = 48
        Width = 80
        Height = 17
        Caption = 'Aktif Stoklar'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        OnClick = AktifStoklarClick
      end
      object PasifStoklar: TRadioButton
        Left = 11
        Top = 77
        Width = 86
        Height = 17
        Caption = 'Pasif Stoklar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = PasifStoklarClick
      end
      object TumStoklar: TRadioButton
        Left = 12
        Top = 21
        Width = 81
        Height = 17
        Caption = 'T'#252'm Stoklar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = TumStoklarClick
      end
      object OnlineCheckbox6: TTechCheckBox
        Left = 6
        Top = 152
        Width = 79
        Height = 17
        Caption = 'Al'#305#351' Fiyat'#305
        TabOrder = 4
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = OnlineCheckbox6Click
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
      object OnlineCheckbox1: TTechCheckBox
        Left = 6
        Top = 120
        Width = 99
        Height = 17
        Caption = 'Mevcut Stoklar'
        TabOrder = 5
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = OnlineCheckbox1Click
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
        Checked = True
        Transparent = False
      end
    end
    object GroupBox12: TGroupBox
      Left = 6
      Top = 374
      Width = 583
      Height = 40
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object OnlineEdit1: TTechEdit
        Left = 181
        Top = 11
        Width = 164
        Height = 21
        Hint = 'Stok Ad'#305'na G'#246're Arama'
        RenkGiris = 16777088
        RenkCikis = 13041663
        BuyukKucuk = True
        Color = 13041663
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = OnlineEdit1Exit
        OnKeyPress = OnlineEdit1KeyPress
      end
      object BitBtn4: TTechButton
        Left = 351
        Top = 10
        Width = 25
        Height = 24
        TabOrder = 1
        TabStop = True
        OnClick = BitBtn4Click
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
      object SecimButonu: TTechButton
        Left = 419
        Top = 10
        Width = 75
        Height = 25
        Caption = 'Se'#231
        TabOrder = 2
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SecimButonuClick
        Cornerradius = 5
        DrawDisabledImg = False
        Glyph.Data = {
          36010000424D3601000000000000760000002800000011000000100000000100
          040000000000C0000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          0000300000003333330FFFFFFFF03000000000300000FF0F00F070000000E00B
          FBFB0FFFFFF070000000E0BFBF000FFFF0F070000000E0FBFBFBF0F00FF07000
          0000E0BFBF00000B0FF070000000E0FBFBFBFBF0FFF070000000E0BF0000000F
          FFF070000000000BFB00B0FF00F0700000003330000B0FFFFFF0300000003333
          30B0FFFF00003000000033330B0FF00F0FF0300000003330B00FFFFF0F033000
          00003309030FFFFF003330000000333033000000033330000000}
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
          'Se'#231)
        Multiline = False
        Cizim = True
      end
      object BitBtn2: TTechButton
        Left = 502
        Top = 10
        Width = 75
        Height = 25
        Caption = 'Kapat'
        TabOrder = 3
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BitBtn2Click
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
      object OnlineEdit2: TTechEdit
        Left = 5
        Top = 11
        Width = 44
        Height = 21
        Hint = 'Stok Nosuna G'#246're Arama'
        RenkGiris = 16777088
        RenkCikis = 13041663
        BuyukKucuk = True
        Color = 13041663
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnExit = OnlineEdit1Exit
        OnKeyPress = OnlineEdit2KeyPress
      end
      object OnlineEdit3: TTechEdit
        Left = 53
        Top = 11
        Width = 116
        Height = 21
        Hint = 'Barkoda G'#246're Arama'
        RenkGiris = 16777088
        RenkCikis = 13041663
        BuyukKucuk = True
        Color = 13041663
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnExit = OnlineEdit1Exit
        OnKeyPress = OnlineEdit3KeyPress
      end
    end
  end
end
