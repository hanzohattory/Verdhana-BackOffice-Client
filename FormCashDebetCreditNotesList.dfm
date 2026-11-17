inherited frmCashDebetCreditNotesList: TfrmCashDebetCreditNotesList
  Caption = 'Cash Debet/Credit Notes'
  ClientWidth = 1202
  ExplicitWidth = 1202
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1202
    ExplicitWidth = 1202
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = gvwMasterAMOUNT
        end>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsSelection.CellSelect = True
      OptionsSelection.CellMultiSelect = True
      object gvwMasterDCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterDCCODE: TcxGridDBBandedColumn
        Caption = 'Code'
        DataBinding.FieldName = 'DCCODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCBID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CBID'
        Visible = False
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
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        Caption = 'Entry Date'
        DataBinding.FieldName = 'ENTRYDATE'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterTRDATE: TcxGridDBBandedColumn
        Caption = 'Trans Date'
        DataBinding.FieldName = 'TRDATE'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterDUEDATE: TcxGridDBBandedColumn
        Caption = 'Due Date'
        DataBinding.FieldName = 'DUEDATE'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterDC: TcxGridDBBandedColumn
        Caption = 'D / C'
        DataBinding.FieldName = 'DC'
        RepositoryItem = dmGlobal.luDebetCredit
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterCCY: TcxGridDBBandedColumn
        Caption = 'Ccy'
        DataBinding.FieldName = 'CCY'
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterREMARK: TcxGridDBBandedColumn
        Caption = 'Remark'
        DataBinding.FieldName = 'REMARK'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL_UI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_DATE: TcxGridDBBandedColumn
        Caption = 'Posted Date'
        DataBinding.FieldName = 'POSTED_DATE'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_UI: TcxGridDBBandedColumn
        Caption = 'Posted User'
        DataBinding.FieldName = 'POSTED_UI'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_UI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS'
        RepositoryItem = dmGlobal.luDCNotesStatus
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        Caption = 'Entry Date'
        DataBinding.FieldName = 'MODDA'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        Caption = 'Entry User'
        DataBinding.FieldName = 'MODUI'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCCODE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterACCINIT: TcxGridDBBandedColumn
        Caption = 'Account Init'
        DataBinding.FieldName = 'ACCINIT'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterACCTYPE: TcxGridDBBandedColumn
        Caption = 'Account Type'
        DataBinding.FieldName = 'ACCTYPE'
        RepositoryItem = dmGlobal.luAccType
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterPRDCODE: TcxGridDBBandedColumn
        Caption = 'Product'
        DataBinding.FieldName = 'PRDCODE'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actNew'
        Permission = '[Cash Debet/Credit Notes].New'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Cash Debet/Credit Notes].View'
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
    object Posting1: TMenuItem [11]
      Action = actPosting
    end
    object Reverse1: TMenuItem [12]
      Action = actReverse
    end
    object Cancel1: TMenuItem [13]
      Action = actCancelDC
    end
    object N1: TMenuItem [14]
      Caption = '-'
    end
    object actUploadDebetCreditNotes: TMenuItem [15]
      Action = actUploadDataDebetCreditNotes
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsDebetCreditNotesList
  end
  inherited aclEditor: TActionList
    inherited actEdit: TNAction
      Visible = False
      OnUpdate = actEditUpdate
      CheckPermission = False
    end
    inherited actRefresh: TNAction
      Caption = 'Load Data'
    end
    inherited actInsertFromCurrentData: TNAction
      Enabled = False
      Visible = False
      CheckPermission = False
    end
    object actPosting: TNAction
      Category = 'NActions'
      Caption = 'Posting'
      OnExecute = actPostingExecute
      OnUpdate = actPostingUpdate
      CheckPermission = False
    end
    object actReverse: TNAction
      Category = 'NActions'
      Caption = 'Reverse'
      OnExecute = actReverseExecute
      OnUpdate = actReverseUpdate
      CheckPermission = False
    end
    object actCancelDC: TNAction
      Category = 'NActions'
      Caption = 'Cancel'
      OnExecute = actCancelDCExecute
      OnUpdate = actCancelDCUpdate
      CheckPermission = False
    end
    object actUploadDataDebetCreditNotes: TNAction
      Category = 'NActions'
      Caption = 'Upload Data Debet Credit Notes'
      OnExecute = actUploadDataDebetCreditNotesExecute
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
          ItemName = 'dtStart'
        end
        item
          Visible = True
          ItemName = 'dtEnd'
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
          ItemName = 'chkCanceled'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkReversed'
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
    object dtStart: TcxBarEditItem
      Caption = 'Entry Date'
      Category = 0
      Hint = 'Entry Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd MMM yyyy'
    end
    object dtEnd: TcxBarEditItem
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd MMM yyyy'
    end
    object chkOpen: TcxBarEditItem
      Caption = 'Open'
      Category = 0
      Hint = 'Open'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
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
      Properties.ValueUnchecked = '0'
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
      Properties.ValueUnchecked = '0'
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
      Properties.ValueUnchecked = '0'
    end
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsDebetCreditNotesList: TNClientDataset
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
        DataType = ftString
        Name = 'STATUS'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryDebetCreditNotesList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 80
    Top = 112
    object cdsDebetCreditNotesListDCID: TIntegerField
      FieldName = 'DCID'
      Required = True
    end
    object cdsDebetCreditNotesListDCCODE: TStringField
      FieldName = 'DCCODE'
      Required = True
    end
    object cdsDebetCreditNotesListCBID: TIntegerField
      FieldName = 'CBID'
      Required = True
    end
    object cdsDebetCreditNotesListACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsDebetCreditNotesListENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDebetCreditNotesListTRDATE: TDateField
      FieldName = 'TRDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDebetCreditNotesListDUEDATE: TDateField
      FieldName = 'DUEDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDebetCreditNotesListDC: TStringField
      FieldName = 'DC'
      Required = True
      Size = 1
    end
    object cdsDebetCreditNotesListCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsDebetCreditNotesListAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDebetCreditNotesListREMARK: TStringField
      FieldName = 'REMARK'
      Size = 100
    end
    object cdsDebetCreditNotesListCANCEL_DATE: TDateTimeField
      FieldName = 'CANCEL_DATE'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss'
    end
    object cdsDebetCreditNotesListCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsDebetCreditNotesListPOSTED_DATE: TDateTimeField
      FieldName = 'POSTED_DATE'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss'
    end
    object cdsDebetCreditNotesListPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsDebetCreditNotesListREVERSED_DATE: TDateTimeField
      FieldName = 'REVERSED_DATE'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss'
    end
    object cdsDebetCreditNotesListREVERSED_UI: TStringField
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsDebetCreditNotesListSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 1
    end
    object cdsDebetCreditNotesListMODDA: TDateTimeField
      FieldName = 'MODDA'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss'
    end
    object cdsDebetCreditNotesListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDebetCreditNotesListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDebetCreditNotesListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDebetCreditNotesListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsDebetCreditNotesListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsDebetCreditNotesListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsDebetCreditNotesListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDebetCreditNotesListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDebetCreditNotesListACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsDebetCreditNotesListACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsDebetCreditNotesListACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsDebetCreditNotesListACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsDebetCreditNotesListPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsDebetCreditNotesListAMOUNT_TMP: TFloatField
      FieldName = 'AMOUNT_TMP'
      ReadOnly = True
    end
    object cdsDebetCreditNotesListLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
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
    Left = 472
    Top = 94
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
  object cdsDebetCreditNotes: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'DCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryDebetCreditNotes'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 80
    Top = 168
    object cdsDebetCreditNotesDCID: TIntegerField
      FieldName = 'DCID'
      Required = True
    end
    object cdsDebetCreditNotesDCCODE: TStringField
      FieldName = 'DCCODE'
      Required = True
    end
    object cdsDebetCreditNotesCBID: TIntegerField
      FieldName = 'CBID'
    end
    object cdsDebetCreditNotesACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsDebetCreditNotesENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
    end
    object cdsDebetCreditNotesTRDATE: TDateField
      FieldName = 'TRDATE'
      Required = True
    end
    object cdsDebetCreditNotesDUEDATE: TDateField
      FieldName = 'DUEDATE'
      Required = True
    end
    object cdsDebetCreditNotesDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsDebetCreditNotesCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsDebetCreditNotesAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object cdsDebetCreditNotesREMARK: TStringField
      FieldName = 'REMARK'
      Size = 100
    end
    object cdsDebetCreditNotesCANCEL_DATE: TDateTimeField
      FieldName = 'CANCEL_DATE'
    end
    object cdsDebetCreditNotesCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsDebetCreditNotesPOSTED_DATE: TDateTimeField
      FieldName = 'POSTED_DATE'
    end
    object cdsDebetCreditNotesPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsDebetCreditNotesREVERSED_DATE: TDateTimeField
      FieldName = 'REVERSED_DATE'
    end
    object cdsDebetCreditNotesREVERSED_UI: TStringField
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsDebetCreditNotesSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 1
    end
    object cdsDebetCreditNotesSIID: TLargeintField
      FieldName = 'SIID'
    end
    object cdsDebetCreditNotesMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDebetCreditNotesMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDebetCreditNotesAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDebetCreditNotesAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDebetCreditNotesUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsDebetCreditNotesUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsDebetCreditNotesNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsDebetCreditNotesISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDebetCreditNotesID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDebetCreditNotesqryDebetCreditNotes_D: TDataSetField
      FieldName = 'qryDebetCreditNotes_D'
    end
  end
  object opDialog: TOpenDialog
    Left = 280
    Top = 160
  end
  object cdsCashBookGetId: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'CBCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashBookGetId'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 472
    Top = 152
    object cdsCashBookGetIdCBID: TIntegerField
      FieldName = 'CBID'
      Required = True
    end
    object cdsCashBookGetIdCBCODE: TStringField
      FieldName = 'CBCODE'
      Required = True
    end
    object cdsCashBookGetIdCBDESC: TStringField
      FieldName = 'CBDESC'
      Required = True
      Size = 150
    end
    object cdsCashBookGetIdCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsCashBookGetIdSTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
  end
  object cdsCashDebetCreditNote: TNClientDataset
    Aggregates = <>
    DataSetField = cdsDebetCreditNotesqryDebetCreditNotes_D
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 80
    Top = 344
    object cdsCashDebetCreditNoteDCID: TLargeintField
      FieldName = 'DCID'
      Required = True
    end
    object cdsCashDebetCreditNoteDCDID: TLargeintField
      FieldName = 'DCDID'
      Required = True
    end
    object cdsCashDebetCreditNoteCBID: TIntegerField
      DisplayLabel = 'Cash Book'
      FieldName = 'CBID'
      Required = True
    end
    object cdsCashDebetCreditNoteREMARK: TStringField
      DisplayLabel = 'Remark'
      FieldName = 'REMARK'
      Size = 250
    end
    object cdsCashDebetCreditNoteDC: TStringField
      DisplayLabel = 'D/C'
      FieldName = 'DC'
      Required = True
      Size = 1
    end
    object cdsCashDebetCreditNoteAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
  end
end
