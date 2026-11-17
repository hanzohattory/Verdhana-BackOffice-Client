inherited frmRDNCashDepositList: TfrmRDNCashDepositList
  Caption = 'Cash Deposit RDN'
  ClientWidth = 1339
  ExplicitWidth = 1339
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1339
    Height = 286
    ExplicitWidth = 1339
    ExplicitHeight = 286
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'CMAMT'
          Column = gvwMasterCMAMT
        end>
      FilterRow.Visible = False
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsSelection.CellSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.BandHeaders = True
      OptionsView.FixedBandSeparatorColor = clBlack
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
          Styles.Header = dmGlobal.ChangedData
        end
        item
          Caption = 'Posted'
          Options.HoldOwnColumnsOnly = True
          Styles.Background = dmGlobal.colSelected
        end
        item
          Caption = 'Canceled'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Reversed'
          Options.HoldOwnColumnsOnly = True
          Styles.Background = dmGlobal.colSelected
        end>
      object gvwMasterCMID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCMCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMCODE'
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCMTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMTYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterCMDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMDESC'
        Width = 273
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Width = 109
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCBANKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterDC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterCCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCY'
        Width = 49
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterCMAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMAMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 38
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_DATE'
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_UI: TcxGridDBBandedColumn
        Caption = 'User ID'
        DataBinding.FieldName = 'POSTED_UI'
        Width = 121
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL'
        RepositoryItem = dmGlobal.chkStandard
        Width = 38
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL_DATE: TcxGridDBBandedColumn
        Caption = 'Date'
        DataBinding.FieldName = 'CANCEL_DATE'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL_UI: TcxGridDBBandedColumn
        Caption = 'User ID'
        DataBinding.FieldName = 'CANCEL_UI'
        Width = 126
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 253
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterBNCODE: TcxGridDBBandedColumn
        Caption = 'Bank Code'
        DataBinding.FieldName = 'BNCODE'
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterBNACCNO: TcxGridDBBandedColumn
        Caption = 'Bank Account No'
        DataBinding.FieldName = 'BNACCNO'
        Width = 118
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterBNACCNAME: TcxGridDBBandedColumn
        Caption = 'Bank Account Name'
        DataBinding.FieldName = 'BNACCNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterBNBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNBRANCH'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 46
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_DATE: TcxGridDBBandedColumn
        Caption = 'Date'
        DataBinding.FieldName = 'REVERSED_DATE'
        Width = 72
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_UI: TcxGridDBBandedColumn
        Caption = 'User ID'
        DataBinding.FieldName = 'REVERSED_UI'
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_TIME: TcxGridDBBandedColumn
        Caption = 'Time Stamp'
        DataBinding.FieldName = 'POSTED_TIME'
        Width = 130
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL_TIME: TcxGridDBBandedColumn
        Caption = 'Time Stamp'
        DataBinding.FieldName = 'CANCEL_TIME'
        Width = 130
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_TIME: TcxGridDBBandedColumn
        Caption = 'Time Stamp'
        DataBinding.FieldName = 'REVERSED_TIME'
        Width = 130
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Created'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = 'Posted'
            Value = '2'
          end
          item
            Description = 'Reversed'
            Value = '3'
          end
          item
            Description = 'Canceled'
            Value = '4'
          end>
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
    end
  end
  object pnlProgress: TPanel [1]
    Left = 21
    Top = 124
    Width = 340
    Height = 52
    BevelKind = bkTile
    BevelOuter = bvNone
    Caption = 'Please Wait, Process On Progress'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 338
    Width = 1339
    Height = 130
    Align = alBottom
    TabOrder = 6
    Visible = False
    OnEnter = grdMasterEnter
    object cxGridDBBandedTableView1: TcxGridDBBandedTableView
      PopupMenu = popMaster
      OnKeyDown = gvwMasterKeyDown
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCustomDrawCell = gvwMasterCustomDrawCell
      DataController.DataSource = dsCashMutationToExcel
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'CMAMT'
          Column = cxGridDBBandedColumn11
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      OptionsView.FixedBandSeparatorColor = clBlack
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
          Styles.Header = dmGlobal.ChangedData
        end
        item
          Caption = 'Posted'
          Options.HoldOwnColumnsOnly = True
          Styles.Background = dmGlobal.colSelected
        end
        item
          Caption = 'Canceled'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Reversed'
          Options.HoldOwnColumnsOnly = True
          Styles.Background = dmGlobal.colSelected
        end>
      object cxGridDBBandedColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMCODE'
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMTYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn5: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMDESC'
        Width = 273
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn6: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn7: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Width = 109
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn8: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCBANKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn9: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn10: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCY'
        Width = 49
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn11: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMAMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn12: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 38
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn13: TcxGridDBBandedColumn
        Caption = 'Date'
        DataBinding.FieldName = 'POSTED_DATE'
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn14: TcxGridDBBandedColumn
        Caption = 'User ID'
        DataBinding.FieldName = 'POSTED_UI'
        Width = 121
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn15: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL'
        RepositoryItem = dmGlobal.chkStandard
        Width = 38
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn16: TcxGridDBBandedColumn
        Caption = 'Date'
        DataBinding.FieldName = 'CANCEL_DATE'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn17: TcxGridDBBandedColumn
        Caption = 'User ID'
        DataBinding.FieldName = 'CANCEL_UI'
        Width = 126
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn18: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 253
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn19: TcxGridDBBandedColumn
        Caption = 'Bank Code'
        DataBinding.FieldName = 'BNCODE'
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn20: TcxGridDBBandedColumn
        Caption = 'Bank Account No'
        DataBinding.FieldName = 'BNACCNO'
        Width = 108
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn21: TcxGridDBBandedColumn
        Caption = 'Bank Account Name'
        DataBinding.FieldName = 'BNACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn22: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNBRANCH'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn23: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 46
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn24: TcxGridDBBandedColumn
        Caption = 'Date'
        DataBinding.FieldName = 'REVERSED_DATE'
        Width = 72
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn25: TcxGridDBBandedColumn
        Caption = 'User ID'
        DataBinding.FieldName = 'REVERSED_UI'
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn26: TcxGridDBBandedColumn
        Caption = 'Time Stamp'
        DataBinding.FieldName = 'POSTED_TIME'
        Width = 130
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn27: TcxGridDBBandedColumn
        Caption = 'Time Stamp'
        DataBinding.FieldName = 'CANCEL_TIME'
        Width = 130
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn28: TcxGridDBBandedColumn
        Caption = 'Time Stamp'
        DataBinding.FieldName = 'REVERSED_TIME'
        Width = 130
        Position.BandIndex = 3
        Position.ColIndex = 2
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
        ActionName = 'actNew'
        Permission = '[Cash Deposit RDN].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Cash Deposit RDN].Edit'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Cash Deposit RDN].Copy From Selected Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Cash Deposit RDN].View'
      end>
    AssignedPermission = <
      item
        Name = '[RDN Cash Deposit].New'
        Description = 'New RDN Cash Deposit'
      end
      item
        Name = '[RDN Cash Deposit].Cancel'
        Description = 'Cancel RDN Cash Deposit'
      end
      item
        Name = '[RDN Cash Deposit].View'
        Description = 'View RDN Cash Deposit'
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
    object Copygirdwithheader1: TMenuItem [6]
      Action = actCopySelected
    end
    object N1: TMenuItem [11]
      Caption = '-'
    end
    object Posting1: TMenuItem [12]
      Action = actCashMutationPosting
    end
    object Cancel1: TMenuItem [13]
      Action = actCancel
    end
    object Reverse1: TMenuItem [14]
      Action = actCashMutationReverse
    end
    object N5: TMenuItem [15]
      Caption = '-'
    end
    object actUploadDeposit: TMenuItem [16]
      Action = actUploadRDNCashFromExcel
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsRDNCashDepositList
  end
  inherited aclEditor: TActionList
    Left = 103
    inherited actEdit: TNAction
      OnUpdate = actEditUpdate
    end
    inherited actRefresh: TNAction
      Caption = 'Load Data'
    end
    inherited actCancel: TNAction
      OnUpdate = actCancelUpdate
    end
    object actCashMutationPosting: TNAction
      Category = 'Action'
      Caption = 'Posting'
      OnExecute = actCashMutationPostingExecute
      OnUpdate = actCashMutationPostingUpdate
      CheckPermission = False
    end
    object actCashMutationReverse: TNAction
      Category = 'NActions'
      Caption = 'Reverse'
      OnExecute = actCashMutationReverseExecute
      OnUpdate = actCashMutationReverseUpdate
      CheckPermission = False
    end
    object actUploadDataDeposit: TNAction
      Category = 'NActions'
      Caption = 'Upload Deposit Data'
      OnExecute = actUploadDataDepositExecute
      CheckPermission = False
    end
    object actPostingAll: TNAction
      Category = 'NActions'
      Caption = 'Posting All'
      ImageIndex = 1
      OnExecute = actPostingAllExecute
      CheckPermission = False
    end
    object actCopySelected: TNAction
      Category = 'NActions'
      Caption = 'Copy gird with header'
      ShortCut = 16472
      OnExecute = actCopySelectedExecute
      CheckPermission = False
    end
    object actUploadRDNCashFromExcel: TNAction
      Category = 'NActions'
      Caption = 'Upload Cash Deposit'
      OnExecute = actUploadRDNCashFromExcelExecute
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
    DockControlHeights = (
      0
      0
      26
      26)
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
          ItemName = 'dtTrans'
        end
        item
          Visible = True
          ItemName = 'dtTo'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkOpen'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkPosted'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkReversed'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkCanceled'
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object PagesBar: TdxBar [2]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 1357
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 64
          Visible = True
          ItemName = 'edPage'
        end
        item
          Visible = True
          ItemName = 'lbTotalPages'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dtTrans: TcxBarEditItem
      Caption = 'Transaction Date'
      Category = 0
      Hint = 'Transaction Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object dxBarButton1: TdxBarButton
      Action = actPostingAll
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object chkOpen: TcxBarEditItem
      Caption = 'Open'
      Category = 0
      Hint = 'Created'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '-'
    end
    object chkPosted: TcxBarEditItem
      Caption = 'Posted'
      Category = 0
      Hint = 'Posted'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '2'
      Properties.ValueUnchecked = '-'
    end
    object chkCanceled: TcxBarEditItem
      Caption = 'Canceled'
      Category = 0
      Hint = 'Canceled'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '4'
      Properties.ValueUnchecked = '-'
    end
    object chkReversed: TcxBarEditItem
      Caption = 'Reversed'
      Category = 0
      Hint = 'Reversed'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '3'
      Properties.ValueUnchecked = '-'
    end
    object dtTo: TcxBarEditItem
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 2
      PaintStyle = psCaptionInMenu
      OnClick = dxBarButton2Click
    end
    object edPage: TcxBarEditItem
      Caption = 'Page'
      Category = 0
      Hint = 'Page'
      Visible = ivAlways
      OnKeyPress = edPageKeyPress
      ShowCaption = True
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.Alignment.Horz = taCenter
      Properties.ImmediatePost = True
      Properties.MinValue = 1.000000000000000000
      InternalEditValue = '1'
    end
    object lbTotalPages: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object edAccNo: TcxBarEditItem
      Caption = 'Account No'
      Category = 0
      Hint = 'Account No'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object edAccName: TcxBarEditItem
      Caption = 'Account Name'
      Category = 0
      Hint = 'Account Name'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object edH2H: TcxBarEditItem
      Caption = 'Host To Host Only'
      Category = 0
      Hint = 'Host To Host Only'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
  end
  inherited DataContainer: TNMasterDetailData
    MasterDataset = cdsRDNCashDeposit
    ListDataset = cdsRDNCashDepositList
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsRDNCashDepositList: TNClientDataset
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
      end
      item
        DataType = ftString
        Name = 'stat'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashMutationList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 69
    Top = 132
    object cdsRDNCashDepositListCMID: TLargeintField
      FieldName = 'CMID'
      Required = True
    end
    object cdsRDNCashDepositListCMCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CMCODE'
      Required = True
    end
    object cdsRDNCashDepositListCMDATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'CMDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsRDNCashDepositListCMTYPE: TStringField
      FieldName = 'CMTYPE'
      Size = 1
    end
    object cdsRDNCashDepositListCMDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CMDESC'
      Size = 100
    end
    object cdsRDNCashDepositListACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsRDNCashDepositListACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsRDNCashDepositListACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsRDNCashDepositListDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsRDNCashDepositListCCY: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCY'
      Size = 5
    end
    object cdsRDNCashDepositListCMAMT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'CMAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsRDNCashDepositListPOSTED: TStringField
      DisplayLabel = 'Posted'
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsRDNCashDepositListPOSTED_UI: TStringField
      DisplayLabel = 'User Posted'
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsRDNCashDepositListCANCEL: TStringField
      DisplayLabel = 'Cancel'
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsRDNCashDepositListCANCEL_DATE: TDateField
      DisplayLabel = 'Cancel Date'
      FieldName = 'CANCEL_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsRDNCashDepositListCANCEL_UI: TStringField
      DisplayLabel = 'User Cancel'
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsRDNCashDepositListREVERSED: TStringField
      DisplayLabel = 'Reverse'
      FieldName = 'REVERSED'
      Size = 1
    end
    object cdsRDNCashDepositListREVERSED_DATE: TDateField
      DisplayLabel = 'Reverse Date'
      FieldName = 'REVERSED_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsRDNCashDepositListREVERSED_UI: TStringField
      DisplayLabel = 'Reverse User'
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsRDNCashDepositListPOSTED_TIME: TDateTimeField
      DisplayLabel = 'Posted Time Stamp'
      FieldName = 'POSTED_TIME'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsRDNCashDepositListCANCEL_TIME: TDateTimeField
      DisplayLabel = 'Cancel Time Stamp'
      FieldName = 'CANCEL_TIME'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsRDNCashDepositListREVERSED_TIME: TDateTimeField
      DisplayLabel = 'Reverse Time Stamp'
      FieldName = 'REVERSED_TIME'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsRDNCashDepositListACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsRDNCashDepositListBNCODE: TStringField
      FieldName = 'BNCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsRDNCashDepositListBNACCNO: TStringField
      FieldName = 'BNACCNO'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsRDNCashDepositListBNACCNAME: TStringField
      FieldName = 'BNACCNAME'
      ReadOnly = True
      Size = 250
    end
    object cdsRDNCashDepositListBNBRANCH: TStringField
      FieldName = 'BNBRANCH'
      ReadOnly = True
      Size = 50
    end
    object cdsRDNCashDepositListSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsRDNCashDepositListFUNDTRANSID: TLargeintField
      FieldName = 'FUNDTRANSID'
    end
    object cdsRDNCashDepositListPOSTED_DATE: TDateTimeField
      DisplayLabel = 'Date'
      FieldName = 'POSTED_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
  end
  object cdsRDNCashDeposit: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CMID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashMutation'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 69
    Top = 177
    object cdsRDNCashDepositCMID: TLargeintField
      FieldName = 'CMID'
      Required = True
    end
    object cdsRDNCashDepositCMCODE: TStringField
      FieldName = 'CMCODE'
      Required = True
    end
    object cdsRDNCashDepositCMDATE: TDateField
      FieldName = 'CMDATE'
      Required = True
    end
    object cdsRDNCashDepositCMTYPE: TStringField
      FieldName = 'CMTYPE'
      Size = 1
    end
    object cdsRDNCashDepositCMDESC: TStringField
      FieldName = 'CMDESC'
      Size = 100
    end
    object cdsRDNCashDepositACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsRDNCashDepositACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsRDNCashDepositACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsRDNCashDepositDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsRDNCashDepositCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsRDNCashDepositCMAMT: TFloatField
      FieldName = 'CMAMT'
    end
    object cdsRDNCashDepositPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsRDNCashDepositMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRDNCashDepositMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRDNCashDepositAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRDNCashDepositAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRDNCashDepositUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRDNCashDepositUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRDNCashDepositNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRDNCashDepositISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRDNCashDepositID: TLargeintField
      FieldName = 'ID'
    end
    object cdsRDNCashDepositPOSTED_DATE: TDateField
      FieldName = 'POSTED_DATE'
    end
    object cdsRDNCashDepositPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsRDNCashDepositCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsRDNCashDepositCANCEL_DATE: TDateField
      FieldName = 'CANCEL_DATE'
    end
    object cdsRDNCashDepositCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
  end
  object opDialog: TOpenDialog
    Filter = 'Excel File|*.xls|Excel File|*.xlsx'
    Left = 328
    Top = 160
  end
  object cdsAccountsByAccNo: TNClientDataset
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
    Left = 440
    Top = 142
    object cdsAccountsByAccNoACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountsByAccNoACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsAccountsByAccNoACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccountsByAccNoACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      ReadOnly = True
    end
    object cdsAccountsByAccNoACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      ReadOnly = True
      Size = 50
    end
  end
  object cdsUploadRDN: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CMID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashMutation'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 581
    Top = 193
    object cdsUploadRDNCMID: TLargeintField
      FieldName = 'CMID'
      Required = True
    end
    object cdsUploadRDNCMCODE: TStringField
      FieldName = 'CMCODE'
      Required = True
    end
    object cdsUploadRDNCMDATE: TDateField
      FieldName = 'CMDATE'
      Required = True
    end
    object cdsUploadRDNCMTYPE: TStringField
      FieldName = 'CMTYPE'
      Size = 1
    end
    object cdsUploadRDNCMDESC: TStringField
      FieldName = 'CMDESC'
      Size = 100
    end
    object cdsUploadRDNACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsUploadRDNACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsUploadRDNACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsUploadRDNDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsUploadRDNCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsUploadRDNCMAMT: TFloatField
      FieldName = 'CMAMT'
    end
    object cdsUploadRDNPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsUploadRDNMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsUploadRDNMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsUploadRDNAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsUploadRDNAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsUploadRDNUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsUploadRDNUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsUploadRDNNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsUploadRDNISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsUploadRDNID: TLargeintField
      FieldName = 'ID'
    end
    object cdsUploadRDNPOSTED_DATE: TDateField
      FieldName = 'POSTED_DATE'
    end
    object cdsUploadRDNPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsUploadRDNCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsUploadRDNCANCEL_DATE: TDateField
      FieldName = 'CANCEL_DATE'
    end
    object cdsUploadRDNCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
  end
  object cdsUploadCashRDN: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CMID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryUploadCash'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 581
    Top = 257
    object cdsUploadCashRDNROWNO: TIntegerField
      FieldName = 'ROWNO'
    end
    object cdsUploadCashRDNTRANS_DATE: TDateField
      FieldName = 'TRANS_DATE'
    end
    object cdsUploadCashRDNACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsUploadCashRDNACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 500
    end
    object cdsUploadCashRDNPRIV_BANK_ACCNO: TStringField
      FieldName = 'PRIV_BANK_ACCNO'
      Size = 50
    end
    object cdsUploadCashRDNAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object cdsUploadCashRDNBANK_CHARGE: TFloatField
      FieldName = 'BANK_CHARGE'
    end
    object cdsUploadCashRDNDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 500
    end
  end
  object cdsCashMutationToExcel: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'CMDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'CMDATETO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OPENED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'POSTED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CANCELED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'REVERSED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'AccNo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'AccName'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'H2H'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashMutationToExcel'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 765
    Top = 276
    object cdsCashMutationToExcelCMID: TLargeintField
      FieldName = 'CMID'
      Required = True
    end
    object cdsCashMutationToExcelCMCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CMCODE'
      Required = True
    end
    object cdsCashMutationToExcelCMDATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'CMDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashMutationToExcelCMTYPE: TStringField
      FieldName = 'CMTYPE'
      Size = 1
    end
    object cdsCashMutationToExcelCMDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CMDESC'
      Size = 100
    end
    object cdsCashMutationToExcelACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsCashMutationToExcelACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCashMutationToExcelACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsCashMutationToExcelDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsCashMutationToExcelCCY: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCashMutationToExcelCMAMT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'CMAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashMutationToExcelPOSTED: TStringField
      DisplayLabel = 'Posted'
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashMutationToExcelPOSTED_DATE: TDateField
      DisplayLabel = 'Posted Date'
      FieldName = 'POSTED_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashMutationToExcelPOSTED_UI: TStringField
      DisplayLabel = 'User Posted'
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsCashMutationToExcelCANCEL: TStringField
      DisplayLabel = 'Cancel'
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsCashMutationToExcelCANCEL_DATE: TDateField
      DisplayLabel = 'Cancel Date'
      FieldName = 'CANCEL_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashMutationToExcelCANCEL_UI: TStringField
      DisplayLabel = 'User Cancel'
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsCashMutationToExcelREVERSED: TStringField
      DisplayLabel = 'Reverse'
      FieldName = 'REVERSED'
      Size = 1
    end
    object cdsCashMutationToExcelREVERSED_DATE: TDateField
      DisplayLabel = 'Reverse Date'
      FieldName = 'REVERSED_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashMutationToExcelREVERSED_UI: TStringField
      DisplayLabel = 'Reverse User'
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsCashMutationToExcelPOSTED_TIME: TDateTimeField
      DisplayLabel = 'Posted Time Stamp'
      FieldName = 'POSTED_TIME'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsCashMutationToExcelCANCEL_TIME: TDateTimeField
      DisplayLabel = 'Cancel Time Stamp'
      FieldName = 'CANCEL_TIME'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsCashMutationToExcelREVERSED_TIME: TDateTimeField
      DisplayLabel = 'Reverse Time Stamp'
      FieldName = 'REVERSED_TIME'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsCashMutationToExcelACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsCashMutationToExcelBNCODE: TStringField
      FieldName = 'BNCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsCashMutationToExcelBNACCNO: TStringField
      FieldName = 'BNACCNO'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsCashMutationToExcelBNACCNAME: TStringField
      FieldName = 'BNACCNAME'
      ReadOnly = True
      Size = 250
    end
    object cdsCashMutationToExcelBNBRANCH: TStringField
      FieldName = 'BNBRANCH'
      ReadOnly = True
      Size = 50
    end
    object cdsCashMutationToExcelSTAT: TStringField
      FieldName = 'STAT'
      ReadOnly = True
      Required = True
      Size = 1
    end
  end
  object dsCashMutationToExcel: TDataSource
    DataSet = cdsCashMutationToExcel
    Left = 768
    Top = 336
  end
end
