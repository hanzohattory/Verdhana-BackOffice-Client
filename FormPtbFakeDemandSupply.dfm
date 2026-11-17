inherited frmPtbFakeDemand: TfrmPtbFakeDemand
  Caption = 'Surveilance - Fake Demand Supply'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterrowNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'rowNo'
        Visible = False
        Options.Filtering = False
        Options.Sorting = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasteraccID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'accID'
        Visible = False
        Options.Filtering = False
        Options.Sorting = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasteraccNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'accNo'
        Options.Filtering = False
        Options.Sorting = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasteraccName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'accName'
        Options.Filtering = False
        Options.Sorting = False
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterstockCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'stockCode'
        Options.Filtering = False
        Options.Sorting = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterorderDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'orderDate'
        Options.Filtering = False
        Options.Sorting = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterorderTime: TcxGridDBBandedColumn
        DataBinding.FieldName = 'orderTime'
        Options.Filtering = False
        Options.Sorting = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterbaseRelID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'baseRelID'
        Options.Filtering = False
        Options.Sorting = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterrelID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'relID'
        Options.Filtering = False
        Options.Sorting = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterbs: TcxGridDBBandedColumn
        DataBinding.FieldName = 'bs'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Buy'
            ImageIndex = 0
            Value = 'B'
          end
          item
            Description = 'Sell'
            Value = 'S'
          end>
        Options.Filtering = False
        Options.Sorting = False
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasteroQty: TcxGridDBBandedColumn
        DataBinding.FieldName = 'oQty'
        Options.Filtering = False
        Options.Sorting = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasteroPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'oPrice'
        Options.Filtering = False
        Options.Sorting = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasteroStatus: TcxGridDBBandedColumn
        DataBinding.FieldName = 'oStatus'
        Options.Filtering = False
        Options.Sorting = False
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarReport
    Actions = <
      item
        ActionName = 'actOpen'
        Permission = 'Report Fake Demand Supply'
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
    ReportName = 'Surveillances\FakeDemandSupply.fr3'
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
    ProviderName = 'dspN_dmSurveilance_qryFakeDemand'
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
    object cdsBrowseMasteraccID: TLargeintField
      DisplayLabel = 'Account ID'
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
    object cdsBrowseMasterbaseRelID: TStringField
      DisplayLabel = 'Base Release ID'
      FieldName = 'baseRelID'
      Size = 50
    end
    object cdsBrowseMasterrelID: TStringField
      DisplayLabel = 'Release ID'
      FieldName = 'relID'
      Size = 50
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
  end
end
