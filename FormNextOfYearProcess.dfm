object frmNextOfYearProcess: TfrmNextOfYearProcess
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Next Of Year Process'
  ClientHeight = 221
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 172
    Width = 457
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 1
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 49
    Width = 457
    Height = 123
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfUltraFlat
    ClientRectBottom = 119
    ClientRectLeft = 4
    ClientRectRight = 453
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Log Process'
      ImageIndex = 0
      object mmLog: TcxMemo
        Left = 0
        Top = 0
        TabStop = False
        Align = alClient
        Style.BorderStyle = ebsNone
        StyleFocused.BorderStyle = ebsUltraFlat
        TabOrder = 0
        Height = 95
        Width = 449
      end
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 457
    Height = 49
    Align = alTop
    TabOrder = 2
    object cxButton1: TcxButton
      Left = 243
      Top = 10
      Width = 145
      Height = 25
      Caption = 'Process Next Of Year'
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object edEndOfYear: TcxTextEdit
      Left = 73
      Top = 10
      Properties.Alignment.Horz = taCenter
      Properties.MaxLength = 4
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnExit = edEndOfYearExit
      OnKeyPress = edEndOfYearKeyPress
      Width = 45
    end
    object edNextOfYear: TcxTextEdit
      Left = 192
      Top = 10
      TabStop = False
      ParentColor = True
      Properties.Alignment.Horz = taCenter
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 45
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'End Of Year'
      Control = edEndOfYear
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Next Of Year'
      Control = edNextOfYear
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
end
