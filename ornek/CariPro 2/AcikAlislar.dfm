object FAcikAlislar: TFAcikAlislar
  Left = 222
  Top = 128
  Width = 696
  Height = 480
  BorderStyle = bsSizeToolWin
  Caption = 'A'#231#305'k Al'#305#351'lar'
  Color = clBtnFace
  Constraints.MaxHeight = 480
  Constraints.MaxWidth = 696
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 453
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 684
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'A'#231#305'k Al'#305#351'lar'
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
      Width = 684
      Height = 375
      Align = alClient
      BevelOuter = bvNone
      Color = 7972351
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 6
        Top = 5
        Width = 671
        Height = 175
        Caption = ' Al'#305#351'lar '
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
          Width = 667
          Height = 158
          Align = alClient
          DataSource = DMAlisSatis.AcikAlislarDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
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
          SatirRenk1 = 13041663
          SatirFontRengi = clBlack
          SatirFontRengi2 = clBlack
          SatirRenk2 = 13758931
          GridLineWidth = 0
          DefaultRowHeight = 16
          GridOptions = []
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ALISSATISNO'
              Title.Alignment = taCenter
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ALISTUTAR'
              Title.Alignment = taCenter
              Width = 178
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'D_ALISTUTAR'
              Title.Alignment = taCenter
              Width = 122
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'C_PARABIRIMI'
              Title.Alignment = taCenter
              Width = 33
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ODENEN'
              Title.Alignment = taCenter
              Width = 104
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'KALAN'
              Title.Alignment = taCenter
              Width = 109
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CARINO'
              Title.Alignment = taCenter
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'VADE'
              Title.Alignment = taCenter
              Width = 75
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'C_CARIADI'
              Title.Alignment = taCenter
              Width = 162
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end>
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 684
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
        Top = 6
        Width = 6
        Height = 361
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
        Left = 677
        Top = 6
        Width = 7
        Height = 361
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
      object Panel6: TPanel
        Left = 0
        Top = 367
        Width = 684
        Height = 8
        Align = alBottom
        BevelOuter = bvNone
        Color = 7972351
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object GroupBox2: TGroupBox
        Left = 7
        Top = 184
        Width = 671
        Height = 175
        Caption = ' Al'#305#351'lar '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object OnlineDBGrid1: TTechDBGrid
          Left = 2
          Top = 15
          Width = 667
          Height = 158
          Align = alClient
          DataSource = DMAlisSatis.AlisKapatmaDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
          SatirRenk = True
          SatirRenk1 = 13041663
          SatirFontRengi = clBlack
          SatirFontRengi2 = clBlack
          SatirRenk2 = 13758931
          GridLineWidth = 0
          DefaultRowHeight = 16
          GridOptions = []
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'TARIH'
              Title.Alignment = taCenter
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ALISSATISNO'
              Title.Alignment = taCenter
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ACIKLAMA'
              Title.Alignment = taCenter
              Width = 297
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ODENEN'
              Title.Alignment = taCenter
              Width = 186
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end>
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 418
      Width = 684
      Height = 33
      Align = alBottom
      BevelOuter = bvNone
      Color = 13395456
      TabOrder = 2
      object Panel9: TPanel
        Left = 605
        Top = 0
        Width = 79
        Height = 33
        Align = alRight
        BevelOuter = bvNone
        Color = 13395456
        TabOrder = 0
        object BitBtn3: TTechButton
          Left = 0
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Kapat'
          TabOrder = 0
          TabStop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = BitBtn3Click
          Cornerradius = 5
          Cancel = True
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
      object OnlineButton1: TTechButton
        Left = 98
        Top = 4
        Width = 73
        Height = 25
        Caption = '&Se'#231
        TabOrder = 1
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = OnlineButton1Click
        Cornerradius = 5
        DrawDisabledImg = False
        Default = True
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
          'OnlineButton1')
        Multiline = False
        Cizim = True
      end
      object OnlineButton2: TTechButton
        Left = 10
        Top = 4
        Width = 73
        Height = 25
        Caption = '&Uygula'
        TabOrder = 2
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = OnlineButton2Click
        Cornerradius = 5
        DrawDisabledImg = False
        Default = True
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
          'OnlineButton1')
        Multiline = False
        Cizim = True
      end
    end
  end
end
