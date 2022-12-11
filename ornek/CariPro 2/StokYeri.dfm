object FStokYeri: TFStokYeri
  Left = 217
  Top = 169
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = 'Stok Yerleri'
  ClientHeight = 366
  ClientWidth = 652
  Color = clBtnFace
  Constraints.MaxHeight = 400
  Constraints.MaxWidth = 660
  Constraints.MinHeight = 393
  Constraints.MinWidth = 660
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 652
    Height = 366
    Align = alClient
    BevelInner = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 255
      Height = 362
      Align = alLeft
      BevelInner = bvLowered
      TabOrder = 0
      object psDBTreeView1: TTechDBTree
        Left = 2
        Top = 2
        Width = 251
        Height = 358
        Align = alClient
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = 13041663
        DragMode = dmAutomatic
        Indent = 19
        MultiSelectStyle = [msSiblingOnly]
        ReadOnly = True
        TabOrder = 0
        SilmeMesaji = 'Silmek istedi'#287'inizden emin misiniz?'
        ChildItemCount = 0
        FieldID = 'STOKYERIKOD'
        FieldParent = 'ANANO'
        FieldText = 'STOKYERIADI'
        FieldState = 'ALTNO'
        FieldParentKontrol = 'KONTROLNO'
        CheckDurum = False
        DataSource = DMSabit.StokYeriIBQDS
        OnlineOptions = [dtInsertEnabled, dtDeleteEnabled, dtCascadeDeleteEnabled, dtDragDropEnabled, dtArrowsEnabled]
      end
    end
    object Panel3: TPanel
      Left = 257
      Top = 2
      Width = 393
      Height = 362
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 1
      object Label1: TLabel
        Left = 36
        Top = 12
        Width = 60
        Height = 13
        Caption = 'Stok Yeri No'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 30
        Top = 36
        Width = 64
        Height = 13
        Caption = 'Stok Yeri  Ad'#305
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 29
        Top = 60
        Width = 65
        Height = 13
        Caption = 'Kullan'#305'm Alan'#305
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 67
        Top = 106
        Width = 27
        Height = 13
        Caption = 'Adres'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 58
        Top = 130
        Width = 36
        Height = 13
        Caption = 'Telefon'
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 56
        Top = 154
        Width = 38
        Height = 13
        Caption = 'Sorumlu'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 64
        Top = 178
        Width = 30
        Height = 13
        Caption = 'Hacim'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 256
        Top = 178
        Width = 24
        Height = 13
        Caption = 'K'#252'tle'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 77
        Top = 250
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
      object Label14: TLabel
        Left = 34
        Top = 202
        Width = 60
        Height = 13
        Caption = 'Sipari'#351' G'#252'n'#252
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 35
        Top = 226
        Width = 59
        Height = 13
        Caption = 'Teslim G'#252'n'#252
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBTechEdit
        Left = 104
        Top = 8
        Width = 134
        Height = 21
        Color = 13041663
        DataField = 'STOKYERINO'
        DataSource = DMSabit.StokYeriIBQDS
        ReadOnly = True
        TabOrder = 0
        RenkGiris = clAqua
        RenkCikis = 13041663
      end
      object DBEdit2: TDBTechEdit
        Left = 104
        Top = 32
        Width = 134
        Height = 21
        Color = 13041663
        DataField = 'STOKYERIADI'
        DataSource = DMSabit.StokYeriIBQDS
        TabOrder = 1
        RenkGiris = clAqua
        RenkCikis = 13041663
        BuyukKucuk = True
      end
      object DBEdit3: TDBTechEdit
        Left = 104
        Top = 56
        Width = 134
        Height = 21
        Color = 13041663
        DataField = 'KULLANIMALANI'
        DataSource = DMSabit.StokYeriIBQDS
        TabOrder = 2
        OnKeyPress = FormKeyPress
        RenkGiris = clAqua
        RenkCikis = 13041663
        BuyukKucuk = True
      end
      object DBEdit8: TDBTechEdit
        Left = 104
        Top = 102
        Width = 281
        Height = 21
        Color = 13041663
        DataField = 'ADRES'
        DataSource = DMSabit.StokYeriIBQDS
        TabOrder = 5
        RenkGiris = clAqua
        RenkCikis = 13041663
        BuyukKucuk = True
      end
      object DBEdit9: TDBTechEdit
        Left = 104
        Top = 126
        Width = 157
        Height = 21
        Color = 13041663
        DataField = 'TELEFON'
        DataSource = DMSabit.StokYeriIBQDS
        MaxLength = 14
        TabOrder = 6
        RenkGiris = clAqua
        RenkCikis = 13041663
        BuyukKucuk = True
      end
      object DBEdit10: TDBTechEdit
        Left = 104
        Top = 150
        Width = 158
        Height = 21
        Color = 13041663
        DataField = 'SORUMLU'
        DataSource = DMSabit.StokYeriIBQDS
        TabOrder = 7
        OnKeyPress = FormKeyPress
        RenkGiris = clAqua
        RenkCikis = 13041663
        BuyukKucuk = True
      end
      object DBEdit11: TDBTechEdit
        Left = 104
        Top = 174
        Width = 105
        Height = 21
        Color = 13041663
        DataField = 'HACIM'
        DataSource = DMSabit.StokYeriIBQDS
        TabOrder = 8
        RenkGiris = clAqua
        RenkCikis = 13041663
      end
      object DBEdit12: TDBTechEdit
        Left = 288
        Top = 175
        Width = 97
        Height = 21
        Color = 13041663
        DataField = 'KUTLE'
        DataSource = DMSabit.StokYeriIBQDS
        TabOrder = 9
        RenkGiris = clAqua
        RenkCikis = 13041663
      end
      object DBMemo1: TDBMemo
        Left = 104
        Top = 246
        Width = 281
        Height = 75
        Color = 13041663
        DataField = 'NOTU'
        DataSource = DMSabit.StokYeriIBQDS
        TabOrder = 12
      end
      object DBEdit13: TDBTechEdit
        Left = 104
        Top = 198
        Width = 281
        Height = 21
        Color = 13041663
        DataField = 'SIPGUN'
        DataSource = DMSabit.StokYeriIBQDS
        TabOrder = 10
        RenkGiris = clAqua
        RenkCikis = 13041663
        BuyukKucuk = True
      end
      object DBEdit14: TDBTechEdit
        Left = 104
        Top = 222
        Width = 281
        Height = 21
        Color = 13041663
        DataField = 'TESGUN'
        DataSource = DMSabit.StokYeriIBQDS
        TabOrder = 11
        RenkGiris = clAqua
        RenkCikis = 13041663
        BuyukKucuk = True
      end
      object BitBtn11: TTechButton
        Left = 10
        Top = 332
        Width = 66
        Height = 23
        Caption = '&Ekle'
        TabOrder = 13
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BitBtn11Click
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
      object BitBtn12: TTechButton
        Left = 199
        Top = 332
        Width = 58
        Height = 23
        Caption = '&Sil'
        TabOrder = 15
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BitBtn12Click
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
      object BitBtn2: TTechButton
        Left = 321
        Top = 332
        Width = 66
        Height = 23
        Caption = '&Kapat'
        TabOrder = 17
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
          '&Kapat')
        Multiline = False
        Cizim = True
      end
      object DBCheckBox1: TTechDBCheckbox
        Left = 104
        Top = 80
        Width = 65
        Height = 17
        Caption = 'Aktif'
        TabOrder = 3
        TabStop = True
        Color = clBtnFace
        ParentColor = False
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
        DataField = 'AKTIVITE'
        DataSource = DMSabit.StokYeriIBQDS
        ValueChecked = '1'
        ValueUnChecked = '2'
      end
      object DBCheckBox2: TTechDBCheckbox
        Left = 183
        Top = 80
        Width = 55
        Height = 17
        Caption = 'Bloke'
        TabOrder = 4
        TabStop = True
        Color = clBtnFace
        ParentColor = False
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
        DataField = 'BLOKE'
        DataSource = DMSabit.StokYeriIBQDS
        ValueChecked = '1'
        ValueUnChecked = '2'
      end
      object BitBtn1: TTechButton
        Left = 80
        Top = 332
        Width = 116
        Height = 23
        Caption = '&Alt Stok Yeri Ekle'
        TabOrder = 14
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
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
          '&Alt Stok Yeri Ekle')
        Multiline = False
        Cizim = True
      end
      object BitBtn3: TTechButton
        Left = 259
        Top = 332
        Width = 58
        Height = 23
        Caption = 'Se&'#231
        TabOrder = 16
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
        OnClick = BitBtn3Click
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
          'Se&'#231)
        Multiline = False
        Cizim = True
      end
    end
  end
end
