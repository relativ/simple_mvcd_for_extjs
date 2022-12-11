object FBankadanCekTahsilat: TFBankadanCekTahsilat
  Left = 155
  Top = 133
  BorderStyle = bsSingle
  Caption = 'Bankadan '#199'ek Tahsilat'#305
  ClientHeight = 445
  ClientWidth = 775
  Color = clBtnFace
  Constraints.MinHeight = 445
  Constraints.MinWidth = 697
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 445
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 771
      Height = 441
      Align = alClient
      BevelInner = bvRaised
      TabOrder = 0
      object Panel3: TPanel
        Left = 2
        Top = 296
        Width = 767
        Height = 143
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          767
          143)
        object YeniTahsilat: TTechButton
          Left = 521
          Top = 109
          Width = 75
          Height = 25
          Caption = 'Yeni'
          TabOrder = 0
          TabStop = True
          Anchors = [akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = YeniTahsilatClick
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
            'Yeni')
          Multiline = False
          Cizim = True
        end
        object BitBtn27: TTechButton
          Left = 600
          Top = 109
          Width = 75
          Height = 25
          Caption = 'Sil'
          TabOrder = 1
          TabStop = True
          Anchors = [akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = BitBtn27Click
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
        object BitBtn25: TTechButton
          Left = 678
          Top = 109
          Width = 75
          Height = 25
          Caption = 'Kapat'
          TabOrder = 2
          TabStop = True
          Anchors = [akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = BitBtn25Click
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
        object BitBtn1: TTechButton
          Left = 272
          Top = 108
          Width = 35
          Height = 26
          TabOrder = 3
          TabStop = True
          Enabled = False
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
          Left = 311
          Top = 109
          Width = 36
          Height = 25
          TabOrder = 4
          TabStop = True
          Enabled = False
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
          Left = 210
          Top = 109
          Width = 45
          Height = 25
          Caption = 'So&n'
          TabOrder = 5
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
          Left = 133
          Top = 109
          Width = 75
          Height = 25
          Caption = 'Son&raki'
          TabOrder = 6
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
          Left = 56
          Top = 109
          Width = 75
          Height = 25
          Caption = #214'n&ceki'
          TabOrder = 7
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
          Left = 9
          Top = 109
          Width = 45
          Height = 25
          Caption = #304'l&k'
          TabOrder = 8
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
        object GroupBox5: TGroupBox
          Left = 9
          Top = 10
          Width = 324
          Height = 92
          Caption = ' Gelir Gider Merkezi / Personel '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          object Label20: TLabel
            Left = 11
            Top = 28
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Caption = 'G. G. Merkezi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 35
            Top = 55
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
          object DBOnlineEdit16: TDBTechEdit
            Left = 81
            Top = 24
            Width = 168
            Height = 21
            TabStop = False
            Color = 13041663
            DataField = 'C_GGMERKEZI'
            DataSource = DMCek.BankadanCTahsilatDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            RenkGiris = clAqua
            RenkCikis = 13041663
          end
          object OnlineButton6: TTechButton
            Left = 251
            Top = 24
            Width = 33
            Height = 21
            Caption = 'Se'#231
            TabOrder = 1
            TabStop = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = OnlineButton6Click
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
              'Se'#231)
            Multiline = False
            Cizim = True
          end
          object OnlineButton7: TTechButton
            Left = 288
            Top = 24
            Width = 25
            Height = 22
            TabOrder = 2
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
          object DBOnlineEdit18: TDBTechEdit
            Left = 81
            Top = 51
            Width = 168
            Height = 21
            Color = 14811135
            DataField = 'C_PERSONEL'
            DataSource = DMCek.BankadanCTahsilatDS
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
          object OnlineButton9: TTechButton
            Left = 252
            Top = 50
            Width = 32
            Height = 23
            Caption = '...'
            TabOrder = 4
            TabStop = True
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
          object OnlineButton10: TTechButton
            Left = 288
            Top = 50
            Width = 25
            Height = 22
            TabOrder = 5
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
        object GroupBox6: TGroupBox
          Left = 341
          Top = 10
          Width = 348
          Height = 92
          Caption = ' Toplamlar '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          object Label9: TLabel
            Left = 95
            Top = 69
            Width = 71
            Height = 13
            Caption = 'Banka Toplam'#305
            FocusControl = DBOnlineEdit11
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 112
            Top = 45
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
          object Label14: TLabel
            Left = 106
            Top = 21
            Width = 51
            Height = 13
            Caption = 'TL Toplam'
            FocusControl = DBOnlineEdit13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBOnlineEdit11: TDBTechEdit
            Left = 168
            Top = 17
            Width = 115
            Height = 21
            Color = 16769217
            DataField = 'TAHSILAT'
            DataSource = DMCek.BankadanCTahsilatDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            RenkGiris = clAqua
            RenkCikis = 16769217
          end
          object DBOnlineEdit12: TDBTechEdit
            Left = 167
            Top = 41
            Width = 115
            Height = 21
            Color = 13041663
            DataField = 'ISLEMKURU'
            DataSource = DMCek.BankadanCTahsilatDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            RenkGiris = clAqua
            RenkCikis = 13041663
          end
          object DBOnlineEdit13: TDBTechEdit
            Left = 167
            Top = 65
            Width = 114
            Height = 21
            Color = 16769217
            DataField = 'D_TAHSILAT'
            DataSource = DMCek.BankadanCTahsilatDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            RenkGiris = clAqua
            RenkCikis = 16769217
          end
          object DBOnlineEdit15: TDBTechEdit
            Left = 286
            Top = 65
            Width = 52
            Height = 21
            Color = 13041663
            DataField = 'C_PARABIRIMI'
            DataSource = DMCek.BankadanCTahsilatDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            RenkGiris = clAqua
            RenkCikis = 13041663
          end
        end
      end
      object Panel4: TPanel
        Left = 2
        Top = 32
        Width = 767
        Height = 101
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object GroupBox2: TGroupBox
          Left = 9
          Top = 6
          Width = 496
          Height = 91
          Caption = '  Bankadan Bilgileri  '
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object Label5: TLabel
            Left = 55
            Top = 60
            Width = 43
            Height = 13
            Caption = 'A'#231#305'klama'
            FocusControl = DBOnlineEdit10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 30
            Top = 31
            Width = 67
            Height = 13
            Caption = 'Banka Hesab'#305
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBOnlineEdit10: TDBTechEdit
            Left = 104
            Top = 56
            Width = 361
            Height = 21
            Color = 13041663
            DataField = 'ACIKLAMA'
            DataSource = DMCek.BankadanCTahsilatDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            RenkGiris = clAqua
            RenkCikis = 13041663
            BuyukKucuk = True
          end
          object OnlineButton1: TTechButton
            Left = 412
            Top = 29
            Width = 50
            Height = 21
            Caption = 'Se'#231
            TabOrder = 1
            TabStop = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
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
              'Se'#231)
            Multiline = False
            Cizim = True
          end
          object DBOnlineEdit4: TDBTechEdit
            Left = 104
            Top = 29
            Width = 297
            Height = 21
            TabStop = False
            Color = 13041663
            DataField = 'C_BANKAADI'
            DataSource = DMCek.BankadanCTahsilatDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            RenkGiris = clAqua
            RenkCikis = 13041663
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
          object Label16: TLabel
            Left = 26
            Top = 21
            Width = 41
            Height = 13
            Caption = #304#351'lem No'
            FocusControl = DBOnlineEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 12
            Top = 69
            Width = 55
            Height = 13
            Caption = 'Makbuz No'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 14
            Top = 45
            Width = 53
            Height = 13
            Caption = #304#351'lem Tarihi'
            FocusControl = DBOnlineEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBOnlineEdit2: TDBTechEdit
            Left = 76
            Top = 17
            Width = 79
            Height = 21
            Color = 13041663
            DataField = 'CEKISLEMNO'
            DataSource = DMCek.BankadanCTahsilatDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            RenkGiris = clAqua
            RenkCikis = 13041663
          end
          object DBOnlineEdit3: TDBTechEdit
            Left = 76
            Top = 41
            Width = 79
            Height = 21
            Color = 13041663
            DataField = 'TARIH'
            DataSource = DMCek.BankadanCTahsilatDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            RenkGiris = clAqua
            RenkCikis = 13041663
          end
          object DBOnlineEdit1: TDBTechEdit
            Left = 76
            Top = 65
            Width = 79
            Height = 21
            Color = 13041663
            DataField = 'MAKBUZNO'
            DataSource = DMCek.BankadanCTahsilatDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            RenkGiris = clAqua
            RenkCikis = 13041663
          end
        end
      end
      object Panel8: TPanel
        Left = 762
        Top = 133
        Width = 7
        Height = 163
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
      end
      object Panel7: TPanel
        Left = 2
        Top = 133
        Width = 10
        Height = 163
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
      end
      object GroupBox4: TGroupBox
        Left = 12
        Top = 133
        Width = 750
        Height = 163
        Align = alClient
        Caption = ' '#199'ekler '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object OnlineDBGrid1: TTechDBGrid
          Left = 2
          Top = 15
          Width = 746
          Height = 146
          Align = alClient
          DataSource = DMCek.BCTahBodroDS
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
          OnKeyPress = OnlineDBGrid1KeyPress
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
          GridOptions = [goColSizing]
          Columns = <
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
              FieldName = 'CEKNO'
              Width = 90
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Expanded = False
              FieldName = 'ACIKLAMA'
              Width = 195
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Expanded = False
              FieldName = 'TAHSILEDILEN'
              Width = 115
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
              FieldName = 'ISLEMKURU'
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Expanded = False
              FieldName = 'C_TLTAHSILEDILEN'
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end>
        end
      end
      object Panel5: TPanel
        Left = 2
        Top = 2
        Width = 767
        Height = 30
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Bankadan '#199'ek Tahsilat'#305
        Color = 13395456
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 480
    Top = 48
    object ekSe1: TMenuItem
      Caption = #199'ek &Se'#231
      OnClick = ekSe1Click
    end
  end
end
