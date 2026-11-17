inherited frmCashMov: TfrmCashMov
  Caption = 'Cash Movement'
  ClientHeight = 322
  ClientWidth = 572
  ExplicitWidth = 588
  ExplicitHeight = 361
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 572
    Height = 232
    ExplicitWidth = 572
    ExplicitHeight = 232
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 90
      Top = 10
      TabStop = False
      DataBinding.DataField = 'CMCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 211
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 90
      Top = 37
      TabStop = False
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 124
    end
    object cxDBDateEdit2: TcxDBDateEdit [2]
      Left = 277
      Top = 37
      DataBinding.DataField = 'VALUEDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [3]
      Left = 90
      Top = 64
      DataBinding.DataField = 'sourceAccCode'
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
      TabOrder = 3
      Width = 120
    end
    object cxDBTextEdit2: TcxDBTextEdit [4]
      Left = 225
      Top = 64
      DataBinding.DataField = 'sourceAccName'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 337
    end
    object cxDBButtonEdit2: TcxDBButtonEdit [5]
      Left = 90
      Top = 91
      DataBinding.DataField = 'targetAccCode'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxDBButtonEdit2PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Width = 120
    end
    object cxDBTextEdit3: TcxDBTextEdit [6]
      Left = 225
      Top = 91
      DataBinding.DataField = 'targetAccName'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 337
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [7]
      Left = 90
      Top = 118
      TabStop = False
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 78
    end
    object cxDBMemo1: TcxDBMemo [8]
      Left = 90
      Top = 172
      DataBinding.DataField = 'REMARK'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Height = 50
      Width = 472
    end
    object edCashOnHand: TcxDBCurrencyEdit [9]
      Left = 90
      Top = 145
      TabStop = False
      DataBinding.DataField = 'CASH_ONHAND'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [10]
      Left = 434
      Top = 145
      TabStop = False
      DataBinding.DataField = 'cashBalance'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [11]
      Left = 259
      Top = 118
      DataBinding.DataField = 'MOV_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Cash RDN'
          ImageIndex = 0
          Value = 'R'
        end
        item
          Description = 'Cash QQ'
          Value = 'Q'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [12]
      Left = 259
      Top = 145
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Width = 127
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 211
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Entry Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 124
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Source Account'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 337
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Target Account'
      Control = cxDBButtonEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 337
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Remark'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 50
      ControlOptions.OriginalWidth = 472
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Cash On Hand'
      Control = edCashOnHand
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Balance'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Cash Move From'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Amount'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 127
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 253
    Width = 572
    ExplicitTop = 253
    ExplicitWidth = 572
    inherited dbNavLog: TDBNavigator
      Left = 458
      Hints.Strings = ()
      ExplicitLeft = 458
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 302
    Width = 572
    ExplicitTop = 302
    ExplicitWidth = 572
  end
  inherited tabEditorData: TTabSet
    Top = 232
    Width = 572
    ExplicitTop = 232
    ExplicitWidth = 572
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCashMov
    Left = 176
    Top = 176
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 212
    Top = 248
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsCashMov: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'cmID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashMov'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsCashMovAfterOpen
    BeforePost = cdsCashMovBeforePost
    OnNewRecord = cdsCashMovNewRecord
    AfterApplyUpdates = cdsCashMovAfterApplyUpdates
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 252
    Top = 176
    object cdsCashMovCMID: TIntegerField
      FieldName = 'CMID'
      Required = True
    end
    object cdsCashMovCMCODE: TStringField
      FieldName = 'CMCODE'
      Required = True
    end
    object cdsCashMovENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashMovVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashMovMOV_TYPE: TStringField
      FieldName = 'MOV_TYPE'
      Size = 1
    end
    object cdsCashMovSOURCE_ACCID: TIntegerField
      FieldName = 'SOURCE_ACCID'
      Required = True
      OnChange = cdsCashMovSOURCE_ACCIDChange
    end
    object cdsCashMovTARGET_ACCID: TIntegerField
      FieldName = 'TARGET_ACCID'
      Required = True
    end
    object cdsCashMovCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsCashMovAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
      OnChange = cdsCashMovAMOUNTChange
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashMovREMARK: TStringField
      FieldName = 'REMARK'
      Size = 250
    end
    object cdsCashMovFUNDTRANSID: TLargeintField
      FieldName = 'FUNDTRANSID'
    end
    object cdsCashMovFUNDTRANSID_REVERSED: TLargeintField
      FieldName = 'FUNDTRANSID_REVERSED'
    end
    object cdsCashMovLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
    object cdsCashMovLEDGERTRANSID_REVERSED: TLargeintField
      FieldName = 'LEDGERTRANSID_REVERSED'
    end
    object cdsCashMovSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsCashMovENTRY_DATE: TDateTimeField
      FieldName = 'ENTRY_DATE'
    end
    object cdsCashMovENTRY_SYSDATE: TDateTimeField
      FieldName = 'ENTRY_SYSDATE'
    end
    object cdsCashMovENTRY_UI: TStringField
      FieldName = 'ENTRY_UI'
      Size = 30
    end
    object cdsCashMovPOSTED_DATE: TDateTimeField
      FieldName = 'POSTED_DATE'
    end
    object cdsCashMovPOSTED_SYSDATE: TDateTimeField
      FieldName = 'POSTED_SYSDATE'
    end
    object cdsCashMovPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsCashMovREVERSED_DATE: TDateTimeField
      FieldName = 'REVERSED_DATE'
    end
    object cdsCashMovREVERSED_SYSDATE: TDateTimeField
      FieldName = 'REVERSED_SYSDATE'
    end
    object cdsCashMovREVERSED_UI: TStringField
      FieldName = 'REVERSED_UI'
    end
    object cdsCashMovCANCELED_DATE: TDateTimeField
      FieldName = 'CANCELED_DATE'
    end
    object cdsCashMovCANCELED_SYSDATE: TDateTimeField
      FieldName = 'CANCELED_SYSDATE'
    end
    object cdsCashMovCANCELED_NOTES: TStringField
      FieldName = 'CANCELED_NOTES'
      Size = 100
    end
    object cdsCashMovCANCELED_UI: TStringField
      FieldName = 'CANCELED_UI'
      Size = 30
    end
    object cdsCashMovAPPROVED_DATE: TDateTimeField
      FieldName = 'APPROVED_DATE'
    end
    object cdsCashMovAPPROVED_SYSDATE: TDateTimeField
      FieldName = 'APPROVED_SYSDATE'
    end
    object cdsCashMovAPPROVED_UI: TStringField
      FieldName = 'APPROVED_UI'
      Size = 30
    end
    object cdsCashMovMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashMovMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashMovAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashMovAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashMovUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashMovUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashMovNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashMovISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashMovID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashMovsourceAccCode: TStringField
      FieldName = 'sourceAccCode'
      Size = 30
    end
    object cdsCashMovsourceAccName: TStringField
      FieldName = 'sourceAccName'
      Size = 150
    end
    object cdsCashMovtargetAccCode: TStringField
      FieldName = 'targetAccCode'
      Size = 30
    end
    object cdsCashMovtargetAccName: TStringField
      FieldName = 'targetAccName'
      Size = 150
    end
    object cdsCashMovCASH_ONHAND: TFloatField
      FieldName = 'CASH_ONHAND'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashMovcashBalance: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'cashBalance'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
  end
  object cdsBankInstruction: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'BIID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryBankInstruction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 320
    Top = 248
    object cdsBankInstructionBIID: TLargeintField
      FieldName = 'BIID'
      Required = True
    end
    object cdsBankInstructionBINO: TStringField
      FieldName = 'BINO'
      Required = True
    end
    object cdsBankInstructionBITYPE: TStringField
      FieldName = 'BITYPE'
      Required = True
      Size = 1
    end
    object cdsBankInstructionENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
    end
    object cdsBankInstructionVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsBankInstructionBIDESC: TStringField
      FieldName = 'BIDESC'
      Required = True
      Size = 150
    end
    object cdsBankInstructionBANK_REF: TStringField
      FieldName = 'BANK_REF'
      Size = 30
    end
    object cdsBankInstructionTRANS_TYPE: TStringField
      FieldName = 'TRANS_TYPE'
      Size = 2
    end
    object cdsBankInstructionLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsBankInstructionLINKNO: TStringField
      FieldName = 'LINKNO'
      Size = 30
    end
    object cdsBankInstructionSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsBankInstructionACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsBankInstructionACCBANKID_SOURCE: TIntegerField
      FieldName = 'ACCBANKID_SOURCE'
    end
    object cdsBankInstructionBNCODE_SOURCE: TStringField
      FieldName = 'BNCODE_SOURCE'
      Size = 10
    end
    object cdsBankInstructionBNACCNO_SOURCE: TStringField
      FieldName = 'BNACCNO_SOURCE'
    end
    object cdsBankInstructionBNACCNAME_SOURCE: TStringField
      FieldName = 'BNACCNAME_SOURCE'
      Size = 150
    end
    object cdsBankInstructionBNBRANCH_SOURCE: TStringField
      FieldName = 'BNBRANCH_SOURCE'
      Size = 150
    end
    object cdsBankInstructionACCBANKID_TARGET: TIntegerField
      FieldName = 'ACCBANKID_TARGET'
      Required = True
    end
    object cdsBankInstructionBNCODE_TARGET: TStringField
      FieldName = 'BNCODE_TARGET'
      Size = 10
    end
    object cdsBankInstructionBNACCNO_TARGET: TStringField
      FieldName = 'BNACCNO_TARGET'
    end
    object cdsBankInstructionBNACCNAME_TARGET: TStringField
      FieldName = 'BNACCNAME_TARGET'
      Size = 150
    end
    object cdsBankInstructionBNBRANCH_TARGET: TStringField
      FieldName = 'BNBRANCH_TARGET'
      Size = 150
    end
    object cdsBankInstructionTRANFER_TYPE: TStringField
      FieldName = 'TRANFER_TYPE'
      Required = True
      Size = 1
    end
    object cdsBankInstructionCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 10
    end
    object cdsBankInstructionAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
    end
    object cdsBankInstructionCHARGES: TFloatField
      FieldName = 'CHARGES'
      Required = True
    end
    object cdsBankInstructionNETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
      Required = True
    end
    object cdsBankInstructionMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBankInstructionMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBankInstructionAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBankInstructionAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBankInstructionUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBankInstructionUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBankInstructionNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBankInstructionISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBankInstructionID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBankInstructionBANKTYPE_SOURCE: TStringField
      FieldName = 'BANKTYPE_SOURCE'
      Size = 1
    end
    object cdsBankInstructionCCYCODE_SOURCE: TStringField
      FieldName = 'CCYCODE_SOURCE'
      Size = 5
    end
    object cdsBankInstructionBANKTYPE_TARGET: TStringField
      FieldName = 'BANKTYPE_TARGET'
      Size = 1
    end
    object cdsBankInstructionCCYCODE_TARGET: TStringField
      FieldName = 'CCYCODE_TARGET'
      Size = 5
    end
  end
  object cdsLuCompanyBankDefault: TNClientDataset
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
    ProviderName = 'dspN_dmLookup_qryLuCompanyBankDefault'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 480
    Top = 80
    object cdsLuCompanyBankDefaultBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
    object cdsLuCompanyBankDefaultCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuCompanyBankDefaultBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsLuCompanyBankDefaultBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsLuCompanyBankDefaultBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Required = True
      Size = 100
    end
    object cdsLuCompanyBankDefaultBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Required = True
      Size = 100
    end
    object cdsLuCompanyBankDefaultBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Required = True
      Size = 1
    end
    object cdsLuCompanyBankDefaultSTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
    object cdsLuCompanyBankDefaultBNNAME: TStringField
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
  end
  object cdsLuCompanyBankByBank: TNClientDataset
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
      end
      item
        DataType = ftString
        Name = 'BNCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuCompanyBankByBank'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 480
    Top = 128
    object cdsLuCompanyBankByBankBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
    object cdsLuCompanyBankByBankCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuCompanyBankByBankBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsLuCompanyBankByBankBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsLuCompanyBankByBankBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Required = True
      Size = 100
    end
    object cdsLuCompanyBankByBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Required = True
      Size = 100
    end
    object cdsLuCompanyBankByBankBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Required = True
      Size = 1
    end
    object cdsLuCompanyBankByBankSTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
    object cdsLuCompanyBankByBankBNNAME: TStringField
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
  end
  object cdsLuAccountBankDefault: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuAccountBankDefault'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 480
    Top = 176
    object cdsLuAccountBankDefaultACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountBankDefaultCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuAccountBankDefaultACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      ReadOnly = True
    end
    object cdsLuAccountBankDefaultBNCODE: TStringField
      FieldName = 'BNCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccountBankDefaultBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccountBankDefaultBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsLuAccountBankDefaultBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      ReadOnly = True
      Size = 50
    end
    object cdsLuAccountBankDefaultACCBANKID_1: TIntegerField
      FieldName = 'ACCBANKID_1'
      ReadOnly = True
    end
    object cdsLuAccountBankDefaultBNCODE_1: TStringField
      FieldName = 'BNCODE_1'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccountBankDefaultBANKACCNO_1: TStringField
      FieldName = 'BANKACCNO_1'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccountBankDefaultBANKACCNAME_1: TStringField
      FieldName = 'BANKACCNAME_1'
      ReadOnly = True
      Size = 50
    end
    object cdsLuAccountBankDefaultBANKBRANCH_1: TStringField
      FieldName = 'BANKBRANCH_1'
      ReadOnly = True
      Size = 50
    end
  end
  object cdsLuAccountBankDefaultTarget: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuAccountBankDefault'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 480
    Top = 232
    object cdsLuAccountBankDefaultTargetACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountBankDefaultTargetCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuAccountBankDefaultTargetACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      ReadOnly = True
    end
    object cdsLuAccountBankDefaultTargetBNCODE: TStringField
      FieldName = 'BNCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccountBankDefaultTargetBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccountBankDefaultTargetBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsLuAccountBankDefaultTargetBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      ReadOnly = True
      Size = 50
    end
    object cdsLuAccountBankDefaultTargetACCBANKID_1: TIntegerField
      FieldName = 'ACCBANKID_1'
      ReadOnly = True
    end
    object cdsLuAccountBankDefaultTargetBNCODE_1: TStringField
      FieldName = 'BNCODE_1'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccountBankDefaultTargetBANKACCNO_1: TStringField
      FieldName = 'BANKACCNO_1'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccountBankDefaultTargetBANKACCNAME_1: TStringField
      FieldName = 'BANKACCNAME_1'
      ReadOnly = True
      Size = 50
    end
    object cdsLuAccountBankDefaultTargetBANKBRANCH_1: TStringField
      FieldName = 'BANKBRANCH_1'
      ReadOnly = True
      Size = 50
    end
  end
  object cdsCashLastPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'accID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashLastPost'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 344
    Top = 176
    object cdsCashLastPosACCID: TLargeintField
      DisplayLabel = 'Account ID'
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCashLastPosCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsCashLastPosACCRUED_INTEREST: TFloatField
      DisplayLabel = 'Accrued Interest'
      FieldName = 'ACCRUED_INTEREST'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_ONHAND: TFloatField
      DisplayLabel = 'Cash On Hand'
      FieldName = 'CASH_ONHAND'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_QQ: TFloatField
      DisplayLabel = 'Cash QQ'
      FieldName = 'CASH_QQ'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_SUBACC: TFloatField
      DisplayLabel = 'Cash Sub Account'
      FieldName = 'CASH_SUBACC'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_ONHOLD: TFloatField
      DisplayLabel = 'Cash On Hold'
      FieldName = 'CASH_ONHOLD'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosARAMT: TFloatField
      DisplayLabel = 'AR Amount'
      FieldName = 'ARAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosAPAMT: TFloatField
      DisplayLabel = 'AP Amount'
      FieldName = 'APAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_OUTS: TFloatField
      DisplayLabel = 'Cash Outstanding'
      FieldName = 'CASH_OUTS'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosBUY_AMT: TFloatField
      DisplayLabel = 'Buy Amount'
      FieldName = 'BUY_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosSELL_AMT: TFloatField
      DisplayLabel = 'Sell Amount'
      FieldName = 'SELL_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_WDR: TFloatField
      DisplayLabel = 'Cash Withdraw'
      FieldName = 'CASH_WDR'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_OTHERS: TFloatField
      DisplayLabel = 'Cash Others'
      FieldName = 'CASH_OTHERS'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPosCASH_BAL: TFloatField
      DisplayLabel = 'Cash Balance'
      FieldName = 'CASH_BAL'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashLastPoscashAvailable: TFloatField
      DisplayLabel = 'Cash Available'
      FieldKind = fkInternalCalc
      FieldName = 'cashAvailable'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
  end
  object dsCashLastPos: TDataSource
    DataSet = cdsCashLastPos
    Left = 344
    Top = 136
  end
end
