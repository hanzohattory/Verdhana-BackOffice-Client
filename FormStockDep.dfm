inherited frmStockDep: TfrmStockDep
  Caption = 'Stock Deposit'
  ClientHeight = 485
  ClientWidth = 543
  OnClose = FormClose
  ExplicitLeft = 3
  ExplicitTop = 3
  ExplicitWidth = 555
  ExplicitHeight = 523
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 543
    Height = 395
    ExplicitWidth = 537
    ExplicitHeight = 386
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 106
      Top = 10
      TabStop = False
      DataBinding.DataField = 'SDDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 310
      Top = 10
      TabStop = False
      DataBinding.DataField = 'SDCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 220
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [2]
      Left = 106
      Top = 118
      DataBinding.DataField = 'INSTRUMENT_ID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INSTRUMENT_ID'
      Properties.ListColumns = <
        item
          Caption = 'Instrument Code'
          FieldName = 'INSTRUMENT_CODE'
        end
        item
          Caption = 'Instrument Name'
          Width = 200
          FieldName = 'SHORTNAME'
        end
        item
          Caption = 'Instrument Type'
          HeaderAlignment = taCenter
          Width = 80
          FieldName = 'INSTRUMENT_TYPE_DESC'
        end>
      Properties.ListSource = dmLookup.dsLuInstrumentAll
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      OnExit = cxDBLookupComboBox3Exit
      Width = 90
    end
    object cxDBTextEdit4: TcxDBTextEdit [3]
      Left = 214
      Top = 118
      TabStop = False
      DataBinding.DataField = 'INSTRUMEN_NAME_TMP'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 316
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [4]
      Left = 106
      Top = 145
      RepositoryItem = dmGlobal.luCustody
      DataBinding.DataField = 'CBCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [5]
      Left = 106
      Top = 64
      TabStop = False
      DataBinding.DataField = 'KSEIACC'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [6]
      Left = 106
      Top = 199
      TabStop = False
      RepositoryItem = dmGlobal.chkStandard
      DataBinding.DataField = 'PLEDGED'
      DataBinding.DataSource = dsSubject
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
    end
    object cxDBCheckBox2: TcxDBCheckBox [7]
      Left = 175
      Top = 199
      TabStop = False
      RepositoryItem = dmGlobal.chkStandard
      DataBinding.DataField = 'SCRIPLESS'
      DataBinding.DataSource = dsSubject
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
    end
    object cxDBMemo1: TcxDBMemo [8]
      Left = 106
      Top = 280
      DataBinding.DataField = 'REMARK'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Height = 49
      Width = 424
    end
    object cmbSettleReason: TcxDBImageComboBox [9]
      Left = 106
      Top = 362
      TabStop = False
      RepositoryItem = dmGlobal.luSettleReason
      DataBinding.DataField = 'SETTLEREASON'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      Width = 424
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [10]
      Left = 106
      Top = 226
      DataBinding.DataField = 'SDPRICE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      OnExit = cxDBCurrencyEdit1Exit
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [11]
      Left = 106
      Top = 253
      DataBinding.DataField = 'SDQTY'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 121
    end
    object dtAquisitionDate: TcxDBDateEdit [12]
      Left = 310
      Top = 145
      TabStop = False
      DataBinding.DataField = 'ACQDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 121
    end
    object txtSIDNO: TcxTextEdit [13]
      Left = 310
      Top = 64
      TabStop = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 220
    end
    object txtAccCode: TcxDBButtonEdit [14]
      Left = 106
      Top = 37
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = txtAccCodePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 117
    end
    object txtAccountName: TcxTextEdit [15]
      Left = 238
      Top = 37
      TabStop = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 293
    end
    object txtMarket: TcxLookupComboBox [16]
      Left = 106
      Top = 91
      RepositoryItem = dmGlobal.luMarket
      Properties.ListColumns = <>
      Properties.OnCloseUp = txtMarketPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 90
    end
    object txtTradeReff: TcxDBTextEdit [17]
      Left = 106
      Top = 335
      DataBinding.DataField = 'PURPOSE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 425
    end
    object cxDBDateEdit2: TcxDBDateEdit [18]
      Left = 106
      Top = 172
      DataBinding.DataField = 'SETTLEDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 121
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Voucher No'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '- '
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 316
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
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Custodian Bank'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'KSEI Account'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Pledged'
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Scripless'
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Remark'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 49
      ControlOptions.OriginalWidth = 424
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settlement Reason'
      Control = cmbSettleReason
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 424
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Price'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Quantity'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Aquisition Date'
      Control = dtAquisitionDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'SID No.'
      Control = txtSIDNO
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Code'
      Control = txtAccCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = '-'
      Control = txtAccountName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 293
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      Visible = False
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market'
      Control = txtMarket
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trade Reff'
      Control = txtTradeReff
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 425
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settle Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 416
    Width = 543
    ExplicitTop = 407
    ExplicitWidth = 537
    inherited dbNavLog: TDBNavigator
      Left = 429
      Hints.Strings = ()
      ExplicitLeft = 429
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 465
    Width = 543
    ExplicitTop = 456
    ExplicitWidth = 537
  end
  inherited tabEditorData: TTabSet
    Top = 395
    Width = 543
    ExplicitTop = 386
    ExplicitWidth = 537
  end
  inherited dsSubject: TDataSource
    DataSet = cdsStockDep
    Left = 408
    Top = 184
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 352
    Top = 424
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsStockClosingPrice: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'STOCKDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'STOCKCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockClosingPrice'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 408
    Top = 231
    object cdsStockClosingPriceSTK_DATE: TDateField
      FieldName = 'STK_DATE'
      Required = True
    end
    object cdsStockClosingPriceSTK_CODE: TStringField
      FieldName = 'STK_CODE'
      Required = True
      Size = 10
    end
    object cdsStockClosingPriceSTK_NAME: TStringField
      FieldName = 'STK_NAME'
      Size = 50
    end
    object cdsStockClosingPriceSTK_PREV: TFloatField
      FieldName = 'STK_PREV'
    end
    object cdsStockClosingPriceSTK_HIGH: TFloatField
      FieldName = 'STK_HIGH'
    end
    object cdsStockClosingPriceSTK_LOW: TFloatField
      FieldName = 'STK_LOW'
    end
    object cdsStockClosingPriceSTK_CLOS: TFloatField
      FieldName = 'STK_CLOS'
    end
    object cdsStockClosingPriceSTK_VOLM: TFloatField
      FieldName = 'STK_VOLM'
    end
    object cdsStockClosingPriceSTK_AMNT: TFloatField
      FieldName = 'STK_AMNT'
    end
    object cdsStockClosingPriceSTK_INDX: TFloatField
      FieldName = 'STK_INDX'
    end
    object cdsStockClosingPriceSTK_PIDX: TFloatField
      FieldName = 'STK_PIDX'
    end
    object cdsStockClosingPriceSTK_ASKP: TFloatField
      FieldName = 'STK_ASKP'
    end
    object cdsStockClosingPriceSTK_ASKV: TFloatField
      FieldName = 'STK_ASKV'
    end
    object cdsStockClosingPriceSTK_ASKF: TStringField
      FieldName = 'STK_ASKF'
      Size = 5
    end
    object cdsStockClosingPriceSTK_BIDP: TFloatField
      FieldName = 'STK_BIDP'
    end
    object cdsStockClosingPriceSTK_BIDV: TFloatField
      FieldName = 'STK_BIDV'
    end
    object cdsStockClosingPriceSTK_BIDF: TStringField
      FieldName = 'STK_BIDF'
      Size = 5
    end
    object cdsStockClosingPriceSTK_FHIG: TFloatField
      FieldName = 'STK_FHIG'
    end
    object cdsStockClosingPriceSTK_FLOW: TFloatField
      FieldName = 'STK_FLOW'
    end
    object cdsStockClosingPriceSTK_FCLO: TFloatField
      FieldName = 'STK_FCLO'
    end
    object cdsStockClosingPriceSTK_OPEN: TFloatField
      FieldName = 'STK_OPEN'
    end
  end
  object cdsStockDep: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'SDID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockDep'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsStockDepBeforePost
    OnNewRecord = cdsStockDepNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 408
    Top = 136
    object cdsStockDepSDID: TLargeintField
      FieldName = 'SDID'
    end
    object cdsStockDepSDCODE: TStringField
      FieldName = 'SDCODE'
      Required = True
    end
    object cdsStockDepSDDATE: TDateField
      FieldName = 'SDDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockDepACQPRICE: TFloatField
      FieldName = 'ACQPRICE'
    end
    object cdsStockDepACCID: TLargeintField
      FieldName = 'ACCID'
      OnChange = cdsStockDepACCIDChange
    end
    object cdsStockDepACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsStockDepINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      OnChange = cdsStockDepINSTRUMENT_IDChange
    end
    object cdsStockDepINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
    end
    object cdsStockDepCBCODE: TStringField
      FieldName = 'CBCODE'
      Size = 10
    end
    object cdsStockDepKSEIACC: TStringField
      FieldName = 'KSEIACC'
    end
    object cdsStockDepACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsStockDepACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 1
    end
    object cdsStockDepSCRIPLESS: TStringField
      FieldName = 'SCRIPLESS'
      Size = 1
    end
    object cdsStockDepPLEDGED: TStringField
      FieldName = 'PLEDGED'
      Size = 1
    end
    object cdsStockDepSDPRICE: TFloatField
      FieldName = 'SDPRICE'
    end
    object cdsStockDepSDQTY: TLargeintField
      FieldName = 'SDQTY'
    end
    object cdsStockDepREMARK: TStringField
      FieldName = 'REMARK'
      Size = 100
    end
    object cdsStockDepPURPOSE: TStringField
      FieldName = 'PURPOSE'
      Size = 10
    end
    object cdsStockDepTRADEREFF: TStringField
      FieldName = 'TRADEREFF'
      Size = 30
    end
    object cdsStockDepSETTLEREASON: TStringField
      FieldName = 'SETTLEREASON'
      Size = 10
    end
    object cdsStockDepPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsStockDepMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsStockDepMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsStockDepAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsStockDepAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsStockDepUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsStockDepUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsStockDepNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsStockDepISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsStockDepID: TLargeintField
      FieldName = 'ID'
    end
    object cdsStockDepINVTYPE_TMP: TStringField
      FieldKind = fkLookup
      FieldName = 'INVTYPE_TMP'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'INVTYPE'
      KeyFields = 'ACCID'
      Size = 1
      Lookup = True
    end
    object cdsStockDepPRDTYPE: TStringField
      FieldKind = fkLookup
      FieldName = 'PRDTYPE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'PRDCODE'
      KeyFields = 'ACCID'
      Size = 10
      Lookup = True
    end
    object cdsStockDepKSEIACC_TMP: TStringField
      FieldKind = fkLookup
      FieldName = 'KSEIACC_TMP'
      LookupDataSet = dmLookup.cdsLuAccountCustody
      LookupKeyFields = 'ACCID'
      LookupResultField = 'CUSTODYACCNO'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsStockDepACTLED_SEQID_TMP: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ACTLED_SEQID_TMP'
      LookupDataSet = dmLookup.cdsLuAccountCustody
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACTLED_SEQID'
      KeyFields = 'ACCID'
      Lookup = True
    end
    object cdsStockDepINSTRUMEN_NAME_TMP: TStringField
      FieldKind = fkLookup
      FieldName = 'INSTRUMEN_NAME_TMP'
      LookupDataSet = dmLookup.cdsLuInstrumentAll
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'SHORTNAME'
      KeyFields = 'INSTRUMENT_ID'
      Size = 50
      Lookup = True
    end
    object cdsStockDepENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsStockDepSTOCK_TYPE: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCK_TYPE'
      LookupDataSet = dmLookup.cdsLuInstrumentAll
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'INSTRUMENT_TYPE_DESC'
      KeyFields = 'INSTRUMENT_ID'
      Size = 30
      Lookup = True
    end
    object cdsStockDepSETTLEDATE: TDateField
      FieldName = 'SETTLEDATE'
    end
    object cdsStockDepACQDATE: TDateField
      FieldName = 'ACQDATE'
    end
  end
end
