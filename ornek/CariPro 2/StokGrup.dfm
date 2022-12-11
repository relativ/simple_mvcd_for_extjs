object FStokGrup: TFStokGrup
  Left = 322
  Top = 135
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = ' Stok Gruplar'#305
  ClientHeight = 406
  ClientWidth = 422
  Color = clBtnFace
  Constraints.MaxHeight = 440
  Constraints.MaxWidth = 430
  Constraints.MinHeight = 433
  Constraints.MinWidth = 430
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
    Width = 422
    Height = 406
    Align = alClient
    BevelInner = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 6
      Width = 409
      Height = 363
      Caption = 'Stok Guruplar'#305'  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnExit = GroupBox1Exit
      object Label2: TLabel
        Left = 39
        Top = 319
        Width = 41
        Height = 13
        Caption = 'Grup Ad'#305
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit2: TDBTechEdit
        Left = 39
        Top = 335
        Width = 322
        Height = 21
        Color = 13041663
        DataField = 'GRUPADI'
        DataSource = DMStok.StokGruplariDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
        RenkGiris = clAqua
        RenkCikis = 13041663
        BuyukKucuk = True
      end
      object psDBTreeView1: TTechDBTree
        Left = 39
        Top = 18
        Width = 322
        Height = 295
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
        Indent = 19
        ParentFont = False
        ReadOnly = True
        RightClickSelect = True
        TabOrder = 0
        OnDblClick = psDBTreeView1DblClick
        OnEnter = psDBTreeView1Enter
        OnKeyDown = psDBTreeView1KeyDown
        SilmeMesaji = 'Silmek istedi'#287'inizden emin misiniz?'
        ChildItemCount = 0
        FieldID = 'GRUPLARKOD'
        FieldParent = 'ANANO'
        FieldText = 'GRUPADI'
        FieldParentKontrol = 'KONTROLNO'
        CheckDurum = False
        DataSource = DMStok.StokGruplariDS
        OnlineOptions = [dtInsertEnabled, dtDeleteEnabled, dtCascadeDeleteEnabled, dtArrowsEnabled]
      end
    end
    object BitBtn11: TTechButton
      Left = 9
      Top = 376
      Width = 91
      Height = 25
      Caption = '&Gurup Ekle'
      TabOrder = 1
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
        '&Gurup Ekle')
      Multiline = False
      Cizim = True
    end
    object BitBtn1: TTechButton
      Left = 103
      Top = 376
      Width = 108
      Height = 25
      Caption = 'Alt Gurup Ekle'
      TabOrder = 2
      TabStop = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
        'Alt Gurup Ekle')
      Multiline = False
      Cizim = True
    end
    object BitBtn12: TTechButton
      Left = 213
      Top = 376
      Width = 63
      Height = 25
      Caption = 'Sil'
      TabOrder = 3
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
        'Sil')
      Multiline = False
      Cizim = True
    end
    object BitBtn2: TTechButton
      Left = 278
      Top = 376
      Width = 60
      Height = 25
      Caption = 'Se'#231
      TabOrder = 4
      TabStop = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      OnClick = BitBtn2Click
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
    object BitBtn3: TTechButton
      Left = 341
      Top = 376
      Width = 75
      Height = 25
      Caption = 'Kapat'
      TabOrder = 5
      TabStop = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
