inherited frmAccCreditLimit: TfrmAccCreditLimit
  Caption = 'Account Credit Limit'
  ClientHeight = 274
  ClientWidth = 549
  ExplicitWidth = 555
  ExplicitHeight = 303
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 549
    Height = 184
    ExplicitWidth = 549
    ExplicitHeight = 184
    object cxDBTextEdit15: TcxDBTextEdit [0]
      Left = 116
      Top = 10
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit16: TcxDBTextEdit [1]
      Left = 243
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 295
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [2]
      Left = 116
      Top = 37
      DataBinding.DataField = 'CREDIT_LIMIT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 141
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [3]
      Left = 116
      Top = 64
      DataBinding.DataField = 'BUY_LIMIT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 141
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [4]
      Left = 308
      Top = 64
      DataBinding.DataField = 'SELL_LIMIT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 146
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [5]
      Left = 116
      Top = 91
      RepositoryItem = dmGlobal.luApproveMethod
      DataBinding.DataField = 'BUYAPPROVEMETHODE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 121
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [6]
      Left = 329
      Top = 91
      RepositoryItem = dmGlobal.luApproveMethod
      DataBinding.DataField = 'SELLAPPROVEMETHODE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit [7]
      Left = 242
      Top = 136
      DataBinding.DataField = 'RATIO_MRGCALL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 60
    end
    object cxDBTextEdit2: TcxDBTextEdit [8]
      Left = 95
      Top = 136
      DataBinding.DataField = 'RATIO_MRGWARING'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 69
    end
    object cxDBTextEdit3: TcxDBTextEdit [9]
      Left = 387
      Top = 136
      DataBinding.DataField = 'RATIO_FORCESELL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 65
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Control = cxDBTextEdit15
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.AlignHorz = taRightJustify
      Control = cxDBTextEdit16
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 295
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Credit Limit'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 141
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Buy Limit'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 141
      ControlOptions.ShowBorder = False
      Index = 0
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
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sell Limit'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 146
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Buy Approve Method'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sell Appr Method'
      Control = cxDBImageComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
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
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Call Ratio (%)'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Warning Ratio'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Setup Ratio'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Force Sell Ratio'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 205
    Width = 549
    ExplicitTop = 205
    ExplicitWidth = 549
    inherited dbNavLog: TDBNavigator
      Left = 435
      Hints.Strings = ()
      ExplicitLeft = 435
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 254
    Width = 549
    ExplicitTop = 254
    ExplicitWidth = 549
  end
  inherited tabEditorData: TTabSet
    Top = 184
    Width = 549
    ExplicitTop = 184
    ExplicitWidth = 549
  end
  inherited dsSubject: TDataSource
    DataSet = cdsAccCreditLimit
    Left = 336
    Top = 32
  end
  object cdsCrdConClassByParam: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CCCLS_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCrdConClassByParam'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 518
    Top = 59
    object cdsCrdConClassByParamCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
      Required = True
    end
    object cdsCrdConClassByParamCCLSSNAME: TStringField
      FieldName = 'CCLSSNAME'
      Size = 80
    end
    object cdsCrdConClassByParamCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
      Size = 40
    end
    object cdsCrdConClassByParamTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsCrdConClassByParamTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsCrdConClassByParamTLB_OVERLIMIT: TStringField
      FieldName = 'TLB_OVERLIMIT'
      Size = 1
    end
    object cdsCrdConClassByParamTLB_NOTVALIDSTATUS: TStringField
      FieldName = 'TLB_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsCrdConClassByParamTLB_MRG_NONVALSTOCK: TStringField
      FieldName = 'TLB_MRG_NONVALSTOCK'
      Size = 1
    end
    object cdsCrdConClassByParamTLB_OVERDUE: TStringField
      FieldName = 'TLB_OVERDUE'
      Size = 1
    end
    object cdsCrdConClassByParamTLS_SHORTSELL: TStringField
      FieldName = 'TLS_SHORTSELL'
      Size = 1
    end
    object cdsCrdConClassByParamTLS_NOTVALIDSTATUS: TStringField
      FieldName = 'TLS_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsCrdConClassByParamTLS_OVERDUE: TStringField
      FieldName = 'TLS_OVERDUE'
      Size = 1
    end
    object cdsCrdConClassByParamRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
    end
    object cdsCrdConClassByParamRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
    end
    object cdsCrdConClassByParamRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
    end
    object cdsCrdConClassByParamFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
    end
    object cdsCrdConClassByParamCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsCrdConClassByParamBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsCrdConClassByParamSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
  end
  object cdsAccCreditLimit: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccCreditLimit'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsAccCreditLimitNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = True
    Left = 424
    Top = 32
    object cdsAccCreditLimitACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccCreditLimitCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
      Required = True
    end
    object cdsAccCreditLimitCCLSSNAME: TStringField
      FieldName = 'CCLSSNAME'
      Size = 80
    end
    object cdsAccCreditLimitCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
      Size = 40
    end
    object cdsAccCreditLimitTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsAccCreditLimitTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsAccCreditLimitTLB_OVERLIMIT: TStringField
      FieldName = 'TLB_OVERLIMIT'
      Size = 1
    end
    object cdsAccCreditLimitTLB_NOTVALIDSTATUS: TStringField
      FieldName = 'TLB_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsAccCreditLimitTLB_MRG_NONVALSTOCK: TStringField
      FieldName = 'TLB_MRG_NONVALSTOCK'
      Size = 1
    end
    object cdsAccCreditLimitTLB_OVERDUE: TStringField
      FieldName = 'TLB_OVERDUE'
      Size = 1
    end
    object cdsAccCreditLimitTLS_SHORTSELL: TStringField
      FieldName = 'TLS_SHORTSELL'
      Size = 1
    end
    object cdsAccCreditLimitTLS_NOTVALIDSTATUS: TStringField
      FieldName = 'TLS_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsAccCreditLimitTLS_OVERDUE: TStringField
      FieldName = 'TLS_OVERDUE'
      Size = 1
    end
    object cdsAccCreditLimitRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitCR_VAL: TFloatField
      FieldName = 'CR_VAL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitCREDIT_LIMIT: TFloatField
      FieldName = 'CREDIT_LIMIT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccCreditLimitMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccCreditLimitAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccCreditLimitAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccCreditLimitUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccCreditLimitUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccCreditLimitNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccCreditLimitISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccCreditLimitID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccCreditLimitBUYAPPROVEMETHODE: TIntegerField
      FieldName = 'BUYAPPROVEMETHODE'
    end
    object cdsAccCreditLimitSELLAPPROVEMETHODE: TIntegerField
      FieldName = 'SELLAPPROVEMETHODE'
    end
    object cdsAccCreditLimitMCALLDAY: TIntegerField
      FieldName = 'MCALLDAY'
    end
    object cdsAccCreditLimitEMAILID: TLargeintField
      FieldName = 'EMAILID'
    end
    object cdsAccCreditLimitSENDID: TLargeintField
      FieldName = 'SENDID'
    end
    object cdsAccCreditLimitLASTSENDMAIL: TDateField
      FieldName = 'LASTSENDMAIL'
    end
    object cdsAccCreditLimitSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object cdsAccCreditLimitLASTUPDATEMCALLALERT: TDateTimeField
      FieldName = 'LASTUPDATEMCALLALERT'
    end
    object cdsAccCreditLimitACCCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsAccCreditLimitACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 200
      Lookup = True
    end
  end
end
