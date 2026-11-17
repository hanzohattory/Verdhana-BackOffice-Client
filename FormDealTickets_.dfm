inherited frmDealTickets: TfrmDealTickets
  HelpContext = 108
  Caption = 'Deal Ticket'
  ClientHeight = 543
  ClientWidth = 944
  ExplicitLeft = 8
  ExplicitWidth = 944
  ExplicitHeight = 543
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 101
    Width = 944
    ExplicitTop = 101
    ExplicitWidth = 944
    inherited gvwMaster: TcxGridDBBandedTableView
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
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'DEALQTY'
          Column = gvwMasterDEALQTY
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'DEALVALUE'
          Column = gvwMasterDEALVALUE
        end>
      OptionsView.Footer = True
      OptionsView.GroupByBox = True
      Styles.Selection = dmGlobal.rowSelected
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
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'STOCKCODE'
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKNAME: TcxGridDBBandedColumn
        Caption = 'Stock Name'
        DataBinding.FieldName = 'STOCKNAME'
        Width = 294
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterBS: TcxGridDBBandedColumn
        Caption = 'B / S'
        DataBinding.FieldName = 'BS'
        RepositoryItem = dmGlobal.luBuySell
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterMARKETCODE: TcxGridDBBandedColumn
        Caption = 'Market'
        DataBinding.FieldName = 'MARKETCODE'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCYCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterCHANNELCODE: TcxGridDBBandedColumn
        Caption = 'Channel'
        DataBinding.FieldName = 'CHANNELCODE'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterOMNIBUSTRADE: TcxGridDBBandedColumn
        Caption = 'Omnibus Trade'
        DataBinding.FieldName = 'OMNIBUSTRADE'
        RepositoryItem = dmGlobal.chkStandard
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterDEALQTY: TcxGridDBBandedColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'DEALQTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterDEALPRICE: TcxGridDBBandedColumn
        Caption = 'Price'
        DataBinding.FieldName = 'DEALPRICE'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterDEALVALUE: TcxGridDBBandedColumn
        Caption = 'Value'
        DataBinding.FieldName = 'DEALVALUE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterALLOCQTY: TcxGridDBBandedColumn
        Caption = 'Allocation Quantity'
        DataBinding.FieldName = 'ALLOCQTY'
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterSALESID: TcxGridDBBandedColumn
        Caption = 'Sales'
        DataBinding.FieldName = 'SALESID'
        RepositoryItem = dmGlobal.luSales
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterDEALERID: TcxGridDBBandedColumn
        Caption = 'Dealer'
        DataBinding.FieldName = 'DEALERID'
        RepositoryItem = dmGlobal.luDealer
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterDUESTOCK: TcxGridDBBandedColumn
        Caption = 'Due Stock'
        DataBinding.FieldName = 'DUESTOCK'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterDUECASH: TcxGridDBBandedColumn
        Caption = 'Due Cash'
        DataBinding.FieldName = 'DUECASH'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STAT'
        RepositoryItem = dmGlobal.luDealTicketStat
        Width = 48
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS: TcxGridDBBandedColumn
        Caption = 'Status Reason'
        DataBinding.FieldName = 'STATUS'
        RepositoryItem = dmGlobal.luDealTicketSTATUS
        Visible = False
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 23
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
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterENTNAME: TcxGridDBBandedColumn
        Caption = 'Entity Name'
        DataBinding.FieldName = 'ENTNAME'
        Visible = False
        Width = 265
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterALLOCSTAT: TcxGridDBBandedColumn
        Caption = 'Allocation Status'
        DataBinding.FieldName = 'ALLOCSTAT'
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterAUTO_ALLOC: TcxGridDBBandedColumn
        Caption = 'Auto Allocation'
        DataBinding.FieldName = 'AUTO_ALLOC'
        RepositoryItem = dmGlobal.chkStandard
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterROUNDPRICE: TcxGridDBBandedColumn
        Caption = 'Avg. Price'
        DataBinding.FieldName = 'ROUNDPRICE'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterROUNDVALUE: TcxGridDBBandedColumn
        Caption = 'Avg. Value'
        DataBinding.FieldName = 'ROUNDVALUE'
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterDIFFVALUE: TcxGridDBBandedColumn
        Caption = 'Diff Value'
        DataBinding.FieldName = 'DIFFVALUE'
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterACCINIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCINIT'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSOP_MEMBER: TcxGridDBBandedColumn
        Caption = 'SOP Member'
        DataBinding.FieldName = 'SOP_MEMBER'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterDEALTICKETID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEALTICKETID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object gvwMasterDAYTRADE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DAYTRADE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object gvwMasterCONID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object gvwMasterCDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDUEDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
      object gvwMasterSDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SDUEDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 43
        Position.RowIndex = 0
      end
      object gvwMasterOLD_DEALTICKETID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OLD_DEALTICKETID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 44
        Position.RowIndex = 0
      end
      object gvwMasterDCCYAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DCCYAMT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 45
        Position.RowIndex = 0
      end
      object gvwMasterCNNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CNNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 46
        Position.RowIndex = 0
      end
      object gvwMasterCXLD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CXLD'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 47
        Position.RowIndex = 0
      end
      object gvwMasterRVSD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RVSD'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 48
        Position.RowIndex = 0
      end
      object gvwMasterRVSD_DTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RVSD_DTID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 49
        Position.RowIndex = 0
      end
      object gvwMasterRVSDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RVSDDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 50
        Position.RowIndex = 0
      end
      object gvwMasterEXTERNALID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXTERNALID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 51
        Position.RowIndex = 0
      end
      object gvwMasterSALES_BRANCHID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALES_BRANCHID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 52
        Position.RowIndex = 0
      end
      object gvwMasterENTTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTTID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 53
        Position.RowIndex = 0
      end
      object gvwMasterTC_BASE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TC_BASE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 54
        Position.RowIndex = 0
      end
      object gvwMasterCALC_METHOD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CALC_METHOD'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 55
        Position.RowIndex = 0
      end
      object gvwMasterCOMM_RATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COMM_RATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 56
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_CCYCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 57
        Position.RowIndex = 0
      end
      object gvwMasterRVS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RVS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 58
        Position.RowIndex = 0
      end
      object gvwMasterRVS_STS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RVS_STS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 59
        Position.RowIndex = 0
      end
      object gvwMasterACCSOPID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCSOPID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 60
        Position.RowIndex = 0
      end
    end
    object gvwMasterAlloc: TcxGridDBBandedTableView [1]
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDealTicketAllocList
      DataController.DetailKeyFieldNames = 'DEALTICKETID'
      DataController.KeyFieldNames = 'DEALTICKETID;SEQID'
      DataController.MasterKeyFieldNames = 'DEALTICKETID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = BlueToggle
      Bands = <
        item
        end>
      object gvwMasterAllocDEALTICKETID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEALTICKETID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAllocSEQID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SEQID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAllocACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterAllocACCNO: TcxGridDBBandedColumn
        Caption = 'Account No.'
        DataBinding.FieldName = 'ACCNO'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterAllocACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 350
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterAllocAQTY: TcxGridDBBandedColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'AQTY'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterAllocAPRICE: TcxGridDBBandedColumn
        Caption = 'Price'
        DataBinding.FieldName = 'APRICE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterAllocCCY: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCY'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterAllocAVALUE: TcxGridDBBandedColumn
        Caption = 'Value'
        DataBinding.FieldName = 'AVALUE'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterAllocRVSD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RVSD'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterAllocRVSD_DTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RVSD_DTID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterAllocCOR_DTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COR_DTID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterAllocRVSDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RVSDDATE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterAllocCONID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterAllocMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterAllocMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterAllocAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterAllocAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterAllocISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterAllocID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      object grdMasterLevel2: TcxGridLevel
        GridView = gvwMasterAlloc
        Visible = False
      end
    end
  end
  inherited spMain: TcxSplitter
    Top = 425
    Width = 944
    ExplicitTop = 425
    ExplicitWidth = 944
  end
  inherited grdApproval: TcxGrid
    Top = 433
    Width = 944
    ExplicitTop = 433
    ExplicitWidth = 944
  end
  object dxLayoutControl1: TdxLayoutControl [3]
    Left = 0
    Top = 26
    Width = 944
    Height = 75
    Align = alTop
    TabOrder = 7
    object Shape2: TShape
      Left = 549
      Top = 10
      Width = 21
      Height = 21
      Brush.Color = clBlack
    end
    object Shape1: TShape
      Left = 878
      Top = 10
      Width = 21
      Height = 21
      Brush.Color = clRed
      Pen.Color = clRed
    end
    object Shape3: TShape
      Left = 652
      Top = 10
      Width = 21
      Height = 21
      Brush.Color = clBlue
      Pen.Color = clBlue
    end
    object Shape4: TShape
      Left = 769
      Top = 10
      Width = 21
      Height = 21
      Brush.Color = clGreen
      Pen.Color = clGreen
    end
    object dtTransDateStart: TcxDateEdit
      Left = 124
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
      Left = 392
      Top = 10
      Width = 75
      Height = 25
      Action = actViewListData
      TabOrder = 2
    end
    object dtTransDateEnd: TcxDateEdit
      Left = 265
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object chkFilterByEntity: TcxCheckBox
      Left = 124
      Top = 41
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      OnClick = chkFilterByEntityClick
      Width = 21
    end
    object luEntity: TcxLookupComboBox
      Left = 212
      Top = 41
      RepositoryItem = dmGlobal.luEntity
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 174
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
      CaptionOptions.Text = 'Transaction Date From'
      Parent = dxLayoutControl1Group2
      Control = dtTransDateStart
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Open Data -->'
      Parent = dxLayoutControl1Group2
      Control = Shape2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Cancel Data -->'
      Parent = dxLayoutControl1Group2
      Control = Shape1
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Close Data -->'
      Parent = dxLayoutControl1Group2
      Control = Shape3
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Reverse Data -->'
      Parent = dxLayoutControl1Group2
      Control = Shape4
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'to'
      Parent = dxLayoutControl1Group2
      Control = dtTransDateEnd
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Filter By Entity'
      Parent = dxLayoutControl1Group1
      Control = chkFilterByEntity
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcEntity: TdxLayoutItem
      CaptionOptions.Text = 'Entity Code'
      Parent = dxLayoutControl1Group1
      Control = luEntity
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actView'
        Permission = '[Deal Ticket].View Approval Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Deal Ticket].View'
      end
      item
        ActionName = 'actNew'
        Permission = '[Deal Ticket].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Deal Ticket].Edit'
      end
      item
        ActionName = 'actDelete'
        Permission = '[Deal Ticket].Delete'
      end
      item
        ActionName = 'actRefresh'
        Permission = '[Deal Ticket].Refresh'
      end
      item
        ActionName = 'actCancel'
        Permission = '[Deal Ticket].Cancel'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Deal Ticket].Copy From Selected Data'
      end
      item
        ActionName = 'actApprove'
        Permission = '[Deal Ticket].Approve'
      end
      item
        ActionName = 'actReject'
        Permission = '[Deal Ticket].Reject'
      end
      item
        ActionName = 'actPostingAll'
        Permission = '[Deal Ticket].Posting All'
      end
      item
        ActionName = 'actMerge'
        Permission = '[Deal Ticket].Merge'
      end
      item
        ActionName = 'actSplit'
        Permission = '[Deal Ticket].Split'
      end
      item
        ActionName = 'actFacilitation'
        Permission = '[Deal Ticket].Make Facilitation Trade'
      end
      item
        ActionName = 'actWarehouse'
        Permission = '[Deal Ticket].Make Warehouse Trade'
      end
      item
        ActionName = 'actCrossTom'
        Permission = '[Deal Ticket].Make Crossing Tomorrow Trade'
      end
      item
        ActionName = 'actCloseDealTicket'
        Permission = '[Deal Ticket].Close Deal Ticket'
      end
      item
        ActionName = 'actCancelDealTicket'
        Permission = '[Deal Ticket].Cancel Deal Ticket'
      end
      item
        ActionName = 'actBookOutWarehouse'
        Permission = '[Deal Ticket].Book Out Warehouse Trade'
      end>
  end
  inherited imlBrowse: TImageList
    Bitmap = {
      494C01010D0027007C0310001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00000000000000000000000000848484008484
      84008C8C8C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C009C9C9C00D6CECE009494940039393900525252009C949400C6C6
      C600D6D6D6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C009C9C
      9C00F7F7F700FFFFFF00D6D6D6009C9C9C004242420021182100211821003131
      310063636300848484008C8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000948C8C009C9C9C00EFEFEF00FFFF
      FF00EFE7E700C6C6C6009C9C9C008C8C8C009494940084848400636363003939
      3900182121002118210073737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00E7E7E700E7E7E700BDBD
      BD00A5A5A500B5ADAD00C6BDBD00A5A5A50094949400948C8C00949494009C94
      94008C8C8C006B6B6B0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094949400ADADAD00A5A5A500ADAD
      AD00C6C6C600D6D6D600EFEFEF00EFEFEF00DEDEDE00C6C6C600ADADAD009C9C
      9C00948C8C00949494008C8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000948C8C00ADADAD00C6C6C600CECE
      CE00C6C6C600DEDEDE00CECECE00A5ADA500BDBDBD00CECECE00D6D6D600D6D6
      D600C6C6C600B5B5B50094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00CECECE00CECE
      CE00DEDEDE00C6C6C600B5B5B500A5D6A500BDC6BD00C6A5A500ADA5A500A5A5
      A500B5B5B500C6BDBD00A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C00BDBD
      BD00ADADAD00ADADAD00E7E7E700F7EFEF00EFEFEF00EFE7DE00D6D6D600CECE
      CE00B5B5B5009494940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00D6D6D600CECECE009C9C9C00BDBDBD00D6D6D600D6D6D600D6D6D600C6C6
      C600ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFE7E700FFDECE00E7C6BD00E7C6BD00E7CEC600DED6CE00CECECE009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500FFAD9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      9C00FFE7D600FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00F7AD9C00F7AD9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD5A5A00AD52
      5200A54A4A00AD949400C6CEC600CECEC600CECEC600C6CEC600C6CEC600B59C
      9C009C4242009C424200A55252000000000000000000000000000052AD000052
      AD00004A9C00004A9400004A9400004A9400004A9400004A9400004A9400004A
      9400004A940000428400000000000000000000000000000000000052AD000052
      AD00004A9C00004A9400004A9400004A9400004A9400004A9400004A9400004A
      9400004A940000428400000000000000000000000000000000000052AD000052
      AD00004A9C00004A9400004A9400004A9400004A9400004A9400004A9400004A
      9400004A940000428400000000000000000000000000BD7B7300CE636300CE6B
      6B00B55A5A009C848400BDA5A500E7CECE00FFF7F700FFFFF700F7F7F700CEB5
      B500942929009C313100C65A5A00AD5A5A00000000000063CE000073EF000073
      E700006BDE00006BD6000063CE000063CE000063CE000063CE000063CE000063
      CE00006BD600005ABD000042840000000000000000000063CE000073EF000073
      E700006BDE00006BD6000063CE000063CE000063CE000063CE000063CE000063
      CE00006BD600005ABD000042840000000000000000000063CE000073EF000073
      E700006BDE00006BD6000063CE000063CE000063CE000063CE000063CE000063
      CE00006BD600005ABD00004284000000000000000000BD7B7300CE636300CE63
      6300B55A5A009C7B7B009C424200B5737300E7DEDE00FFF7F700FFFFFF00D6B5
      B500943131009C313100BD5A5A00AD5A5A00000000000073E7000084FF00007B
      FF00007BF7000073F7000073EF00006BE700006BE700006BE700006BE700006B
      E7000073E700006BD600004A940000000000000000000073E7000084FF00007B
      FF00007BF7000073F7000073EF00006BE700006BE700006BE700006BE700006B
      E7000073E700006BD600004A940000000000000000000073E7000084FF00007B
      FF00007BF7000073F7000073EF00006BE700006BE700006BE700006BE700006B
      E7000073E700006BD600004A94000000000000000000BD7B7300CE636300CE63
      6300B55A5A00AD8484009C3939009C393900CEBDBD00EFEFEF00FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A0000000000007BF7000884FF000084
      FF00007BFF00007BF7000073EF000073E700006BE700006BDE00006BDE00006B
      DE00006BE7000063CE00004A94000000000000000000007BF7000884FF000084
      FF00007BFF00007BF7000073EF0084BDF700006BE700006BDE00006BDE00006B
      DE00006BE7000063CE00004A94000000000000000000007BF7000884FF000084
      FF00007BFF00007BF700107BEF00CEE7FF00318CE700006BDE00006BDE00006B
      DE00006BE7000063CE00004A94000000000000000000BD7B7300CE636300CE63
      6300B55A5A00B58C8C009C4A4A0094313100A59C9C00D6D6D600FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A0000000000007BF700188CFF00108C
      FF000084FF00FFFFFF00CEE7FF00107BEF000073EF009CCEF700FFFFFF00006B
      DE00006BE7000063CE00004A94000000000000000000007BF700188CFF00108C
      FF000084FF00007BFF00FFFFFF0084BDF7000073EF00006BE700006BDE00006B
      DE00006BE7000063CE00004A94000000000000000000007BF700188CFF00108C
      FF000084FF001084FF00CEE7FF00FFFFFF008CC6F700006BE700006BDE00006B
      DE00006BE7000063CE00004A94000000000000000000BD7B7300CE636300CE63
      6300BD5A5A00C6948C00C6949400B5848400AD8C8C00BDA5A500E7C6C600DEAD
      AD00A5393900A5393900C65A5A00AD5A5A0000000000007BF700399CFF002194
      FF00108CFF00D6E7FF00FFFFFF00CEE7FF009CCEFF00FFFFFF00CEE7FF00006B
      DE00006BE7000063CE00004A94000000000000000000007BF700399CFF002194
      FF00108CFF00FFFFFF00FFFFFF009CCEFF00429CF7004294EF004294EF004294
      EF00006BE7000063CE00004A94000000000000000000007BF700399CFF002194
      FF00218CFF00D6E7FF00FFFFFF00FFFFFF00DEEFFF000073EF000073E700006B
      DE00006BE7000063CE00004A94000000000000000000BD7B7300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300C65A5A00C65A5A00CE63
      6300CE636300CE636300CE6B6B00AD525A0000000000007BF70063ADFF00319C
      FF00188CFF00218CFF00D6E7FF00FFFFFF00FFFFFF00CEE7FF00107BEF000073
      E7000073E7000063D600004A94000000000000000000007BF70063ADFF00319C
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000073E7000063D600004A94000000000000000000007BF70063ADFF00319C
      FF00E7F7FF00FFFFFF00D6E7FF0063ADFF00FFFFFF00429CF7000073EF000073
      E7000073E7000063D600004A94000000000000000000BD7B7300B5525200B55A
      5A00C6848400D6A5A500D6ADAD00D6ADA500D6ADAD00D6A5A500D6A5A500D6AD
      A500D6ADAD00D69C9C00CE636300AD52520000000000007BF70073BDFF00429C
      FF002194FF00108CFF00A5D6FF00FFFFFF00FFFFFF00CEE7FF001084F7000073
      EF000073EF00006BD600004A9C000000000000000000007BF70073BDFF00429C
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000073EF00006BD600004A9C000000000000000000007BF70073BDFF00429C
      FF0073BDFF00ADD6FF00188CFF000084FF00B5D6FF009CCEFF00007BF7000073
      EF000073EF00006BD600004A9C000000000000000000BD7B7300AD524A00E7CE
      CE00F7F7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700DEBDBD00C65A5A00AD525A0000000000007BF70084C6FF004AA5
      FF002994FF00ADD6FF00FFFFFF00D6EFFF00D6EFFF00FFFFFF00CEE7FF00007B
      F700007BF700006BE7000052AD000000000000000000007BF70084C6FF004AA5
      FF002994FF00FFFFFF00FFFFFF00A5D6FF004AA5FF0042A5FF00429CFF00429C
      FF00007BF700006BE7000052AD000000000000000000007BF70084C6FF004AA5
      FF002994FF00188CFF000884FF000884FF002994FF00E7EFFF001084FF00007B
      F700007BF700006BE7000052AD000000000000000000BD7B7300B5524A00EFD6
      D600FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7F7F700DEBDBD00C65A5A00AD525A0000000000007BF7008CC6FF0052AD
      FF00399CFF00F7FFFF00D6EFFF002194FF002194FF00D6EFFF00FFFFFF000084
      FF00007BFF000073EF00005AB5000000000000000000007BF7008CC6FF0052AD
      FF00399CFF003194FF00FFFFFF008CC6FF00108CFF000884FF000084FF000084
      FF00007BFF000073EF00005AB5000000000000000000007BF7008CC6FF0052AD
      FF00399CFF003194FF00218CFF00188CFF00108CFF006BB5FF0073BDFF000084
      FF00007BFF000073EF00005AB5000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A0000000000007BF7009CCEFF006BB5
      FF0042A5FF00399CFF002994FF002194FF002194FF00188CFF000884FF000884
      FF000084FF00007BF700005AC6000000000000000000007BF7009CCEFF006BB5
      FF0042A5FF00399CFF002994FF008CC6FF002194FF00188CFF000884FF000884
      FF000084FF00007BF700005AC6000000000000000000007BF7009CCEFF006BB5
      FF0042A5FF00399CFF002994FF002194FF002194FF00188CFF0084C6FF000884
      FF000084FF00007BF700005AC6000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00DED6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DED6
      D600EFEFEF00DEBDBD00C65A5A00AD525A0000000000007BF700A5CEFF0094CE
      FF007BBDFF0073B5FF0063ADFF004AA5FF00399CFF002194FF00108CFF000884
      FF000884FF00007BFF000063CE000000000000000000007BF700A5CEFF0094CE
      FF007BBDFF0073B5FF0063ADFF004AA5FF00399CFF002194FF00108CFF000884
      FF000884FF00007BFF000063CE000000000000000000007BF700A5CEFF0094CE
      FF007BBDFF0073B5FF0063ADFF004AA5FF00399CFF002194FF00108CFF000884
      FF000884FF00007BFF000063CE000000000000000000BD7B7300B5524A00EFD6
      D600F7F7EF00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00EFEFEF00DEBDBD00C65A5A00AD525A0000000000007BF70084BDFF00A5CE
      FF00A5D6FF009CCEFF008CC6FF0073BDFF0052A5FF00319CFF00188CFF00108C
      FF00108CFF000084FF00006BDE000000000000000000007BF70084BDFF00A5CE
      FF00A5D6FF009CCEFF008CC6FF0073BDFF0052A5FF00319CFF00188CFF00108C
      FF00108CFF000084FF00006BDE000000000000000000007BF70084BDFF00A5CE
      FF00A5D6FF009CCEFF008CC6FF0073BDFF0052A5FF00319CFF00188CFF00108C
      FF00108CFF000084FF00006BDE000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A0000000000000000000884FF002994
      FF002994FF002994FF002194FF00188CFF000884FF000084FF00007BFF00007B
      F700007BF7000073E700000000000000000000000000000000000884FF002994
      FF002994FF002994FF002194FF00188CFF000884FF000084FF00007BFF00007B
      F700007BF7000073E700000000000000000000000000000000000884FF002994
      FF002994FF002994FF002194FF00188CFF000884FF000084FF00007BFF00007B
      F700007BF7000073E700000000000000000000000000BD7B7300B5524A00E7D6
      CE00FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00FFF7F700DEBDBD00C65A5A00AD525A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD524A00CEB5
      B500D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600CEADAD00A54A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000001884000018
      840000187B0000106B0000106B0000106B0000106B0000106B0000106B000010
      6B0000106B0000105A0000000000000000000000000000000000001884000018
      840000187B0000106B0000106B0000106B0000106B0000106B0000106B000010
      6B0000106B0000105A0000000000000000000000000000000000001884000018
      840000187B0000106B0000106B0000106B0000106B0000106B0000106B000010
      6B0000106B0000105A00000000000000000000000000000000000052AD000052
      AD00004A9C00004A9400004A9400004A9400004A9400004A9400004A9400004A
      9400004A9400004284000000000000000000000000000021AD000029CE000029
      C6000021BD000021B5000021AD000021AD000021AD000021AD000021AD000021
      AD000021B5000018940000105A0000000000000000000021AD000029CE000029
      C6000021BD000021B5000021AD000021AD000021AD000021AD000021AD000021
      AD000021B5000018940000105A0000000000000000000021AD000029CE000029
      C6000021BD000021B5000021AD000021AD000021AD000021AD000021AD000021
      AD000021B5000018940000105A0000000000000000000063CE000073EF000073
      E700006BDE00006BD6000063CE000063CE000063CE000063CE000063CE000063
      CE00006BD600005ABD000042840000000000000000000029CE000031EF000029
      DE000029DE000029D6000029CE000029C6000029C6000029C6000029C6000029
      C6000029C6000021B50000106B0000000000000000000029CE000031EF000029
      DE000029DE000029D6000029CE000029C6000029C6000029C6000029C6000029
      C6000029C6000021B50000106B0000000000000000000029CE000031EF000029
      DE000029DE000029D6000029CE000029C6000029C6000029C6000029C6000029
      C6000029C6000021B50000106B0000000000000000000073E7000084FF00007B
      FF00007BF7000073F7000073EF00006BE700006BE700006BE700006BE700006B
      E7000073E700006BD600004A940000000000000000000029D6000031F7000031
      EF000029DE000029D6000029CE000029C6000029C6000021BD000021BD000021
      BD000029C6000021AD0000106B0000000000000000000029D6000031F7000031
      EF000029DE000029D6000029CE000029C6000029C6000021BD000021BD000021
      BD000029C6000021AD0000106B0000000000000000000029D6000031F7000031
      EF000029DE000029D600526BDE00EFF7FF009CADE7001031C6000021BD000021
      BD000029C6000021AD0000106B000000000000000000007BF7000884FF000084
      FF001084FF0084BDFF00FFFFFF00FFFFFF00FFFFFF0084B5EF001073DE00006B
      DE00006BE7000063CE00004A940000000000000000000029D6000039FF000031
      FF000031EF000029DE000029D600FFFFFF00F7FFFF000029C6000021BD000021
      BD000029C6000021AD0000106B0000000000000000000029D6000039FF000031
      FF000031EF000029DE000029D6000029D6000029CE000029C6000021BD000021
      BD000029C6000021AD0000106B0000000000000000000029D6000039FF000031
      FF00ADBDFF001039E7000029D600ADBDF700FFFFFF009CADEF000021BD000021
      BD000029C6000021AD0000106B000000000000000000007BF700188CFF00108C
      FF00A5D6FF00EFF7FF0063ADFF00429CF70063ADF700EFF7FF009CCEF700006B
      DE00006BE7000063CE00004A940000000000000000000029D6002952FF000842
      FF000031FF000031EF000029E700FFFFFF00FFFFFF000029CE000029C6000021
      BD000029C6000021AD0000106B0000000000000000000029D6002952FF000842
      FF000031FF000031EF000029E7000029DE000029D6000029CE000029C6000021
      BD000029C6000021AD0000106B0000000000000000000029D6002952FF000842
      FF00FFFFFF008CA5F7000029E700526BE700FFFFFF00BDCEF7000029C6000021
      BD000029C6000021AD0000106B000000000000000000007BF700399CFF002194
      FF00FFFFFF0063B5FF00007BFF00007BF700007BF70063ADF700FFFFFF00006B
      DE00006BE7000063CE00004A940000000000000000000029D6004A73FF00184A
      FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029
      CE000029C6000021B50000106B0000000000000000000029D6004A73FF00184A
      FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029
      CE000029C6000021B50000106B0000000000000000000029D6004A73FF00184A
      FF00FFFFFF00FFFFFF008CA5F700EFF7FF00FFFFFF009CB5F7000029D6000029
      CE000029C6000021B50000106B000000000000000000007BF70063ADFF00319C
      FF00FFFFFF004AA5FF0063B5FF00FFFFFF00007BFF00218CF70084BDF7000073
      E7000073E7000063D600004A940000000000000000000029D6006B8CFF00295A
      FF000839FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029
      D6000029CE000021B5000018730000000000000000000029D6006B8CFF00295A
      FF000839FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029
      D6000029CE000021B5000018730000000000000000000029D6006B8CFF00295A
      FF006384FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF7FF003152DE000029
      D6000029CE000021B500001873000000000000000000007BF70073BDFF00429C
      FF00F7FFFF00B5DEFF0084C6FF00FFFFFF00FFFFFF0063ADFF00007BF7000073
      EF000073EF00006BD600004A9C0000000000000000000029D6007394FF003163
      FF001042FF000031FF000031F700FFFFFF00FFFFFF000031EF000029E7000029
      DE000029DE000029C6000018840000000000000000000029D6007394FF003163
      FF001042FF000031FF000031F7000031F7000031F7000031EF000029E7000029
      DE000029DE000029C6000018840000000000000000000029D6007394FF003163
      FF001042FF00426BFF00849CFF00637BF700CEDEFF00FFFFFF00EFF7FF003152
      E7000029DE000029C600001884000000000000000000007BF70084C6FF004AA5
      FF007BBDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDDEFF00007B
      F700007BF700006BE7000052AD0000000000000000000029D600849CFF00426B
      FF002152FF00184AFF000839FF00FFFFFF00FFFFFF000031F7000031EF000031
      E7000029E7000029CE000018940000000000000000000029D600849CFF00426B
      FF002152FF00184AFF000839FF000031FF000031FF000031F7000031EF000031
      E7000029E7000029CE000018940000000000000000000029D600849CFF00426B
      FF002152FF00184AFF000839FF000031FF001042FF00EFF7FF00FFFFFF00EFF7
      FF000029E7000029CE00001894000000000000000000007BF7008CC6FF0052AD
      FF00399CFF0063B5FF00C6E7FF00FFFFFF00FFFFFF00B5DEFF002194FF000084
      FF00007BFF000073EF00005AB50000000000000000000029D6008CA5FF005A7B
      FF00295AFF002952FF00184AFF000839FF000839FF000031FF000031F7000031
      EF000031EF000029D60000219C0000000000000000000029D6008CA5FF005A7B
      FF00295AFF002952FF00184AFF000839FF000839FF000031FF000031F7000031
      EF000031EF000029D60000219C0000000000000000000029D6008CA5FF005A7B
      FF00295AFF002952FF00184AFF000839FF000839FF00315AFF00EFF7FF00CEDE
      FF000031EF000029D60000219C000000000000000000007BF7009CCEFF006BB5
      FF0042A5FF00399CFF0094CEFF00FFFFFF005AADFF00188CFF000884FF000884
      FF000084FF00007BF700005AC60000000000000000000029D60094ADFF008CA5
      FF00738CFF006384FF004A73FF003963FF002952FF000839FF000031FF000031
      F7000031F7000029E7000021AD0000000000000000000029D60094ADFF008CA5
      FF00738CFF006384FF004A73FF003963FF002952FF000839FF000031FF000031
      F7000031F7000029E7000021AD0000000000000000000029D60094ADFF008CA5
      FF00738CFF006384FF004A73FF003963FF002952FF000839FF000031FF000031
      F7000031F7000029E7000021AD000000000000000000007BF700A5CEFF0094CE
      FF007BBDFF0073B5FF0063ADFF004AA5FF00399CFF002194FF00108CFF000884
      FF000884FF00007BFF000063CE0000000000000000000029D6007394FF0094AD
      FF009CB5FF008CA5FF007B9CFF006384FF003963FF00184AFF000031FF000031
      FF000031FF000031EF000021BD0000000000000000000029D6007394FF0094AD
      FF009CB5FF008CA5FF007B9CFF006384FF003963FF00184AFF000031FF000031
      FF000031FF000031EF000021BD0000000000000000000029D6007394FF0094AD
      FF009CB5FF008CA5FF007B9CFF006384FF003963FF00184AFF000031FF000031
      FF000031FF000031EF000021BD000000000000000000007BF70084BDFF00A5CE
      FF00A5D6FF009CCEFF008CC6FF0073BDFF0052A5FF00319CFF00188CFF00108C
      FF00108CFF000084FF00006BDE000000000000000000000000000031F7001042
      FF00184AFF001042FF000842FF000031FF000031F7000031E7000029DE000029
      DE000029DE000029CE00000000000000000000000000000000000031F7001042
      FF00184AFF001042FF000842FF000031FF000031F7000031E7000029DE000029
      DE000029DE000029CE00000000000000000000000000000000000031F7001042
      FF00184AFF001042FF000842FF000031FF000031F7000031E7000029DE000029
      DE000029DE000029CE00000000000000000000000000000000000884FF002994
      FF002994FF002994FF002194FF00188CFF000884FF000084FF00007BFF00007B
      F700007BF7000073E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000844200008442
      0000733900006B3100006B3100006B3100006B3100006B3100006B3100006B31
      00006B3100005A29000000000000000000000000000000000000844200008442
      0000733900006B3100006B3100006B3100006B3100006B3100006B3100006B31
      00006B3100005A29000000000000000000000000000000000000087B1000087B
      100008731000006B080000630800006308000063080000630800006308000063
      0800006308000052080000000000000000000000000000000000087B1000087B
      100008731000006B080000630800006308000063080000630800006308000063
      08000063080000520800000000000000000000000000AD520000CE630000C663
      0000BD5A0000B55A0000AD520000AD520000AD520000AD520000AD520000AD52
      0000B55A0000944A00005A2900000000000000000000AD520000CE630000C663
      0000BD5A0000B55A0000AD520000AD520000AD520000AD520000AD520000AD52
      0000B55A0000944A00005A2900000000000000000000109C290018B5390010AD
      310010AD210008AD180008A5180008A5100008A5100008A5100008A5100008A5
      100008AD1800008C1000005208000000000000000000109C290018B5390010AD
      310010AD210008AD180008A5180008A5100008A5100008A5100008A5100008A5
      100008AD1800008C1000005208000000000000000000C6630000EF730000DE6B
      0000D66B0000D6630000CE630000C6630000BD5A0000BD5A0000BD5A0000BD5A
      0000C6630000B55A00006B3100000000000000000000C6630000EF730000DE6B
      0000D66B0000D6630000CE630000C6630000BD5A0000BD5A0000BD5A0000BD5A
      0000C6630000B55A00006B310000000000000000000018AD390021C6520018C6
      420018BD390010BD310010BD210008BD180008BD180008BD180008BD180008B5
      180008BD180008AD100000630800000000000000000018AD390021C6520018C6
      420018BD390010BD310010BD210008BD180008BD180008BD180008BD180008B5
      180008BD180008AD1000006308000000000000000000D66B0000EF730000E773
      0000DE6B0000D66B0000CE630000C6630000C65A0000BD5A0000BD5A0000BD5A
      0000BD5A0000AD5200006B3100000000000000000000D66B0000EF730000E773
      0000DE6B0000D66B0000CE630000C6630000C65A0000BD5A0000BD5A0000BD5A
      0000BD5A0000AD5200006B310000000000000000000021B5420031C6630029BD
      520021BD4A0018BD390010B5310010B5290029BD3900D6F7D60008B5180008B5
      180008B5180008A51000006B0800000000000000000021B5420031C6630029BD
      520021BD4A0018BD3900D6F7DE0031BD420008B5210008B5180008B5180008B5
      180008B5180008A51000006B08000000000000000000D66B0000F7841000EF7B
      0800E7730000FFFFFF00D66B0000D66B0000CE630000D68C4200F7EFDE00BD5A
      0000BD5A0000AD5200006B3100000000000000000000D66B0000F7841000EF7B
      0800E7730000FFEFDE00E7944200D66B0000CE630000C6630000FFFFFF00BD5A
      0000BD5A0000AD5200006B310000000000000000000021B54A0039CE730031C6
      630029BD520021BD4A0018BD420052CE6B00F7FFF700FFFFFF0008B5180008B5
      180008BD180008A5100000630800000000000000000021B54A0039CE730031C6
      630029BD520021BD4A00FFFFFF00F7FFF7004ACE630008B5210008B5180008B5
      180008BD180008A51000006308000000000000000000D66B0000FF943100F784
      1800F77B0800FFFFFF00E76B0000DE7B2100F7D6AD00FFFFFF00FFFFFF00BD5A
      0000BD5A0000AD5200006B3100000000000000000000D66B0000FF943100F784
      1800F77B0800FFFFFF00FFFFFF00F7D6AD00DE7B2100CE630000FFFFFF00BD5A
      0000BD5A0000AD5200006B310000000000000000000021B54A005AD68C0042CE
      7B0031C66B0029BD5A0084DE9C00FFFFFF00FFFFFF00FFFFFF0010B5290008B5
      180008B5180008A5100000630800000000000000000021B54A005AD68C0042CE
      7B0031C66B0029BD5A00FFFFFF00FFFFFF00FFFFFF007BD68C0010B5290008B5
      180008B5180008A51000006308000000000000000000D66B0000FFA55200F78C
      2900F7841000FFFFFF00F7BD8400FFF7EF00FFFFFF00FFFFFF00FFFFFF00CE63
      0000C6630000B55200006B3100000000000000000000D66B0000FFA55200F78C
      2900F7841000FFFFFF00FFFFFF00FFFFFF00FFF7EF00EFB58400FFFFFF00CE63
      0000C6630000B55200006B310000000000000000000021B54A0073DE9C0052CE
      840039C67300B5EFC600FFFFFF00FFFFFF00FFFFFF00FFFFFF0018BD310010B5
      290008BD210008A51800006B0800000000000000000021B54A0073DE9C0052CE
      840039C6730031C66B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADE7B50010B5
      290008BD210008A51800006B08000000000000000000D66B0000FFB56B00F794
      3100F7841000FFFFFF00FFB57300FFF7EF00FFFFFF00FFFFFF00FFFFFF00D66B
      0000CE630000BD5A0000733900000000000000000000D66B0000FFB56B00F794
      3100F7841000FFFFFF00FFFFFF00FFFFFF00FFF7EF00EFAD7300FFFFFF00D66B
      0000CE630000BD5A000073390000000000000000000021B54A008CDEAD005AD6
      8C0042CE7300B5EFCE00FFFFFF00FFFFFF00FFFFFF00FFFFFF0018BD420018BD
      390010BD310008AD2100006B0800000000000000000021B54A008CDEAD005AD6
      8C0042CE730031C66B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADE7BD0018BD
      390010BD310008AD2100006B08000000000000000000D66B0000FFBD7B00F79C
      3900F78C2100FFFFFF00F77B0000F7841000FFD6AD00FFFFFF00FFFFFF00DE6B
      0000DE6B0000C6630000844200000000000000000000D66B0000FFBD7B00F79C
      3900F78C2100FFFFFF00FFFFFF00FFD6AD00F7841000EF730000FFFFFF00DE6B
      0000DE6B0000C663000084420000000000000000000021B54A0094E7B50063D6
      8C004ACE7B0039C673007BDEA500FFFFFF00FFFFFF00FFFFFF0021BD520018BD
      420018BD390010AD2900087B1000000000000000000021B54A0094E7B50063D6
      8C004ACE7B0039C67300FFFFFF00FFFFFF00FFFFFF007BDE9C0021BD520018BD
      420018BD390010AD2900087B10000000000000000000D66B0000FFBD8400F79C
      4A00F7943100FFFFFF00F7841000F77B0800F77B0000F79C4200FFEFDE00E773
      0000E7730000CE630000944200000000000000000000D66B0000FFBD8400F79C
      4A00F7943100FFF7E700F7A54A00F77B0800F77B0000F77B0000FFFFFF00E773
      0000E7730000CE63000094420000000000000000000021B54A009CE7BD006BD6
      940052CE84004ACE7B0042CE73005AD68C00F7FFF700FFFFFF0029C6630021BD
      520021C64A0018B5390008841800000000000000000021B54A009CE7BD006BD6
      940052CE84004ACE7B00FFFFFF00F7FFF7005AD68C0031C66B0029C6630021BD
      520021C64A0018B53900088418000000000000000000D66B0000FFC69400F7AD
      6300F7943900F7943100F78C2100F7841800F7841000F77B0800F77B0000EF73
      0000EF730000D66B00009C4A00000000000000000000D66B0000FFC69400F7AD
      6300F7943900F7943100F78C2100F7841800F7841000F77B0800F77B0000EF73
      0000EF730000D66B00009C4A0000000000000000000021B54A00ADE7C60084DE
      A5005AD68C005ACE84004ACE7B0042CE7B004ACE8400DEF7E70031C66B0029C6
      630029C65A0021B54A00108C1800000000000000000021B54A00ADE7C60084DE
      A5005AD68C005ACE8400DEF7E70052CE840042CE730039C6730031C66B0029C6
      630029C65A0021B54A00108C18000000000000000000D66B0000FFCE9C00FFC6
      9400FFB57300F7AD6B00F7A55200F79C4200F7943100F7841000F77B0800F77B
      0000F77B0000E7730000AD5200000000000000000000D66B0000FFCE9C00FFC6
      9400FFB57300F7AD6B00F7A55200F79C4200F7943100F7841000F77B0800F77B
      0000F77B0000E7730000AD520000000000000000000021B54A00ADEFC600A5E7
      BD0094DEAD0084DEA5007BD69C0063D694005ACE840042CE7B0031C66B0031C6
      6B0031C66B0021BD5200109C2100000000000000000021B54A00ADEFC600A5E7
      BD0094DEAD0084DEA5007BD69C0063D694005ACE840042CE7B0031C66B0031C6
      6B0031C66B0021BD5200109C21000000000000000000D66B0000FFBD7B00FFCE
      9C00FFCE9C00FFC69400FFBD8400FFB56B00FF9C4200F78C2100F7840800F77B
      0000FF7B0000EF730000B55A00000000000000000000D66B0000FFBD7B00FFCE
      9C00FFCE9C00FFC69400FFBD8400FFB56B00FF9C4200F78C2100F7840800F77B
      0000FF7B0000EF730000B55A0000000000000000000021B54A0094E7B500ADEF
      C600B5EFCE00ADE7C6009CE7BD0084DEAD006BD694004ACE840039C6730031C6
      730031CE730029BD5A0010A52900000000000000000021B54A0094E7B500ADEF
      C600B5EFCE00ADE7C6009CE7BD0084DEAD006BD694004ACE840039C6730031C6
      730031CE730029BD5A0010A52900000000000000000000000000DE731000DE84
      3100DE8C3100DE8C3100DE842900DE7B2100DE731000DE730800D66B0000D66B
      0000D66B0000CE63000000000000000000000000000000000000DE731000DE84
      3100DE8C3100DE8C3100DE842900DE7B2100DE731000DE730800D66B0000D66B
      0000D66B0000CE6300000000000000000000000000000000000039BD5A0052C6
      730052C6730052C66B004AC66B0042C6630031BD5A0029BD520021B54A0021B5
      4A0021B54A0018AD39000000000000000000000000000000000039BD5A0052C6
      730052C6730052C66B004AC66B0042C6630031BD5A0029BD520021B54A0021B5
      4A0021B54A0018AD390000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FDC7000000000000F003000000000000
      C001000000000000000100000000000000010000000000000001000000000000
      00010000000000008001000000000000C003000000000000E007000000000000
      F00F000000000000F03F000000000000F03F000000000000F03F000000000000
      E03F000000000000E07F000000000000FFFFFFFFFFFFC001C003C003C0038000
      8001800180018000800180018001800080018001800180008001800180018000
      8001800180018000800180018001800080018001800180008001800180018000
      8001800180018000800180018001800080018001800180008001800180018000
      C003C003C0038000FFFFFFFFFFFFC001FFFFFFFFFFFFFFFFC003C003C003C003
      8001800180018001800180018001800180018001800180018001800180018001
      8001800180018001800180018001800180018001800180018001800180018001
      8001800180018001800180018001800180018001800180018001800180018001
      C003C003C003C003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003C003C003C003
      8001800180018001800180018001800180018001800180018001800180018001
      8001800180018001800180018001800180018001800180018001800180018001
      8001800180018001800180018001800180018001800180018001800180018001
      C003C003C003C003FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited PrintComp: TdxComponentPrinter
    inherited PrintCompMainGrid: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited popMaster: TPopupMenu
    Left = 93
    object N5: TMenuItem [7]
      Caption = '-'
    end
    object Merge1: TMenuItem [8]
      Action = actMergeNew
    end
    object CancelMerge1: TMenuItem [9]
      Action = actCancelMerge
    end
    object Split1: TMenuItem [10]
      Action = actSplit
    end
    object SplitExecution1: TMenuItem [11]
      Action = actSplitExec
    end
    object SplitAllocation1: TMenuItem [12]
      Action = actSplitAlloc
    end
    object MakeFacilitationTrade1: TMenuItem [13]
      Action = actFacilitation
    end
    object MakeWarehouseTrade1: TMenuItem [14]
      Action = actWarehouse
    end
    object MakeCrossingTomorrowTrade1: TMenuItem [15]
      Action = actCrossTom
    end
    object CreateNewCrossingTomorrowTrade1: TMenuItem [16]
      Action = actCreateCrossTom
    end
    object CreateNewNegoTomorrow1: TMenuItem [17]
      Action = actCreateNegoTom
    end
    object BookOutWarehouse1: TMenuItem [18]
      Action = actBookOutWarehouse
    end
    object CancelDealTicket1: TMenuItem [19]
      Action = actCancelDealTicket
    end
    object CloseDealTicket1: TMenuItem [20]
      Action = actCloseDealTicket
    end
    object ChangeCommission1: TMenuItem [21]
      Action = actChangeCommission
    end
    object AllocationDealTicket1: TMenuItem [22]
      Action = actUpdateAutoAlloc
    end
    object SetAllocationintoOneAccount1: TMenuItem [23]
      Action = actSetAllocToOneAccount
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsDealTicketList
  end
  inherited aclEditor: TActionList
    Left = 103
    inherited actEdit: TNAction
      OnUpdate = actSplitUpdate
    end
    object actViewListData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewListDataExecute
      CheckPermission = False
      ActionLog = dmGlobal.ActionLog
    end
    object actPostingAll: TNAction
      Category = 'NActions'
      Caption = 'Posting All'
      OnExecute = actPostingAllExecute
      CheckPermission = True
      ActionLog = dmGlobal.ActionLog
    end
    object actMerge: TNAction
      Category = 'NActions'
      Caption = 'Merge'
      OnExecute = actMergeExecute
      OnUpdate = actSplitUpdate
      CheckPermission = True
      ActionLog = dmGlobal.ActionLog
    end
    object actSplit: TNAction
      Category = 'NActions'
      Caption = 'Split'
      OnExecute = actSplitExecute
      OnUpdate = actSplitUpdate
      CheckPermission = True
      ActionLog = dmGlobal.ActionLog
    end
    object actFacilitation: TNAction
      Category = 'NActions'
      Caption = 'Make Facilitation Trade'
      OnExecute = actFacilitationExecute
      OnUpdate = actSplitUpdate
      CheckPermission = True
      ActionLog = dmGlobal.ActionLog
    end
    object actWarehouse: TNAction
      Category = 'NActions'
      Caption = 'Make Warehouse Trade'
      OnExecute = actWarehouseExecute
      OnUpdate = actSplitUpdate
      CheckPermission = True
      ActionLog = dmGlobal.ActionLog
    end
    object actCrossTom: TNAction
      Category = 'NActions'
      Caption = 'Make Crossing Tomorrow Trade'
      OnExecute = actCrossTomExecute
      OnUpdate = actSplitUpdate
      CheckPermission = True
      ActionLog = dmGlobal.ActionLog
    end
    object actCloseDealTicket: TNAction
      Category = 'NActions'
      Caption = 'Close Deal Ticket'
      OnExecute = actCloseDealTicketExecute
      OnUpdate = actSplitUpdate
      CheckPermission = True
      ActionLog = dmGlobal.ActionLog
    end
    object actCancelDealTicket: TNAction
      Category = 'NActions'
      Caption = 'Cancel Deal Ticket'
      OnExecute = actCancelDealTicketExecute
      OnUpdate = actSplitUpdate
      CheckPermission = True
      ActionLog = dmGlobal.ActionLog
    end
    object actBookOutWarehouse: TNAction
      Category = 'NActions'
      Caption = 'Book Out Warehouse Trade'
      OnExecute = actBookOutWarehouseExecute
      OnUpdate = actSplitUpdate
      CheckPermission = True
    end
    object actSplitAlloc: TNAction
      Category = 'NActions'
      Caption = 'Split Allocation'
      OnExecute = actSplitAllocExecute
      OnUpdate = actSplitUpdate
      CheckPermission = False
      ActionLog = dmGlobal.ActionLog
    end
    object actCreateCrossTom: TNAction
      Category = 'NActions'
      Caption = 'Create New Crossing Tomorrow Trade'
      OnExecute = actCreateCrossTomExecute
      CheckPermission = False
    end
    object actCreateNegoTom: TNAction
      Category = 'NActions'
      Caption = 'Create New Nego Tomorrow Trade'
      OnExecute = actCreateNegoTomExecute
      CheckPermission = False
    end
    object actCloseAllDealTicket: TNAction
      Category = 'NActions'
      Caption = 'Close All Deal Tickets'
      CheckPermission = False
    end
    object actAllocDealTicket: TNAction
      Category = 'NActions'
      Caption = 'Allocation Deal Ticket'
      OnExecute = actAllocDealTicketExecute
      CheckPermission = False
    end
    object actMergeNew: TNAction
      Category = 'NActions'
      Caption = 'Merge'
      OnExecute = actMergeNewExecute
      OnUpdate = actSplitUpdate
      CheckPermission = False
    end
    object actCancelMerge: TNAction
      Category = 'NActions'
      Caption = 'Cancel Merge'
      OnExecute = actCancelMergeExecute
      OnUpdate = actCancelMergeUpdate
      CheckPermission = False
    end
    object actUpdateAutoAlloc: TNAction
      Category = 'NActions'
      Caption = 'Set Update Auto Allocation'
      OnExecute = actUpdateAutoAllocExecute
      OnUpdate = actUpdateAutoAllocUpdate
      CheckPermission = False
    end
    object actSplitExec: TNAction
      Category = 'NActions'
      Caption = 'Split Execution'
      OnExecute = actSplitExecExecute
      OnUpdate = actSplitUpdate
      CheckPermission = False
    end
    object actChangeCommission: TNAction
      Category = 'NActions'
      Caption = 'Change Commission'
      OnExecute = actChangeCommissionExecute
      OnUpdate = actSplitUpdate
      CheckPermission = False
    end
    object actSetAllocToOneAccount: TNAction
      Category = 'NActions'
      Caption = 'Set Allocation into One Account'
      OnExecute = actSetAllocToOneAccountExecute
      OnUpdate = actSplitUpdate
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    MasterDataset = cdsDealTicket
    ListDataset = cdsDealTicketList
    DetailsData = <
      item
        DetailDataset = cdsDealTicketExec
        DetailTableName = 'main.B_DEALTICKET_EXECS'
        DetailKeys = <
          item
            FieldName = 'SEQID'
            FieldIndex = 0
          end>
      end
      item
        DetailDataset = cdsDealTicketAlloc
        DetailTableName = 'main.B_DEALTICKET_ALLOC'
        DetailKeys = <
          item
            FieldName = 'SEQID'
            FieldIndex = 0
          end>
      end>
    MasterTableName = 'main.B_DEALTICKET'
    Keys = <
      item
        FieldName = 'DEALTICKETID'
        FieldIndex = 0
      end>
    AutoFields = <
      item
        FieldName = 'DEALTICKETID'
        SequenceName = 'TBL_B_DEALTICKET'
        DataType = ftLargeint
        NumFormat = '%.6d'
      end>
    AfterInsert = DataContainerAfterInsert
    BeforeEdit = DataContainerBeforeEdit
    AfterEdit = DataContainerAfterEdit
    BeforePost = DataContainerBeforePost
    OnGetEditorClass = DataContainerGetEditorClass
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
    OnCalcFields = cdsDealTicketListCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 105
    Top = 87
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
    object cdsDealTicketListALLOCSTAT: TStringField
      FieldKind = fkCalculated
      FieldName = 'ALLOCSTAT'
      Size = 30
      Calculated = True
    end
    object cdsDealTicketListAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      ReadOnly = True
      Size = 1
    end
    object cdsDealTicketListTC_BASE: TStringField
      FieldName = 'TC_BASE'
      ReadOnly = True
      Size = 1
    end
    object cdsDealTicketListCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsDealTicketListCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
    end
    object cdsDealTicketListSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsDealTicketListROUNDPRICE: TFloatField
      FieldName = 'ROUNDPRICE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsDealTicketListROUNDVALUE: TFloatField
      FieldName = 'ROUNDVALUE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsDealTicketListDIFFVALUE: TFloatField
      FieldName = 'DIFFVALUE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsDealTicketListRVS: TStringField
      FieldName = 'RVS'
      Size = 1
    end
    object cdsDealTicketListRVS_STS: TStringField
      FieldName = 'RVS_STS'
      Size = 1
    end
    object cdsDealTicketListACCINIT: TStringField
      DisplayLabel = 'Account Initial'
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsDealTicketListACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsDealTicketListSOP_MEMBER: TStringField
      FieldName = 'SOP_MEMBER'
      ReadOnly = True
      Size = 150
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
    OnNewRecord = cdsDealTicketNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 96
    Top = 168
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
      DisplayFormat = 'dd MMM yyyy'
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
      Required = True
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
      Required = True
      Size = 1
    end
    object cdsDealTicketMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      OnChange = cdsDealTicketMARKETCODEChange
      Size = 10
    end
    object cdsDealTicketCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsDealTicketCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Required = True
      OnChange = cdsDealTicketCHANNELCODEChange
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
      OnChange = cdsDealTicketDEALPRICEChange
      DisplayFormat = '#,##0.############'
    end
    object cdsDealTicketDEALVALUE: TFloatField
      FieldName = 'DEALVALUE'
      DisplayFormat = '#,##0.############'
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
      OnChange = cdsDealTicketDUESTOCKChange
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
    object cdsDealTicketDUECASH: TIntegerField
      FieldName = 'DUECASH'
      OnChange = cdsDealTicketDUECASHChange
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
      LookupDataSet = dmLookup.cdsLuTradingAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
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
    object cdsDealTicketCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsDealTicketCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      DisplayFormat = '#,##0.#### %'
      EditFormat = '#.####'
    end
    object cdsDealTicketROUNDPRICE: TFloatField
      FieldName = 'ROUNDPRICE'
      OnChange = cdsDealTicketROUNDPRICEChange
      DisplayFormat = '#,##0.############'
      EditFormat = '#.############'
    end
    object cdsDealTicketROUNDVALUE: TFloatField
      FieldName = 'ROUNDVALUE'
      DisplayFormat = '#,##0.############'
      EditFormat = '#.############'
    end
    object cdsDealTicketDIFFVALUE: TFloatField
      FieldName = 'DIFFVALUE'
      DisplayFormat = '#,##0.############;(#,##0.############);0'
    end
    object cdsDealTicketACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsDealTicketAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsDealTicketSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsDealTicketDCCYAMT: TFloatField
      FieldName = 'DCCYAMT'
    end
    object cdsDealTicketCNNO: TStringField
      FieldName = 'CNNO'
    end
    object cdsDealTicketCXLD: TStringField
      FieldName = 'CXLD'
      Size = 1
    end
    object cdsDealTicketRVSD: TStringField
      FieldName = 'RVSD'
      Size = 1
    end
    object cdsDealTicketRVSD_DTID: TIntegerField
      FieldName = 'RVSD_DTID'
    end
    object cdsDealTicketRVSDDATE: TDateTimeField
      FieldName = 'RVSDDATE'
    end
    object cdsDealTicketRVS: TStringField
      FieldName = 'RVS'
      Size = 1
    end
    object cdsDealTicketRVS_STS: TStringField
      FieldName = 'RVS_STS'
      Size = 1
    end
    object cdsDealTicketEXTERNALID: TStringField
      FieldName = 'EXTERNALID'
    end
    object cdsDealTicketSALES_BRANCHID: TLargeintField
      FieldName = 'SALES_BRANCHID'
    end
    object cdsDealTicketISOMG: TStringField
      FieldName = 'ISOMG'
      Size = 1
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
    Left = 184
    Top = 168
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
      EditFormat = '#'
    end
    object cdsDealTicketExecEXPRICE: TFloatField
      FieldName = 'EXPRICE'
      OnChange = cdsDealTicketExecEXQTYChange
      DisplayFormat = '#,##0.########'
      EditFormat = '#.########'
    end
    object cdsDealTicketExecEXVALUE: TFloatField
      FieldName = 'EXVALUE'
      DisplayFormat = '#,##0.####'
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
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDealTicketExecDUESTOCK: TDateTimeField
      FieldName = 'DUESTOCK'
      DisplayFormat = 'dd MMM yyyy'
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
    BeforeEdit = cdsDealTicketAllocBeforeEdit
    BeforePost = cdsDealTicketAllocBeforePost
    BeforeDelete = cdsDealTicketAllocBeforeDelete
    OnNewRecord = cdsDealTicketAllocNewRecord
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Left = 288
    Top = 168
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
      OnChange = cdsDealTicketAllocAQTYChange
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsDealTicketAllocAPRICE: TFloatField
      FieldName = 'APRICE'
      OnChange = cdsDealTicketAllocAQTYChange
      DisplayFormat = '#,##0.##########'
      EditFormat = '#.##########'
    end
    object cdsDealTicketAllocAVALUE: TFloatField
      FieldName = 'AVALUE'
      DisplayFormat = '#,##0.##########'
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
      OnChange = cdsDealTicketAllocACCIDChange
    end
    object cdsDealTicketAllocADIFFVALUE: TFloatField
      FieldName = 'ADIFFVALUE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsDealTicketAllocEXT_REF: TStringField
      DisplayLabel = 'External Refference'
      FieldName = 'EXT_REF'
    end
    object cdsDealTicketAllocACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsDealTicketAllocCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsDealTicketAllocCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsDealTicketAllocCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      DisplayFormat = '#,##0.#### %'
      EditFormat = '#.####'
    end
  end
  object cdsDealTicketTemp: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 201
    Top = 87
    object cdsDealTicketTempDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsDealTicketTempDEALTICKETCODE: TStringField
      FieldName = 'DEALTICKETCODE'
      Required = True
      Size = 30
    end
    object cdsDealTicketTempDEALTICKETDATE: TDateField
      FieldName = 'DEALTICKETDATE'
    end
    object cdsDealTicketTempACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDealTicketTempACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDealTicketTempSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsDealTicketTempSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsDealTicketTempSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsDealTicketTempBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsDealTicketTempMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsDealTicketTempCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsDealTicketTempCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Size = 10
    end
    object cdsDealTicketTempOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsDealTicketTempDEALQTY: TLargeintField
      FieldName = 'DEALQTY'
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketTempDEALPRICE: TFloatField
      FieldName = 'DEALPRICE'
      DisplayFormat = '#,##0.############'
    end
    object cdsDealTicketTempDEALVALUE: TFloatField
      FieldName = 'DEALVALUE'
      DisplayFormat = '#,##0.############'
    end
    object cdsDealTicketTempALLOCQTY: TLargeintField
      FieldName = 'ALLOCQTY'
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketTempSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsDealTicketTempDEALERID: TLargeintField
      FieldName = 'DEALERID'
    end
    object cdsDealTicketTempDUESTOCK: TIntegerField
      FieldName = 'DUESTOCK'
    end
    object cdsDealTicketTempDUECASH: TIntegerField
      FieldName = 'DUECASH'
    end
    object cdsDealTicketTempPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsDealTicketTempMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDealTicketTempMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealTicketTempAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDealTicketTempAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealTicketTempISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDealTicketTempID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDealTicketTempACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsDealTicketTempDAYTRADE: TStringField
      FieldName = 'DAYTRADE'
      Size = 1
    end
    object cdsDealTicketTempCONID: TLargeintField
      FieldName = 'CONID'
    end
    object cdsDealTicketTempSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsDealTicketTempCDUEDATE: TDateField
      FieldName = 'CDUEDATE'
    end
    object cdsDealTicketTempSDUEDATE: TDateField
      FieldName = 'SDUEDATE'
    end
    object cdsDealTicketTempSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsDealTicketTempOLD_DEALTICKETID: TLargeintField
      FieldName = 'OLD_DEALTICKETID'
    end
    object cdsDealTicketTempCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsDealTicketTempCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      DisplayFormat = '#,##0.0000 %'
      EditFormat = '#.0000'
    end
    object cdsDealTicketTempROUNDPRICE: TFloatField
      FieldName = 'ROUNDPRICE'
      DisplayFormat = '#,##0.############'
    end
    object cdsDealTicketTempROUNDVALUE: TFloatField
      FieldName = 'ROUNDVALUE'
      DisplayFormat = '#,##0.############'
    end
    object cdsDealTicketTempDIFFVALUE: TFloatField
      FieldName = 'DIFFVALUE'
      DisplayFormat = '#,##0.############'
    end
    object cdsDealTicketTempACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsDealTicketTempAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsDealTicketTempSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsDealTicketTempDCCYAMT: TFloatField
      FieldName = 'DCCYAMT'
    end
    object cdsDealTicketTempCNNO: TStringField
      FieldName = 'CNNO'
    end
    object cdsDealTicketTempCXLD: TStringField
      FieldName = 'CXLD'
      Size = 1
    end
    object cdsDealTicketTempRVSD: TStringField
      FieldName = 'RVSD'
      Size = 1
    end
    object cdsDealTicketTempRVSD_DTID: TIntegerField
      FieldName = 'RVSD_DTID'
    end
    object cdsDealTicketTempRVSDDATE: TDateTimeField
      FieldName = 'RVSDDATE'
    end
    object cdsDealTicketTempRVS: TStringField
      FieldName = 'RVS'
      Size = 1
    end
    object cdsDealTicketTempRVS_STS: TStringField
      FieldName = 'RVS_STS'
      Size = 1
    end
    object cdsDealTicketTempEXTERNALID: TStringField
      FieldName = 'EXTERNALID'
    end
    object cdsDealTicketTempSALES_BRANCHID: TLargeintField
      FieldName = 'SALES_BRANCHID'
    end
    object cdsDealTicketTempISOMG: TStringField
      FieldName = 'ISOMG'
      Size = 1
    end
  end
  object cdsDealTicketExecTemp: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Left = 313
    Top = 87
    object cdsDealTicketExecTempDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsDealTicketExecTempSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsDealTicketExecTempBOARDID: TLargeintField
      FieldName = 'BOARDID'
    end
    object cdsDealTicketExecTempBROKERCODE: TStringField
      FieldName = 'BROKERCODE'
      Size = 10
    end
    object cdsDealTicketExecTempEXQTY: TLargeintField
      FieldName = 'EXQTY'
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketExecTempEXPRICE: TFloatField
      FieldName = 'EXPRICE'
      DisplayFormat = '#,##0.#########'
    end
    object cdsDealTicketExecTempEXVALUE: TFloatField
      FieldName = 'EXVALUE'
      DisplayFormat = '#,##0.####'
    end
    object cdsDealTicketExecTempEXTIME: TTimeField
      FieldName = 'EXTIME'
    end
    object cdsDealTicketExecTempTRDID: TStringField
      FieldName = 'TRDID'
    end
    object cdsDealTicketExecTempMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDealTicketExecTempMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealTicketExecTempAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDealTicketExecTempAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealTicketExecTempISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDealTicketExecTempID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDealTicketExecTempCPACCID: TIntegerField
      FieldName = 'CPACCID'
    end
    object cdsDealTicketExecTempDUECASH: TDateTimeField
      FieldName = 'DUECASH'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDealTicketExecTempDUESTOCK: TDateTimeField
      FieldName = 'DUESTOCK'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDealTicketExecTempCPTYPE: TStringField
      FieldKind = fkLookup
      FieldName = 'CPTYPE'
      LookupDataSet = dmLookup.cdsLuBoard
      LookupKeyFields = 'BOARDID'
      LookupResultField = 'CPTYPE'
      KeyFields = 'BOARDID'
      Size = 5
      Lookup = True
    end
    object cdsDealTicketExecTempSPLITQTY: TLargeintField
      FieldName = 'SPLITQTY'
    end
  end
  object cdsDealTicketAllocTemp: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Left = 433
    Top = 87
    object cdsDealTicketAllocTempDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsDealTicketAllocTempSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsDealTicketAllocTempACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDealTicketAllocTempACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDealTicketAllocTempAQTY: TLargeintField
      FieldName = 'AQTY'
    end
    object cdsDealTicketAllocTempAPRICE: TFloatField
      FieldName = 'APRICE'
    end
    object cdsDealTicketAllocTempAVALUE: TFloatField
      FieldName = 'AVALUE'
    end
    object cdsDealTicketAllocTempMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDealTicketAllocTempMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealTicketAllocTempAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDealTicketAllocTempAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealTicketAllocTempISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDealTicketAllocTempID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDealTicketAllocTempACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsDealTicketAllocTempADIFFVALUE: TFloatField
      FieldName = 'ADIFFVALUE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsDealTicketAllocTempEXT_REF: TStringField
      DisplayLabel = 'External Refference'
      FieldName = 'EXT_REF'
    end
    object cdsDealTicketAllocTempACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsDealTicketAllocTempCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsDealTicketAllocTempCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsDealTicketAllocTempCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      DisplayFormat = '#,##0.#### %'
      EditFormat = '#.####'
    end
  end
  object cdsSplitDetail: TNClientDataset
    Aggregates = <>
    Params = <>
    BeforeEdit = cdsSplitDetailBeforeEdit
    BeforePost = cdsSplitDetailBeforePost
    BeforeDelete = cdsSplitDetailBeforeDelete
    OnNewRecord = cdsSplitDetailNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 384
    Top = 168
    object cdsSplitDetailACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsSplitDetailACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsSplitDetailACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsSplitDetailSPLITQTY: TLargeintField
      FieldName = 'SPLITQTY'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsSplitDetailSPLITPRICE: TFloatField
      FieldName = 'SPLITPRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
  end
  object cdsFacilitationTrade: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'FACILITATIONID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryFacilitationTrade'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 528
    Top = 168
    object cdsFacilitationTradeFACILITATIONID: TLargeintField
      FieldName = 'FACILITATIONID'
      Required = True
    end
    object cdsFacilitationTradeFACILITATIONCODE: TStringField
      FieldName = 'FACILITATIONCODE'
      Size = 30
    end
    object cdsFacilitationTradeFACILITATIONDESC: TStringField
      FieldName = 'FACILITATIONDESC'
      Size = 100
    end
    object cdsFacilitationTradeDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
    end
    object cdsFacilitationTradeSEQID: TIntegerField
      FieldName = 'SEQID'
    end
    object cdsFacilitationTradeDEALTICKETDATE: TDateField
      FieldName = 'DEALTICKETDATE'
    end
    object cdsFacilitationTradeACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsFacilitationTradeACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsFacilitationTradeACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsFacilitationTradeSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsFacilitationTradeSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsFacilitationTradeSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsFacilitationTradeBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsFacilitationTradeMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsFacilitationTradeCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsFacilitationTradeQTY: TLargeintField
      FieldName = 'QTY'
    end
    object cdsFacilitationTradePRICE: TFloatField
      FieldName = 'PRICE'
    end
    object cdsFacilitationTradeVALUE: TFloatField
      FieldName = 'VALUE'
    end
    object cdsFacilitationTradeCDUEDATE: TDateField
      FieldName = 'CDUEDATE'
    end
    object cdsFacilitationTradeSDUEDATE: TDateField
      FieldName = 'SDUEDATE'
    end
    object cdsFacilitationTradeLISTED_DATE: TDateField
      FieldName = 'LISTED_DATE'
    end
    object cdsFacilitationTradeBOOKED_DATE: TDateField
      FieldName = 'BOOKED_DATE'
    end
    object cdsFacilitationTradeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsFacilitationTradeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsFacilitationTradeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsFacilitationTradeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsFacilitationTradeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsFacilitationTradeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsFacilitationTradeID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsWarehouseTrade: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'WAREHOUSEID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryWarehouseTrade'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 528
    Top = 216
    object cdsWarehouseTradeWAREHOUSEID: TLargeintField
      FieldName = 'WAREHOUSEID'
      Required = True
    end
    object cdsWarehouseTradeWAREHOUSECODE: TStringField
      FieldName = 'WAREHOUSECODE'
      Size = 30
    end
    object cdsWarehouseTradeWAREHOUSEDESC: TStringField
      FieldName = 'WAREHOUSEDESC'
      Size = 100
    end
    object cdsWarehouseTradeDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
    end
    object cdsWarehouseTradeDEALTICKETDATE: TDateField
      FieldName = 'DEALTICKETDATE'
    end
    object cdsWarehouseTradeACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsWarehouseTradeACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsWarehouseTradeACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsWarehouseTradeSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsWarehouseTradeSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsWarehouseTradeSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsWarehouseTradeBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsWarehouseTradeMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsWarehouseTradeCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsWarehouseTradeQTY: TLargeintField
      FieldName = 'QTY'
    end
    object cdsWarehouseTradePRICE: TFloatField
      FieldName = 'PRICE'
    end
    object cdsWarehouseTradeVALUE: TFloatField
      FieldName = 'VALUE'
    end
    object cdsWarehouseTradeCDUEDATE: TDateField
      FieldName = 'CDUEDATE'
    end
    object cdsWarehouseTradeSDUEDATE: TDateField
      FieldName = 'SDUEDATE'
    end
    object cdsWarehouseTradeLISTED_DATE: TDateField
      FieldName = 'LISTED_DATE'
    end
    object cdsWarehouseTradeBOOKED_DATE: TDateField
      FieldName = 'BOOKED_DATE'
    end
    object cdsWarehouseTradeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsWarehouseTradeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsWarehouseTradeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsWarehouseTradeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsWarehouseTradeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsWarehouseTradeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsWarehouseTradeID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsCrossTomChooseList: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 232
    Top = 368
    object cdsCrossTomChooseListDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsCrossTomChooseListDEALTICKETCODE: TStringField
      DisplayWidth = 20
      FieldName = 'DEALTICKETCODE'
      Required = True
      Size = 30
    end
    object cdsCrossTomChooseListACCID: TIntegerField
      FieldName = 'ACCID'
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
    end
    object cdsCrossTomChooseListACCNO: TStringField
      DisplayWidth = 15
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCrossTomChooseListACCNAME: TStringField
      DisplayWidth = 50
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCrossTomChooseListSTOCKCODE: TStringField
      DisplayWidth = 10
      FieldName = 'STOCKCODE'
    end
    object cdsCrossTomChooseListSTOCKNAME: TStringField
      DisplayWidth = 50
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsCrossTomChooseListMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsCrossTomChooseListCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCrossTomChooseListDEALQTY: TLargeintField
      FieldName = 'DEALQTY'
      DisplayFormat = '#,##0'
    end
    object cdsCrossTomChooseListDEALPRICE: TFloatField
      FieldName = 'DEALPRICE'
      DisplayFormat = '#,##0.00'
    end
    object cdsCrossTomChooseListDEALVALUE: TFloatField
      FieldName = 'DEALVALUE'
      DisplayFormat = '#,##0'
    end
  end
  object cdsCrossTomTrade: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CROSSTOMID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryCrossTomTrade'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 368
    Top = 368
    object cdsCrossTomTradeCROSSTOMID: TLargeintField
      FieldName = 'CROSSTOMID'
      Required = True
    end
    object cdsCrossTomTradeCROSSTOMCODE: TStringField
      FieldName = 'CROSSTOMCODE'
      Size = 30
    end
    object cdsCrossTomTradeCROSSTOMDESC: TStringField
      FieldName = 'CROSSTOMDESC'
      Size = 100
    end
    object cdsCrossTomTradeDEALTICKETID_BUY: TLargeintField
      FieldName = 'DEALTICKETID_BUY'
    end
    object cdsCrossTomTradeSEQID_BUY: TIntegerField
      FieldName = 'SEQID_BUY'
    end
    object cdsCrossTomTradeDEALTICKETID_SELL: TLargeintField
      FieldName = 'DEALTICKETID_SELL'
    end
    object cdsCrossTomTradeSEQID_SELL: TIntegerField
      FieldName = 'SEQID_SELL'
    end
    object cdsCrossTomTradeDEALTICKETDATE: TDateField
      FieldName = 'DEALTICKETDATE'
    end
    object cdsCrossTomTradeACCID_BUY: TIntegerField
      FieldName = 'ACCID_BUY'
    end
    object cdsCrossTomTradeACCNO_BUY: TStringField
      FieldName = 'ACCNO_BUY'
      Size = 30
    end
    object cdsCrossTomTradeACCNAME_BUY: TStringField
      FieldName = 'ACCNAME_BUY'
      Size = 150
    end
    object cdsCrossTomTradeACCID_SELL: TIntegerField
      FieldName = 'ACCID_SELL'
    end
    object cdsCrossTomTradeACCNO_SELL: TStringField
      FieldName = 'ACCNO_SELL'
      Size = 30
    end
    object cdsCrossTomTradeACCNAME_SELL: TStringField
      FieldName = 'ACCNAME_SELL'
      Size = 150
    end
    object cdsCrossTomTradeSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsCrossTomTradeSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsCrossTomTradeSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsCrossTomTradeMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsCrossTomTradeCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCrossTomTradeQTY: TLargeintField
      FieldName = 'QTY'
    end
    object cdsCrossTomTradePRICE: TFloatField
      FieldName = 'PRICE'
    end
    object cdsCrossTomTradeVALUE: TFloatField
      FieldName = 'VALUE'
    end
    object cdsCrossTomTradeCDUEDATE: TDateField
      FieldName = 'CDUEDATE'
    end
    object cdsCrossTomTradeSDUEDATE: TDateField
      FieldName = 'SDUEDATE'
    end
    object cdsCrossTomTradeLISTED_DATE: TDateField
      FieldName = 'LISTED_DATE'
    end
    object cdsCrossTomTradeBOOKED_DATE: TDateField
      FieldName = 'BOOKED_DATE'
    end
    object cdsCrossTomTradeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsCrossTomTradeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCrossTomTradeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCrossTomTradeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCrossTomTradeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCrossTomTradeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCrossTomTradeID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsBookedOutWarehouseTrade: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ENTTID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DEALTICKETDATE'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'STOCKID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BS'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryBookOutWarehouseTrade'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 528
    Top = 264
    object cdsBookedOutWarehouseTradeWAREHOUSEID: TLargeintField
      FieldName = 'WAREHOUSEID'
      Required = True
    end
    object cdsBookedOutWarehouseTradeWAREHOUSECODE: TStringField
      FieldName = 'WAREHOUSECODE'
      Size = 30
    end
    object cdsBookedOutWarehouseTradeWAREHOUSEDESC: TStringField
      FieldName = 'WAREHOUSEDESC'
      Size = 100
    end
    object cdsBookedOutWarehouseTradeDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
    end
    object cdsBookedOutWarehouseTradeDEALTICKETDATE: TDateField
      FieldName = 'DEALTICKETDATE'
    end
    object cdsBookedOutWarehouseTradeACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsBookedOutWarehouseTradeACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsBookedOutWarehouseTradeACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsBookedOutWarehouseTradeSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsBookedOutWarehouseTradeSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsBookedOutWarehouseTradeSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsBookedOutWarehouseTradeBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsBookedOutWarehouseTradeMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsBookedOutWarehouseTradeCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsBookedOutWarehouseTradeQTY: TLargeintField
      FieldName = 'QTY'
    end
    object cdsBookedOutWarehouseTradePRICE: TFloatField
      FieldName = 'PRICE'
    end
    object cdsBookedOutWarehouseTradeVALUE: TFloatField
      FieldName = 'VALUE'
    end
    object cdsBookedOutWarehouseTradeCDUEDATE: TDateField
      FieldName = 'CDUEDATE'
    end
    object cdsBookedOutWarehouseTradeSDUEDATE: TDateField
      FieldName = 'SDUEDATE'
    end
    object cdsBookedOutWarehouseTradeLISTED_DATE: TDateField
      FieldName = 'LISTED_DATE'
    end
    object cdsBookedOutWarehouseTradeBOOKED_DATE: TDateField
      FieldName = 'BOOKED_DATE'
    end
    object cdsBookedOutWarehouseTradeBOOKED_DEALTICKETID: TLargeintField
      FieldName = 'BOOKED_DEALTICKETID'
    end
    object cdsBookedOutWarehouseTradeBOOKED_DEALTICKETSEQID: TIntegerField
      FieldName = 'BOOKED_DEALTICKETSEQID'
    end
    object cdsBookedOutWarehouseTradeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsBookedOutWarehouseTradeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBookedOutWarehouseTradeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBookedOutWarehouseTradeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBookedOutWarehouseTradeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBookedOutWarehouseTradeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBookedOutWarehouseTradeID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsWarehouseTradeByDealTicket: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'DEALTICKETID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryWarehouseTradeByDealTicket'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 528
    Top = 312
    object cdsWarehouseTradeByDealTicketWAREHOUSEID: TLargeintField
      FieldName = 'WAREHOUSEID'
      Required = True
    end
    object cdsWarehouseTradeByDealTicketWAREHOUSECODE: TStringField
      FieldName = 'WAREHOUSECODE'
      Size = 30
    end
    object cdsWarehouseTradeByDealTicketWAREHOUSEDESC: TStringField
      FieldName = 'WAREHOUSEDESC'
      Size = 100
    end
    object cdsWarehouseTradeByDealTicketDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
    end
    object cdsWarehouseTradeByDealTicketDEALTICKETDATE: TDateField
      FieldName = 'DEALTICKETDATE'
    end
    object cdsWarehouseTradeByDealTicketACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsWarehouseTradeByDealTicketACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsWarehouseTradeByDealTicketACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsWarehouseTradeByDealTicketSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsWarehouseTradeByDealTicketSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsWarehouseTradeByDealTicketSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsWarehouseTradeByDealTicketBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsWarehouseTradeByDealTicketMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsWarehouseTradeByDealTicketCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsWarehouseTradeByDealTicketQTY: TLargeintField
      FieldName = 'QTY'
    end
    object cdsWarehouseTradeByDealTicketPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object cdsWarehouseTradeByDealTicketVALUE: TFloatField
      FieldName = 'VALUE'
    end
    object cdsWarehouseTradeByDealTicketCDUEDATE: TDateField
      FieldName = 'CDUEDATE'
    end
    object cdsWarehouseTradeByDealTicketSDUEDATE: TDateField
      FieldName = 'SDUEDATE'
    end
    object cdsWarehouseTradeByDealTicketLISTED_DATE: TDateField
      FieldName = 'LISTED_DATE'
    end
    object cdsWarehouseTradeByDealTicketBOOKED_DATE: TDateField
      FieldName = 'BOOKED_DATE'
    end
    object cdsWarehouseTradeByDealTicketBOOKED_DEALTICKETID: TLargeintField
      FieldName = 'BOOKED_DEALTICKETID'
    end
    object cdsWarehouseTradeByDealTicketBOOKED_DEALTICKETSEQID: TIntegerField
      FieldName = 'BOOKED_DEALTICKETSEQID'
    end
    object cdsWarehouseTradeByDealTicketSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsWarehouseTradeByDealTicketMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsWarehouseTradeByDealTicketMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsWarehouseTradeByDealTicketAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsWarehouseTradeByDealTicketAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsWarehouseTradeByDealTicketISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsWarehouseTradeByDealTicketID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsSplitDetailAlloc: TNClientDataset
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsSplitDetailAllocNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 488
    Top = 368
    object cdsSplitDetailAllocDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsSplitDetailAllocSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsSplitDetailAllocACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsSplitDetailAllocACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsSplitDetailAllocAQTY: TLargeintField
      FieldName = 'AQTY'
      DisplayFormat = '#,##0'
    end
    object cdsSplitDetailAllocAPRICE: TFloatField
      FieldName = 'APRICE'
      OnChange = cdsSplitDetailAllocAPRICEChange
      DisplayFormat = '#,##0.########'
    end
    object cdsSplitDetailAllocAVALUE: TFloatField
      FieldName = 'AVALUE'
      DisplayFormat = '#,##0.00'
    end
    object cdsSplitDetailAllocMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSplitDetailAllocMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSplitDetailAllocAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSplitDetailAllocAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSplitDetailAllocISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSplitDetailAllocID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSplitDetailAllocACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsSplitDetailAllocDUESTOCK: TIntegerField
      FieldName = 'DUESTOCK'
    end
    object cdsSplitDetailAllocDUECASH: TIntegerField
      FieldName = 'DUECASH'
    end
  end
  object cdsDealTicketAllocList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'STARTDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENDDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FILTERBYENTITY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENTTID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USERID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDealTicketAllocList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 664
    Top = 160
    object cdsDealTicketAllocListDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsDealTicketAllocListSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsDealTicketAllocListACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsDealTicketAllocListACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDealTicketAllocListACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDealTicketAllocListAQTY: TLargeintField
      FieldName = 'AQTY'
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketAllocListAPRICE: TFloatField
      FieldName = 'APRICE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsDealTicketAllocListCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsDealTicketAllocListAVALUE: TFloatField
      FieldName = 'AVALUE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsDealTicketAllocListRVSD: TStringField
      FieldName = 'RVSD'
      Size = 1
    end
    object cdsDealTicketAllocListRVSD_DTID: TLargeintField
      FieldName = 'RVSD_DTID'
    end
    object cdsDealTicketAllocListCOR_DTID: TLargeintField
      FieldName = 'COR_DTID'
    end
    object cdsDealTicketAllocListRVSDDATE: TDateField
      FieldName = 'RVSDDATE'
    end
    object cdsDealTicketAllocListCONID: TLargeintField
      FieldName = 'CONID'
    end
    object cdsDealTicketAllocListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDealTicketAllocListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealTicketAllocListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDealTicketAllocListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealTicketAllocListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDealTicketAllocListID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsDealTicketAllocList: TDataSource
    DataSet = cdsDealTicketAllocList
    Left = 664
    Top = 208
  end
  object cdsCrossTom: TNClientDataset
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsCrossTomNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 368
    Top = 424
    object cdsCrossTomDEALTICKETDATE: TDateField
      FieldName = 'DEALTICKETDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCrossTomMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsCrossTomCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCrossTomCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Required = True
      Size = 10
    end
    object cdsCrossTomBUYACCID: TIntegerField
      FieldName = 'BUYACCID'
      Required = True
      OnChange = cdsCrossTomBUYACCIDChange
    end
    object cdsCrossTomBUYACCNO: TStringField
      FieldName = 'BUYACCNO'
      Required = True
      Size = 30
    end
    object cdsCrossTomBUYACCNAME: TStringField
      FieldName = 'BUYACCNAME'
      Required = True
      Size = 150
    end
    object cdsCrossTomSELLACCID: TIntegerField
      FieldName = 'SELLACCID'
      Required = True
      OnChange = cdsCrossTomSELLACCIDChange
    end
    object cdsCrossTomSELLACCNO: TStringField
      FieldName = 'SELLACCNO'
      Required = True
      Size = 30
    end
    object cdsCrossTomSELLACCNAME: TStringField
      FieldName = 'SELLACCNAME'
      Required = True
      Size = 150
    end
    object cdsCrossTomSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      Required = True
      OnChange = cdsCrossTomSTOCKIDChange
    end
    object cdsCrossTomSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Required = True
    end
    object cdsCrossTomSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Required = True
      Size = 150
    end
    object cdsCrossTomDUESTOCK: TIntegerField
      FieldName = 'DUESTOCK'
      Required = True
    end
    object cdsCrossTomDUECASH: TIntegerField
      FieldName = 'DUECASH'
      Required = True
    end
    object cdsCrossTomDEALQTY: TLargeintField
      FieldName = 'DEALQTY'
      Required = True
      OnChange = cdsCrossTomDEALQTYChange
      DisplayFormat = '#,##0'
    end
    object cdsCrossTomDEALPRICE: TFloatField
      FieldName = 'DEALPRICE'
      Required = True
      OnChange = cdsCrossTomDEALQTYChange
      DisplayFormat = '#,##0.############'
    end
    object cdsCrossTomDEALVALUE: TFloatField
      FieldName = 'DEALVALUE'
      Required = True
      DisplayFormat = '#,##0.############'
    end
    object cdsCrossTomBUYCALC_METHOD: TStringField
      FieldName = 'BUYCALC_METHOD'
      Size = 2
    end
    object cdsCrossTomBUYCOMM_RATE: TFloatField
      FieldName = 'BUYCOMM_RATE'
      DisplayFormat = '#,##0.0000 %'
      EditFormat = '#.0000'
    end
    object cdsCrossTomSELLCALC_METHOD: TStringField
      FieldName = 'SELLCALC_METHOD'
      Size = 2
    end
    object cdsCrossTomSELLCOMM_RATE: TFloatField
      FieldName = 'SELLCOMM_RATE'
      DisplayFormat = '#,##0.0000 %'
      EditFormat = '#.0000'
    end
  end
  object cdsNegoTom: TNClientDataset
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsNegoTomNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 368
    Top = 472
    object cdsNegoTomDEALTICKETDATE: TDateField
      FieldName = 'DEALTICKETDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsNegoTomACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
      OnChange = cdsNegoTomACCIDChange
    end
    object cdsNegoTomACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsNegoTomACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsNegoTomSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      Required = True
      OnChange = cdsNegoTomSTOCKIDChange
    end
    object cdsNegoTomSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsNegoTomSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsNegoTomBS: TStringField
      FieldName = 'BS'
      Required = True
      Size = 1
    end
    object cdsNegoTomMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      OnChange = cdsNegoTomACCIDChange
      Size = 10
    end
    object cdsNegoTomCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsNegoTomCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Required = True
      OnChange = cdsNegoTomACCIDChange
      Size = 10
    end
    object cdsNegoTomOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsNegoTomDEALQTY: TLargeintField
      FieldName = 'DEALQTY'
      Required = True
      OnChange = cdsNegoTomDEALQTYChange
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsNegoTomDEALPRICE: TFloatField
      FieldName = 'DEALPRICE'
      Required = True
      OnChange = cdsNegoTomDEALQTYChange
      DisplayFormat = '#,##0.############'
      EditFormat = '#.############'
    end
    object cdsNegoTomDEALVALUE: TFloatField
      FieldName = 'DEALVALUE'
      DisplayFormat = '#,##0.############'
    end
    object cdsNegoTomSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsNegoTomDEALERID: TLargeintField
      FieldName = 'DEALERID'
    end
    object cdsNegoTomDUESTOCK: TIntegerField
      FieldName = 'DUESTOCK'
      Required = True
    end
    object cdsNegoTomDUECASH: TIntegerField
      FieldName = 'DUECASH'
      Required = True
    end
    object cdsNegoTomCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Required = True
      Size = 2
    end
    object cdsNegoTomCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      Required = True
      DisplayFormat = '#,##0.#### %'
      EditFormat = '#.####'
    end
  end
  object cdsDealTicketAllocTmp: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 666
    Top = 258
    object cdsDealTicketAllocTmpACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDealTicketAllocTmpACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDealTicketAllocTmpAQTY: TLargeintField
      FieldName = 'AQTY'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsDealTicketAllocTmpAPRICE: TFloatField
      FieldName = 'APRICE'
      DisplayFormat = '#,##0.##########'
      EditFormat = '#.##########'
    end
    object cdsDealTicketAllocTmpAVALUE: TFloatField
      FieldName = 'AVALUE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsDealTicketAllocTmpACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsDealTicketAllocTmpADIFFVALUE: TFloatField
      FieldName = 'ADIFFVALUE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsDealTicketAllocTmpCHKSELECTED: TStringField
      FieldName = 'CHKSELECTED'
      Size = 1
    end
  end
  object cdsMergeDealTicket: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DTID_LIST'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryMergeDealTicket'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 488
    Top = 424
    object cdsMergeDealTicketACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsMergeDealTicketSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsMergeDealTicketBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsMergeDealTicketMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsMergeDealTicketCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Size = 10
    end
    object cdsMergeDealTicketQTY: TLargeintField
      FieldName = 'QTY'
      DisplayFormat = '#,##0'
    end
    object cdsMergeDealTicketPRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '#,##0.############'
    end
    object cdsMergeDealTicketVALUE: TFloatField
      FieldName = 'VALUE'
      DisplayFormat = '#,##0.############'
    end
    object cdsMergeDealTicketACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsMergeDealTicketACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsMergeDealTicketSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsMergeDealTicketSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
  end
  object cdsUpdateAutoAlloc: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'DEALTICKETID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryUpdateAutoAlloac'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 795
    Top = 189
  end
  object cdsSplitExecDeal: TNClientDataset
    Aggregates = <>
    IndexFieldNames = 'DEALTICKETID'
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 600
    Top = 368
    object cdsSplitExecDealDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsSplitExecDealDEALTICKETCODE: TStringField
      FieldName = 'DEALTICKETCODE'
      Required = True
      Size = 30
    end
    object cdsSplitExecDealDEALTICKETDATE: TDateField
      FieldName = 'DEALTICKETDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSplitExecDealACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsSplitExecDealACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsSplitExecDealSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsSplitExecDealSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsSplitExecDealSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsSplitExecDealBS: TStringField
      FieldName = 'BS'
      Required = True
      Size = 1
    end
    object cdsSplitExecDealMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsSplitExecDealCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsSplitExecDealCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Size = 10
    end
    object cdsSplitExecDealOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsSplitExecDealDEALQTY: TLargeintField
      FieldName = 'DEALQTY'
      DisplayFormat = '#,##0'
    end
    object cdsSplitExecDealDEALPRICE: TFloatField
      FieldName = 'DEALPRICE'
      DisplayFormat = '#,##0.############'
    end
    object cdsSplitExecDealDEALVALUE: TFloatField
      FieldName = 'DEALVALUE'
      DisplayFormat = '#,##0.############'
    end
    object cdsSplitExecDealALLOCQTY: TLargeintField
      FieldName = 'ALLOCQTY'
      DisplayFormat = '#,##0'
    end
    object cdsSplitExecDealSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsSplitExecDealDEALERID: TLargeintField
      FieldName = 'DEALERID'
    end
    object cdsSplitExecDealDUESTOCK: TIntegerField
      FieldName = 'DUESTOCK'
    end
    object cdsSplitExecDealDUECASH: TIntegerField
      FieldName = 'DUECASH'
    end
    object cdsSplitExecDealPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsSplitExecDealMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSplitExecDealMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSplitExecDealAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSplitExecDealAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSplitExecDealISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSplitExecDealID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSplitExecDealACCID: TIntegerField
      FieldName = 'ACCID'
      LookupDataSet = dmLookup.cdsLuTradingAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
    end
    object cdsSplitExecDealDAYTRADE: TStringField
      FieldName = 'DAYTRADE'
      Size = 1
    end
    object cdsSplitExecDealCONID: TLargeintField
      FieldName = 'CONID'
    end
    object cdsSplitExecDealSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsSplitExecDealCDUEDATE: TDateField
      FieldName = 'CDUEDATE'
    end
    object cdsSplitExecDealSDUEDATE: TDateField
      FieldName = 'SDUEDATE'
    end
    object cdsSplitExecDealSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsSplitExecDealOLD_DEALTICKETID: TLargeintField
      FieldName = 'OLD_DEALTICKETID'
    end
    object cdsSplitExecDealCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsSplitExecDealCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      DisplayFormat = '#,##0.0000 %'
      EditFormat = '#.0000'
    end
    object cdsSplitExecDealROUNDPRICE: TFloatField
      FieldName = 'ROUNDPRICE'
      DisplayFormat = '#,##0.############'
    end
    object cdsSplitExecDealROUNDVALUE: TFloatField
      FieldName = 'ROUNDVALUE'
      DisplayFormat = '#,##0.############'
    end
    object cdsSplitExecDealDIFFVALUE: TFloatField
      FieldName = 'DIFFVALUE'
      DisplayFormat = '#,##0.############;(#,##0.############);0'
    end
    object cdsSplitExecDealACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsSplitExecDealAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsSplitExecDealSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsSplitExecDealDCCYAMT: TFloatField
      FieldName = 'DCCYAMT'
    end
    object cdsSplitExecDealCNNO: TStringField
      FieldName = 'CNNO'
    end
    object cdsSplitExecDealCXLD: TStringField
      FieldName = 'CXLD'
      Size = 1
    end
    object cdsSplitExecDealRVSD: TStringField
      FieldName = 'RVSD'
      Size = 1
    end
    object cdsSplitExecDealRVSD_DTID: TIntegerField
      FieldName = 'RVSD_DTID'
    end
    object cdsSplitExecDealRVSDDATE: TDateTimeField
      FieldName = 'RVSDDATE'
    end
    object cdsSplitExecDealRVS: TStringField
      FieldName = 'RVS'
      Size = 1
    end
    object cdsSplitExecDealRVS_STS: TStringField
      FieldName = 'RVS_STS'
      Size = 1
    end
    object cdsSplitExecDealEXTERNALID: TStringField
      FieldName = 'EXTERNALID'
    end
    object cdsSplitExecDealSALES_BRANCHID: TLargeintField
      FieldName = 'SALES_BRANCHID'
    end
    object cdsSplitExecDealISOMG: TStringField
      FieldName = 'ISOMG'
      Size = 1
    end
    object cdsSplitExecDealISAVGPRICE: TStringField
      FieldKind = fkLookup
      FieldName = 'ISAVGPRICE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ISAVGPRICE'
      KeyFields = 'ACCID'
      Size = 1
      Lookup = True
    end
  end
  object cdsSplitExec: TNClientDataset
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsSplitExecIndex1'
        Fields = 'DEALTICKETID;SEQID'
      end>
    IndexFieldNames = 'DEALTICKETID;SEQID'
    Params = <>
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 600
    Top = 416
    object cdsSplitExecDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsSplitExecSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsSplitExecBOARDID: TLargeintField
      FieldName = 'BOARDID'
    end
    object cdsSplitExecBROKERCODE: TStringField
      FieldName = 'BROKERCODE'
      Size = 10
    end
    object cdsSplitExecEXQTY: TLargeintField
      FieldName = 'EXQTY'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsSplitExecEXPRICE: TFloatField
      FieldName = 'EXPRICE'
      DisplayFormat = '#,##0.########'
      EditFormat = '#.########'
    end
    object cdsSplitExecEXVALUE: TFloatField
      FieldName = 'EXVALUE'
      DisplayFormat = '#,##0.####'
    end
    object cdsSplitExecEXTIME: TTimeField
      FieldName = 'EXTIME'
    end
    object cdsSplitExecTRDID: TStringField
      FieldName = 'TRDID'
    end
    object cdsSplitExecMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSplitExecMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSplitExecAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSplitExecAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSplitExecISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSplitExecID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSplitExecCPACCID: TIntegerField
      FieldName = 'CPACCID'
    end
    object cdsSplitExecDUECASH: TDateTimeField
      FieldName = 'DUECASH'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSplitExecDUESTOCK: TDateTimeField
      FieldName = 'DUESTOCK'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSplitExecCPTYPE: TStringField
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
  object cdsDealTicketX: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'DEALTICKETID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDealTicket'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsDealTicketXBeforePost
    OnNewRecord = cdsDealTicketXNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 96
    Top = 464
    object cdsDealTicketXDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsDealTicketXDEALTICKETCODE: TStringField
      FieldName = 'DEALTICKETCODE'
      Required = True
      Size = 30
    end
    object cdsDealTicketXDEALTICKETDATE: TDateField
      FieldName = 'DEALTICKETDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDealTicketXACCID: TIntegerField
      FieldName = 'ACCID'
      OnChange = cdsDealTicketXACCIDChange
    end
    object cdsDealTicketXACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDealTicketXACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDealTicketXSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      OnChange = cdsDealTicketXSTOCKIDChange
    end
    object cdsDealTicketXSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsDealTicketXSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsDealTicketXACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsDealTicketXAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsDealTicketXCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsDealTicketXCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      DisplayFormat = '#,##0.#### %'
    end
    object cdsDealTicketXBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsDealTicketXMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsDealTicketXCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsDealTicketXSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsDealTicketXCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Size = 10
    end
    object cdsDealTicketXOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsDealTicketXDEALQTY: TLargeintField
      FieldName = 'DEALQTY'
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketXDEALPRICE: TFloatField
      FieldName = 'DEALPRICE'
      OnChange = cdsDealTicketXDEALPRICEChange
      DisplayFormat = '#,##0.############'
    end
    object cdsDealTicketXDEALVALUE: TFloatField
      FieldName = 'DEALVALUE'
      DisplayFormat = '#,##0.############'
    end
    object cdsDealTicketXALLOCQTY: TLargeintField
      FieldName = 'ALLOCQTY'
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketXROUNDPRICE: TFloatField
      FieldName = 'ROUNDPRICE'
      DisplayFormat = '#,##0.############'
    end
    object cdsDealTicketXROUNDVALUE: TFloatField
      FieldName = 'ROUNDVALUE'
      DisplayFormat = '#,##0.############'
    end
    object cdsDealTicketXDIFFVALUE: TFloatField
      FieldName = 'DIFFVALUE'
      DisplayFormat = '#,##0.############'
    end
    object cdsDealTicketXDCCYAMT: TFloatField
      FieldName = 'DCCYAMT'
    end
    object cdsDealTicketXSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsDealTicketXDEALERID: TLargeintField
      FieldName = 'DEALERID'
    end
    object cdsDealTicketXDUESTOCK: TIntegerField
      FieldName = 'DUESTOCK'
    end
    object cdsDealTicketXDUECASH: TIntegerField
      FieldName = 'DUECASH'
    end
    object cdsDealTicketXPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsDealTicketXDAYTRADE: TStringField
      FieldName = 'DAYTRADE'
      Size = 1
    end
    object cdsDealTicketXCONID: TLargeintField
      FieldName = 'CONID'
    end
    object cdsDealTicketXCNNO: TStringField
      FieldName = 'CNNO'
    end
    object cdsDealTicketXCXLD: TStringField
      FieldName = 'CXLD'
      Size = 1
    end
    object cdsDealTicketXRVSD: TStringField
      FieldName = 'RVSD'
      Size = 1
    end
    object cdsDealTicketXRVSD_DTID: TIntegerField
      FieldName = 'RVSD_DTID'
    end
    object cdsDealTicketXRVSDDATE: TDateTimeField
      FieldName = 'RVSDDATE'
    end
    object cdsDealTicketXRVS: TStringField
      FieldName = 'RVS'
      Size = 1
    end
    object cdsDealTicketXRVS_STS: TStringField
      FieldName = 'RVS_STS'
      Size = 1
    end
    object cdsDealTicketXCDUEDATE: TDateField
      FieldName = 'CDUEDATE'
    end
    object cdsDealTicketXSDUEDATE: TDateField
      FieldName = 'SDUEDATE'
    end
    object cdsDealTicketXSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsDealTicketXOLD_DEALTICKETID: TLargeintField
      FieldName = 'OLD_DEALTICKETID'
    end
    object cdsDealTicketXEXTERNALID: TStringField
      FieldName = 'EXTERNALID'
    end
    object cdsDealTicketXSALES_BRANCHID: TLargeintField
      FieldName = 'SALES_BRANCHID'
    end
    object cdsDealTicketXSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsDealTicketXMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDealTicketXMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealTicketXAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDealTicketXAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealTicketXISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDealTicketXID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDealTicketXISOMG: TStringField
      FieldName = 'ISOMG'
      Size = 1
    end
    object cdsDealTicketXqryDealTicketAlloc: TDataSetField
      FieldName = 'qryDealTicketAlloc'
    end
    object cdsDealTicketXqryDealTicketExec: TDataSetField
      FieldName = 'qryDealTicketExec'
    end
  end
  object cdsDealTicketExecX: TNClientDataset
    Aggregates = <>
    DataSetField = cdsDealTicketXqryDealTicketExec
    Params = <>
    BeforeEdit = cdsDealTicketExecXBeforeEdit
    BeforePost = cdsDealTicketExecXBeforePost
    BeforeDelete = cdsDealTicketExecXBeforeDelete
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Left = 184
    Top = 464
    object cdsDealTicketExecXDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsDealTicketExecXSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsDealTicketExecXBOARDID: TLargeintField
      FieldName = 'BOARDID'
      OnChange = cdsDealTicketExecXBOARDIDChange
    end
    object cdsDealTicketExecXBROKERCODE: TStringField
      FieldName = 'BROKERCODE'
      OnChange = cdsDealTicketExecXBROKERCODEChange
      Size = 10
    end
    object cdsDealTicketExecXEXQTY: TLargeintField
      FieldName = 'EXQTY'
      OnChange = cdsDealTicketExecXEXQTYChange
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketExecXEXPRICE: TFloatField
      FieldName = 'EXPRICE'
      OnChange = cdsDealTicketExecXEXQTYChange
      DisplayFormat = '#,##0.########'
    end
    object cdsDealTicketExecXEXVALUE: TFloatField
      FieldName = 'EXVALUE'
      DisplayFormat = '#,##0.####'
    end
    object cdsDealTicketExecXEXTIME: TTimeField
      FieldName = 'EXTIME'
    end
    object cdsDealTicketExecXDUECASH: TDateTimeField
      FieldName = 'DUECASH'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDealTicketExecXDUESTOCK: TDateTimeField
      FieldName = 'DUESTOCK'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDealTicketExecXTRDID: TStringField
      FieldName = 'TRDID'
    end
    object cdsDealTicketExecXMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDealTicketExecXMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealTicketExecXAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDealTicketExecXAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealTicketExecXISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDealTicketExecXID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDealTicketExecXCPACCID: TIntegerField
      FieldName = 'CPACCID'
    end
    object cdsDealTicketExecXSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsDealTicketExecXCPTYPE: TStringField
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
  object cdsPermanentAlloc: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryPermanentAlloc'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 795
    Top = 234
  end
  object cdsDealTicketAllocX: TNClientDataset
    Aggregates = <>
    DataSetField = cdsDealTicketXqryDealTicketAlloc
    Params = <>
    BeforeEdit = cdsDealTicketAllocXBeforeEdit
    BeforePost = cdsDealTicketAllocXBeforePost
    BeforeDelete = cdsDealTicketAllocXBeforeDelete
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Left = 280
    Top = 464
    object cdsDealTicketAllocXDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsDealTicketAllocXSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsDealTicketAllocXACCID: TIntegerField
      FieldName = 'ACCID'
      OnChange = cdsDealTicketAllocXACCIDChange
    end
    object cdsDealTicketAllocXACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDealTicketAllocXACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDealTicketAllocXACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsDealTicketAllocXAQTY: TLargeintField
      FieldName = 'AQTY'
      OnChange = cdsDealTicketAllocXAQTYChange
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsDealTicketAllocXAPRICE: TFloatField
      FieldName = 'APRICE'
      OnChange = cdsDealTicketAllocXAQTYChange
      DisplayFormat = '#,##0.##########'
      EditFormat = '#.##########'
    end
    object cdsDealTicketAllocXCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsDealTicketAllocXAVALUE: TFloatField
      FieldName = 'AVALUE'
    end
    object cdsDealTicketAllocXMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDealTicketAllocXMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealTicketAllocXAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDealTicketAllocXAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealTicketAllocXISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDealTicketAllocXID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDealTicketAllocXADIFFVALUE: TFloatField
      FieldName = 'ADIFFVALUE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsDealTicketAllocXEXT_REF: TStringField
      FieldName = 'EXT_REF'
    end
    object cdsDealTicketAllocXCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsDealTicketAllocXCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
    end
  end
end
