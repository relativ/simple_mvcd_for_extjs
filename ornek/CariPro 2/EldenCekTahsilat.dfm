object FEldenCekTahsil: TFEldenCekTahsil
  Left = 226
  Top = 205
  HelpType = htKeyword
  HelpKeyword = #199'ek Giri'#351'i'
  BorderStyle = bsDialog
  Caption = 'Elden '#199'ek Tahsilat'#305
  ClientHeight = 239
  ClientWidth = 597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  HelpFile = 'help.hlp'
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 597
    Height = 239
    Align = alClient
    BevelInner = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 593
      Height = 235
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 6
        Top = 130
        Width = 583
        Height = 71
        Caption = #199'ek Bilgileri  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnExit = GroupBox1Exit
        object Label11: TLabel
          Left = 52
          Top = 45
          Width = 25
          Height = 13
          Caption = 'Tutar'
          FocusControl = DBEdit11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 461
          Top = 16
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
        object Label5: TLabel
          Left = 41
          Top = 16
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = #199'ek No'
          FocusControl = DBOnlineEdit9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 238
          Top = 16
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Banka'
          FocusControl = DBOnlineEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 392
          Top = 46
          Width = 52
          Height = 13
          Caption = 'D'#246'viz Kuru'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 240
          Top = 44
          Width = 65
          Height = 17
          DataField = 'PARABIRIMI'
          DataSource = FinansDataM.EldenCekTahsilSrc
        end
        object DBEdit11: TDBTechEdit
          Left = 84
          Top = 41
          Width = 149
          Height = 21
          Color = 16769217
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          OnExit = DBEdit11Exit
          RenkGiris = clAqua
          RenkCikis = 16769217
          Sayi = True
          Hizalama = taRightJustify
        end
        object OnlineDBDateEdit1: TTechDBDateEdit
          Left = 495
          Top = 12
          Width = 83
          Height = 21
          TabStop = False
          Color = 13041663
          DataField = 'VADE'
          DataSource = FinansDataM.EldenCekTahsilSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          TarihOnay = True
          RenkGiris = clAqua
          RenkCikis = 13041663
          About = 
            'Online Yaz'#305'l'#305'm / Serkan G'#252'ne'#351#13#10'E-Mail: online@onlinebilgisayar.c' +
            'om. '#13#10'Web: www.onlinebilgisayar.com'
        end
        object DBOnlineEdit9: TDBTechEdit
          Left = 85
          Top = 12
          Width = 68
          Height = 21
          TabStop = False
          Color = 13041663
          DataField = 'CekNo'
          DataSource = FinansDataM.EldenCekTahsilSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnChange = DBOnlineEdit9Change
          RenkGiris = clAqua
          RenkCikis = 13041663
        end
        object OnlineButton2: TTechButton
          Left = 156
          Top = 11
          Width = 77
          Height = 22
          Caption = '&'#199'ek Se'#231
          TabOrder = 1
          TabStop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = OnlineButton2Click
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
            '&Cari Se'#231)
          Multiline = False
          Cizim = True
        end
        object DBOnlineEdit7: TDBTechEdit
          Left = 276
          Top = 12
          Width = 173
          Height = 21
          TabStop = False
          Color = 13041663
          DataField = 'BANKA'
          DataSource = FinansDataM.EldenCekTahsilSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          OnExit = DBEdit11Exit
          RenkGiris = clAqua
          RenkCikis = 13041663
        end
        object DBEdit12: TDBTechEdit
          Left = 452
          Top = 42
          Width = 125
          Height = 21
          Color = 13041663
          DataField = 'ISLEMKURU'
          DataSource = FinansDataM.EldenCekTahsilSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          RenkGiris = clAqua
          RenkCikis = 13041663
        end
        object DBEdit1: TDBEdit
          Left = 240
          Top = 40
          Width = 121
          Height = 21
          DataField = 'D_TAHSILAT'
          DataSource = FinansDataM.EldenCekTahsilSrc
          TabOrder = 6
        end
      end
      object YeniTahsilat: TTechButton
        Left = 358
        Top = 206
        Width = 75
        Height = 25
        Caption = '&Yeni'
        TabOrder = 8
        TabStop = True
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
          '&Yeni')
        Multiline = False
        Cizim = True
      end
      object BitBtn27: TTechButton
        Left = 437
        Top = 206
        Width = 75
        Height = 25
        Caption = '&Sil'
        TabOrder = 9
        TabStop = True
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
          '&Sil')
        Multiline = False
        Cizim = True
      end
      object BitBtn25: TTechButton
        Left = 515
        Top = 206
        Width = 75
        Height = 25
        Caption = '&Kapat'
        TabOrder = 10
        TabStop = True
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
          '&Kapat')
        Multiline = False
        Cizim = True
      end
      object BitBtn1: TTechButton
        Left = 271
        Top = 205
        Width = 35
        Height = 26
        TabOrder = 6
        TabStop = True
        OnClick = BitBtn1Click
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
        Left = 310
        Top = 205
        Width = 36
        Height = 26
        TabOrder = 7
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
      object Panel6: TPanel
        Left = 6
        Top = 45
        Width = 584
        Height = 84
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        OnExit = Panel6Exit
        object Label16: TLabel
          Left = 453
          Top = 12
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
        object Label20: TLabel
          Left = 35
          Top = 11
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Kasa Ad'#305
          FocusControl = DBOnlineEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 441
          Top = 36
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
        object Label1: TLabel
          Left = 15
          Top = 37
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Gelir Merkezi'
          FocusControl = DBOnlineEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 439
          Top = 60
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Makbuz No'
          FocusControl = DBOnlineEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 30
          Top = 60
          Width = 43
          Height = 13
          Caption = 'A'#231#305'klama'
          FocusControl = DBEdit15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBOnlineEdit2: TDBTechEdit
          Left = 501
          Top = 8
          Width = 79
          Height = 21
          Color = 13041663
          DataField = 'CAISLEMNO'
          DataSource = FinansDataM.EldenCekTahsilSrc
          ReadOnly = True
          TabOrder = 4
          RenkGiris = clAqua
          RenkCikis = 13041663
        end
        object DBOnlineEdit3: TDBTechEdit
          Left = 501
          Top = 32
          Width = 79
          Height = 21
          Color = 13041663
          DataField = 'TARIH'
          DataSource = FinansDataM.EldenCekTahsilSrc
          TabOrder = 5
          RenkGiris = clAqua
          RenkCikis = 13041663
        end
        object DBOnlineEdit5: TDBTechEdit
          Left = 85
          Top = 8
          Width = 196
          Height = 21
          TabStop = False
          Color = 13041663
          DataField = 'KasaAdi'
          DataSource = FinansDataM.EldenCekTahsilSrc
          TabOrder = 0
          RenkGiris = clAqua
          RenkCikis = 13041663
        end
        object BitBtn3: TTechButton
          Left = 284
          Top = 8
          Width = 77
          Height = 22
          Caption = '&Kasa Se'#231
          TabOrder = 1
          TabStop = True
          OnClick = BitBtn3Click
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
            '&Cari Se'#231)
          Multiline = False
          Cizim = True
        end
        object DBOnlineEdit6: TDBTechEdit
          Left = 85
          Top = 32
          Width = 196
          Height = 21
          TabStop = False
          Color = 13041663
          DataField = 'GGMERKEZI'
          DataSource = FinansDataM.EldenCekTahsilSrc
          TabOrder = 2
          RenkGiris = clAqua
          RenkCikis = 13041663
        end
        object OnlineButton1: TTechButton
          Left = 284
          Top = 32
          Width = 33
          Height = 21
          Caption = 'S&e'#231
          TabOrder = 3
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
            'S&e'#231)
          Multiline = False
          Cizim = True
        end
        object DBOnlineEdit1: TDBTechEdit
          Left = 500
          Top = 56
          Width = 79
          Height = 21
          Color = 13041663
          DataField = 'FATURANO'
          DataSource = FinansDataM.EldenCekTahsilSrc
          TabOrder = 6
          RenkGiris = clAqua
          RenkCikis = 13041663
        end
        object DBEdit15: TDBTechEdit
          Left = 84
          Top = 57
          Width = 309
          Height = 21
          Color = 13041663
          DataField = 'ACIKLAMA'
          DataSource = FinansDataM.EldenCekTahsilSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          RenkGiris = clAqua
          RenkCikis = 13041663
          BuyukKucuk = True
        end
      end
      object Panel3: TPanel
        Left = 2
        Top = 2
        Width = 589
        Height = 39
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Elden '#199'ek Tahsilat'#305
        Color = 13395456
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object BFirstPage: TTechButton
        Left = 7
        Top = 205
        Width = 45
        Height = 25
        Caption = #304'&lk'
        TabOrder = 2
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
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
          #304'&lk')
        Multiline = False
        Cizim = True
      end
      object ButtonPrevious: TTechButton
        Left = 56
        Top = 205
        Width = 75
        Height = 25
        Caption = #214'&nceki'
        TabOrder = 3
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
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
          #214'&nceki')
        Multiline = False
        Cizim = True
      end
      object ButtonNext: TTechButton
        Left = 134
        Top = 205
        Width = 75
        Height = 25
        Caption = 'Sonr&aki'
        TabOrder = 4
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
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
          'Sonr&aki')
        Multiline = False
        Cizim = True
      end
      object BLastPage: TTechButton
        Left = 213
        Top = 205
        Width = 45
        Height = 25
        Caption = 'S&on'
        TabOrder = 5
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
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
          'S&on')
        Multiline = False
        Cizim = True
      end
    end
  end
end
