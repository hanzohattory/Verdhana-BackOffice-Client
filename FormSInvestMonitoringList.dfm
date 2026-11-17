inherited frmSInvestMonitoringList: TfrmSInvestMonitoringList
  Caption = 'SInvest Monitoring'
  ClientHeight = 465
  ClientWidth = 1038
  ExplicitWidth = 1038
  ExplicitHeight = 465
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1038
    Height = 439
    ExplicitWidth = 1038
    ExplicitHeight = 439
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsSelection.InvertSelect = True
      object gvwMasterCONID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterDEALTICKETID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEALTICKETID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterDealticketNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Dealticket No'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterTradeDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Trade Date'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSettlementDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Settlement Date'
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterBRCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BR Code'
        Width = 47
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterBRName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BR Name'
        Width = 267
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterIMCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IM Code'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterIMName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IM Name'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterFundCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Fund Code'
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterFundName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Fund Name'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterSecurityCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Security Code'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterSecurityName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Security Name'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterBuySell: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Buy/Sell'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Price'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterQuantity: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Quantity'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterBrokerFee: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Broker Fee'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterVAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterIDXLevy: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IDX Levy'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterVATLevy: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT Levy'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterKPEI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KPEI'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterSalesTax: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Sales Tax'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterWHT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WHT'
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterCurrency: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Currency'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterNetAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Net Amount'
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterAccountCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Account Code'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actGenerateTradeConfirmTxt'
        Permission = 'SInvest Monitoring Generate Confirm txt'
      end
      item
        ActionName = 'actGenerateTradeConfirmCsv'
        Permission = 'SInvest Monitoring Generate Confirm csv'
      end
      item
        ActionName = 'actGenerateTradeDetailTxt'
        Permission = 'SInvest Monitoring Generate Detail txt'
      end
      item
        ActionName = 'actGenerateTradeDetailCsv'
        Permission = 'SInvest Monitoring Generate Detail csv'
      end>
    Left = 288
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
    object GenerateTradeDetail1: TMenuItem [6]
      Caption = 'Generate Trade Detail'
      object GenerateTradeDetailtxt1: TMenuItem
        Action = actGenerateTradeDetailTxt
      end
      object GenerateTradeDetailcsv1: TMenuItem
        Action = actGenerateTradeDetailCsv
      end
    end
    object GenerateTradeConfirmation1: TMenuItem [7]
      Caption = 'Generate Trade Confirmation'
      object GenerateTradeConfirmationtxt1: TMenuItem
        Action = actGenerateTradeConfirmTxt
      end
      object GenerateTradeConfirmationcsv1: TMenuItem
        Action = actGenerateTradeConfirmCsv
      end
    end
    object N1: TMenuItem [8]
      Caption = '-'
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsSInvestMonitoringList
  end
  inherited aclEditor: TActionList
    object actGenerateTradeConfirmTxt: TNAction
      Category = 'NActions'
      Caption = 'Generate Trade Confirmation (txt)'
      OnExecute = actGenerateTradeConfirmTxtExecute
      CheckPermission = True
    end
    object actGenerateTradeConfirmCsv: TNAction
      Category = 'NActions'
      Caption = 'Generate Trade Confirmation (csv)'
      OnExecute = actGenerateTradeConfirmCsvExecute
      CheckPermission = True
    end
    object actGenerateTradeDetailTxt: TNAction
      Category = 'NActions'
      Caption = 'Generate Trade Detail (txt)'
      OnExecute = actGenerateTradeDetailTxtExecute
      CheckPermission = True
    end
    object actGenerateTradeDetailCsv: TNAction
      Category = 'NActions'
      Caption = 'Generate Trade Detail (csv)'
      OnExecute = actGenerateTradeDetailCsvExecute
      CheckPermission = True
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
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
          ItemName = 'dtTrade'
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
    object dtTrade: TcxBarEditItem
      Caption = 'Trade Date'
      Category = 0
      Hint = 'Trade Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
  end
  object cdsSInvestMonitoringList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TradeDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSInvest_qrySInvestMonitoring'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsSInvestMonitoringListCONID: TLargeintField
      FieldName = 'CONID'
    end
    object cdsSInvestMonitoringListDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
    end
    object cdsSInvestMonitoringListDealticketNo: TStringField
      FieldName = 'Dealticket No'
    end
    object cdsSInvestMonitoringListTradeDate: TDateField
      FieldName = 'Trade Date'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsSInvestMonitoringListSettlementDate: TDateField
      FieldName = 'Settlement Date'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsSInvestMonitoringListBRCode: TStringField
      FieldName = 'BR Code'
      Size = 5
    end
    object cdsSInvestMonitoringListBRName: TStringField
      FieldName = 'BR Name'
      Size = 100
    end
    object cdsSInvestMonitoringListIMCode: TStringField
      FieldName = 'IM Code'
      Size = 10
    end
    object cdsSInvestMonitoringListIMName: TStringField
      FieldName = 'IM Name'
      Size = 100
    end
    object cdsSInvestMonitoringListFundCode: TStringField
      FieldName = 'Fund Code'
    end
    object cdsSInvestMonitoringListFundName: TStringField
      FieldName = 'Fund Name'
      Size = 150
    end
    object cdsSInvestMonitoringListSecurityCode: TStringField
      FieldName = 'Security Code'
    end
    object cdsSInvestMonitoringListSecurityName: TStringField
      FieldName = 'Security Name'
      Size = 150
    end
    object cdsSInvestMonitoringListBuySell: TIntegerField
      FieldName = 'Buy/Sell'
      OnGetText = cdsSInvestMonitoringListBuySellGetText
    end
    object cdsSInvestMonitoringListPrice: TFloatField
      FieldName = 'Price'
      DisplayFormat = '#,##0.000000'
    end
    object cdsSInvestMonitoringListQuantity: TFloatField
      FieldName = 'Quantity'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSInvestMonitoringListBrokerFee: TFloatField
      FieldName = 'Broker Fee'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSInvestMonitoringListVAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00;(#,##0.00);.0.00'
    end
    object cdsSInvestMonitoringListIDXLevy: TFloatField
      FieldName = 'IDX Levy'
      DisplayFormat = '#,##0.00;(#,##0.00);.0.00'
    end
    object cdsSInvestMonitoringListVATLevy: TFloatField
      FieldName = 'VAT Levy'
      DisplayFormat = '#,##0.00;(#,##0.00);.0.00'
    end
    object cdsSInvestMonitoringListKPEI: TFloatField
      FieldName = 'KPEI'
      DisplayFormat = '#,##0.00;(#,##0.00);.0.00'
    end
    object cdsSInvestMonitoringListSalesTax: TFloatField
      FieldName = 'Sales Tax'
      DisplayFormat = '#,##0.00;(#,##0.00);.0.00'
    end
    object cdsSInvestMonitoringListWHT: TFloatField
      FieldName = 'WHT'
      DisplayFormat = '#,##0.00;(#,##0.00);.0.00'
    end
    object cdsSInvestMonitoringListCurrency: TStringField
      FieldName = 'Currency'
      Size = 5
    end
    object cdsSInvestMonitoringListNetAmount: TFloatField
      FieldName = 'Net Amount'
      DisplayFormat = '#,##0.00;(#,##0.00);.0.00'
    end
    object cdsSInvestMonitoringListAccountCode: TStringField
      FieldName = 'Account Code'
    end
  end
end
