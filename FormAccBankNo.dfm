inherited frmAccBankNo: TfrmAccBankNo
  Caption = 'Account Bank'
  ClientHeight = 177
  ClientWidth = 524
  ExplicitWidth = 530
  ExplicitHeight = 206
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 524
    Height = 87
    ExplicitWidth = 524
    ExplicitHeight = 87
    object cxDBLookupComboBox1: TcxDBLookupComboBox [0]
      Left = 110
      Top = 10
      RepositoryItem = dmGlobal.luBank
      DataBinding.DataField = 'BNCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 145
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [1]
      Left = 310
      Top = 10
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 145
    end
    object cxDBTextEdit1: TcxDBTextEdit [2]
      Left = 110
      Top = 37
      DataBinding.DataField = 'BANKACCNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 110
      Top = 64
      DataBinding.DataField = 'BANKACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 110
      Top = 91
      DataBinding.DataField = 'BANKBRANCH'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [5]
      Left = 461
      Top = 10
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'RDN'
      DataBinding.DataField = 'ISRDN'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 52
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Bank Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Bank Account No.'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Bank Account Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Bank Branch'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 108
    Width = 524
    ExplicitTop = 108
    ExplicitWidth = 524
    inherited dbNavLog: TDBNavigator
      Left = 410
      Hints.Strings = ()
      ExplicitLeft = 410
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      Index = -1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl2Item2: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      Index = 0
    end
    inherited lcNavLog: TdxLayoutItem
      Visible = False
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 157
    Width = 524
    Visible = False
    ExplicitTop = 157
    ExplicitWidth = 524
  end
  inherited tabEditorData: TTabSet
    Top = 87
    Width = 524
    ExplicitTop = 87
    ExplicitWidth = 524
  end
  inherited dsSubject: TDataSource
    DataSet = frmAccountBank.cdsAccBank
    Left = 376
    Top = 80
  end
end
