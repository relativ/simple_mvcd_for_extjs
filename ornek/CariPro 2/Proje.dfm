object FProje: TFProje
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = 'Projeler'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 446
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 16769968
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 684
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Projeler'
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
      Top = 407
      Width = 684
      Height = 37
      Align = alBottom
      BevelOuter = bvNone
      Color = 13395456
      TabOrder = 1
      DesignSize = (
        684
        37)
      object BitBtn1: TTechButton
        Left = 440
        Top = 7
        Width = 75
        Height = 25
        Caption = '&Yeni'
        TabOrder = 0
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
        Left = 522
        Top = 7
        Width = 75
        Height = 25
        Caption = '&Sil'
        TabOrder = 1
        TabStop = True
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
        Left = 603
        Top = 7
        Width = 75
        Height = 25
        Caption = '&Kapat'
        TabOrder = 2
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
      object BLastPage: TTechButton
        Left = 205
        Top = 7
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
        TabOrder = 4
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
        TabOrder = 5
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
        TabOrder = 6
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
    object Panel3: TPanel
      Left = 2
      Top = 395
      Width = 684
      Height = 12
      Align = alBottom
      BevelOuter = bvNone
      Color = 16769968
      TabOrder = 2
    end
    object Panel5: TPanel
      Left = 674
      Top = 249
      Width = 12
      Height = 146
      Align = alRight
      BevelOuter = bvNone
      Color = 16769968
      TabOrder = 3
    end
    object Panel6: TPanel
      Left = 2
      Top = 249
      Width = 12
      Height = 146
      Align = alLeft
      BevelOuter = bvNone
      Color = 16769968
      TabOrder = 4
    end
    object Panel7: TPanel
      Left = 2
      Top = 44
      Width = 684
      Height = 193
      Align = alTop
      BevelOuter = bvNone
      Color = 16769968
      TabOrder = 5
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 12
        Height = 193
        Align = alLeft
        BevelOuter = bvNone
        Color = 16769968
        TabOrder = 0
      end
      object Panel11: TPanel
        Left = 672
        Top = 0
        Width = 12
        Height = 193
        Align = alRight
        BevelOuter = bvNone
        Color = 16769968
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 12
        Top = 0
        Width = 660
        Height = 193
        Align = alClient
        Caption = ' Projeler '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object OnlineCheckDBGrid1: TTechCheckDBGrid
          Left = 2
          Top = 15
          Width = 656
          Height = 176
          Align = alClient
          DataSource = DMProje.ProjeDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnEditButtonClick = OnlineCheckDBGrid1EditButtonClick
          BaslikButton = False
          About = 
            'Online Yaz'#305'l'#305'm/ Serkan G'#252'ne'#351' '#13#10'E-Mail: online@onlinebilgisayar.c' +
            'om. '#13#10'Web: www.onlinebilgisayar.com'
          SatirCiz = False
          SatirRengi = clBlack
          SatirFontRengi = clBlack
          GridOptions = []
          DefaultRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'PROJENO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
              ValueChecked = '1'
              ValueUnchecked = '0'
              Siralama = True
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Expanded = False
              FieldName = 'TARIH'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
              ValueChecked = '1'
              ValueUnchecked = '0'
              Siralama = True
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Expanded = False
              FieldName = 'PROJEADI'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 298
              Visible = True
              ValueChecked = '1'
              ValueUnchecked = '0'
              Siralama = True
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Expanded = False
              FieldName = 'BATARIH'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
              ValueChecked = '1'
              ValueUnchecked = '0'
              Siralama = True
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Expanded = False
              FieldName = 'BITTARIH'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
              ValueChecked = '1'
              ValueUnchecked = '0'
              Siralama = True
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Expanded = False
              FieldName = 'DURUM'
              PickList.Strings = (
                'Ba'#351'lat'#305'lmam'#305#351
                'Devam Ediyor'
                'Tamamlanm'#305#351
                #304'ptal Edilmi'#351
                'Ertelenmi'#351)
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
              ValueChecked = '1'
              ValueUnchecked = '0'
              Siralama = True
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'C_PERSONEL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
              ValueChecked = '1'
              ValueUnchecked = '0'
              Siralama = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Expanded = False
              FieldName = 'ISLEMSURESI'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
              ValueChecked = '1'
              ValueUnchecked = '0'
              Siralama = True
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Expanded = False
              FieldName = 'UYARI'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
              Check = True
              ValueChecked = '1'
              ValueUnchecked = '2'
              Siralama = True
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end>
        end
      end
    end
    object Panel8: TPanel
      Left = 2
      Top = 237
      Width = 684
      Height = 12
      Align = alTop
      BevelOuter = bvNone
      Color = 16769968
      TabOrder = 6
    end
    object Panel9: TPanel
      Left = 2
      Top = 32
      Width = 684
      Height = 12
      Align = alTop
      BevelOuter = bvNone
      Color = 16769968
      TabOrder = 7
    end
    object GroupBox2: TGroupBox
      Left = 14
      Top = 249
      Width = 660
      Height = 146
      Align = alClient
      Caption = ' Proje  '#304#351'lemleri'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      object OnlineDBGrid1: TTechDBGrid
        Left = 2
        Top = 15
        Width = 656
        Height = 129
        Align = alClient
        DataSource = DMProje.islemDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnEditButtonClick = OnlineDBGrid1EditButtonClick
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
            Expanded = False
            FieldName = 'TARIH'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 98
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = 8454016
            Sirala2_Rengi = 16777088
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'C_PERSONEL'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 118
            Visible = True
            Siralama = False
            CokluTus = False
            Sirala1_Rengi = clBlack
            Sirala2_Rengi = clBlack
          end
          item
            Expanded = False
            FieldName = 'ACILAMA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 275
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = 8454016
            Sirala2_Rengi = 16777088
          end
          item
            Expanded = False
            FieldName = 'DURUM'
            PickList.Strings = (
              'Devam Ediyor'
              'Tamamlanm'#305#351
              #304'ptal Edilmi'#351
              'Ertelenmi'#351)
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 112
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
