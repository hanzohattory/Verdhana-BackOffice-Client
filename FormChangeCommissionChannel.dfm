object frmChangeCommissionChannel: TfrmChangeCommissionChannel
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Change Commission'
  ClientHeight = 98
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 281
    Height = 48
    Align = alClient
    BevelKind = bkTile
    TabOrder = 0
    ExplicitWidth = 635
    ExplicitHeight = 224
    object edChannel: TcxLookupComboBox
      Left = 97
      Top = 10
      RepositoryItem = dmGlobal.luCommission
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 168
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object edCommType: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Commission Type'
      Control = edChannel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 168
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 48
    Width = 281
    Height = 50
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    ExplicitTop = 136
    ExplicitWidth = 520
    object btnOk: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnOk
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      CaptionOptions.Text = 'Cancel'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
end
