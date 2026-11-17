inherited frmVerdhanaOrderList: TfrmVerdhanaOrderList
  Caption = 'Verdhana Order'
  ClientHeight = 687
  ClientWidth = 1041
  ExplicitWidth = 1041
  ExplicitHeight = 687
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1041
    Height = 661
    ExplicitWidth = 1041
    inherited gvwMaster: TcxGridDBBandedTableView
      Bands = <
        item
          Caption = 'Verdhana Order'
        end>
      object gvwMasterid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
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
      object gvwMasterclientName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'clientName'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterfixInTicket: TcxGridDBBandedColumn
        DataBinding.FieldName = 'fixInTicket'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterlocalAccount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'localAccount'
        Width = 108
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterexchangeAccount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'exchangeAccount'
        Width = 125
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterclientID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'clientID'
        Width = 126
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterfundName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'fundName'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterside: TcxGridDBBandedColumn
        DataBinding.FieldName = 'side'
        Width = 54
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterbloomberg: TcxGridDBBandedColumn
        DataBinding.FieldName = 'bloomberg'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMastertradedQty: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tradedQty'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasteraveragePrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'averagePrice'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterorderInformation: TcxGridDBBandedColumn
        DataBinding.FieldName = 'orderInformation'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasteractor: TcxGridDBBandedColumn
        DataBinding.FieldName = 'actor'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterorderStatus: TcxGridDBBandedColumn
        DataBinding.FieldName = 'orderStatus'
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterclientOrderID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'clientOrderID'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterSHORTNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHORTNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'Verdhana Order'
        Description = 'Verdhana Order'
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
    DataSet = cdsVerdhanaOrderList
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
          ItemName = 'dtOrders'
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
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 227
          Visible = True
          ItemName = 'edFileName'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object dtOrders: TcxBarEditItem
      Caption = 'Order Date'
      Category = 0
      Hint = 'Order Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
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
      Properties.OnButtonClick = edFileNamePropertiesButtonClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Upload'
      Category = 0
      Hint = 'Upload'
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
  end
  object cdsVerdhanaOrderList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'orderDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryVerdhanaOrderList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsVerdhanaOrderListid: TLargeintField
      FieldName = 'id'
      ReadOnly = True
      Required = True
    end
    object cdsVerdhanaOrderListorderDate: TDateField
      DisplayLabel = 'Order Date'
      FieldName = 'orderDate'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsVerdhanaOrderListclientName: TStringField
      DisplayLabel = 'Client Name'
      FieldName = 'clientName'
      Required = True
      Size = 500
    end
    object cdsVerdhanaOrderListfixInTicket: TStringField
      DisplayLabel = 'Fix In Ticket'
      FieldName = 'fixInTicket'
      Required = True
      Size = 10
    end
    object cdsVerdhanaOrderListlocalAccount: TStringField
      DisplayLabel = 'Local Account'
      FieldName = 'localAccount'
      Size = 25
    end
    object cdsVerdhanaOrderListexchangeAccount: TStringField
      DisplayLabel = 'Exchange Account'
      FieldName = 'exchangeAccount'
      Size = 25
    end
    object cdsVerdhanaOrderListclientID: TStringField
      DisplayLabel = 'Client ID'
      FieldName = 'clientID'
      Size = 30
    end
    object cdsVerdhanaOrderListfundName: TStringField
      DisplayLabel = 'Fund Name'
      FieldName = 'fundName'
      Size = 500
    end
    object cdsVerdhanaOrderListside: TStringField
      DisplayLabel = 'Side'
      FieldName = 'side'
      Size = 5
    end
    object cdsVerdhanaOrderListbloomberg: TStringField
      DisplayLabel = 'Bloomberg'
      FieldName = 'bloomberg'
    end
    object cdsVerdhanaOrderListtradedQty: TFloatField
      DisplayLabel = 'Trade Qty'
      FieldName = 'tradedQty'
      DisplayFormat = '#,##0.00'
    end
    object cdsVerdhanaOrderListaveragePrice: TFloatField
      DisplayLabel = 'Average Price'
      FieldName = 'averagePrice'
      DisplayFormat = '#,##0.00'
    end
    object cdsVerdhanaOrderListorderInformation: TStringField
      DisplayLabel = 'Order Information'
      FieldName = 'orderInformation'
    end
    object cdsVerdhanaOrderListactor: TStringField
      DisplayLabel = 'Actor'
      FieldName = 'actor'
      Size = 100
    end
    object cdsVerdhanaOrderListorderStatus: TStringField
      DisplayLabel = 'Order Status'
      FieldName = 'orderStatus'
      Size = 10
    end
    object cdsVerdhanaOrderListclientOrderID: TStringField
      DisplayLabel = 'Cient Order ID'
      FieldName = 'clientOrderID'
      Size = 150
    end
    object cdsVerdhanaOrderListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsVerdhanaOrderListSHORTNAME: TStringField
      DisplayLabel = 'Stock Name'
      FieldName = 'SHORTNAME'
      ReadOnly = True
      Size = 100
    end
  end
  object cdsUploadOrders: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMiddleOffice_qryUploadVerdhanaOrder'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 344
    object cdsUploadOrdersorderDate: TDateField
      FieldName = 'orderDate'
    end
    object cdsUploadOrdersclientName: TStringField
      FieldName = 'clientName'
      Required = True
      Size = 500
    end
    object cdsUploadOrdersfixInTicket: TStringField
      FieldName = 'fixInTicket'
      Required = True
      Size = 10
    end
    object cdsUploadOrderslocalAccount: TStringField
      FieldName = 'localAccount'
      Size = 25
    end
    object cdsUploadOrdersexchangeAccount: TStringField
      FieldName = 'exchangeAccount'
      Size = 25
    end
    object cdsUploadOrdersclientID: TStringField
      FieldName = 'clientID'
      Size = 30
    end
    object cdsUploadOrdersfundName: TStringField
      FieldName = 'fundName'
      Size = 500
    end
    object cdsUploadOrdersside: TStringField
      FieldName = 'side'
      Size = 5
    end
    object cdsUploadOrdersbloomberg: TStringField
      FieldName = 'bloomberg'
    end
    object cdsUploadOrderstradedQty: TFloatField
      FieldName = 'tradedQty'
    end
    object cdsUploadOrdersaveragePrice: TFloatField
      FieldName = 'averagePrice'
    end
    object cdsUploadOrdersorderInformation: TStringField
      FieldName = 'orderInformation'
    end
    object cdsUploadOrdersactor: TStringField
      FieldName = 'actor'
      Size = 100
    end
    object cdsUploadOrdersorderStatus: TStringField
      FieldName = 'orderStatus'
      Size = 10
    end
    object cdsUploadOrdersclientOrderID: TStringField
      FieldName = 'clientOrderID'
      Size = 150
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel File|*.xlsx|Excel File 93-2003|*.xls'
    Left = 440
    Top = 344
  end
end
