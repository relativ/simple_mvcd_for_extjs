object FBankalar: TFBankalar
  Left = 208
  Top = 159
  BorderStyle = bsSingle
  Caption = 'Bankalar'
  ClientHeight = 442
  ClientWidth = 652
  Color = clBtnFace
  Constraints.MinHeight = 469
  Constraints.MinWidth = 660
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 652
    Height = 442
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Panel5: TPanel
      Left = 2
      Top = 402
      Width = 648
      Height = 38
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object GroupBox12: TGroupBox
        Left = 0
        Top = -2
        Width = 648
        Height = 40
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          648
          40)
        object BitBtn25: TTechButton
          Left = 565
          Top = 10
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
        object BitBtn26: TTechButton
          Left = 381
          Top = 10
          Width = 90
          Height = 25
          Caption = '&Yeni Banka'
          TabOrder = 0
          TabStop = True
          Anchors = [akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = BitBtn26Click
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
            '&Yeni Banka')
          Multiline = False
          Cizim = True
        end
        object BitBtn27: TTechButton
          Left = 477
          Top = 10
          Width = 84
          Height = 25
          Caption = 'Banka  Sil'
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
            'Banka  Sil')
          Multiline = False
          Cizim = True
        end
        object BLastPage: TTechButton
          Left = 205
          Top = 10
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
        object ButtonNext: TTechButton
          Left = 128
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Son&raki'
          TabOrder = 4
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
          Top = 10
          Width = 75
          Height = 25
          Caption = #214'n&ceki'
          TabOrder = 5
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
          Top = 10
          Width = 45
          Height = 25
          Caption = #304'l&k'
          TabOrder = 6
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
      end
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 34
      Width = 648
      Height = 368
      ActivePage = TabSheet4
      Align = alClient
      Style = tsFlatButtons
      TabIndex = 2
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = '       Bankalar          '
        OnShow = TabSheet1Show
        object GroupBox3: TGroupBox
          Left = 0
          Top = 0
          Width = 640
          Height = 337
          Align = alClient
          Caption = 'Bankalar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = GroupBox3Exit
          object OnlineDBGrid1: TTechDBGrid
            Left = 2
            Top = 233
            Width = 636
            Height = 102
            Align = alLeft
            DataSource = DMBanka.BankaDS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clRed
            TitleFont.Height = -12
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
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
                Color = clInfoBk
                Expanded = False
                FieldName = 'BANKAADI'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 146
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'HESAPADI'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 172
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'YETKILI'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 155
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'SUBE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 123
                Visible = True
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'SUBEKOD'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = False
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'ADRES'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = False
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'Sehir'
                ReadOnly = False
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = False
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'ILCE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = False
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'TELEFON1'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = False
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'TELEFON2'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = False
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'MAIL'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = False
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'WEB'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = False
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'NOTU'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clNavy
                Title.Font.Height = -12
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = False
                Siralama = True
                CokluTus = False
                Sirala1_Rengi = 8454016
                Sirala2_Rengi = 16777088
              end>
          end
          object Panel6: TPanel
            Left = 2
            Top = 15
            Width = 636
            Height = 218
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Label3: TLabel
              Left = 16
              Top = 17
              Width = 49
              Height = 13
              Caption = 'Banka Ad'#305
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 35
              Top = 137
              Width = 30
              Height = 13
              Caption = 'M'#252'd'#252'r'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 37
              Top = 161
              Width = 28
              Height = 13
              Caption = 'Yetkili'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 40
              Top = 185
              Width = 25
              Height = 13
              Caption = #350'ube'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 179
              Top = 185
              Width = 53
              Height = 13
              Caption = #350'ube Kodu'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 334
              Top = 17
              Width = 27
              Height = 13
              Caption = 'Adres'
              FocusControl = DBEdit8
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 356
              Top = 41
              Width = 5
              Height = 13
              Caption = #304'l'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 344
              Top = 65
              Width = 17
              Height = 13
              Caption = #304'l'#231'e'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 325
              Top = 89
              Width = 36
              Height = 13
              Caption = 'Telefon'
              FocusControl = DBEdit11
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 342
              Top = 113
              Width = 19
              Height = 13
              Caption = 'Mail'
              FocusControl = DBEdit13
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 338
              Top = 137
              Width = 23
              Height = 13
              Caption = 'Web'
              FocusControl = DBEdit14
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 16
              Top = 38
              Width = 49
              Height = 13
              Caption = 'Hesap Ad'#305
              FocusControl = DBEdit9
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 17
              Top = 109
              Width = 48
              Height = 13
              Caption = 'Hesap No'
              FocusControl = DBEdit10
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 16
              Top = 85
              Width = 49
              Height = 13
              Caption = 'Para Birimi'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 9
              Top = 61
              Width = 56
              Height = 13
              Caption = 'Hesap T'#252'r'#252
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 336
              Top = 161
              Width = 25
              Height = 13
              Caption = 'Vade'
              FocusControl = DBOnlineEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit3: TDBTechEdit
              Left = 75
              Top = 13
              Width = 230
              Height = 21
              Color = clInfoBk
              DataField = 'BANKAADI'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              RenkGiris = clAqua
              RenkCikis = clInfoBk
              BuyukKucuk = True
            end
            object DBEdit4: TDBTechEdit
              Tag = 5
              Left = 75
              Top = 133
              Width = 230
              Height = 21
              Color = clInfoBk
              DataField = 'MUDUR'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              RenkGiris = clAqua
              RenkCikis = clInfoBk
              BuyukKucuk = True
            end
            object DBEdit5: TDBTechEdit
              Tag = 6
              Left = 75
              Top = 157
              Width = 230
              Height = 21
              Color = clInfoBk
              DataField = 'YETKILI'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              RenkGiris = clAqua
              RenkCikis = clInfoBk
              BuyukKucuk = True
            end
            object DBEdit6: TDBTechEdit
              Tag = 7
              Left = 75
              Top = 181
              Width = 94
              Height = 21
              Color = clInfoBk
              DataField = 'SUBE'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              RenkGiris = clAqua
              RenkCikis = clInfoBk
              BuyukKucuk = True
            end
            object DBEdit7: TDBTechEdit
              Tag = 8
              Left = 243
              Top = 181
              Width = 62
              Height = 21
              Color = clInfoBk
              DataField = 'SUBEKOD'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              RenkGiris = clAqua
              RenkCikis = clInfoBk
              BuyukKucuk = True
            end
            object DBEdit8: TDBTechEdit
              Tag = 9
              Left = 371
              Top = 13
              Width = 262
              Height = 21
              Color = clInfoBk
              DataField = 'ADRES'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
              RenkGiris = clAqua
              RenkCikis = clInfoBk
              BuyukKucuk = True
            end
            object DBEdit11: TDBTechEdit
              Tag = 12
              Left = 371
              Top = 85
              Width = 105
              Height = 21
              Color = clInfoBk
              DataField = 'TELEFON1'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              RenkGiris = clAqua
              RenkCikis = clInfoBk
              BuyukKucuk = True
            end
            object DBEdit12: TDBTechEdit
              Tag = 13
              Left = 488
              Top = 85
              Width = 105
              Height = 21
              Color = clInfoBk
              DataField = 'TELEFON2'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
              RenkGiris = clAqua
              RenkCikis = clInfoBk
              BuyukKucuk = True
            end
            object DBEdit13: TDBTechEdit
              Tag = 14
              Left = 371
              Top = 109
              Width = 225
              Height = 21
              Color = clInfoBk
              DataField = 'MAIL'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 14
              RenkGiris = clAqua
              RenkCikis = clInfoBk
              BuyukKucuk = True
            end
            object DBEdit14: TDBTechEdit
              Tag = 15
              Left = 371
              Top = 133
              Width = 225
              Height = 21
              Color = clInfoBk
              DataField = 'WEB'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 15
              RenkGiris = clAqua
              RenkCikis = clInfoBk
              BuyukKucuk = True
            end
            object DBOnlineLookupCombo2: TDBTechLookupCombo
              Tag = 10
              Left = 371
              Top = 37
              Width = 159
              Height = 21
              Color = clInfoBk
              DataField = 'ILKOD'
              DataSource = DMBanka.BankaDS
              DropDownRows = 10
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'SEHIRKOD'
              ListField = 'SEHIRADI'
              ListSource = DMSabit.ilDS
              NullValueKey = 46
              ParentFont = False
              TabOrder = 10
              RenkGiris = clAqua
              RenkCikis = clInfoBk
            end
            object DBOnlineLookupCombo3: TDBTechLookupCombo
              Tag = 11
              Left = 371
              Top = 61
              Width = 156
              Height = 21
              Color = clInfoBk
              DataField = 'ILCEKOD'
              DataSource = DMBanka.BankaDS
              DropDownRows = 10
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'ILCEKOD'
              ListField = 'ILCEADI'
              ListSource = DMSabit.ilceDS
              NullValueKey = 46
              ParentFont = False
              TabOrder = 11
              RenkGiris = clAqua
              RenkCikis = clInfoBk
            end
            object DBEdit9: TDBTechEdit
              Tag = 1
              Left = 75
              Top = 38
              Width = 230
              Height = 21
              Color = clInfoBk
              DataField = 'HESAPADI'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              RenkGiris = clAqua
              RenkCikis = clInfoBk
              BuyukKucuk = True
            end
            object DBEdit10: TDBTechEdit
              Tag = 4
              Left = 75
              Top = 109
              Width = 158
              Height = 21
              Color = clInfoBk
              DataField = 'HESAPNO'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              RenkGiris = clAqua
              RenkCikis = clInfoBk
              BuyukKucuk = True
            end
            object DBOnlineCombo1: TDBTechCombo
              Tag = 2
              Left = 75
              Top = 61
              Width = 161
              Height = 21
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              ParentFont = False
              TabOrder = 2
              Items.Strings = (
                'Cari Hesap'
                'Kredi Kart'#305' Hesab'#305)
              RenkGiris = clAqua
              RenkCikis = clInfoBk
              KayitList.Strings = (
                'Cari Hesap'
                'Kredi Kart'#305' Hesab'#305)
              DataField = 'HESAPTURU'
              DataSource = DMBanka.BankaDS
            end
            object DBOnlineEdit2: TDBTechEdit
              Tag = 12
              Left = 371
              Top = 157
              Width = 105
              Height = 21
              Color = clInfoBk
              DataField = 'TELEFON1'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 16
              RenkGiris = clAqua
              RenkCikis = clInfoBk
              BuyukKucuk = True
            end
            object DBOnlineEdit3: TDBTechEdit
              Tag = 13
              Left = 370
              Top = 181
              Width = 105
              Height = 21
              Color = clInfoBk
              DataField = 'TELEFON2'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 17
              RenkGiris = clAqua
              RenkCikis = clInfoBk
              BuyukKucuk = True
            end
            object DBOnlineLookupCombo5: TDBTechLookupCombo
              Left = 76
              Top = 85
              Width = 159
              Height = 21
              Color = 14811135
              DataField = 'PARABIRKOD'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'PARABIRKOD'
              ListField = 'PARABIRIMI'
              ListSource = DMSabit.ParaBirimiDS
              ParentFont = False
              TabOrder = 3
              RenkGiris = 16777088
              RenkCikis = 14811135
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = '     Banka Hareket   '
        ImageIndex = 1
        OnShow = TabSheet2Show
        object GroupBox2: TGroupBox
          Left = 0
          Top = 32
          Width = 640
          Height = 305
          Align = alClient
          Caption = 'Hesap Hareketleri'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object cxGrid1: TcxGrid
            Left = 2
            Top = 15
            Width = 636
            Height = 288
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PopupMenu = PopupMenu1
            TabOrder = 0
            object cxGrid1DBTableView1: TcxGridDBTableView
              OnKeyDown = cxGrid1DBTableView1KeyDown
              DataController.DataSource = DMBanka.BankaislemDS
              DataController.Filter.Criteria = {FFFFFFFF0000000000}
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <
                    item
                      Column = cxGrid1DBTableView1ISLEMTUR
                    end
                    item
                      Column = cxGrid1DBTableView1TARIH
                    end
                    item
                      Column = cxGrid1DBTableView1TEDIYE
                    end
                    item
                      Column = cxGrid1DBTableView1TAHSILAT
                    end
                    item
                      Column = cxGrid1DBTableView1BAKIYE
                    end
                    item
                      Column = cxGrid1DBTableView1DURUM
                    end
                    item
                      Column = cxGrid1DBTableView1CARINO
                    end
                    item
                      Column = cxGrid1DBTableView1MAKBUZNO
                    end
                    item
                    end
                    item
                      Column = cxGrid1DBTableView1C_PARABIRIMI
                    end>
                  SummaryItems = <
                    item
                      Format = '###,###.0'
                      Kind = skSum
                      FieldName = 'TAHSILAT'
                      Column = cxGrid1DBTableView1TAHSILAT
                    end
                    item
                      Format = '###,###.0'
                      Kind = skSum
                      FieldName = 'TEDIYE'
                      Column = cxGrid1DBTableView1TEDIYE
                    end>
                end>
              NavigatorButtons.ConfirmDelete = False
              OptionsBehavior.FocusCellOnTab = True
              OptionsCustomize.ColumnFiltering = False
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.HideSelection = True
              OptionsView.Indicator = True
              Styles.StyleSheet = DMData.GridTableViewStyleSheetBrick
              object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
                Visible = False
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                DataBinding.FieldName = 'ISLEMKOD'
              end
              object cxGrid1DBTableView1TARIH: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                Width = 72
                DataBinding.FieldName = 'TARIH'
              end
              object cxGrid1DBTableView1SAAT: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                Width = 49
                DataBinding.FieldName = 'SAAT'
              end
              object cxGrid1DBTableView1ISLEMTUR: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                Width = 110
                DataBinding.FieldName = 'ISLEMTUR'
              end
              object cxGrid1DBTableView1BANKAISLEMNO: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                Width = 71
                DataBinding.FieldName = 'BANKAISLEMNO'
              end
              object cxGrid1DBTableView1ACIKLAMA: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                Width = 155
                DataBinding.FieldName = 'ACIKLAMA'
              end
              object cxGrid1DBTableView1TEDIYE: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                SortOrder = soAscending
                Width = 152
                DataBinding.FieldName = 'TEDIYE'
              end
              object cxGrid1DBTableView1TAHSILAT: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                Width = 132
                DataBinding.FieldName = 'TAHSILAT'
              end
              object cxGrid1DBTableView1C_PARABIRIMI: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                DataBinding.FieldName = 'C_PARABIRIMI'
              end
              object cxGrid1DBTableView1BAKIYE: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                Width = 128
                DataBinding.FieldName = 'BAKIYE'
              end
              object cxGrid1DBTableView1DURUM: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                Width = 43
                DataBinding.FieldName = 'C_DURUM'
              end
              object cxGrid1DBTableView1MAKBUZNO: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                Width = 95
                DataBinding.FieldName = 'MAKBUZNO'
              end
              object cxGrid1DBTableView1CARINO: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                DataBinding.FieldName = 'C_CARIADI'
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 640
          Height = 32
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Panel3'
          TabOrder = 1
          object GroupBox1: TGroupBox
            Left = 3
            Top = -3
            Width = 639
            Height = 35
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label2: TLabel
              Left = 19
              Top = 13
              Width = 58
              Height = 13
              Caption = 'Banka  Ad'#305' :'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 333
              Top = 13
              Width = 55
              Height = 13
              Caption = 'Hesap Ad'#305' :'
              FocusControl = DBOnlineEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit2: TDBTechEdit
              Left = 81
              Top = 7
              Width = 216
              Height = 24
              TabStop = False
              BevelOuter = bvNone
              Color = 13303754
              DataField = 'BANKAADI'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              OnKeyPress = FormKeyPress
              RenkGiris = 13303754
              RenkCikis = 13303754
            end
            object DBOnlineEdit1: TDBTechEdit
              Left = 392
              Top = 7
              Width = 242
              Height = 24
              TabStop = False
              BevelOuter = bvNone
              Color = 13303754
              DataField = 'HESAPADI'
              DataSource = DMBanka.BankaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              OnKeyPress = FormKeyPress
              RenkGiris = 13303754
              RenkCikis = 13303754
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = '   Genel Durum   '
        ImageIndex = 3
        OnShow = TabSheet4Show
        object GroupBox6: TGroupBox
          Left = 0
          Top = 0
          Width = 640
          Height = 337
          Align = alClient
          Caption = 'Bankalar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = GroupBox3Exit
          object cxGrid2: TcxGrid
            Left = 2
            Top = 15
            Width = 636
            Height = 289
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object cxGrid2DBTableView1: TcxGridDBTableView
              OnKeyDown = cxGrid2DBTableView1KeyDown
              DataController.DataSource = DMBanka.BankaDS
              DataController.Filter.Criteria = {FFFFFFFF0000000000}
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NavigatorButtons.ConfirmDelete = False
              OptionsBehavior.FocusCellOnTab = True
              OptionsCustomize.ColumnFiltering = False
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsSelection.HideSelection = True
              OptionsView.Indicator = True
              Styles.StyleSheet = DMData.GridTableViewStyleSheetBrick
              object cxGrid2DBTableView1BANKAADI: TcxGridDBColumn
                Width = 201
                DataBinding.FieldName = 'BANKAADI'
              end
              object cxGrid2DBTableView1HESAPADI: TcxGridDBColumn
                Width = 191
                DataBinding.FieldName = 'HESAPADI'
              end
              object cxGrid2DBTableView1BAKIYE: TcxGridDBColumn
                Width = 133
                DataBinding.FieldName = 'C_BAKIYE'
              end
              object cxGrid2DBTableView1C_PARABIRIMI: TcxGridDBColumn
                Width = 55
                DataBinding.FieldName = 'C_PARABIRIMI'
              end
              object cxGrid2DBTableView1DURUM: TcxGridDBColumn
                Width = 47
                DataBinding.FieldName = 'C_DURUM'
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView1
            end
          end
          object Panel4: TPanel
            Left = 2
            Top = 304
            Width = 636
            Height = 31
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object Label21: TLabel
              Left = 304
              Top = 9
              Width = 82
              Height = 13
              Caption = 'Bankalar Toplam'#305
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label22: TLabel
              Left = 29
              Top = 8
              Width = 49
              Height = 13
              Caption = 'Para Birimi'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object OnlineEdit1: TTechEdit
              Left = 400
              Top = 5
              Width = 119
              Height = 21
              RenkGiris = 16777088
              RenkCikis = 13041663
              Hizalama = taRightJustify
              Color = 13041663
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object OnlineEdit2: TTechEdit
              Left = 520
              Top = 5
              Width = 57
              Height = 21
              RenkGiris = 16777088
              RenkCikis = 13041663
              Color = 13041663
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBOnlineLookupCombo1: TDBTechLookupCombo
              Left = 88
              Top = 5
              Width = 169
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'PARABIRKOD'
              ListField = 'PARABIRIMI'
              ListSource = DMSabit.ParaBirimiDS
              ParentFont = False
              TabOrder = 2
              OnClick = DBOnlineLookupCombo1Click
              RenkGiris = clInfoBk
              RenkCikis = clWhite
            end
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 648
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Bankalar'
      Color = 28895
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 40
    object BakiyeHesap1: TMenuItem
      Caption = '&Bakiye Hesap'
      object ariheGre1: TMenuItem
        Caption = '&Tarihe G'#246're'
        OnClick = ariheGre1Click
      end
      object lemSrasnaGre1: TMenuItem
        Caption = #304#351'lem &S'#305'ras'#305'na G'#246're'
        OnClick = lemSrasnaGre1Click
      end
    end
    object HesaplarOlutur1: TMenuItem
      Caption = '&Hesaplar'#305' Olu'#351'tur'
      Visible = False
      OnClick = HesaplarOlutur1Click
    end
  end
  object ProcTarihBanka: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'BAKIYE_HESAP_BANKA_TARIH'
    Left = 256
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'BANKAKOD_IN'
        ParamType = ptInput
      end>
  end
  object ProcIslemBanka: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'BAKIYE_HESAP_BANKA_ISLEMKOD'
    Left = 344
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'BANKAKOD_IN'
        ParamType = ptInput
      end>
  end
  object BankaGenelTopProc: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'KASABANKA_GENELDURUM'
    Left = 512
    Top = 40
    ParamData = <
      item
        DataType = ftFloat
        Name = 'BAKIYE_OUT'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ISLEMTURU_IN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PARABIRKOD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TARIH_IN'
        ParamType = ptInput
      end>
  end
end
