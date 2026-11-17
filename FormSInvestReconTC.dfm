inherited frmSInvestReconTC: TfrmSInvestReconTC
  Caption = 'S-Invest Recon TC'
  ClientHeight = 609
  ClientWidth = 1068
  ExplicitWidth = 1068
  ExplicitHeight = 609
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 52
    Width = 1068
    Height = 557
    ExplicitTop = 52
    ExplicitWidth = 1068
    ExplicitHeight = 557
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Nayaga'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'S-Invest'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwMasterCONID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSEQID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SEQID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterAccountCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Account Code'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterAccountName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Account Name'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterFundCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Fund Code'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterBuySell: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Buy/Sell'
        Width = 49
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterStockCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Stock Code'
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterNayagaDealQty: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Nayaga Deal Qty'
        Width = 88
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterNayagaGrossProceed: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Nayaga Gross Proceed'
        Width = 115
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterNayagaCommission: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Nayaga Commission'
        Width = 101
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterNayagaVAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Nayaga VAT'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterNayagaLevy: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Nayaga Levy'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterNayagaSellTax: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Nayaga Sell Tax'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterNayagaWht: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Nayaga Wht'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterNayagaNetProceed: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Nayaga Net Proceed'
        Width = 110
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterSInvestGrossProceed: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S-Invest Gross Proceed'
        Width = 119
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSInvestCommission: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S-Invest Commission'
        Width = 110
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterSInvestVAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S-Invest VAT'
        Width = 110
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterSInvestLevy: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S-Invest Levy'
        Width = 110
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterSInvestSellTax: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S-Invest Sell Tax'
        Width = 110
        Position.BandIndex = 2
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterSInvestWht: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S-Invest Wht'
        Width = 110
        Position.BandIndex = 2
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterSInvestNetProceed: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S-Invest Net Proceed'
        Width = 110
        Position.BandIndex = 2
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterDifferent: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Different'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterNayagaPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Nayaga Price'
        Width = 69
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCommissionRate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Commission Rate'
        Width = 87
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSalesPersonName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Sales Person Name'
        Visible = False
        VisibleForCustomization = False
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterSInvestTradeAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S-Invest Trade Amount'
        Width = 118
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSInvestPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S-Invest Price'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterSInvestQty: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S-Invest Qty'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterIMCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IM Code'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterSInvestOthers: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S-Invest Others'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterTradeDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Trade Date'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterSettleDate: TcxGridDBBandedColumn
        Caption = 'S-Invest Settle Date'
        DataBinding.FieldName = 'Settle Date'
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterdealticketid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'dealticketid'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
    end
  end
  inherited PrintComp: TdxComponentPrinter
    PixelsPerInch = 96
    inherited PrintCompMainGrid: TdxGridReportLink
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited popMaster: TPopupMenu
    object GenerateSelectedSInvestReconTC1: TMenuItem [5]
      Action = actSInvestReconTCSelected
    end
    object pmChangeCommission: TMenuItem [6]
      Action = actChangeCommission
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsSInvestReconTCList
  end
  inherited aclEditor: TActionList
    object actUpload: TNAction
      Category = 'NActions'
      Caption = 'Upload'
      ImageIndex = 3
      OnExecute = actUploadExecute
      CheckPermission = False
    end
    object actSInvestReconTCSelected: TNAction
      Category = 'NActions'
      Caption = 'Generate Selected S-Invest Recon TC'
      OnExecute = actSInvestReconTCSelectedExecute
      CheckPermission = False
    end
    object actChangeCommission: TNAction
      Category = 'NActions'
      Caption = 'Change Commission'
      OnExecute = actChangeCommissionExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      52
      0)
    inherited BarMBrowseBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuInsert'
        end
        item
          Visible = True
          ItemName = 'mnuEdit'
        end
        item
          Visible = True
          ItemName = 'mnuDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'edTradeDare'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuCustomFilter'
        end>
    end
    object BarMBrowseBar2: TdxBar [2]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Upload'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 26
      DockingStyle = dsTop
      FloatLeft = 933
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 328
          Visible = True
          ItemName = 'edFileName'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object edFileName: TcxBarEditItem
      Caption = 'File Name'
      Category = 0
      Hint = 'File Name'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edFileNamePropertiesButtonClick
    end
    object dxBarButton1: TdxBarButton
      Action = actUpload
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object edTradeDare: TcxBarEditItem
      Caption = 'Trade Date'
      Category = 0
      Hint = 'Trade Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
  end
  inherited SaveDlg: TSaveDialog
    DefaultExt = ''
    Filter = 'CSV File|*.csv|Excel FIle|*.xlsx|Excel97-2003|*.xls'
  end
  object cdsSInvestReconTCList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TradeDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qrySInvestReconTCList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'No'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 152
    Top = 152
    object cdsSInvestReconTCListCONID: TLargeintField
      FieldName = 'CONID'
    end
    object cdsSInvestReconTCListSEQID: TIntegerField
      FieldName = 'SEQID'
      ReadOnly = True
    end
    object cdsSInvestReconTCListAccountCode: TStringField
      FieldName = 'Account Code'
      Size = 30
    end
    object cdsSInvestReconTCListAccountName: TStringField
      FieldName = 'Account Name'
      ReadOnly = True
      Size = 150
    end
    object cdsSInvestReconTCListFundCode: TStringField
      FieldName = 'Fund Code'
      ReadOnly = True
      Size = 30
    end
    object cdsSInvestReconTCListBuySell: TStringField
      FieldName = 'Buy/Sell'
      ReadOnly = True
      Size = 4
    end
    object cdsSInvestReconTCListStockCode: TStringField
      FieldName = 'Stock Code'
      ReadOnly = True
      Size = 30
    end
    object cdsSInvestReconTCListNayagaDealQty: TFloatField
      FieldName = 'Nayaga Deal Qty'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSInvestReconTCListNayagaGrossProceed: TFloatField
      FieldName = 'Nayaga Gross Proceed'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListNayagaCommission: TFloatField
      FieldName = 'Nayaga Commission'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListNayagaVAT: TFloatField
      FieldName = 'Nayaga VAT'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListNayagaLevy: TFloatField
      FieldName = 'Nayaga Levy'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListNayagaSellTax: TFloatField
      FieldName = 'Nayaga Sell Tax'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListNayagaWht: TFloatField
      FieldName = 'Nayaga Wht'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListNayagaNetProceed: TFloatField
      FieldName = 'Nayaga Net Proceed'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListSInvestGrossProceed: TFloatField
      FieldName = 'S-Invest Gross Proceed'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListSInvestCommission: TFloatField
      FieldName = 'S-Invest Commission'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListSInvestVAT: TFloatField
      FieldName = 'S-Invest VAT'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListSInvestLevy: TFloatField
      FieldName = 'S-Invest Levy'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListSInvestSellTax: TFloatField
      FieldName = 'S-Invest Sell Tax'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListSInvestWht: TFloatField
      FieldName = 'S-Invest Wht'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListSInvestNetProceed: TFloatField
      FieldName = 'S-Invest Net Proceed'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListDifferent: TFloatField
      FieldName = 'Different'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListNayagaPrice: TFloatField
      FieldName = 'Nayaga Price'
      ReadOnly = True
      DisplayFormat = '#,##0.000000;(#,##0.000000);0.000000'
    end
    object cdsSInvestReconTCListCommissionRate: TFloatField
      FieldName = 'Commission Rate'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListSalesPersonName: TStringField
      FieldName = 'Sales Person Name'
      ReadOnly = True
      Size = 100
    end
    object cdsSInvestReconTCListSInvestTradeAmount: TFloatField
      FieldName = 'S-Invest Trade Amount'
      DisplayFormat = '#,##0.00;(#,##0.00);.0.00'
    end
    object cdsSInvestReconTCListSInvestPrice: TFloatField
      FieldName = 'S-Invest Price'
      DisplayFormat = '#,##0.000000;(#,##0.000000);0.000000'
    end
    object cdsSInvestReconTCListSInvestQty: TFloatField
      FieldName = 'S-Invest Qty'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSInvestReconTCListIMCode: TStringField
      FieldName = 'IM Code'
    end
    object cdsSInvestReconTCListSInvestOthers: TFloatField
      FieldName = 'S-Invest Others'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSInvestReconTCListTradeDate: TDateTimeField
      FieldName = 'Trade Date'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsSInvestReconTCListSettleDate: TDateTimeField
      FieldName = 'Settle Date'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsSInvestReconTCListdealticketid: TLargeintField
      FieldName = 'dealticketid'
    end
  end
  object OpenDlg: TOpenDialog
    Filter = 'Excel File|*.xlsx|Excel 97-2003|*.xls'
    Left = 440
    Top = 328
  end
  object cdsSInvestReconTC: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TradeDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qrySInvestReconTC'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = True
    AutoApplyUpdate = True
    AutoSequenceField = 'No'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 304
    Top = 152
    object cdsSInvestReconTCTA_REF_NO: TStringField
      FieldName = 'TA_REF_NO'
      Size = 30
    end
    object cdsSInvestReconTCTRADE_DATE: TDateTimeField
      FieldName = 'TRADE_DATE'
    end
    object cdsSInvestReconTCSETTLEMENT_DATE: TDateTimeField
      FieldName = 'SETTLEMENT_DATE'
    end
    object cdsSInvestReconTCIM_CODE: TStringField
      FieldName = 'IM_CODE'
      Size = 30
    end
    object cdsSInvestReconTCIM_NAME: TStringField
      FieldName = 'IM_NAME'
      Size = 500
    end
    object cdsSInvestReconTCFUND_CODE: TStringField
      FieldName = 'FUND_CODE'
      Size = 30
    end
    object cdsSInvestReconTCFUND_NAME: TStringField
      FieldName = 'FUND_NAME'
      Size = 500
    end
    object cdsSInvestReconTCSTOCK_CODE: TStringField
      FieldName = 'STOCK_CODE'
      Size = 30
    end
    object cdsSInvestReconTCSTOCK_NAME: TStringField
      FieldName = 'STOCK_NAME'
      Size = 500
    end
    object cdsSInvestReconTCBUY_SELL: TStringField
      FieldName = 'BUY_SELL'
      Size = 4
    end
    object cdsSInvestReconTCCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsSInvestReconTCPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object cdsSInvestReconTCQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsSInvestReconTCTRADE_AMT: TFloatField
      FieldName = 'TRADE_AMT'
    end
    object cdsSInvestReconTCCOMMISSION: TFloatField
      FieldName = 'COMMISSION'
    end
    object cdsSInvestReconTCSALES_TAX: TFloatField
      FieldName = 'SALES_TAX'
    end
    object cdsSInvestReconTCLEVY: TFloatField
      FieldName = 'LEVY'
    end
    object cdsSInvestReconTCVAT: TFloatField
      FieldName = 'VAT'
    end
    object cdsSInvestReconTCOTHER_CHARGES: TFloatField
      FieldName = 'OTHER_CHARGES'
    end
    object cdsSInvestReconTCGROSS_SETTLEMET_AMT: TFloatField
      FieldName = 'GROSS_SETTLEMET_AMT'
    end
    object cdsSInvestReconTCWHT_ON_COMMISSION: TFloatField
      FieldName = 'WHT_ON_COMMISSION'
    end
    object cdsSInvestReconTCNET_SETTLEMENT_AMT: TFloatField
      FieldName = 'NET_SETTLEMENT_AMT'
    end
    object cdsSInvestReconTCSETTLEMENT_TYPE: TStringField
      FieldName = 'SETTLEMENT_TYPE'
      Size = 5
    end
    object cdsSInvestReconTCREMARK: TStringField
      FieldName = 'REMARK'
      Size = 150
    end
    object cdsSInvestReconTCTAReferenceID: TStringField
      FieldName = 'TAReferenceID'
      Size = 30
    end
    object cdsSInvestReconTCCheckStatus: TStringField
      FieldName = 'CheckStatus'
      Size = 10
    end
    object cdsSInvestReconTCMatchStatus: TStringField
      FieldName = 'MatchStatus'
      Size = 10
    end
    object cdsSInvestReconTCNo: TIntegerField
      FieldName = 'No'
    end
  end
  object cdsSInvestReconTCSelect: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TradeDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ConID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SeqID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qrySInvestReconTCSelect'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 328
    Top = 352
    object cdsSInvestReconTCSelectTransactionStatus: TStringField
      FieldName = 'Transaction Status'
      ReadOnly = True
      Required = True
      Size = 4
    end
    object cdsSInvestReconTCSelectTCReferenceID: TStringField
      FieldName = 'TC Reference ID'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSInvestReconTCSelectTradeDate: TStringField
      FieldName = 'Trade Date'
      ReadOnly = True
      Size = 10
    end
    object cdsSInvestReconTCSelectSettlementDate: TStringField
      FieldName = 'Settlement Date'
      ReadOnly = True
      Size = 10
    end
    object cdsSInvestReconTCSelectBRCode: TStringField
      FieldName = 'BR Code'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object cdsSInvestReconTCSelectIMCode: TStringField
      FieldName = 'IM Code'
      Size = 30
    end
    object cdsSInvestReconTCSelectFundCode: TStringField
      FieldName = 'Fund Code'
      Size = 30
    end
    object cdsSInvestReconTCSelectSecurityCode: TStringField
      FieldName = 'Security Code'
      ReadOnly = True
      Size = 30
    end
    object cdsSInvestReconTCSelectBuySell: TStringField
      FieldName = 'Buy/Sell'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSInvestReconTCSelectPrice: TFloatField
      FieldName = 'Price'
      ReadOnly = True
    end
    object cdsSInvestReconTCSelectQuantity: TFloatField
      FieldName = 'Quantity'
      ReadOnly = True
    end
    object cdsSInvestReconTCSelectTradeAmount: TFloatField
      FieldName = 'Trade Amount'
      ReadOnly = True
    end
    object cdsSInvestReconTCSelectCommission: TFloatField
      FieldName = 'Commission'
      ReadOnly = True
    end
    object cdsSInvestReconTCSelectSalesTax: TFloatField
      FieldName = 'Sales Tax'
      ReadOnly = True
    end
    object cdsSInvestReconTCSelectlevy: TFloatField
      FieldName = 'levy'
      ReadOnly = True
    end
    object cdsSInvestReconTCSelectVAT: TFloatField
      FieldName = 'VAT'
      ReadOnly = True
    end
    object cdsSInvestReconTCSelectOtherCharges: TIntegerField
      FieldName = 'Other Charges'
      ReadOnly = True
      Required = True
    end
    object cdsSInvestReconTCSelectGrossSettlementAmount: TFloatField
      FieldName = 'Gross Settlement Amount'
      ReadOnly = True
    end
    object cdsSInvestReconTCSelectWHTonCommission: TFloatField
      FieldName = 'WHT on Commission'
      ReadOnly = True
    end
    object cdsSInvestReconTCSelectNetSettlementAmount: TFloatField
      FieldName = 'Net Settlement Amount'
      ReadOnly = True
    end
    object cdsSInvestReconTCSelectTCReferenceNo: TStringField
      FieldName = 'TC Reference No'
      ReadOnly = True
      Size = 18
    end
    object cdsSInvestReconTCSelectSecuritiesAccountNo: TStringField
      FieldName = 'Securities Account No'
      ReadOnly = True
      Size = 250
    end
    object cdsSInvestReconTCSelectAdditionalInformationifany: TStringField
      FieldName = 'Additional Information (if any)'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSInvestReconTCSelectAuthorizedPersonName: TStringField
      FieldName = 'Authorized Person Name'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSInvestReconTCSelectAuthorizedPersonPosition: TStringField
      FieldName = 'Authorized Person Position'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSInvestReconTCSelectPlaceofTradeType: TStringField
      FieldName = 'Place of Trade Type'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSInvestReconTCSelectRepoTriPartyAgent: TStringField
      FieldName = 'Repo Tri-Party Agent'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSInvestReconTCSelectCalculationAgent: TStringField
      FieldName = 'Calculation Agent'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSInvestReconTCSelectRepoRate: TStringField
      FieldName = 'Repo Rate'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSInvestReconTCSelectPurchaseLendingBorrowingDate: TStringField
      FieldName = 'Purchase/Lending-Borrowing Date'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSInvestReconTCSelectRePurchaseReturnDate: TStringField
      FieldName = 'Re-Purchase/Return Date'
      ReadOnly = True
      Required = True
      Size = 1
    end
  end
end
