inherited frmStockMovList: TfrmStockMovList
  Caption = 'Stock Movement'
  ClientHeight = 498
  ClientWidth = 1382
  ExplicitWidth = 1382
  ExplicitHeight = 498
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1382
    Height = 472
    BorderStyle = cxcbsNone
    PopupMenu = popOTCIns
    LevelTabs.Style = 9
    ExplicitWidth = 1382
    ExplicitHeight = 472
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsSelection.CellSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.BandHeaders = True
      Bands = <
        item
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
          Caption = 'Canceled'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Reversed'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwMasterSMID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SMID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSMCODE: TcxGridDBBandedColumn
        Caption = 'Code'
        DataBinding.FieldName = 'SMCODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        Caption = 'Entry Date'
        DataBinding.FieldName = 'ENTRYDATE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterVALUEDATE: TcxGridDBBandedColumn
        Caption = 'Value Date'
        DataBinding.FieldName = 'VALUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ACCNO: TcxGridDBBandedColumn
        Caption = 'Source Account No.'
        DataBinding.FieldName = 'SOURCE_ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ACCNAME: TcxGridDBBandedColumn
        Caption = 'Source Account Name'
        DataBinding.FieldName = 'SOURCE_ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TARGET_ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ACCNO: TcxGridDBBandedColumn
        Caption = 'Target Account No.'
        DataBinding.FieldName = 'TARGET_ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ACCNAME: TcxGridDBBandedColumn
        Caption = 'Target Account Name'
        DataBinding.FieldName = 'TARGET_ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterREMARK: TcxGridDBBandedColumn
        Caption = 'Remark'
        DataBinding.FieldName = 'REMARK'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Open'
            ImageIndex = 0
            Value = 'O'
          end
          item
            Description = 'Posted'
            Value = 'P'
          end
          item
            Description = 'Cancel'
            Value = 'C'
          end
          item
            Description = 'Reverse'
            Value = 'R'
          end>
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        Caption = 'Modification Date'
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        Caption = 'Modification User'
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterPURPOSE: TcxGridDBBandedColumn
        Caption = 'Purpose'
        DataBinding.FieldName = 'PURPOSE'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterTRADEREFF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADEREFF'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterSETTLEREASON: TcxGridDBBandedColumn
        Caption = 'Settle Reason'
        DataBinding.FieldName = 'SETTLEREASON'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ACCSOPID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_ACCSOPID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterNIK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NIK'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterNAME: TcxGridDBBandedColumn
        Caption = 'Account Name MSOP'
        DataBinding.FieldName = 'NAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL'
        RepositoryItem = dmGlobal.chkStandard
        Width = 38
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL_UI'
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAPPROVED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 53
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAPPROVED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVED_UI'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterPROGRAM_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROGRAM_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterprogName: TcxGridDBBandedColumn
        Caption = 'Program Name'
        DataBinding.FieldName = 'progName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED: TcxGridDBBandedColumn
        Caption = 'Posted'
        DataBinding.FieldName = 'POSTED'
        RepositoryItem = dmGlobal.chkStandard
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_UI: TcxGridDBBandedColumn
        Caption = 'Posted User ID'
        DataBinding.FieldName = 'POSTED_UI'
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterREVERSE: TcxGridDBBandedColumn
        Caption = 'Reverse'
        DataBinding.FieldName = 'REVERSE'
        RepositoryItem = dmGlobal.chkStandard
        Width = 46
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterREVERSE_UI: TcxGridDBBandedColumn
        Caption = 'Reverse User ID'
        DataBinding.FieldName = 'REVERSE_UI'
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterprog_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'prog_id'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKTRANSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKTRANSID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL_SYSDATE'
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterAPPROVED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVED_SYSDATE'
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_DATE'
        Width = 120
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_SYSDATE'
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterREVERSE_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSE_SYSDATE'
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL_DATE'
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterAPPROVED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVED_DATE'
        Width = 120
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterREVERSE_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSE_DATE'
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object gvwOTCInstr: TcxGridDBBandedTableView [1]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsOTCInstr
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      FilterRow.Visible = True
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwOTCInstrAccountNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccountNo'
        Width = 121
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwOTCInstrAccountName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccountName'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwOTCInstrinstructionType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'instructionType'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwOTCInstrexternalReference: TcxGridDBBandedColumn
        DataBinding.FieldName = 'externalReference'
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwOTCInstrparticipantCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'participantCode'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwOTCInstrparticipantAccount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'participantAccount'
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwOTCInstrparticipantAccountCash: TcxGridDBBandedColumn
        DataBinding.FieldName = 'participantAccountCash'
        Width = 126
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwOTCInstrcounterpartCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'counterpartCode'
        Width = 93
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwOTCInstrsecurityCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'securityCode'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwOTCInstrnumberOfSecurities: TcxGridDBBandedColumn
        DataBinding.FieldName = 'numberOfSecurities'
        Width = 107
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwOTCInstrtradeDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tradeDate'
        Width = 102
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwOTCInstrcurrencyCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'currencyCode'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwOTCInstrsettlementAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'settlementAmount'
        Width = 98
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwOTCInstrsettlementDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'settlementDate'
        Width = 96
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwOTCInstrpurpose: TcxGridDBBandedColumn
        DataBinding.FieldName = 'purpose'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwOTCInstrtradingReference: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tradingReference'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwOTCInstrsettlementReason: TcxGridDBBandedColumn
        DataBinding.FieldName = 'settlementReason'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwOTCInstrdescription: TcxGridDBBandedColumn
        DataBinding.FieldName = 'description'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwOTCInstrsecurityCodeType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'securityCodeType'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      Caption = 'Stock Movement'
    end
    object grdMasterLevel2: TcxGridLevel
      Caption = 'OTC Instruction'
      GridView = gvwOTCInstr
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actView'
        Permission = '[Stock Movement].View Approval Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Stock Movement].View'
      end
      item
        ActionName = 'actNew'
        Permission = '[Stock Movement].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Stock Movement].Edit'
      end
      item
        ActionName = 'actDelete'
        Permission = '[Stock Movement].Delete'
      end
      item
        ActionName = 'actRefresh'
        Permission = '[Stock Movement].Refresh'
      end
      item
        ActionName = 'actCancel'
        Permission = '[Stock Movement].Cancel'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Stock Movement].Copy From Selected Data'
      end
      item
        ActionName = 'actApprove'
        Permission = '[Stock Movement].Approve'
      end
      item
        ActionName = 'actReject'
        Permission = '[Stock Movement].Reject'
      end>
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
    object Copygridwithheader1: TMenuItem [6]
      Action = actCopySelected
    end
    object N1: TMenuItem [11]
      Caption = '-'
    end
    object UploadFromExcelFile: TMenuItem [12]
      Action = actUploadFromFile
    end
    object N5: TMenuItem [13]
      Caption = '-'
    end
    object Approve2: TMenuItem [14]
      Action = actStockApproved
    end
    object Cancel2: TMenuItem [15]
      Action = actCancelStockMove
    end
    object Posting1: TMenuItem [16]
      Action = actPosting
    end
    object Reverse1: TMenuItem [17]
      Action = actReverse
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsStockMovList
  end
  inherited aclEditor: TActionList
    inherited actEdit: TNAction
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
    object actPosting: TNAction
      Category = 'NActions'
      Caption = 'Posting'
      OnExecute = actPostingExecute
      CheckPermission = False
    end
    object actReverse: TNAction
      Category = 'NActions'
      Caption = 'Reverse'
      OnExecute = actReverseExecute
      OnUpdate = actReverseUpdate
      CheckPermission = False
    end
    object actGenerateInstruction: TNAction
      Category = 'NActions'
      Caption = 'Generate Instruction'
      OnExecute = actGenerateInstructionExecute
      CheckPermission = False
    end
    object actGenerateOTCNonExchange: TNAction
      Category = 'NActions'
      Caption = 'Generate OTC Non Exchange'
      OnExecute = actGenerateOTCNonExchangeExecute
      CheckPermission = False
    end
    object actCancelStockMove: TNAction
      Category = 'NActions'
      Caption = 'Cancel'
      OnExecute = actCancelStockMoveExecute
      OnUpdate = actCancelStockMoveUpdate
      CheckPermission = False
    end
    object actStockApproved: TNAction
      Category = 'NActions'
      Caption = 'Approve'
      OnExecute = actStockApprovedExecute
      OnUpdate = actStockApprovedUpdate
      CheckPermission = False
    end
    object actGenerateOTCFile: TNAction
      Category = 'OTC Instruction'
      Caption = 'Generate OTC Instruction File'
      OnExecute = actGenerateOTCFileExecute
      CheckPermission = False
    end
    object actUploadFromFile: TNAction
      Category = 'NActions'
      Caption = 'Upload From file'
      OnExecute = actUploadFromFileExecute
      CheckPermission = False
    end
    object actCopySelected: TNAction
      Category = 'NActions'
      Caption = 'Copy grid with header'
      ShortCut = 16472
      OnExecute = actCopySelectedExecute
      CheckPermission = False
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
          ItemName = 'cbFilter'
        end
        item
          Visible = True
          ItemName = 'dtStartDate'
        end
        item
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
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <>
    end
    object cbFilter: TcxBarEditItem
      Caption = 'Filter By'
      Category = 0
      Hint = 'Filter By'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <
        item
          Description = 'Entry Date'
          ImageIndex = 0
          Value = 'E'
        end
        item
          Description = 'Value Date'
          Value = 'V'
        end>
    end
    object dtStartDate: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd MMM yyyy'
    end
    object chStatus: TcxBarEditItem
      Caption = 'Status'
      Category = 0
      Hint = 'Status'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxCheckGroupProperties'
      Properties.Columns = 4
      Properties.EditValueFormat = cvfStatesString
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'Open'
        end
        item
          Caption = 'Posted'
        end
        item
          Caption = 'Canceled'
        end
        item
          Caption = 'Reversed'
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
    MasterDataset = cdsStockMovH
    ListDataset = cdsStockMovList
    DetailsData = <
      item
        DetailDataset = cdsStockMovD
        DetailKeys = <
          item
            FieldName = 'INSTRUMENT_ID'
            FieldIndex = 0
          end>
      end>
    MasterTableName = 'main.B_STOCKMOV_H'
    AuditTableName = 'audit.B_STOCKMOV_H_UPD'
    Keys = <
      item
        FieldName = 'SMID'
        FieldIndex = 0
      end>
    AutoFields = <
      item
        FieldName = 'SMID'
        SequenceName = 'TBL_B_STOCKMOV_H'
        DataType = ftInteger
        NumFormat = '%.6d'
      end>
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsStockMovList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'FILTERTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'STARTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockMovList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 160
    Top = 122
    object cdsStockMovListSMID: TIntegerField
      FieldName = 'SMID'
      Required = True
    end
    object cdsStockMovListSMCODE: TStringField
      FieldName = 'SMCODE'
      Required = True
    end
    object cdsStockMovListENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsStockMovListVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsStockMovListSOURCE_ACCID: TIntegerField
      FieldName = 'SOURCE_ACCID'
      Required = True
    end
    object cdsStockMovListSOURCE_ACCNO: TStringField
      FieldName = 'SOURCE_ACCNO'
      Size = 30
    end
    object cdsStockMovListSOURCE_ACCNAME: TStringField
      FieldName = 'SOURCE_ACCNAME'
      Size = 150
    end
    object cdsStockMovListTARGET_ACCID: TIntegerField
      FieldName = 'TARGET_ACCID'
      Required = True
    end
    object cdsStockMovListTARGET_ACCNO: TStringField
      FieldName = 'TARGET_ACCNO'
      Size = 30
    end
    object cdsStockMovListTARGET_ACCNAME: TStringField
      FieldName = 'TARGET_ACCNAME'
      Size = 150
    end
    object cdsStockMovListREMARK: TStringField
      FieldName = 'REMARK'
      Size = 250
    end
    object cdsStockMovListSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsStockMovListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsStockMovListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsStockMovListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsStockMovListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsStockMovListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsStockMovListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsStockMovListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsStockMovListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsStockMovListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsStockMovListPURPOSE: TStringField
      FieldName = 'PURPOSE'
      Size = 10
    end
    object cdsStockMovListTRADEREFF: TStringField
      FieldName = 'TRADEREFF'
      Size = 30
    end
    object cdsStockMovListSETTLEREASON: TStringField
      FieldName = 'SETTLEREASON'
      Size = 10
    end
    object cdsStockMovListSOURCE_ACCSOPID: TLargeintField
      DisplayLabel = 'Account SOP ID'
      FieldName = 'SOURCE_ACCSOPID'
    end
    object cdsStockMovListNIK: TStringField
      FieldName = 'NIK'
      ReadOnly = True
      Size = 30
    end
    object cdsStockMovListNAME: TStringField
      DisplayLabel = 'Account NAME MSOP'
      FieldName = 'NAME'
      ReadOnly = True
      Size = 150
    end
    object cdsStockMovListCANCEL: TStringField
      DisplayLabel = 'Cancel'
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsStockMovListCANCEL_UI: TStringField
      DisplayLabel = 'Cancel User ID'
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsStockMovListAPPROVED: TStringField
      DisplayLabel = 'Approved'
      FieldName = 'APPROVED'
      Size = 1
    end
    object cdsStockMovListAPPROVED_UI: TStringField
      DisplayLabel = 'Approved User ID'
      FieldName = 'APPROVED_UI'
      Size = 30
    end
    object cdsStockMovListPROGRAM_ID: TIntegerField
      FieldName = 'PROGRAM_ID'
    end
    object cdsStockMovListprog_id: TIntegerField
      FieldName = 'prog_id'
    end
    object cdsStockMovListprogName: TStringField
      FieldName = 'progName'
      ReadOnly = True
      Size = 200
    end
    object cdsStockMovListPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsStockMovListPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsStockMovListREVERSE: TStringField
      FieldName = 'REVERSE'
      Size = 1
    end
    object cdsStockMovListREVERSE_UI: TStringField
      FieldName = 'REVERSE_UI'
      Size = 30
    end
    object cdsStockMovListSTOCKTRANSID: TLargeintField
      FieldName = 'STOCKTRANSID'
    end
    object cdsStockMovListCANCEL_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'CANCEL_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockMovListAPPROVED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'APPROVED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockMovListPOSTED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'POSTED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsStockMovListPOSTED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'POSTED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockMovListREVERSE_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'REVERSE_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockMovListCANCEL_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'CANCEL_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsStockMovListAPPROVED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'APPROVED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsStockMovListREVERSE_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'REVERSE_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
  end
  object cdsStockMovH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SMID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockMovH'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsStockMovHBeforePost
    OnNewRecord = cdsStockMovHNewRecord
    AfterApplyUpdates = cdsStockMovHAfterApplyUpdates
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 280
    Top = 122
    object cdsStockMovHSMID: TIntegerField
      FieldName = 'SMID'
      Required = True
    end
    object cdsStockMovHSMCODE: TStringField
      FieldName = 'SMCODE'
      Required = True
    end
    object cdsStockMovHENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
    end
    object cdsStockMovHVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsStockMovHSOURCE_ACCID: TIntegerField
      FieldName = 'SOURCE_ACCID'
      Required = True
      OnChange = cdsStockMovHSOURCE_ACCIDChange
    end
    object cdsStockMovHSOURCE_ACCNO: TStringField
      FieldName = 'SOURCE_ACCNO'
      Size = 30
    end
    object cdsStockMovHSOURCE_ACCNAME: TStringField
      FieldName = 'SOURCE_ACCNAME'
      Size = 150
    end
    object cdsStockMovHTARGET_ACCID: TIntegerField
      FieldName = 'TARGET_ACCID'
      Required = True
    end
    object cdsStockMovHTARGET_ACCNO: TStringField
      FieldName = 'TARGET_ACCNO'
      Size = 30
    end
    object cdsStockMovHTARGET_ACCNAME: TStringField
      FieldName = 'TARGET_ACCNAME'
      Size = 150
    end
    object cdsStockMovHREMARK: TStringField
      FieldName = 'REMARK'
      Size = 250
    end
    object cdsStockMovHPURPOSE: TStringField
      FieldName = 'PURPOSE'
      Size = 10
    end
    object cdsStockMovHTRADEREFF: TStringField
      FieldName = 'TRADEREFF'
      Size = 30
    end
    object cdsStockMovHSETTLEREASON: TStringField
      FieldName = 'SETTLEREASON'
      Size = 10
    end
    object cdsStockMovHSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsStockMovHMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsStockMovHMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsStockMovHAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsStockMovHAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsStockMovHUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsStockMovHUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsStockMovHNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsStockMovHISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsStockMovHID: TLargeintField
      FieldName = 'ID'
    end
    object cdsStockMovHSOURCE_ACCSOPID: TLargeintField
      FieldName = 'SOURCE_ACCSOPID'
    end
    object cdsStockMovHCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsStockMovHCANCEL_DATE: TDateField
      FieldName = 'CANCEL_DATE'
    end
    object cdsStockMovHCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsStockMovHAPPROVED: TStringField
      FieldName = 'APPROVED'
      Size = 1
    end
    object cdsStockMovHAPPROVED_DATE: TDateField
      FieldName = 'APPROVED_DATE'
    end
    object cdsStockMovHAPPROVED_UI: TStringField
      FieldName = 'APPROVED_UI'
      Size = 30
    end
    object cdsStockMovHSOURCE_ENTID: TIntegerField
      FieldName = 'SOURCE_ENTID'
    end
    object cdsStockMovHTARGET_ENTID: TIntegerField
      FieldName = 'TARGET_ENTID'
    end
    object cdsStockMovHPROGRAM_ID: TIntegerField
      FieldName = 'PROGRAM_ID'
    end
    object cdsStockMovHprog_id: TIntegerField
      FieldName = 'prog_id'
    end
    object cdsStockMovHprogName: TStringField
      FieldName = 'progName'
      ReadOnly = True
      Size = 200
    end
    object cdsStockMovHqryStockMovD: TDataSetField
      FieldName = 'qryStockMovD'
    end
  end
  object cdsStockMovD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsStockMovHqryStockMovD
    FieldDefs = <
      item
        Name = 'SMID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'INSTRUMENT_ID'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'SMQTY'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'MODDA'
        DataType = ftDateTime
      end
      item
        Name = 'MODUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'APPDA'
        DataType = ftDateTime
      end
      item
        Name = 'APPUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UNDER4Y'
        DataType = ftInteger
      end
      item
        Name = 'UNDER4YDA'
        DataType = ftDateTime
      end
      item
        Name = 'NOTES4Y'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ISDEL'
        DataType = ftInteger
      end
      item
        Name = 'ID'
        DataType = ftLargeint
      end
      item
        Name = 'MARKETCODE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LOCALCODE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ISSUERNAME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ISINCODE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ISINDATE'
        DataType = ftDateTime
      end
      item
        Name = 'SOURCE_SETTLED'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TARGET_SETTLED'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SOURCE_MATCH'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TARGET_MATCH'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SOURCE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TARGET_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'MAXQTY'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforePost = cdsStockMovDBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 280
    Top = 170
    object cdsStockMovDSMID: TIntegerField
      FieldName = 'SMID'
      Required = True
    end
    object cdsStockMovDINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsStockMovDSMQTY: TLargeintField
      FieldName = 'SMQTY'
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsStockMovDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsStockMovDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsStockMovDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsStockMovDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsStockMovDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsStockMovDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsStockMovDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsStockMovDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsStockMovDID: TLargeintField
      FieldName = 'ID'
    end
    object cdsStockMovDMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsStockMovDLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
    end
    object cdsStockMovDISSUERNAME: TStringField
      FieldName = 'ISSUERNAME'
      Size = 100
    end
    object cdsStockMovDISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsStockMovDISINDATE: TDateTimeField
      FieldName = 'ISINDATE'
    end
    object cdsStockMovDSOURCE_SETTLED: TStringField
      FieldName = 'SOURCE_SETTLED'
      Size = 1
    end
    object cdsStockMovDTARGET_SETTLED: TStringField
      FieldName = 'TARGET_SETTLED'
      Size = 1
    end
    object cdsStockMovDSOURCE_MATCH: TStringField
      FieldName = 'SOURCE_MATCH'
      Size = 1
    end
    object cdsStockMovDTARGET_MATCH: TStringField
      FieldName = 'TARGET_MATCH'
      Size = 1
    end
    object cdsStockMovDSOURCE_PRICE: TFloatField
      FieldName = 'SOURCE_PRICE'
    end
    object cdsStockMovDTARGET_PRICE: TFloatField
      FieldName = 'TARGET_PRICE'
    end
    object cdsStockMovDMAXQTY: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'MAXQTY'
    end
  end
  object cdsStockPosByAcc: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockPosByAcc'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 160
    Top = 170
    object cdsStockPosByAccSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsStockPosByAccMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsStockPosByAccLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      ReadOnly = True
    end
    object cdsStockPosByAccISSUERNAME: TStringField
      FieldName = 'ISSUERNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsStockPosByAccISINCODE: TStringField
      FieldName = 'ISINCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsStockPosByAccISINDATE: TDateTimeField
      FieldName = 'ISINDATE'
      ReadOnly = True
    end
    object cdsStockPosByAccQTY_ONHAND: TFloatField
      FieldName = 'QTY_ONHAND'
      DisplayFormat = '#,##0'
    end
    object cdsStockPosByAccQTY_OUTS: TFloatField
      FieldName = 'QTY_OUTS'
      DisplayFormat = '#,##0'
    end
    object cdsStockPosByAccQTY_ONHOLD: TFloatField
      FieldName = 'QTY_ONHOLD'
      DisplayFormat = '#,##0'
    end
    object cdsStockPosByAccQTY_BAL: TFloatField
      FieldName = 'QTY_BAL'
      DisplayFormat = '#,##0'
    end
    object cdsStockPosByAccQTY_OVERDUE: TFloatField
      FieldName = 'QTY_OVERDUE'
      DisplayFormat = '#,##0'
    end
    object cdsStockPosByAccQTY_DLV: TFloatField
      FieldName = 'QTY_DLV'
      DisplayFormat = '#,##0'
    end
    object cdsStockPosByAccQTY_RCV: TFloatField
      FieldName = 'QTY_RCV'
      DisplayFormat = '#,##0'
    end
  end
  object cdsStockMovHBySMID: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SMID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockMovHBySMID'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 416
    Top = 115
    object cdsStockMovHBySMIDSMID: TIntegerField
      FieldName = 'SMID'
      Required = True
    end
    object cdsStockMovHBySMIDSMCODE: TStringField
      FieldName = 'SMCODE'
      Required = True
    end
    object cdsStockMovHBySMIDENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
    end
    object cdsStockMovHBySMIDVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsStockMovHBySMIDSOURCE_ACCID: TIntegerField
      FieldName = 'SOURCE_ACCID'
      Required = True
    end
    object cdsStockMovHBySMIDSOURCE_ACCNO: TStringField
      FieldName = 'SOURCE_ACCNO'
      Size = 30
    end
    object cdsStockMovHBySMIDSOURCE_ACCNAME: TStringField
      FieldName = 'SOURCE_ACCNAME'
      Size = 150
    end
    object cdsStockMovHBySMIDTARGET_ACCID: TIntegerField
      FieldName = 'TARGET_ACCID'
      Required = True
    end
    object cdsStockMovHBySMIDTARGET_ACCNO: TStringField
      FieldName = 'TARGET_ACCNO'
      Size = 30
    end
    object cdsStockMovHBySMIDTARGET_ACCNAME: TStringField
      FieldName = 'TARGET_ACCNAME'
      Size = 150
    end
    object cdsStockMovHBySMIDREMARK: TStringField
      FieldName = 'REMARK'
      Size = 250
    end
    object cdsStockMovHBySMIDPURPOSE: TStringField
      FieldName = 'PURPOSE'
      Size = 10
    end
    object cdsStockMovHBySMIDTRADEREFF: TStringField
      FieldName = 'TRADEREFF'
      Size = 30
    end
    object cdsStockMovHBySMIDSETTLEREASON: TStringField
      FieldName = 'SETTLEREASON'
      Size = 10
    end
    object cdsStockMovHBySMIDSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsStockMovHBySMIDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsStockMovHBySMIDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsStockMovHBySMIDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsStockMovHBySMIDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsStockMovHBySMIDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsStockMovHBySMIDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsStockMovHBySMIDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsStockMovHBySMIDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsStockMovHBySMIDID: TLargeintField
      FieldName = 'ID'
    end
    object cdsStockMovHBySMIDSOURCE_ACCSOPID: TLargeintField
      FieldName = 'SOURCE_ACCSOPID'
    end
    object cdsStockMovHBySMIDCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsStockMovHBySMIDCANCEL_DATE: TDateField
      FieldName = 'CANCEL_DATE'
    end
    object cdsStockMovHBySMIDCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsStockMovHBySMIDAPPROVED: TStringField
      FieldName = 'APPROVED'
      Size = 1
    end
    object cdsStockMovHBySMIDAPPROVED_DATE: TDateField
      FieldName = 'APPROVED_DATE'
    end
    object cdsStockMovHBySMIDAPPROVED_UI: TStringField
      FieldName = 'APPROVED_UI'
      Size = 30
    end
  end
  object cdsOTCInstr: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockMovOtcIns'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 584
    Top = 224
    object cdsOTCInstrAccountNo: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'AccountNo'
      Size = 30
    end
    object cdsOTCInstrAccountName: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'AccountName'
      Size = 150
    end
    object cdsOTCInstrinstructionType: TStringField
      DisplayLabel = 'Instruction Type'
      FieldName = 'instructionType'
      Size = 10
    end
    object cdsOTCInstrexternalReference: TStringField
      DisplayLabel = 'External Reference'
      FieldName = 'externalReference'
      Required = True
      Size = 40
    end
    object cdsOTCInstrparticipantCode: TStringField
      DisplayLabel = 'Participant Code'
      FieldName = 'participantCode'
      Size = 10
    end
    object cdsOTCInstrparticipantAccount: TStringField
      DisplayLabel = 'Participant Account'
      FieldName = 'participantAccount'
    end
    object cdsOTCInstrparticipantAccountCash: TStringField
      DisplayLabel = 'Participant Account Cash'
      FieldName = 'participantAccountCash'
      Size = 15
    end
    object cdsOTCInstrcounterpartCode: TStringField
      DisplayLabel = 'Counterpart Code'
      FieldName = 'counterpartCode'
      Size = 10
    end
    object cdsOTCInstrsecurityCode: TStringField
      DisplayLabel = 'Security Code'
      FieldName = 'securityCode'
    end
    object cdsOTCInstrnumberOfSecurities: TFloatField
      DisplayLabel = 'Number Of Securities'
      FieldName = 'numberOfSecurities'
    end
    object cdsOTCInstrtradeDate: TStringField
      DisplayLabel = 'Trade Date'
      FieldName = 'tradeDate'
      ReadOnly = True
      Size = 10
    end
    object cdsOTCInstrcurrencyCode: TStringField
      DisplayLabel = 'Currency Code'
      FieldName = 'currencyCode'
      Size = 5
    end
    object cdsOTCInstrsettlementAmount: TFloatField
      DisplayLabel = 'Settlement Amount'
      FieldName = 'settlementAmount'
    end
    object cdsOTCInstrsettlementDate: TStringField
      DisplayLabel = 'Settlement Date'
      FieldName = 'settlementDate'
      ReadOnly = True
      Size = 10
    end
    object cdsOTCInstrpurpose: TStringField
      DisplayLabel = 'Purpose'
      FieldName = 'purpose'
    end
    object cdsOTCInstrtradingReference: TStringField
      DisplayLabel = 'Trading Reference'
      FieldName = 'tradingReference'
    end
    object cdsOTCInstrsettlementReason: TStringField
      DisplayLabel = 'Settlement Reason'
      FieldName = 'settlementReason'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsOTCInstrdescription: TStringField
      DisplayLabel = 'Description'
      FieldName = 'description'
      Size = 150
    end
    object cdsOTCInstrsecurityCodeType: TStringField
      DisplayLabel = 'Security Code Type'
      FieldName = 'securityCodeType'
      Size = 10
    end
  end
  object dsOTCInstr: TDataSource
    DataSet = cdsOTCInstr
    Left = 584
    Top = 272
  end
  object popOTCIns: TPopupMenu
    Left = 584
    Top = 320
    object GenerateRFOPFile1: TMenuItem
      Action = actGenerateOTCFile
    end
  end
  object OpenDialog: TOpenDialog
    Left = 584
    Top = 160
  end
  object cdsAccountByAccNo: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'ACCCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccountByAccNo'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 720
    Top = 152
    object cdsAccountByAccNoACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountByAccNoACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccountByAccNoACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsAccountByAccNoACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      ReadOnly = True
    end
    object cdsAccountByAccNoACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      ReadOnly = True
      Size = 50
    end
  end
  object cdsAccNoTarget: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'ACCCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccountByAccNo'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 720
    Top = 208
    object cdsAccNoTargetACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccNoTargetACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccNoTargetACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsAccNoTargetACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      ReadOnly = True
    end
    object cdsAccNoTargetACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      ReadOnly = True
      Size = 50
    end
  end
end
