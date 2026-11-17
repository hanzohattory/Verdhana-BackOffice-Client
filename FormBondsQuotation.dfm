inherited frmBondsQuotation: TfrmBondsQuotation
  Caption = 'Quotation Bonds'
  ClientHeight = 298
  ClientWidth = 445
  ExplicitWidth = 451
  ExplicitHeight = 326
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 445
    Height = 208
    ExplicitWidth = 445
    ExplicitHeight = 208
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 104
      Top = 10
      DataBinding.DataField = 'TRADE_DATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [1]
      Left = 104
      Top = 37
      RepositoryItem = dmGlobal.luInstrumentBonds
      DataBinding.DataField = 'INSTRUMENT_ID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      OnExit = cxDBLookupComboBox1Exit
      Width = 121
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [2]
      Left = 104
      Top = 64
      DataBinding.DataField = 'BID_PRICE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.0000%;(#,##0.0000)%'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      OnExit = cxDBCurrencyEdit1Exit
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [3]
      Left = 104
      Top = 91
      TabStop = False
      DataBinding.DataField = 'BOTTOM_BID_PRICE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.0000%;(#,##0.0000)%'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [4]
      Left = 309
      Top = 91
      TabStop = False
      DataBinding.DataField = 'TOP_BID_PRICE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.0000%;(#,##0.0000)%'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [5]
      Left = 104
      Top = 118
      DataBinding.DataField = 'OFFER_PRICE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.0000%;(#,##0.0000)%'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      OnExit = cxDBCurrencyEdit4Exit
      Width = 121
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit [6]
      Left = 104
      Top = 145
      TabStop = False
      DataBinding.DataField = 'BOTTOM_OFFER_PRICE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.0000%;(#,##0.0000)%'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit [7]
      Left = 309
      Top = 145
      TabStop = False
      DataBinding.DataField = 'TOP_OFFER_PRICE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.0000%;(#,##0.0000)%'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBCurrencyEdit7: TcxDBCurrencyEdit [8]
      Left = 104
      Top = 172
      DataBinding.DataField = 'HARDLIMIT'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit [9]
      Left = 231
      Top = 37
      DataBinding.DataField = 'SHORTNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 199
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trade Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Instrument Code'
      Parent = dxLayoutControl1Group2
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bid Price'
      Parent = dxLayoutControl1Group2
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bottom Bid Price'
      Parent = dxLayoutControl1Group10
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Top Bid Price'
      Parent = dxLayoutControl1Group9
      Control = cxDBCurrencyEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Offer Price'
      Parent = dxLayoutControl1Group10
      Control = cxDBCurrencyEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bottom Offer Price'
      Parent = dxLayoutControl1Group8
      Control = cxDBCurrencyEdit5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Top Offer Price'
      Parent = dxLayoutControl1Group8
      Control = cxDBCurrencyEdit6
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Hard Limit'
      Parent = dxLayoutGroup1
      Control = cxDBCurrencyEdit7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'cxDBTextEdit1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group9
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 229
    Width = 445
    ExplicitTop = 229
    ExplicitWidth = 445
    inherited dbNavLog: TDBNavigator
      Hints.Strings = ()
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
    Top = 278
    Width = 445
    ExplicitTop = 278
    ExplicitWidth = 445
  end
  inherited tabEditorData: TTabSet
    Top = 208
    Width = 445
    ExplicitTop = 208
    ExplicitWidth = 445
  end
  inherited dsSubject: TDataSource
    DataSet = frmBondsQuotationList.cdsBondsQuotation
    Left = 300
    Top = 238
  end
  object cdsBondListByInstrumentID: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'INSTRUMENT_ID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryBondListByInstrumentID'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 303
    Top = 189
    object cdsBondListByInstrumentIDINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      ReadOnly = True
      Required = True
    end
    object cdsBondListByInstrumentIDINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsBondListByInstrumentIDLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsBondListByInstrumentIDMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsBondListByInstrumentIDINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsBondListByInstrumentIDSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 50
    end
    object cdsBondListByInstrumentIDLONGNAME: TStringField
      FieldName = 'LONGNAME'
      Size = 50
    end
    object cdsBondListByInstrumentIDISSUERNAME: TStringField
      FieldName = 'ISSUERNAME'
      Size = 30
    end
    object cdsBondListByInstrumentIDCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsBondListByInstrumentIDISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsBondListByInstrumentIDISINDATE: TDateTimeField
      FieldName = 'ISINDATE'
    end
    object cdsBondListByInstrumentIDMARGIN: TIntegerField
      FieldName = 'MARGIN'
    end
    object cdsBondListByInstrumentIDSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsBondListByInstrumentIDDELISTINGDATE: TDateTimeField
      FieldName = 'DELISTINGDATE'
    end
    object cdsBondListByInstrumentIDLISTINGDATE: TDateTimeField
      FieldName = 'LISTINGDATE'
    end
    object cdsBondListByInstrumentIDLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
    end
    object cdsBondListByInstrumentIDLASTCPPRICEDATE: TDateField
      FieldName = 'LASTCPPRICEDATE'
    end
    object cdsBondListByInstrumentIDSECTOR: TStringField
      FieldName = 'SECTOR'
    end
    object cdsBondListByInstrumentIDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBondListByInstrumentIDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBondListByInstrumentIDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBondListByInstrumentIDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBondListByInstrumentIDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBondListByInstrumentIDID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBondListByInstrumentIDCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 10
    end
    object cdsBondListByInstrumentIDMATURITYDATE: TDateTimeField
      FieldName = 'MATURITYDATE'
    end
    object cdsBondListByInstrumentIDRATING: TStringField
      FieldName = 'RATING'
      Size = 10
    end
    object cdsBondListByInstrumentIDREMARKS: TStringField
      FieldName = 'REMARKS'
    end
    object cdsBondListByInstrumentIDEFFECTIVEDATE: TDateTimeField
      FieldName = 'EFFECTIVEDATE'
    end
    object cdsBondListByInstrumentIDOFFERING_PERIODBEG: TDateTimeField
      FieldName = 'OFFERING_PERIODBEG'
    end
    object cdsBondListByInstrumentIDOFFERING_PERIODEND: TDateTimeField
      FieldName = 'OFFERING_PERIODEND'
    end
    object cdsBondListByInstrumentIDISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object cdsBondListByInstrumentIDNO_OFCERTIFICATES: TStringField
      FieldName = 'NO_OFCERTIFICATES'
      Size = 4
    end
    object cdsBondListByInstrumentIDLEAD_UNDERWRITER: TStringField
      FieldName = 'LEAD_UNDERWRITER'
      Size = 40
    end
    object cdsBondListByInstrumentIDSELLING_AGENT: TStringField
      FieldName = 'SELLING_AGENT'
      Size = 40
    end
    object cdsBondListByInstrumentIDTRUSTEE: TStringField
      FieldName = 'TRUSTEE'
      Size = 40
    end
    object cdsBondListByInstrumentIDCALCULATE_DAYS_METHOD: TIntegerField
      FieldName = 'CALCULATE_DAYS_METHOD'
    end
    object cdsBondListByInstrumentIDCOUPON_IN_YEAR: TIntegerField
      FieldName = 'COUPON_IN_YEAR'
    end
    object cdsBondListByInstrumentIDCOMMONCODE: TStringField
      FieldName = 'COMMONCODE'
      Size = 10
    end
    object cdsBondListByInstrumentIDDAYSOFYEAR: TIntegerField
      FieldName = 'DAYSOFYEAR'
    end
    object cdsBondListByInstrumentIDREGIONALBONDS: TIntegerField
      FieldName = 'REGIONALBONDS'
    end
    object cdsBondListByInstrumentIDCOUNTINGDAYS_METHOD: TIntegerField
      FieldName = 'COUNTINGDAYS_METHOD'
    end
    object cdsBondListByInstrumentIDACCRUEDDAYS_METHOD: TIntegerField
      FieldName = 'ACCRUEDDAYS_METHOD'
    end
    object cdsBondListByInstrumentIDDAYSPERYEAR_METHOD: TIntegerField
      FieldName = 'DAYSPERYEAR_METHOD'
    end
    object cdsBondListByInstrumentIDACCRUEDTYPE: TStringField
      FieldName = 'ACCRUEDTYPE'
      Size = 1
    end
    object cdsBondListByInstrumentIDDECDIGIT: TIntegerField
      FieldName = 'DECDIGIT'
    end
  end
end
