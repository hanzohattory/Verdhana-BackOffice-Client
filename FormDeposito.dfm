inherited frmDeposito: TfrmDeposito
  Caption = 'Deposito'
  ClientHeight = 276
  ClientWidth = 550
  ExplicitWidth = 566
  ExplicitHeight = 315
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 550
    Height = 186
    ExplicitWidth = 550
    ExplicitHeight = 186
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 85
      Top = 10
      TabStop = False
      DataBinding.DataField = 'DEPOSITO_CODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 108
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [1]
      Left = 85
      Top = 37
      RepositoryItem = dmGlobal.luBank
      DataBinding.DataField = 'BNCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 92
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 192
      Top = 37
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'BNNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Height = 21
      Width = 345
    end
    object cxDBTextEdit3: TcxDBTextEdit [3]
      Left = 85
      Top = 64
      DataBinding.DataField = 'REFERENCE_NO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 452
    end
    object cxDBDateEdit1: TcxDBDateEdit [4]
      Left = 85
      Top = 91
      DataBinding.DataField = 'DEPOSITO_OPENDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 191
    end
    object cxDBDateEdit2: TcxDBDateEdit [5]
      Left = 353
      Top = 91
      AutoSize = False
      DataBinding.DataField = 'DEPOSITO_MATURITYDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Height = 21
      Width = 184
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [6]
      Left = 85
      Top = 118
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 82
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [7]
      Left = 251
      Top = 118
      TabStop = False
      RepositoryItem = dmGlobal.edCurrency
      AutoSize = False
      DataBinding.DataField = 'EXCHRATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Height = 21
      Width = 95
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [8]
      Left = 85
      Top = 145
      RepositoryItem = dmGlobal.edCurrency
      DataBinding.DataField = 'DEPOSITO_AMOUNT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 177
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [9]
      Left = 360
      Top = 145
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'DEPOSITO_EXCHAMOUNT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Height = 21
      Width = 177
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 5
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Deposito Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 108
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 345
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Refference No'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Open Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Maturity Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 184
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Exchange Rate'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Amount'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Exchange Amount'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 177
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 5
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 207
    Width = 550
    ExplicitTop = 207
    ExplicitWidth = 550
    inherited dbNavLog: TDBNavigator
      Left = 436
      Hints.Strings = ()
      ExplicitLeft = 436
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 256
    Width = 550
    ExplicitTop = 256
    ExplicitWidth = 550
  end
  inherited tabEditorData: TTabSet
    Top = 186
    Width = 550
    ExplicitTop = 186
    ExplicitWidth = 550
  end
  inherited dsSubject: TDataSource
    DataSet = cdsDeposito
    Left = 504
    Top = 104
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 504
    Top = 152
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsDeposito: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMKBD_qryDeposito'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsDepositoBeforePost
    OnNewRecord = cdsDepositoNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 440
    Top = 104
    object cdsDepositoDEPOSITO_ID: TLargeintField
      FieldName = 'DEPOSITO_ID'
      Required = True
    end
    object cdsDepositoDEPOSITO_CODE: TStringField
      FieldName = 'DEPOSITO_CODE'
      Required = True
      Size = 30
    end
    object cdsDepositoBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 10
    end
    object cdsDepositoREFERENCE_NO: TStringField
      FieldName = 'REFERENCE_NO'
    end
    object cdsDepositoDEPOSITO_OPENDATE: TDateField
      FieldName = 'DEPOSITO_OPENDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDepositoDEPOSITO_MATURITYDATE: TDateField
      FieldName = 'DEPOSITO_MATURITYDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDepositoCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsDepositoEXCHRATE: TFloatField
      FieldName = 'EXCHRATE'
      Required = True
    end
    object cdsDepositoDEPOSITO_AMOUNT: TFloatField
      FieldName = 'DEPOSITO_AMOUNT'
      Required = True
      OnChange = cdsDepositoDEPOSITO_AMOUNTChange
    end
    object cdsDepositoDEPOSITO_EXCHAMOUNT: TFloatField
      FieldName = 'DEPOSITO_EXCHAMOUNT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDepositoSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsDepositoCREATED_DATE: TDateTimeField
      FieldName = 'CREATED_DATE'
    end
    object cdsDepositoCREATED_SYSDATE: TDateTimeField
      FieldName = 'CREATED_SYSDATE'
    end
    object cdsDepositoCREATED_UI: TStringField
      FieldName = 'CREATED_UI'
      Size = 30
    end
    object cdsDepositoAPPROVED_DATE: TDateTimeField
      FieldName = 'APPROVED_DATE'
    end
    object cdsDepositoAPPROVED_SYSDATE: TDateTimeField
      FieldName = 'APPROVED_SYSDATE'
    end
    object cdsDepositoAPPROVED_UI: TStringField
      FieldName = 'APPROVED_UI'
      Size = 30
    end
    object cdsDepositoCLOSED_DATE: TDateTimeField
      FieldName = 'CLOSED_DATE'
    end
    object cdsDepositoCLOSED_SYSDATE: TDateTimeField
      FieldName = 'CLOSED_SYSDATE'
    end
    object cdsDepositoCLOSED_UI: TStringField
      FieldName = 'CLOSED_UI'
      Size = 30
    end
    object cdsDepositoCANCELED_DATE: TDateTimeField
      FieldName = 'CANCELED_DATE'
    end
    object cdsDepositoCANCELED_SYSDATE: TDateTimeField
      FieldName = 'CANCELED_SYSDATE'
    end
    object cdsDepositoCANCELED_UI: TStringField
      FieldName = 'CANCELED_UI'
      Size = 30
    end
    object cdsDepositoCANCELED_NOTES: TStringField
      FieldName = 'CANCELED_NOTES'
      Size = 100
    end
    object cdsDepositoMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDepositoMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDepositoBNNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'BNNAME'
      LookupDataSet = dmLookup.cdsLuBank
      LookupKeyFields = 'BNCODE'
      LookupResultField = 'BNNAME'
      KeyFields = 'BNCODE'
      Lookup = True
    end
  end
end
