inherited frmInterestTrackList: TfrmInterestTrackList
  Caption = 'Interest Track List'
  ClientHeight = 409
  ClientWidth = 1041
  ExplicitWidth = 1041
  ExplicitHeight = 409
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 70
    Width = 1041
    Height = 339
    ExplicitTop = 92
    ExplicitWidth = 1041
    ExplicitHeight = 317
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.Summary.FooterSummaryItems = <
        item
        end
        item
        end
        item
        end
        item
        end>
      object gvwMasterINTRS_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTRS_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterINTEREST_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTEREST_NO'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterINTERESTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTERESTDATE'
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterINTEREST_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTEREST_TYPE'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterBASE_INTRS_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_INTRS_AMT'
        Width = 123
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RATE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterINTEREST_DAY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTEREST_DAY'
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterYEAROFDAY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'YEAROFDAY'
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterINTEREST_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTEREST_AMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterTAX_PERCENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TAX_PERCENT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterTAX_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TAX_AMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterNET_INTEREST: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NET_INTEREST'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterACCRUED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCRUED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 54
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterACCRUE_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCRUE_DATE'
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterACCRUE_JRNID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCRUE_JRNID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterEXECUTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXECUTED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 56
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterEXEC_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXEC_DATE'
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterEXEC_JRNHID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXEC_JRNHID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterREVERSE_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSE_DATE'
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterREVERSE_JRNHID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSE_JRNHID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterDISCOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DISCOUNT'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 48
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterDISCOUNT_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DISCOUNT_DATE'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterDISCOUNT_JRNHID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DISCOUNT_JRNHID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterDISCOUNT_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DISCOUNT_AMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 42
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarReport
    Actions = <
      item
        ActionName = 'actRefresh'
        Permission = '[Interest Track List].Refresh'
      end
      item
        ActionName = 'actView'
        Permission = '[Interest Track List].View Approval Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Interest Track List].View'
      end
      item
        ActionName = 'actNew'
        Permission = '[Interest Track List].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Interest Track List].Edit'
      end
      item
        ActionName = 'actDelete'
        Permission = '[Interest Track List].Delete'
      end
      item
        ActionName = 'actCancel'
        Permission = '[Interest Track List].Cancel'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Interest Track List].Copy From Selected Data'
      end
      item
        ActionName = 'actApprove'
        Permission = '[Interest Track List].Approve'
      end
      item
        ActionName = 'actReject'
        Permission = '[Interest Track List].Reject'
      end>
    AssignedPermission = <
      item
        Name = 'Report Finance'
        Description = 'Report Finance'
      end>
    Left = 291
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
    object Executed1: TMenuItem [10]
      Action = actExecuted
    end
    object Reversed1: TMenuItem [11]
      Action = actReversed
    end
    object Discount1: TMenuItem [12]
      Action = actDiscount
    end
    object Posting1: TMenuItem [13]
      Action = actPosting
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsInterestTrackList
  end
  inherited aclEditor: TActionList
    Left = 92
    inherited actNew: TNAction
      Visible = False
      CheckPermission = False
    end
    inherited actEdit: TNAction
      Caption = 'Discount'
      Visible = False
      CheckPermission = False
    end
    inherited actDelete: TNAction
      CheckPermission = False
    end
    inherited actInsertFromCurrentData: TNAction
      Visible = False
      CheckPermission = False
    end
    inherited actOpen: TNAction
      Visible = False
      CheckPermission = False
    end
    object actExecuted: TNAction
      Category = 'NActions'
      Caption = 'Daily Executed'
      OnExecute = actExecutedExecute
      CheckPermission = False
    end
    object actReversed: TNAction
      Category = 'NActions'
      Caption = 'Reversed'
      OnExecute = actReversedExecute
      CheckPermission = False
    end
    object actPosting: TNAction
      Category = 'NActions'
      Caption = 'Posting'
      OnExecute = actPostingExecute
      CheckPermission = False
    end
    object actDiscount: TNAction
      Category = 'NActions'
      Caption = 'Discount'
      OnExecute = actDiscountExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      70
      0)
    object BarMBrowseBar2: TdxBar [2]
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 26
      DockingStyle = dsTop
      FloatLeft = 1059
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dtStartDate'
        end
        item
          Visible = True
          ItemName = 'dtEndDate'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object BarMBrowseBar4: TdxBar [3]
      BorderStyle = bbsNone
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 48
      DockingStyle = dsTop
      FloatLeft = 1059
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAllBranch'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 148
          Visible = True
          ItemName = 'edBranch'
        end>
      OneOnRow = True
      Row = 2
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dtStartDate: TcxBarEditItem
      Caption = 'Periode Interest Date'
      Category = 0
      Hint = 'Periode Interest Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object dtEndDate: TcxBarEditItem
      Caption = 'To'
      Category = 0
      Hint = 'To'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object edAccCode: TcxBarEditItem
      Caption = 'Account Code'
      Category = 0
      Hint = 'Account Code'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edAccCodePropertiesButtonClick
    end
    object edCustName: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
      Properties.ReadOnly = False
    end
    object chkAllAccount: TcxBarEditItem
      Caption = 'All Account'
      Category = 0
      Hint = 'All Account'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chkAllAccountPropertiesChange
    end
    object chkAllBranch: TcxBarEditItem
      Caption = 'All Branch'
      Category = 0
      Hint = 'All Branch'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '2'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chkAllBranchPropertiesChange
    end
    object edBranch: TcxBarEditItem
      Caption = 'Branch'
      Category = 0
      Hint = 'Branch'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ListColumns = <>
      RepositoryItem = dmGlobal.luBranch
    end
  end
  inherited DataContainer: TNMasterDetailData
    ListDataset = cdsInterestTrackList
    OnGetEditorClass = DataContainerGetEditorClass
  end
  inherited ReportContainer: TNClientReportContainer
    ReportName = 'Account Management\AccountInterest.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'DTSTART'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DTEND'
        ParamType = ptUnknown
      end
      item
        DataType = ftLargeint
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ALLACC'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ALLBRANCH'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'BRANCHID'
        ParamType = ptUnknown
      end>
  end
  object cdsInterestTrackList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'BEGINDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'ENDDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ALLACC'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ALLBRANCH'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'BRANCHID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryInterestTrackList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 57
    Top = 127
    object cdsInterestTrackListINTRS_ID: TLargeintField
      FieldName = 'INTRS_ID'
      Required = True
    end
    object cdsInterestTrackListINTEREST_NO: TStringField
      DisplayLabel = 'Interest No'
      FieldName = 'INTEREST_NO'
    end
    object cdsInterestTrackListINTERESTDATE: TDateField
      DisplayLabel = 'Interest Date'
      FieldName = 'INTERESTDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsInterestTrackListACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsInterestTrackListACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
      Required = True
    end
    object cdsInterestTrackListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsInterestTrackListCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsInterestTrackListINTEREST_TYPE: TStringField
      DisplayLabel = 'Interest Type'
      FieldName = 'INTEREST_TYPE'
      Size = 2
    end
    object cdsInterestTrackListBASE_INTRS_AMT: TFloatField
      DisplayLabel = 'Base Interest Amount'
      FieldName = 'BASE_INTRS_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestTrackListRATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'RATE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestTrackListINTEREST_DAY: TIntegerField
      DisplayLabel = 'Interest Day'
      FieldName = 'INTEREST_DAY'
    end
    object cdsInterestTrackListYEAROFDAY: TIntegerField
      DisplayLabel = 'Year Of Days'
      FieldName = 'YEAROFDAY'
    end
    object cdsInterestTrackListINTEREST_AMT: TFloatField
      DisplayLabel = 'Interest Amount'
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestTrackListTAX_PERCENT: TFloatField
      DisplayLabel = 'Tax Percent'
      FieldName = 'TAX_PERCENT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestTrackListTAX_AMT: TFloatField
      DisplayLabel = 'Tax Amount'
      FieldName = 'TAX_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestTrackListNET_INTEREST: TFloatField
      DisplayLabel = 'Net Interest'
      FieldName = 'NET_INTEREST'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestTrackListACCRUED: TStringField
      DisplayLabel = 'Accrued'
      FieldName = 'ACCRUED'
      Size = 1
    end
    object cdsInterestTrackListACCRUE_DATE: TDateField
      DisplayLabel = 'Accrued Date'
      FieldName = 'ACCRUE_DATE'
    end
    object cdsInterestTrackListACCRUE_JRNID: TLargeintField
      DisplayLabel = 'Accrued Jrn ID'
      FieldName = 'ACCRUE_JRNID'
    end
    object cdsInterestTrackListEXECUTED: TStringField
      DisplayLabel = 'Executed'
      FieldName = 'EXECUTED'
      Size = 1
    end
    object cdsInterestTrackListEXEC_DATE: TDateField
      DisplayLabel = 'Execute Date'
      FieldName = 'EXEC_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsInterestTrackListEXEC_JRNHID: TLargeintField
      FieldName = 'EXEC_JRNHID'
    end
    object cdsInterestTrackListREVERSED: TStringField
      DisplayLabel = 'Reversed'
      FieldName = 'REVERSED'
      Size = 1
    end
    object cdsInterestTrackListREVERSE_DATE: TDateField
      DisplayLabel = 'Reversed Date'
      FieldName = 'REVERSE_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsInterestTrackListREVERSE_JRNHID: TLargeintField
      FieldName = 'REVERSE_JRNHID'
    end
    object cdsInterestTrackListDISCOUNT: TStringField
      DisplayLabel = 'Discount'
      FieldName = 'DISCOUNT'
      Size = 1
    end
    object cdsInterestTrackListDISCOUNT_DATE: TDateField
      DisplayLabel = 'Discount Date'
      FieldName = 'DISCOUNT_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsInterestTrackListDISCOUNT_JRNHID: TLargeintField
      FieldName = 'DISCOUNT_JRNHID'
    end
    object cdsInterestTrackListDISCOUNT_AMT: TFloatField
      DisplayLabel = 'Discount Amount'
      FieldName = 'DISCOUNT_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestTrackListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsInterestTrackListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsInterestTrackListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsInterestTrackListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsInterestTrackListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsInterestTrackListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsInterestTrackListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsInterestTrackListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsInterestTrackListPOSTED: TStringField
      DisplayLabel = 'Posted'
      FieldName = 'POSTED'
      Size = 1
    end
  end
  object cdsInterestTrack: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'INTRS_ID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryInterestTrack'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 57
    Top = 165
    object cdsInterestTrackINTRS_ID: TLargeintField
      FieldName = 'INTRS_ID'
      Required = True
    end
    object cdsInterestTrackINTEREST_NO: TStringField
      FieldName = 'INTEREST_NO'
    end
    object cdsInterestTrackINTERESTDATE: TDateField
      FieldName = 'INTERESTDATE'
      Required = True
    end
    object cdsInterestTrackACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsInterestTrackACCNO: TStringField
      FieldName = 'ACCNO'
      Required = True
    end
    object cdsInterestTrackACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsInterestTrackCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsInterestTrackINTEREST_TYPE: TStringField
      FieldName = 'INTEREST_TYPE'
      Size = 2
    end
    object cdsInterestTrackBASE_INTRS_AMT: TFloatField
      FieldName = 'BASE_INTRS_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestTrackRATE: TFloatField
      FieldName = 'RATE'
    end
    object cdsInterestTrackINTEREST_DAY: TIntegerField
      FieldName = 'INTEREST_DAY'
    end
    object cdsInterestTrackYEAROFDAY: TIntegerField
      FieldName = 'YEAROFDAY'
    end
    object cdsInterestTrackINTEREST_AMT: TFloatField
      FieldName = 'INTEREST_AMT'
    end
    object cdsInterestTrackTAX_PERCENT: TFloatField
      FieldName = 'TAX_PERCENT'
    end
    object cdsInterestTrackTAX_AMT: TFloatField
      FieldName = 'TAX_AMT'
    end
    object cdsInterestTrackNET_INTEREST: TFloatField
      FieldName = 'NET_INTEREST'
    end
    object cdsInterestTrackACCRUED: TStringField
      FieldName = 'ACCRUED'
      Size = 1
    end
    object cdsInterestTrackACCRUE_DATE: TDateField
      FieldName = 'ACCRUE_DATE'
    end
    object cdsInterestTrackACCRUE_JRNID: TLargeintField
      FieldName = 'ACCRUE_JRNID'
    end
    object cdsInterestTrackEXECUTED: TStringField
      FieldName = 'EXECUTED'
      Size = 1
    end
    object cdsInterestTrackEXEC_DATE: TDateField
      FieldName = 'EXEC_DATE'
    end
    object cdsInterestTrackEXEC_JRNHID: TLargeintField
      FieldName = 'EXEC_JRNHID'
    end
    object cdsInterestTrackREVERSED: TStringField
      FieldName = 'REVERSED'
      Size = 1
    end
    object cdsInterestTrackREVERSE_DATE: TDateField
      FieldName = 'REVERSE_DATE'
    end
    object cdsInterestTrackREVERSE_JRNHID: TLargeintField
      FieldName = 'REVERSE_JRNHID'
    end
    object cdsInterestTrackDISCOUNT: TStringField
      FieldName = 'DISCOUNT'
      Size = 1
    end
    object cdsInterestTrackDISCOUNT_DATE: TDateField
      FieldName = 'DISCOUNT_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsInterestTrackDISCOUNT_JRNHID: TLargeintField
      FieldName = 'DISCOUNT_JRNHID'
    end
    object cdsInterestTrackDISCOUNT_AMT: TFloatField
      FieldName = 'DISCOUNT_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestTrackPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
  end
end
