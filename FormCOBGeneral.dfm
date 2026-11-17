inherited frmCOBGeneral: TfrmCOBGeneral
  Caption = 'Parameter Setting General'
  ClientHeight = 406
  ClientWidth = 490
  ExplicitWidth = 496
  ExplicitHeight = 435
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 490
    Height = 357
    ExplicitWidth = 490
    ExplicitHeight = 357
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 115
      Top = 10
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 120
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 241
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 232
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [2]
      Left = 179
      Top = 86
      RepositoryItem = dmGlobal.luTCModel
      DataBinding.DataField = 'TC_MODEL'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 246
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [3]
      Left = 179
      Top = 113
      DataBinding.DataField = 'AVGPRICEDEC'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 73
    end
    object cxDBCheckBox1: TcxDBCheckBox [4]
      Left = 34
      Top = 158
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'WAPU'
      DataBinding.DataField = 'ISWAPU'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 78
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [5]
      Left = 118
      Top = 158
      DataBinding.DataField = 'WAPUVALUE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 174
    end
    object cxDBCheckBox2: TcxDBCheckBox [6]
      Left = 34
      Top = 185
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Average Price'
      DataBinding.DataField = 'ISAVGPRICE'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 183
    end
    object cxDBCheckBox3: TcxDBCheckBox [7]
      Left = 223
      Top = 185
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Trading Account'
      DataBinding.DataField = 'ISTRDACCOUNT'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 162
    end
    object cxDBCheckBox4: TcxDBCheckBox [8]
      Left = 34
      Top = 212
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Penalty'
      DataBinding.DataField = 'ISPENALTY'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBCheckBox5: TcxDBCheckBox [9]
      Left = 223
      Top = 212
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Omnibus Trade'
      DataBinding.DataField = 'OMNIBUSTRADE'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object cxDBCheckBox6: TcxDBCheckBox [10]
      Left = 34
      Top = 239
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'WHT'
      DataBinding.DataField = 'ISUSEWHT'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBCheckBox7: TcxDBCheckBox [11]
      Left = 223
      Top = 239
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Debet Interest'
      DataBinding.DataField = 'ISDEBETINTEREST'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 121
    end
    object cxDBCheckBox8: TcxDBCheckBox [12]
      Left = 34
      Top = 266
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'OTC'
      DataBinding.DataField = 'ISUSEOTC'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBCheckBox9: TcxDBCheckBox [13]
      Left = 223
      Top = 266
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Creadit Interest'
      DataBinding.DataField = 'ISCREDITINTEREST'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    object cxDBCheckBox10: TcxDBCheckBox [14]
      Left = 34
      Top = 293
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Auto Close Order'
      DataBinding.DataField = 'A_CLS_ORDER'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBCheckBox11: TcxDBCheckBox [15]
      Left = 223
      Top = 293
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'User OMGEO'
      DataBinding.DataField = 'OMGUSE'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 121
    end
    object btnGenerate: TcxButton [16]
      Left = 241
      Top = 37
      Width = 232
      Height = 25
      Caption = 'Generate Account Parameter Setting'
      TabOrder = 3
      OnClick = btnGenerateClick
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [17]
      Left = 115
      Top = 37
      RepositoryItem = dmGlobal.luBusinessType
      DataBinding.DataField = 'BUSSTYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      OnExit = cxDBLookupComboBox1Exit
      Width = 120
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'A/C Number'
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'cxDBTextEdit2'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'General Info'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object LayoutControlItem3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trade Confirmation Model'
      Parent = LayoutControlGroup2
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Avg. Price Decimal Point (Digits)'
      Parent = LayoutControlGroup2
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Indicators'
      Parent = LayoutControlGroup2
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object LayoutControlItem5: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup5
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem6: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCurrencyEdit2'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup5
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem7: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox2'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup6
      Control = cxDBCheckBox2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem8: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox3'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup7
      Control = cxDBCheckBox3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlItem9: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox4'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup6
      Control = cxDBCheckBox4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup4
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem10: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox5'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup7
      Control = cxDBCheckBox5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup4
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object LayoutControlItem11: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox6'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup6
      Control = cxDBCheckBox6
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem12: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox7'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup7
      Control = cxDBCheckBox7
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem13: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox8'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup6
      Control = cxDBCheckBox8
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlItem14: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox9'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup7
      Control = cxDBCheckBox9
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlItem15: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox10'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup6
      Control = cxDBCheckBox10
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutControlItem16: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox11'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup7
      Control = cxDBCheckBox11
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutControlItem18: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup8
      Control = btnGenerate
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlItem17: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Param Class'
      Parent = LayoutControlGroup8
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 357
    Width = 490
    ExplicitTop = 357
    ExplicitWidth = 490
    inherited LayoutControlFooterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    inherited LayoutControlFooterItem1: TdxLayoutItem
      Index = 0
    end
    inherited LayoutControlFooterItem2: TdxLayoutItem
      Index = 1
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCOBList.cdsAccount
    Left = 386
    Top = 136
  end
  object cdsBusType: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'BUSTYPEID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryBusType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 120
    Top = 240
    object cdsBusTypeBUSTYPEID: TLargeintField
      FieldName = 'BUSTYPEID'
      Required = True
    end
    object cdsBusTypeBUSTYPECODE: TStringField
      FieldName = 'BUSTYPECODE'
      Required = True
      Size = 10
    end
    object cdsBusTypeBUSTYPEDESC: TStringField
      FieldName = 'BUSTYPEDESC'
      Size = 50
    end
    object cdsBusTypeALCLASSID: TIntegerField
      FieldName = 'ALCLASSID'
    end
    object cdsBusTypeTLCLASSID: TIntegerField
      FieldName = 'TLCLASSID'
    end
    object cdsBusTypeINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Size = 10
    end
    object cdsBusTypeTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsBusTypePRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsBusTypeA_CLS_ORDER: TStringField
      FieldName = 'A_CLS_ORDER'
      Size = 1
    end
    object cdsBusTypeAVGPRICEDEC: TSmallintField
      FieldName = 'AVGPRICEDEC'
    end
    object cdsBusTypeOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsBusTypeCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsBusTypeSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsBusTypeISWAPU: TStringField
      FieldName = 'ISWAPU'
      Size = 1
    end
    object cdsBusTypeWAPUVALUE: TFloatField
      FieldName = 'WAPUVALUE'
    end
    object cdsBusTypeISAVGPRICE: TStringField
      FieldName = 'ISAVGPRICE'
      Size = 1
    end
    object cdsBusTypeISDEBETINTEREST: TStringField
      FieldName = 'ISDEBETINTEREST'
      Size = 1
    end
    object cdsBusTypeISCREDITINTEREST: TStringField
      FieldName = 'ISCREDITINTEREST'
      Size = 1
    end
    object cdsBusTypeISPENALTY: TStringField
      FieldName = 'ISPENALTY'
      Size = 1
    end
    object cdsBusTypeISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsBusTypeISUSEOTC: TStringField
      FieldName = 'ISUSEOTC'
      Size = 1
    end
    object cdsBusTypeISOWNCONTACT: TStringField
      FieldName = 'ISOWNCONTACT'
      Size = 1
    end
    object cdsBusTypeISTRDACCOUNT: TStringField
      FieldName = 'ISTRDACCOUNT'
      Size = 1
    end
    object cdsBusTypeIDX_CASHPAY_SOURCE_LDGTYPE: TStringField
      FieldName = 'IDX_CASHPAY_SOURCE_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeIDX_CASHPAY_TARGET_LDGTYPE: TStringField
      FieldName = 'IDX_CASHPAY_TARGET_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeIDX_CASHRCV_SOURCE_LDGTYPE: TStringField
      FieldName = 'IDX_CASHRCV_SOURCE_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeIDX_CASHRCV_TARGET_LDGTYPE: TStringField
      FieldName = 'IDX_CASHRCV_TARGET_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeIDX_CASHPAY_INSTR: TStringField
      FieldName = 'IDX_CASHPAY_INSTR'
      Size = 10
    end
    object cdsBusTypeIDX_CASHRCV_INSTR: TStringField
      FieldName = 'IDX_CASHRCV_INSTR'
      Size = 10
    end
    object cdsBusTypeCASHRCV_SOURCE_LDGTYPE: TStringField
      FieldName = 'CASHRCV_SOURCE_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeCASHRCV_TARGET_LDGTYPE: TStringField
      FieldName = 'CASHRCV_TARGET_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeCASHPAY_SOURCE_LDGTYPE: TStringField
      FieldName = 'CASHPAY_SOURCE_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeCASHPAY_TARGET_LDGTYPE: TStringField
      FieldName = 'CASHPAY_TARGET_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeCASHRCV_INSTR: TStringField
      FieldName = 'CASHRCV_INSTR'
      Size = 10
    end
    object cdsBusTypeCASHPAY_INSTR: TStringField
      FieldName = 'CASHPAY_INSTR'
      Size = 10
    end
    object cdsBusTypeIDX_STKDLV_SOURCE_LDGTYPE: TStringField
      FieldName = 'IDX_STKDLV_SOURCE_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeIDX_STKDLV_TARGET_LDGTYPE: TStringField
      FieldName = 'IDX_STKDLV_TARGET_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeIDX_STKRCV_SOURCE_LDGTYPE: TStringField
      FieldName = 'IDX_STKRCV_SOURCE_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeIDX_STKRCV_TARGET_LDGTYPE: TStringField
      FieldName = 'IDX_STKRCV_TARGET_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeCUST_STKDLV_SOURCE_LDGTYPE: TStringField
      FieldName = 'CUST_STKDLV_SOURCE_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeCUST_STKDLV_TARGET_LDGTYPE: TStringField
      FieldName = 'CUST_STKDLV_TARGET_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeCUST_STKRCV_SOURCE_LDGTYPE: TStringField
      FieldName = 'CUST_STKRCV_SOURCE_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeCUST_STKRCV_TARGET_LDGTYPE: TStringField
      FieldName = 'CUST_STKRCV_TARGET_LDGTYPE'
      Size = 10
    end
    object cdsBusTypeIDX_STKDLV_INSTR: TStringField
      FieldName = 'IDX_STKDLV_INSTR'
      Size = 10
    end
    object cdsBusTypeIDX_STKRCV_INSTR: TStringField
      FieldName = 'IDX_STKRCV_INSTR'
      Size = 10
    end
    object cdsBusTypeCUST_STKDLV_INSTR: TStringField
      FieldName = 'CUST_STKDLV_INSTR'
      Size = 10
    end
    object cdsBusTypeCUST_STKRCV_INSTR: TStringField
      FieldName = 'CUST_STKRCV_INSTR'
      Size = 10
    end
    object cdsBusTypeOMGUSE: TStringField
      FieldName = 'OMGUSE'
      Size = 1
    end
    object cdsBusTypeOMGEXREFFCODE: TStringField
      FieldName = 'OMGEXREFFCODE'
    end
    object cdsBusTypeOMGALERT: TStringField
      FieldName = 'OMGALERT'
      Size = 1
    end
    object cdsBusTypeOMGSENDSSI: TStringField
      FieldName = 'OMGSENDSSI'
      Size = 1
    end
    object cdsBusTypeOMGSENDFEEINBLOCK: TStringField
      FieldName = 'OMGSENDFEEINBLOCK'
      Size = 1
    end
    object cdsBusTypeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBusTypeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBusTypeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBusTypeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBusTypeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBusTypeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBusTypeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBusTypeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBusTypeID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBusTypeqryBusTypeComm: TDataSetField
      FieldName = 'qryBusTypeComm'
    end
    object cdsBusTypeqryBusTypeCharge: TDataSetField
      FieldName = 'qryBusTypeCharge'
    end
  end
  object cdsBusTypeCharge: TNClientDataset
    Aggregates = <>
    DataSetField = cdsBusTypeqryBusTypeCharge
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 120
    Top = 288
    object cdsBusTypeChargeBUSTYPEID: TLargeintField
      FieldName = 'BUSTYPEID'
      Required = True
    end
    object cdsBusTypeChargeMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsBusTypeChargeCHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsBusTypeChargeISUSED: TStringField
      FieldName = 'ISUSED'
      Size = 1
    end
    object cdsBusTypeChargeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBusTypeChargeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBusTypeChargeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBusTypeChargeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBusTypeChargeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBusTypeChargeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBusTypeChargeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBusTypeChargeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBusTypeChargeID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsBusTypeComm: TNClientDataset
    Aggregates = <>
    DataSetField = cdsBusTypeqryBusTypeComm
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 208
    Top = 288
    object cdsBusTypeCommBUSTYPEID: TLargeintField
      FieldName = 'BUSTYPEID'
      Required = True
    end
    object cdsBusTypeCommMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsBusTypeCommCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Required = True
      Size = 10
    end
    object cdsBusTypeCommCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
      Required = True
    end
    object cdsBusTypeCommNET_COMMID: TLargeintField
      FieldName = 'NET_COMMID'
    end
    object cdsBusTypeCommCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsBusTypeCommUSE_DAYTRADE: TStringField
      FieldName = 'USE_DAYTRADE'
      Size = 1
    end
    object cdsBusTypeCommUSE_MINCOMM: TStringField
      FieldName = 'USE_MINCOMM'
      Size = 1
    end
    object cdsBusTypeCommWITH_SELLTAX: TStringField
      FieldName = 'WITH_SELLTAX'
      Size = 1
    end
    object cdsBusTypeCommMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBusTypeCommMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBusTypeCommAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBusTypeCommAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBusTypeCommUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBusTypeCommUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBusTypeCommNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBusTypeCommISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBusTypeCommID: TLargeintField
      FieldName = 'ID'
    end
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
    Left = 278
    Top = 99
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
end
