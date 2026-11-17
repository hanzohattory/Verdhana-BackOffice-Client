inherited frmIDXOrder: TfrmIDXOrder
  Caption = 'IDX Order'
  ClientHeight = 572
  ClientWidth = 969
  OnResize = FormResize
  ExplicitWidth = 969
  ExplicitHeight = 572
  PixelsPerInch = 96
  TextHeight = 13
  object grdTrade: TcxGrid [0]
    Left = 500
    Top = 49
    Width = 469
    Height = 236
    Align = alClient
    TabOrder = 0
    object gvwTrade: TcxGridDBBandedTableView
      PopupMenu = popTrade
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsIDXTrade
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwTradeIDXTRADEID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IDXTRADEID'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwTradeIDXORDERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IDXORDERID'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwTradeTRADEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwTradeSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwTradeBOARDCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BOARDCODE'
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwTradeMKTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MKTID'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwTradeBS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BS'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwTradeMTIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MTIME'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwTradeMQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MQTY'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwTradeLOTSIZE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LOTSIZE'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwTradeMPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MPRICE'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwTradeCPBROKER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CPBROKER'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwTradeCPDEALER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CPDEALER'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwTradeMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwTradeMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwTradeINSDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSDA'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwTradeINSUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSUI'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwTradeSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SID'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwTradeBRKREFF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BRKREFF'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwTradeALLOCQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALLOCQTY'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwTradeALLOC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALLOC'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwTradeACCINIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCINIT'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwTradeTRDMEMO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDMEMO'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwTradeACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwTradeORDSOURCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORDSOURCE'
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwTradeDEALTICKETID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEALTICKETID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwTradeACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwTradeACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwTradeINSTRUMENT_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUMENT_ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwTradeINSTRUMENT_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUMENT_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwTradeSHORTNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHORTNAME'
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
    end
    object grdTradeLevel1: TcxGridLevel
      GridView = gvwTrade
    end
  end
  object grdOrder: TcxGrid [1]
    Left = 0
    Top = 49
    Width = 500
    Height = 236
    Align = alLeft
    TabOrder = 1
    object gvwOrder: TcxGridDBBandedTableView
      PopupMenu = popOrder
      Navigator.Buttons.CustomButtons = <>
      OnFocusedRecordChanged = gvwOrderFocusedRecordChanged
      DataController.DataSource = dsIDXOrder
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwOrderORDERSOURCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORDERSOURCE'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwOrderORDERCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORDERCODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwOrderORDERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORDERDATE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwOrderACCOUNTCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCOUNTCODE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwOrderMARKETCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARKETCODE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwOrderSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwOrderBS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BS'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwOrderQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwOrderPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwOrderDEALQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEALQTY'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwOrderDEALPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEALPRICE'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwOrderSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SID'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwOrderMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwOrderMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwOrderAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwOrderAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwOrderUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwOrderUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwOrderNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwOrderISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwOrderID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gvwOrder
    end
  end
  object lcTop: TdxLayoutControl [2]
    Left = 0
    Top = 0
    Width = 969
    Height = 49
    Align = alTop
    TabOrder = 2
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
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lcTopGroup2
      CaptionOptions.Text = 'Transaction Date'
      Control = dtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcTopItem2: TdxLayoutItem
      Parent = lcTopGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcTopGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object grdMaster: TcxGrid [3]
    Left = 0
    Top = 285
    Width = 969
    Height = 287
    Align = alBottom
    TabOrder = 3
    object gvwMaster: TcxGridDBBandedTableView
      PopupMenu = popDeal
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDealTicketList
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = 'Total Quantity: #,##0'
          Kind = skSum
          FieldName = 'DEALQTY'
          Column = gvwMasterDEALQTY
        end
        item
          Format = ', Total Value: #,##0.00'
          Kind = skSum
          FieldName = 'DEALVALUE'
          Column = gvwMasterDEALVALUE
        end>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwMasterDEALTICKETCODE: TcxGridDBBandedColumn
        Caption = 'Code'
        DataBinding.FieldName = 'DEALTICKETCODE'
        Width = 104
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        Caption = 'Account No.'
        DataBinding.FieldName = 'ACCNO'
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 289
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'STOCKCODE'
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKNAME: TcxGridDBBandedColumn
        Caption = 'Stock Name'
        DataBinding.FieldName = 'STOCKNAME'
        Width = 294
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterBS: TcxGridDBBandedColumn
        Caption = 'B / S'
        DataBinding.FieldName = 'BS'
        RepositoryItem = dmGlobal.luBuySell
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterMARKETCODE: TcxGridDBBandedColumn
        Caption = 'Market'
        DataBinding.FieldName = 'MARKETCODE'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCYCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCHANNELCODE: TcxGridDBBandedColumn
        Caption = 'Channel'
        DataBinding.FieldName = 'CHANNELCODE'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterOMNIBUSTRADE: TcxGridDBBandedColumn
        Caption = 'Omnibus Trade'
        DataBinding.FieldName = 'OMNIBUSTRADE'
        RepositoryItem = dmGlobal.chkStandard
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterDEALQTY: TcxGridDBBandedColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'DEALQTY'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterDEALPRICE: TcxGridDBBandedColumn
        Caption = 'Price'
        DataBinding.FieldName = 'DEALPRICE'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterDEALVALUE: TcxGridDBBandedColumn
        Caption = 'Value'
        DataBinding.FieldName = 'DEALVALUE'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterALLOCQTY: TcxGridDBBandedColumn
        Caption = 'Allocation Quantity'
        DataBinding.FieldName = 'ALLOCQTY'
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterSALESID: TcxGridDBBandedColumn
        Caption = 'Sales'
        DataBinding.FieldName = 'SALESID'
        RepositoryItem = dmGlobal.luSales
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterDEALERID: TcxGridDBBandedColumn
        Caption = 'Dealer'
        DataBinding.FieldName = 'DEALERID'
        RepositoryItem = dmGlobal.luDealer
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterDUESTOCK: TcxGridDBBandedColumn
        Caption = 'Due Stock'
        DataBinding.FieldName = 'DUESTOCK'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterDUECASH: TcxGridDBBandedColumn
        Caption = 'Due Cash'
        DataBinding.FieldName = 'DUECASH'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STAT'
        RepositoryItem = dmGlobal.luDealTicketStat
        Width = 48
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS: TcxGridDBBandedColumn
        Caption = 'Status Reason'
        DataBinding.FieldName = 'STATUS'
        RepositoryItem = dmGlobal.luDealTicketSTATUS
        Visible = False
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterDEALTICKETDATE: TcxGridDBBandedColumn
        Caption = 'Transaction Date'
        DataBinding.FieldName = 'DEALTICKETDATE'
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterENTTCODE: TcxGridDBBandedColumn
        Caption = 'Entity Code'
        DataBinding.FieldName = 'ENTTCODE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterENTNAME: TcxGridDBBandedColumn
        Caption = 'Entity Name'
        DataBinding.FieldName = 'ENTNAME'
        Width = 265
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclIDXOrder
  end
  object aclIDXOrder: TActionList
    Left = 208
    Top = 64
    object actRefreshTrade: TNAction
      Category = 'NActions'
      Caption = 'Refresh'
      OnExecute = actRefreshTradeExecute
      CheckPermission = False
    end
    object actUploadOrder: TNAction
      Category = 'NActions'
      Caption = 'Upload Order'
      OnExecute = actUploadOrderExecute
      CheckPermission = False
    end
    object actRefreshOrder: TNAction
      Category = 'NActions'
      Caption = 'Refresh'
      OnExecute = actRefreshOrderExecute
      CheckPermission = False
    end
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actCreateDealTicket: TNAction
      Category = 'NActions'
      Caption = 'Create Deal Ticket'
      OnExecute = actCreateDealTicketExecute
      CheckPermission = False
    end
    object actAddToOrder: TNAction
      Category = 'NActions'
      Caption = 'Add Selected Trade To Order'
      OnExecute = actAddToOrderExecute
      CheckPermission = False
    end
    object actCreateDeal: TNAction
      Category = 'NActions'
      Caption = 'Create Deal Ticket'
      OnExecute = actCreateDealExecute
      CheckPermission = False
    end
    object actViewDeal: TNAction
      Category = 'NActions'
      Caption = 'View Deal Ticket'
      OnExecute = actViewDealExecute
      OnUpdate = actViewDealUpdate
      CheckPermission = False
    end
  end
  object popTrade: TPopupMenu
    Left = 688
    Top = 256
    object Refresh1: TMenuItem
      Action = actRefreshTrade
    end
    object CreateDealTicket1: TMenuItem
      Action = actAddToOrder
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'SunGard Excel File|*.xls'
    Left = 208
    Top = 176
  end
  object dsIDXTrade: TDataSource
    DataSet = cdsIDXTrade
    Left = 688
    Top = 208
  end
  object cdsIDXTrade: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRADEDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryIDXTradeByDate'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 688
    Top = 160
    object cdsIDXTradeIDXTRADEID: TStringField
      FieldName = 'IDXTRADEID'
      Required = True
      Size = 30
    end
    object cdsIDXTradeIDXORDERID: TStringField
      FieldName = 'IDXORDERID'
      Required = True
      Size = 30
    end
    object cdsIDXTradeTRADEDATE: TDateTimeField
      FieldName = 'TRADEDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIDXTradeSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Required = True
      Size = 10
    end
    object cdsIDXTradeBOARDCODE: TStringField
      FieldName = 'BOARDCODE'
      Required = True
      Size = 10
    end
    object cdsIDXTradeMKTID: TStringField
      FieldName = 'MKTID'
      Required = True
      Size = 10
    end
    object cdsIDXTradeBS: TStringField
      FieldName = 'BS'
      Size = 5
    end
    object cdsIDXTradeMTIME: TDateTimeField
      FieldName = 'MTIME'
    end
    object cdsIDXTradeMQTY: TFloatField
      FieldName = 'MQTY'
      DisplayFormat = '#,##0'
    end
    object cdsIDXTradeLOTSIZE: TFloatField
      FieldName = 'LOTSIZE'
    end
    object cdsIDXTradeMPRICE: TFloatField
      FieldName = 'MPRICE'
      DisplayFormat = '#,##0.0000'
    end
    object cdsIDXTradeCPBROKER: TStringField
      FieldName = 'CPBROKER'
      Size = 10
    end
    object cdsIDXTradeCPDEALER: TStringField
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
      FieldName = 'BRKREFF'
      Size = 25
    end
    object cdsIDXTradeALLOCQTY: TFloatField
      FieldName = 'ALLOCQTY'
    end
    object cdsIDXTradeALLOC: TStringField
      FieldName = 'ALLOC'
      Size = 1
    end
    object cdsIDXTradeACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 30
    end
    object cdsIDXTradeTRDMEMO: TStringField
      FieldName = 'TRDMEMO'
      Size = 50
    end
    object cdsIDXTradeACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsIDXTradeORDSOURCE: TStringField
      FieldName = 'ORDSOURCE'
      Size = 30
    end
    object cdsIDXTradeDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
    end
    object cdsIDXTradeACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsIDXTradeACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsIDXTradeINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      ReadOnly = True
    end
    object cdsIDXTradeINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      ReadOnly = True
    end
    object cdsIDXTradeSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsIDXTradeORDERCODE: TStringField
      FieldName = 'ORDERCODE'
      Size = 30
    end
  end
  object cdsSunGardTrade: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 384
    Top = 128
  end
  object XLS: TXLSReadWriteII5
    ComponentVersion = '6.00.20a'
    Version = xvExcel2007
    DirectRead = False
    DirectWrite = False
    Left = 384
    Top = 176
  end
  object cdsIDXOrder: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'ORDERDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryIDXOrderByDate'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 152
    object cdsIDXOrderORDERSOURCE: TStringField
      FieldName = 'ORDERSOURCE'
      Required = True
      Size = 30
    end
    object cdsIDXOrderORDERCODE: TStringField
      FieldName = 'ORDERCODE'
      Required = True
      Size = 30
    end
    object cdsIDXOrderORDERDATE: TDateField
      FieldName = 'ORDERDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIDXOrderACCOUNTCODE: TStringField
      FieldName = 'ACCOUNTCODE'
      Size = 30
    end
    object cdsIDXOrderMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsIDXOrderSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Size = 10
    end
    object cdsIDXOrderBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsIDXOrderQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0'
    end
    object cdsIDXOrderPRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '#,##0.0000'
    end
    object cdsIDXOrderDEALQTY: TFloatField
      FieldName = 'DEALQTY'
      DisplayFormat = '#,##0'
    end
    object cdsIDXOrderDEALPRICE: TFloatField
      FieldName = 'DEALPRICE'
      DisplayFormat = '#,##0.0000'
    end
    object cdsIDXOrderSID: TStringField
      FieldName = 'SID'
    end
    object cdsIDXOrderMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsIDXOrderMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsIDXOrderAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsIDXOrderAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsIDXOrderUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsIDXOrderUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsIDXOrderNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsIDXOrderISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsIDXOrderID: TLargeintField
      FieldName = 'ID'
    end
    object cdsIDXOrderDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
    end
  end
  object dsIDXOrder: TDataSource
    DataSet = cdsIDXOrder
    Left = 32
    Top = 200
  end
  object popOrder: TPopupMenu
    Left = 32
    Top = 248
    object Refresh2: TMenuItem
      Action = actRefreshOrder
    end
    object UploadSunGardOrder1: TMenuItem
      Action = actUploadOrder
    end
    object CreateDealTicket2: TMenuItem
      Action = actCreateDeal
    end
  end
  object cdsDealTicketList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'STARTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ENDDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILTERBYENTITY'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ENTTID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDealTicketList'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 64
    Top = 392
    object cdsDealTicketListDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsDealTicketListDEALTICKETCODE: TStringField
      FieldName = 'DEALTICKETCODE'
      Required = True
      Size = 30
    end
    object cdsDealTicketListDEALTICKETDATE: TDateField
      FieldName = 'DEALTICKETDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDealTicketListACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDealTicketListACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDealTicketListSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsDealTicketListSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsDealTicketListSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsDealTicketListBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsDealTicketListMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsDealTicketListCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsDealTicketListCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Size = 10
    end
    object cdsDealTicketListOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsDealTicketListDEALQTY: TLargeintField
      FieldName = 'DEALQTY'
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketListDEALPRICE: TFloatField
      FieldName = 'DEALPRICE'
      DisplayFormat = '#,##0.00'
    end
    object cdsDealTicketListDEALVALUE: TFloatField
      FieldName = 'DEALVALUE'
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketListALLOCQTY: TLargeintField
      FieldName = 'ALLOCQTY'
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketListSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsDealTicketListDEALERID: TLargeintField
      FieldName = 'DEALERID'
    end
    object cdsDealTicketListDUESTOCK: TIntegerField
      FieldName = 'DUESTOCK'
    end
    object cdsDealTicketListDUECASH: TIntegerField
      FieldName = 'DUECASH'
    end
    object cdsDealTicketListPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsDealTicketListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDealTicketListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealTicketListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDealTicketListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealTicketListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDealTicketListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDealTicketListACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsDealTicketListDAYTRADE: TStringField
      FieldName = 'DAYTRADE'
      Size = 1
    end
    object cdsDealTicketListCONID: TLargeintField
      FieldName = 'CONID'
    end
    object cdsDealTicketListSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsDealTicketListCDUEDATE: TDateField
      FieldName = 'CDUEDATE'
    end
    object cdsDealTicketListSDUEDATE: TDateField
      FieldName = 'SDUEDATE'
    end
    object cdsDealTicketListSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsDealTicketListOLD_DEALTICKETID: TLargeintField
      FieldName = 'OLD_DEALTICKETID'
    end
    object cdsDealTicketListDCCYAMT: TFloatField
      FieldName = 'DCCYAMT'
    end
    object cdsDealTicketListCNNO: TStringField
      FieldName = 'CNNO'
    end
    object cdsDealTicketListCXLD: TStringField
      FieldName = 'CXLD'
      Size = 1
    end
    object cdsDealTicketListRVSD: TStringField
      FieldName = 'RVSD'
      Size = 1
    end
    object cdsDealTicketListRVSD_DTID: TIntegerField
      FieldName = 'RVSD_DTID'
    end
    object cdsDealTicketListRVSDDATE: TDateTimeField
      FieldName = 'RVSDDATE'
    end
    object cdsDealTicketListEXTERNALID: TStringField
      FieldName = 'EXTERNALID'
    end
    object cdsDealTicketListSALES_BRANCHID: TLargeintField
      FieldName = 'SALES_BRANCHID'
    end
    object cdsDealTicketListENTTID: TIntegerField
      FieldName = 'ENTTID'
      ReadOnly = True
    end
    object cdsDealTicketListENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      ReadOnly = True
    end
    object cdsDealTicketListENTNAME: TStringField
      FieldName = 'ENTNAME'
      ReadOnly = True
      Size = 100
    end
  end
  object cdsDealTicket: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'DEALTICKETID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDealTicket'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsDealTicketAfterOpen
    BeforePost = cdsDealTicketBeforePost
    OnNewRecord = cdsDealTicketNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 168
    Top = 392
    object cdsDealTicketDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsDealTicketDEALTICKETCODE: TStringField
      FieldName = 'DEALTICKETCODE'
      Required = True
      Size = 30
    end
    object cdsDealTicketDEALTICKETDATE: TDateField
      FieldName = 'DEALTICKETDATE'
    end
    object cdsDealTicketACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDealTicketACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDealTicketSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      OnChange = cdsDealTicketSTOCKIDChange
    end
    object cdsDealTicketSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsDealTicketSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsDealTicketBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsDealTicketMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      OnChange = cdsDealTicketMARKETCODEChange
      Size = 10
    end
    object cdsDealTicketCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsDealTicketCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Size = 10
    end
    object cdsDealTicketOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsDealTicketDEALQTY: TLargeintField
      FieldName = 'DEALQTY'
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketDEALPRICE: TFloatField
      FieldName = 'DEALPRICE'
      DisplayFormat = '#,##0.########'
    end
    object cdsDealTicketDEALVALUE: TFloatField
      FieldName = 'DEALVALUE'
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketALLOCQTY: TLargeintField
      FieldName = 'ALLOCQTY'
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsDealTicketDEALERID: TLargeintField
      FieldName = 'DEALERID'
    end
    object cdsDealTicketDUESTOCK: TIntegerField
      FieldName = 'DUESTOCK'
    end
    object cdsDealTicketDUECASH: TIntegerField
      FieldName = 'DUECASH'
    end
    object cdsDealTicketPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsDealTicketMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDealTicketMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealTicketAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDealTicketAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealTicketISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDealTicketID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDealTicketqryDealTicketExec: TDataSetField
      FieldName = 'qryDealTicketExec'
    end
    object cdsDealTicketqryDealTicketAlloc: TDataSetField
      FieldName = 'qryDealTicketAlloc'
    end
    object cdsDealTicketACCID: TIntegerField
      FieldName = 'ACCID'
      OnChange = cdsDealTicketACCIDChange
    end
    object cdsDealTicketDAYTRADE: TStringField
      FieldName = 'DAYTRADE'
      Size = 1
    end
    object cdsDealTicketCONID: TLargeintField
      FieldName = 'CONID'
    end
    object cdsDealTicketSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsDealTicketCDUEDATE: TDateField
      FieldName = 'CDUEDATE'
    end
    object cdsDealTicketSDUEDATE: TDateField
      FieldName = 'SDUEDATE'
    end
    object cdsDealTicketSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsDealTicketOLD_DEALTICKETID: TLargeintField
      FieldName = 'OLD_DEALTICKETID'
    end
  end
  object cdsDealTicketExec: TNClientDataset
    Aggregates = <>
    DataSetField = cdsDealTicketqryDealTicketExec
    Params = <>
    BeforeEdit = cdsDealTicketExecBeforeEdit
    BeforePost = cdsDealTicketExecBeforePost
    BeforeDelete = cdsDealTicketExecBeforeDelete
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 264
    Top = 392
    object cdsDealTicketExecDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsDealTicketExecSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsDealTicketExecBOARDID: TLargeintField
      FieldName = 'BOARDID'
      OnChange = cdsDealTicketExecBOARDIDChange
    end
    object cdsDealTicketExecBROKERCODE: TStringField
      FieldName = 'BROKERCODE'
      OnChange = cdsDealTicketExecBROKERCODEChange
      Size = 10
    end
    object cdsDealTicketExecEXQTY: TLargeintField
      FieldName = 'EXQTY'
      OnChange = cdsDealTicketExecEXQTYChange
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketExecEXPRICE: TFloatField
      FieldName = 'EXPRICE'
      OnChange = cdsDealTicketExecEXQTYChange
      DisplayFormat = '#,##0.00'
    end
    object cdsDealTicketExecEXVALUE: TFloatField
      FieldName = 'EXVALUE'
      DisplayFormat = '#,##0.00'
    end
    object cdsDealTicketExecEXTIME: TTimeField
      FieldName = 'EXTIME'
    end
    object cdsDealTicketExecTRDID: TStringField
      FieldName = 'TRDID'
    end
    object cdsDealTicketExecMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDealTicketExecMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealTicketExecAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDealTicketExecAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealTicketExecISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDealTicketExecID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDealTicketExecCPACCID: TIntegerField
      FieldName = 'CPACCID'
    end
    object cdsDealTicketExecDUECASH: TDateTimeField
      FieldName = 'DUECASH'
    end
    object cdsDealTicketExecDUESTOCK: TDateTimeField
      FieldName = 'DUESTOCK'
    end
    object cdsDealTicketExecCPTYPE: TStringField
      FieldKind = fkLookup
      FieldName = 'CPTYPE'
      LookupDataSet = dmLookup.cdsLuBoard
      LookupKeyFields = 'BOARDID'
      LookupResultField = 'CPTYPE'
      KeyFields = 'BOARDID'
      Size = 5
      Lookup = True
    end
  end
  object cdsDealTicketAlloc: TNClientDataset
    Aggregates = <>
    DataSetField = cdsDealTicketqryDealTicketAlloc
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 368
    Top = 392
    object cdsDealTicketAllocDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsDealTicketAllocSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsDealTicketAllocACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDealTicketAllocACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDealTicketAllocAQTY: TLargeintField
      FieldName = 'AQTY'
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketAllocAPRICE: TFloatField
      FieldName = 'APRICE'
      DisplayFormat = '#,##0.########'
    end
    object cdsDealTicketAllocAVALUE: TFloatField
      FieldName = 'AVALUE'
      DisplayFormat = '#,##0.00'
    end
    object cdsDealTicketAllocMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDealTicketAllocMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealTicketAllocAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDealTicketAllocAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealTicketAllocISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDealTicketAllocID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDealTicketAllocACCID: TIntegerField
      FieldName = 'ACCID'
    end
  end
  object dsDealTicketList: TDataSource
    DataSet = cdsDealTicketList
    Left = 64
    Top = 448
  end
  object cdsIDXTradeByOrder: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'ORDERCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryIDXTradeByOrder'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 168
    Top = 440
    object cdsIDXTradeByOrderIDXTRADEID: TStringField
      FieldName = 'IDXTRADEID'
      Required = True
      Size = 30
    end
    object cdsIDXTradeByOrderIDXORDERID: TStringField
      FieldName = 'IDXORDERID'
      Required = True
      Size = 30
    end
    object cdsIDXTradeByOrderTRADEDATE: TDateTimeField
      FieldName = 'TRADEDATE'
      Required = True
    end
    object cdsIDXTradeByOrderSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Required = True
      Size = 10
    end
    object cdsIDXTradeByOrderBOARDCODE: TStringField
      FieldName = 'BOARDCODE'
      Required = True
      Size = 10
    end
    object cdsIDXTradeByOrderMKTID: TStringField
      FieldName = 'MKTID'
      Required = True
      Size = 10
    end
    object cdsIDXTradeByOrderBS: TStringField
      FieldName = 'BS'
      Size = 5
    end
    object cdsIDXTradeByOrderMTIME: TDateTimeField
      FieldName = 'MTIME'
    end
    object cdsIDXTradeByOrderMQTY: TFloatField
      FieldName = 'MQTY'
    end
    object cdsIDXTradeByOrderLOTSIZE: TFloatField
      FieldName = 'LOTSIZE'
    end
    object cdsIDXTradeByOrderMPRICE: TFloatField
      FieldName = 'MPRICE'
    end
    object cdsIDXTradeByOrderCPBROKER: TStringField
      FieldName = 'CPBROKER'
      Size = 10
    end
    object cdsIDXTradeByOrderCPDEALER: TStringField
      FieldName = 'CPDEALER'
      Size = 10
    end
    object cdsIDXTradeByOrderMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsIDXTradeByOrderMODUI: TStringField
      FieldName = 'MODUI'
    end
    object cdsIDXTradeByOrderINSDA: TDateTimeField
      FieldName = 'INSDA'
    end
    object cdsIDXTradeByOrderINSUI: TStringField
      FieldName = 'INSUI'
    end
    object cdsIDXTradeByOrderSID: TStringField
      FieldName = 'SID'
    end
    object cdsIDXTradeByOrderBRKREFF: TStringField
      FieldName = 'BRKREFF'
      Size = 25
    end
    object cdsIDXTradeByOrderALLOCQTY: TFloatField
      FieldName = 'ALLOCQTY'
    end
    object cdsIDXTradeByOrderALLOC: TStringField
      FieldName = 'ALLOC'
      Size = 1
    end
    object cdsIDXTradeByOrderACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 30
    end
    object cdsIDXTradeByOrderTRDMEMO: TStringField
      FieldName = 'TRDMEMO'
      Size = 50
    end
    object cdsIDXTradeByOrderACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsIDXTradeByOrderORDSOURCE: TStringField
      FieldName = 'ORDSOURCE'
      Size = 30
    end
    object cdsIDXTradeByOrderDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
    end
    object cdsIDXTradeByOrderORDERCODE: TStringField
      FieldName = 'ORDERCODE'
      Size = 30
    end
    object cdsIDXTradeByOrderACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsIDXTradeByOrderACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsIDXTradeByOrderINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      ReadOnly = True
    end
    object cdsIDXTradeByOrderINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      ReadOnly = True
    end
    object cdsIDXTradeByOrderSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      ReadOnly = True
      Size = 100
    end
  end
  object popDeal: TPopupMenu
    Left = 664
    Top = 488
    object ViewDealTicket1: TMenuItem
      Action = actViewDeal
    end
  end
end
