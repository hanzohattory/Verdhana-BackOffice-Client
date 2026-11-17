object frmEditorData: TfrmEditorData
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmEditorData'
  ClientHeight = 380
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 529
    Height = 290
    Align = alClient
    TabOrder = 0
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 311
    Width = 529
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 2
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
    end
    object dbNavLog: TDBNavigator
      Left = 415
      Top = 10
      Width = 100
      Height = 25
      DataSource = dsSubject
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcNavLog: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahRight
      CaptionOptions.Text = 'DBNavigator1'
      CaptionOptions.Visible = False
      Control = dbNavLog
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 360
    Width = 529
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 130
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object tabEditorData: TTabSet
    Left = 0
    Top = 290
    Width = 529
    Height = 21
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    SoftTop = True
    Style = tsSoftTabs
    Tabs.Strings = (
      'New Data'
      'Current Data')
    TabIndex = 0
    Visible = False
    OnChange = tabEditorDataChange
  end
  object dsSubject: TDataSource
    Left = 24
    Top = 16
  end
  object LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 24
    Top = 64
    object lcRequired: TdxLayoutStandardLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.TextColor = clRed
      ItemOptions.CaptionOptions.TextDisabledColor = clRed
      ItemOptions.CaptionOptions.TextHotColor = clRed
      ItemOptions.CaptionOptions.UseDefaultFont = False
      PixelsPerInch = 96
    end
  end
end
