object FCariKart: TFCariKart
  Left = 199
  Top = 108
  Width = 751
  Height = 600
  Caption = 'Cari Kart'
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 717
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 573
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    Color = 16769968
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 739
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Cari Kart'
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
      Top = 534
      Width = 739
      Height = 37
      Align = alBottom
      BevelOuter = bvNone
      Color = 13395456
      TabOrder = 1
      DesignSize = (
        739
        37)
      object BitBtn1: TTechButton
        Left = 492
        Top = 7
        Width = 57
        Height = 25
        Caption = '&Yeni'
        TabOrder = 1
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
          '&Yeni')
        Multiline = False
        Cizim = True
      end
      object BitBtn2: TTechButton
        Left = 605
        Top = 7
        Width = 52
        Height = 25
        Caption = '&Sil'
        TabOrder = 2
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
          '&Sil')
        Multiline = False
        Cizim = True
      end
      object BitBtn3: TTechButton
        Left = 658
        Top = 7
        Width = 75
        Height = 25
        Caption = '&Kapat'
        TabOrder = 3
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
      object OnlineEdit1: TTechEdit
        Left = 312
        Top = 8
        Width = 170
        Height = 21
        RenkGiris = clAqua
        RenkCikis = 12058623
        BuyukKucuk = True
        Color = 12058623
        TabOrder = 0
        OnKeyPress = OnlineEdit1KeyPress
      end
      object BLastPage: TTechButton
        Left = 205
        Top = 7
        Width = 45
        Height = 25
        Caption = 'So&n'
        TabOrder = 4
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
        TabOrder = 5
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
        TabOrder = 6
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
        TabOrder = 7
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
      object OnlineSearchEdit1: TTechSearchEdit
        Left = 256
        Top = 8
        Width = 49
        Height = 21
        Color = 12058623
        TabOrder = 8
        DataField = 'CARINO'
        Locate = True
        Like = False
      end
      object OnlineButton7: TTechButton
        Left = 550
        Top = 7
        Width = 54
        Height = 25
        Caption = 'Kopyala'
        TabOrder = 9
        TabStop = True
        Anchors = [akTop, akRight]
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
    object PageControl1: TPageControl
      Left = 2
      Top = 32
      Width = 739
      Height = 369
      ActivePage = TabSheet1
      Align = alTop
      Style = tsFlatButtons
      TabIndex = 0
      TabOrder = 2
      object TabSheet1: TTabSheet
        Caption = '          Cari Bilgiler             '
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 731
          Height = 338
          Align = alClient
          BevelOuter = bvNone
          Color = 16769968
          TabOrder = 0
          object GroupBox1: TGroupBox
            Left = 5
            Top = 0
            Width = 460
            Height = 331
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
            OnExit = GroupBox1Exit
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
            object Label5: TLabel
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
            object Label6: TLabel
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
            object Label7: TLabel
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
            object Label8: TLabel
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
            object Label9: TLabel
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
            object Label10: TLabel
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
            object Label11: TLabel
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
            object Label12: TLabel
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
            object Label14: TLabel
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
            object Label15: TLabel
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
            object Label16: TLabel
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
            object Label17: TLabel
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
            object Label4: TLabel
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
            object Label13: TLabel
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
            object Label20: TLabel
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
            object Label18: TLabel
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
            object Label19: TLabel
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
            object Label22: TLabel
              Left = 146
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
            object Label23: TLabel
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
            object DBOnlineEdit4: TDBTechEdit
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
              TabOrder = 0
              OnExit = DBOnlineEdit4Exit
              RenkGiris = 16777088
              RenkCikis = 14811135
              BuyukKucuk = True
            end
            object DBOnlineEdit7: TDBTechEdit
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
              TabOrder = 2
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
              TabOrder = 3
              OnExit = DBOnlineEdit8Exit
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
              TabOrder = 8
              RenkGiris = 16777088
              RenkCikis = 14811135
              BuyukKucuk = True
            end
            object DBOnlineEdit1: TDBTechEdit
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
              TabOrder = 11
              RenkGiris = 16777088
              RenkCikis = 14811135
              BuyukKucuk = True
            end
            object DBOnlineEdit2: TDBTechEdit
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
              TabOrder = 9
              RenkGiris = 16777088
              RenkCikis = 14811135
              BuyukKucuk = True
            end
            object DBOnlineEdit3: TDBTechEdit
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
              TabOrder = 12
              RenkGiris = 16777088
              RenkCikis = 14811135
              BuyukKucuk = True
            end
            object DBOnlineEdit9: TDBTechEdit
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
              TabOrder = 17
              RenkGiris = 16777088
              RenkCikis = 14811135
              BuyukKucuk = True
            end
            object DBOnlineEdit11: TDBTechEdit
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
              TabOrder = 19
              RenkGiris = 16777088
              RenkCikis = 14811135
              BuyukKucuk = True
            end
            object DBOnlineEdit12: TDBTechEdit
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
              TabOrder = 20
              RenkGiris = 16777088
              RenkCikis = 14811135
              BuyukKucuk = True
            end
            object DBOnlineEdit13: TDBTechEdit
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
              TabOrder = 21
              RenkGiris = 16777088
              RenkCikis = 14811135
              BuyukKucuk = True
            end
            object DBOnlineEdit14: TDBTechEdit
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
              TabOrder = 10
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
              TabOrder = 14
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
              TabOrder = 24
              TabStop = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              OnClick = OnlineDBCheckBox1Click
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
              TabOrder = 25
              TabStop = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              OnClick = OnlineDBCheckBox2Click
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
              TabOrder = 5
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
              TabOrder = 4
              RenkGiris = 16777088
              RenkCikis = 14811135
            end
            object DBOnlineEdit15: TDBTechEdit
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
              TabOrder = 15
              RenkGiris = 16777088
              RenkCikis = 14811135
              BuyukKucuk = True
            end
            object DBOnlineEdit16: TDBTechEdit
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
              TabOrder = 16
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
              TabOrder = 18
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
              TabOrder = 22
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
              TabOrder = 23
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
              ItemHeight = 13
              ParentFont = False
              TabOrder = 7
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
              TabOrder = 1
              OnExit = DBOnlineEdit4Exit
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
              TabOrder = 6
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
      end
      object TabSheet2: TTabSheet
        Caption = '        Kefiller          '
        ImageIndex = 1
        object GroupBox3: TGroupBox
          Left = 5
          Top = 0
          Width = 460
          Height = 331
          Caption = '   Kefiller   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = GroupBox3Exit
          object Label25: TLabel
            Left = 36
            Top = 30
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ad'#305
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 219
            Top = 30
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
          object Label28: TLabel
            Left = 14
            Top = 53
            Width = 36
            Height = 13
            Caption = 'Mesle'#287'i'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 230
            Top = 77
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = 'Gsm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label39: TLabel
            Left = 204
            Top = 53
            Width = 46
            Height = 13
            Caption = 'Memleket'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 24
            Top = 101
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Adres'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label44: TLabel
            Left = 15
            Top = 78
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
          object Label24: TLabel
            Left = 8
            Top = 121
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'A'#231#305'klama'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBOnlineRichEdit1: TDBTechRichEdit
            Left = 56
            Top = 121
            Width = 339
            Height = 48
            Color = 14811135
            DataField = 'ACIKLAMA'
            DataSource = DMCari.KefilDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PlainText = True
            TabOrder = 7
            RenkGiris = 16777088
            RenkCikis = 14811135
          end
          object OnlineDBGrid1: TTechDBGrid
            Left = 7
            Top = 206
            Width = 443
            Height = 115
            DataSource = DMCari.KefilDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 10
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
                Color = 12910591
                Expanded = False
                FieldName = 'ADI'
                Title.Alignment = taCenter
                Width = 152
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = 12910591
                Expanded = False
                FieldName = 'SOYADI'
                Title.Alignment = taCenter
                Width = 152
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = 12910591
                Expanded = False
                FieldName = 'TELEFON'
                Title.Alignment = taCenter
                Width = 104
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end>
          end
          object BitBtn4: TTechButton
            Left = 79
            Top = 175
            Width = 129
            Height = 25
            Caption = 'Kefil Ekle'
            TabOrder = 8
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
              'Kefil Ekle')
            Multiline = False
            Cizim = True
          end
          object BitBtn5: TTechButton
            Left = 240
            Top = 175
            Width = 129
            Height = 25
            Caption = 'Kefili Sil'
            TabOrder = 9
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
              'Kefili Sil')
            Multiline = False
            Cizim = True
          end
          object DBOnlineEdit18: TDBTechEdit
            Left = 56
            Top = 24
            Width = 137
            Height = 21
            Color = 14811135
            DataField = 'ADI'
            DataSource = DMCari.KefilDS
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
          object DBOnlineEdit20: TDBTechEdit
            Left = 56
            Top = 48
            Width = 137
            Height = 21
            Color = 14811135
            DataField = 'MESLEGI'
            DataSource = DMCari.KefilDS
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
          object DBOnlineEdit31: TDBTechEdit
            Left = 56
            Top = 72
            Width = 137
            Height = 21
            Color = 14811135
            DataField = 'TELEFON'
            DataSource = DMCari.KefilDS
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
          object DBOnlineEdit5: TDBTechEdit
            Left = 56
            Top = 96
            Width = 337
            Height = 21
            AutoSize = False
            Color = 14811135
            DataField = 'ADRES'
            DataSource = DMCari.KefilDS
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
          object DBOnlineEdit19: TDBTechEdit
            Left = 256
            Top = 24
            Width = 137
            Height = 21
            Color = 14811135
            DataField = 'SOYADI'
            DataSource = DMCari.KefilDS
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
          object DBOnlineEdit6: TDBTechEdit
            Left = 256
            Top = 48
            Width = 137
            Height = 21
            Color = 14811135
            DataField = 'MEMLEKETI'
            DataSource = DMCari.KefilDS
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
          object DBOnlineEdit17: TDBTechEdit
            Left = 256
            Top = 72
            Width = 137
            Height = 21
            Color = 14811135
            DataField = 'GSM'
            DataSource = DMCari.KefilDS
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
        end
      end
      object TabSheet3: TTabSheet
        Caption = '        '#304'stihbarat     '
        ImageIndex = 2
        object GroupBox4: TGroupBox
          Left = 5
          Top = 0
          Width = 460
          Height = 257
          Caption = '   '#304'stihbarat  ve Uyar'#305' Mesaj'#305'  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = GroupBox1Exit
          object Label29: TLabel
            Left = 24
            Top = 22
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = #304'stihbarat'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 9
            Top = 158
            Width = 57
            Height = 13
            Caption = 'Uyar'#305' Mesaj'#305
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object OnlineDBCheckbox3: TTechDBCheckbox
            Left = 72
            Top = 235
            Width = 97
            Height = 17
            Caption = 'Uyar'#305
            TabOrder = 2
            TabStop = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = OnlineDBCheckBox1Click
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
            DataField = 'UYARI'
            DataSource = DMCari.CariKartDS
            ValueChecked = '1'
            ValueUnChecked = '0'
          end
          object DBOnlineRichEdit2: TDBTechRichEdit
            Left = 72
            Top = 24
            Width = 379
            Height = 129
            Color = 13828095
            DataField = 'ISTIHBARAT'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PlainText = True
            ScrollBars = ssBoth
            TabOrder = 0
            RenkGiris = 16777088
            RenkCikis = 13828095
          end
          object DBOnlineRichEdit3: TDBTechRichEdit
            Left = 72
            Top = 160
            Width = 379
            Height = 65
            Color = 13828095
            DataField = 'MESAJ'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PlainText = True
            ScrollBars = ssBoth
            TabOrder = 1
            RenkGiris = 16777088
            RenkCikis = 13828095
          end
        end
        object GroupBox6: TGroupBox
          Left = 5
          Top = 264
          Width = 460
          Height = 65
          Caption = ' Limitler '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnExit = GroupBox1Exit
          object Label27: TLabel
            Left = 16
            Top = 28
            Width = 50
            Height = 13
            Caption = 'Kredi Limiti'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 256
            Top = 28
            Width = 47
            Height = 13
            Caption = 'Risk Limiti'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBOnlineEdit26: TDBTechEdit
            Left = 72
            Top = 24
            Width = 137
            Height = 21
            Color = 14811135
            DataField = 'KREDILIMIT'
            DataSource = DMCari.CariKartDS
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
          object DBOnlineEdit27: TDBTechEdit
            Left = 312
            Top = 24
            Width = 137
            Height = 21
            Color = 14811135
            DataField = 'RISKLIMIT'
            DataSource = DMCari.CariKartDS
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
        end
      end
      object TabSheet4: TTabSheet
        Caption = '         A'#231#305'klama         '
        ImageIndex = 3
        object GroupBox2: TGroupBox
          Left = 5
          Top = 0
          Width = 460
          Height = 331
          Caption = '   A'#231#305'klama   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = GroupBox1Exit
          object DBMemo2: TDBMemo
            Left = 9
            Top = 16
            Width = 443
            Height = 305
            Color = 14811135
            DataField = 'ACIKLAMA'
            DataSource = DMCari.CariKartDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object Panel6: TPanel
      Left = 2
      Top = 401
      Width = 739
      Height = 133
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      object GroupBox5: TGroupBox
        Left = 11
        Top = 0
        Width = 717
        Height = 122
        Align = alClient
        Caption = '  Cari Kart Listesi  '
        Color = 16769968
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        OnExit = GroupBox1Exit
        object OnlineDBGrid2: TTechDBGrid
          Left = 2
          Top = 15
          Width = 713
          Height = 105
          Align = alClient
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
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDblClick = OnlineDBGrid2DblClick
          OnKeyDown = OnlineDBGrid2KeyDown
          OnKeyPress = OnlineDBGrid2KeyPress
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
              FieldName = 'TAMADI'
              Width = 197
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Expanded = False
              FieldName = 'KOD'
              Width = 137
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Expanded = False
              FieldName = 'TEL1'
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Expanded = False
              FieldName = 'GSM'
              Width = 64
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Expanded = False
              FieldName = 'MAHALLE'
              Width = 64
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Expanded = False
              FieldName = 'BAKIYE'
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Expanded = False
              FieldName = 'DURUM'
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end>
        end
      end
      object Panel7: TPanel
        Left = 728
        Top = 0
        Width = 11
        Height = 122
        Align = alRight
        BevelOuter = bvNone
        Color = 16769968
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 122
        Align = alLeft
        BevelOuter = bvNone
        Color = 16769968
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel9: TPanel
        Left = 0
        Top = 122
        Width = 739
        Height = 11
        Align = alBottom
        BevelOuter = bvNone
        Color = 16769968
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
  end
end
