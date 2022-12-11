object FTeklifler: TFTeklifler
  Left = 238
  Top = 159
  BorderStyle = bsSingle
  Caption = 'Teklifler'
  ClientHeight = 463
  ClientWidth = 692
  Color = clBtnFace
  Constraints.MinHeight = 463
  Constraints.MinWidth = 692
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 463
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 688
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Teklifler'
      Color = 13395456
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 2
      Top = 43
      Width = 688
      Height = 385
      Align = alClient
      BevelOuter = bvNone
      Color = 7972351
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 13
        Top = 41
        Width = 662
        Height = 332
        Align = alClient
        Caption = '  Teklifler  '
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
          Width = 658
          Height = 315
          Align = alClient
          BorderStyle = bsNone
          DataSource = DMTeklif.TekliflerDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = OnlineDBGrid2DrawColumnCell
          OnDblClick = ncele1Click
          About = 
            'Online Yaz'#305'l'#305'm/ Serkan G'#252'ne'#351' '#13#10'E-Mail: online@onlinebilgisayar.c' +
            'om. '#13#10'Web: www.onlinebilgisayar.com'
          WordExport = True
          SatirRenk = False
          SatirRenk1 = 13041663
          SatirFontRengi = clBlack
          SatirFontRengi2 = clBlack
          SatirRenk2 = 13758931
          OnContextPopup = OnlineDBGrid2ContextPopup
          DefaultRowHeight = 17
          GridOptions = [goColSizing]
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
              FieldName = 'ISLEMTUR'
              Title.Alignment = taCenter
              Width = 141
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'EVRAKDURUMU'
              Title.Alignment = taCenter
              Width = 113
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
              Width = 182
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'ALISTUTAR'
              Title.Alignment = taCenter
              Width = 117
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'SATISTUTAR'
              Title.Alignment = taCenter
              Width = 116
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
              Title.Alignment = taCenter
              Width = 49
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end
            item
              Color = 14811135
              Expanded = False
              FieldName = 'C_CARIADI'
              Title.Alignment = taCenter
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = 8454016
              Sirala2_Rengi = 16777088
            end>
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 35
        Width = 688
        Height = 6
        Align = alTop
        BevelOuter = bvNone
        Color = 7972351
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Panel7: TPanel
        Left = 0
        Top = 41
        Width = 13
        Height = 332
        Align = alLeft
        BevelOuter = bvNone
        Color = 7972351
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel8: TPanel
        Left = 675
        Top = 41
        Width = 13
        Height = 332
        Align = alRight
        BevelOuter = bvNone
        Color = 7972351
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 688
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        Color = 15985129
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object OnlineCombo1: TTechCombo
          Left = 360
          Top = 8
          Width = 121
          Height = 21
          Color = 13369080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 2
          Text = 'Hepsi'
          Items.Strings = (
            'Hepsi'
            'Teklif Alma'
            'Teklif Verme')
          RenkGiris = 16777088
          RenkCikis = 13369080
        end
        object DateTimePicker1: TDateTimePicker
          Left = 8
          Top = 8
          Width = 169
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
          TabOrder = 0
        end
        object DateTimePicker2: TDateTimePicker
          Left = 184
          Top = 8
          Width = 169
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
          TabOrder = 1
        end
        object OnlineButton1: TTechButton
          Left = 606
          Top = 5
          Width = 73
          Height = 25
          Caption = '&Uygula'
          TabOrder = 3
          TabStop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
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
            '&Uygula')
          Multiline = False
          Cizim = True
        end
        object Acik: TTechCheckBox
          Left = 484
          Top = 11
          Width = 53
          Height = 17
          Caption = 'A'#231#305'k'
          TabOrder = 4
          TabStop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = AcikClick
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
        end
        object Kapali: TTechCheckBox
          Left = 540
          Top = 11
          Width = 61
          Height = 17
          Caption = 'Kapal'#305
          TabOrder = 5
          TabStop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = KapaliClick
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
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 373
        Width = 688
        Height = 12
        Align = alBottom
        BevelOuter = bvNone
        Color = 7972351
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 428
      Width = 688
      Height = 33
      Align = alBottom
      BevelOuter = bvNone
      Color = 13395456
      TabOrder = 2
      object BitBtn4: TTechButton
        Left = 4
        Top = 4
        Width = 29
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
        Spacing = 0
        CanRepeat = False
        ShowDownArrow = False
        Multiline = False
        Cizim = True
      end
      object BitBtn5: TTechButton
        Left = 35
        Top = 5
        Width = 30
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
      object Panel9: TPanel
        Left = 609
        Top = 0
        Width = 79
        Height = 33
        Align = alRight
        BevelOuter = bvNone
        Color = 13395456
        TabOrder = 2
        object BitBtn3: TTechButton
          Left = 3
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
      end
      object OnlineButton2: TTechButton
        Left = 67
        Top = 5
        Width = 65
        Height = 26
        Caption = 'Excel'#39'e At'
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
          'Excel'#39'e At')
        Multiline = False
        Cizim = True
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 168
    object ncele1: TMenuItem
      Caption = #304'ncele'
      Default = True
      OnClick = ncele1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Busipariialaevir1: TMenuItem
      Caption = 'Bu teklifi al'#305#351'a '#231'evir'
      OnClick = Busipariialaevir1Click
    end
    object Busipariisataevir1: TMenuItem
      Caption = 'Bu teklifi sat'#305#351'a '#231'evir'
      OnClick = Busipariisataevir1Click
    end
    object Buteklifisiparialmayaevir1: TMenuItem
      Caption = 'Bu teklifi sipari'#351' almaya '#231'evir'
      OnClick = Buteklifisiparialmayaevir1Click
    end
    object Buteklifisiparivermeyeevir1: TMenuItem
      Caption = 'Bu teklifi sipari'#351' vermeye '#231'evir'
      OnClick = Buteklifisiparivermeyeevir1Click
    end
  end
  object scExcelExport1: TscExcelExport
    DataPipe = dpDataSet
    StyleColumnWidth = cwAutoFit
    ColumnWidth = 0
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = -11
    FontHeader.Name = 'MS Sans Serif'
    FontHeader.Style = []
    FontHeader.Alignment = haGeneral
    FontHeader.WrapText = False
    FontHeader.Orientation = 0
    BorderHeader.BackColor = clBtnFace
    FontTitles.Charset = DEFAULT_CHARSET
    FontTitles.Color = clWhite
    FontTitles.Height = -11
    FontTitles.Name = 'MS Sans Serif'
    FontTitles.Style = [fsBold]
    FontTitles.Alignment = haGeneral
    FontTitles.WrapText = False
    FontTitles.Orientation = 0
    BorderTitles.BackColor = clBtnFace
    FontData.Charset = DEFAULT_CHARSET
    FontData.Color = clWindowText
    FontData.Height = -11
    FontData.Name = 'MS Sans Serif'
    FontData.Style = []
    FontData.Alignment = haGeneral
    FontData.WrapText = False
    FontData.Orientation = 0
    FontSummary.Charset = DEFAULT_CHARSET
    FontSummary.Color = clWindowText
    FontSummary.Height = -11
    FontSummary.Name = 'MS Sans Serif'
    FontSummary.Style = [fsBold]
    FontSummary.Alignment = haGeneral
    FontSummary.WrapText = False
    FontSummary.Orientation = 0
    BorderSummary.BackColor = clYellow
    SummarySelection = ssValues
    SummaryCalculation = scSUM
    Left = 104
    Top = 216
  end
end
