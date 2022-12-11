object FGelGidList: TFGelGidList
  Left = 198
  Top = 163
  BorderStyle = bsSingle
  Caption = 'Gelir Gider '#304#351'lemleri Listesi'
  ClientHeight = 463
  ClientWidth = 691
  Color = clBtnFace
  Constraints.MinHeight = 490
  Constraints.MinWidth = 452
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
    Width = 691
    Height = 463
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 687
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Gelir Gider '#304#351'lemleri Listesi'
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
      Width = 687
      Height = 385
      Align = alClient
      BevelOuter = bvNone
      Color = 7972351
      TabOrder = 1
      object dfsSplitter1: TdfsSplitter
        Left = 0
        Top = 219
        Width = 687
        Height = 10
        Cursor = crVSplit
        Align = alBottom
        Maximized = False
        Minimized = False
        ButtonCursor = crDefault
      end
      object GroupBox1: TGroupBox
        Left = 13
        Top = 41
        Width = 661
        Height = 178
        Align = alClient
        Caption = '  Gelir Gider '#304#351'lemleri Listesi '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object cxGrid1: TcxGrid
          Left = 2
          Top = 15
          Width = 657
          Height = 161
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            OnKeyDown = cxGrid1DBTableView1KeyDown
            DataController.DataSource = RaporDM.GelirGiderListSource
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
            Styles.StyleSheet = CariDM.GridTableViewStyleSheetDevExpress
            object cxGrid1DBTableView1CAISLEMNO: TcxGridDBColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.ReadOnly = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 56
              DataBinding.FieldName = 'CAISLEMNO'
            end
            object cxGrid1DBTableView1TARIH: TcxGridDBColumn
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 64
              DataBinding.FieldName = 'TARIH'
            end
            object cxGrid1DBTableView1ISLEMTUR: TcxGridDBColumn
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 139
              DataBinding.FieldName = 'ISLEMTUR'
            end
            object cxGrid1DBTableView1GelGider: TcxGridDBColumn
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownRows = 7
              Properties.ListColumns = <>
              Properties.ReadOnly = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 204
              DataBinding.FieldName = 'GelGider'
            end
            object cxGrid1DBTableView1D_TEDIYE: TcxGridDBColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.ReadOnly = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 101
              DataBinding.FieldName = 'D_TEDIYE'
            end
            object cxGrid1DBTableView1D_TAHSILAT: TcxGridDBColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.ReadOnly = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 103
              DataBinding.FieldName = 'D_TAHSILAT'
            end
            object cxGrid1DBTableView1ACIKLAMA: TcxGridDBColumn
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 188
              DataBinding.FieldName = 'ACIKLAMA'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 35
        Width = 687
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
      object Panel6: TPanel
        Left = 0
        Top = 229
        Width = 687
        Height = 156
        Align = alBottom
        BevelOuter = bvNone
        Color = 7972351
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        DesignSize = (
          687
          156)
        object Label1: TLabel
          Left = 20
          Top = 82
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Toplam TL Gelir :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 237
          Top = 82
          Width = 82
          Height = 13
          Alignment = taRightJustify
          Caption = 'Toplam TL Gider:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 459
          Top = 82
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'TL Bakiye:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 16
          Top = 2
          Width = 132
          Height = 13
          Caption = 'Gelir Gider Merkezleri Listesi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 10
          Top = 106
          Width = 91
          Height = 13
          Alignment = taRightJustify
          Caption = 'Toplam USD Gelir :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 227
          Top = 106
          Width = 92
          Height = 13
          Alignment = taRightJustify
          Caption = 'Toplam USD Gider:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 449
          Top = 106
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'USD Bakiye:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 18
          Top = 130
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = 'Toplam EU Gelir :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 235
          Top = 130
          Width = 84
          Height = 13
          Alignment = taRightJustify
          Caption = 'Toplam EU Gider:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 457
          Top = 130
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'EU Bakiye:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBOnlineEdit1: TDBTechEdit
          Left = 322
          Top = 78
          Width = 116
          Height = 21
          Color = 14811135
          DataField = 'SUMTED'
          DataSource = RaporDM.GelirGiderListToplamTLSrc
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
          Left = 513
          Top = 78
          Width = 116
          Height = 21
          Color = 14811135
          DataField = 'BAKIYE'
          DataSource = RaporDM.GelirGiderListToplamTLSrc
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
        object DBOnlineEdit3: TDBTechEdit
          Left = 632
          Top = 78
          Width = 105
          Height = 21
          Color = 14811135
          DataField = 'Durum'
          DataSource = RaporDM.GelirGiderListToplamTLSrc
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
        object DBOnlineEdit4: TDBTechEdit
          Left = 106
          Top = 78
          Width = 116
          Height = 21
          Color = 14811135
          DataField = 'SUMTAH'
          DataSource = RaporDM.GelirGiderListToplamTLSrc
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
        object OnlineDBCheckListBox1: TTechDBCheckListBox
          Left = 16
          Top = 17
          Width = 657
          Height = 57
          OnClickCheck = OnlineDBCheckListBox1ClickCheck
          Anchors = [akLeft, akTop, akRight]
          Columns = 6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 4
          RootID = 0
          FieldID = 'GELGITKOD'
          FieldText = 'GELGITADI'
          DataSource = FinansDataM.GelGiderSource
        end
        object DBOnlineEdit5: TDBTechEdit
          Left = 322
          Top = 102
          Width = 116
          Height = 21
          Color = 14811135
          DataField = 'SUMTED'
          DataSource = RaporDM.GelirGiderListToplamUSDSrc
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
        object DBOnlineEdit6: TDBTechEdit
          Left = 513
          Top = 102
          Width = 116
          Height = 21
          Color = 14811135
          DataField = 'BAKIYE'
          DataSource = RaporDM.GelirGiderListToplamUSDSrc
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
        object DBOnlineEdit7: TDBTechEdit
          Left = 632
          Top = 102
          Width = 105
          Height = 21
          Color = 14811135
          DataField = 'Durum'
          DataSource = RaporDM.GelirGiderListToplamUSDSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          RenkGiris = 16777088
          RenkCikis = 14811135
          BuyukKucuk = True
        end
        object DBOnlineEdit8: TDBTechEdit
          Left = 106
          Top = 102
          Width = 116
          Height = 21
          Color = 14811135
          DataField = 'SUMTAH'
          DataSource = RaporDM.GelirGiderListToplamUSDSrc
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
        object DBOnlineEdit9: TDBTechEdit
          Left = 322
          Top = 126
          Width = 116
          Height = 21
          Color = 14811135
          DataField = 'SUMTED'
          DataSource = RaporDM.GelirGiderListToplamEUSrc
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
        object DBOnlineEdit10: TDBTechEdit
          Left = 513
          Top = 126
          Width = 116
          Height = 21
          Color = 14811135
          DataField = 'BAKIYE'
          DataSource = RaporDM.GelirGiderListToplamEUSrc
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
        object DBOnlineEdit11: TDBTechEdit
          Left = 632
          Top = 126
          Width = 105
          Height = 21
          Color = 14811135
          DataField = 'Durum'
          DataSource = RaporDM.GelirGiderListToplamEUSrc
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
        object DBOnlineEdit12: TDBTechEdit
          Left = 106
          Top = 126
          Width = 116
          Height = 21
          Color = 14811135
          DataField = 'SUMTAH'
          DataSource = RaporDM.GelirGiderListToplamEUSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          RenkGiris = 16777088
          RenkCikis = 14811135
          BuyukKucuk = True
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 41
        Width = 13
        Height = 178
        Align = alLeft
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
      object Panel8: TPanel
        Left = 674
        Top = 41
        Width = 13
        Height = 178
        Align = alRight
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
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 687
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
        TabOrder = 5
        object OnlineCombo1: TTechCombo
          Left = 400
          Top = 8
          Width = 193
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
            'Gelir'
            'Gider')
          RenkGiris = 16777088
          RenkCikis = 13369080
        end
        object DateTimePicker1: TDateTimePicker
          Left = 16
          Top = 8
          Width = 186
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
          Left = 208
          Top = 8
          Width = 186
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
        object BitBtn1: TTechButton
          Left = 606
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Uygula'
          TabOrder = 3
          TabStop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 26316
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = BitBtn1Click
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
            'Uygula')
          Multiline = False
          Cizim = True
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 428
      Width = 687
      Height = 33
      Align = alBottom
      BevelOuter = bvNone
      Color = 13395456
      TabOrder = 2
      object Panel9: TPanel
        Left = 608
        Top = 0
        Width = 79
        Height = 33
        Align = alRight
        BevelOuter = bvNone
        Color = 13395456
        TabOrder = 2
        object BitBtn3: TTechButton
          Left = 0
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
      object BitBtn4: TTechButton
        Left = 4
        Top = 4
        Width = 35
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
        Left = 43
        Top = 5
        Width = 36
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
      object OnlineButton1: TTechButton
        Left = 83
        Top = 5
        Width = 65
        Height = 26
        Caption = 'Excel'#39'e At'
        TabOrder = 3
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
          'Excel'#39'e At')
        Multiline = False
        Cizim = True
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 352
    object mnSe1: TMenuItem
      Caption = 'T'#252'm'#252'n'#252' &Se'#231
      OnClick = mnSe1Click
    end
    object mnBrak1: TMenuItem
      Caption = 'T'#252'm'#252'n'#252' &B'#305'rak'
      OnClick = mnBrak1Click
    end
  end
  object scExcelExport1: TscExcelExport
    DataPipe = dpDataSet
    Dataset = RaporDM.GelirGiderListIBQuery
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
    Left = 120
    Top = 208
  end
end
