inherited frmPtbMarkingTheClose: TfrmPtbMarkingTheClose
  Caption = 'Surveilance - Marking The Close'
  ClientWidth = 1215
  ExplicitWidth = 1215
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1215
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterorderDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'orderDate'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterorderTime: TcxGridDBBandedColumn
        DataBinding.FieldName = 'orderTime'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasteridxOrderID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idxOrderID'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterrelID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'relID'
        Visible = False
        VisibleForCustomization = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasteridxTradeID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idxTradeID'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMastermatchTime: TcxGridDBBandedColumn
        DataBinding.FieldName = 'matchTime'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasteraccID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'accID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasteraccNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'accNo'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasteraccName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'accName'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMastersidNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'sidNo'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterstockCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'stockCode'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterboardCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'boardCode'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterbs: TcxGridDBBandedColumn
        DataBinding.FieldName = 'bs'
        RepositoryItem = dmGlobal.luBuySell
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasteroQty: TcxGridDBBandedColumn
        DataBinding.FieldName = 'oQty'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasteroPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'oPrice'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMastermQty: TcxGridDBBandedColumn
        DataBinding.FieldName = 'mQty'
        Visible = False
        VisibleForCustomization = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMastermPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'mPrice'
        Visible = False
        VisibleForCustomization = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMastercpBrokerCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'cpBrokerCode'
        Visible = False
        VisibleForCustomization = False
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMastervalue: TcxGridDBBandedColumn
        DataBinding.FieldName = 'value'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 18
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
    ReportName = 'Surveillances\MarkingTheClose.fr3'
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
    ProviderName = 'dspN_dmSurveilance_qryMarkingTheClose'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsBrowseMasterCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsBrowseMasterorderDate: TDateField
      DisplayLabel = 'Order Date'
      FieldName = 'orderDate'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBrowseMasterorderTime: TDateTimeField
      DisplayLabel = 'Order Time'
      FieldName = 'orderTime'
      DisplayFormat = 'hh:nn:ss.zzz'
    end
    object cdsBrowseMasteridxOrderID: TStringField
      DisplayLabel = 'IDX Order ID'
      FieldName = 'idxOrderID'
      Size = 50
    end
    object cdsBrowseMasterrelID: TStringField
      DisplayLabel = 'Release ID'
      FieldName = 'relID'
      Size = 50
    end
    object cdsBrowseMasteridxTradeID: TStringField
      DisplayLabel = 'IDX Trade ID'
      FieldName = 'idxTradeID'
      Size = 50
    end
    object cdsBrowseMastermatchTime: TDateTimeField
      DisplayLabel = 'Match Time'
      FieldName = 'matchTime'
      DisplayFormat = 'hh:nn:ss.zzz'
    end
    object cdsBrowseMasteraccID: TIntegerField
      FieldName = 'accID'
    end
    object cdsBrowseMasteraccNo: TStringField
      DisplayLabel = 'Account No.'
      FieldName = 'accNo'
      Size = 30
    end
    object cdsBrowseMasteraccName: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'accName'
      Size = 500
    end
    object cdsBrowseMastersidNo: TStringField
      DisplayLabel = 'SID No'
      FieldName = 'sidNo'
      Size = 50
    end
    object cdsBrowseMasterstockCode: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'stockCode'
      Size = 30
    end
    object cdsBrowseMasterboardCode: TStringField
      DisplayLabel = 'Board'
      FieldName = 'boardCode'
      Size = 5
    end
    object cdsBrowseMasterbs: TStringField
      DisplayLabel = 'Buy/Sell'
      FieldName = 'bs'
      Size = 1
    end
    object cdsBrowseMasteroQty: TIntegerField
      DisplayLabel = 'Order Qty'
      FieldName = 'oQty'
      DisplayFormat = '#,##0'
    end
    object cdsBrowseMasteroPrice: TFloatField
      DisplayLabel = 'Order Price'
      FieldName = 'oPrice'
      DisplayFormat = '#,##0.00'
    end
    object cdsBrowseMastermQty: TIntegerField
      DisplayLabel = 'Match Qty'
      FieldName = 'mQty'
      DisplayFormat = '#,##0'
    end
    object cdsBrowseMastermPrice: TFloatField
      DisplayLabel = 'Match Price'
      FieldName = 'mPrice'
      DisplayFormat = 'hh:nn:ss.zzz'
    end
    object cdsBrowseMastercpBrokerCode: TStringField
      DisplayLabel = 'CP Broker Code'
      FieldName = 'cpBrokerCode'
      Size = 10
    end
    object cdsBrowseMastervalue: TFloatField
      DisplayLabel = 'Value'
      FieldKind = fkCalculated
      FieldName = 'value'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
end
