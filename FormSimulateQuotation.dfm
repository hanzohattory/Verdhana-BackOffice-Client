inherited frmSimulateQuotation: TfrmSimulateQuotation
  Caption = 'Simulate Quotation'
  ClientHeight = 287
  ClientWidth = 435
  ExplicitWidth = 441
  ExplicitHeight = 316
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 435
    Height = 238
    ExplicitWidth = 660
    ExplicitHeight = 289
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 98
      Top = 10
      TabStop = False
      DataBinding.DataField = 'INSTRUMENT_CODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 98
      Top = 37
      TabStop = False
      DataBinding.DataField = 'SHORTNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 323
    end
    object cxDBDateEdit1: TcxDBDateEdit [2]
      Left = 98
      Top = 64
      DataBinding.DataField = 'TRADE_DATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      OnExit = cxDBDateEdit1Exit
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [3]
      Left = 296
      Top = 64
      TabStop = False
      DataBinding.DataField = 'MATURITYDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [4]
      Left = 98
      Top = 91
      TabStop = False
      DataBinding.DataField = 'INTERESTRATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [5]
      Left = 98
      Top = 118
      DataBinding.DataField = 'BID_PRICE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.DisplayFormat = '#,##0.0000 %'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      OnExit = cxDBCurrencyEdit2Exit
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [6]
      Left = 98
      Top = 145
      TabStop = False
      DataBinding.DataField = 'HARDLIMIT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [7]
      Left = 98
      Top = 172
      TabStop = False
      DataBinding.DataField = 'YIELDBUY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.DisplayFormat = '#,##0.0000 %'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 121
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit [8]
      Left = 98
      Top = 199
      TabStop = False
      DataBinding.DataField = 'YIELDSELL'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.DisplayFormat = '#,##0.0000 %'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 121
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit [9]
      Left = 296
      Top = 118
      DataBinding.DataField = 'OFFER_PRICE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.DisplayFormat = '#,##0.0000 %'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      OnExit = cxDBCurrencyEdit6Exit
      Width = 121
    end
    object txtYTMBuy: TcxCurrencyEdit [10]
      Left = 296
      Top = 172
      TabStop = False
      ParentColor = True
      ParentFont = False
      Properties.DecimalPlaces = 4
      Properties.DisplayFormat = '#,##0.0000%'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 121
    end
    object txtYTMSell: TcxCurrencyEdit [11]
      Left = 296
      Top = 199
      TabStop = False
      ParentColor = True
      ParentFont = False
      Properties.DecimalPlaces = 4
      Properties.DisplayFormat = '#,##0.0000%'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 121
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Instrument Code'
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Instrument Name'
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settlement Date'
      Parent = LayoutControlGroup8
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Maturity Date'
      Parent = LayoutControlGroup8
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Coupon Rate'
      Parent = LayoutControlGroup4
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bid Price'
      Parent = LayoutControlGroup2
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Nominal Value'
      Parent = LayoutControlGroup_Root
      Control = cxDBCurrencyEdit3
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutControlItem8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Old YTM Buy'
      Parent = LayoutControlGroup6
      Control = cxDBCurrencyEdit4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Old YTM Sell'
      Parent = LayoutControlGroup7
      Control = cxDBCurrencyEdit5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Offer Price'
      Parent = LayoutControlGroup2
      Control = cxDBCurrencyEdit6
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object LayoutControlGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LayoutControlItem15: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'New YTM Buy'
      Parent = LayoutControlGroup6
      Control = txtYTMBuy
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object LayoutControlItem16: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'New YTM Sell'
      Parent = LayoutControlGroup7
      Control = txtYTMSell
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
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
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 238
    Width = 435
    ExplicitTop = 289
    ExplicitWidth = 660
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
    DataSet = frmBondsQuotationList.cdsCalcYTM
    Left = 742
    Top = 303
  end
  object dsDetailInstrumentBonds: TDataSource
    DataSet = cdsDetailInstrumentBonds
    Left = 369
    Top = 75
  end
  object cdsDetailInstrumentBonds: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'INSTRUMENT_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'COUPONDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryDetailInstrumentBonds'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 336
    Top = 141
    object cdsDetailInstrumentBondsINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsDetailInstrumentBondsINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      ReadOnly = True
      Required = True
    end
    object cdsDetailInstrumentBondsSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsDetailInstrumentBondsMATURITYDATE: TDateTimeField
      FieldName = 'MATURITYDATE'
      ReadOnly = True
    end
    object cdsDetailInstrumentBondsCCY: TStringField
      FieldName = 'CCY'
      ReadOnly = True
      Size = 5
    end
    object cdsDetailInstrumentBondsCALCULATE_DAYS_METHOD: TIntegerField
      FieldName = 'CALCULATE_DAYS_METHOD'
      ReadOnly = True
    end
    object cdsDetailInstrumentBondsCOUNTINGDAYS_METHOD: TIntegerField
      FieldName = 'COUNTINGDAYS_METHOD'
      ReadOnly = True
    end
    object cdsDetailInstrumentBondsDAYSOFYEAR: TIntegerField
      FieldName = 'DAYSOFYEAR'
      ReadOnly = True
    end
    object cdsDetailInstrumentBondsCOUPON_IN_YEAR: TIntegerField
      FieldName = 'COUPON_IN_YEAR'
      ReadOnly = True
    end
    object cdsDetailInstrumentBondsMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cdsDetailInstrumentBondsLASTCOUPONDATE: TDateTimeField
      FieldName = 'LASTCOUPONDATE'
      ReadOnly = True
    end
    object cdsDetailInstrumentBondsNEXTCOUPONDATE: TDateTimeField
      FieldName = 'NEXTCOUPONDATE'
      ReadOnly = True
    end
    object cdsDetailInstrumentBondsINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
      ReadOnly = True
    end
  end
end
