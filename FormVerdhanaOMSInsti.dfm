inherited frmVerdhanaOMSInsti: TfrmVerdhanaOMSInsti
  Caption = 'Data OMS Verdana Institution'
  ClientHeight = 599
  ClientWidth = 946
  ExplicitWidth = 946
  ExplicitHeight = 599
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 946
    Height = 342
    LevelTabs.Style = 9
    RootLevelOptions.DetailTabsPosition = dtpTop
    RootLevelOptions.TabsForEmptyDetails = False
    ExplicitWidth = 946
    ExplicitHeight = 342
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterORDERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORDERDATE'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterMARKETID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARKETID'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCLIENTORDERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLIENTORDERID'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterMARKETORDERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARKETORDERID'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterIDXORDERNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IDXORDERNO'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterBOARDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BOARDID'
        Width = 35
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterBROKERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BROKERID'
        Width = 51
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterLATETRADEFLAG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LATETRADEFLAG'
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterBUYSELL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BUYSELL'
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterCLIENTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLIENTID'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterDONEPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DONEPRICE'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterVOLUME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOLUME'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterSHORTNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHORTNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      Caption = 'Order Reguler'
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 376
    Width = 946
    Height = 223
    Align = alBottom
    PopupMenu = PopupMenu
    TabOrder = 5
    object gvwExecs: TcxGridDBBandedTableView
      PopupMenu = PopupMenu
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsOrderExec
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Count : #,##0'
          Kind = skCount
          FieldName = 'ORDERDATE'
          Column = gvwExecsORDERDATE
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'VOLUME'
          Column = gvwExecsVOLUME
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
          Caption = 'Order Trade Execution'
        end>
      object gvwExecsID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwExecsORDERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORDERDATE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwExecsMARKETID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARKETID'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwExecsCLIENTORDERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLIENTORDERID'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwExecsMARKETORDERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARKETORDERID'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwExecsIDXORDERNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IDXORDERNO'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwExecsBOARDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BOARDID'
        Width = 48
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwExecsBROKERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BROKERID'
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwExecsLATETRADEFLAG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LATETRADEFLAG'
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwExecsBUYSELL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BUYSELL'
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwExecsSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwExecsCLIENTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLIENTID'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwExecsDONEPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DONEPRICE'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwExecsVOLUME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOLUME'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwExecsMARKETTRADERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARKETTRADERID'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwExecsCOUNTERPARTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COUNTERPARTY'
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwExecsACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwExecsSHORTNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHORTNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwExecsSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwExecs
    end
  end
  object cxSplitter1: TcxSplitter [2]
    Left = 0
    Top = 368
    Width = 946
    Height = 8
    HotZoneClassName = 'TcxSimpleStyle'
    ExplicitTop = 329
  end
  object cxGrid2: TcxGrid [3]
    Left = 0
    Top = 26
    Width = 946
    Height = 342
    Align = alClient
    TabOrder = 7
    OnEnter = grdMasterEnter
    object cxGridDBBandedTableView1: TcxGridDBBandedTableView
      PopupMenu = popMaster
      OnKeyDown = gvwMasterKeyDown
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Enabled = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Enabled = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = True
      Navigator.InfoPanel.Visible = True
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCustomDrawCell = gvwMasterCustomDrawCell
      DataController.DataSource = dsBrowseMaster
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Count : #,##0'
          Kind = skCount
          FieldName = 'orderDate'
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'orderVolume'
          Column = cxGridDBBandedTableView1orderVolume
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
          Caption = 'Verdhana Order'
        end>
      object cxGridDBBandedTableView1id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedTableView1orderDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'orderDate'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedTableView1marketID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'marketID'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedTableView1marketOrderID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'marketOrderID'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedTableView1boardID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'boardID'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedTableView1brokerID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'brokerID'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGridDBBandedTableView1bs: TcxGridDBBandedColumn
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
        Width = 51
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGridDBBandedTableView1stockID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'stockID'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGridDBBandedTableView1clientID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'clientID'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGridDBBandedTableView1orderPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'orderPrice'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGridDBBandedTableView1orderVolume: TcxGridDBBandedColumn
        DataBinding.FieldName = 'orderVolume'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxGridDBBandedTableView1dayTrade: TcxGridDBBandedColumn
        DataBinding.FieldName = 'dayTrade'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxGridDBBandedTableView1ACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGridDBBandedTableView1SHORTNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHORTNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBBandedTableView1
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actUploadOrderRG'
        Permission = 'Verdhana OMS Institution Uploader'
      end
      item
        ActionName = 'actUploadExec'
        Permission = 'Verdhana OMS Institution Uploader'
      end
      item
        ActionName = 'actUploadOrderNG'
        Permission = 'Verdhana OMS Institution Uploader'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Verdhana OMS Institution Uploader'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Verdhana OMS Institution Viewer'
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
    OnPopup = popMasterPopup
    object N1: TMenuItem [9]
      Caption = '-'
    end
    object UploadOrderRegular1: TMenuItem [10]
      Action = actUploadOrder
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsVerdhanaOrderList
  end
  inherited aclEditor: TActionList
    object actUploadOrder: TNAction
      Category = 'NActions'
      Caption = 'Upload Order'
      Visible = False
      OnExecute = actUploadOrderExecute
      CheckPermission = True
    end
    object actUploadExec: TNAction
      Category = 'NActions'
      Caption = 'Upload Trade Execution'
      OnExecute = actUploadExecExecute
      CheckPermission = True
    end
    object actGenrateDealTicket: TNAction
      Category = 'NActions'
      Caption = 'Generate Deal Ticket'
      OnExecute = actGenrateDealTicketExecute
      CheckPermission = False
    end
    object actUpdateDealTicketExecManual: TNAction
      Category = 'NActions'
      Caption = 'Update Deal Ticket Execution Manual'
      OnExecute = actUpdateDealTicketExecManualExecute
      CheckPermission = False
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
          ItemName = 'dtOrder'
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
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end>
    end
    object dtOrder: TcxBarEditItem
      Caption = 'Order Date'
      Category = 0
      Hint = 'Order Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object dxBarButton1: TdxBarButton
      Action = actGenrateDealTicket
      Category = 0
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton4: TdxBarButton
      Action = actUpdateDealTicketExecManual
      Category = 0
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
    end
  end
  object cdsOrderExec: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'orderDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryVerdhanaExecs'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 304
    Top = 464
    object cdsOrderExecORDERDATE: TDateTimeField
      DisplayLabel = 'Order Date'
      FieldName = 'ORDERDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsOrderExecMARKETID: TStringField
      DisplayLabel = 'Market ID'
      FieldName = 'MARKETID'
      Size = 10
    end
    object cdsOrderExecCLIENTORDERID: TStringField
      DisplayLabel = 'Client Order ID'
      FieldName = 'CLIENTORDERID'
      Size = 30
    end
    object cdsOrderExecMARKETORDERID: TStringField
      DisplayLabel = 'Market Order ID'
      FieldName = 'MARKETORDERID'
      Size = 30
    end
    object cdsOrderExecIDXORDERNO: TStringField
      DisplayLabel = 'IDX Order No'
      FieldName = 'IDXORDERNO'
      Size = 30
    end
    object cdsOrderExecBOARDID: TStringField
      DisplayLabel = 'Board ID'
      FieldName = 'BOARDID'
      Size = 5
    end
    object cdsOrderExecBROKERID: TStringField
      DisplayLabel = 'Broker Code'
      FieldName = 'BROKERID'
      Size = 2
    end
    object cdsOrderExecLATETRADEFLAG: TStringField
      DisplayLabel = 'Late Trade Flag'
      FieldName = 'LATETRADEFLAG'
      Size = 5
    end
    object cdsOrderExecBUYSELL: TStringField
      DisplayLabel = 'Buy/Sell'
      FieldName = 'BUYSELL'
      Size = 1
    end
    object cdsOrderExecSTOCKID: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKID'
    end
    object cdsOrderExecCLIENTID: TStringField
      DisplayLabel = 'Client Code'
      FieldName = 'CLIENTID'
    end
    object cdsOrderExecDONEPRICE: TFloatField
      DisplayLabel = 'Done Price'
      FieldName = 'DONEPRICE'
      DisplayFormat = '#,##0.00'
    end
    object cdsOrderExecVOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      DisplayFormat = '#,##0'
    end
    object cdsOrderExecMARKETTRADERID: TStringField
      DisplayLabel = 'Market TradeID'
      FieldName = 'MARKETTRADERID'
      Size = 30
    end
    object cdsOrderExecCOUNTERPARTY: TIntegerField
      DisplayLabel = 'Counter Party'
      FieldName = 'COUNTERPARTY'
    end
    object cdsOrderExecACCNAME: TStringField
      DisplayLabel = 'Customer Name'
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsOrderExecSHORTNAME: TStringField
      DisplayLabel = 'Stock Name'
      FieldName = 'SHORTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsOrderExecID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object cdsOrderExecSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      Size = 1
    end
  end
  object dsOrderExec: TDataSource
    DataSet = cdsOrderExec
    Left = 304
    Top = 512
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.csv'
    Filter = 
      'Comma Separated Values|*.csv|Excel 93-2003|*.xls|Excel File|*.xl' +
      'sx'
    Left = 440
    Top = 168
  end
  object PopupMenu: TPopupMenu
    Left = 392
    Top = 488
    object UploadTradeExecution1: TMenuItem
      Action = actUploadExec
    end
  end
  object cdsUploadExec: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'orderDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryUploadVerdhanaExec'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 480
    Top = 472
    object cdsUploadExecORDERDATE: TDateTimeField
      FieldName = 'ORDERDATE'
    end
    object cdsUploadExecMARKETID: TStringField
      FieldName = 'MARKETID'
      Size = 10
    end
    object cdsUploadExecCLIENTORDERID: TStringField
      FieldName = 'CLIENTORDERID'
      Size = 30
    end
    object cdsUploadExecMARKETORDERID: TStringField
      FieldName = 'MARKETORDERID'
      Size = 30
    end
    object cdsUploadExecIDXORDERNO: TStringField
      FieldName = 'IDXORDERNO'
      Size = 30
    end
    object cdsUploadExecBOARDID: TStringField
      FieldName = 'BOARDID'
      Size = 5
    end
    object cdsUploadExecBROKERID: TStringField
      FieldName = 'BROKERID'
      Size = 2
    end
    object cdsUploadExecLATETRADEFLAG: TStringField
      FieldName = 'LATETRADEFLAG'
      Size = 5
    end
    object cdsUploadExecBUYSELL: TStringField
      FieldName = 'BUYSELL'
      Size = 1
    end
    object cdsUploadExecSTOCKID: TStringField
      FieldName = 'STOCKID'
    end
    object cdsUploadExecCLIENTID: TStringField
      FieldName = 'CLIENTID'
    end
    object cdsUploadExecDONEPRICE: TFloatField
      FieldName = 'DONEPRICE'
    end
    object cdsUploadExecVOLUME: TFloatField
      FieldName = 'VOLUME'
    end
    object cdsUploadExecMARKETTRADERID: TStringField
      FieldName = 'MARKETTRADERID'
      Size = 30
    end
    object cdsUploadExecCOUNTERPARTY: TIntegerField
      FieldName = 'COUNTERPARTY'
    end
    object cdsUploadExecSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
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
    Left = 96
    Top = 160
    object cdsUploadOrdersorderDate: TDateField
      FieldName = 'orderDate'
      Required = True
    end
    object cdsUploadOrdersmarketID: TStringField
      FieldName = 'marketID'
      Required = True
      Size = 10
    end
    object cdsUploadOrdersmarketOrderID: TIntegerField
      FieldName = 'marketOrderID'
    end
    object cdsUploadOrdersboardID: TStringField
      FieldName = 'boardID'
      Size = 5
    end
    object cdsUploadOrdersbrokerID: TStringField
      FieldName = 'brokerID'
      Size = 5
    end
    object cdsUploadOrdersbs: TStringField
      FieldName = 'bs'
      Size = 5
    end
    object cdsUploadOrdersstockID: TStringField
      FieldName = 'stockID'
      Size = 10
    end
    object cdsUploadOrdersclientID: TStringField
      FieldName = 'clientID'
    end
    object cdsUploadOrdersorderPrice: TFloatField
      FieldName = 'orderPrice'
    end
    object cdsUploadOrdersorderVolume: TFloatField
      FieldName = 'orderVolume'
    end
    object cdsUploadOrdersdayTrade: TFloatField
      FieldName = 'dayTrade'
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
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsVerdhanaOrderListmarketID: TStringField
      DisplayLabel = 'Market ID'
      FieldName = 'marketID'
      Required = True
      Size = 10
    end
    object cdsVerdhanaOrderListmarketOrderID: TIntegerField
      DisplayLabel = 'Market Order ID'
      FieldName = 'marketOrderID'
    end
    object cdsVerdhanaOrderListboardID: TStringField
      DisplayLabel = 'Board ID'
      FieldName = 'boardID'
      Size = 5
    end
    object cdsVerdhanaOrderListbrokerID: TStringField
      DisplayLabel = 'Broker ID'
      FieldName = 'brokerID'
    end
    object cdsVerdhanaOrderListbs: TStringField
      DisplayLabel = 'Buy/Sell'
      FieldName = 'bs'
      Size = 5
    end
    object cdsVerdhanaOrderListstockID: TStringField
      DisplayLabel = 'Stock ID'
      FieldName = 'stockID'
      Size = 10
    end
    object cdsVerdhanaOrderListclientID: TStringField
      DisplayLabel = 'Client ID'
      FieldName = 'clientID'
    end
    object cdsVerdhanaOrderListorderPrice: TFloatField
      DisplayLabel = 'Order Price'
      FieldName = 'orderPrice'
      DisplayFormat = '#,##0.00000;(#,##0.00000);0.00000'
    end
    object cdsVerdhanaOrderListorderVolume: TFloatField
      DisplayLabel = 'Order Volume'
      FieldName = 'orderVolume'
      DisplayFormat = '#,##0'
    end
    object cdsVerdhanaOrderListdayTrade: TFloatField
      DisplayLabel = 'Day Trade'
      FieldName = 'dayTrade'
    end
    object cdsVerdhanaOrderListACCNAME: TStringField
      DisplayLabel = 'Client Name'
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
end
