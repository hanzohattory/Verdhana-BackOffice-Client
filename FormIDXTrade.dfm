inherited frmIDXTrade: TfrmIDXTrade
  Caption = 'FO Daily Trade'
  ClientHeight = 355
  ClientWidth = 898
  ExplicitWidth = 898
  ExplicitHeight = 355
  TextHeight = 13
  object grdMaster: TcxGrid [0]
    Left = 0
    Top = 49
    Width = 898
    Height = 306
    Align = alClient
    TabOrder = 0
    object gvwMaster: TcxGridDBBandedTableView
      PopupMenu = popGrid
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsIDXTrade
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Record Count: #,##0'
          Kind = skCount
          FieldName = 'IDXTRADEID'
          Column = gvwMasterIDXTRADEID
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwMasterIDXTRADEID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IDXTRADEID'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterIDXORDERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IDXORDERID'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterTRADEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterBOARDCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BOARDCODE'
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterMKTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MKTID'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterBS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BS'
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterMTIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MTIME'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterMQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MQTY'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterLOTSIZE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LOTSIZE'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterMPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MPRICE'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCPBROKER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CPBROKER'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterCPDEALER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CPDEALER'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterINSDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterINSUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SID'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterBRKREFF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BRKREFF'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterALLOCQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALLOCQTY'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterALLOC: TcxGridDBBandedColumn
        Caption = 'Allocation'
        DataBinding.FieldName = 'ALLOC'
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterACCINIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCINIT'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterTRDMEMO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDMEMO'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterORDSOURCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORDSOURCE'
        RepositoryItem = dmGlobal.luOrderSource
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterDEALTICKETID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEALTICKETID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUMENT_ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUMENT_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterSHORTNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHORTNAME'
        Width = 179
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterORDERCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORDERCODE'
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterISGENERATED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISGENERATED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterCHANNELCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHANNELCODE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterEXTREF_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXTREF_CODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterACCSOPID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCSOPID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwMasterDAYTRADE: TcxGridDBBandedColumn
        Caption = 'Day Trade'
        DataBinding.FieldName = 'DAYTRADE'
        RepositoryItem = dmGlobal.chkStandard
        Width = 56
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 898
    Height = 49
    Align = alTop
    TabOrder = 1
    object dtTransDate: TcxDateEdit
      Left = 97
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    object cxButton1: TcxButton
      Left = 223
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Transaction Date'
      Control = dtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited popDocking: TPopupMenu
    Left = 378
    Top = 61
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclIDXTrade
  end
  object dsIDXTrade: TDataSource
    DataSet = cdsIDXTrade
    Left = 296
    Top = 176
  end
  object cdsIDXTrade: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRADEDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryIDXTrade'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 293
    Top = 128
    object cdsIDXTradeIDXTRADEID: TStringField
      DisplayLabel = 'IDX Trade ID'
      FieldName = 'IDXTRADEID'
      Required = True
      Size = 30
    end
    object cdsIDXTradeIDXORDERID: TStringField
      DisplayLabel = 'IDX Order ID'
      FieldName = 'IDXORDERID'
      Required = True
      Size = 30
    end
    object cdsIDXTradeTRADEDATE: TDateTimeField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRADEDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIDXTradeSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      DisplayWidth = 20
      FieldName = 'STOCKCODE'
      Required = True
    end
    object cdsIDXTradeBOARDCODE: TStringField
      DisplayLabel = 'Board Code'
      FieldName = 'BOARDCODE'
      Required = True
      Size = 10
    end
    object cdsIDXTradeMKTID: TStringField
      DisplayLabel = 'Market ID'
      FieldName = 'MKTID'
      Required = True
      Size = 10
    end
    object cdsIDXTradeBS: TStringField
      DisplayLabel = 'Buy/Sell'
      FieldName = 'BS'
      Size = 5
    end
    object cdsIDXTradeMTIME: TDateTimeField
      DisplayLabel = 'Match Time'
      FieldName = 'MTIME'
      DisplayFormat = 'hh:nn:ss'
    end
    object cdsIDXTradeMQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'MQTY'
      DisplayFormat = '#,##0'
    end
    object cdsIDXTradeLOTSIZE: TFloatField
      DisplayLabel = 'Lot Size'
      FieldName = 'LOTSIZE'
      DisplayFormat = '#,##0'
    end
    object cdsIDXTradeMPRICE: TFloatField
      DisplayLabel = 'Price'
      FieldName = 'MPRICE'
      DisplayFormat = '#,##0'
    end
    object cdsIDXTradeCPBROKER: TStringField
      DisplayLabel = 'Broker'
      FieldName = 'CPBROKER'
      Size = 10
    end
    object cdsIDXTradeCPDEALER: TStringField
      DisplayLabel = 'Dealer'
      FieldName = 'CPDEALER'
      Size = 10
    end
    object cdsIDXTradeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsIDXTradeMODUI: TStringField
      FieldName = 'MODUI'
    end
    object cdsIDXTradeINSDA: TDateTimeField
      FieldName = 'INSDA'
    end
    object cdsIDXTradeINSUI: TStringField
      FieldName = 'INSUI'
    end
    object cdsIDXTradeSID: TStringField
      FieldName = 'SID'
    end
    object cdsIDXTradeBRKREFF: TStringField
      DisplayLabel = 'Broker Reff'
      FieldName = 'BRKREFF'
      Size = 25
    end
    object cdsIDXTradeALLOCQTY: TFloatField
      DisplayLabel = 'Allocation Qty'
      FieldName = 'ALLOCQTY'
    end
    object cdsIDXTradeALLOC: TStringField
      FieldName = 'ALLOC'
      Size = 1
    end
    object cdsIDXTradeACCINIT: TStringField
      DisplayLabel = 'Account Initial'
      FieldName = 'ACCINIT'
      Size = 30
    end
    object cdsIDXTradeTRDMEMO: TStringField
      DisplayLabel = 'Trade Memo'
      FieldName = 'TRDMEMO'
      Size = 50
    end
    object cdsIDXTradeACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsIDXTradeORDSOURCE: TStringField
      DisplayLabel = 'Order Source'
      FieldName = 'ORDSOURCE'
      Size = 30
    end
    object cdsIDXTradeDEALTICKETID: TLargeintField
      DisplayLabel = 'Deal Ticket ID'
      FieldName = 'DEALTICKETID'
    end
    object cdsIDXTradeACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsIDXTradeACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsIDXTradeINSTRUMENT_ID: TLargeintField
      DisplayLabel = 'Stock ID'
      FieldName = 'INSTRUMENT_ID'
      ReadOnly = True
    end
    object cdsIDXTradeINSTRUMENT_CODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'INSTRUMENT_CODE'
      ReadOnly = True
    end
    object cdsIDXTradeSHORTNAME: TStringField
      DisplayLabel = 'Stock Name'
      FieldName = 'SHORTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsIDXTradeORDERCODE: TStringField
      DisplayLabel = 'Order Code'
      FieldName = 'ORDERCODE'
      Size = 30
    end
    object cdsIDXTradeISGENERATED: TStringField
      DisplayLabel = 'Deal Ticket Generated'
      FieldName = 'ISGENERATED'
      Size = 1
    end
    object cdsIDXTradeCHANNELCODE: TStringField
      DisplayLabel = 'Channel'
      FieldName = 'CHANNELCODE'
      Size = 10
    end
    object cdsIDXTradeID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object cdsIDXTradeEXTREF_CODE: TStringField
      FieldName = 'EXTREF_CODE'
      Size = 30
    end
    object cdsIDXTradeACCSOPID: TIntegerField
      FieldName = 'ACCSOPID'
    end
    object cdsIDXTradeDAYTRADE: TBooleanField
      FieldName = 'DAYTRADE'
    end
  end
  object aclIDXTrade: TActionList
    Left = 208
    Top = 64
    object actRefresh: TNAction
      Category = 'NActions'
      Caption = 'Refresh'
      CheckPermission = False
    end
    object actUpdateFromSungard: TNAction
      Category = 'NActions'
      Caption = 'Update SunGard Trade'
      OnExecute = actUpdateFromSungardExecute
      CheckPermission = False
    end
    object actGenerateAllDealTicket: TNAction
      Category = 'NActions'
      Caption = 'Generate All Deal Ticket'
      OnExecute = actGenerateAllDealTicketExecute
      CheckPermission = False
    end
    object actUpdateAccount: TNAction
      Category = 'NActions'
      Caption = 'Update Account'
      OnExecute = actUpdateAccountExecute
      CheckPermission = False
    end
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actGenerateSelectedDealTicket: TNAction
      Category = 'NActions'
      Caption = 'Generate Selected Deal Ticket'
      OnExecute = actGenerateSelectedDealTicketExecute
      CheckPermission = False
    end
    object actSaveAsDTEFormat: TNAction
      Category = 'NActions'
      Caption = 'Save As DTE Format'
      OnExecute = actSaveAsDTEFormatExecute
      CheckPermission = False
      ActionLog = dmGlobal.ActionLog
    end
    object actClearIDXAllTrade: TNAction
      Category = 'NActions'
      Caption = 'Clear Data'
      OnExecute = actClearIDXAllTradeExecute
      CheckPermission = False
    end
  end
  object popGrid: TPopupMenu
    Left = 208
    Top = 128
    object Refresh1: TMenuItem
      Action = actRefresh
    end
    object UpdateSunguardTrade1: TMenuItem
      Action = actUpdateFromSungard
    end
    object UpdateAccount1: TMenuItem
      Action = actUpdateAccount
    end
    object GenerateDealTicket1: TMenuItem
      Action = actGenerateAllDealTicket
    end
    object ClearData1: TMenuItem
      Action = actClearIDXAllTrade
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object SaveAsDTEFormat1: TMenuItem
      Action = actSaveAsDTEFormat
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'SunGard Excel File|*.xls'
    Left = 208
    Top = 176
  end
  object cdsSunGardTrade: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMiddleOffice_qrySungardAllTrade'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 384
    Top = 128
    object cdsSunGardTradeNumCac2: TFloatField
      FieldName = 'NumCac2'
    end
    object cdsSunGardTradeClientreference: TWideStringField
      FieldName = 'Client reference'
      Size = 255
    end
    object cdsSunGardTradeUserid: TFloatField
      FieldName = 'User id'
    end
    object cdsSunGardTradeHour: TDateTimeField
      FieldName = 'Hour'
    end
    object cdsSunGardTradeBuySell: TWideStringField
      FieldName = 'Buy/Sell'
      Size = 255
    end
    object cdsSunGardTradeSymbol: TWideStringField
      FieldName = 'Symbol'
      Size = 255
    end
    object cdsSunGardTradeQuantity: TFloatField
      FieldName = 'Quantity'
    end
    object cdsSunGardTradePrice: TFloatField
      FieldName = 'Price'
    end
    object cdsSunGardTradeQuantityremaining: TFloatField
      FieldName = 'Quantity remaining'
    end
    object cdsSunGardTradeStatus: TWideStringField
      FieldName = 'Status'
      Size = 255
    end
    object cdsSunGardTradeResponsetype: TWideStringField
      FieldName = 'Response type'
      Size = 255
    end
    object cdsSunGardTradeFirmID: TStringField
      FieldName = 'Firm ID'
    end
    object cdsSunGardTradeMemo: TWideStringField
      FieldName = 'Memo'
      Size = 255
    end
    object cdsSunGardTradeParentOrderId: TWideStringField
      FieldName = 'Parent Order Id'
      Size = 255
    end
    object cdsSunGardTradeID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
  end
  object dbfDTE: TDbf
    FilePath = 'D:\kerjaan\Habib\DTE\'
    IndexDefs = <>
    TableName = 'DTBDX170412.dbf'
    TableLevel = 3
    Left = 384
    Top = 224
    object dbfDTETRX_CODE: TIntegerField
      FieldName = 'TRX_CODE'
    end
    object dbfDTETRX_POST: TSmallintField
      FieldName = 'TRX_POST'
    end
    object dbfDTETRX_NOTE: TStringField
      FieldName = 'TRX_NOTE'
      Size = 30
    end
    object dbfDTETRX_SESS: TFloatField
      FieldName = 'TRX_SESS'
    end
    object dbfDTETRX_TYPE: TStringField
      FieldName = 'TRX_TYPE'
      Size = 2
    end
    object dbfDTEBRK_COD2: TStringField
      FieldName = 'BRK_COD2'
      Size = 5
    end
    object dbfDTEINV_TYP2: TStringField
      FieldName = 'INV_TYP2'
      Size = 1
    end
    object dbfDTEBRK_COD1: TStringField
      FieldName = 'BRK_COD1'
      Size = 5
    end
    object dbfDTEINV_TYP1: TStringField
      FieldName = 'INV_TYP1'
      Size = 1
    end
    object dbfDTESTK_CODE: TStringField
      FieldName = 'STK_CODE'
      Size = 7
    end
    object dbfDTESTK_VOLM: TFloatField
      FieldName = 'STK_VOLM'
    end
    object dbfDTESTK_PRIC: TFloatField
      FieldName = 'STK_PRIC'
    end
    object dbfDTETRX_DATE: TDateField
      FieldName = 'TRX_DATE'
    end
    object dbfDTETRX_ORD2: TIntegerField
      FieldName = 'TRX_ORD2'
    end
    object dbfDTETRX_ORD1: TIntegerField
      FieldName = 'TRX_ORD1'
    end
    object dbfDTETRX_REF2: TStringField
      FieldName = 'TRX_REF2'
    end
    object dbfDTETRX_REF1: TStringField
      FieldName = 'TRX_REF1'
    end
    object dbfDTETRX_KOPUR: TFloatField
      FieldName = 'TRX_KOPUR'
    end
    object dbfDTETRX_TIME: TStringField
      FieldName = 'TRX_TIME'
      Size = 8
    end
    object dbfDTETRX_USER: TStringField
      FieldName = 'TRX_USER'
      Size = 10
    end
    object dbfDTETRADING_ID: TStringField
      FieldName = 'TRADING_ID'
      Size = 6
    end
  end
  object SaveDialog: TSaveDialog
    Filter = 'DTE File|*.dbf'
    Left = 296
    Top = 224
  end
end
