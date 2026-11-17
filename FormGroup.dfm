object frmGroup: TfrmGroup
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Group'
  ClientHeight = 113
  ClientWidth = 374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object layMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 374
    Height = 72
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 372
    ExplicitHeight = 70
    object txtGroupId: TcxDBTextEdit
      Left = 100
      Top = 10
      DataBinding.DataSource = dsGroups
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 0
      Width = 261
    end
    object txtGroupDescription: TcxDBTextEdit
      Left = 100
      Top = 37
      DataBinding.DataSource = dsGroups
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 1
      Width = 121
    end
    object laygMain: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Text = 'Group Id'
      Parent = laygMain
      Control = txtGroupId
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layMainItem2: TdxLayoutItem
      CaptionOptions.Text = 'Group Description'
      Parent = laygMain
      Control = txtGroupDescription
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object pnlNav: TPanel
    Left = 0
    Top = 72
    Width = 374
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitTop = 70
    ExplicitWidth = 372
    object btnOk: TcxButton
      Left = 208
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ok'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TcxButton
      Left = 288
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object dsGroups: TDataSource
    Left = 160
    Top = 20
  end
end
