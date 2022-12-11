object FStokKontrol: TFStokKontrol
  Left = 251
  Top = 136
  Width = 600
  Height = 543
  Caption = 'Stok Kontrol'
  Color = clBtnFace
  Constraints.MinHeight = 543
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 509
    Align = alClient
    BevelInner = bvLowered
    Constraints.MinHeight = 422
    Constraints.MinWidth = 592
    TabOrder = 0
    DesignSize = (
      592
      509)
    object GroupBox3: TGroupBox
      Left = 245
      Top = 2
      Width = 344
      Height = 279
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
      object DBGrid2: TDBGrid
        Left = 3
        Top = 16
        Width = 338
        Height = 257
        DataSource = DMStok.StokGrupKontrolDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clRed
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
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
          end>
      end
    end
    object GroupBox2: TGroupBox
      Left = 5
      Top = 2
      Width = 237
      Height = 279
      Caption = 'Stok Gruplar'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object psDBTreeView1: TTechDBTree
        Left = 2
        Top = 15
        Width = 233
        Height = 262
        Align = alClient
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
      Left = 5
      Top = 439
      Width = 583
      Height = 27
      Anchors = [akLeft, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object OnlineCheckBox3: TRadioButton
        Left = 232
        Top = 8
        Width = 97
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
        OnClick = OnlineCheckBox3Click
      end
      object OnlineCheckBox4: TRadioButton
        Left = 344
        Top = 8
        Width = 105
        Height = 17
        Caption = 'Pasif Stoklar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = OnlineCheckBox4Click
      end
      object OnlineCheckBox5: TRadioButton
        Left = 132
        Top = 8
        Width = 97
        Height = 17
        Caption = 'T'#252'm Stoklar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = OnlineCheckBox5Click
      end
    end
    object GroupBox12: TGroupBox
      Left = 5
      Top = 466
      Width = 583
      Height = 41
      Anchors = [akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object BitBtn2: TTechButton
        Left = 504
        Top = 9
        Width = 75
        Height = 25
        Caption = 'Kapat'
        TabOrder = 0
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
      object OnlineEdit1: TTechEdit
        Left = 181
        Top = 11
        Width = 252
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
        TabOrder = 1
        OnKeyPress = OnlineEdit1KeyPress
      end
      object BitBtn4: TTechButton
        Left = 439
        Top = 10
        Width = 25
        Height = 24
        TabOrder = 2
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
        TabOrder = 3
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
        TabOrder = 4
        OnKeyPress = OnlineEdit3KeyPress
      end
    end
    object GroupBox5: TGroupBox
      Left = 5
      Top = 280
      Width = 584
      Height = 161
      Caption = 'Stok Durumu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object OnlineLabel2: TTechLabel
        Left = 406
        Top = 136
        Width = 56
        Height = 13
        Caption = 'Stok Miktar'#305
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        RenkGiris = clNavy
        UrlOnay = False
        RenkCikis = clNavy
        About = 
          'Online Yaz'#305'l'#305'm/ Serkan G'#252'ne'#351' '#13#10'E-Mail: online@onlinebilgisayar.c' +
          'om. '#13#10'Web: www.onlinebilgisayar.com'
      end
      object OnlineDBGrid1: TTechDBGrid
        Left = 4
        Top = 16
        Width = 575
        Height = 113
        DataSource = DMStok.SKontrolBodroDS
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
            Color = 13434879
            Expanded = False
            FieldName = 'C_STOKYERI'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 170
            Visible = True
            Siralama = False
            CokluTus = False
            Sirala1_Rengi = clBlack
            Sirala2_Rengi = clBlack
          end
          item
            Color = 13434879
            Expanded = False
            FieldName = 'SUMGIRMIK'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 114
            Visible = True
            Siralama = False
            CokluTus = False
            Sirala1_Rengi = clBlack
            Sirala2_Rengi = clBlack
          end
          item
            Color = 13434879
            Expanded = False
            FieldName = 'SUMCIKMIK'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 101
            Visible = True
            Siralama = False
            CokluTus = False
            Sirala1_Rengi = clBlack
            Sirala2_Rengi = clBlack
          end
          item
            Color = 13434879
            Expanded = False
            FieldName = 'Miktar'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 99
            Visible = True
            Siralama = False
            CokluTus = False
            Sirala1_Rengi = clBlack
            Sirala2_Rengi = clBlack
          end
          item
            Color = 13434879
            Expanded = False
            FieldName = 'Durum'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 53
            Visible = True
            Siralama = False
            CokluTus = False
            Sirala1_Rengi = clBlack
            Sirala2_Rengi = clBlack
          end>
      end
      object DBOnlineEdit1: TDBTechEdit
        Left = 469
        Top = 133
        Width = 100
        Height = 19
        Color = 12189695
        Ctl3D = False
        DataField = 'Miktar'
        DataSource = DMStok.StokKToplamDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        RenkGiris = clInfoBk
        RenkCikis = clWhite
        Hizalama = taRightJustify
      end
    end
  end
end
