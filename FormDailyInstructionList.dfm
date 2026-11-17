inherited frmDailyInstructionList: TfrmDailyInstructionList
  Caption = 'Daily Instruction'
  ClientHeight = 596
  ClientWidth = 1159
  ExplicitWidth = 1159
  ExplicitHeight = 596
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1159
    Height = 570
    PopupMenu = PopupMenu
    LevelTabs.Style = 9
    RootLevelOptions.DetailTabsPosition = dtpTop
    ExplicitWidth = 1159
    ExplicitHeight = 570
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Created'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Downloaded'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Settled'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Canceled'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwMasterInstructionID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InstructionID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterexternalReference: TcxGridDBBandedColumn
        DataBinding.FieldName = 'externalReference'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterinstructionType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'instructionType'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMastertradeDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tradeDate'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMastersettlementDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'settlementDate'
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterAccount_Code: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Account_Code'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterAccount_Name: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Account_Name'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterksei_sid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ksei_sid'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterparticipantCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'participantCode'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterparticipantAccount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'participantAccount'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMastersecurityCodeType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'securityCodeType'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMastersecurityCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'securityCode'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasternumberOfSecurities: TcxGridDBBandedColumn
        DataBinding.FieldName = 'numberOfSecurities'
        Width = 107
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMastersettlementAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'settlementAmount'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterdescription: TcxGridDBBandedColumn
        DataBinding.FieldName = 'description'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterpurpose: TcxGridDBBandedColumn
        DataBinding.FieldName = 'purpose'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMastertradingReference: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tradingReference'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMastersettlementReason: TcxGridDBBandedColumn
        DataBinding.FieldName = 'settlementReason'
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterStatus: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Status'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterTRANSNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSNO'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterTRANSTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSTYPE'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterTRANSTYPE_NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSTYPE_NAME'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterEXCHANGE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXCHANGE'
        Width = 53
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterCREATED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATED_DATE'
        Width = 110
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCREATED_SYSTEMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATED_SYSTEMDATE'
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCREATED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATED_UI'
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterDOWNLOAD_COUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DOWNLOAD_COUNT'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterDOWNLOAD_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DOWNLOAD_DATE'
        Width = 110
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterDOWNLOAD_USER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DOWNLOAD_USER'
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL_DATE'
        Width = 110
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL_SYSTEMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL_SYSTEMDATE'
        Width = 80
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL_NOTES: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL_NOTES'
        Width = 200
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL_UI'
        Width = 80
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSETTLED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_DATE'
        Width = 110
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSETTLED_SYSTEMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_SYSTEMDATE'
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterSETTLED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_UI'
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object gvwNonMarketTrans: TcxGridDBBandedTableView [1]
      PopupMenu = popMaster
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsDailyInstructionNMTList
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      FilterRow.Visible = True
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Created'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Downloaded'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Settled'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Canceled'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwNonMarketTransInstructionID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InstructionID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwNonMarketTransexternalReference: TcxGridDBBandedColumn
        DataBinding.FieldName = 'externalReference'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwNonMarketTransinstructionType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'instructionType'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwNonMarketTranstradeDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tradeDate'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwNonMarketTranssettlementDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'settlementDate'
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwNonMarketTransAccount_Code: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Account_Code'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwNonMarketTransAccount_Name: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Account_Name'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwNonMarketTransksei_sid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ksei_sid'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwNonMarketTransparticipantCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'participantCode'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwNonMarketTransparticipantAccount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'participantAccount'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwNonMarketTranssecurityCodeType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'securityCodeType'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwNonMarketTranssecurityCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'securityCode'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwNonMarketTransnumberOfSecurities: TcxGridDBBandedColumn
        DataBinding.FieldName = 'numberOfSecurities'
        Width = 107
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwNonMarketTranssettlementAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'settlementAmount'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwNonMarketTransdescription: TcxGridDBBandedColumn
        DataBinding.FieldName = 'description'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwNonMarketTranspurpose: TcxGridDBBandedColumn
        DataBinding.FieldName = 'purpose'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwNonMarketTranstradingReference: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tradingReference'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwNonMarketTranssettlementReason: TcxGridDBBandedColumn
        DataBinding.FieldName = 'settlementReason'
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwNonMarketTransStatus: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Status'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwNonMarketTransTRANSNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSNO'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwNonMarketTransTRANSTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSTYPE'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwNonMarketTransTRANSTYPE_NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSTYPE_NAME'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwNonMarketTransEXCHANGE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXCHANGE'
        Width = 53
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwNonMarketTransCREATED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATED_DATE'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwNonMarketTransCREATED_SYSTEMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATED_SYSTEMDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwNonMarketTransCREATED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATED_UI'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwNonMarketTransDOWNLOAD_COUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DOWNLOAD_COUNT'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwNonMarketTransDOWNLOAD_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DOWNLOAD_DATE'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwNonMarketTransDOWNLOAD_USER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DOWNLOAD_USER'
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwNonMarketTransCANCEL_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL_DATE'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwNonMarketTransCANCEL_SYSTEMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL_SYSTEMDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwNonMarketTransCANCEL_NOTES: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL_NOTES'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwNonMarketTransCANCEL_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL_UI'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwNonMarketTransSETTLED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_DATE'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwNonMarketTransSETTLED_SYSTEMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_SYSTEMDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwNonMarketTransSETTLED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_UI'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
    end
    object gvwCashSettlementDeposit: TcxGridDBBandedTableView [2]
      PopupMenu = PopupMenu
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsCashSettlementDepositList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Download'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Create'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwCashSettlementDepositCashInstructionID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CashInstructionID'
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositInstruction_Type: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Instruction_Type'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositSettle_Side: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Settle_Side'
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositexternalReference: TcxGridDBBandedColumn
        DataBinding.FieldName = 'externalReference'
        Width = 146
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositparticipantCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'participantCode'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositsourceAccount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'sourceAccount'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwCashSettlementDeposittargetAccount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'targetAccount'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositcurrencyCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'currencyCode'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositsecurityCodeType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'securityCodeType'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositsecurityCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'securityCode'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositinstrumentQuantity: TcxGridDBBandedColumn
        DataBinding.FieldName = 'instrumentQuantity'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositsettlementDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'settlementDate'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositdescription: TcxGridDBBandedColumn
        DataBinding.FieldName = 'description'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositDownload_Count: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Download_Count'
        Width = 85
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositDownload_Date: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Download_Date'
        Width = 130
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositDownload_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Download_UI'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositCreate_Date: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Create_Date'
        Width = 130
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositCreate_SystemDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Create_SystemDate'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCashSettlementDepositCreate_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Create_UI'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      Caption = 'Market Transaction'
    end
    object grdMasterLevel2: TcxGridLevel
      Caption = 'Non Market Transaction'
      GridView = gvwNonMarketTrans
    end
    object grdMasterLevel3: TcxGridLevel
      Caption = 'Cash Settlement Deposit'
      GridView = gvwCashSettlementDeposit
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actCancelInstruction'
        Permission = 'Daily Instruction Cancel Instruction'
      end
      item
        ActionName = 'actXmlOTCInstruction'
        Permission = 'Daily Instruction Generate XML'
      end
      item
        ActionName = 'actXmlPTCInstruction'
        Permission = 'Daily Instruction Generate XML'
      end
      item
        ActionName = 'actXmlColwInstruction'
        Permission = 'Daily Instruction Generate XML'
      end
      item
        ActionName = 'actXmlSECTRSInstruction'
        Permission = 'Daily Instruction Generate XML'
      end
      item
        ActionName = 'actXmlBTInstruction'
        Permission = 'Daily Instruction Generate XML'
      end
      item
        ActionName = 'actXmlWTInstruction'
        Permission = 'Daily Instruction Generate XML'
      end
      item
        ActionName = 'actXmlVCAInstruction'
        Permission = 'Daily Instruction Generate XML'
      end
      item
        ActionName = 'actXmlColdsInstruction'
        Permission = 'Daily Instruction Generate XML'
      end
      item
        ActionName = 'actXlsColwInstruction'
        Permission = 'Daily Instruction Generate XLS'
      end
      item
        ActionName = 'actXlsColdsInstruction'
        Permission = 'Daily Instruction Generate XLS'
      end
      item
        ActionName = 'actXlsSECTRSInstruction'
        Permission = 'Daily Instruction Generate XLS'
      end
      item
        ActionName = 'actXlsBTInstruction'
        Permission = 'Daily Instruction Generate XLS'
      end
      item
        ActionName = 'actXlsWTInstruction'
        Permission = 'Daily Instruction Generate XLS'
      end
      item
        ActionName = 'actXlsVCAInstruction'
        Permission = 'Daily Instruction Generate XLS'
      end
      item
        ActionName = 'actGenerateCashSettleDeposit'
        Permission = 'Daily Instruction Generate Cash Settle Deposit'
      end
      item
        ActionName = 'acttxtSETDSInstruction'
        Permission = 'Daily Instruction Generate TXT'
      end
      item
        ActionName = 'acttxtVCAInstruction'
        Permission = 'Daily Instruction Generate TXT'
      end
      item
        ActionName = 'acttxtWTInstruction'
        Permission = 'Daily Instruction Generate TXT'
      end
      item
        ActionName = 'acttxtBTInstruction'
        Permission = 'Daily Instruction Generate TXT'
      end
      item
        ActionName = 'acttxtSECTRSInstruction'
        Permission = 'Daily Instruction Generate TXT'
      end
      item
        ActionName = 'acttxtCOLDSInstruction'
        Permission = 'Daily Instruction Generate TXT'
      end
      item
        ActionName = 'acttxtCOLWInstruction'
        Permission = 'Daily Instruction Generate TXT'
      end
      item
        ActionName = 'actTxttPTCInstruction'
        Permission = 'Daily Instruction Generate TXT'
      end
      item
        ActionName = 'actTxtOTCInstruction'
        Permission = 'Daily Instruction Generate TXT'
      end
      item
        ActionName = 'actXmlSETDSInstruction'
        Permission = 'Daily Instruction Generate XML'
      end
      item
        ActionName = 'actXlsSETDSInstruction'
        Permission = 'Daily Instruction Generate XLS'
      end
      item
        ActionName = 'actGenerateToXLS'
        Permission = 'Daily Instruction Generate SDS Cash XLS'
      end
      item
        ActionName = 'actGenerateToXML'
        Permission = 'Daily Instruction Generate SDS Cash XML'
      end
      item
        ActionName = 'actGenerateToTXT'
        Permission = 'Daily Instruction Generate SDS Cash TXT'
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
    object N5: TMenuItem [9]
      Caption = '-'
    end
    object GenerateXMLFile1: TMenuItem [10]
      Caption = 'Generate To XML File'
      object GenerateToXMLFile1: TMenuItem
        Action = actXmlOTCInstruction
      end
      object PTCInstruction1: TMenuItem
        Action = actXmlPTCInstruction
      end
      object COLWInstruction1: TMenuItem
        Action = actXmlColwInstruction
      end
      object COLDSInstruction1: TMenuItem
        Action = actXmlColdsInstruction
      end
      object SECTRSInstruction1: TMenuItem
        Action = actXmlSECTRSInstruction
      end
      object BSInstruction1: TMenuItem
        Action = actXmlBTInstruction
      end
      object WTInstruction1: TMenuItem
        Action = actXmlWTInstruction
      end
      object VCAInstruction1: TMenuItem
        Action = actXmlVCAInstruction
      end
      object SETDSInstruction1: TMenuItem
        Action = actXmlSETDSInstruction
      end
    end
    object GenerateToExcelFile1: TMenuItem [11]
      Caption = 'Generate To Excel File'
      object OTCInstruction1: TMenuItem
        Action = actXlsOTCInstruction
      end
      object PTCInstruction2: TMenuItem
        Action = actXlsPTCInstruction
      end
      object COLWInstruction2: TMenuItem
        Action = actXlsColwInstruction
      end
      object COLDSInstruction2: TMenuItem
        Action = actXlsColdsInstruction
      end
      object SECTRSInstruction2: TMenuItem
        Action = actXlsSECTRSInstruction
      end
      object BTInstruction1: TMenuItem
        Action = actXlsBTInstruction
      end
      object WTInstruction2: TMenuItem
        Action = actXlsWTInstruction
      end
      object CopyFromSelectedData2: TMenuItem
        Action = actXlsVCAInstruction
      end
      object SETDSInstruction2: TMenuItem
        Action = actXlsSETDSInstruction
      end
    end
    object GenerateToTXTFile1: TMenuItem [12]
      Caption = 'Generate To Text File'
      object OTCInstruction2: TMenuItem
        Action = actTxtOTCInstruction
      end
      object VCAInstruction3: TMenuItem
        Action = actTxttPTCInstruction
      end
      object COLWInstruction3: TMenuItem
        Action = acttxtCOLWInstruction
      end
      object COLDSInstruction3: TMenuItem
        Action = acttxtCOLDSInstruction
      end
      object SECTRSInstruction3: TMenuItem
        Action = acttxtSECTRSInstruction
      end
      object BTCInstruction1: TMenuItem
        Action = acttxtBTInstruction
      end
      object WTInstruction3: TMenuItem
        Action = acttxtWTInstruction
      end
      object VCAInstruction2: TMenuItem
        Action = acttxtVCAInstruction
      end
      object SETDSInstruction6: TMenuItem
        Action = acttxtSETDSInstruction
      end
    end
    object CancelInstruction1: TMenuItem [13]
      Action = actCancelInstruction
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsDailyInstructionMTList
  end
  inherited aclEditor: TActionList
    object actGenerateXLS: TNAction
      Category = 'NActions'
      Caption = 'Generate To Excel File'
      CheckPermission = True
    end
    object actCancelInstruction: TNAction
      Category = 'NActions'
      Caption = 'Cancel Instruction'
      CheckPermission = True
    end
    object actXmlOTCInstruction: TNAction
      Category = 'NActions'
      Caption = 'OTC Instruction'
      OnExecute = actXmlOTCInstructionExecute
      CheckPermission = True
    end
    object actXmlPTCInstruction: TNAction
      Category = 'NActions'
      Caption = 'PTC Instruction'
      OnExecute = actXmlPTCInstructionExecute
      CheckPermission = True
    end
    object actXmlColwInstruction: TNAction
      Category = 'NActions'
      Caption = 'COLW Instruction'
      OnExecute = actXmlColwInstructionExecute
      CheckPermission = True
    end
    object actXmlColdsInstruction: TNAction
      Category = 'NActions'
      Caption = 'COLDS Instruction'
      OnExecute = actXmlColdsInstructionExecute
      CheckPermission = True
    end
    object actXmlSECTRSInstruction: TNAction
      Category = 'NActions'
      Caption = 'SECTRS Instruction'
      OnExecute = actXmlSECTRSInstructionExecute
      CheckPermission = True
    end
    object actXmlBTInstruction: TNAction
      Category = 'NActions'
      Caption = 'BT Instruction'
      OnExecute = actXmlBTInstructionExecute
      CheckPermission = True
    end
    object actXmlWTInstruction: TNAction
      Category = 'NActions'
      Caption = 'WT Instruction'
      OnExecute = actXmlWTInstructionExecute
      CheckPermission = True
    end
    object actXmlVCAInstruction: TNAction
      Category = 'NActions'
      Caption = 'VCA Instruction'
      OnExecute = actXmlVCAInstructionExecute
      CheckPermission = True
    end
    object actXlsOTCInstruction: TNAction
      Category = 'NActions'
      Caption = 'OTC Instruction'
      OnExecute = actXlsOTCInstructionExecute
      CheckPermission = False
    end
    object actXlsColwInstruction: TNAction
      Category = 'NActions'
      Caption = 'COLW Instruction'
      OnExecute = actXlsColwInstructionExecute
      CheckPermission = True
    end
    object actXlsColdsInstruction: TNAction
      Category = 'NActions'
      Caption = 'COLDS Instruction'
      OnExecute = actXlsColdsInstructionExecute
      CheckPermission = True
    end
    object actXlsSECTRSInstruction: TNAction
      Category = 'NActions'
      Caption = 'SECTRS Instruction'
      OnExecute = actXlsSECTRSInstructionExecute
      CheckPermission = True
    end
    object actXlsBTInstruction: TNAction
      Category = 'NActions'
      Caption = 'BT Instruction'
      OnExecute = actXlsBTInstructionExecute
      CheckPermission = True
    end
    object actXlsWTInstruction: TNAction
      Category = 'NActions'
      Caption = 'WT Instruction'
      OnExecute = actXlsWTInstructionExecute
      CheckPermission = True
    end
    object actXlsVCAInstruction: TNAction
      Category = 'NActions'
      Caption = 'VCA Instruction'
      OnExecute = actXlsVCAInstructionExecute
      CheckPermission = True
    end
    object actGenerateCashSettleDeposit: TNAction
      Category = 'NActions'
      Caption = 'Generate Cash Settlement Deposit'
      OnExecute = actGenerateCashSettleDepositExecute
      CheckPermission = True
    end
    object actXlsSETDSInstruction: TNAction
      Category = 'NActions'
      Caption = 'SETDS Instruction'
      OnExecute = actXlsSETDSInstructionExecute
      CheckPermission = True
    end
    object actTxtOTCInstruction: TNAction
      Category = 'NActions'
      Caption = 'OTC Instruction'
      OnExecute = actTxtOTCInstructionExecute
      CheckPermission = True
    end
    object actTxttPTCInstruction: TNAction
      Category = 'NActions'
      Caption = 'PTC Instruction'
      OnExecute = actTxttPTCInstructionExecute
      CheckPermission = True
    end
    object acttxtCOLWInstruction: TNAction
      Category = 'NActions'
      Caption = 'COLW Instruction'
      OnExecute = acttxtCOLWInstructionExecute
      CheckPermission = True
    end
    object acttxtCOLDSInstruction: TNAction
      Category = 'NActions'
      Caption = 'COLDS Instruction'
      OnExecute = acttxtCOLDSInstructionExecute
      CheckPermission = True
    end
    object acttxtSECTRSInstruction: TNAction
      Category = 'NActions'
      Caption = 'SECTRS Instruction'
      OnExecute = acttxtSECTRSInstructionExecute
      CheckPermission = True
    end
    object acttxtBTInstruction: TNAction
      Category = 'NActions'
      Caption = 'BT Instruction'
      OnExecute = acttxtBTInstructionExecute
      CheckPermission = True
    end
    object acttxtWTInstruction: TNAction
      Category = 'NActions'
      Caption = 'WT Instruction'
      OnExecute = acttxtWTInstructionExecute
      CheckPermission = True
    end
    object acttxtVCAInstruction: TNAction
      Category = 'NActions'
      Caption = 'VCA Instruction'
      OnExecute = acttxtVCAInstructionExecute
      CheckPermission = True
    end
    object actXmlSETDSInstruction: TNAction
      Category = 'NActions'
      Caption = 'SETDS Instruction'
      OnExecute = actXmlSETDSInstructionExecute
      CheckPermission = True
    end
    object acttxtSETDSInstruction: TNAction
      Category = 'NActions'
      Caption = 'SETDS Instruction'
      OnExecute = acttxtSETDSInstructionExecute
      CheckPermission = True
    end
    object actGenerateToXLS: TNAction
      Category = 'NActions'
      Caption = 'Generate To Excel'
      OnExecute = actGenerateToXLSExecute
      CheckPermission = True
    end
    object actGenerateToXML: TNAction
      Category = 'NActions'
      Caption = 'Generate To Xml'
      OnExecute = actGenerateToXMLExecute
      CheckPermission = True
    end
    object actGenerateToTXT: TNAction
      Category = 'NActions'
      Caption = 'Generate To Text'
      OnExecute = actGenerateToTXTExecute
      CheckPermission = True
    end
    object actXlsPTCInstruction: TNAction
      Category = 'NActions'
      Caption = 'PTC Instruction'
      OnExecute = actXlsPTCInstructionExecute
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
          ItemName = 'dtSettled'
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
    object dtSettled: TcxBarEditItem
      Caption = 'Settle Date'
      Category = 0
      Hint = 'Settle Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
  end
  inherited SaveDlg: TSaveDialog
    DefaultExt = ''
    Filter = ''
  end
  object cdsDailyInstructionMTList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryDailyInstructionMTList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsDailyInstructionMTListInstructionID: TLargeintField
      DisplayLabel = 'Instruction ID'
      FieldName = 'InstructionID'
      Required = True
    end
    object cdsDailyInstructionMTListexternalReference: TStringField
      DisplayLabel = 'External Reference'
      FieldName = 'externalReference'
      Required = True
      Size = 40
    end
    object cdsDailyInstructionMTListinstructionType: TStringField
      DisplayLabel = 'Instruction Type'
      FieldName = 'instructionType'
      Required = True
      Size = 10
    end
    object cdsDailyInstructionMTListtradeDate: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'tradeDate'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDailyInstructionMTListsettlementDate: TDateField
      DisplayLabel = 'Settlement Date'
      FieldName = 'settlementDate'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDailyInstructionMTListAccount_Code: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'Account_Code'
      Required = True
    end
    object cdsDailyInstructionMTListAccount_Name: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'Account_Name'
      Required = True
      Size = 150
    end
    object cdsDailyInstructionMTListksei_sid: TStringField
      DisplayLabel = 'KSEI SID'
      FieldName = 'ksei_sid'
    end
    object cdsDailyInstructionMTListparticipantCode: TStringField
      DisplayLabel = 'Participant Code'
      FieldName = 'participantCode'
      Required = True
      Size = 10
    end
    object cdsDailyInstructionMTListparticipantAccount: TStringField
      DisplayLabel = 'Participant Account'
      FieldName = 'participantAccount'
      Required = True
    end
    object cdsDailyInstructionMTListsecurityCodeType: TStringField
      DisplayLabel = 'Security Code Type'
      FieldName = 'securityCodeType'
      Required = True
      Size = 10
    end
    object cdsDailyInstructionMTListsecurityCode: TStringField
      DisplayLabel = 'Security Code'
      FieldName = 'securityCode'
      Required = True
    end
    object cdsDailyInstructionMTListnumberOfSecurities: TFloatField
      DisplayLabel = 'Number Of Securities'
      FieldName = 'numberOfSecurities'
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsDailyInstructionMTListsettlementAmount: TFloatField
      DisplayLabel = 'Settlement Amount'
      FieldName = 'settlementAmount'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDailyInstructionMTListdescription: TStringField
      DisplayLabel = 'Description'
      FieldName = 'description'
      Size = 100
    end
    object cdsDailyInstructionMTListpurpose: TStringField
      DisplayLabel = 'Purpose'
      FieldName = 'purpose'
      Size = 10
    end
    object cdsDailyInstructionMTListtradingReference: TStringField
      DisplayLabel = 'Trading Reference'
      FieldName = 'tradingReference'
    end
    object cdsDailyInstructionMTListsettlementReason: TStringField
      DisplayLabel = 'Settlement Reason'
      FieldName = 'settlementReason'
      Size = 10
    end
    object cdsDailyInstructionMTListStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Size = 8
    end
    object cdsDailyInstructionMTListTRANSNO: TStringField
      DisplayLabel = 'Transaction No'
      FieldName = 'TRANSNO'
    end
    object cdsDailyInstructionMTListTRANSTYPE: TStringField
      DisplayLabel = 'Trans Type'
      FieldName = 'TRANSTYPE'
      Size = 2
    end
    object cdsDailyInstructionMTListTRANSTYPE_NAME: TStringField
      DisplayLabel = 'Trans Type Desc'
      FieldName = 'TRANSTYPE_NAME'
      ReadOnly = True
      Size = 100
    end
    object cdsDailyInstructionMTListEXCHANGE: TStringField
      DisplayLabel = 'Exchange'
      FieldName = 'EXCHANGE'
      Size = 1
    end
    object cdsDailyInstructionMTListCREATED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'CREATED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsDailyInstructionMTListCREATED_SYSTEMDATE: TDateField
      DisplayLabel = 'System Date'
      FieldName = 'CREATED_SYSTEMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDailyInstructionMTListCREATED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CREATED_UI'
      Size = 30
    end
    object cdsDailyInstructionMTListDOWNLOAD_COUNT: TIntegerField
      DisplayLabel = 'Download Count'
      FieldName = 'DOWNLOAD_COUNT'
      DisplayFormat = '#,##0'
    end
    object cdsDailyInstructionMTListDOWNLOAD_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'DOWNLOAD_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsDailyInstructionMTListDOWNLOAD_USER: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'DOWNLOAD_USER'
      Size = 30
    end
    object cdsDailyInstructionMTListCANCEL_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'CANCEL_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsDailyInstructionMTListCANCEL_SYSTEMDATE: TDateField
      DisplayLabel = 'System Date'
      FieldName = 'CANCEL_SYSTEMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDailyInstructionMTListCANCEL_NOTES: TStringField
      DisplayLabel = 'Notes'
      FieldName = 'CANCEL_NOTES'
      Size = 100
    end
    object cdsDailyInstructionMTListCANCEL_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsDailyInstructionMTListSETTLED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'SETTLED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsDailyInstructionMTListSETTLED_SYSTEMDATE: TDateField
      DisplayLabel = 'System Date'
      FieldName = 'SETTLED_SYSTEMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDailyInstructionMTListSETTLED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'SETTLED_UI'
      Size = 30
    end
  end
  object cdsDailyInstructionNMTList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryDailyInstructionNMTList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 328
    Top = 128
    object LargeintField1: TLargeintField
      DisplayLabel = 'Instruction ID'
      FieldName = 'InstructionID'
      Required = True
    end
    object StringField1: TStringField
      DisplayLabel = 'External Reference'
      FieldName = 'externalReference'
      Required = True
      Size = 40
    end
    object StringField2: TStringField
      DisplayLabel = 'Instruction Type'
      FieldName = 'instructionType'
      Required = True
      Size = 10
    end
    object DateField1: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'tradeDate'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object DateField2: TDateField
      DisplayLabel = 'Settlement Date'
      FieldName = 'settlementDate'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object StringField3: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'Account_Code'
      Required = True
    end
    object StringField4: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'Account_Name'
      Required = True
      Size = 150
    end
    object StringField5: TStringField
      DisplayLabel = 'KSEI SID'
      FieldName = 'ksei_sid'
    end
    object StringField6: TStringField
      DisplayLabel = 'Participant Code'
      FieldName = 'participantCode'
      Required = True
      Size = 10
    end
    object StringField7: TStringField
      DisplayLabel = 'Participant Account'
      FieldName = 'participantAccount'
      Required = True
    end
    object StringField8: TStringField
      DisplayLabel = 'Security Code Type'
      FieldName = 'securityCodeType'
      Required = True
      Size = 10
    end
    object StringField9: TStringField
      DisplayLabel = 'Security Code'
      FieldName = 'securityCode'
      Required = True
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Number Of Securities'
      FieldName = 'numberOfSecurities'
      Required = True
      DisplayFormat = '#,##0'
    end
    object FloatField2: TFloatField
      DisplayLabel = 'Settlement Amount'
      FieldName = 'settlementAmount'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object StringField10: TStringField
      DisplayLabel = 'Description'
      FieldName = 'description'
      Size = 100
    end
    object StringField11: TStringField
      DisplayLabel = 'Purpose'
      FieldName = 'purpose'
      Size = 10
    end
    object StringField12: TStringField
      DisplayLabel = 'Trading Reference'
      FieldName = 'tradingReference'
    end
    object StringField13: TStringField
      DisplayLabel = 'Settlement Reason'
      FieldName = 'settlementReason'
      Size = 10
    end
    object StringField14: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Size = 8
    end
    object StringField15: TStringField
      DisplayLabel = 'Transaction No'
      FieldName = 'TRANSNO'
    end
    object StringField16: TStringField
      DisplayLabel = 'Trans Type'
      FieldName = 'TRANSTYPE'
      Size = 2
    end
    object StringField17: TStringField
      DisplayLabel = 'Trans Type Desc'
      FieldName = 'TRANSTYPE_NAME'
      ReadOnly = True
      Size = 100
    end
    object StringField18: TStringField
      DisplayLabel = 'Exchange'
      FieldName = 'EXCHANGE'
      Size = 1
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'CREATED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object DateField3: TDateField
      DisplayLabel = 'System Date'
      FieldName = 'CREATED_SYSTEMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object StringField19: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CREATED_UI'
      Size = 30
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Download Count'
      FieldName = 'DOWNLOAD_COUNT'
      DisplayFormat = '#,##0'
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'DOWNLOAD_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object StringField20: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'DOWNLOAD_USER'
      Size = 30
    end
    object DateTimeField3: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'CANCEL_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object DateField4: TDateField
      DisplayLabel = 'System Date'
      FieldName = 'CANCEL_SYSTEMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object StringField21: TStringField
      DisplayLabel = 'Notes'
      FieldName = 'CANCEL_NOTES'
      Size = 100
    end
    object StringField22: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object DateTimeField4: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'SETTLED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object DateField5: TDateField
      DisplayLabel = 'System Date'
      FieldName = 'SETTLED_SYSTEMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object StringField23: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'SETTLED_UI'
      Size = 30
    end
  end
  object dsDailyInstructionNMTList: TDataSource
    DataSet = cdsDailyInstructionNMTList
    Left = 328
    Top = 184
  end
  object cdsCreateOTCInsXml: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateOTCInsXml'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 120
    object cdsCreateOTCInsXmlxmlValues: TMemoField
      FieldName = 'xmlValues'
      BlobType = ftMemo
    end
    object cdsCreateOTCInsXmlextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateOTCInsXls: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateOTCInsXls'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 696
    Top = 120
    object cdsCreateOTCInsXlsexternalReference: TStringField
      FieldName = 'externalReference'
      Size = 35
    end
    object cdsCreateOTCInsXlsinstructionType: TStringField
      FieldName = 'instructionType'
      Size = 10
    end
    object cdsCreateOTCInsXlsparticipantCode: TStringField
      FieldName = 'participantCode'
      Size = 5
    end
    object cdsCreateOTCInsXlsparticipantAccount: TStringField
      FieldName = 'participantAccount'
      Size = 14
    end
    object cdsCreateOTCInsXlsparticipantAccountCash: TStringField
      FieldName = 'participantAccountCash'
      Size = 14
    end
    object cdsCreateOTCInsXlscounterpartCode: TStringField
      FieldName = 'counterpartCode'
      Size = 5
    end
    object cdsCreateOTCInsXlssecurityCodeType: TStringField
      FieldName = 'securityCodeType'
      Size = 10
    end
    object cdsCreateOTCInsXlssecurityCode: TStringField
      FieldName = 'securityCode'
    end
    object cdsCreateOTCInsXlsnumberOfSecurities: TFloatField
      FieldName = 'numberOfSecurities'
    end
    object cdsCreateOTCInsXlstradeDate: TStringField
      FieldName = 'tradeDate'
      Size = 8
    end
    object cdsCreateOTCInsXlscurrencyCode: TStringField
      FieldName = 'currencyCode'
      Size = 3
    end
    object cdsCreateOTCInsXlssettlementAmount: TFloatField
      FieldName = 'settlementAmount'
    end
    object cdsCreateOTCInsXlssettlementDate: TStringField
      FieldName = 'settlementDate'
      Size = 8
    end
    object cdsCreateOTCInsXlsdescription: TStringField
      FieldName = 'description'
      Size = 240
    end
    object cdsCreateOTCInsXlspurpose: TStringField
      FieldName = 'purpose'
      Size = 8
    end
    object cdsCreateOTCInsXlstradingReference: TStringField
      FieldName = 'tradingReference'
      Size = 16
    end
    object cdsCreateOTCInsXlssettlementReason: TStringField
      FieldName = 'settlementReason'
      Size = 4
    end
  end
  object cdsCreatePTCInsXml: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreatePTCInsXml'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 168
    object cdsCreatePTCInsXmlxmlValues: TMemoField
      FieldName = 'xmlValues'
      BlobType = ftMemo
    end
    object cdsCreatePTCInsXmlextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateCOLWInsXml: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateCOLWInsXml'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 216
    object cdsCreateCOLWInsXmlxmlValues: TMemoField
      FieldName = 'xmlValues'
      BlobType = ftMemo
    end
    object cdsCreateCOLWInsXmlextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateCOLDSInsXml: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateCOLDSInsXml'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 264
    object cdsCreateCOLDSInsXmlxmlValues: TMemoField
      FieldName = 'xmlValues'
      BlobType = ftMemo
    end
    object cdsCreateCOLDSInsXmlextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateSECTRSInsXmlt1: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateSECTRSInsXml'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 312
    object cdsCreateSECTRSInsXmlt1xmlValues: TMemoField
      FieldName = 'xmlValues'
      BlobType = ftMemo
    end
    object cdsCreateSECTRSInsXmlt1extFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateBTSInsXml: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateBTSInsXml'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 360
    object cdsCreateBTSInsXmlxmlValues: TMemoField
      FieldName = 'xmlValues'
      BlobType = ftMemo
    end
    object cdsCreateBTSInsXmlextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateWTInsXml: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateWTInsXml'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 408
    object cdsCreateWTInsXmlxmlValues: TMemoField
      FieldName = 'xmlValues'
      BlobType = ftMemo
    end
    object cdsCreateWTInsXmlextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateVCAInsXml: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateVCAInsXml'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 456
    object cdsCreateVCAInsXmlxmlValues: TMemoField
      FieldName = 'xmlValues'
      BlobType = ftMemo
    end
    object cdsCreateVCAInsXmlextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateCOLWInsXls: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateCOLWInsXls'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 696
    Top = 216
    object cdsCreateCOLWInsXlsexternalReference: TStringField
      FieldName = 'externalReference'
      Size = 35
    end
    object cdsCreateCOLWInsXlsparticipantCode: TStringField
      FieldName = 'participantCode'
      Size = 5
    end
    object cdsCreateCOLWInsXlssourceAccount: TStringField
      FieldName = 'sourceAccount'
      Size = 14
    end
    object cdsCreateCOLWInsXlstargetAccount: TStringField
      FieldName = 'targetAccount'
      Size = 14
    end
    object cdsCreateCOLWInsXlscurrencyCode: TStringField
      FieldName = 'currencyCode'
      Size = 3
    end
    object cdsCreateCOLWInsXlssecurityCodeType: TStringField
      FieldName = 'securityCodeType'
      Size = 10
    end
    object cdsCreateCOLWInsXlssecurityCode: TStringField
      FieldName = 'securityCode'
    end
    object cdsCreateCOLWInsXlsinstrumentQuantity: TFloatField
      FieldName = 'instrumentQuantity'
    end
    object cdsCreateCOLWInsXlssettlementDate: TStringField
      FieldName = 'settlementDate'
      Size = 8
    end
    object cdsCreateCOLWInsXlsdescription: TStringField
      FieldName = 'description'
      Size = 240
    end
  end
  object cdsCreateCOLDSInsXls: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateCOLDSInsXls'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 696
    Top = 264
    object cdsCreateCOLDSInsXlsexternalReference: TStringField
      FieldName = 'externalReference'
      Size = 35
    end
    object cdsCreateCOLDSInsXlsparticipantCode: TStringField
      FieldName = 'participantCode'
      Size = 5
    end
    object cdsCreateCOLDSInsXlssourceAccount: TStringField
      FieldName = 'sourceAccount'
      Size = 14
    end
    object cdsCreateCOLDSInsXlstargetAccount: TStringField
      FieldName = 'targetAccount'
      Size = 14
    end
    object cdsCreateCOLDSInsXlscurrencyCode: TStringField
      FieldName = 'currencyCode'
      Size = 3
    end
    object cdsCreateCOLDSInsXlssecurityCodeType: TStringField
      FieldName = 'securityCodeType'
      Size = 10
    end
    object cdsCreateCOLDSInsXlssecurityCode: TStringField
      FieldName = 'securityCode'
    end
    object cdsCreateCOLDSInsXlsinstrumentQuantity: TFloatField
      FieldName = 'instrumentQuantity'
    end
    object cdsCreateCOLDSInsXlssettlementDate: TStringField
      FieldName = 'settlementDate'
      Size = 8
    end
    object cdsCreateCOLDSInsXlsdescription: TStringField
      FieldName = 'description'
      Size = 240
    end
  end
  object cdsCreateSECTRSInsXls: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateSECTRSInsXls'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 696
    Top = 312
    object cdsCreateSECTRSInsXlsexternalReference: TStringField
      FieldName = 'externalReference'
      Size = 35
    end
    object cdsCreateSECTRSInsXlsparticipantCode: TStringField
      FieldName = 'participantCode'
      Size = 5
    end
    object cdsCreateSECTRSInsXlssourceAccount: TStringField
      FieldName = 'sourceAccount'
      Size = 14
    end
    object cdsCreateSECTRSInsXlstargetAccount: TStringField
      FieldName = 'targetAccount'
      Size = 14
    end
    object cdsCreateSECTRSInsXlssecurityCodeType: TStringField
      FieldName = 'securityCodeType'
      Size = 10
    end
    object cdsCreateSECTRSInsXlssecurityCode: TStringField
      FieldName = 'securityCode'
    end
    object cdsCreateSECTRSInsXlsnumberOfSecurities: TFloatField
      FieldName = 'numberOfSecurities'
    end
    object cdsCreateSECTRSInsXlssettlementDate: TStringField
      FieldName = 'settlementDate'
      Size = 8
    end
    object cdsCreateSECTRSInsXlsdescription: TStringField
      FieldName = 'description'
      Size = 240
    end
  end
  object cdsCreateBTSInsXls: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateBTSInsXls'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 696
    Top = 360
    object cdsCreateBTSInsXlsexternalReference: TStringField
      FieldName = 'externalReference'
      Size = 35
    end
    object cdsCreateBTSInsXlsinstructionType: TStringField
      FieldName = 'instructionType'
      Size = 10
    end
    object cdsCreateBTSInsXlsparticipantCode: TStringField
      FieldName = 'participantCode'
      Size = 5
    end
    object cdsCreateBTSInsXlsparticipantAccount: TStringField
      FieldName = 'participantAccount'
      Size = 14
    end
    object cdsCreateBTSInsXlscounterpartAccount: TStringField
      FieldName = 'counterpartAccount'
      Size = 14
    end
    object cdsCreateBTSInsXlsvalueDate: TStringField
      FieldName = 'valueDate'
      Size = 8
    end
    object cdsCreateBTSInsXlscurrencyCode: TStringField
      FieldName = 'currencyCode'
      Size = 3
    end
    object cdsCreateBTSInsXlscashAmount: TFloatField
      FieldName = 'cashAmount'
    end
    object cdsCreateBTSInsXlsdescription: TStringField
      FieldName = 'description'
      Size = 240
    end
  end
  object cdsCreateWTInsXls: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateWTInsXls'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 696
    Top = 408
    object cdsCreateWTInsXlsexternalReference: TStringField
      FieldName = 'externalReference'
      Size = 35
    end
    object cdsCreateWTInsXlsinstructionType: TStringField
      FieldName = 'instructionType'
      Size = 10
    end
    object cdsCreateWTInsXlsparticipantCode: TStringField
      FieldName = 'participantCode'
      Size = 5
    end
    object cdsCreateWTInsXlsparticipantAccount: TStringField
      FieldName = 'participantAccount'
      Size = 14
    end
    object cdsCreateWTInsXlsbeneficiaryAccount: TStringField
      FieldName = 'beneficiaryAccount'
      Size = 14
    end
    object cdsCreateWTInsXlsbeneficiaryInstitution: TStringField
      FieldName = 'beneficiaryInstitution'
      Size = 5
    end
    object cdsCreateWTInsXlsvalueDate: TStringField
      FieldName = 'valueDate'
      Size = 8
    end
    object cdsCreateWTInsXlscurrencyCode: TStringField
      FieldName = 'currencyCode'
      Size = 3
    end
    object cdsCreateWTInsXlscashAmount: TFloatField
      FieldName = 'cashAmount'
    end
    object cdsCreateWTInsXlsdescription: TStringField
      FieldName = 'description'
      Size = 240
    end
  end
  object cdsCreateVCAInsXls: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateVCAInsXls'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 696
    Top = 456
    object cdsCreateVCAInsXlsexternalReference: TStringField
      FieldName = 'externalReference'
      Size = 35
    end
    object cdsCreateVCAInsXlscorporateActionType: TStringField
      FieldName = 'corporateActionType'
      Size = 10
    end
    object cdsCreateVCAInsXlseffectiveDate: TStringField
      FieldName = 'effectiveDate'
      Size = 8
    end
    object cdsCreateVCAInsXlssecurityCodeType: TStringField
      FieldName = 'securityCodeType'
      Size = 10
    end
    object cdsCreateVCAInsXlssecurityCode: TStringField
      FieldName = 'securityCode'
    end
    object cdsCreateVCAInsXlsparticipantCode: TStringField
      FieldName = 'participantCode'
      Size = 5
    end
    object cdsCreateVCAInsXlsparticipantAccount: TStringField
      FieldName = 'participantAccount'
      Size = 14
    end
    object cdsCreateVCAInsXlsoptionName: TStringField
      FieldName = 'optionName'
      Size = 10
    end
    object cdsCreateVCAInsXlsoptionQuantity: TStringField
      FieldName = 'optionQuantity'
      Size = 10
    end
    object cdsCreateVCAInsXlsadditionalProceedRequest: TStringField
      FieldName = 'additionalProceedRequest'
      Size = 100
    end
    object cdsCreateVCAInsXlsdescription: TStringField
      FieldName = 'description'
      Size = 240
    end
  end
  object cdsCashSettlementDepositList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCashSettlementDepositList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 328
    Top = 352
    object cdsCashSettlementDepositListCashInstructionID: TLargeintField
      DisplayLabel = 'Cash Instruction ID'
      FieldName = 'CashInstructionID'
      Required = True
    end
    object cdsCashSettlementDepositListInstruction_Type: TStringField
      DisplayLabel = 'Instruction Type'
      FieldName = 'Instruction_Type'
      Required = True
      Size = 10
    end
    object cdsCashSettlementDepositListSettle_Side: TStringField
      DisplayLabel = 'Settle Side'
      FieldName = 'Settle_Side'
      Required = True
      Size = 1
    end
    object cdsCashSettlementDepositListexternalReference: TStringField
      DisplayLabel = 'External Reference'
      FieldName = 'externalReference'
      Required = True
      Size = 40
    end
    object cdsCashSettlementDepositListparticipantCode: TStringField
      DisplayLabel = 'Participant Code'
      FieldName = 'participantCode'
      Required = True
      Size = 5
    end
    object cdsCashSettlementDepositListsourceAccount: TStringField
      DisplayLabel = 'Source Account'
      FieldName = 'sourceAccount'
      Required = True
      Size = 14
    end
    object cdsCashSettlementDepositListtargetAccount: TStringField
      DisplayLabel = 'Target Account'
      FieldName = 'targetAccount'
      Required = True
      Size = 14
    end
    object cdsCashSettlementDepositListcurrencyCode: TStringField
      DisplayLabel = 'Currency Code'
      FieldName = 'currencyCode'
      Size = 3
    end
    object cdsCashSettlementDepositListsecurityCodeType: TStringField
      DisplayLabel = 'Security Code Type'
      FieldName = 'securityCodeType'
      Size = 10
    end
    object cdsCashSettlementDepositListsecurityCode: TStringField
      DisplayLabel = 'Security Code'
      FieldName = 'securityCode'
    end
    object cdsCashSettlementDepositListinstrumentQuantity: TFloatField
      DisplayLabel = 'Instrument Quantity'
      FieldName = 'instrumentQuantity'
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsCashSettlementDepositListsettlementDate: TStringField
      DisplayLabel = 'Settlement Date'
      FieldName = 'settlementDate'
      Required = True
      Size = 8
    end
    object cdsCashSettlementDepositListdescription: TStringField
      DisplayLabel = 'Description'
      FieldName = 'description'
      Size = 240
    end
    object cdsCashSettlementDepositListDownload_Count: TIntegerField
      DisplayLabel = 'Download Count'
      FieldName = 'Download_Count'
      DisplayFormat = '#,##0'
    end
    object cdsCashSettlementDepositListDownload_Date: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'Download_Date'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsCashSettlementDepositListDownload_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'Download_UI'
      Size = 30
    end
    object cdsCashSettlementDepositListCreate_Date: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'Create_Date'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsCashSettlementDepositListCreate_SystemDate: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'Create_SystemDate'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashSettlementDepositListCreate_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'Create_UI'
      Size = 30
    end
  end
  object dsCashSettlementDepositList: TDataSource
    DataSet = cdsCashSettlementDepositList
    Left = 328
    Top = 400
  end
  object PopupMenu: TPopupMenu
    Left = 32
    Top = 344
    object GenerateCashSettlementDeposit2: TMenuItem
      Action = actGenerateCashSettleDeposit
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object GenerateToTextFile1: TMenuItem
      Action = actGenerateToXML
    end
    object GenerateXmlFile3: TMenuItem
      Action = actGenerateToXLS
    end
    object GenerateXmlFile2: TMenuItem
      Action = actGenerateToTXT
    end
  end
  object cdsCreateOTCInsTxt: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateOTCInsTxt'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 808
    Top = 120
    object cdsCreateOTCInsTxtdataValues: TMemoField
      FieldName = 'dataValues'
      BlobType = ftMemo
    end
    object cdsCreateOTCInsTxtextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreatePTCInsTxt: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreatePTCInsTxt'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 808
    Top = 168
    object cdsCreatePTCInsTxtdataValues: TMemoField
      FieldName = 'dataValues'
      BlobType = ftMemo
    end
    object cdsCreatePTCInsTxtextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateCOLWInsTxt: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateCOLWInsTxt'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 808
    Top = 216
    object cdsCreateCOLWInsTxtdataValues: TMemoField
      FieldName = 'dataValues'
      BlobType = ftMemo
    end
    object cdsCreateCOLWInsTxtextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateCOLDSInsTxt: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateCOLDSInsTxt'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 808
    Top = 264
    object cdsCreateCOLDSInsTxtdataValues: TMemoField
      FieldName = 'dataValues'
      BlobType = ftMemo
    end
    object cdsCreateCOLDSInsTxtextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateSECTRSInsTxt: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateSECTRSInsTxt'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 808
    Top = 312
    object cdsCreateSECTRSInsTxtdataValues: TMemoField
      FieldName = 'dataValues'
      BlobType = ftMemo
    end
    object cdsCreateSECTRSInsTxtextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateVCAInsTxt: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateVCAInsTxt'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 808
    Top = 456
    object cdsCreateVCAInsTxtdataValues: TMemoField
      FieldName = 'dataValues'
      BlobType = ftMemo
    end
    object cdsCreateVCAInsTxtextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateWTInsTxt: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateWTInsTxt'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 808
    Top = 408
    object cdsCreateWTInsTxtdataValues: TMemoField
      FieldName = 'dataValues'
      BlobType = ftMemo
    end
    object cdsCreateWTInsTxtextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateBTInsTxt: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateBTInsTxt'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 808
    Top = 360
    object cdsCreateBTInsTxtdataValues: TMemoField
      FieldName = 'dataValues'
      BlobType = ftMemo
    end
    object cdsCreateBTInsTxtextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateSETDSInsTxt: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateSETDSInsTxt'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 808
    Top = 504
    object cdsCreateSETDSInsTxtdataValues: TMemoField
      FieldName = 'dataValues'
      BlobType = ftMemo
    end
    object cdsCreateSETDSInsTxtextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateSETDSInsXml: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateSETDSInsXml'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 504
    object cdsCreateSETDSInsXmlxmlValues: TMemoField
      FieldName = 'xmlValues'
      BlobType = ftMemo
    end
    object cdsCreateSETDSInsXmlextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateSETDSInsXls: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateSETDSInsXls'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 696
    Top = 504
    object cdsCreateSETDSInsXlsexternalReference: TStringField
      FieldName = 'externalReference'
      Size = 35
    end
    object cdsCreateSETDSInsXlsparticipantCode: TStringField
      FieldName = 'participantCode'
      Size = 5
    end
    object cdsCreateSETDSInsXlssourceAccount: TStringField
      FieldName = 'sourceAccount'
      Size = 14
    end
    object cdsCreateSETDSInsXlstargetAccount: TStringField
      FieldName = 'targetAccount'
      Size = 14
    end
    object cdsCreateSETDSInsXlssecurityCodeType: TStringField
      FieldName = 'securityCodeType'
      Size = 10
    end
    object cdsCreateSETDSInsXlssecurityCode: TStringField
      FieldName = 'securityCode'
    end
    object cdsCreateSETDSInsXlsnumberOfSecurities: TFloatField
      FieldName = 'numberOfSecurities'
    end
    object cdsCreateSETDSInsXlssettlementDate: TStringField
      FieldName = 'settlementDate'
      Size = 8
    end
    object cdsCreateSETDSInsXlsdescription: TStringField
      FieldName = 'description'
      Size = 240
    end
  end
  object cdsCreateSDSCashSettleXLS: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateSDSCashInstrXLS'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 984
    Top = 120
    object cdsCreateSDSCashSettleXLSexternalReference: TStringField
      FieldName = 'externalReference'
      Required = True
      Size = 40
    end
    object cdsCreateSDSCashSettleXLSparticipantCode: TStringField
      FieldName = 'participantCode'
      Required = True
      Size = 5
    end
    object cdsCreateSDSCashSettleXLSsourceAccount: TStringField
      FieldName = 'sourceAccount'
      Required = True
      Size = 14
    end
    object cdsCreateSDSCashSettleXLStargetAccount: TStringField
      FieldName = 'targetAccount'
      Required = True
      Size = 14
    end
    object cdsCreateSDSCashSettleXLScurrencyCode: TStringField
      FieldName = 'currencyCode'
      Size = 3
    end
    object cdsCreateSDSCashSettleXLSsecurityCodeType: TStringField
      FieldName = 'securityCodeType'
      Size = 10
    end
    object cdsCreateSDSCashSettleXLSsecurityCode: TStringField
      FieldName = 'securityCode'
    end
    object cdsCreateSDSCashSettleXLSinstrumentQuantity: TFloatField
      FieldName = 'instrumentQuantity'
      Required = True
    end
    object cdsCreateSDSCashSettleXLSsettlementDate: TStringField
      FieldName = 'settlementDate'
      Required = True
      Size = 8
    end
    object cdsCreateSDSCashSettleXLSdescription: TStringField
      FieldName = 'description'
      Size = 240
    end
  end
  object cdsCreateSDSCashSettleXML: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateSDSCashInstrXml'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 984
    Top = 176
    object cdsCreateSDSCashSettleXMLxmlValues: TMemoField
      FieldName = 'xmlValues'
      BlobType = ftMemo
    end
    object cdsCreateSDSCashSettleXMLextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreateSDSCashSettleTXT: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreateSDSCashInstrTxt'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 984
    Top = 232
    object cdsCreateSDSCashSettleTXTdataValues: TMemoField
      FieldName = 'dataValues'
      BlobType = ftMemo
    end
    object cdsCreateSDSCashSettleTXTextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
  object cdsCreatePTCInsXls: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreatePTCInsXls'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 696
    Top = 168
    object cdsCreatePTCInsXlsexternalReference: TStringField
      FieldName = 'externalReference'
      Required = True
      Size = 40
    end
    object cdsCreatePTCInsXlsparticipantCode: TStringField
      FieldName = 'participantCode'
      Required = True
      Size = 5
    end
    object cdsCreatePTCInsXlssourceAccount: TStringField
      FieldName = 'sourceAccount'
      Required = True
      Size = 14
    end
    object cdsCreatePTCInsXlstargetAccount: TStringField
      FieldName = 'targetAccount'
      Required = True
      Size = 14
    end
    object cdsCreatePTCInsXlscurrencyCode: TStringField
      FieldName = 'currencyCode'
      Size = 3
    end
    object cdsCreatePTCInsXlssecurityCodeType: TStringField
      FieldName = 'securityCodeType'
      Size = 10
    end
    object cdsCreatePTCInsXlssecurityCode: TStringField
      FieldName = 'securityCode'
    end
    object cdsCreatePTCInsXlsinstrumentQuantity: TFloatField
      FieldName = 'instrumentQuantity'
      Required = True
    end
    object cdsCreatePTCInsXlssettlementDate: TStringField
      FieldName = 'settlementDate'
      Required = True
      Size = 8
    end
    object cdsCreatePTCInsXlsdescription: TStringField
      FieldName = 'description'
      Size = 240
    end
  end
  object cdsCreatePAR_PTCInsXml: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'instructionID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'settleDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCreatePAR_PTCInsXml'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 472
    Top = 152
    object cdsCreatePAR_PTCInsXmlxmlValues: TMemoField
      FieldName = 'xmlValues'
      BlobType = ftMemo
    end
    object cdsCreatePAR_PTCInsXmlextFile: TStringField
      FieldName = 'extFile'
      Size = 6
    end
  end
end
