inherited frmPtbWashSale: TfrmPtbWashSale
  Caption = 'Surveilance - Wash Sale'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Buy'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Sell'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwMastertradeDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tradeDate'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasteridxTradeID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idxTradeID'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMastermtime: TcxGridDBBandedColumn
        DataBinding.FieldName = 'mtime'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterstockCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'stockCode'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMastermQTy: TcxGridDBBandedColumn
        DataBinding.FieldName = 'mQTy'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMastermPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'mPrice'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMastermValue: TcxGridDBBandedColumn
        DataBinding.FieldName = 'mValue'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasteridxOrderID_1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idxOrderID_1'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAccNo_1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccNo_1'
        Width = 90
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAccName_1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccName_1'
        Width = 250
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasteridxOrderID_2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idxOrderID_2'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAccNo_2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccNo_2'
        Width = 90
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAccName_2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccName_2'
        Width = 250
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterindicateWashSale: TcxGridDBBandedColumn
        DataBinding.FieldName = 'indicateWashSale'
        Width = 200
        Position.BandIndex = 3
        Position.ColIndex = 0
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
    DataSet = cdsBrowseMaster
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
          ItemName = 'dtStart'
        end
        item
          Visible = True
          ItemName = 'dtEnd'
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
    object dtStart: TcxBarEditItem
      Caption = 'Transaction Date'
      Category = 0
      Hint = 'Transaction Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object dtEnd: TcxBarEditItem
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
  end
  inherited ReportContainer: TNClientReportContainer
    ReportName = 'Surveillances\WashSale.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'startDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'endDate'
        ParamType = ptUnknown
      end>
  end
  object cdsBrowseMaster: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'startDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'enddate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSurveilance_qryWashSale'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsBrowseMastertradeDate: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'tradeDate'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBrowseMasteridxTradeID: TStringField
      DisplayLabel = 'IDX Trade ID'
      FieldName = 'idxTradeID'
      Size = 50
    end
    object cdsBrowseMastermtime: TDateTimeField
      DisplayLabel = 'Match Time'
      FieldName = 'mtime'
      DisplayFormat = 'hh:nn:ss.zzz'
    end
    object cdsBrowseMasterstockCode: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'stockCode'
      Size = 10
    end
    object cdsBrowseMastermQTy: TIntegerField
      DisplayLabel = 'Match Qty'
      FieldName = 'mQTy'
      DisplayFormat = '#,##0'
    end
    object cdsBrowseMastermPrice: TFloatField
      DisplayLabel = 'Match Price'
      FieldName = 'mPrice'
      DisplayFormat = '#,##0.00'
    end
    object cdsBrowseMastermValue: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'mValue'
      DisplayFormat = '#,##0.00'
    end
    object cdsBrowseMasteridxOrderID_1: TStringField
      DisplayLabel = 'IDX Order ID'
      FieldName = 'idxOrderID_1'
      Size = 50
    end
    object cdsBrowseMasterAccNo_1: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'AccNo_1'
      Size = 30
    end
    object cdsBrowseMasterAccName_1: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'AccName_1'
      Size = 200
    end
    object cdsBrowseMasteridxOrderID_2: TStringField
      DisplayLabel = 'IDX Order ID'
      FieldName = 'idxOrderID_2'
      Size = 50
    end
    object cdsBrowseMasterAccNo_2: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'AccNo_2'
      Size = 30
    end
    object cdsBrowseMasterAccName_2: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'AccName_2'
      Size = 200
    end
    object cdsBrowseMasterindicateWashSale: TStringField
      DisplayLabel = 'Indicate Wash Sale'
      FieldName = 'indicateWashSale'
      Size = 200
    end
  end
end
