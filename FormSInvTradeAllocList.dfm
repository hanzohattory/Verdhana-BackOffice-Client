inherited frmSInvTradeAllocList: TfrmSInvTradeAllocList
  Caption = 'S-Invest Trade Allocation'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 52
    Height = 416
    ExplicitTop = 52
    ExplicitHeight = 416
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterTransactionStatus: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Transaction Status'
        Width = 96
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterTAReferenceID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TA Reference ID'
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterTAReferenceNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TA Reference No'
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterTradeDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Trade Date'
        Width = 60
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
      object gvwMasterIMCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IM Code'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterBRCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BR Code'
        Width = 47
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterFundCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Fund Code'
        Width = 138
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterSecurityCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Security Code'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterBuySell: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Buy/Sell'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Buy'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = 'Sell'
            Value = '2'
          end>
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Price'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterQuantity: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Quantity'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterTradeAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Trade Amount'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterCommission: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Commission'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterSalesTax: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Sales Tax'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterLevy: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Levy'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterVAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterOtherCharges: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Other Charges'
        Width = 77
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterGrossSettlementAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Gross Settlement Amount'
        Width = 128
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterWHTonCommission: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WHT on Commission'
        Width = 102
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterNetSettlementAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Net Settlement Amount'
        Width = 118
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterSettlementType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Settlement Type'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterRemarks: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Remarks'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterCancellationReason: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Cancellation Reason '
        Width = 106
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterResponseCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Response Code'
        Position.BandIndex = 0
        Position.ColIndex = 24
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
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsSInvTradeAlloc
  end
  inherited aclEditor: TActionList
    object actGenerateFile: TNAction
      Category = 'NActions'
      Caption = 'Generate File'
      ImageIndex = 9
      OnExecute = actGenerateFileExecute
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
    object BarMBrowseBar2: TdxBar [2]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 26
      DockingStyle = dsTop
      FloatLeft = 939
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 316
          Visible = True
          ItemName = 'edTradeAllocFile'
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
    object dtTrade: TcxBarEditItem
      Caption = 'Trade Date'
      Category = 0
      Hint = 'Trade Date'
      Visible = ivAlways
      OnKeyPress = dtTradeKeyPress
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnCloseUp = dtTradePropertiesCloseUp
    end
    object edTradeAllocFile: TcxBarEditItem
      Caption = 'S-Invest Trade Allocation File'
      Category = 0
      Hint = 'S-Invest Trade Allocation File'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edTradeAllocFilePropertiesButtonClick
    end
    object dxBarButton1: TdxBarButton
      Action = actGenerateFile
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object cdsSInvTradeAlloc: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRADEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSInvest_qrySInvTA'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsSInvTradeAllocTransactionStatus: TStringField
      FieldName = 'Transaction Status'
      Required = True
      Size = 4
    end
    object cdsSInvTradeAllocTAReferenceID: TStringField
      FieldName = 'TA Reference ID'
    end
    object cdsSInvTradeAllocTAReferenceNo: TStringField
      FieldName = 'TA Reference No'
      Required = True
    end
    object cdsSInvTradeAllocTradeDate: TStringField
      FieldName = 'Trade Date'
      Required = True
      Size = 8
    end
    object cdsSInvTradeAllocSettlementDate: TStringField
      FieldName = 'Settlement Date'
      Required = True
      Size = 8
    end
    object cdsSInvTradeAllocIMCode: TStringField
      FieldName = 'IM Code'
      Required = True
      Size = 10
    end
    object cdsSInvTradeAllocBRCode: TStringField
      FieldName = 'BR Code'
      Required = True
      Size = 5
    end
    object cdsSInvTradeAllocFundCode: TStringField
      FieldName = 'Fund Code'
      Required = True
      Size = 100
    end
    object cdsSInvTradeAllocSecurityCode: TStringField
      FieldName = 'Security Code'
      Required = True
      Size = 35
    end
    object cdsSInvTradeAllocBuySell: TIntegerField
      FieldName = 'Buy/Sell'
      Required = True
    end
    object cdsSInvTradeAllocPrice: TFloatField
      FieldName = 'Price'
      Required = True
      DisplayFormat = '#,##0.######'
    end
    object cdsSInvTradeAllocQuantity: TFloatField
      FieldName = 'Quantity'
      Required = True
    end
    object cdsSInvTradeAllocTradeAmount: TFloatField
      FieldName = 'Trade Amount'
      Required = True
      DisplayFormat = '#,##0.##'
    end
    object cdsSInvTradeAllocCommission: TFloatField
      FieldName = 'Commission'
      Required = True
      DisplayFormat = '#,##0.##'
    end
    object cdsSInvTradeAllocSalesTax: TFloatField
      FieldName = 'Sales Tax'
      Required = True
      DisplayFormat = '#,##0.##'
    end
    object cdsSInvTradeAllocLevy: TFloatField
      FieldName = 'Levy'
      Required = True
      DisplayFormat = '#,##0.##'
    end
    object cdsSInvTradeAllocVAT: TFloatField
      FieldName = 'VAT'
      Required = True
      DisplayFormat = '#,##0.##'
    end
    object cdsSInvTradeAllocOtherCharges: TFloatField
      FieldName = 'Other Charges'
    end
    object cdsSInvTradeAllocGrossSettlementAmount: TFloatField
      FieldName = 'Gross Settlement Amount'
      Required = True
      DisplayFormat = '#,##0.##'
    end
    object cdsSInvTradeAllocWHTonCommission: TFloatField
      FieldName = 'WHT on Commission'
      Required = True
      DisplayFormat = '#,##0.##'
    end
    object cdsSInvTradeAllocNetSettlementAmount: TFloatField
      FieldName = 'Net Settlement Amount'
      Required = True
      DisplayFormat = '#,##0.##'
    end
    object cdsSInvTradeAllocSettlementType: TIntegerField
      FieldName = 'Settlement Type'
      Required = True
    end
    object cdsSInvTradeAllocRemarks: TMemoField
      FieldName = 'Remarks'
      BlobType = ftMemo
    end
    object cdsSInvTradeAllocCancellationReason: TMemoField
      FieldName = 'Cancellation Reason '
      BlobType = ftMemo
    end
    object cdsSInvTradeAllocResponseCode: TStringField
      FieldName = 'Response Code'
      Required = True
      Size = 30
    end
  end
  object odTradeAlloc: TOpenDialog
    Left = 216
    Top = 328
  end
  object cdsSInvTA: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRADEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSInvest_qrySInvTA'
    RemoteServer = dmGlobal.dspConnection
    OnReconcileError = cdsSInvTAReconcileError
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 336
    object cdsSInvTATransactionStatus: TStringField
      FieldName = 'Transaction Status'
      Required = True
      Size = 4
    end
    object cdsSInvTATAReferenceID: TStringField
      FieldName = 'TA Reference ID'
    end
    object cdsSInvTATAReferenceNo: TStringField
      FieldName = 'TA Reference No'
      Required = True
    end
    object cdsSInvTATradeDate: TStringField
      FieldName = 'Trade Date'
      Required = True
      Size = 8
    end
    object cdsSInvTASettlementDate: TStringField
      FieldName = 'Settlement Date'
      Required = True
      Size = 8
    end
    object cdsSInvTAIMCode: TStringField
      FieldName = 'IM Code'
      Required = True
      Size = 10
    end
    object cdsSInvTABRCode: TStringField
      FieldName = 'BR Code'
      Required = True
      Size = 5
    end
    object cdsSInvTAFundCode: TStringField
      FieldName = 'Fund Code'
      Required = True
      Size = 100
    end
    object cdsSInvTASecurityCode: TStringField
      FieldName = 'Security Code'
      Required = True
      Size = 35
    end
    object cdsSInvTABuySell: TIntegerField
      FieldName = 'Buy/Sell'
      Required = True
    end
    object cdsSInvTAPrice: TFloatField
      FieldName = 'Price'
      Required = True
    end
    object cdsSInvTAQuantity: TFloatField
      FieldName = 'Quantity'
      Required = True
    end
    object cdsSInvTATradeAmount: TFloatField
      FieldName = 'Trade Amount'
      Required = True
    end
    object cdsSInvTACommission: TFloatField
      FieldName = 'Commission'
      Required = True
    end
    object cdsSInvTASalesTax: TFloatField
      FieldName = 'Sales Tax'
      Required = True
    end
    object cdsSInvTALevy: TFloatField
      FieldName = 'Levy'
      Required = True
    end
    object cdsSInvTAVAT: TFloatField
      FieldName = 'VAT'
      Required = True
    end
    object cdsSInvTAOtherCharges: TFloatField
      FieldName = 'Other Charges'
    end
    object cdsSInvTAGrossSettlementAmount: TFloatField
      FieldName = 'Gross Settlement Amount'
      Required = True
    end
    object cdsSInvTAWHTonCommission: TFloatField
      FieldName = 'WHT on Commission'
      Required = True
    end
    object cdsSInvTANetSettlementAmount: TFloatField
      FieldName = 'Net Settlement Amount'
      Required = True
    end
    object cdsSInvTASettlementType: TIntegerField
      FieldName = 'Settlement Type'
      Required = True
    end
    object cdsSInvTARemarks: TMemoField
      FieldName = 'Remarks'
      BlobType = ftMemo
    end
    object cdsSInvTACancellationReason: TMemoField
      FieldName = 'Cancellation Reason '
      BlobType = ftMemo
    end
    object cdsSInvTAResponseCode: TStringField
      FieldName = 'Response Code'
      Required = True
      Size = 30
    end
  end
end
