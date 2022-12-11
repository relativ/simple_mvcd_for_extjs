object FPersonel: TFPersonel
  Left = 144
  Top = 161
  Width = 758
  Height = 451
  Caption = 'Personeller'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
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
    Width = 750
    Height = 424
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 16769968
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 746
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Personeller'
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
      Top = 385
      Width = 746
      Height = 37
      Align = alBottom
      BevelOuter = bvNone
      Color = 13395456
      TabOrder = 1
      DesignSize = (
        746
        37)
      object BitBtn1: TTechButton
        Left = 495
        Top = 7
        Width = 75
        Height = 25
        Caption = '&Yeni'
        TabOrder = 1
        TabStop = True
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
        Left = 577
        Top = 7
        Width = 75
        Height = 25
        Caption = '&Sil'
        TabOrder = 2
        TabStop = True
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
        Left = 665
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
    end
    object GroupBox5: TGroupBox
      Left = 478
      Top = 58
      Width = 259
      Height = 313
      Caption = ' Personeller '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object OnlineDBGrid2: TTechDBGrid
        Left = 2
        Top = 15
        Width = 255
        Height = 296
        Align = alClient
        BorderStyle = bsNone
        DataSource = DMSabit.PersonelDS
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
            Color = 12510955
            Expanded = False
            FieldName = 'PERSONELADI'
            Title.Alignment = taCenter
            Width = 218
            Visible = True
            Siralama = True
            CokluTus = False
            Sirala1_Rengi = 8454016
            Sirala2_Rengi = 16777088
          end>
      end
    end
    object Panel5: TPanel
      Left = 480
      Top = 34
      Width = 257
      Height = 25
      BevelOuter = bvNone
      Caption = 'Personeller'
      Color = 33023
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 40
      Width = 460
      Height = 331
      Caption = ' Personel Bilgileri '
      Color = 16769968
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      OnExit = GroupBox1Exit
      object Label2: TLabel
        Left = 24
        Top = 47
        Width = 41
        Height = 13
        Caption = 'Personel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 30
        Top = 95
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
        Left = 21
        Top = 167
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
      object Label9: TLabel
        Left = 35
        Top = 119
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
        Top = 191
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
        Top = 191
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
        Top = 191
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
      object Label15: TLabel
        Left = 40
        Top = 262
        Width = 26
        Height = 13
        Caption = 'Maa'#351
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 254
        Top = 238
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
        Top = 143
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
        Top = 215
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
        Left = 286
        Top = 214
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
        Top = 238
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
      object Label22: TLabel
        Left = 20
        Top = 71
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Kimlik No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 23
        Top = 286
        Width = 43
        Height = 13
        Caption = 'A'#231#305'klama'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 8
        Top = 23
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Personel No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBOnlineEdit7: TDBTechEdit
        Left = 72
        Top = 43
        Width = 233
        Height = 21
        Color = 14811135
        DataField = 'PERSONELADI'
        DataSource = DMSabit.PersonelDS
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
      object DBOnlineEdit10: TDBTechEdit
        Left = 72
        Top = 91
        Width = 169
        Height = 21
        Color = 14811135
        DataField = 'MAHALLE'
        DataSource = DMSabit.PersonelDS
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
      object DBOnlineEdit1: TDBTechEdit
        Left = 72
        Top = 163
        Width = 169
        Height = 21
        Color = 14811135
        DataField = 'APARTMAN'
        DataSource = DMSabit.PersonelDS
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
      object DBOnlineEdit2: TDBTechEdit
        Left = 72
        Top = 115
        Width = 169
        Height = 21
        Color = 14811135
        DataField = 'CADDE'
        DataSource = DMSabit.PersonelDS
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
      object DBOnlineEdit3: TDBTechEdit
        Left = 72
        Top = 187
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
        TabOrder = 6
        RenkGiris = 16777088
        RenkCikis = 14811135
        BuyukKucuk = True
      end
      object DBOnlineEdit12: TDBTechEdit
        Left = 72
        Top = 258
        Width = 145
        Height = 21
        Color = 14811135
        DataField = 'MAAS'
        DataSource = DMSabit.PersonelDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        RenkGiris = 16777088
        RenkCikis = 14811135
        BuyukKucuk = True
      end
      object DBOnlineEdit13: TDBTechEdit
        Left = 313
        Top = 234
        Width = 112
        Height = 21
        Color = 14811135
        DataField = 'VERGINO'
        DataSource = DMSabit.PersonelDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        RenkGiris = 16777088
        RenkCikis = 14811135
        BuyukKucuk = True
      end
      object DBOnlineEdit14: TDBTechEdit
        Left = 72
        Top = 139
        Width = 169
        Height = 21
        Color = 14811135
        DataField = 'SOKAK'
        DataSource = DMSabit.PersonelDS
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
      object DBOnlineLookupCombo1: TDBTechLookupCombo
        Left = 312
        Top = 187
        Width = 137
        Height = 21
        Color = 14811135
        DataField = 'ILCEKOD'
        DataSource = DMSabit.PersonelDS
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
        TabOrder = 8
        RenkGiris = 16777088
        RenkCikis = 14811135
      end
      object DBOnlineLookupCombo2: TDBTechLookupCombo
        Left = 136
        Top = 187
        Width = 129
        Height = 21
        Color = 14811135
        DataField = 'SEHIRKOD'
        DataSource = DMSabit.PersonelDS
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
        TabOrder = 7
        RenkGiris = 16777088
        RenkCikis = 14811135
      end
      object OnlineDBCheckBox1: TTechDBCheckbox
        Left = 312
        Top = 258
        Width = 61
        Height = 17
        Caption = 'Aktif'
        TabOrder = 15
        TabStop = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
        DataSource = DMSabit.PersonelDS
        ValueChecked = '1'
        ValueUnChecked = '2'
      end
      object DBOnlineEdit15: TDBTechEdit
        Left = 72
        Top = 211
        Width = 97
        Height = 21
        Color = 14811135
        DataField = 'TEL1'
        DataSource = DMSabit.PersonelDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        TabOrder = 9
        RenkGiris = 16777088
        RenkCikis = 14811135
        BuyukKucuk = True
      end
      object DBOnlineEdit16: TDBTechEdit
        Left = 177
        Top = 211
        Width = 96
        Height = 21
        Color = 14811135
        DataField = 'TEL2'
        DataSource = DMSabit.PersonelDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        TabOrder = 10
        RenkGiris = 16777088
        RenkCikis = 14811135
        BuyukKucuk = True
      end
      object DBOnlineEdit21: TDBTechEdit
        Left = 313
        Top = 210
        Width = 112
        Height = 21
        Color = 14811135
        DataField = 'GSM'
        DataSource = DMSabit.PersonelDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        TabOrder = 11
        RenkGiris = 16777088
        RenkCikis = 14811135
        BuyukKucuk = True
      end
      object DBOnlineEdit22: TDBTechEdit
        Left = 72
        Top = 234
        Width = 177
        Height = 21
        Color = 14811135
        DataField = 'MAIL'
        DataSource = DMSabit.PersonelDS
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
      object DBOnlineEdit24: TDBTechEdit
        Left = 72
        Top = 67
        Width = 169
        Height = 21
        Color = 14811135
        DataField = 'KIMLIKNO'
        DataSource = DMSabit.PersonelDS
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
      object DBImage1: TDBImage
        Left = 312
        Top = 19
        Width = 136
        Height = 137
        DataField = 'RESIM'
        DataSource = DMSabit.PersonelResimDS
        Stretch = True
        TabOrder = 17
        OnDblClick = DBImage1DblClick
      end
      object DBMemo2: TDBMemo
        Left = 71
        Top = 283
        Width = 373
        Height = 38
        Color = 14811135
        DataField = 'ACIKLAMA'
        DataSource = DMSabit.PersonelDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object DBOnlineEdit4: TDBTechEdit
        Left = 72
        Top = 19
        Width = 89
        Height = 21
        Color = 14811135
        DataField = 'PERSONELNO'
        DataSource = DMSabit.PersonelDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        RenkGiris = 16777088
        RenkCikis = 14811135
        BuyukKucuk = True
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 248
    Top = 144
  end
end
