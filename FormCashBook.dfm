inherited frmCashBook: TfrmCashBook
  Caption = 'Cash Book'
  ClientHeight = 187
  ClientWidth = 393
  ExplicitWidth = 409
  ExplicitHeight = 226
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 393
    Height = 97
    ExplicitWidth = 393
    ExplicitHeight = 97
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'CBCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 68
      Top = 37
      DataBinding.DataField = 'CBDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 313
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 68
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
      TabOrder = 3
      Width = 69
    end
    object cxDBCheckBox1: TcxDBCheckBox [3]
      Left = 195
      Top = 10
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Active'
      DataBinding.DataField = 'STAT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 202
      Top = 64
      DataBinding.DataField = 'COA'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 179
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Ccy'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 52
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
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'GL Account'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 179
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 118
    Width = 393
    ExplicitTop = 118
    ExplicitWidth = 393
    inherited dbNavLog: TDBNavigator
      Left = 279
      Hints.Strings = ()
      ExplicitLeft = 279
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 167
    Width = 393
    ExplicitTop = 167
    ExplicitWidth = 393
  end
  inherited tabEditorData: TTabSet
    Top = 97
    Width = 393
    ExplicitTop = 97
    ExplicitWidth = 393
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCashBook
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsCashBook: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmCashManagement_qryCashBook'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsCashBookBeforePost
    OnNewRecord = cdsCashBookNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 16
    object cdsCashBookCBID: TIntegerField
      Tag = -1
      FieldName = 'CBID'
      Required = True
    end
    object cdsCashBookCBCODE: TStringField
      FieldName = 'CBCODE'
      Required = True
    end
    object cdsCashBookCBDESC: TStringField
      FieldName = 'CBDESC'
      Required = True
      Size = 150
    end
    object cdsCashBookCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsCashBookGLACCOUNTID: TLargeintField
      FieldName = 'GLACCOUNTID'
      Required = True
    end
    object cdsCashBookSTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
    object cdsCashBookMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashBookMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashBookAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashBookAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashBookUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashBookUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashBookNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashBookISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashBookID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashBookCOA: TStringField
      FieldName = 'COA'
    end
  end
end
