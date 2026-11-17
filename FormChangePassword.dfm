object frmChangePassword: TfrmChangePassword
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Change Password'
  ClientHeight = 155
  ClientWidth = 340
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
  object Panel1: TPanel
    Left = 0
    Top = 110
    Width = 340
    Height = 45
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object btnOK: TcxButton
      Left = 11
      Top = 4
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.Kind = lfOffice11
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton
      Left = 92
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Cancel'
      LookAndFeel.Kind = lfOffice11
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 340
    Height = 110
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 447
    ExplicitHeight = 144
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 338
      Height = 108
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -4
      ExplicitWidth = 445
      ExplicitHeight = 142
      object edOldPwd: TcxTextEdit
        Left = 144
        Top = 11
        Properties.EchoMode = eemPassword
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 0
        Width = 177
      end
      object edNewPwd: TcxTextEdit
        Left = 144
        Top = 38
        Properties.EchoMode = eemPassword
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 1
        Width = 177
      end
      object edConfirm: TcxTextEdit
        Left = 144
        Top = 65
        Properties.EchoMode = eemPassword
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Width = 177
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Old Password'
        Control = edOldPwd
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 177
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'New Password'
        Control = edNewPwd
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'Confirm New Passwrod'
        Control = edConfirm
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
end
