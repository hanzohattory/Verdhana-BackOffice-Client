inherited frmGLType: TfrmGLType
  Caption = 'GL Type'
  ClientHeight = 216
  ClientWidth = 581
  ExplicitWidth = 587
  ExplicitHeight = 245
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 581
    Height = 126
    ExplicitWidth = 581
    ExplicitHeight = 126
    object cxDBLookupComboBox1: TcxDBLookupComboBox [0]
      Left = 75
      Top = 10
      RepositoryItem = dmGlobal.luProduct
      DataBinding.DataField = 'PRODUCTCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 100
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [1]
      Left = 252
      Top = 10
      RepositoryItem = dmGlobal.luAccType
      DataBinding.DataField = 'ACCOUNTTYPE'
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
    object cxDBCheckBox1: TcxDBCheckBox [2]
      Left = 403
      Top = 10
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Affiliasi'
      DataBinding.DataField = 'AFFILIASI'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit [3]
      Left = 75
      Top = 37
      DataBinding.DataField = 'GLTYPEDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 494
    end
    object cxDBTextEdit2: TcxDBTextEdit [4]
      Left = 75
      Top = 64
      DataBinding.DataField = 'ALTYPE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [5]
      Left = 211
      Top = 64
      RepositoryItem = dmGlobal.luActLedgerType
      DataBinding.DataField = 'ALTYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 358
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox [6]
      Left = 75
      Top = 91
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 100
    end
    object cxDBLookupComboBox5: TcxDBLookupComboBox [7]
      Left = 252
      Top = 91
      RepositoryItem = dmGlobal.luGLAccountNo
      DataBinding.DataField = 'GLACCOUNTID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 145
    end
    object cxDBCheckBox2: TcxDBCheckBox [8]
      Left = 403
      Top = 91
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Use GL Analyze'
      DataBinding.DataField = 'USEGL_ANALIZE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Product'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Account Type'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 1
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
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Ledger Type'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group2
      Control = cxDBLookupComboBox3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group3
      Control = cxDBLookupComboBox4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'GL Account'
      Parent = dxLayoutControl1Group3
      Control = cxDBLookupComboBox5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Control = cxDBCheckBox2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 147
    Width = 581
    ExplicitTop = 147
    ExplicitWidth = 581
    inherited dbNavLog: TDBNavigator
      Left = 467
      Hints.Strings = ()
      ExplicitLeft = 467
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
    Top = 196
    Width = 581
    ExplicitTop = 196
    ExplicitWidth = 581
  end
  inherited tabEditorData: TTabSet
    Top = 126
    Width = 581
    ExplicitTop = 126
    ExplicitWidth = 581
  end
  inherited dsSubject: TDataSource
    DataSet = cdsGLType
    Left = 456
  end
  object cdsGLType: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PRODUCTCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ACCOUNTTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AFFILIASI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'GLACCOUNTID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryGLType'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsGLTypeNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 456
    Top = 64
    object cdsGLTypePRODUCTCODE: TStringField
      FieldName = 'PRODUCTCODE'
      Required = True
      Size = 10
    end
    object cdsGLTypeACCOUNTTYPE: TStringField
      FieldName = 'ACCOUNTTYPE'
      Required = True
      Size = 1
    end
    object cdsGLTypeAFFILIASI: TStringField
      FieldName = 'AFFILIASI'
      Required = True
      Size = 1
    end
    object cdsGLTypeALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      Size = 15
    end
    object cdsGLTypeGLACCOUNTID: TLargeintField
      FieldName = 'GLACCOUNTID'
      Required = True
    end
    object cdsGLTypeUSEGL_ANALIZE: TStringField
      FieldName = 'USEGL_ANALIZE'
      Required = True
      Size = 1
    end
    object cdsGLTypeID: TLargeintField
      FieldName = 'ID'
    end
    object cdsGLTypeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsGLTypeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsGLTypeCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsGLTypeGLTYPEDESC: TStringField
      FieldName = 'GLTYPEDESC'
      Size = 50
    end
  end
end
