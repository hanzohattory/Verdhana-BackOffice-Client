inherited frmCompanyBank: TfrmCompanyBank
  Caption = 'Company Bank'
  ClientHeight = 242
  ClientWidth = 494
  ExplicitWidth = 510
  ExplicitHeight = 281
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 494
    Height = 152
    ExplicitWidth = 494
    ExplicitHeight = 152
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
      Width = 80
    end
    object cxDBLabel1: TcxDBLabel [1]
      Left = 205
      Top = 10
      DataBinding.DataField = 'BNNAME'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Height = 21
      Width = 278
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [2]
      Left = 296
      Top = 64
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 60
    end
    object cxDBTextEdit1: TcxDBTextEdit [3]
      Left = 110
      Top = 64
      DataBinding.DataField = 'BANKACCNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [4]
      Left = 110
      Top = 91
      DataBinding.DataField = 'BANKACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 373
    end
    object cxDBTextEdit3: TcxDBTextEdit [5]
      Left = 110
      Top = 118
      DataBinding.DataField = 'BANKBRANCH'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 373
    end
    object cxDBCheckBox1: TcxDBCheckBox [6]
      Left = 362
      Top = 64
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Active'
      DataBinding.DataField = 'STAT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [7]
      Left = 110
      Top = 37
      RepositoryItem = dmGlobal.luCompanyBankType
      DataBinding.DataField = 'BANKTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object chkDefault: TcxCheckBox [8]
      Left = 420
      Top = 64
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Default'
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
    end
    object cxDBTextEdit4: TcxDBTextEdit [9]
      Left = 296
      Top = 37
      DataBinding.DataField = 'COA'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 121
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Bank Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = '-'
      Control = cxDBLabel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 278
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Bank Account No.'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Bank Account Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Bank Branch'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 52
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkDefault
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 57
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'GL Account'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 173
    Width = 494
    ExplicitTop = 173
    ExplicitWidth = 494
    inherited dbNavLog: TDBNavigator
      Left = 380
      Hints.Strings = ()
      ExplicitLeft = 380
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 222
    Width = 494
    ExplicitTop = 222
    ExplicitWidth = 494
  end
  inherited tabEditorData: TTabSet
    Top = 152
    Width = 494
    ExplicitTop = 152
    ExplicitWidth = 494
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCompanyBank
    Left = 296
    Top = 152
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 200
    Top = 152
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsCompanyBank: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'BANKID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryCompanyBank'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsCompanyBankAfterOpen
    BeforePost = cdsCompanyBankBeforePost
    OnNewRecord = cdsCompanyBankNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 392
    Top = 152
    object cdsCompanyBankBANKID: TIntegerField
      Tag = -1
      FieldName = 'BANKID'
      Required = True
    end
    object cdsCompanyBankCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsCompanyBankBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsCompanyBankBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsCompanyBankBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Required = True
      Size = 100
    end
    object cdsCompanyBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Required = True
      Size = 100
    end
    object cdsCompanyBankSTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
    object cdsCompanyBankBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Required = True
      Size = 1
    end
    object cdsCompanyBankMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCompanyBankMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCompanyBankAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCompanyBankAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCompanyBankUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCompanyBankUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCompanyBankNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCompanyBankISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCompanyBankID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCompanyBankBNNAME: TStringField
      DisplayLabel = 'Bank Name'
      FieldKind = fkLookup
      FieldName = 'BNNAME'
      LookupDataSet = dmLookup.cdsLuBank
      LookupKeyFields = 'BNCODE'
      LookupResultField = 'BNNAME'
      KeyFields = 'BNCODE'
      Size = 50
      Lookup = True
    end
    object cdsCompanyBankGLACCOUNTID: TIntegerField
      FieldName = 'GLACCOUNTID'
      Required = True
    end
    object cdsCompanyBankCOA: TStringField
      FieldName = 'COA'
    end
  end
  object cdsCompanyBankDefault: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'BANKTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryCompanyBankDefault'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 392
    Top = 96
    object cdsCompanyBankDefaultBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Required = True
      Size = 1
    end
    object cdsCompanyBankDefaultCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsCompanyBankDefaultBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
    object cdsCompanyBankDefaultMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCompanyBankDefaultMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCompanyBankDefaultAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCompanyBankDefaultAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCompanyBankDefaultUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCompanyBankDefaultUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCompanyBankDefaultNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCompanyBankDefaultISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCompanyBankDefaultID: TLargeintField
      FieldName = 'ID'
    end
  end
end
