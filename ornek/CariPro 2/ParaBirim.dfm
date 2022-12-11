object FParaBirim: TFParaBirim
  Left = 191
  Top = 111
  Width = 660
  Height = 501
  Caption = 'Para Birimleri'
  Color = clBtnFace
  Constraints.MinHeight = 467
  Constraints.MinWidth = 652
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
    Width = 652
    Height = 467
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 648
      Height = 463
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 0
      object GroupBox3: TGroupBox
        Left = 2
        Top = 233
        Width = 644
        Height = 187
        Align = alClient
        Caption = 'D'#246'viz Kurlar'#305' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = GroupBox3Exit
        object OnlineDBGrid3: TTechDBGrid
          Left = 2
          Top = 15
          Width = 640
          Height = 170
          Align = alClient
          BorderStyle = bsNone
          DataSource = DMSabit.DovizKurDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clRed
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
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
          GridOptions = [goColSizing]
          Columns = <
            item
              Color = 13041663
              Expanded = False
              FieldName = 'TARIH'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Color = 13041663
              Expanded = False
              FieldName = 'FIRMAKUR'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Color = 13041663
              Expanded = False
              FieldName = 'SERALIS'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Color = 13041663
              Expanded = False
              FieldName = 'SERSATIS'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Color = 13041663
              Expanded = False
              FieldName = 'MBALIS'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Color = 13041663
              Expanded = False
              FieldName = 'MBSATIS'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Color = 13041663
              Expanded = False
              FieldName = 'EFEALIS'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Color = 13041663
              Expanded = False
              FieldName = 'EFESATIS'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
              Siralama = False
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end>
        end
      end
      object Panel3: TPanel
        Left = 2
        Top = 420
        Width = 644
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object GroupBox12: TGroupBox
          Left = 3
          Top = -1
          Width = 640
          Height = 40
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object BFirstPage: TTechButton
            Left = 4
            Top = 10
            Width = 45
            Height = 25
            Caption = '&'#304'lk'
            TabOrder = 0
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
              '&'#304'lk')
            Multiline = False
            Cizim = True
          end
          object ButtonPrevious: TTechButton
            Left = 53
            Top = 10
            Width = 75
            Height = 25
            Caption = '&'#214'nceki'
            TabOrder = 1
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
              '&'#214'nceki')
            Multiline = False
            Cizim = True
          end
          object ButtonNext: TTechButton
            Left = 131
            Top = 10
            Width = 75
            Height = 25
            Caption = '&Sonraki'
            TabOrder = 2
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
              '&Sonraki')
            Multiline = False
            Cizim = True
          end
          object BLastPage: TTechButton
            Left = 210
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
          object BitBtn25: TTechButton
            Left = 559
            Top = 10
            Width = 75
            Height = 25
            Caption = 'Kapat'
            TabOrder = 4
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
              'Kapat')
            Multiline = False
            Cizim = True
          end
          object BitBtn8: TTechButton
            Left = 393
            Top = 10
            Width = 77
            Height = 25
            Caption = 'Kur Ekle'
            TabOrder = 5
            TabStop = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = BitBtn8Click
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
              'Kur Ekle')
            Multiline = False
            Cizim = True
          end
          object BitBtn7: TTechButton
            Left = 477
            Top = 10
            Width = 74
            Height = 25
            Caption = 'Kur Sil'
            TabOrder = 6
            TabStop = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = BitBtn7Click
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
              'Kur Sil')
            Multiline = False
            Cizim = True
          end
          object BitBtn5: TTechButton
            Left = 260
            Top = 10
            Width = 128
            Height = 25
            Caption = 'M.B. D'#246'viz  Kurlar'#305
            TabOrder = 7
            TabStop = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = BitBtn5Click
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
              'M.B. D'#246'viz  Kurlar'#305)
            Multiline = False
            Cizim = True
          end
        end
      end
      object Panel4: TPanel
        Left = 2
        Top = 34
        Width = 644
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel3'
        TabOrder = 2
        object GroupBox2: TGroupBox
          Left = 3
          Top = -2
          Width = 639
          Height = 35
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          object Label2: TLabel
            Left = 9
            Top = 12
            Width = 49
            Height = 13
            Caption = 'Para Birimi'
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 249
            Top = 12
            Width = 67
            Height = 13
            Caption = 'Varsay'#305'lan Kur'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit2: TDBTechEdit
            Left = 65
            Top = 8
            Width = 144
            Height = 24
            TabStop = False
            BevelOuter = bvNone
            Color = 13303754
            DataField = 'PARABIRIMI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            RenkGiris = 13303754
            RenkCikis = 13303754
          end
          object DBOnlineEdit2: TDBTechEdit
            Left = 323
            Top = 8
            Width = 112
            Height = 24
            TabStop = False
            BevelOuter = bvNone
            Color = 13303754
            DataField = 'KUR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            RenkGiris = 13303754
            RenkCikis = 13303754
          end
        end
      end
      object Panel6: TPanel
        Left = 2
        Top = 2
        Width = 644
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Caption = 'D'#246'viz Kurlar'#305
        Color = 28895
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object GroupBox1: TGroupBox
        Left = 2
        Top = 66
        Width = 644
        Height = 167
        Align = alTop
        Caption = 'Para Birimleri  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnExit = GroupBox1Exit
        object OnlineDBGrid1: TTechDBGrid
          Left = 6
          Top = 14
          Width = 355
          Height = 147
          BorderStyle = bsNone
          DataSource = DMSabit.ParaBirimiDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clRed
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
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
          GridOptions = [goColSizing]
          Columns = <
            item
              Color = 13041663
              Expanded = False
              FieldName = 'PARABIRIMI'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 153
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Alignment = taCenter
              Color = 13041663
              Expanded = False
              FieldName = 'KISAADI'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 54
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end
            item
              Color = 13041663
              Expanded = False
              FieldName = 'KUR'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 105
              Visible = True
              Siralama = True
              CokluTus = False
              Sirala1_Rengi = clBlack
              Sirala2_Rengi = clBlack
            end>
        end
        object OnlineButton1: TTechButton
          Left = 377
          Top = 130
          Width = 77
          Height = 25
          Caption = 'Ekle'
          TabOrder = 1
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
            'Kur Ekle')
          Multiline = False
          Cizim = True
        end
        object OnlineButton2: TTechButton
          Left = 459
          Top = 130
          Width = 74
          Height = 25
          Caption = 'Sil'
          TabOrder = 2
          TabStop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
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
            'Kur Sil')
          Multiline = False
          Cizim = True
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 280
    Top = 104
    object ParaBirimleri1: TMenuItem
      Caption = 'Para Birimleri'
      OnClick = ParaBirimleri1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 200
    Top = 104
    object MenuItem1: TMenuItem
      Caption = 'Doviz Kurlar'#305
    end
  end
end
