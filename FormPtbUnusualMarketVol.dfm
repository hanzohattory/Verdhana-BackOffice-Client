inherited frmPtbUnusualMarketVol: TfrmPtbUnusualMarketVol
  Caption = 'Surveilance - Unusual Market Volume'
  ClientWidth = 1068
  ExplicitWidth = 1068
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1068
    ExplicitWidth = 1068
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Buy Transaction'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Sell Transaction'
          Options.HoldOwnColumnsOnly = True
        end>
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
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasteraccID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'accID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasteraccNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'accNo'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasteraccName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'accName'
        Width = 350
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMastervolBuyTrans: TcxGridDBBandedColumn
        DataBinding.FieldName = 'volBuyTrans'
        OnCustomDrawCell = gvwMastervolBuyTransCustomDrawCell
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMastervalBuyTrans: TcxGridDBBandedColumn
        DataBinding.FieldName = 'valBuyTrans'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterfreqBuyTrans: TcxGridDBBandedColumn
        DataBinding.FieldName = 'freqBuyTrans'
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMastervolSellTrans: TcxGridDBBandedColumn
        DataBinding.FieldName = 'volSellTrans'
        OnCustomDrawCell = gvwMastervolSellTransCustomDrawCell
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMastervalSellTrans: TcxGridDBBandedColumn
        DataBinding.FieldName = 'valSellTrans'
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterfreqSellTrans: TcxGridDBBandedColumn
        DataBinding.FieldName = 'freqSellTrans'
        Position.BandIndex = 2
        Position.ColIndex = 2
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
    ReportName = 'Surveillances\UnusualMarketVol.fr3'
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
    ProviderName = 'dspN_dmSurveilance_qryUnusualMarket'
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
    object cdsBrowseMasteraccID: TLargeintField
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
    object cdsBrowseMastervolBuyTrans: TLargeintField
      DisplayLabel = 'Volume'
      FieldName = 'volBuyTrans'
      DisplayFormat = '#,##0'
    end
    object cdsBrowseMastervalBuyTrans: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'valBuyTrans'
      DisplayFormat = '#,##0.00'
    end
    object cdsBrowseMasterfreqBuyTrans: TIntegerField
      DisplayLabel = 'Frequency'
      FieldName = 'freqBuyTrans'
      DisplayFormat = '#,##0'
    end
    object cdsBrowseMastervolSellTrans: TLargeintField
      DisplayLabel = 'Volume'
      FieldName = 'volSellTrans'
      DisplayFormat = '#,##0'
    end
    object cdsBrowseMastervalSellTrans: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'valSellTrans'
      DisplayFormat = '#,##0.00'
    end
    object cdsBrowseMasterfreqSellTrans: TIntegerField
      DisplayLabel = 'Frequency'
      FieldName = 'freqSellTrans'
      DisplayFormat = '#,##0'
    end
  end
end
