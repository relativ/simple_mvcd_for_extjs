object FCariHesap: TFCariHesap
  Left = 129
  Top = 112
  BorderStyle = bsSingle
  Caption = 'Cari Hesap'
  ClientHeight = 532
  ClientWidth = 839
  Color = clBtnFace
  Constraints.MinHeight = 559
  Constraints.MinWidth = 847
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 839
    Height = 532
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 13816575
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 259
      Top = 37
      Width = 3
      Height = 325
      Cursor = crHSplit
    end
    object Splitter2: TSplitter
      Left = 2
      Top = 397
      Width = 835
      Height = 3
      Cursor = crVSplit
      Align = alBottom
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 835
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Cari Hesap'
      Color = 13395456
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel4: TPanel
      Left = 2
      Top = 362
      Width = 835
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      Color = 13395456
      TabOrder = 1
      object Panel9: TPanel
        Left = 559
        Top = 0
        Width = 276
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        Color = 13395456
        TabOrder = 1
        DesignSize = (
          276
          35)
        object BitBtn3: TTechButton
          Left = 197
          Top = 6
          Width = 75
          Height = 25
          Caption = '&Kapat'
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
            '&Kapat')
          Multiline = False
          Cizim = True
        end
        object BitBtn1: TBitBtn
          Left = 115
          Top = 6
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Yenile'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
        end
      end
      object OnlineEdit2: TTechEdit
        Left = 252
        Top = 7
        Width = 159
        Height = 21
        RenkGiris = clAqua
        RenkCikis = clInfoBk
        BuyukKucuk = True
        Color = clInfoBk
        TabOrder = 0
        OnKeyPress = OnlineEdit2KeyPress
      end
      object BLastPage: TTechButton
        Left = 204
        Top = 5
        Width = 45
        Height = 25
        Caption = 'So&n'
        TabOrder = 2
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
        Left = 127
        Top = 5
        Width = 75
        Height = 25
        Caption = 'Son&raki'
        TabOrder = 3
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
        Left = 50
        Top = 5
        Width = 75
        Height = 25
        Caption = #214'n&ceki'
        TabOrder = 4
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
        Left = 3
        Top = 5
        Width = 45
        Height = 25
        Caption = #304'l&k'
        TabOrder = 5
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
      object BitBtn5: TTechButton
        Left = 451
        Top = 5
        Width = 30
        Height = 25
        TabOrder = 6
        TabStop = True
        OnClick = BitBtn5Click
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
      object BitBtn4: TTechButton
        Left = 420
        Top = 4
        Width = 29
        Height = 26
        TabOrder = 7
        TabStop = True
        OnClick = BitBtn4Click
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
        Spacing = 0
        CanRepeat = False
        ShowDownArrow = False
        Multiline = False
        Cizim = True
      end
    end
    object PageControl1: TPageControl
      Left = 262
      Top = 37
      Width = 575
      Height = 325
      ActivePage = TabSheet1
      Align = alClient
      Style = tsFlatButtons
      TabIndex = 0
      TabOrder = 2
      object TabSheet1: TTabSheet
        Caption = '  Cari Hesap  '
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 567
          Height = 294
          Align = alClient
          BevelOuter = bvNone
          Color = 13816575
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 0
            Top = 95
            Width = 567
            Height = 199
            Align = alClient
            Caption = 'Cari '#304#351'lemler Listesi '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object OnlineDBGrid1: TTechDBGrid
              Left = 2
              Top = 15
              Width = 563
              Height = 182
              Align = alClient
              DataSource = DMCari.CariislemDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              PopupMenu = PopupMenu1
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnDrawColumnCell = OnlineDBGrid1DrawColumnCell
              OnDblClick = OnlineDBGrid1DblClick
              OnKeyDown = OnlineDBGrid1KeyDown
              OnKeyPress = OnlineDBGrid1KeyPress
              About = 
                'Online Yaz'#305'l'#305'm/ Serkan G'#252'ne'#351' '#13#10'E-Mail: online@onlinebilgisayar.c' +
                'om. '#13#10'Web: www.onlinebilgisayar.com'
              WordExport = True
              SatirRenk = True
              SatirRenk1 = 14811135
              SatirFontRengi = clBlack
              SatirFontRengi2 = clBlack
              SatirRenk2 = 14155735
              OnContextPopup = OnlineDBGrid1ContextPopup
              DefaultRowHeight = 17
              GridOptions = [goRowSizing, goColSizing]
              Columns = <
                item
                  Color = 14811135
                  Expanded = False
                  FieldName = 'TARIH'
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
                  FieldName = 'CAISLEMNO'
                  Title.Alignment = taCenter
                  Width = 66
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = 8454016
                  Sirala2_Rengi = 16777088
                end
                item
                  Color = 14811135
                  Expanded = False
                  FieldName = 'ISLEMTUR'
                  PickList.Strings = (
                    'Tahsilat'
                    #214'deme'
                    'Giri'#351' Dekontu'
                    #199#305'k'#305#351' Dekontu'
                    'D'#246'nem Ba'#351#305' Borcu'
                    'D'#246'nem Ba'#351#305' Alaca'#287#305)
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
                  FieldName = 'ACIKLAMA'
                  Title.Alignment = taCenter
                  Width = 216
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
                  Width = 108
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = 8454016
                  Sirala2_Rengi = 16777088
                end
                item
                  Color = 14811135
                  Expanded = False
                  FieldName = 'TAHSILAT'
                  Title.Alignment = taCenter
                  Width = 101
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = 8454016
                  Sirala2_Rengi = 16777088
                end
                item
                  Color = 14811135
                  Expanded = False
                  FieldName = 'C_PARABIRIMI'
                  PickList.Strings = (
                    'TL'
                    'USD'
                    'EU')
                  Title.Alignment = taCenter
                  Width = 40
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = 8454016
                  Sirala2_Rengi = 16777088
                end
                item
                  Color = 14811135
                  Expanded = False
                  FieldName = 'BAKIYE'
                  Title.Alignment = taCenter
                  Width = 113
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = 8454016
                  Sirala2_Rengi = 16777088
                end
                item
                  Alignment = taCenter
                  Color = 14811135
                  Expanded = False
                  FieldName = 'C_DURUM'
                  Title.Alignment = taCenter
                  Width = 20
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
                  Width = 108
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = 8454016
                  Sirala2_Rengi = 16777088
                end
                item
                  Color = 14811135
                  Expanded = False
                  FieldName = 'CARIKURU'
                  Title.Alignment = taCenter
                  Width = 106
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = 8454016
                  Sirala2_Rengi = 16777088
                end
                item
                  Color = 14811135
                  Expanded = False
                  FieldName = 'D_TEDIYE'
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
                  FieldName = 'D_TAHSILAT'
                  Title.Alignment = taCenter
                  Width = 99
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
            Width = 567
            Height = 95
            Align = alTop
            BevelOuter = bvNone
            Color = 13816575
            TabOrder = 1
            object GroupBox1: TGroupBox
              Left = 1
              Top = 0
              Width = 408
              Height = 91
              Caption = 'Cari Bilgiler  '
              Color = 13816575
              Ctl3D = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              object Label1: TLabel
                Left = 32
                Top = 20
                Width = 35
                Height = 13
                Caption = 'Cari No'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label2: TLabel
                Left = 11
                Top = 44
                Width = 56
                Height = 13
                Caption = 'Ad'#305' (Unvan)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label3: TLabel
                Left = 35
                Top = 68
                Width = 32
                Height = 13
                Caption = 'Soyad'#305
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label27: TLabel
                Left = 224
                Top = 20
                Width = 40
                Height = 13
                Caption = 'Cari Kod'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object DBOnlineEdit4: TDBTechEdit
                Left = 72
                Top = 16
                Width = 121
                Height = 21
                TabStop = False
                Color = 14811135
                DataField = 'CARINO'
                DataSource = DMCari.CariKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnChange = DBOnlineEdit4Change
                RenkGiris = 16777088
                RenkCikis = 14811135
                BuyukKucuk = True
              end
              object DBOnlineEdit7: TDBTechEdit
                Left = 72
                Top = 40
                Width = 329
                Height = 21
                Color = 14811135
                DataField = 'CARIUNVAN1'
                DataSource = DMCari.CariKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
                OnChange = DBOnlineEdit7Change
                RenkGiris = 16777088
                RenkCikis = 14811135
                BuyukKucuk = True
              end
              object DBOnlineEdit1: TDBTechEdit
                Left = 72
                Top = 64
                Width = 329
                Height = 21
                Color = 14811135
                DataField = 'CARIUNVAN2'
                DataSource = DMCari.CariKartDS
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
              object OnlineEdit1: TTechEdit
                Left = 72
                Top = 16
                Width = 121
                Height = 21
                RenkGiris = clAqua
                RenkCikis = 14155775
                Color = 14811135
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnKeyDown = OnlineEdit1KeyDown
                OnKeyPress = OnlineEdit1KeyPress
              end
              object DBOnlineEdit20: TDBTechEdit
                Left = 272
                Top = 16
                Width = 121
                Height = 21
                TabStop = False
                Color = 14811135
                DataField = 'KOD'
                DataSource = DMCari.CariKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
                OnChange = DBOnlineEdit20Change
                RenkGiris = 16777088
                RenkCikis = 14811135
                BuyukKucuk = True
              end
              object OnlineEdit8: TTechEdit
                Left = 272
                Top = 16
                Width = 121
                Height = 21
                RenkGiris = clAqua
                RenkCikis = 14155775
                BuyukKucuk = True
                Color = 14811135
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
                OnKeyDown = OnlineEdit1KeyDown
                OnKeyPress = OnlineEdit8KeyPress
              end
            end
            object GroupBox3: TGroupBox
              Left = 417
              Top = -1
              Width = 200
              Height = 91
              Caption = 'Bakiye Bilgileri '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              DesignSize = (
                200
                91)
              object DBText2: TDBText
                Left = 34
                Top = 43
                Width = 138
                Height = 18
                Alignment = taCenter
                Color = 4227327
                DataField = 'C_PARABIRIMI'
                DataSource = DMCari.CariKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object DBOnlineEdit2: TDBTechEdit
                Left = 33
                Top = 17
                Width = 139
                Height = 21
                Color = 14811135
                DataField = 'BAKIYE'
                DataSource = DMCari.CariKartDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                OnChange = DBOnlineEdit3Change
                RenkGiris = 16777088
                RenkCikis = 14811135
                BuyukKucuk = True
              end
              object DBOnlineEdit3: TDBTechEdit
                Left = 33
                Top = 67
                Width = 139
                Height = 16
                TabStop = False
                Anchors = []
                BevelEdges = []
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Color = 13816575
                Ctl3D = False
                DataField = 'DURUM'
                DataSource = DMCari.CariKartDS
                DragCursor = crHelp
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
                OnChange = DBOnlineEdit3Change
                RenkDurum = False
                RenkGiris = clInfoBk
                RenkCikis = clWhite
                Hizalama = taCenter
              end
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = '  Stok Hareketleri  '
        ImageIndex = 1
        OnShow = TabSheet2Show
        object GroupBox4: TGroupBox
          Left = 0
          Top = 0
          Width = 567
          Height = 294
          Align = alClient
          Caption = ' Stok Hareketleri '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object OnlineDBGrid2: TTechDBGrid
            Left = 2
            Top = 15
            Width = 563
            Height = 277
            Align = alClient
            BorderStyle = bsNone
            DataSource = DMCari.CariStokDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
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
            SatirRenk1 = 13758931
            SatirFontRengi = clBlack
            SatirFontRengi2 = clBlack
            SatirRenk2 = 14286847
            DefaultRowHeight = 17
            GridOptions = []
            Columns = <
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'TARIH'
                Title.Alignment = taCenter
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'ISLEMTUR'
                Title.Alignment = taCenter
                Width = 99
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'STOKADI'
                Title.Alignment = taCenter
                Width = 170
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'GIRISMIKTAR'
                Title.Alignment = taCenter
                Width = 79
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'CIKISMIKTAR'
                Title.Alignment = taCenter
                Width = 75
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'BIRIM'
                Title.Alignment = taCenter
                Width = 39
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'BIRIMFIYAT'
                Title.Alignment = taCenter
                Width = 106
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Alignment = taCenter
                Color = clInfoBk
                Expanded = False
                FieldName = 'PARABIRIM'
                Title.Alignment = taCenter
                Width = 56
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'ISKONTO'
                Title.Alignment = taCenter
                Width = 52
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'TEDIYE'
                Title.Alignment = taCenter
                Width = 142
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'TAHSILAT'
                Title.Alignment = taCenter
                Width = 137
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'VADE'
                Title.Alignment = taCenter
                Width = 105
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end>
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = ' '#199'ek Hareketleri  '
        ImageIndex = 2
        OnShow = TabSheet3Show
        object GroupBox5: TGroupBox
          Left = 0
          Top = 0
          Width = 567
          Height = 294
          Align = alClient
          Caption = ' '#199'ek Hareketleri  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object OnlineDBGrid3: TTechDBGrid
            Left = 2
            Top = 15
            Width = 563
            Height = 277
            Align = alClient
            BorderStyle = bsNone
            DataSource = DMCari.CariCekDS
            PopupMenu = PopupMenu1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clNavy
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnKeyPress = OnlineDBGrid1KeyPress
            About = 
              'Online Yaz'#305'l'#305'm/ Serkan G'#252'ne'#351' '#13#10'E-Mail: online@onlinebilgisayar.c' +
              'om. '#13#10'Web: www.onlinebilgisayar.com'
            WordExport = True
            SatirRenk = False
            SatirRenk1 = 13758931
            SatirFontRengi = clBlack
            SatirFontRengi2 = clBlack
            SatirRenk2 = 14286847
            DefaultRowHeight = 17
            GridOptions = []
            Columns = <
              item
                Color = 14155775
                Expanded = False
                FieldName = 'TARIH'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = 14155775
                Expanded = False
                FieldName = 'CAISLEMNO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = 14155775
                Expanded = False
                FieldName = 'ISLEMTUR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                PickList.Strings = (
                  #199'ek Giri'#351'i'
                  #199'ek Yazma')
                Title.Alignment = taCenter
                Width = 124
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = 14155775
                Expanded = False
                FieldName = 'ACIKLAMA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Width = 203
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = 14155775
                Expanded = False
                FieldName = 'VADE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = 14155775
                Expanded = False
                FieldName = 'TAHSILAT'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Width = 109
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = 14155775
                Expanded = False
                FieldName = 'TEDIYE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Width = 111
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end>
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = ' Banka Hareketleri '
        ImageIndex = 3
        OnShow = TabSheet4Show
        object GroupBox6: TGroupBox
          Left = 0
          Top = 0
          Width = 567
          Height = 294
          Align = alClient
          Caption = ' Banka Hareketleri  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object OnlineDBGrid6: TTechDBGrid
            Left = 2
            Top = 15
            Width = 563
            Height = 277
            Align = alClient
            BorderStyle = bsNone
            DataSource = DMCari.CariBankaDS
            PopupMenu = PopupMenu1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clNavy
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = OnlineDBGrid1DrawColumnCell
            OnKeyPress = OnlineDBGrid1KeyPress
            About = 
              'Online Yaz'#305'l'#305'm/ Serkan G'#252'ne'#351' '#13#10'E-Mail: online@onlinebilgisayar.c' +
              'om. '#13#10'Web: www.onlinebilgisayar.com'
            WordExport = True
            SatirRenk = False
            SatirRenk1 = 13758931
            SatirFontRengi = clBlack
            SatirFontRengi2 = clBlack
            SatirRenk2 = 14286847
            DefaultRowHeight = 17
            GridOptions = []
            Columns = <
              item
                Color = 14155775
                Expanded = False
                FieldName = 'TARIH'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = 14155775
                Expanded = False
                FieldName = 'CAISLEMNO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ReadOnly = True
                Title.Alignment = taCenter
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = 14155775
                Expanded = False
                FieldName = 'ISLEMTUR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                PickList.Strings = (
                  #199'ek Giri'#351'i'
                  #199'ek Yazma')
                Title.Alignment = taCenter
                Width = 124
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = 14155775
                Expanded = False
                FieldName = 'ACIKLAMA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Width = 203
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = 14155775
                Expanded = False
                FieldName = 'PARAGIRIS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Width = 136
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = 14155775
                Expanded = False
                FieldName = 'PARACIKIS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Width = 135
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Alignment = taCenter
                Color = 14155775
                Expanded = False
                FieldName = 'PARABIRIMI'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Width = 45
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end>
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = '   Cari Bilgiler     '
        ImageIndex = 4
        object GroupBox7: TGroupBox
          Left = 5
          Top = 3
          Width = 476
          Height = 342
          Caption = '  Cari Bilgiler  '
          Color = 16769968
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          OnExit = GroupBox7Exit
          object Label4: TLabel
            Left = 32
            Top = 20
            Width = 35
            Height = 13
            Caption = 'Cari No'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 8
            Top = 44
            Width = 59
            Height = 13
            Caption = 'Ad'#305' ('#220'nvan) '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 35
            Top = 68
            Width = 32
            Height = 13
            Caption = 'Soyad'#305
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 29
            Top = 92
            Width = 38
            Height = 13
            Caption = 'Cari Tipi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 30
            Top = 140
            Width = 37
            Height = 13
            Caption = 'Mahalle'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 261
            Top = 164
            Width = 45
            Height = 13
            Caption = 'Apartman'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 275
            Top = 92
            Width = 31
            Height = 13
            Caption = 'Sekt'#246'r'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 275
            Top = 140
            Width = 31
            Height = 13
            Caption = 'Cadde'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 53
            Top = 188
            Width = 14
            Height = 13
            Caption = 'No'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 289
            Top = 188
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
          object Label14: TLabel
            Left = 125
            Top = 188
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
          object Label15: TLabel
            Left = 283
            Top = 235
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
          object Label16: TLabel
            Left = 8
            Top = 259
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
          object Label17: TLabel
            Left = 254
            Top = 259
            Width = 52
            Height = 13
            Caption = 'Vergi Nosu'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 36
            Top = 164
            Width = 31
            Height = 13
            Caption = 'Sokak'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 31
            Top = 212
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
          object Label19: TLabel
            Left = 46
            Top = 235
            Width = 21
            Height = 13
            Caption = 'Gsm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 48
            Top = 283
            Width = 19
            Height = 13
            Caption = 'Mail'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 283
            Top = 283
            Width = 23
            Height = 13
            Caption = 'Web'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 18
            Top = 116
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
          object Label24: TLabel
            Left = 250
            Top = 116
            Width = 56
            Height = 13
            Caption = 'Fiyat Se'#231'imi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 144
            Top = 20
            Width = 40
            Height = 13
            Caption = 'Cari Kod'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 39
            Top = 307
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
          object DBOnlineEdit5: TDBTechEdit
            Left = 72
            Top = 16
            Width = 65
            Height = 21
            Color = 14811135
            DataField = 'CARINO'
            DataSource = DMCari.CariKartDS
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
          object DBOnlineEdit6: TDBTechEdit
            Left = 72
            Top = 40
            Width = 273
            Height = 21
            Color = 14811135
            DataField = 'CARIUNVAN1'
            DataSource = DMCari.CariKartDS
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
          object DBOnlineEdit8: TDBTechEdit
            Left = 72
            Top = 64
            Width = 177
            Height = 21
            Color = 14811135
            DataField = 'CARIUNVAN2'
            DataSource = DMCari.CariKartDS
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
          object DBOnlineEdit10: TDBTechEdit
            Left = 72
            Top = 136
            Width = 169
            Height = 21
            Color = 14811135
            DataField = 'MAHALLE'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
          object DBOnlineEdit9: TDBTechEdit
            Left = 312
            Top = 160
            Width = 137
            Height = 21
            Color = 14811135
            DataField = 'APARTMAN'
            DataSource = DMCari.CariKartDS
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
          object DBOnlineEdit11: TDBTechEdit
            Left = 312
            Top = 136
            Width = 137
            Height = 21
            Color = 14811135
            DataField = 'CADDE'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
          object DBOnlineEdit12: TDBTechEdit
            Left = 72
            Top = 184
            Width = 49
            Height = 21
            Color = 14811135
            DataField = 'NOSU'
            DataSource = DMCari.CariKartDS
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
          object DBOnlineEdit13: TDBTechEdit
            Left = 312
            Top = 207
            Width = 113
            Height = 21
            Color = 14811135
            DataField = 'TEL3'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            TabOrder = 7
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
          object DBOnlineEdit14: TDBTechEdit
            Left = 313
            Top = 231
            Width = 112
            Height = 21
            Color = 14811135
            DataField = 'FAKS'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            TabOrder = 8
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
          object DBOnlineEdit15: TDBTechEdit
            Left = 72
            Top = 255
            Width = 145
            Height = 21
            Color = 14811135
            DataField = 'VERDAIRE'
            DataSource = DMCari.CariKartDS
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
          object DBOnlineEdit16: TDBTechEdit
            Left = 313
            Top = 255
            Width = 112
            Height = 21
            Color = 14811135
            DataField = 'VERGINO'
            DataSource = DMCari.CariKartDS
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
          object DBOnlineEdit17: TDBTechEdit
            Left = 72
            Top = 160
            Width = 153
            Height = 21
            Color = 14811135
            DataField = 'SOKAK'
            DataSource = DMCari.CariKartDS
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
          object DBOnlineLookupCombo1: TDBTechLookupCombo
            Left = 312
            Top = 184
            Width = 137
            Height = 21
            Color = 14811135
            DataField = 'ILCEKOD'
            DataSource = DMCari.CariKartDS
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
            TabOrder = 12
            RenkGiris = 16777088
            RenkCikis = 14811135
          end
          object DBOnlineLookupCombo2: TDBTechLookupCombo
            Left = 136
            Top = 184
            Width = 129
            Height = 21
            Color = 14811135
            DataField = 'SEHIRKOD'
            DataSource = DMCari.CariKartDS
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
            TabOrder = 13
            RenkGiris = 16777088
            RenkCikis = 14811135
          end
          object OnlineDBCheckBox1: TTechDBCheckbox
            Left = 392
            Top = 15
            Width = 61
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
            Checked = True
            Transparent = False
            DataField = 'AKTIVITE'
            DataSource = DMCari.CariKartDS
            ValueChecked = '1'
            ValueUnChecked = '2'
          end
          object OnlineDBCheckBox2: TTechDBCheckbox
            Left = 392
            Top = 37
            Width = 61
            Height = 17
            Caption = 'Bloke'
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
            DataField = 'BLOKE'
            DataSource = DMCari.CariKartDS
            ValueChecked = '1'
            ValueUnChecked = '2'
          end
          object DBOnlineLookupCombo3: TDBTechLookupCombo
            Left = 312
            Top = 88
            Width = 139
            Height = 21
            Color = 14811135
            DataField = 'SEKTORKOD'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'SEKKOD'
            ListField = 'SEKTOR'
            ListSource = DMSabit.SektorDS
            NullValueKey = 46
            ParentFont = False
            TabOrder = 16
            RenkGiris = 16777088
            RenkCikis = 14811135
          end
          object DBOnlineLookupCombo4: TDBTechLookupCombo
            Left = 72
            Top = 88
            Width = 177
            Height = 21
            Color = 14811135
            DataField = 'CARITIPKOD'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'CARITIPKOD'
            ListField = 'TIPADI'
            ListSource = DMSabit.CariTipDS
            ParentFont = False
            TabOrder = 17
            RenkGiris = 16777088
            RenkCikis = 14811135
          end
          object DBOnlineEdit18: TDBTechEdit
            Left = 72
            Top = 208
            Width = 113
            Height = 21
            Color = 14811135
            DataField = 'TEL1'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            TabOrder = 18
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
          object DBOnlineEdit19: TDBTechEdit
            Left = 193
            Top = 208
            Width = 112
            Height = 21
            Color = 14811135
            DataField = 'TEL2'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            TabOrder = 19
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
          object DBOnlineEdit21: TDBTechEdit
            Left = 73
            Top = 231
            Width = 112
            Height = 21
            Color = 14811135
            DataField = 'GSM'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            TabOrder = 20
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
          object DBOnlineEdit22: TDBTechEdit
            Left = 72
            Top = 279
            Width = 193
            Height = 21
            Color = 14811135
            DataField = 'MAIL'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 21
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
          object DBOnlineEdit23: TDBTechEdit
            Left = 313
            Top = 279
            Width = 136
            Height = 21
            Color = 14811135
            DataField = 'WEB'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 22
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
          object DBOnlineCombo2: TDBTechCombo
            Left = 312
            Top = 112
            Width = 139
            Height = 21
            Color = 14811135
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 0
            ParentFont = False
            TabOrder = 23
            Items.Strings = (
              'Fiyat Se'#231'im 1'
              'Fiyat Se'#231'im 2'
              'Fiyat Se'#231'im 3')
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
            KayitList.Strings = (
              '1'
              '2'
              '3')
            DataField = 'FIYATSECIM'
            DataSource = DMCari.CariKartDS
          end
          object DBOnlineEdit24: TDBTechEdit
            Left = 192
            Top = 16
            Width = 153
            Height = 21
            Color = 14811135
            DataField = 'KOD'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 24
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
          object DBOnlineLookupCombo5: TDBTechLookupCombo
            Left = 72
            Top = 112
            Width = 177
            Height = 21
            Color = 14811135
            DataField = 'PARABIRIMKOD'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'PARABIRKOD'
            ListField = 'PARABIRIMI'
            ListSource = DMSabit.ParaBirimiDS
            ParentFont = False
            TabOrder = 25
            RenkGiris = 16777088
            RenkCikis = 14811135
          end
          object DBOnlineEdit25: TDBTechEdit
            Left = 73
            Top = 303
            Width = 376
            Height = 21
            Color = 14811135
            DataField = 'YETKILI'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 26
            RenkGiris = 16777088
            RenkCikis = 14811135
            BuyukKucuk = True
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = ' Teklifler '
        ImageIndex = 5
        object GroupBox8: TGroupBox
          Left = 0
          Top = 0
          Width = 567
          Height = 294
          Align = alClient
          Caption = ' Bekleyen '#304#351'lemler '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object OnlineDBGrid7: TTechDBGrid
            Left = 2
            Top = 15
            Width = 563
            Height = 277
            Align = alClient
            BorderStyle = bsNone
            DataSource = DMCari.CariStokDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
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
            SatirRenk1 = 13758931
            SatirFontRengi = clBlack
            SatirFontRengi2 = clBlack
            SatirRenk2 = 14286847
            DefaultRowHeight = 17
            GridOptions = []
            Columns = <
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'TARIH'
                Title.Alignment = taCenter
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'ISLEMTUR'
                Title.Alignment = taCenter
                Width = 99
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'STOKADI'
                Title.Alignment = taCenter
                Width = 170
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'GIRISMIKTAR'
                Title.Alignment = taCenter
                Width = 79
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'CIKISMIKTAR'
                Title.Alignment = taCenter
                Width = 75
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'BIRIM'
                Title.Alignment = taCenter
                Width = 39
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'BIRIMFIYAT'
                Title.Alignment = taCenter
                Width = 106
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Alignment = taCenter
                Color = clInfoBk
                Expanded = False
                FieldName = 'PARABIRIM'
                Title.Alignment = taCenter
                Width = 56
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'ISKONTO'
                Title.Alignment = taCenter
                Width = 52
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'TEDIYE'
                Title.Alignment = taCenter
                Width = 142
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'TAHSILAT'
                Title.Alignment = taCenter
                Width = 137
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'VADE'
                Title.Alignment = taCenter
                Width = 105
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end>
          end
        end
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 37
      Width = 257
      Height = 325
      Align = alLeft
      BevelOuter = bvNone
      Color = 14215660
      DockSite = True
      DragKind = dkDock
      DragMode = dmAutomatic
      TabOrder = 3
      Visible = False
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 257
        Height = 325
        Align = alClient
        BevelOuter = bvNone
        Color = 16744448
        DragKind = dkDock
        DragMode = dmAutomatic
        TabOrder = 0
        object OnlineDBGrid4: TTechDBGrid
          Left = 4
          Top = 4
          Width = 249
          Height = 287
          Align = alClient
          BorderStyle = bsNone
          DataSource = DMCari.CariKartDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          About = 
            'Online Yaz'#305'l'#305'm/ Serkan G'#252'ne'#351' '#13#10'E-Mail: online@onlinebilgisayar.c' +
            'om. '#13#10'Web: www.onlinebilgisayar.com'
          WordExport = True
          SatirRenk = True
          SatirRenk1 = 13041663
          SatirFontRengi = clBlack
          SatirFontRengi2 = clBlack
          SatirRenk2 = 13758931
          DefaultRowHeight = 17
          GridOptions = [goColSizing]
          Columns = <
            item
              Color = 14811135
              Expanded = False
              FieldName = 'CARINO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 48
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'TAMADI'
              Title.Alignment = taCenter
              Title.Caption = #220'nvan'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 162
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end>
        end
        object Panel10: TPanel
          Left = 0
          Top = 4
          Width = 4
          Height = 287
          Align = alLeft
          BevelOuter = bvNone
          Color = 16759929
          TabOrder = 0
        end
        object Panel13: TPanel
          Left = 0
          Top = 0
          Width = 257
          Height = 4
          Align = alTop
          BevelOuter = bvNone
          Color = 16759929
          TabOrder = 1
        end
        object Panel14: TPanel
          Left = 0
          Top = 291
          Width = 257
          Height = 34
          Align = alBottom
          BevelOuter = bvNone
          Color = 16759929
          TabOrder = 2
          object OnlineEdit3: TTechEdit
            Left = 2
            Top = 6
            Width = 74
            Height = 21
            RenkGiris = clAqua
            RenkCikis = clInfoBk
            BuyukKucuk = True
            Color = clInfoBk
            TabOrder = 0
            OnKeyPress = OnlineEdit3KeyPress
          end
          object OnlineEdit4: TTechEdit
            Left = 82
            Top = 5
            Width = 170
            Height = 21
            RenkGiris = clAqua
            RenkCikis = clInfoBk
            BuyukKucuk = True
            Color = clInfoBk
            TabOrder = 1
            OnKeyPress = OnlineEdit4KeyPress
          end
        end
        object Panel11: TPanel
          Left = 253
          Top = 4
          Width = 4
          Height = 287
          Align = alRight
          BevelOuter = bvNone
          Color = 16759929
          TabOrder = 4
        end
      end
    end
    object Panel7: TPanel
      Left = 2
      Top = 400
      Width = 835
      Height = 130
      Align = alBottom
      BevelOuter = bvNone
      Color = 14215660
      DockSite = True
      TabOrder = 4
      Visible = False
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 835
        Height = 130
        Align = alClient
        BevelOuter = bvNone
        Color = 16744448
        DragKind = dkDock
        DragMode = dmAutomatic
        TabOrder = 0
        object OnlineDBGrid5: TTechDBGrid
          Left = 8
          Top = 4
          Width = 823
          Height = 92
          Align = alClient
          BorderStyle = bsNone
          DataSource = DMCari.CariKartDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          About = 
            'Online Yaz'#305'l'#305'm/ Serkan G'#252'ne'#351' '#13#10'E-Mail: online@onlinebilgisayar.c' +
            'om. '#13#10'Web: www.onlinebilgisayar.com'
          WordExport = True
          SatirRenk = False
          SatirRenk1 = 13041663
          SatirFontRengi = clBlack
          SatirFontRengi2 = clBlack
          SatirRenk2 = 13758931
          DefaultRowHeight = 17
          GridOptions = [goColSizing]
          Columns = <
            item
              Color = 14155775
              Expanded = False
              FieldName = 'CARINO'
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
              Color = clInfoBk
              Expanded = False
              FieldName = 'CARIUNVAN1'
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
              Color = clInfoBk
              Expanded = False
              FieldName = 'CARIUNVAN2'
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
              Color = 14155775
              Expanded = False
              FieldName = 'CariTipi'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 128
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14155775
              Expanded = False
              FieldName = 'MAHALLE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 211
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14155775
              Expanded = False
              FieldName = 'TELEFON'
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
            end>
        end
        object Panel15: TPanel
          Left = 0
          Top = 4
          Width = 8
          Height = 92
          Align = alLeft
          BevelOuter = bvNone
          Color = 16759929
          TabOrder = 1
        end
        object Panel16: TPanel
          Left = 0
          Top = 0
          Width = 835
          Height = 4
          Align = alTop
          BevelOuter = bvNone
          Color = 16759929
          TabOrder = 2
        end
        object Panel17: TPanel
          Left = 0
          Top = 96
          Width = 835
          Height = 34
          Align = alBottom
          BevelOuter = bvNone
          Color = 16759929
          TabOrder = 3
          object OnlineEdit5: TTechEdit
            Left = 7
            Top = 6
            Width = 74
            Height = 21
            RenkGiris = clAqua
            RenkCikis = clInfoBk
            BuyukKucuk = True
            Color = clInfoBk
            TabOrder = 0
            OnKeyPress = OnlineEdit5KeyPress
          end
          object OnlineEdit6: TTechEdit
            Left = 87
            Top = 5
            Width = 178
            Height = 21
            RenkGiris = clAqua
            RenkCikis = clInfoBk
            BuyukKucuk = True
            Color = clInfoBk
            TabOrder = 1
            OnKeyPress = OnlineEdit6KeyPress
          end
          object OnlineEdit7: TTechEdit
            Left = 271
            Top = 5
            Width = 178
            Height = 21
            RenkGiris = clAqua
            RenkCikis = clInfoBk
            BuyukKucuk = True
            Color = clInfoBk
            TabOrder = 2
            OnKeyPress = OnlineEdit7KeyPress
          end
        end
        object Panel18: TPanel
          Left = 831
          Top = 4
          Width = 4
          Height = 92
          Align = alRight
          BevelOuter = bvNone
          Color = 16759929
          TabOrder = 4
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 208
    object BuAlleminiKapat1: TMenuItem
      Caption = 'Bu '#304#351'lemi Kapat'
      Visible = False
      OnClick = BuAlleminiKapat1Click
    end
    object BuAlleminiA1: TMenuItem
      Caption = 'Bu '#304#351'lemi A'#231
      Visible = False
      OnClick = BuAlleminiA1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ExceleAt1: TMenuItem
      Caption = 'Excel'#39'e At'
      OnClick = ExceleAt1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object BakiyeHesapla1: TMenuItem
      Caption = '&Bakiye Hesapla'
      object ariheGre1: TMenuItem
        Caption = '&Tarihe G'#246're'
        OnClick = ariheGre1Click
      end
      object lemSrasnaGre1: TMenuItem
        Caption = #304#351'lem &S'#305'ras'#305'na G'#246're'
        OnClick = lemSrasnaGre1Click
      end
    end
    object lemSrasnaGreSrala1: TMenuItem
      Caption = #304#351'lem S'#305'ras'#305'na G'#246're S'#305'rala'
      OnClick = lemSrasnaGreSrala1Click
    end
  end
  object scExcelExport1: TscExcelExport
    DataPipe = dpDataSet
    Dataset = DMCari.CariislemIBQ
    StyleColumnWidth = cwDefault
    ColumnWidth = 0
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = -11
    FontHeader.Name = 'MS Sans Serif'
    FontHeader.Style = []
    FontHeader.Alignment = haGeneral
    FontHeader.WrapText = False
    FontHeader.Orientation = 0
    FontTitles.Charset = DEFAULT_CHARSET
    FontTitles.Color = clWindowText
    FontTitles.Height = -11
    FontTitles.Name = 'MS Sans Serif'
    FontTitles.Style = []
    FontTitles.Alignment = haGeneral
    FontTitles.WrapText = False
    FontTitles.Orientation = 0
    BorderTitles.BackColor = clBlue
    BorderTitles.BorderColor = 8404992
    FontData.Charset = DEFAULT_CHARSET
    FontData.Color = clWindowText
    FontData.Height = -11
    FontData.Name = 'MS Sans Serif'
    FontData.Style = []
    FontData.Alignment = haGeneral
    FontData.WrapText = False
    FontData.Orientation = 0
    BorderData.BorderColor = 16512
    FontSummary.Charset = DEFAULT_CHARSET
    FontSummary.Color = clWindowText
    FontSummary.Height = -11
    FontSummary.Name = 'MS Sans Serif'
    FontSummary.Style = []
    FontSummary.Alignment = haGeneral
    FontSummary.WrapText = False
    FontSummary.Orientation = 0
    SummarySelection = ssNone
    SummaryCalculation = scSUM
    Left = 200
    Top = 96
  end
  object ProcIslemCari: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'BAKIYE_HESAP_CARI'
    Left = 200
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CARIKOD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CARIKOD2_IN'
        ParamType = ptInput
      end>
  end
  object ProcTarihCari: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'BAKIYE_HESAP_CARI_TARIH'
    Left = 200
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CARIKOD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CARIKOD2_IN'
        ParamType = ptInput
      end>
  end
end
