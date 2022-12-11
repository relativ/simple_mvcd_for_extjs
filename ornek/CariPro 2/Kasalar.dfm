object FKasalar: TFKasalar
  Left = 197
  Top = 149
  BorderStyle = bsSingle
  Caption = 'Kasalar'
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
  OldCreateOrder = False
  Position = poMainFormCenter
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
      object ButtonBakiyeHesap: TButton
        Left = 544
        Top = 7
        Width = 89
        Height = 25
        Caption = '&Bakiye Hesap'
        TabOrder = 1
      end
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
        object BFirstPage: TTechButton
          Left = 4
          Top = 10
          Width = 45
          Height = 25
          Caption = '&'#304'lk'
          TabOrder = 0
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
            'So&n')
          Multiline = False
          Cizim = True
        end
        object BitBtn25: TTechButton
          Left = 566
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Kapat'
          TabOrder = 4
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
          Left = 343
          Top = 10
          Width = 81
          Height = 25
          Caption = '&Yeni Kasa'
          TabOrder = 5
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
            '&Yeni Kasa')
          Multiline = False
          Cizim = True
        end
        object BitBtn27: TTechButton
          Left = 428
          Top = 10
          Width = 78
          Height = 25
          Caption = 'Kasa  Sil'
          TabOrder = 6
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
            'Kasa  Sil')
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
      ActivePage = TabSheet1
      Align = alClient
      Style = tsFlatButtons
      TabIndex = 0
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = '                         Kasalar                           '
        OnShow = TabSheet1Show
        object GroupBox3: TGroupBox
          Left = 0
          Top = 0
          Width = 640
          Height = 337
          Align = alClient
          Caption = 'Kasalar '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object cxGrid3: TcxGrid
            Left = 2
            Top = 15
            Width = 636
            Height = 266
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object cxGrid3DBTableView1: TcxGridDBTableView
              OnKeyDown = cxGrid3DBTableView1KeyDown
              DataController.DataModeController.DetailInSQLMode = True
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = DMKasa.KasaDS
              DataController.Filter.Criteria = {FFFFFFFF0000000000}
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NavigatorButtons.ConfirmDelete = False
              OptionsBehavior.FocusCellOnTab = True
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Editing = False
              OptionsSelection.CellSelect = False
              OptionsSelection.HideSelection = True
              OptionsView.Indicator = True
              Styles.StyleSheet = DMData.GridTableViewStyleSheetBrick
              object cxGrid3DBTableView1KASANO: TcxGridDBColumn
                HeaderAlignmentHorz = taCenter
                Width = 66
                DataBinding.FieldName = 'KASANO'
              end
              object cxGrid3DBTableView1KASAADI: TcxGridDBColumn
                HeaderAlignmentHorz = taCenter
                SortOrder = soAscending
                Width = 256
                DataBinding.FieldName = 'KASAADI'
              end
              object cxGrid3DBTableView1C_PARABIRIMI: TcxGridDBColumn
                HeaderAlignmentHorz = taCenter
                Width = 83
                DataBinding.FieldName = 'C_PARABIRIMI'
              end
              object cxGrid3DBTableView1ACIKLAMA: TcxGridDBColumn
                HeaderAlignmentHorz = taCenter
                Width = 259
                DataBinding.FieldName = 'ACIKLAMA'
              end
            end
            object cxGrid3Level1: TcxGridLevel
              GridView = cxGrid3DBTableView1
            end
          end
          object Panel6: TPanel
            Left = 2
            Top = 281
            Width = 636
            Height = 54
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            OnExit = Panel6Exit
            object Label3: TLabel
              Left = 88
              Top = 11
              Width = 42
              Height = 13
              Caption = 'Kasa Ad'#305
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 8
              Top = 12
              Width = 41
              Height = 13
              Caption = 'Kasa No'
              FocusControl = DBOnlineEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 240
              Top = 11
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
            object Label5: TLabel
              Left = 392
              Top = 11
              Width = 43
              Height = 13
              Caption = 'A'#231#305'klama'
              FocusControl = DBOnlineEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit3: TDBTechEdit
              Left = 88
              Top = 25
              Width = 147
              Height = 21
              Color = 13041663
              DataField = 'KASAADI'
              DataSource = DMKasa.KasaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyPress = FormKeyPress
              RenkGiris = clAqua
              RenkCikis = 13041663
              BuyukKucuk = True
            end
            object DBOnlineEdit3: TDBTechEdit
              Left = 8
              Top = 25
              Width = 75
              Height = 21
              Color = 13041663
              DataField = 'KASANO'
              DataSource = DMKasa.KasaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnKeyPress = FormKeyPress
              RenkGiris = clAqua
              RenkCikis = 13041663
              BuyukKucuk = True
            end
            object DBOnlineEdit5: TDBTechEdit
              Left = 392
              Top = 25
              Width = 235
              Height = 21
              Color = 13041663
              DataField = 'ACIKLAMA'
              DataSource = DMKasa.KasaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnKeyPress = FormKeyPress
              RenkGiris = clAqua
              RenkCikis = 13041663
              BuyukKucuk = True
            end
            object DBOnlineLookupCombo1: TDBTechLookupCombo
              Left = 240
              Top = 24
              Width = 145
              Height = 21
              Color = 13041663
              DataField = 'PARABIRIMKOD'
              DataSource = DMKasa.KasaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'PARABIRKOD'
              ListField = 'PARABIRIMI'
              ListSource = DMSabit.ParaBirimiDS
              ParentFont = False
              TabOrder = 1
              RenkGiris = clInfoBk
              RenkCikis = clWhite
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = '                Kasa Hareketleri                     '
        ImageIndex = 1
        OnShow = TabSheet2Show
        object GroupBox2: TGroupBox
          Left = 0
          Top = 32
          Width = 640
          Height = 305
          Align = alClient
          Caption = ' Kasa Hareketleri '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
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
            PopupMenu = PopupMenu2
            TabOrder = 0
            object cxGrid1DBTableView1: TcxGridDBTableView
              OnKeyDown = cxGrid1DBTableView1KeyDown
              DataController.DataModeController.DetailInSQLMode = True
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = DMKasa.KasaHareketDS
              DataController.Filter.Criteria = {FFFFFFFF0000000000}
              DataController.Options = [dcoAnsiSort, dcoCaseInsensitive]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NavigatorButtons.ConfirmDelete = False
              OptionsBehavior.FocusCellOnTab = True
              OptionsData.Editing = False
              OptionsSelection.HideSelection = True
              OptionsView.Indicator = True
              Styles.StyleSheet = DMData.GridTableViewStyleSheetBrick
              object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
                Visible = False
                DataBinding.FieldName = 'ISLEMKOD'
              end
              object cxGrid1DBTableView1TARIH: TcxGridDBColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 78
                DataBinding.FieldName = 'TARIH'
              end
              object cxGrid1DBTableView1CAISLEMNO: TcxGridDBColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 60
                DataBinding.FieldName = 'KASAISLEMNO'
              end
              object cxGrid1DBTableView1ISLEMTUR: TcxGridDBColumn
                Caption = #304#351'elm T'#252'r'#252
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 104
                DataBinding.FieldName = 'ISLEMTUR'
              end
              object cxGrid1DBTableView1ACIKLAMA: TcxGridDBColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 152
                DataBinding.FieldName = 'ACIKLAMA'
              end
              object cxGrid1DBTableView1D_TAHSILAT: TcxGridDBColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 139
                DataBinding.FieldName = 'TAHSILAT'
              end
              object cxGrid1DBTableView1D_TEDIYE: TcxGridDBColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 148
                DataBinding.FieldName = 'TEDIYE'
              end
              object cxGrid1DBTableView1BAKIYE: TcxGridDBColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 128
                DataBinding.FieldName = 'BAKIYE'
              end
              object cxGrid1DBTableView1DURUM: TcxGridDBColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 41
                DataBinding.FieldName = 'C_DURUM'
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
              Width = 42
              Height = 13
              Caption = 'Kasa Ad'#305
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 312
              Top = 13
              Width = 32
              Height = 13
              Caption = 'Bakiye'
              FocusControl = DBOnlineEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit2: TDBTechEdit
              Left = 67
              Top = 7
              Width = 222
              Height = 24
              TabStop = False
              BevelOuter = bvNone
              Color = 13303754
              DataField = 'KASAADI'
              DataSource = DMKasa.KasaDS
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
              Left = 552
              Top = 7
              Width = 81
              Height = 24
              TabStop = False
              BevelOuter = bvNone
              Color = 13303754
              DataField = 'C_PARABIRIMI'
              DataSource = DMKasa.KasaDS
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
            object DBOnlineEdit4: TDBTechEdit
              Left = 354
              Top = 7
              Width = 191
              Height = 24
              TabStop = False
              BevelOuter = bvNone
              Color = 13303754
              DataField = 'C_BAKIYE'
              DataSource = DMKasa.KasaDS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
              OnKeyPress = FormKeyPress
              RenkGiris = 13303754
              RenkCikis = 13303754
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = '                     Genel Durum                        '
        ImageIndex = 2
        OnExit = TabSheet3Exit
        OnShow = TabSheet3Show
        object GroupBox6: TGroupBox
          Left = 0
          Top = 0
          Width = 640
          Height = 337
          Align = alClient
          Caption = ' Kasalar '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object cxGrid2: TcxGrid
            Left = 2
            Top = 15
            Width = 636
            Height = 280
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
              DataController.DataModeController.DetailInSQLMode = True
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = DMKasa.KasaDS
              DataController.Filter.Criteria = {FFFFFFFF0000000000}
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NavigatorButtons.ConfirmDelete = False
              OptionsBehavior.FocusCellOnTab = True
              OptionsData.Editing = False
              OptionsSelection.CellSelect = False
              OptionsSelection.HideSelection = True
              OptionsView.Indicator = True
              Styles.StyleSheet = DMData.GridTableViewStyleSheetBrick
              object cxGrid2DBTableView1KASAADI: TcxGridDBColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 226
                DataBinding.FieldName = 'KASAADI'
              end
              object cxGrid2DBTableView1BAKIYE: TcxGridDBColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 168
                DataBinding.FieldName = 'BAKIYE'
              end
              object cxGrid2DBTableView1PARABIRIMI: TcxGridDBColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                SortOrder = soAscending
                Width = 75
                DataBinding.FieldName = 'C_PARABIRIMI'
              end
              object cxGrid2DBTableView1DURUM: TcxGridDBColumn
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 73
                DataBinding.FieldName = 'C_DURUM'
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView1
            end
          end
          object Panel2: TPanel
            Left = 2
            Top = 295
            Width = 636
            Height = 40
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object Label18: TLabel
              Left = 280
              Top = 14
              Width = 75
              Height = 13
              Caption = 'Kasalar Toplam'#305
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 21
              Top = 14
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
              Left = 366
              Top = 10
              Width = 139
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
              Left = 512
              Top = 10
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
            object DBOnlineLookupCombo2: TDBTechLookupCombo
              Left = 80
              Top = 10
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
              OnClick = DBOnlineLookupCombo2Click
              RenkGiris = clInfoBk
              RenkCikis = clWhite
            end
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 648
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Kasalar'
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
  object KasaMaxIBQuery: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select Max(KASANO) from KASA')
    Left = 672
    Top = 56
    object KasaMaxIBQueryMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object scExcelExport1: TscExcelExport
    DataPipe = dpDataSet
    Dataset = DMKasa.KasaHareketIBQ
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
    Left = 128
    Top = 200
  end
  object PopupMenu2: TPopupMenu
    Left = 248
    Top = 200
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
    object ExceleAt1: TMenuItem
      Caption = '&Excel'#39'e At'
      OnClick = ExceleAt1Click
    end
  end
  object ProcTarihKasa: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'BAKIYE_HESAP_KASA_TARIH'
    Left = 64
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'KASAKOD_IN'
        ParamType = ptInput
      end>
  end
  object ProcIslemKasa: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'BAKIYE_HESAP_KASA_ISLEMKOD'
    Left = 224
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'KASAKOD_IN'
        ParamType = ptInput
      end>
  end
  object KasaGenelTopProc: TIBStoredProc
    Database = DMData.IBDBCariPro
    Transaction = DMData.IBTCariPro
    StoredProcName = 'KASABANKA_GENELDURUM'
    Left = 344
    Top = 200
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
