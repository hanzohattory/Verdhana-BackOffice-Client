inherited frmAccCustodyNo: TfrmAccCustodyNo
  Caption = 'Account Custody'
  ClientHeight = 177
  ClientWidth = 484
  ExplicitWidth = 490
  ExplicitHeight = 206
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 484
    Height = 87
    object cxDBLookupComboBox1: TcxDBLookupComboBox [0]
      Left = 127
      Top = 10
      RepositoryItem = dmGlobal.luCustody
      DataBinding.DataField = 'CUSTODYCODE'
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
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 127
      Top = 37
      DataBinding.DataField = 'CUSTODYACCNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 127
      Top = 64
      DataBinding.DataField = 'CUSTODYACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [3]
      Left = 127
      Top = 91
      DataBinding.DataField = 'CUSTODYBRANCH'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [4]
      Left = 350
      Top = 10
      RepositoryItem = dmGlobal.luCustudyType
      DataBinding.DataField = 'CUSTODYTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Custody Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
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
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Custody Account No.'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Custody Account Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Custody Branch'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Custody Type'
      Parent = dxLayoutControl1Group1
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 108
    Width = 484
    inherited dbNavLog: TDBNavigator
      Left = 370
      Hints.Strings = ()
      ExplicitLeft = 370
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
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 157
    Width = 484
    Visible = False
  end
  inherited tabEditorData: TTabSet
    Top = 87
    Width = 484
  end
  inherited dsSubject: TDataSource
    DataSet = frmAccountCustody.cdsAccCustody
    Left = 88
    Top = 80
  end
end
