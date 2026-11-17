inherited frmSInvestAutoSplitList: TfrmSInvestAutoSplitList
  Caption = 'S-Invest AutoSplit'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'Quantity'
          Column = gvwMasterQuantity
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'TradeAmount'
          Column = gvwMasterTradeAmount
        end>
      object gvwMasterTCReferenceNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TCReferenceNo'
        Width = 155
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterIMCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IMCode'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterIMName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IMName'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterFundCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FundCode'
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterFundName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FundName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSecurityCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SecurityCode'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterBuySell: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BuySell'
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Price'
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterQuantity: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Quantity'
        Width = 93
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterTradeAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TradeAmount'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterDealticketID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DealticketID'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterDealticketCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DealticketCode'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterMatched: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Matched'
        RepositoryItem = dmGlobal.chkStandard
        Width = 47
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterDTSTATUS: TcxGridDBBandedColumn
        Caption = 'Dealticket Status'
        DataBinding.FieldName = 'DTSTATUS'
        Width = 87
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actOpen'
        Permission = 'SInvest AutoSplit'
      end
      item
        ActionName = 'actGenerateSInvest'
        Permission = 'SInvest AutoSplit Generate'
      end
      item
        ActionName = 'actGenerateSInvest'
        Permission = 'SInvest Autosplit Generate'
      end
      item
        ActionName = 'actOpen'
        Permission = 'SInvest Autosplit Generate'
      end
      item
        ActionName = 'actOpen'
        Permission = 'SInvest Autosplit'
      end
      item
        ActionName = 'actGenerateSInvest'
        Permission = 'S-Invest AutoSplit Generate'
      end
      item
        ActionName = 'actOpen'
        Permission = 'S-Invest AutoSplit'
      end>
    Left = 304
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
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsSInvestAutoSplitList
  end
  inherited aclEditor: TActionList
    object actGenerateSInvest: TNAction
      Category = 'NActions'
      Caption = 'Generate SInvest'
      ImageIndex = 3
      OnExecute = actGenerateSInvestExecute
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
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
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
    object dxBarButton1: TdxBarButton
      Action = actGenerateSInvest
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object cdsSInvestAutoSplitList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TradeDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qrySInvestAutoSplitList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsSInvestAutoSplitListTCReferenceNo: TStringField
      DisplayLabel = 'TC Reference No'
      FieldName = 'TCReferenceNo'
      Size = 50
    end
    object cdsSInvestAutoSplitListIMCode: TStringField
      DisplayLabel = 'IM Code'
      FieldName = 'IMCode'
      Size = 5
    end
    object cdsSInvestAutoSplitListIMName: TStringField
      DisplayLabel = 'IM Name'
      FieldName = 'IMName'
      Size = 150
    end
    object cdsSInvestAutoSplitListFundCode: TStringField
      DisplayLabel = 'Fund Code'
      FieldName = 'FundCode'
    end
    object cdsSInvestAutoSplitListFundName: TStringField
      DisplayLabel = 'Fund Name'
      FieldName = 'FundName'
      Size = 150
    end
    object cdsSInvestAutoSplitListSecurityCode: TStringField
      DisplayLabel = 'Security Code'
      FieldName = 'SecurityCode'
    end
    object cdsSInvestAutoSplitListBuySell: TStringField
      DisplayLabel = 'Buy/Sell'
      FieldName = 'BuySell'
      Size = 1
    end
    object cdsSInvestAutoSplitListPrice: TFloatField
      FieldName = 'Price'
      DisplayFormat = '#,##0.000000'
    end
    object cdsSInvestAutoSplitListQuantity: TFloatField
      FieldName = 'Quantity'
      DisplayFormat = '#,##0'
    end
    object cdsSInvestAutoSplitListTradeAmount: TFloatField
      FieldName = 'TradeAmount'
      DisplayFormat = '#,##0.00'
    end
    object cdsSInvestAutoSplitListDealticketID: TLargeintField
      DisplayLabel = 'Dealticket ID'
      FieldName = 'DealticketID'
    end
    object cdsSInvestAutoSplitListDealticketCode: TStringField
      DisplayLabel = 'Dealticket Code'
      FieldName = 'DealticketCode'
    end
    object cdsSInvestAutoSplitListMatched: TStringField
      FieldName = 'Matched'
      Size = 1
    end
    object cdsSInvestAutoSplitListDTSTATUS: TStringField
      FieldName = 'DTSTATUS'
      Size = 10
    end
  end
end
