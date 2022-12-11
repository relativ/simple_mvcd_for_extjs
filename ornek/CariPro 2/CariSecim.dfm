object FCariSecim: TFCariSecim
  Left = 209
  Top = 128
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cari Kart Se'#231'imi'
  ClientHeight = 346
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel10: TPanel
    Left = 0
    Top = 35
    Width = 604
    Height = 311
    Align = alClient
    Caption = 'Cari Liste'
    Color = 13395456
    TabOrder = 0
    object dfsSplitter1: TdfsSplitter
      Left = 215
      Top = 1
      Height = 279
      Cursor = crHSplit
      Align = alLeft
      Color = 13395456
      MinSize = 1
      ParentColor = False
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
      ButtonColor = 33023
    end
    object Panel3: TPanel
      Left = 225
      Top = 1
      Width = 378
      Height = 279
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      Color = 13395456
      TabOrder = 0
      object OnlineDBGrid2: TTechDBGrid
        Left = 0
        Top = 9
        Width = 369
        Height = 261
        Align = alClient
        BorderStyle = bsNone
        DataSource = DMCari.AktifCariDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        PopupMenu = PopupMenu2
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = BitBtn6Click
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
            Title.Alignment = taCenter
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = clOlive
            Sirala2_Rengi = 16512
          end
          item
            Expanded = False
            FieldName = 'TAMADI'
            Title.Alignment = taCenter
            Width = 200
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = clOlive
            Sirala2_Rengi = 16512
          end
          item
            Expanded = False
            FieldName = 'BAKIYE'
            Title.Alignment = taCenter
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = clOlive
            Sirala2_Rengi = 16512
          end
          item
            Expanded = False
            FieldName = 'DURUM'
            Title.Alignment = taCenter
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = clOlive
            Sirala2_Rengi = 16512
          end
          item
            Expanded = False
            FieldName = 'TEL1'
            Title.Alignment = taCenter
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = clOlive
            Sirala2_Rengi = 16512
          end
          item
            Expanded = False
            FieldName = 'KOD'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = clOlive
            Sirala2_Rengi = 16512
          end
          item
            Expanded = False
            FieldName = 'MAHALLE'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = clOlive
            Sirala2_Rengi = 16512
          end
          item
            Expanded = False
            FieldName = 'CADDE'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = clOlive
            Sirala2_Rengi = 16512
          end
          item
            Expanded = False
            FieldName = 'SOKAK'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = clOlive
            Sirala2_Rengi = 16512
          end
          item
            Expanded = False
            FieldName = 'APARTMAN'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = clOlive
            Sirala2_Rengi = 16512
          end
          item
            Expanded = False
            FieldName = 'NOSU'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = clOlive
            Sirala2_Rengi = 16512
          end
          item
            Expanded = False
            FieldName = 'C_ILCEADI'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
            Siralama = False
            CokluTus = False
            Sirala1_Rengi = clBlack
            Sirala2_Rengi = clBlack
          end
          item
            Expanded = False
            FieldName = 'C_SEHIRADI'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
            Siralama = False
            CokluTus = False
            Sirala1_Rengi = clBlack
            Sirala2_Rengi = clBlack
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 378
        Height = 9
        Align = alTop
        BevelOuter = bvNone
        Color = 13395456
        TabOrder = 1
      end
      object Panel7: TPanel
        Left = 369
        Top = 9
        Width = 9
        Height = 261
        Align = alRight
        BevelOuter = bvNone
        Color = 13395456
        TabOrder = 2
      end
      object Panel8: TPanel
        Left = 0
        Top = 270
        Width = 378
        Height = 9
        Align = alBottom
        BevelOuter = bvNone
        Color = 13395456
        TabOrder = 3
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 280
      Width = 602
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Panel4'
      Color = 13395456
      TabOrder = 1
      object OnlineEdit2: TTechEdit
        Left = 187
        Top = 5
        Width = 222
        Height = 21
        Hint = 'Cari Unvana G'#246're Arama'
        RenkGiris = clAqua
        RenkCikis = clInfoBk
        BuyukKucuk = True
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnKeyPress = OnlineEdit2KeyPress
      end
      object OnlineEdit1: TTechEdit
        Left = 9
        Top = 5
        Width = 67
        Height = 21
        Hint = 'Cari Noya G'#246're Arama'
        RenkGiris = clAqua
        RenkCikis = clInfoBk
        BuyukKucuk = True
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyPress = OnlineEdit1KeyPress
      end
      object BitBtn7: TTechButton
        Left = 528
        Top = 3
        Width = 69
        Height = 25
        Caption = #304'&ptal'
        TabOrder = 2
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BitBtn7Click
        Cornerradius = 5
        Cancel = True
        DrawDisabledImg = False
        ModalResult = 2
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
          #304'&ptal')
        Multiline = False
        Cizim = True
      end
      object BitBtn6: TTechButton
        Left = 448
        Top = 3
        Width = 77
        Height = 25
        Caption = '&Tamam'
        TabOrder = 3
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BitBtn6Click
        Cornerradius = 5
        DrawDisabledImg = False
        ModalResult = 1
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
          '&Tamam')
        Multiline = False
        Cizim = True
      end
      object BitBtn2: TTechButton
        Left = 416
        Top = 4
        Width = 25
        Height = 22
        TabOrder = 4
        TabStop = True
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
        Multiline = False
        Cizim = True
      end
      object OnlineEdit3: TTechEdit
        Left = 81
        Top = 5
        Width = 99
        Height = 21
        Hint = 'Cari Koda G'#246're Arama'
        RenkGiris = clAqua
        RenkCikis = clInfoBk
        BuyukKucuk = True
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnKeyPress = OnlineEdit3KeyPress
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 214
      Height = 279
      Align = alLeft
      BevelOuter = bvNone
      Color = 13395456
      TabOrder = 2
      object OnlineDBCheckListBox1: TTechDBCheckListBox
        Left = 7
        Top = 7
        Width = 207
        Height = 264
        OnClickCheck = OnlineDBCheckListBox1ClickCheck
        ItemHeight = 13
        TabOrder = 0
        OnEnter = OnlineDBCheckListBox1Enter
        RootID = 0
        FieldID = 'CARITIPKOD'
        FieldText = 'TIPADI'
        DataSource = DMSabit.CariTipDS
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Cari Kart Se'#231'imi'
    Color = 33023
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object PopupMenu1: TPopupMenu
    Left = 56
    Top = 88
    object mnSe1: TMenuItem
      Caption = '&T'#252'm'#252'n'#252' Se'#231
      OnClick = mnSe1Click
    end
    object mnBrak1: TMenuItem
      Caption = 'T'#252'm'#252'n'#252' &B'#305'rak'
      OnClick = mnBrak1Click
    end
  end
  object CariSecimProc: TIBStoredProc
    StoredProcName = 'CARI_SECIM'
    Left = 104
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CARIISLEMKOD_IN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CARINO_IN'
        ParamType = ptInput
      end>
  end
  object PopupMenu2: TPopupMenu
    Left = 272
    Top = 144
    object DetaylGster1: TMenuItem
      Caption = '&Detayl'#305' G'#246'ster'
      OnClick = DetaylGster1Click
    end
  end
end
