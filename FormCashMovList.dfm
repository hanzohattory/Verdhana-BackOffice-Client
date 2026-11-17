inherited frmCashMovList: TfrmCashMovList
  Caption = 'Cash Movement'
  ClientWidth = 1335
  ExplicitWidth = 1335
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1335
    RootLevelOptions.DetailTabsPosition = dtpTop
    ExplicitWidth = 1335
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Source'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Target'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Created'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Approved'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Posted'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Reversed'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Canceled'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwMasterSTATUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STATUS'
        RepositoryItem = dmGlobal.luStatus
        Width = 58
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCMID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCMCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMCODE'
        Width = 111
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRYDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMastermoveType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'moveType'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMastersourceAccCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'sourceAccCode'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMastersourceAccName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'sourceAccName'
        Width = 250
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TARGET_ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMastertargetAccCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'targetAccCode'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMastertargetAccName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'targetAccName'
        Width = 250
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Width = 58
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        Width = 130
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterENTRY_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRY_DATE'
        Width = 80
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterENTRY_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRY_SYSDATE'
        Width = 120
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterENTRY_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRY_UI'
        Width = 80
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterAPPROVED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVED_DATE'
        Width = 80
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAPPROVED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVED_SYSDATE'
        Width = 120
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAPPROVED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVED_UI'
        Width = 80
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_DATE'
        Width = 80
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_SYSDATE'
        Width = 120
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_UI'
        Width = 80
        Position.BandIndex = 6
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_DATE'
        Width = 80
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_SYSDATE'
        Width = 120
        Position.BandIndex = 7
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_UI'
        Width = 80
        Position.BandIndex = 7
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED_DATE'
        Width = 80
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED_SYSDATE'
        Width = 120
        Position.BandIndex = 8
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED_UI'
        Width = 80
        Position.BandIndex = 8
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED_NOTES: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED_NOTES'
        Width = 200
        Position.BandIndex = 8
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object gvwBankInstruction: TcxGridDBBandedTableView [1]
      PopupMenu = popBankInstruction
      OnKeyDown = gvwMasterKeyDown
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCustomDrawCell = gvwMasterCustomDrawCell
      DataController.DataSource = dsBankInstructionList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
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
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwBankInstructionBIID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BIID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBankInstructionBINO: TcxGridDBBandedColumn
        Caption = 'Instruction No.'
        DataBinding.FieldName = 'BINO'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBankInstructionBITYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BITYPE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBankInstructionENTRYDATE: TcxGridDBBandedColumn
        Caption = 'Entry Date'
        DataBinding.FieldName = 'ENTRYDATE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBankInstructionVALUEDATE: TcxGridDBBandedColumn
        Caption = 'Value Date'
        DataBinding.FieldName = 'VALUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBankInstructionBIDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'BIDESC'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBankInstructionBANK_REF: TcxGridDBBandedColumn
        Caption = 'Bank Ref'
        DataBinding.FieldName = 'BANK_REF'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwBankInstructionTRANS_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANS_TYPE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwBankInstructionLINKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwBankInstructionLINKNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKNO'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwBankInstructionACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwBankInstructionACCCODE: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCCODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwBankInstructionACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwBankInstructionACCINIT: TcxGridDBBandedColumn
        Caption = 'Account Init'
        DataBinding.FieldName = 'ACCINIT'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwBankInstructionACCTYPE: TcxGridDBBandedColumn
        Caption = 'Account Type'
        DataBinding.FieldName = 'ACCTYPE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwBankInstructionPRDCODE: TcxGridDBBandedColumn
        Caption = 'Product'
        DataBinding.FieldName = 'PRDCODE'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwBankInstructionACCBANKID_SOURCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCBANKID_SOURCE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwBankInstructionBNCODE_SOURCE: TcxGridDBBandedColumn
        Caption = 'Bank Source'
        DataBinding.FieldName = 'BNCODE_SOURCE'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwBankInstructionBNACCNO_SOURCE: TcxGridDBBandedColumn
        Caption = 'Bank Acc No. Source'
        DataBinding.FieldName = 'BNACCNO_SOURCE'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwBankInstructionBNACCNAME_SOURCE: TcxGridDBBandedColumn
        Caption = 'Bank Acc Name Source'
        DataBinding.FieldName = 'BNACCNAME_SOURCE'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwBankInstructionBNBRANCH_SOURCE: TcxGridDBBandedColumn
        Caption = 'Bank Branch Source'
        DataBinding.FieldName = 'BNBRANCH_SOURCE'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwBankInstructionACCBANKID_TARGET: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCBANKID_TARGET'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwBankInstructionBNCODE_TARGET: TcxGridDBBandedColumn
        Caption = 'Bank Target'
        DataBinding.FieldName = 'BNCODE_TARGET'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwBankInstructionBNACCNO_TARGET: TcxGridDBBandedColumn
        Caption = 'Bank Acc No. Target'
        DataBinding.FieldName = 'BNACCNO_TARGET'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwBankInstructionBNACCNAME_TARGET: TcxGridDBBandedColumn
        Caption = 'Bank Acc Name Target'
        DataBinding.FieldName = 'BNACCNAME_TARGET'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwBankInstructionBNBRANCH_TARGET: TcxGridDBBandedColumn
        Caption = 'Bank Branch Target'
        DataBinding.FieldName = 'BNBRANCH_TARGET'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwBankInstructionTRANFER_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANFER_TYPE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwBankInstructionCCY: TcxGridDBBandedColumn
        Caption = 'Ccy'
        DataBinding.FieldName = 'CCY'
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwBankInstructionAMOUNT: TcxGridDBBandedColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwBankInstructionCHARGES: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHARGES'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwBankInstructionNETAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NETAMOUNT'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwBankInstructionBANK_SOURCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANK_SOURCE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
    end
    object gvwBankChart: TcxGridDBChartView [2]
      Categories.DataBinding.FieldName = 'BANK_SOURCE'
      DataController.DataSource = dsBankInstructionList
      DiagramColumn.Active = True
      DiagramColumn.Values.VaryColorsByCategory = True
      DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
      DiagramPie.SeriesSites = True
      OptionsCustomize.DataDrillDown = False
      object gvwBankChartDataGroup1: TcxGridDBChartDataGroup
        DataBinding.FieldName = 'BANK_SOURCE'
        DisplayText = 'Bank Source'
      end
      object gvwBankChartSeries1: TcxGridDBChartSeries
        DataBinding.FieldName = 'NETAMOUNT'
        DisplayText = 'Transfer Amount'
        OnGetValueDisplayText = gvwBankChartSeries1GetValueDisplayText
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      Caption = 'Cash Movement'
    end
    object grdMasterLevel2: TcxGridLevel
      Caption = 'Bank Instruction'
      GridView = gvwBankInstruction
    end
    object grdMasterLevel3: TcxGridLevel
      Caption = 'Bank Instruction Chart'
      GridView = gvwBankChart
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actView'
        Permission = '[Cash Movement].View Approval Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Cash Movement].View'
      end
      item
        ActionName = 'actNew'
        Permission = '[Cash Movement].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Cash Movement].Edit'
      end
      item
        ActionName = 'actDelete'
        Permission = '[Cash Movement].Delete'
      end
      item
        ActionName = 'actRefresh'
        Permission = '[Cash Movement].Refresh'
      end
      item
        ActionName = 'actCancel'
        Permission = '[Cash Movement].Cancel'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Cash Movement].Copy From Selected Data'
      end
      item
        ActionName = 'actApprove'
        Permission = '[Cash Movement].Approve'
      end
      item
        ActionName = 'actReject'
        Permission = '[Cash Movement].Reject'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Cash Movement Viewer'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Cash Movement Maker'
      end
      item
        ActionName = 'actNew'
        Permission = 'Cash Movement Maker'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Cash Movement Maker'
      end
      item
        ActionName = 'actCashMovementApprove'
        Permission = 'Cash Movement Approver'
      end
      item
        ActionName = 'actCashMovementPost'
        Permission = 'Cash Movement Poster'
      end
      item
        ActionName = 'actCashMovementCancel'
        Permission = 'Cash Movement Canceler'
      end
      item
        ActionName = 'actCashMovementReverse'
        Permission = 'Cash Movement Reverser'
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
  inherited popMaster: TPopupMenu
    object ViewTransaction1: TMenuItem [5]
      Action = actViewTransaction
    end
    object CashMovementApprove1: TMenuItem [11]
      Action = actCashMovementApprove
    end
    object CashMovementPost1: TMenuItem [12]
      Action = actCashMovementPost
    end
    object CashMovementCancel1: TMenuItem [13]
      Action = actCashMovementCancel
    end
    object CashMovementReverse1: TMenuItem [14]
      Action = actCashMovementReverse
    end
    object N1: TMenuItem [15]
      Caption = '-'
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsCashMovList
  end
  inherited aclEditor: TActionList
    inherited actEdit: TNAction
      OnUpdate = actEditUpdate
    end
    inherited actDelete: TNAction
      OnUpdate = actEditUpdate
    end
    inherited actRefresh: TNAction
      Caption = 'Load Data'
    end
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      CheckPermission = False
    end
    object actGenerateBankInstructionFile: TNAction
      Category = 'NActions'
      Caption = 'Generate Bank Instruction File'
      OnExecute = actGenerateBankInstructionFileExecute
      CheckPermission = False
    end
    object actCashMovementApprove: TNAction
      Category = 'NActions'
      Caption = 'Cash Movement Approve'
      OnExecute = actCashMovementApproveExecute
      CheckPermission = True
    end
    object actCashMovementPost: TNAction
      Category = 'NActions'
      Caption = 'Cash Movement Post'
      OnExecute = actCashMovementPostExecute
      CheckPermission = True
    end
    object actCashMovementCancel: TNAction
      Category = 'NActions'
      Caption = 'Cash Movement Cancel'
      OnExecute = actCashMovementCancelExecute
      CheckPermission = True
    end
    object actCashMovementReverse: TNAction
      Category = 'NActions'
      Caption = 'Cash Movement Reverse'
      OnExecute = actCashMovementReverseExecute
      CheckPermission = True
    end
    object actViewTransaction: TNAction
      Category = 'NActions'
      Caption = 'View Transaction'
      OnExecute = actViewTransactionExecute
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
          ItemName = 'dtStartDate'
        end
        item
          Visible = True
          ItemName = 'dtEndDate'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'chStatus'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
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
    object dtStartDate: TcxBarEditItem
      Caption = 'Entry Date'
      Category = 0
      Hint = 'Entry Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object dtEndDate: TcxBarEditItem
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object chStatus: TcxBarEditItem
      Caption = 'Status'
      Category = 0
      Hint = 'Status'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxCheckGroupProperties'
      Properties.Columns = 5
      Properties.EditValueFormat = cvfStatesString
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'Created'
        end
        item
          Caption = 'Approved'
        end
        item
          Caption = 'Posted'
        end
        item
          Caption = 'Reversed'
        end
        item
          Caption = 'Canceled'
        end>
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Check All'
      Category = 0
      Hint = 'Check All'
      Visible = ivAlways
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Uncheck All'
      Category = 0
      Hint = 'Uncheck All'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton2Click
    end
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    ListDataset = cdsCashMovList
    MasterTableName = 'main.B_CASHMOV'
    AuditTableName = 'appr.B_CASHMOV_UPD'
    Keys = <
      item
        FieldName = 'CMID'
        FieldIndex = 0
      end>
    AutoFields = <
      item
        FieldName = 'CMID'
        SequenceName = 'TBL_B_CASHMOV'
        DataType = ftInteger
        NumFormat = '%.6d'
      end>
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsCashMovList: TNClientDataset
    Aggregates = <>
    AutoCalcFields = False
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
      end
      item
        DataType = ftString
        Name = 'cmStatus'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashMovList'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsCashMovListAfterOpen
    AfterRefresh = cdsCashMovListAfterRefresh
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 176
    object cdsCashMovListSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsCashMovListCMID: TIntegerField
      FieldName = 'CMID'
      Required = True
    end
    object cdsCashMovListCMCODE: TStringField
      DisplayLabel = 'Cash Movement Code'
      FieldName = 'CMCODE'
      Required = True
    end
    object cdsCashMovListENTRYDATE: TDateField
      DisplayLabel = 'Entry Date'
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashMovListmoveType: TStringField
      DisplayLabel = 'Type'
      FieldName = 'moveType'
      ReadOnly = True
      Size = 27
    end
    object cdsCashMovListSOURCE_ACCID: TIntegerField
      FieldName = 'SOURCE_ACCID'
      Required = True
    end
    object cdsCashMovListsourceAccCode: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'sourceAccCode'
      ReadOnly = True
      Size = 30
    end
    object cdsCashMovListsourceAccName: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'sourceAccName'
      ReadOnly = True
      Size = 150
    end
    object cdsCashMovListTARGET_ACCID: TIntegerField
      FieldName = 'TARGET_ACCID'
      Required = True
    end
    object cdsCashMovListtargetAccCode: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'targetAccCode'
      ReadOnly = True
      Size = 30
    end
    object cdsCashMovListtargetAccName: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'targetAccName'
      ReadOnly = True
      Size = 150
    end
    object cdsCashMovListCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsCashMovListAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashMovListENTRY_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'ENTRY_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsCashMovListENTRY_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'ENTRY_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashMovListENTRY_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'ENTRY_UI'
      Size = 30
    end
    object cdsCashMovListAPPROVED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'APPROVED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsCashMovListAPPROVED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'APPROVED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashMovListAPPROVED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'APPROVED_UI'
      Size = 30
    end
    object cdsCashMovListPOSTED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'POSTED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsCashMovListPOSTED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'POSTED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashMovListPOSTED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsCashMovListREVERSED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'REVERSED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsCashMovListREVERSED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'REVERSED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashMovListREVERSED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'REVERSED_UI'
    end
    object cdsCashMovListCANCELED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'CANCELED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsCashMovListCANCELED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'CANCELED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashMovListCANCELED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CANCELED_UI'
      Size = 30
    end
    object cdsCashMovListCANCELED_NOTES: TStringField
      DisplayLabel = 'Notes'
      FieldName = 'CANCELED_NOTES'
      Size = 100
    end
    object cdsCashMovListLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
    object cdsCashMovListFUNDTRANSID: TLargeintField
      FieldName = 'FUNDTRANSID'
    end
  end
  object cdsBankInstructionList: TNClientDataset
    Aggregates = <>
    AggregatesActive = True
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
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashMovementBankInstruction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 640
    Top = 224
    object cdsBankInstructionListBIID: TLargeintField
      FieldName = 'BIID'
      Required = True
    end
    object cdsBankInstructionListBINO: TStringField
      FieldName = 'BINO'
      Required = True
    end
    object cdsBankInstructionListBITYPE: TStringField
      FieldName = 'BITYPE'
      Required = True
      Size = 1
    end
    object cdsBankInstructionListENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsBankInstructionListVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsBankInstructionListBIDESC: TStringField
      FieldName = 'BIDESC'
      Required = True
      Size = 150
    end
    object cdsBankInstructionListBANK_REF: TStringField
      FieldName = 'BANK_REF'
      Size = 30
    end
    object cdsBankInstructionListTRANS_TYPE: TStringField
      FieldName = 'TRANS_TYPE'
      Size = 2
    end
    object cdsBankInstructionListLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsBankInstructionListLINKNO: TStringField
      FieldName = 'LINKNO'
      Size = 30
    end
    object cdsBankInstructionListACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsBankInstructionListACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsBankInstructionListACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsBankInstructionListACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsBankInstructionListACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsBankInstructionListPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsBankInstructionListACCBANKID_SOURCE: TIntegerField
      FieldName = 'ACCBANKID_SOURCE'
    end
    object cdsBankInstructionListBNCODE_SOURCE: TStringField
      FieldName = 'BNCODE_SOURCE'
      Size = 10
    end
    object cdsBankInstructionListBNACCNO_SOURCE: TStringField
      FieldName = 'BNACCNO_SOURCE'
    end
    object cdsBankInstructionListBNACCNAME_SOURCE: TStringField
      FieldName = 'BNACCNAME_SOURCE'
      Size = 150
    end
    object cdsBankInstructionListBNBRANCH_SOURCE: TStringField
      FieldName = 'BNBRANCH_SOURCE'
      Size = 150
    end
    object cdsBankInstructionListACCBANKID_TARGET: TIntegerField
      FieldName = 'ACCBANKID_TARGET'
      Required = True
    end
    object cdsBankInstructionListBNCODE_TARGET: TStringField
      FieldName = 'BNCODE_TARGET'
      Size = 10
    end
    object cdsBankInstructionListBNACCNO_TARGET: TStringField
      FieldName = 'BNACCNO_TARGET'
    end
    object cdsBankInstructionListBNACCNAME_TARGET: TStringField
      FieldName = 'BNACCNAME_TARGET'
      Size = 150
    end
    object cdsBankInstructionListBNBRANCH_TARGET: TStringField
      FieldName = 'BNBRANCH_TARGET'
      Size = 150
    end
    object cdsBankInstructionListTRANFER_TYPE: TStringField
      FieldName = 'TRANFER_TYPE'
      Required = True
      Size = 1
    end
    object cdsBankInstructionListCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 10
    end
    object cdsBankInstructionListAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsBankInstructionListCHARGES: TFloatField
      FieldName = 'CHARGES'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsBankInstructionListNETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsBankInstructionListBANK_SOURCE: TStringField
      FieldKind = fkCalculated
      FieldName = 'BANK_SOURCE'
      Size = 30
      Calculated = True
    end
    object cdsBankInstructionListBNNAME_SOURCE: TStringField
      FieldName = 'BNNAME_SOURCE'
      ReadOnly = True
      Size = 50
    end
    object cdsBankInstructionListINITIAL_NAME_SOURCE: TStringField
      FieldName = 'INITIAL_NAME_SOURCE'
      ReadOnly = True
      Size = 10
    end
    object cdsBankInstructionListBICODE_SOURCE: TStringField
      FieldName = 'BICODE_SOURCE'
      ReadOnly = True
      Size = 10
    end
    object cdsBankInstructionListBNNAME_TARGET: TStringField
      FieldName = 'BNNAME_TARGET'
      ReadOnly = True
      Size = 50
    end
    object cdsBankInstructionListINITIAL_NAME_TARGET: TStringField
      FieldName = 'INITIAL_NAME_TARGET'
      ReadOnly = True
      Size = 10
    end
    object cdsBankInstructionListBICODE_TARGET: TStringField
      FieldName = 'BICODE_TARGET'
      ReadOnly = True
      Size = 10
    end
  end
  object dsBankInstructionList: TDataSource
    DataSet = cdsBankInstructionList
    Left = 640
    Top = 280
  end
  object popBankInstruction: TPopupMenu
    Left = 768
    Top = 224
    object GenerateBankInstructionFile1: TMenuItem
      Action = actGenerateBankInstructionFile
    end
  end
end
