inherited frmSInvestRecon: TfrmSInvestRecon
  Caption = 'S-Invest Recon'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 52
    Height = 416
    ExplicitTop = 52
    ExplicitHeight = 416
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'Nayaga Deal Qty'
          Column = gvwMasterNayagaDealQty
        end
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'S-Invest Qty'
          Column = gvwMasterSInvestQty
        end>
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
      object gvwMasterDealDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Deal Date'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterNayagaAccountCode: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'Nayaga Account Code'
        Width = 113
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterNayagaAccountName: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'Nayaga Account Name'
        Width = 200
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterNayagaBuySell: TcxGridDBBandedColumn
        Caption = 'Buy/Sell'
        DataBinding.FieldName = 'Nayaga Buy/Sell'
        Width = 44
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterNayagaStockCode: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'Nayaga Stock Code'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterNayagaStockName: TcxGridDBBandedColumn
        Caption = 'Stock Name'
        DataBinding.FieldName = 'Nayaga Stock Name'
        Width = 200
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterNayagaDealQty: TcxGridDBBandedColumn
        Caption = 'Deal Qty'
        DataBinding.FieldName = 'Nayaga Deal Qty'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterNayagaCurrency: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'Nayaga Currency'
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterNayagaDealPrice: TcxGridDBBandedColumn
        Caption = 'Price'
        DataBinding.FieldName = 'Nayaga Deal Price'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterSInvestIMCode: TcxGridDBBandedColumn
        Caption = 'IM Code'
        DataBinding.FieldName = 'S-Invest IM Code'
        Width = 118
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSInvestIMName: TcxGridDBBandedColumn
        Caption = 'IM Name'
        DataBinding.FieldName = 'S-Invest IM Name'
        Width = 200
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterSInvestStockCode: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'S-Invest Stock Code'
        Width = 104
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSInvestStockName: TcxGridDBBandedColumn
        Caption = 'Stock Name'
        DataBinding.FieldName = 'S-Invest Stock Name'
        Width = 200
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSInvestBuySell: TcxGridDBBandedColumn
        Caption = 'Buy/Sell'
        DataBinding.FieldName = 'S-Invest Buy/Sell'
        Width = 44
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSInvestQty: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'S-Invest Qty'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterSInvestCurrency: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'S-Invest Currency'
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterSInvestPrice: TcxGridDBBandedColumn
        Caption = 'Price'
        DataBinding.FieldName = 'S-Invest Price'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 7
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
    DataSet = cdsSInvestRecon
  end
  inherited aclEditor: TActionList
    inherited actRefresh: TNAction
      Caption = 'Reload'
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
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkDifferentOnly'
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
          UserWidth = 237
          Visible = True
          ItemName = 'edSInvestFileName'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
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
    object edSInvestFileName: TcxBarEditItem
      Caption = 'S-Invest File Name'
      Category = 0
      Hint = 'S-Invest File Name'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edSInvestFileNamePropertiesButtonClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Upload'
      Category = 0
      Hint = 'Upload'
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object chkDifferentOnly: TcxBarEditItem
      Caption = 'Different Olny'
      Category = 0
      Hint = 'Different Olny'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnEditValueChanged = chkDifferentOnlyPropertiesEditValueChanged
    end
  end
  object cdsSInvestRecon: TNClientDataset
    Aggregates = <>
    Filter = '([Deal Date] is null) or ([S-Invest IM Code] is null)'
    Params = <
      item
        DataType = ftDate
        Name = 'TRADEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qrySInvestRecon'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 336
    object cdsSInvestReconDealDate: TDateField
      FieldName = 'Deal Date'
    end
    object cdsSInvestReconNayagaAccountCode: TStringField
      FieldName = 'Nayaga Account Code'
      ReadOnly = True
      Size = 30
    end
    object cdsSInvestReconNayagaAccountName: TStringField
      FieldName = 'Nayaga Account Name'
      ReadOnly = True
      Size = 100
    end
    object cdsSInvestReconNayagaBuySell: TStringField
      FieldName = 'Nayaga Buy/Sell'
      ReadOnly = True
      Size = 1
    end
    object cdsSInvestReconNayagaStockCode: TStringField
      FieldName = 'Nayaga Stock Code'
      ReadOnly = True
      Size = 30
    end
    object cdsSInvestReconNayagaStockName: TStringField
      FieldName = 'Nayaga Stock Name'
      ReadOnly = True
      Size = 150
    end
    object cdsSInvestReconNayagaDealQty: TFloatField
      FieldName = 'Nayaga Deal Qty'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSInvestReconNayagaCurrency: TStringField
      FieldName = 'Nayaga Currency'
      ReadOnly = True
      Size = 5
    end
    object cdsSInvestReconNayagaDealPrice: TFloatField
      FieldName = 'Nayaga Deal Price'
      ReadOnly = True
      DisplayFormat = '#,##0.000000;(#,##0.000000);0.000000'
    end
    object cdsSInvestReconSInvestIMCode: TStringField
      FieldName = 'S-Invest IM Code'
      ReadOnly = True
      Size = 30
    end
    object cdsSInvestReconSInvestIMName: TStringField
      FieldName = 'S-Invest IM Name'
      ReadOnly = True
      Size = 500
    end
    object cdsSInvestReconSInvestStockCode: TStringField
      FieldName = 'S-Invest Stock Code'
      ReadOnly = True
      Size = 30
    end
    object cdsSInvestReconSInvestStockName: TStringField
      FieldName = 'S-Invest Stock Name'
      ReadOnly = True
      Size = 500
    end
    object cdsSInvestReconSInvestBuySell: TStringField
      FieldName = 'S-Invest Buy/Sell'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSInvestReconSInvestQty: TFloatField
      FieldName = 'S-Invest Qty'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSInvestReconSInvestCurrency: TStringField
      FieldName = 'S-Invest Currency'
      ReadOnly = True
      Size = 5
    end
    object cdsSInvestReconSInvestPrice: TFloatField
      FieldName = 'S-Invest Price'
      ReadOnly = True
      DisplayFormat = '#,##0.000000;(#,##0.000000);0.000000'
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'CSV File|*.csv|Text File|*.txt'
    Left = 440
    Top = 328
  end
  object cdsSInvest: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMiddleOffice_qrySInvestList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 104
    Top = 336
    object cdsSInvestTRAN_STATUS: TStringField
      FieldName = 'TRAN_STATUS'
      Size = 10
    end
    object cdsSInvestTA_REF_NO: TStringField
      FieldName = 'TA_REF_NO'
      Size = 30
    end
    object cdsSInvestTRADE_DATE: TDateTimeField
      FieldName = 'TRADE_DATE'
    end
    object cdsSInvestSETTLEMENT_DATE: TDateTimeField
      FieldName = 'SETTLEMENT_DATE'
    end
    object cdsSInvestIM_CODE: TStringField
      FieldName = 'IM_CODE'
      Size = 30
    end
    object cdsSInvestIM_NAME: TStringField
      FieldName = 'IM_NAME'
      Size = 500
    end
    object cdsSInvestBR_CODE: TStringField
      FieldName = 'BR_CODE'
      Size = 30
    end
    object cdsSInvestBR_NAME: TStringField
      FieldName = 'BR_NAME'
      Size = 500
    end
    object cdsSInvestFUND_CODE: TStringField
      FieldName = 'FUND_CODE'
      Size = 30
    end
    object cdsSInvestFUND_NAME: TStringField
      FieldName = 'FUND_NAME'
      Size = 500
    end
    object cdsSInvestSTOCK_CODE: TStringField
      FieldName = 'STOCK_CODE'
      Size = 30
    end
    object cdsSInvestSTOCK_NAME: TStringField
      FieldName = 'STOCK_NAME'
      Size = 500
    end
    object cdsSInvestBUY_SELL: TStringField
      FieldName = 'BUY_SELL'
      Size = 1
    end
    object cdsSInvestCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsSInvestPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object cdsSInvestQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsSInvestTRADE_AMT: TFloatField
      FieldName = 'TRADE_AMT'
    end
    object cdsSInvestCOMMISSION: TFloatField
      FieldName = 'COMMISSION'
    end
    object cdsSInvestSALES_TAX: TFloatField
      FieldName = 'SALES_TAX'
    end
    object cdsSInvestLEVY: TFloatField
      FieldName = 'LEVY'
    end
    object cdsSInvestVAT: TFloatField
      FieldName = 'VAT'
    end
    object cdsSInvestOTHER_CHARGES: TFloatField
      FieldName = 'OTHER_CHARGES'
    end
    object cdsSInvestGROSS_SETTLEMET_AMT: TFloatField
      FieldName = 'GROSS_SETTLEMET_AMT'
    end
    object cdsSInvestWHT_ON_COMMISSION: TFloatField
      FieldName = 'WHT_ON_COMMISSION'
    end
    object cdsSInvestNET_SETTLEMENT_AMT: TFloatField
      FieldName = 'NET_SETTLEMENT_AMT'
    end
    object cdsSInvestSETTLEMENT_TYPE: TStringField
      FieldName = 'SETTLEMENT_TYPE'
      Size = 1
    end
    object cdsSInvestREMARK: TStringField
      FieldName = 'REMARK'
      Size = 500
    end
  end
end
