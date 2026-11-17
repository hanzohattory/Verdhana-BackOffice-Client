inherited frmInstrument: TfrmInstrument
  Caption = 'Instrument'
  ClientHeight = 433
  ClientWidth = 470
  ExplicitWidth = 486
  ExplicitHeight = 472
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 470
    Height = 343
    ExplicitWidth = 470
    ExplicitHeight = 343
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 98
      Top = 10
      DataBinding.DataField = 'INSTRUMENT_CODE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 98
      Top = 91
      DataBinding.DataField = 'SHORTNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 362
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 98
      Top = 37
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [3]
      Left = 98
      Top = 64
      RepositoryItem = dmGlobal.luInstrumentType
      DataBinding.DataField = 'INSTRUMENT_TYPE_CODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 98
      Top = 118
      DataBinding.DataField = 'LONGNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 362
    end
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 213
      Top = 145
      DataBinding.DataField = 'ISSUERNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 247
    end
    object cxDBTextEdit5: TcxDBTextEdit [6]
      Left = 98
      Top = 172
      DataBinding.DataField = 'ISINCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit [7]
      Left = 339
      Top = 172
      DataBinding.DataField = 'ISINDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [8]
      Left = 98
      Top = 226
      DataBinding.DataField = 'LISTINGDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 121
    end
    object cxDBDateEdit3: TcxDBDateEdit [9]
      Left = 339
      Top = 226
      DataBinding.DataField = 'DELISTINGDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Width = 121
    end
    object cxDBDateEdit4: TcxDBDateEdit [10]
      Left = 339
      Top = 253
      DataBinding.DataField = 'LASTCPPRICEDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit [11]
      Left = 98
      Top = 253
      DataBinding.DataField = 'LASTCLSPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 121
    end
    object cxDBTextEdit9: TcxDBTextEdit [12]
      Left = 98
      Top = 280
      DataBinding.DataField = 'SECTOR'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit [13]
      Left = 339
      Top = 37
      DataBinding.DataField = 'LOCALCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit11: TcxDBTextEdit [14]
      Left = 339
      Top = 64
      DataBinding.DataField = 'SEDOL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxDBTextEdit12: TcxDBTextEdit [15]
      Left = 98
      Top = 307
      DataBinding.DataField = 'HCUT_REG'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 47
    end
    object cxDBTextEdit13: TcxDBTextEdit [16]
      Left = 217
      Top = 307
      DataBinding.DataField = 'HCUT_MARGIN'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 50
    end
    object cxDBTextEdit14: TcxDBTextEdit [17]
      Left = 348
      Top = 307
      DataBinding.DataField = 'HCUT_REPO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 54
    end
    object cxDBCheckBox1: TcxDBCheckBox [18]
      Left = 225
      Top = 10
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Margin'
      DataBinding.DataField = 'MARGIN'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [19]
      Left = 98
      Top = 145
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 9
      Width = 100
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [20]
      Left = 339
      Top = 199
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 119
    end
    object cxDBCheckBox2: TcxDBCheckBox [21]
      Left = 285
      Top = 10
      Caption = 'Affiliation'
      DataBinding.DataField = 'AFFIL'
      DataBinding.DataSource = dsSubject
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [22]
      Left = 98
      Top = 199
      RepositoryItem = dmGlobal.luInstrumentStatus
      DataBinding.DataField = 'STATUS'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 7
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Short Name *'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 362
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market *'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Type *'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Long Name'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 362
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 247
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'ISIN Code'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'ISIN Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Listing Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Delisting Date'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Last Closing Price Date'
      Control = cxDBDateEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Last Closing Price'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sector'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Local Code *'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sedol Code'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Val. Reg (%)'
      Control = cxDBTextEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Val. Mrg (%)'
      Control = cxDBTextEdit13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 11
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Val. REPO (%)'
      Control = cxDBTextEdit14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Margin'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Issuer Name'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 119
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'cxDBCheckBox2'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 67
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Status'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 364
    Width = 470
    ExplicitTop = 364
    ExplicitWidth = 470
    inherited dbNavLog: TDBNavigator
      Left = 356
      Hints.Strings = ()
      ExplicitLeft = 356
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 413
    Width = 470
    ExplicitTop = 413
    ExplicitWidth = 470
  end
  inherited tabEditorData: TTabSet
    Top = 343
    Width = 470
    ExplicitTop = 343
    ExplicitWidth = 470
  end
  inherited dsSubject: TDataSource
    DataSet = cdsInstrument
    Left = 432
    Top = 60
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsInstrument: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'INSTRUMENT_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryInstrument'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsInstrumentBeforePost
    OnNewRecord = cdsInstrumentNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 352
    Top = 56
    object cdsInstrumentINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsInstrumentINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsInstrumentLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsInstrumentMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsInstrumentINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsInstrumentSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 50
    end
    object cdsInstrumentLONGNAME: TStringField
      FieldName = 'LONGNAME'
      Size = 50
    end
    object cdsInstrumentISSUERNAME: TStringField
      FieldName = 'ISSUERNAME'
      Size = 30
    end
    object cdsInstrumentCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsInstrumentISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsInstrumentISINDATE: TDateTimeField
      FieldName = 'ISINDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsInstrumentMARGIN: TIntegerField
      FieldName = 'MARGIN'
    end
    object cdsInstrumentSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsInstrumentDELISTINGDATE: TDateTimeField
      FieldName = 'DELISTINGDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsInstrumentLISTINGDATE: TDateTimeField
      FieldName = 'LISTINGDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsInstrumentLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
      DisplayFormat = '#,##0.00'
    end
    object cdsInstrumentLASTCPPRICEDATE: TDateField
      FieldName = 'LASTCPPRICEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsInstrumentSECTOR: TStringField
      FieldName = 'SECTOR'
    end
    object cdsInstrumentMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsInstrumentMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsInstrumentAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsInstrumentAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsInstrumentISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsInstrumentID: TLargeintField
      FieldName = 'ID'
    end
    object cdsInstrumentSEDOL: TStringField
      FieldName = 'SEDOL'
      Size = 50
    end
    object cdsInstrumentHCUT_MARGIN: TFloatField
      FieldName = 'HCUT_MARGIN'
    end
    object cdsInstrumentHCUT_REG: TFloatField
      FieldName = 'HCUT_REG'
    end
    object cdsInstrumentHCUT_REPO: TFloatField
      FieldName = 'HCUT_REPO'
    end
    object cdsInstrumentISSUERID: TLargeintField
      FieldName = 'ISSUERID'
    end
    object cdsInstrumentACCCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ISSUERID'
      Size = 30
      Lookup = True
    end
    object cdsInstrumentACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ISSUERID'
      Size = 100
      Lookup = True
    end
    object cdsInstrumentAFFIL: TBooleanField
      FieldName = 'AFFIL'
    end
  end
end
