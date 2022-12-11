object FYedekleme: TFYedekleme
  Left = 328
  Top = 170
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Yedekleme ve Geri Y'#252'kleme'
  ClientHeight = 407
  ClientWidth = 406
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 406
    Height = 407
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '  Yedekleme   '
      OnShow = TabSheet1Show
      object GroupBox2: TGroupBox
        Left = 5
        Top = 2
        Width = 389
        Height = 370
        Caption = ' Yedekleme '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 136
          Top = 9
          Width = 90
          Height = 13
          Caption = 'Yedeklenecegi Yer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 242
          Top = 170
          Width = 48
          Height = 13
          Caption = 'Dosya Ad'#305
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 8
          Top = 170
          Width = 99
          Height = 13
          Caption = 'Yedeklenecek Adres'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ShellTreeView1: TShellTreeView
          Left = 8
          Top = 25
          Width = 370
          Height = 143
          ObjectTypes = [otFolders]
          Root = 'rfDesktop'
          UseShellImages = True
          AutoRefresh = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Indent = 19
          ParentColor = False
          ParentFont = False
          RightClickSelect = True
          ShowRoot = False
          TabOrder = 0
          OnChange = ShellTreeView1Change
        end
        object Memo1: TMemo
          Left = 6
          Top = 210
          Width = 370
          Height = 121
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 3
        end
        object OnlineEdit1: TTechEdit
          Left = 240
          Top = 184
          Width = 137
          Height = 21
          RenkGiris = clInfoBk
          RenkCikis = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object BitBtn1: TTechButton
          Left = 140
          Top = 338
          Width = 113
          Height = 25
          Caption = '&Yedekle'
          TabOrder = 4
          TabStop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
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
            '&Yedekle')
          Multiline = False
          Cizim = True
        end
        object OnlineEdit2: TTechEdit
          Left = 6
          Top = 184
          Width = 232
          Height = 21
          RenkGiris = clInfoBk
          RenkCikis = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '  Geri Y'#252'kleme  '
      ImageIndex = 1
      object GroupBox3: TGroupBox
        Left = 5
        Top = 2
        Width = 389
        Height = 370
        Caption = ' Geri Y'#252'kleme '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label4: TLabel
          Left = 16
          Top = 75
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabeledEdit1: TLabeledEdit
          Left = 10
          Top = 48
          Width = 297
          Height = 21
          EditLabel.Width = 85
          EditLabel.Height = 13
          EditLabel.Caption = 'Yedek Dosya Yeri'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clBlack
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          LabelPosition = lpAbove
          LabelSpacing = 3
          ParentFont = False
          TabOrder = 0
        end
        object BitBtn3: TTechButton
          Left = 133
          Top = 333
          Width = 145
          Height = 25
          Caption = '&Geri Y'#252'kle'
          TabOrder = 3
          TabStop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = BitBtn3Click
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
            '&Geri Y'#252'kle')
          Multiline = False
          Cizim = True
        end
        object Memo2: TMemo
          Left = 10
          Top = 94
          Width = 367
          Height = 228
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object BitBtn2: TTechButton
          Left = 319
          Top = 47
          Width = 57
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
          OnClick = BitBtn2Click
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
            '&Se'#231)
          Multiline = False
          Cizim = True
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = '         Kapat           '
      ImageIndex = 3
      OnShow = TabSheet4Show
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'gbk'
    Filter = 'Yedek Dosya|*.gbk'
    Left = 352
    Top = 256
  end
end
