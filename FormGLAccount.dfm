inherited frmGLAccount: TfrmGLAccount
  Caption = 'GL Account'
  ClientHeight = 350
  ExplicitWidth = 535
  ExplicitHeight = 379
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Height = 260
    ExplicitHeight = 260
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 150
      Top = 10
      DataBinding.DataField = 'GLACCOUNTCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 150
      Top = 37
      DataBinding.DataField = 'GLACCOUNTNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 372
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 150
      Top = 64
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 90
    end
    object cxDBRadioGroup1: TcxDBRadioGroup [3]
      Left = 150
      Top = 91
      RepositoryItem = dmGlobal.rgPLBS
      DataBinding.DataField = 'PLBS'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 5
      Height = 35
      Width = 226
    end
    object cxDBRadioGroup2: TcxDBRadioGroup [4]
      Left = 150
      Top = 132
      RepositoryItem = dmGlobal.rgYesNo
      DataBinding.DataField = 'TRXSTATUS'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 6
      Height = 35
      Width = 226
    end
    object cxDBCheckBox1: TcxDBCheckBox [5]
      Left = 150
      Top = 173
      RepositoryItem = dmGlobal.chkStandard
      DataBinding.DataField = 'GLACCOUNTSTATUS'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [6]
      Left = 377
      Top = 10
      RepositoryItem = dmGlobal.luGroupAccount
      DataBinding.DataField = 'GROUPID'
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
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [7]
      Left = 150
      Top = 200
      DataBinding.DataField = 'VD512_LINE'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.DisplayFormat = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 90
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [8]
      Left = 296
      Top = 64
      RepositoryItem = dmGlobal.luGLCategory
      DataBinding.DataField = 'CATEGORY'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 372
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Profit Loss / Balance Sheet'
      Control = cxDBRadioGroup1
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 226
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Transaction Status'
      Control = cxDBRadioGroup2
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 226
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Active'
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lcGroupAccount: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Group Account'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'MKBD VD51 && VD52 Line No.'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Category'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 281
    ExplicitTop = 281
    inherited dbNavLog: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 330
    ExplicitTop = 330
  end
  inherited tabEditorData: TTabSet
    Top = 260
    ExplicitTop = 260
  end
  inherited dsSubject: TDataSource
    DataSet = cdsGLAccount
    Left = 344
    Top = 224
  end
  object cdsGLAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'GLACCOUNTID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryGLAccount'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsGLAccountBeforePost
    OnNewRecord = cdsGLAccountNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 416
    Top = 224
    object cdsGLAccountGLACCOUNTID: TIntegerField
      FieldName = 'GLACCOUNTID'
      Required = True
    end
    object cdsGLAccountGLACCOUNTCODE: TStringField
      FieldName = 'GLACCOUNTCODE'
      Required = True
      Size = 30
    end
    object cdsGLAccountGLACCOUNTNAME: TStringField
      FieldName = 'GLACCOUNTNAME'
      Size = 100
    end
    object cdsGLAccountCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsGLAccountPLBS: TStringField
      FieldName = 'PLBS'
      Size = 1
    end
    object cdsGLAccountTRXSTATUS: TStringField
      FieldName = 'TRXSTATUS'
      Size = 1
    end
    object cdsGLAccountGLACCOUNTSTATUS: TStringField
      FieldName = 'GLACCOUNTSTATUS'
      Size = 1
    end
    object cdsGLAccountGROUPID: TIntegerField
      FieldName = 'GROUPID'
      Required = True
    end
    object cdsGLAccountMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsGLAccountMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsGLAccountAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsGLAccountAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsGLAccountUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsGLAccountUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsGLAccountNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsGLAccountISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsGLAccountID: TLargeintField
      FieldName = 'ID'
    end
    object cdsGLAccountDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsGLAccountCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 5
    end
    object cdsGLAccountVD512_LINE: TLargeintField
      FieldName = 'VD512_LINE'
    end
  end
end
