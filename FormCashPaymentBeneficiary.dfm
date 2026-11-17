object frmCashPaymentBeneficiary: TfrmCashPaymentBeneficiary
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 184
  ClientWidth = 401
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
    Top = 135
    Width = 401
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    ExplicitTop = 125
    ExplicitWidth = 391
    object Ok: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object Cancel: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
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
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = Ok
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      Control = Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 401
    Height = 135
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 391
    ExplicitHeight = 125
    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 84
      Top = 10
      DataBinding.DataField = 'BNCODE'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 163
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 84
      Top = 37
      DataBinding.DataField = 'BANKBRANCH'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 295
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 84
      Top = 64
      DataBinding.DataField = 'BANKACCNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 86
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 84
      Top = 91
      DataBinding.DataField = 'BANKACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 162
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl2Item1: TdxLayoutItem
      CaptionOptions.Text = 'Bank Code'
      Parent = dxLayoutControl2Group1
      Control = cxDBButtonEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl2Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item3: TdxLayoutItem
      CaptionOptions.Text = 'Branch'
      Parent = dxLayoutControl2Group_Root
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl2Item4: TdxLayoutItem
      CaptionOptions.Text = 'Account No'
      Parent = dxLayoutControl2Group2
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item5: TdxLayoutItem
      CaptionOptions.Text = 'Account Name'
      Parent = dxLayoutControl2Group2
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl2Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl2Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
  end
  object dsSubject: TDataSource
    DataSet = frmCashPayment.cdsluCustBankNoParam
    Left = 213
    Top = 126
  end
end
