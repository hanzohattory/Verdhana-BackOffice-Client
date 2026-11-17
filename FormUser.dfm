object frmUser: TfrmUser
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'User'
  ClientHeight = 164
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
  object pnlNav: TPanel
    Left = 0
    Top = 123
    Width = 374
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
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
  object layMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 374
    Height = 123
    Align = alClient
    TabOrder = 1
    object txtUserId: TcxDBTextEdit
      Left = 67
      Top = 10
      DataBinding.DataSource = dsUser
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 0
      Width = 296
    end
    object txtUserName: TcxDBTextEdit
      Left = 67
      Top = 37
      DataBinding.DataSource = dsUser
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 1
      Width = 296
    end
    object txtPwd: TcxTextEdit
      Left = 67
      Top = 64
      Properties.PasswordChar = '*'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Text = 'txtPwd'
      Width = 296
    end
    object edStatus: TcxImageComboBox
      Left = 67
      Top = 91
      Properties.Items = <
        item
          Description = 'Not Active'
          Value = 'Not Active'
        end
        item
          Description = 'Active'
          ImageIndex = 0
          Value = 'Active'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 296
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
      Parent = laygMain
      CaptionOptions.Text = 'User ID'
      Control = txtUserId
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 296
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layMainItem2: TdxLayoutItem
      Parent = laygMain
      CaptionOptions.Text = 'User Name'
      Control = txtUserName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 296
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layMainItem3: TdxLayoutItem
      Parent = laygMain
      CaptionOptions.Text = 'Password'
      Control = txtPwd
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = laygMain
      CaptionOptions.Text = 'Status'
      Visible = False
      Control = edStatus
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object dsUser: TDataSource
    Left = 224
    Top = 8
  end
end
