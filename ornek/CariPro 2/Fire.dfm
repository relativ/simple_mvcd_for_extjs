object FFire: TFFire
  Left = 206
  Top = 115
  BorderStyle = bsSingle
  Caption = 'Fire'
  ClientHeight = 527
  ClientWidth = 804
  Color = clBtnFace
  Constraints.MinHeight = 554
  Constraints.MinWidth = 812
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
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 527
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    Color = 6730751
    TabOrder = 0
    object Panel4: TPanel
      Left = 2
      Top = 495
      Width = 800
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      Color = 13395456
      TabOrder = 0
      DesignSize = (
        800
        30)
      object BitBtn4: TTechButton
        Left = 258
        Top = 3
        Width = 30
        Height = 26
        TabOrder = 0
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
        CanRepeat = False
        ShowDownArrow = False
        Multiline = False
        Cizim = True
      end
      object BitBtn5: TTechButton
        Left = 292
        Top = 3
        Width = 31
        Height = 25
        TabOrder = 1
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
      object BLastPage: TTechButton
        Left = 205
        Top = 3
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
        Left = 128
        Top = 3
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
        Left = 51
        Top = 3
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
        Left = 4
        Top = 3
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
      object BitBtn1: TTechButton
        Left = 439
        Top = 2
        Width = 87
        Height = 25
        Caption = '&Yeni Giri'#351
        TabOrder = 6
        TabStop = True
        Anchors = [akTop, akRight]
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
          '&Yeni  Al'#305#351)
        Multiline = False
        Cizim = True
      end
      object BitBtn2: TTechButton
        Left = 620
        Top = 2
        Width = 87
        Height = 25
        Caption = 'Giri'#351'i &Sil'
        TabOrder = 7
        TabStop = True
        Anchors = [akTop, akRight]
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
          'Al'#305#351#305' &Sil')
        Multiline = False
        Cizim = True
      end
      object BitBtn3: TTechButton
        Left = 710
        Top = 2
        Width = 87
        Height = 25
        Caption = '&Kapat'
        TabOrder = 8
        TabStop = True
        Anchors = [akTop, akRight]
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
      object OnlineButton5: TTechButton
        Left = 530
        Top = 2
        Width = 87
        Height = 25
        Caption = '&Kopyala'
        TabOrder = 9
        TabStop = True
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = OnlineButton5Click
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
          '&Yeni  Al'#305#351)
        Multiline = False
        Cizim = True
      end
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 32
      Width = 800
      Height = 463
      ActivePage = TabSheet1
      Align = alClient
      MultiLine = True
      TabIndex = 0
      TabOrder = 1
      TabPosition = tpRight
      object TabSheet1: TTabSheet
        Caption = '                 Say'#305'm Eksi'#287'i                                '
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 773
          Height = 455
          Align = alClient
          BevelOuter = bvNone
          Color = 6730751
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          object dfsSplitter1: TdfsSplitter
            Left = 0
            Top = 305
            Width = 773
            Height = 10
            Cursor = crVSplit
            Align = alBottom
            MinSize = 1
            Maximized = False
            Minimized = False
            ButtonCursor = crDefault
          end
          object GroupBox2: TGroupBox
            Left = 10
            Top = 104
            Width = 756
            Height = 201
            Align = alClient
            Caption = 'Stok Giri'#351' Listesi '
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
              Width = 752
              Height = 184
              Align = alClient
              BorderStyle = bsNone
              DataSource = DMStokislem.FireBodroDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
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
              OnDrawColumnCell = OnlineDBGrid1DrawColumnCell
              OnKeyPress = OnlineDBGrid1KeyPress
              About = 
                'Online Yaz'#305'l'#305'm/ Serkan G'#252'ne'#351' '#13#10'E-Mail: online@onlinebilgisayar.c' +
                'om. '#13#10'Web: www.onlinebilgisayar.com'
              WordExport = True
              SatirRenk = True
              SatirRenk1 = 14352123
              SatirFontRengi = clBlack
              SatirFontRengi2 = clBlack
              SatirRenk2 = 14155735
              OnContextPopup = OnlineDBGrid1ContextPopup
              DefaultRowHeight = 17
              GridOptions = [goColSizing]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'SIRANO'
                  Title.Alignment = taCenter
                  Width = 36
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'BARKOD'
                  Title.Alignment = taCenter
                  Width = 85
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'STOKNO'
                  Title.Alignment = taCenter
                  Width = 51
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'STOKADI'
                  Title.Alignment = taCenter
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'MIKTAR'
                  Title.Alignment = taCenter
                  Visible = True
                  Siralama = True
                  CokluTus = True
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'BIRIM'
                  PickList.Strings = (
                    'Adet'
                    'Koli'
                    'Metre'
                    'Cm'
                    'Litre'
                    'Gr'
                    'Kg'
                    'Ton')
                  Title.Alignment = taCenter
                  Width = 43
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'BIRIMFIYAT'
                  Title.Alignment = taCenter
                  Width = 123
                  Visible = True
                  Siralama = True
                  CokluTus = True
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'C_PARABIRIMI'
                  Title.Alignment = taCenter
                  Width = 53
                  Visible = True
                  Siralama = False
                  CokluTus = False
                  Sirala1_Rengi = clBlack
                  Sirala2_Rengi = clBlack
                  OnEditButtonClick = OnlineDBGrid1Columns7EditButtonClick
                end
                item
                  Expanded = False
                  FieldName = 'KDVSECIM'
                  PickList.Strings = (
                    'Dahil'
                    'Hari'#231)
                  Title.Alignment = taCenter
                  Width = 43
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'KDVORANI'
                  Title.Alignment = taCenter
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'CIKISTUTAR'
                  Title.Alignment = taCenter
                  Width = 147
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'CIKISMATRAHI'
                  Title.Alignment = taCenter
                  Width = 154
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'C_CIKISKDVTUTAR'
                  Title.Alignment = taCenter
                  Width = 140
                  Visible = True
                  Siralama = False
                  CokluTus = False
                  Sirala1_Rengi = clBlack
                  Sirala2_Rengi = clBlack
                end
                item
                  Expanded = False
                  FieldName = 'VADE'
                  Title.Alignment = taCenter
                  Width = 84
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                  OnKeyPress = OnlineDBGrid1Columns17KeyPress
                end
                item
                  Expanded = False
                  FieldName = 'SERINO'
                  Title.Alignment = taCenter
                  Width = 178
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'C_STOKYERI'
                  Title.Alignment = taCenter
                  Width = 205
                  Visible = True
                  Siralama = False
                  CokluTus = False
                  Sirala1_Rengi = clBlack
                  Sirala2_Rengi = clBlack
                end
                item
                  Expanded = False
                  FieldName = 'ACIKLAMA'
                  Title.Alignment = taCenter
                  Width = 321
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'ISLEMKURU'
                  Title.Alignment = taCenter
                  Width = 148
                  Visible = True
                  Siralama = True
                  CokluTus = True
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'MIKTARCARPAN'
                  Title.Alignment = taCenter
                  Width = 104
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'CIKISMIKTAR'
                  Title.Alignment = taCenter
                  Width = 105
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'C_TLCIKISTUTARI'
                  Title.Alignment = taCenter
                  Width = 149
                  Visible = True
                  Siralama = False
                  CokluTus = False
                  Sirala1_Rengi = clBlack
                  Sirala2_Rengi = clBlack
                end
                item
                  Expanded = False
                  FieldName = 'C_TLCIKISMATRAHI'
                  Title.Alignment = taCenter
                  Width = 141
                  Visible = True
                  Siralama = False
                  CokluTus = False
                  Sirala1_Rengi = clBlack
                  Sirala2_Rengi = clBlack
                end
                item
                  Expanded = False
                  FieldName = 'C_TLCIKISKDVTUTARI'
                  Title.Alignment = taCenter
                  Width = 164
                  Visible = True
                  Siralama = False
                  CokluTus = False
                  Sirala1_Rengi = clBlack
                  Sirala2_Rengi = clBlack
                end
                item
                  Expanded = False
                  FieldName = 'C_TLBIRIMFIYAT'
                  Title.Alignment = taCenter
                  Width = 124
                  Visible = True
                  Siralama = False
                  CokluTus = False
                  Sirala1_Rengi = clBlack
                  Sirala2_Rengi = clBlack
                end
                item
                  Expanded = False
                  FieldName = 'C_REELCIKIS'
                  Title.Alignment = taCenter
                  Width = 124
                  Visible = True
                  Siralama = False
                  CokluTus = False
                  Sirala1_Rengi = clBlack
                  Sirala2_Rengi = clBlack
                end
                item
                  Expanded = False
                  FieldName = 'CIKISFIYAT'
                  Title.Alignment = taCenter
                  Width = 129
                  Visible = True
                  Siralama = True
                  CokluTus = False
                  Sirala1_Rengi = clOlive
                  Sirala2_Rengi = 16512
                end
                item
                  Expanded = False
                  FieldName = 'C_KULLANICIADI'
                  Title.Alignment = taCenter
                  Width = 132
                  Visible = True
                  Siralama = False
                  CokluTus = False
                  Sirala1_Rengi = clBlack
                  Sirala2_Rengi = clBlack
                end>
            end
          end
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 773
            Height = 104
            Align = alTop
            BevelOuter = bvNone
            Color = 6730751
            TabOrder = 0
            object GroupBox3: TGroupBox
              Left = 513
              Top = 6
              Width = 171
              Height = 97
              Caption = ' '#304#351'lem Bilgileri '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnExit = GroupBox3Exit
              object Label4: TLabel
                Left = 16
                Top = 23
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
                Top = 47
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
                Top = 71
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
                Top = 19
                Width = 98
                Height = 21
                TabStop = False
                Color = 14811135
                DataField = 'STOKISLEMNO'
                DataSource = DMStokislem.FireDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                OnChange = DBOnlineEdit4Change
                RenkGiris = 16777088
                RenkCikis = 14811135
                BuyukKucuk = True
              end
              object DBOnlineEdit5: TDBTechEdit
                Left = 66
                Top = 67
                Width = 98
                Height = 21
                Color = 14811135
                DataField = 'BELGENO'
                DataSource = DMStokislem.FireDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnExit = DBOnlineEdit5Exit
                RenkGiris = 16777088
                RenkCikis = 14811135
                BuyukKucuk = True
              end
              object OnlineDBDateEdit1: TTechDBDateEdit
                Left = 66
                Top = 43
                Width = 97
                Height = 21
                Color = 14811135
                DataField = 'TARIH'
                DataSource = DMStokislem.FireDS
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 10
                ParentFont = False
                TabOrder = 1
                TarihOnay = True
                RenkGiris = 16777088
                RenkCikis = 14811135
                About = 
                  'Online Yaz'#305'l'#305'm / Serkan G'#252'ne'#351#13#10'E-Mail: online@onlinebilgisayar.c' +
                  'om. '#13#10'Web: www.onlinebilgisayar.com'
              end
            end
            object GroupBox7: TGroupBox
              Left = 10
              Top = 5
              Width = 495
              Height = 97
              Caption = ' Stok Yeri - Gelir Gider - Personel '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnExit = GroupBox1Exit
              object Label18: TLabel
                Left = 34
                Top = 23
                Width = 43
                Height = 13
                Alignment = taRightJustify
                Caption = 'Stok Yeri'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label12: TLabel
                Left = 12
                Top = 47
                Width = 65
                Height = 13
                Caption = 'Gider Merkezi'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label19: TLabel
                Left = 36
                Top = 71
                Width = 41
                Height = 13
                Caption = 'Personel'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object OnlineButton1: TTechButton
                Left = 418
                Top = 18
                Width = 29
                Height = 23
                Caption = '...'
                TabOrder = 0
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
              object DBOnlineEdit16: TDBTechEdit
                Left = 85
                Top = 19
                Width = 316
                Height = 21
                Color = 14811135
                DataField = 'C_STOKYERI'
                DataSource = DMStokislem.FireDS
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
              object DBOnlineEdit2: TDBTechEdit
                Left = 85
                Top = 43
                Width = 316
                Height = 21
                Color = 14811135
                DataField = 'C_GGMERKEZI'
                DataSource = DMStokislem.FireDS
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
              object OnlineButton2: TTechButton
                Left = 418
                Top = 42
                Width = 29
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
              object DBOnlineEdit17: TDBTechEdit
                Left = 85
                Top = 67
                Width = 316
                Height = 21
                Color = 14811135
                DataField = 'C_PERSONEL'
                DataSource = DMStokislem.FireDS
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
              object OnlineButton4: TTechButton
                Left = 418
                Top = 66
                Width = 29
                Height = 23
                Caption = '...'
                TabOrder = 5
                TabStop = True
                OnClick = OnlineButton4Click
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
              object OnlineButton7: TTechButton
                Left = 452
                Top = 42
                Width = 29
                Height = 23
                TabOrder = 6
                TabStop = True
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
              object OnlineButton8: TTechButton
                Left = 452
                Top = 66
                Width = 29
                Height = 23
                TabOrder = 7
                TabStop = True
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
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 104
            Width = 10
            Height = 201
            Align = alLeft
            BevelOuter = bvNone
            Color = 6730751
            TabOrder = 3
          end
          object Panel8: TPanel
            Left = 766
            Top = 104
            Width = 7
            Height = 201
            Align = alRight
            BevelOuter = bvNone
            Color = 6730751
            TabOrder = 4
          end
          object Panel5: TPanel
            Left = 0
            Top = 315
            Width = 773
            Height = 140
            Align = alBottom
            BevelOuter = bvNone
            Color = 6730751
            TabOrder = 2
            object PageControl2: TPageControl
              Left = 0
              Top = 0
              Width = 773
              Height = 140
              ActivePage = TabSheet3
              Align = alClient
              Style = tsFlatButtons
              TabIndex = 0
              TabOrder = 0
              object TabSheet3: TTabSheet
                Caption = ' Toplamlar   '
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
                  TabOrder = 0
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
                    DataSource = DMStokislem.FireDS
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
                    DataSource = DMStokislem.FireDS
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
                    DataSource = DMStokislem.FireDS
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
                    DataSource = DMStokislem.FireDS
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
                    DataSource = DMStokislem.FireDS
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
                    DataSource = DMStokislem.FireDS
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
                object GroupBox4: TGroupBox
                  Left = 10
                  Top = 5
                  Width = 199
                  Height = 97
                  Caption = ' Finans Bilgileri '
                  Color = 6730751
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 2
                  OnExit = GroupBox1Exit
                  object Label13: TLabel
                    Left = 8
                    Top = 25
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
                    Top = 52
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
                  object DBOnlineEdit15: TDBTechEdit
                    Left = 63
                    Top = 48
                    Width = 122
                    Height = 21
                    Color = 14811135
                    DataField = 'ISLEMKURU'
                    DataSource = DMStokislem.FireDS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnExit = DBOnlineEdit15Exit
                    RenkGiris = 16777088
                    RenkCikis = 14811135
                    BuyukKucuk = True
                  end
                  object DBOnlineLookupCombo1: TDBTechLookupCombo
                    Left = 63
                    Top = 21
                    Width = 124
                    Height = 21
                    DataField = 'PARABIRIMKOD'
                    DataSource = DMStokislem.FireDS
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    KeyField = 'PARABIRKOD'
                    ListField = 'KISAADI'
                    ListSource = DMSabit.ParaBirimiDS
                    ParentFont = False
                    TabOrder = 1
                    OnClick = DBOnlineLookupCombo1Click
                    OnExit = DBOnlineLookupCombo1Exit
                    RenkGiris = clInfoBk
                    RenkCikis = clWhite
                  end
                  object OnlineDBCheckbox1: TTechDBCheckbox
                    Left = 61
                    Top = 73
                    Width = 84
                    Height = 17
                    Caption = 'KDV Dahil'
                    TabOrder = 2
                    TabStop = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    OnClick = OnlineDBCheckbox1Click
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
                    DataField = 'KDVSECIM'
                    DataSource = DMStokislem.FireDS
                    ValueChecked = 'Dahil'
                    ValueUnChecked = 'Hari'#231
                  end
                end
              end
              object TabSheet4: TTabSheet
                Caption = '   Stok '#199#305'k'#305#351' Bilgileri    '
                ImageIndex = 1
                object GroupBox1: TGroupBox
                  Left = 217
                  Top = 6
                  Width = 288
                  Height = 96
                  Caption = ' A'#231#305'klama '
                  Ctl3D = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  OnExit = GroupBox1Exit
                  object DBOnlineEdit11: TDBTechEdit
                    Left = 15
                    Top = 24
                    Width = 258
                    Height = 21
                    Color = 14811135
                    DataField = 'ACIKLAMA'
                    DataSource = DMStokislem.FireDS
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
                end
                object GroupBox12: TGroupBox
                  Left = 9
                  Top = 6
                  Width = 200
                  Height = 97
                  Caption = ' Evrak Bilgileri '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  OnExit = GroupBox1Exit
                  object Label31: TLabel
                    Left = 27
                    Top = 31
                    Width = 57
                    Height = 13
                    Caption = 'Evrak Tarihi'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label32: TLabel
                    Left = 9
                    Top = 66
                    Width = 75
                    Height = 13
                    Caption = 'Evrak Numaras'#305
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object DBOnlineEdit27: TDBTechEdit
                    Left = 90
                    Top = 60
                    Width = 100
                    Height = 21
                    Color = 14811135
                    DataField = 'EVRAKNO'
                    DataSource = DMStokislem.FireDS
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
                  object DBOnlineEdit28: TDBTechEdit
                    Left = 90
                    Top = 25
                    Width = 100
                    Height = 21
                    Color = 14811135
                    DataField = 'EVRAKTARIH'
                    DataSource = DMStokislem.FireDS
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
                end
              end
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = '                     Say'#305'm Eksi'#287'i Listesi                '
        ImageIndex = 1
        OnShow = TabSheet2Show
        object GroupBox14: TGroupBox
          Left = 10
          Top = 89
          Width = 753
          Height = 356
          Align = alClient
          Caption = ' Stok Giri'#351'leri Listesi '
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
            Width = 749
            Height = 339
            Align = alClient
            DataSource = DMStokislem.SayimEksigiDS
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
            SatirRenk = True
            SatirRenk1 = 13303754
            SatirFontRengi = clBlack
            SatirFontRengi2 = clBlack
            SatirRenk2 = 12510955
            DefaultRowHeight = 17
            GridOptions = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CARINO'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'STOKISLEMNO'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'TARIH'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'IRSALIYETARIH'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'SAAT'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'ACIKLAMA'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'GIRISTUTAR'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'CIKISTUTAR'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'GIRISMATRAH'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'GIRISKDVTUTAR'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'CIKISMATRAH'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'CIKISKDVTUTAR'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'CARIKURU'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'ISLEMKURU'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'KAPATMA'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'VADE'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'EVRAKNO'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'BELGENO'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'BAGLANTINO'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'MAKBUZNO'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'C_CARIPARABIRIM'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'C_PARABIRIMI'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'C_CARIADI'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'C_STOKYERI'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'C_KULLANICIADI'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'C_PERSONEL'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'FATURATARIH'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'C_GGMERKEZI'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'IRSALIYENO'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'EVRAKTARIH'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'D_GIRISTUTAR'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'D_GIRISKDVTUTAR'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'D_GIRISMATRAH'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'D_CIKISTUTAR'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'D_CIKISKDVTUTAR'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'D_CIKISMATRAH'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end
              item
                Expanded = False
                FieldName = 'ISLEMTUR'
                Visible = True
                Siralama = False
                CokluTus = False
                Sirala1_Rengi = clBlack
                Sirala2_Rengi = clBlack
              end>
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 773
          Height = 89
          Align = alTop
          BevelOuter = bvNone
          Color = 6730751
          TabOrder = 1
          object GroupBox15: TGroupBox
            Left = 9
            Top = 3
            Width = 176
            Height = 78
            Caption = ' Tarih Aral'#305#287#305' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object DateTimePicker2: TDateTimePicker
              Left = 9
              Top = 47
              Width = 160
              Height = 21
              CalAlignment = dtaLeft
              Date = 37529.4272149421
              Time = 37529.4272149421
              Color = clInfoBk
              DateFormat = dfLong
              DateMode = dmComboBox
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Kind = dtkDate
              ParseInput = False
              ParentFont = False
              TabOrder = 0
            end
            object DateTimePicker1: TDateTimePicker
              Left = 9
              Top = 18
              Width = 160
              Height = 21
              CalAlignment = dtaLeft
              Date = 37529.4271804051
              Time = 37529.4271804051
              Color = clInfoBk
              DateFormat = dfLong
              DateMode = dmComboBox
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Kind = dtkDate
              ParseInput = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object OnlineButton10: TTechButton
            Left = 635
            Top = 10
            Width = 75
            Height = 25
            Caption = '&Uygula'
            TabOrder = 1
            TabStop = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 26316
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = OnlineButton10Click
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
              '&Uygula')
            Multiline = False
            Cizim = True
          end
          object GroupBox16: TGroupBox
            Left = 190
            Top = 4
            Width = 99
            Height = 78
            Caption = ' '#304#351'lem Aral'#305#287#305' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object OnlineEdit1: TTechEdit
              Left = 8
              Top = 20
              Width = 81
              Height = 21
              RenkGiris = clInfoBk
              RenkCikis = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object OnlineEdit2: TTechEdit
              Left = 8
              Top = 47
              Width = 81
              Height = 21
              RenkGiris = clInfoBk
              RenkCikis = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
          object GroupBox18: TGroupBox
            Left = 294
            Top = 4
            Width = 107
            Height = 78
            Caption = ' Belge Aral'#305#287#305' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object OnlineEdit5: TTechEdit
              Left = 8
              Top = 20
              Width = 89
              Height = 21
              RenkGiris = clInfoBk
              RenkCikis = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object OnlineEdit6: TTechEdit
              Left = 8
              Top = 47
              Width = 89
              Height = 21
              RenkGiris = clInfoBk
              RenkCikis = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
          object GroupBox19: TGroupBox
            Left = 406
            Top = 3
            Width = 99
            Height = 78
            Caption = ' Evrak Aral'#305#287#305' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            object OnlineEdit7: TTechEdit
              Left = 8
              Top = 20
              Width = 81
              Height = 21
              RenkGiris = clInfoBk
              RenkCikis = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object OnlineEdit8: TTechEdit
              Left = 8
              Top = 47
              Width = 81
              Height = 21
              RenkGiris = clInfoBk
              RenkCikis = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
          object OnlineButton11: TTechButton
            Left = 635
            Top = 56
            Width = 75
            Height = 25
            Caption = '&Temizle'
            TabOrder = 5
            TabStop = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 26316
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = OnlineButton11Click
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
              '&Uygula')
            Multiline = False
            Cizim = True
          end
          object GroupBox20: TGroupBox
            Left = 512
            Top = 3
            Width = 115
            Height = 78
            Caption = ' Personel  Aral'#305#287#305' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            object OnlineEdit9: TTechEdit
              Left = 8
              Top = 20
              Width = 73
              Height = 21
              RenkGiris = clInfoBk
              RenkCikis = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnChange = OnlineEdit9Change
            end
            object OnlineEdit10: TTechEdit
              Left = 8
              Top = 47
              Width = 73
              Height = 21
              RenkGiris = clInfoBk
              RenkCikis = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnChange = OnlineEdit10Change
            end
            object OnlineButton14: TTechButton
              Left = 83
              Top = 20
              Width = 27
              Height = 21
              Caption = '...'
              TabOrder = 2
              TabStop = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 26316
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = OnlineButton14Click
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
                '&Uygula')
              Multiline = False
              Cizim = True
            end
            object OnlineButton15: TTechButton
              Left = 83
              Top = 46
              Width = 27
              Height = 21
              Caption = '...'
              TabOrder = 3
              TabStop = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 26316
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = OnlineButton15Click
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
                '&Uygula')
              Multiline = False
              Cizim = True
            end
          end
        end
        object Panel12: TPanel
          Left = 0
          Top = 89
          Width = 10
          Height = 356
          Align = alLeft
          BevelOuter = bvNone
          Color = 6730751
          TabOrder = 2
        end
        object Panel13: TPanel
          Left = 763
          Top = 89
          Width = 10
          Height = 356
          Align = alRight
          BevelOuter = bvNone
          Color = 6730751
          TabOrder = 3
        end
        object Panel14: TPanel
          Left = 0
          Top = 445
          Width = 773
          Height = 10
          Align = alBottom
          BevelOuter = bvNone
          Color = 6730751
          TabOrder = 4
        end
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 800
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Fire'
      Color = 13395456
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 192
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
      OnClick = SatrEkle1Click
    end
    object SatrSil1: TMenuItem
      Caption = 'Sat'#305'r Sil'
      ShortCut = 115
      OnClick = SatrSil1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Builemikapat1: TMenuItem
      Caption = 'Bu Al'#305#351' '#304#351'lemini Sto'#287'a Kaydet'
      Visible = False
      OnClick = Builemikapat1Click
    end
    object HepsineStoaKaydet1: TMenuItem
      Caption = 'Hepsini Sto'#287'a Kaydet'
      Visible = False
      OnClick = HepsineStoaKaydet1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Busatilemia1: TMenuItem
      Caption = 'Bu Al'#305#351' '#304#351'lemini Sto'#287'a Kaydetme'
      Visible = False
      OnClick = Busatilemia1Click
    end
    object HibiriniStoakeydetme1: TMenuItem
      Caption = 'Hi'#231'birini Sto'#287'a keydetme'
      Visible = False
      OnClick = HibiriniStoakeydetme1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object lemSrasnaGreSrala1: TMenuItem
      Caption = #304#351'lem S'#305'ras'#305'na G'#246're S'#305'rala'
      OnClick = lemSrasnaGreSrala1Click
    end
  end
  object FaturaMaxIBQuery: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select MAX(FATURANO) FaturaMax from CARIISLEM where ISLEMTUR = '#39 +
        'Al'#305#351#39' or ISLEMTUR = '#39'Sat'#305#351' '#304'ade'#39)
    Left = 144
    Top = 192
    object FaturaMaxIBQueryFATURAMAX: TIntegerField
      FieldName = 'FATURAMAX'
    end
  end
  object ActionManager1: TActionManager
    ActionBars.SessionCount = 36
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Caption = '-'
                LastSession = 36
              end>
            Caption = '&File'
            LastSession = 36
          end
          item
            Items = <
              item
                Action = EditCut1
                ImageIndex = 0
                LastSession = 36
                ShortCut = 16472
              end
              item
                Action = EditCopy1
                ImageIndex = 1
                LastSession = 36
                ShortCut = 16451
              end
              item
                Action = EditPaste1
                ImageIndex = 2
                LastSession = 36
                ShortCut = 16470
              end
              item
                Action = EditSelectAll1
                LastSession = 36
                ShortCut = 16449
              end
              item
                Action = EditUndo1
                ImageIndex = 3
                LastSession = 36
                ShortCut = 16474
              end
              item
                Action = EditDelete1
                ImageIndex = 5
                LastSession = 36
                ShortCut = 46
              end>
            Caption = '&Edit'
            LastSession = 36
          end
          item
            Caption = '&Search'
            LastSession = 36
          end
          item
            Items = <
              item
                Action = RichEditBold1
                ImageIndex = 31
                LastSession = 36
                ShortCut = 16450
              end
              item
                Action = RichEditItalic1
                ImageIndex = 29
                LastSession = 36
                ShortCut = 16457
              end
              item
                Action = RichEditUnderline1
                Caption = 'A&lt'#305' '#199'izgili'
                ImageIndex = 28
                LastSession = 36
                ShortCut = 16469
              end
              item
                Action = RichEditStrikeOut1
                LastSession = 36
              end
              item
                Action = RichEditBullets1
                ImageIndex = 38
                LastSession = 36
              end
              item
                Action = RichEditAlignLeft1
                ImageIndex = 35
                LastSession = 36
              end
              item
                Action = RichEditAlignRight1
                ImageIndex = 36
                LastSession = 36
              end
              item
                Action = RichEditAlignCenter1
                ImageIndex = 37
                LastSession = 36
              end>
            Caption = 'F&ormat'
            LastSession = 36
          end
          item
            Items = <
              item
                Action = CustomizeActionBars1
                LastSession = 36
              end>
            Caption = '&Tools'
            LastSession = 36
          end>
      end
      item
        Items = <
          item
            Action = RichEditBold1
            ImageIndex = 31
            LastSession = 36
            ShortCut = 16450
          end
          item
            Action = RichEditItalic1
            ImageIndex = 29
            LastSession = 36
            ShortCut = 16457
          end
          item
            Action = RichEditUnderline1
            Caption = 'A&lt'#305' '#199'izgili'
            ImageIndex = 28
            LastSession = 36
            ShortCut = 16469
          end
          item
            Action = RichEditStrikeOut1
            LastSession = 36
          end
          item
            Action = RichEditBullets1
            Caption = '&Bullets'
            ImageIndex = 38
            LastSession = 36
          end
          item
            Action = RichEditAlignLeft1
            ImageIndex = 35
            LastSession = 36
          end
          item
            Action = RichEditAlignRight1
            ImageIndex = 36
            LastSession = 36
          end
          item
            Action = RichEditAlignCenter1
            ImageIndex = 37
            LastSession = 36
          end>
      end
      item
        AutoSize = False
      end
      item
        Items = <
          item
            Action = EditCut1
            ImageIndex = 0
            LastSession = 36
            ShortCut = 16472
          end
          item
            Action = EditCopy1
            ImageIndex = 1
            LastSession = 36
            ShortCut = 16451
          end
          item
            Action = EditPaste1
            ImageIndex = 2
            LastSession = 36
            ShortCut = 16470
          end
          item
            Action = EditSelectAll1
            LastSession = 36
            ShortCut = 16449
          end
          item
            Action = EditUndo1
            ImageIndex = 3
            LastSession = 36
            ShortCut = 16474
          end
          item
            Action = EditDelete1
            ImageIndex = 5
            LastSession = 36
            ShortCut = 46
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = RichEditBold1
            ImageIndex = 31
            LastSession = 36
            ShortCut = 16450
          end
          item
            Action = RichEditItalic1
            ImageIndex = 29
            LastSession = 36
            ShortCut = 16457
          end
          item
            Action = RichEditUnderline1
            Caption = 'A&lt'#305' '#199'izgili'
            ImageIndex = 28
            LastSession = 36
            ShortCut = 16469
          end
          item
            Action = RichEditStrikeOut1
            LastSession = 36
          end
          item
            Action = RichEditBullets1
            ImageIndex = 38
            LastSession = 36
          end
          item
            Action = RichEditAlignLeft1
            ImageIndex = 35
            LastSession = 36
          end
          item
            Action = RichEditAlignRight1
            ImageIndex = 36
            LastSession = 36
          end
          item
            Action = RichEditAlignCenter1
            ImageIndex = 37
            LastSession = 36
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = EditCut1
            ImageIndex = 0
            LastSession = 36
            ShortCut = 16472
          end
          item
            Action = EditPaste1
            ImageIndex = 2
            LastSession = 36
            ShortCut = 16470
          end
          item
            Action = EditCopy1
            ImageIndex = 1
            LastSession = 36
            ShortCut = 16451
          end
          item
            Action = EditSelectAll1
            LastSession = 36
            ShortCut = 16449
          end
          item
            Action = EditUndo1
            ImageIndex = 3
            LastSession = 36
            ShortCut = 16474
          end
          item
            Action = EditDelete1
            ImageIndex = 5
            LastSession = 36
            ShortCut = 46
          end
          item
            Action = FontEdit1
            Caption = 'Y&az'#305' Tipi'
            ImageIndex = 48
            LastSession = 36
          end>
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        Items = <
          item
            Action = RichEditBold1
            ImageIndex = 31
            LastSession = 36
            ShortCut = 16450
          end
          item
            Action = RichEditItalic1
            ImageIndex = 29
            LastSession = 36
            ShortCut = 16457
          end
          item
            Action = RichEditUnderline1
            Caption = 'A&lt'#305' '#199'izgili'
            ImageIndex = 28
            LastSession = 36
            ShortCut = 16469
          end
          item
            Action = RichEditStrikeOut1
            LastSession = 36
          end
          item
            Action = RichEditBullets1
            ImageIndex = 38
            LastSession = 36
          end
          item
            Action = RichEditAlignLeft1
            ImageIndex = 35
            LastSession = 36
          end
          item
            Action = RichEditAlignRight1
            ImageIndex = 36
            LastSession = 36
          end
          item
            Action = RichEditAlignCenter1
            ImageIndex = 37
            LastSession = 36
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = EditCut1
            ImageIndex = 0
            LastSession = 36
            ShortCut = 16472
          end
          item
            Action = EditCopy1
            ImageIndex = 1
            LastSession = 36
            ShortCut = 16451
          end
          item
            Action = EditPaste1
            ImageIndex = 2
            LastSession = 36
            ShortCut = 16470
          end
          item
            Action = EditSelectAll1
            LastSession = 36
            ShortCut = 16449
          end
          item
            Action = EditUndo1
            ImageIndex = 3
            LastSession = 36
            ShortCut = 16474
          end
          item
            Action = EditDelete1
            ImageIndex = 5
            LastSession = 36
            ShortCut = 46
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = EditDelete1
            ImageIndex = 5
            LastSession = 36
            ShortCut = 46
          end
          item
            Action = EditUndo1
            ImageIndex = 3
            LastSession = 36
            ShortCut = 16474
          end
          item
            Action = EditSelectAll1
            LastSession = 36
            ShortCut = 16449
          end
          item
            Action = EditPaste1
            ImageIndex = 2
            LastSession = 36
            ShortCut = 16470
          end
          item
            Action = EditCopy1
            ImageIndex = 1
            LastSession = 36
            ShortCut = 16451
          end
          item
            Action = EditCut1
            ImageIndex = 0
            LastSession = 36
            ShortCut = 16472
          end
          item
            Action = RichEditAlignCenter1
            ImageIndex = 37
            LastSession = 36
          end
          item
            Action = RichEditAlignRight1
            ImageIndex = 36
            LastSession = 36
          end
          item
            Action = RichEditAlignLeft1
            Caption = 'Sola H&izal'#305
            ImageIndex = 35
            LastSession = 36
          end
          item
            Action = RichEditBullets1
            ImageIndex = 38
            LastSession = 36
          end
          item
            Action = RichEditStrikeOut1
            LastSession = 36
          end
          item
            Action = RichEditUnderline1
            ImageIndex = 28
            LastSession = 36
            ShortCut = 16469
          end
          item
            Action = RichEditItalic1
            ImageIndex = 29
            LastSession = 36
            ShortCut = 16457
          end
          item
            Action = RichEditBold1
            Caption = 'Ka&l'#305'n'
            ImageIndex = 31
            LastSession = 36
            ShortCut = 16450
          end
          item
            Action = CustomizeActionBars1
            LastSession = 36
          end
          item
            Action = FontEdit1
            Caption = 'Ya&z'#305' Tipi'
            ImageIndex = 48
            LastSession = 36
          end>
      end
      item
        Items = <
          item
            Action = EditDelete1
            ImageIndex = 5
            LastSession = 36
            ShortCut = 46
          end
          item
            Action = EditUndo1
            ImageIndex = 3
            LastSession = 36
            ShortCut = 16474
          end
          item
            Action = EditSelectAll1
            LastSession = 36
            ShortCut = 16449
          end
          item
            Action = EditPaste1
            ImageIndex = 2
            LastSession = 36
            ShortCut = 16470
          end
          item
            Action = EditCopy1
            ImageIndex = 1
            LastSession = 36
            ShortCut = 16451
          end
          item
            Action = EditCut1
            ImageIndex = 0
            LastSession = 36
            ShortCut = 16472
          end
          item
            Action = RichEditAlignCenter1
            ImageIndex = 37
            LastSession = 36
          end
          item
            Action = RichEditAlignRight1
            ImageIndex = 36
            LastSession = 36
          end
          item
            Action = RichEditAlignLeft1
            Caption = 'Sola H&izal'#305
            ImageIndex = 35
            LastSession = 36
          end
          item
            Action = RichEditBullets1
            ImageIndex = 38
            LastSession = 36
          end
          item
            Action = RichEditStrikeOut1
            LastSession = 36
          end
          item
            Action = RichEditUnderline1
            ImageIndex = 28
            LastSession = 36
            ShortCut = 16469
          end
          item
            Action = RichEditItalic1
            ImageIndex = 29
            LastSession = 36
            ShortCut = 16457
          end
          item
            Action = RichEditBold1
            Caption = 'Ka&l'#305'n'
            ImageIndex = 31
            LastSession = 36
            ShortCut = 16450
          end
          item
            Action = CustomizeActionBars1
            LastSession = 36
          end
          item
            Action = FontEdit1
            Caption = 'Ya&z'#305' Tipi'
            ImageIndex = 48
            LastSession = 36
          end>
      end
      item
        Items = <
          item
            Action = RichEditBullets1
            ImageIndex = 38
            LastSession = 36
          end
          item
            Action = RichEditStrikeOut1
            LastSession = 36
          end
          item
            Action = RichEditUnderline1
            ImageIndex = 28
            LastSession = 36
            ShortCut = 16469
          end
          item
            Action = RichEditItalic1
            ImageIndex = 29
            LastSession = 36
            ShortCut = 16457
          end
          item
            Action = RichEditBold1
            Caption = 'Kal'#305'&n'
            ImageIndex = 31
            LastSession = 36
            ShortCut = 16450
          end
          item
            Action = RichEditAlignLeft1
            Caption = 'So&la Hizal'#305
            ImageIndex = 35
            LastSession = 36
          end
          item
            Action = RichEditAlignCenter1
            ImageIndex = 37
            LastSession = 36
          end
          item
            Action = RichEditAlignRight1
            ImageIndex = 36
            LastSession = 36
          end
          item
            Action = CustomizeActionBars1
            LastSession = 36
          end>
      end
      item
        Items = <
          item
            Action = EditDelete1
            ImageIndex = 5
            LastSession = 36
            ShortCut = 46
          end
          item
            Action = EditUndo1
            ImageIndex = 3
            LastSession = 36
            ShortCut = 16474
          end
          item
            Action = EditSelectAll1
            LastSession = 36
            ShortCut = 16449
          end
          item
            Action = EditPaste1
            ImageIndex = 2
            LastSession = 36
            ShortCut = 16470
          end
          item
            Action = EditCopy1
            Caption = 'K&opyala'
            ImageIndex = 1
            LastSession = 36
            ShortCut = 16451
          end
          item
            Action = EditCut1
            ImageIndex = 0
            LastSession = 36
            ShortCut = 16472
          end
          item
            Action = FontEdit1
            ImageIndex = 48
            LastSession = 36
          end>
      end
      item
        Items = <
          item
            Action = RichEditBullets1
            ImageIndex = 38
          end
          item
            Action = RichEditStrikeOut1
          end
          item
            Action = RichEditUnderline1
            ImageIndex = 28
            ShortCut = 16469
          end
          item
            Action = RichEditItalic1
            ImageIndex = 29
            ShortCut = 16457
          end
          item
            Action = RichEditBold1
            Caption = '&Kal'#305'n'
            ImageIndex = 31
            ShortCut = 16450
          end
          item
            Action = RichEditAlignLeft1
            ImageIndex = 35
          end
          item
            Action = RichEditAlignCenter1
            ImageIndex = 37
          end
          item
            Action = RichEditAlignRight1
            ImageIndex = 36
          end
          item
            Action = CustomizeActionBars1
          end>
      end
      item
        Items = <
          item
            Action = EditDelete1
            ImageIndex = 5
            ShortCut = 46
          end
          item
            Action = EditUndo1
            ImageIndex = 3
            ShortCut = 16474
          end
          item
            Action = EditSelectAll1
            ShortCut = 16449
          end
          item
            Action = EditPaste1
            ImageIndex = 2
            ShortCut = 16470
          end
          item
            Action = EditCopy1
            ImageIndex = 1
            ShortCut = 16451
          end
          item
            Action = EditCut1
            ImageIndex = 0
            ShortCut = 16472
          end
          item
            Action = FontEdit1
            Caption = 'Y&az'#305' Tipi'
            ImageIndex = 48
          end>
      end>
    Images = ImageList1
    Left = 65
    Top = 194
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = '&Kes'
      Enabled = False
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = 'Ko&pyala'
      Enabled = False
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Yap'#305#351't'#305'r'
      Enabled = False
      ImageIndex = 2
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = '&T'#252'm'#252'n'#252' Se'#231
      Enabled = False
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Geri'
      Enabled = False
      ImageIndex = 3
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = '&Sil'
      Enabled = False
      ImageIndex = 5
      ShortCut = 46
    end
    object RichEditBold1: TRichEditBold
      Category = 'Format'
      AutoCheck = True
      Caption = 'K&al'#305'n'
      Enabled = False
      ImageIndex = 31
      ShortCut = 16450
    end
    object RichEditItalic1: TRichEditItalic
      Category = 'Format'
      AutoCheck = True
      Caption = '&E'#287'ik'
      Enabled = False
      ImageIndex = 29
      ShortCut = 16457
    end
    object RichEditUnderline1: TRichEditUnderline
      Category = 'Format'
      AutoCheck = True
      Caption = '&Alt'#305' '#199'izgili'
      Enabled = False
      ImageIndex = 28
      ShortCut = 16469
    end
    object RichEditStrikeOut1: TRichEditStrikeOut
      Category = 'Format'
      AutoCheck = True
      Caption = '&'#220'st'#252' '#199'izgili'
      Enabled = False
    end
    object RichEditBullets1: TRichEditBullets
      Category = 'Format'
      AutoCheck = True
      Caption = '&Madde imi'
      Enabled = False
      ImageIndex = 38
    end
    object RichEditAlignLeft1: TRichEditAlignLeft
      Category = 'Format'
      AutoCheck = True
      Caption = '&Sola Hizal'#305
      Enabled = False
      ImageIndex = 35
    end
    object RichEditAlignRight1: TRichEditAlignRight
      Category = 'Format'
      AutoCheck = True
      Caption = 'Sa'#287'a &Hizal'#305
      Enabled = False
      ImageIndex = 36
    end
    object RichEditAlignCenter1: TRichEditAlignCenter
      Category = 'Format'
      AutoCheck = True
      Caption = '&Ortal'#305
      Enabled = False
      ImageIndex = 37
    end
    object CustomizeActionBars1: TCustomizeActionBars
      Category = 'Tools'
      Caption = '&'#214'zel'
    end
    object FontEdit1: TFontEdit
      Category = 'Dialog'
      Caption = 'Yaz'#305' Ti&pi'
      Dialog.Font.Charset = DEFAULT_CHARSET
      Dialog.Font.Color = clWindowText
      Dialog.Font.Height = -11
      Dialog.Font.Name = 'MS Sans Serif'
      Dialog.Font.Style = []
      Dialog.MinFontSize = 0
      Dialog.MaxFontSize = 0
      Hint = 'Yaz'#305' Tipi Ayarla'
      ImageIndex = 48
      BeforeExecute = FontEdit1BeforeExecute
      OnAccept = FontEdit1Accept
    end
  end
  object ImageList1: TImageList
    Left = 106
    Top = 193
    Bitmap = {
      494C010131003600040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000E0000000010020000000000000E0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A54A4A00A54A
      4A00A54A4A00A54A4A00000000000000000000000000A54A4A00A54A4A00A54A
      4A00A54A4A00A54A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A500A54A4A000000000000000000000000000000000000000000A5A5A500A54A
      4A00A54A4A00A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A54A4A00A54A4A0000000000000000000000000000000000A5A5A500A54A
      4A00A54A4A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A500A54A4A0000000000000000000000000000000000A54A4A00A54A
      4A00A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A54A4A00A54A4A00A54A4A00A54A4A00A54A4A00A54A4A00A54A
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5A500A54A4A000000000000000000A54A4A00A54A4A00A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A54A4A00A54A4A0000000000A54A4A00A54A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5A5A500A54A4A00A54A4A00A54A4A00A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A54A4A00A54A4A00A54A4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A500A54A4A00A5A5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A54A4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000800000000000000000000000008
      0800000000000000000000000000000000000008000000000000000000000000
      0000080000001000080010000800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001000000008000000000000000000
      0000000800000000000008000000000000000000000000000000000800001010
      1000180008001000000008000000080808000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000001800080010000000000000000000
      0000000800000000000000000000080808000000000010100800080000000800
      000010000000100000000000080000000000000000004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000002100080010000000000000000000
      0000000000000008080000000000080000000800000010000000100000002108
      080021081000100808000000000000000000000000004A4A4A00A5A5A500A5A5
      A500A5A5A500A5A5A5004A4A4A00A5A5A500A5A5A5004A4A4A00A5A5A500A5A5
      A5004A4A4A00D6D6D600D6D6D6004A4A4A00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FFFF0000FFFF0000FFFF00C6C6C600C6C6
      C60000000000000000000000000000000000F7D6DE00EFCED600F7DEE700FFFF
      FF00D6DED600D6DEDE00CED6CE00DED6CE00F7D6D600FFDEE700FFCED600FFD6
      D600DEC6CE00DEDEDE00CED6D600CEDEDE00000000004A4A4A004A4A4A00A5A5
      A500A5A5A5004A4A4A00A5A5A500A5A5A5004A4A4A00A5A5A500A5A5A5004A4A
      4A00D6D6D600D6D6D6004A4A4A004A4A4A00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C600000000000000000073525A0063424A0073525A005A42
      4A00C6C6C600DEE7DE00E7E7E7006B5252007B4A5200945A63007B4A4A00734A
      4A006B5A6300C6CECE00DEE7EF00C6D6D600000000004A4A4A00FFFFFF004A4A
      4A00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5004A4A4A00D6D6
      D600D6D6D6004A4A4A00FFFFFF004A4A4A00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C60000000000E7CED600CEB5BD006B4A5200F7D6
      DE00EFDEE700EFE7E700C6BDB500FFE7E700CE9C9C0094525A007B4A5200D6AD
      B500CEC6C600DEE7E700D6DEDE00D6DEDE00000000004A4A4A004AFFFF00FFFF
      FF004A4A4A00A5A5A500A5A5A5004A4A4A00A5A5A5004A4A4A00D6D6D600D6D6
      D6004A4A4A00FFFFFF004AFFFF004A4A4A00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C60000000000E7DEE700DEC6CE0073525A00734A
      5200F7D6DE00E7CECE00FFE7E700F7CECE00DEA5A50084424A0084525200F7DE
      DE00DEDEDE00CEDEDE00CECED600DEDEE700000000004A4A4A00FFFFFF004AFF
      FF00FFFFFF004A4A4A00A5A5A500A5A5A5004A4A4A004AFFFF004A4A4A004A4A
      4A00FFFFFF004AFFFF00FFFFFF004A4A4A00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C6000000000000000000D6DEDE00E7DEDE00BD949C008C52
      5A00FFC6CE00FFCED600FFDEDE00FFCED6008C52520073424200CEA5AD00E7D6
      D600CED6D600D6E7E700CECED600DEDEE700000000004A4A4A004AFFFF00FFFF
      FF004AFFFF00FFFFFF004A4A4A004A4A4A004AFFFF00FFFFFF004AFFFF00FFFF
      FF004AFFFF00FFFFFF004AFFFF004A4A4A00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C60000000000BDD6D600E7E7E700F7D6DE008C52
      5A007B424A008C525A00845252007B4A4A007B4A5200946B6B00D6C6C600DEE7
      DE00C6D6D600D6DEDE00DED6DE00DED6DE00000000004A4A4A00FFFFFF004AFF
      FF00FFFFFF004AFFFF00FFFFFF004AFFFF00FFFFFF004AFFFF00FFFFFF004AFF
      FF00FFFFFF004AFFFF00FFFFFF004A4A4A00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000D6EFEF00C6D6D600DEC6CE00D6AD
      AD007B394200FFDEE700FFDEDE008C5A5A0073525200B59C9C00E7DEDE00DEE7
      E700C6D6D600CEDEDE00E7DEE700DED6DE00000000004A4A4A004AFFFF00FFFF
      FF004AFFFF00FFFFFF004AFFFF00FFFFFF004AFFFF00FFFFFF00A5A5A5004A4A
      4A004A4A4A00A5A5A5004AFFFF004A4A4A00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000BDD6D600D6DEE700EFDEDE00F7D6
      DE008C525A00844A5200FFDEDE006B4242008C6B6B00CEC6BD00DEE7DE00D6DE
      DE00CEDED600CED6D600E7DEE700DED6DE00000000004A4A4A00FFFFFF004AFF
      FF00FFFFFF004AFFFF00FFFFFF004AFFFF00FFFFFF004AFFFF004A4A4A004AA5
      A5004AA5A5004A4A4A00FFFFFF004A4A4A00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000D6E7E700C6CECE00D6CED600EFDE
      DE00C69CA5008C5A63006B3942008C636300B59C9C00DEDEDE00D6D6D600CEDE
      D600D6DEDE00CED6D600DEDEE700D6D6DE00000000004A4A4A004AFFFF00FFFF
      FF004AFFFF00FFFFFF004AFFFF00FFFFFF004AFFFF00FFFFFF004A4A4A004AA5
      A5004AA5A5004A4A4A004AFFFF004A4A4A00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000CED6D600E7EFEF00D6DEDE00DED6
      D600FFEFF70063424200734A4A007B5A6300DECECE00E7EFE700CED6D600D6DE
      D600E7E7E700D6D6D600D6DEDE00CEDEDE00000000004A4A4A00FFFFFF004AFF
      FF00FFFFFF004AFFFF00FFFFFF004AFFFF00FFFFFF004AFFFF00A5A5A5004A4A
      4A004A4A4A00A5A5A500FFFFFF004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6CED600DEDEE700CED6D600D6E7
      E700D6CECE00BDA5A5007B6363009C848400E7DEDE00DEE7DE00D6D6D600DEDE
      D600E7DEDE00D6D6DE00CEDEDE00C6DEDE00000000004A4A4A004AFFFF00FFFF
      FF004AFFFF00FFFFFF004AFFFF00FFFFFF004AFFFF00FFFFFF004AFFFF00FFFF
      FF004AFFFF00FFFFFF004AFFFF004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFDEE700CECED600CEDEDE00CEDE
      DE00D6D6D600E7DEDE006B525200FFE7E700D6D6CE00D6D6D600DEDEDE00DEDE
      DE00E7D6DE00DEDEDE00C6DEDE00C6DEDE00000000004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00848484000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF00C6C6
      C60084848400C6C6C600FFFFFF00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840084848400FFFF
      FF008484840084848400FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840084848400FFFF
      FF008484840084848400FFFFFF00000000008484840084848400848484008484
      840084848400848484008484840084848400848484008484840084848400FFFF
      FF0084848400FFFFFF0084848400848484000000000000000000000000000000
      0000000000000000000000000000840084008400840084848400000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF0084848400FFFF
      FF0084848400FFFFFF0084848400000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF0084848400FFFF
      FF0084848400FFFFFF0084848400000000008400000084000000840000008400
      00000000000000000000848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000840000000000000000000000000000000000
      0000000000008400840084008400FFFFFF00FFFFFF00C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400FFFFFF00FFFF
      FF00FFFFFF008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000848484008484840084848400FFFFFF00FFFF
      FF00FFFFFF008484840084848400848484000000000000000000000000008400
      0000FF00000084000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000000000000000000008400
      840084008400FFFFFF00FFFFFF000000000000000000C6C6C600C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000000000000000000000000000848484008400840084008400FFFF
      FF00FFFFFF000000000000000000840084008400840000000000C6C6C600C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400FFFFFF00FFFF
      FF00FFFFFF008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400FFFFFF00FFFF
      FF00FFFFFF008484840084848400848484000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000008484840084008400FFFFFF000000
      000000000000840084008400840084008400840084008400840000000000C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF0084848400FFFF
      FF0084848400FFFFFF0084848400000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF0084848400FFFF
      FF0084848400FFFFFF0084848400000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000840000000000000000000000000000008484840000000000000000008400
      840084008400840084000084840000FFFF008400840084008400840084000000
      0000C6C6C600C6C6C60084848400000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840084848400FFFF
      FF008484840084848400FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840084848400FFFF
      FF008484840084848400FFFFFF00000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00840000000000000000000000000000008484840084008400840084008400
      8400840084008400840084008400008484008400840084008400840084008400
      840000000000C6C6C600000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000084848400FFFF
      FF00848484000000000000000000000000008484840000000000000000000000
      000000000000000000000000000000000000848484000000000084848400FFFF
      FF00848484000000000000000000000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000840000000000000000000000000000000000000084008400FFFFFF008400
      84008400840084008400840084008400840000FFFF0000FFFF00840084008400
      84008400840000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF0084000000000000000000000000000000000000000000000084008400FFFF
      FF0084008400840084008400840084008400840084000084840000FFFF0000FF
      FF008400840084008400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000008400
      8400FFFFFF00840084008400840084008400008484008400840000FFFF0000FF
      FF008400840084008400840084000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084008400FFFFFF00840084008400840000FFFF0000FFFF0000FFFF008400
      84008400840084008400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084008400FFFFFF00840084008400840084008400840084008400
      84000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      840000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000840000008400000084000000840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084008400FFFFFF008400840084008400000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000FFFF00FFFFFF0000FF
      FF00848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840084008400840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      840000000000000000000000000000000000C6C6C60000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      840000000000000000000000000000000000C6C6C60000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000008484000000
      0000008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000848400008484000000
      0000008484000000000000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000008484000000
      0000008484000000000000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000008484000000
      0000008484000000000000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
      0000008484000000000000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C6000000
      0000008484000000000000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000084840000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000C6C6C6000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000C6C6C6000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000000000000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000000000000000000000000000C6C6C60000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000000000000000000000000000C6C6C60000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000000000000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF0084000000840000008400000084000000840000008400
      00008400000084000000FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF0084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000084000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      00008400000084000000FFFFFF00840000008400000084000000840000008400
      0000FFFFFF008400000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      00008400000084000000840000008400000084000000FFFFFF00840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000000000000840000008400
      0000840000000000000000000000000000000000000000000000848484000000
      0000FFFFFF008484840000000000840000000000000000000000000000000000
      0000000084000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF008484840084000000840000008400
      0000000000000000000000000000000000000000000084848400000000000000
      000000000000FFFFFF0084848400000000000000000000000000000000000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000848484000000
      000000000000000000000000000000000000FFFFFF0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000FFFFFF008400000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000000000000000000084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00000000000000000084848400000000000000000000000000000000000000
      0000000084000000000000000000000084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000008400000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000FFFFFF00FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000FFFFFF00FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000084000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000084000000840000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000FFFFFF00840000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400000084000000840000008400000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008484840000000000000000008484
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000848484000000000000000000FFFF00008484
      84008484840000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      84000084840000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000008484
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000084840000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFF000000000000000000008484
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000084848400FFFF0000FFFF0000000000008484
      84008484840000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008484840000000000000000008484
      84000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000008400000084000000840000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000840000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00840000000000000000848400848484000084
      8400848484000084840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF00000000000000000000000000FFFF
      FF00840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00840000000000000000848400848484000084
      8400848484000084840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF0084000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF000000000000000000FFFF
      FF00840000008400000084000000840000000000000000848400848484000084
      8400848484000084840084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF0084000000000000000000000084848400008484008484
      8400008484008484840000848400848484000084840084848400008484008484
      8400008484000000000000000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000000000000000000000000000000848400848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400848484000084
      84000000000000FFFF00000000000000000000FFFF0000000000848484000084
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000E00000000100010000000000000700000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000C383000000000000E7C3000000000000
      F3C7000000000000F3C7000000000000F80F000000000000F98F000000000000
      FC9F000000000000FC1F000000000000FE3F000000000000FE3F000000000000
      FF7F000000000000FFFF000000000000FFFFFFFF0000FFFFFFFFC0070000FFFF
      C007800300008000C007000100008000C007000100008000C007000100008000
      C007000000008000C007000000008000C007800000008000C007C00000008000
      C007E00100008000C007E00700008000C00FF00700008000C01FF00300008000
      C03FF80300008000FFFFFFFF00008000FFFFFFC7FFC70000FE3FF701FF010000
      F81F0301F7010000E00F02000200E007800776000200E00700037E007600E007
      0001FF017F01E00700000001FF01E007000100C70047E007800100FF007FE007
      C00100FF007FE007E00000FF007FFFFFF00000FF007FF81FF80300FF007FF81F
      FC0F01FF00FFF81FFE3F03FF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00F
      FFFFFFFF8FFF800FC007C0078C038003FFFFFFFF8FFF8003F807F83FFFFF8000
      FFFFFFFFFFFF8000C007C0078FFF8000FFFFFFFF8C038000F807F01F8FFF8000
      FFFFFFFFFFFF8000C007C007FFFF8000FFFFFFFF8FFFE000F807F83F8C03E000
      FFFFFFFF8FFFF800FFFFFFFFFFFFF800B6E7FFFFFFFFFFFFB76BFE49FFFFFFFF
      8427FE4907C1FFFFB76BFFFF07C1C007CEE7FFFF07C1FFFFFFFFC7C70101C03F
      C7C7C7C70001FFFFC7C7C3870001C007C387C0070001FFFFC007C0078003C03F
      C007C007C107FFFFC007C007C107C007C007C007E38FFFFFC007F39FE38FC03F
      F39FF39FE38FFFFFF39FF39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      E00FFFFF001FFFFFFFFFFFFF000FFFFFF83F81FF0007F00FF39FE3FF0003F8C7
      F39FF1FF0001F8C7F39FF8FF0000F8C7F39FFC7F001FF80FF39FFE3F001FF8C7
      F39FFF1F001FF8C7F39FFF8F8FF1F8C7E10FFF03FFF9F00FFFFFFFFFFF75FFFF
      FFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFBFFFFFFF0FFF9FFF1FFFF9FF1FF
      F87FE0FFFE1FE3FFF81FC47FF81FE7FFF80FCE3FF01FE707F81FFF1FF81FE387
      F87FFF8FFE1FE107F9FFFFC7FF9FF007FFFFFFE7FFFFF837FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFE7E7FC7FE7E7
      E007E787FC7FE1E7F00FE607E00FE067F81FE007E00FE007FC3FE607E00FE067
      FE7FE787FC7FE1E7FFFFE7E7FC7FE7E7FFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FFFFFFFF8003FC00FFFFFFFF
      8003FC00FFFFFFFF8003FC00FFFFFFFF8003E000F3E7FFFF8003E000F1C7FFFF
      8003E000F88FFFFF8003E007FC1FE00780038007FE3FE00780038007FC1FE007
      80038007F88FFFFF8003801FF1C7FFFF8003801FF3E7FFFF8003801FFFFFFFFF
      FFFF801FFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFE9FF3FC0078003
      FFD1FE3FBFEB8003FFA3C07F00058003F04790F77E318003CE0F38E77E358003
      9F1F7CC100068003BF9F4EE67FEA80037FEF0CF6801480037FEF99FEC00A8003
      4FEFC3BFE00180034FEFFFB7E007800383DFFFB3F0078003839FFFC1F0038003
      CF3FFFF3F803FFFFF0FFFFF7FFFFFFFFFFFFFFFFFFFFFFFFC001000C000FF9FF
      80310008000FF9FF80310001000FF3C780310063000F73C7800100C3000F27FF
      800101EB000F07C78001016B000F00C78FF10023008F01E38FF10067114403F1
      8FF1000F0AB806388FF1000F057C0E388FF1000FFAFC1E388FF5005FFDF83F01
      8001003FFE047F83FFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEFFDC007001FFFFFC7FFC007000FFFFFC3FBC0070007EFFFE3F7C0070003
      EF83F1E7C0070001DFC3F8CFC0070000DFE3FC1FC007001FDFD3FE3FC007001F
      EF3BFC1FC007001FF0FFF8CFC0078FF1FFFFE1E7C00FFFF9FFFFC3F3C01FFF75
      FFFFC7FDC03FFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFC00FFFF
      F6CFFE008000FFFFF6B7FE000000FFFFF6B7FE000000FFFFF8B780000000FFF7
      FE8F80000001C1F7FE3F80000003C3FBFF7F80000003C7FBFE3F80010003CBFB
      FEBF80030003DCF7FC9F80070FC3FF0FFDDF807F0003FFFFFDDF80FF8007FFFF
      FDDF81FFF87FFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
