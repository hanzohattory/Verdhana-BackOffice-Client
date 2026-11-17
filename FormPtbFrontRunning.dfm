inherited frmPtbFrontRunning: TfrmPtbFrontRunning
  Caption = 'Surveilance - Front Running'
  ClientWidth = 983
  ExplicitWidth = 983
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 983
    ExplicitWidth = 983
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterrowNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'rowNo'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterorderDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'orderDate'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterorderTime: TcxGridDBBandedColumn
        DataBinding.FieldName = 'orderTime'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterrelID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'relID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasteridxOrderID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'idxOrderID'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMastersidNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'sidNo'
        Width = 137
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
        Width = 100
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
      object gvwMasterstockCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'stockCode'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterbs: TcxGridDBBandedColumn
        DataBinding.FieldName = 'bs'
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasteroQty: TcxGridDBBandedColumn
        DataBinding.FieldName = 'oQty'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasteroPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'oPrice'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasteroStatus: TcxGridDBBandedColumn
        DataBinding.FieldName = 'oStatus'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterlotSize: TcxGridDBBandedColumn
        DataBinding.FieldName = 'lotSize'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasteraffil: TcxGridDBBandedColumn
        DataBinding.FieldName = 'affil'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMastersalesCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'salesCode'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMastersalesName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'salesName'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterseparator: TcxGridDBBandedColumn
        DataBinding.FieldName = 'separator'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarReport
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
    ReportName = 'Surveillances\FrontRunning.fr3'
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
        Name = 'endDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSurveilance_qryFrontRunning'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsBrowseMasterrowNo: TIntegerField
      FieldName = 'rowNo'
    end
    object cdsBrowseMasterorderDate: TDateField
      DisplayLabel = 'Order Date'
      FieldName = 'orderDate'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBrowseMasterorderTime: TTimeField
      DisplayLabel = 'Order Time'
      FieldName = 'orderTime'
      DisplayFormat = 'hh:nn:ss.zzz'
    end
    object cdsBrowseMasterrelID: TStringField
      DisplayLabel = 'Release ID'
      FieldName = 'relID'
      Size = 30
    end
    object cdsBrowseMasteridxOrderID: TStringField
      DisplayLabel = 'IDX Order ID'
      FieldName = 'idxOrderID'
      Size = 50
    end
    object cdsBrowseMastersidNo: TStringField
      DisplayLabel = 'SID No'
      FieldName = 'sidNo'
      Size = 50
    end
    object cdsBrowseMasteraccID: TIntegerField
      FieldName = 'accID'
    end
    object cdsBrowseMasteraccNo: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'accNo'
      Size = 30
    end
    object cdsBrowseMasteraccName: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'accName'
      Size = 500
    end
    object cdsBrowseMasterstockCode: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'stockCode'
      Size = 30
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
    object cdsBrowseMasteroStatus: TStringField
      DisplayLabel = 'Status'
      FieldName = 'oStatus'
      Size = 5
    end
    object cdsBrowseMasterlotSize: TIntegerField
      DisplayLabel = 'Lot Size'
      FieldName = 'lotSize'
    end
    object cdsBrowseMasteraffil: TBooleanField
      DisplayLabel = 'Affil'
      FieldName = 'affil'
    end
    object cdsBrowseMastersalesCode: TStringField
      DisplayLabel = 'Sales Code'
      FieldName = 'salesCode'
      Size = 30
    end
    object cdsBrowseMastersalesName: TStringField
      DisplayLabel = 'Sales Name'
      FieldName = 'salesName'
      Size = 500
    end
    object cdsBrowseMasterseparator: TIntegerField
      DisplayLabel = 'Separator'
      FieldName = 'separator'
    end
  end
end
