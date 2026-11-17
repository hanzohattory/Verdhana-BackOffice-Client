inherited frmFundLedgerList: TfrmFundLedgerList
  Caption = 'Fund Ledger Journal Input'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 52
    Height = 416
    ExplicitTop = 52
    ExplicitHeight = 416
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterFLGID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FLGID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterFLGCD: TcxGridDBBandedColumn
        Caption = 'Ledger Code'
        DataBinding.FieldName = 'FLGCD'
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterVDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterVPERIODID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VPERIODID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterVPERIODCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VPERIODCODE'
        Width = 93
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterEPERIODID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EPERIODID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterEPERIODCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EPERIODCODE'
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterHDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HDESC'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterTOTALDB: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTALDB'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterTOTALCR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTALCR'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 39
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterPOSTEDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTEDDATE'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterPOSTEDUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTEDUI'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterCANCELDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELDATE'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterCANCELUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELUI'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterREVERSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSDATE'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterREVERSUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSUI'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterGL_SUBGL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL_SUBGL'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'General Ledger'
            ImageIndex = 0
            Value = 'G'
          end
          item
            Description = 'Fund Ledger'
            Value = 'S'
          end>
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actNew'
        Permission = 'Fund Ledger Journal Entry'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Fund Ledger Journal Entry'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Fund Ledger Journal Entry'
      end
      item
        ActionName = 'actNew'
        Permission = 'Finance'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Finance'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Finance'
      end>
    AssignedPermission = <
      item
        Name = 'Fund Ledger Journal Entry'
        Description = 'Fund Ledger Journal Entry'
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
    object Posting1: TMenuItem [9]
      Action = actPosting
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsFundLedgerList
  end
  inherited aclEditor: TActionList
    inherited actRefresh: TNAction
      ActionLog = dmGlobal.ActionLog
    end
    object actPosting: TNAction
      Category = 'NActions'
      Caption = 'Posting'
      OnExecute = actPostingExecute
      OnUpdate = actPostingUpdate
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
      52
      0)
    object BarMBrowseBar2: TdxBar [2]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 26
      DockingStyle = dsTop
      FloatLeft = 939
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'FVDate'
        end
        item
          Visible = True
          ItemName = 'dtSVDate'
        end
        item
          Visible = True
          ItemName = 'dtEVDate'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      UseRecentItems = False
      Visible = True
      WholeRow = True
    end
    object FVDate: TcxBarEditItem
      Caption = 'Filter By Value Date'
      Category = 0
      Hint = 'Filter By Value Date'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnEditValueChanged = FVDatePropertiesEditValueChanged
    end
    object dtSVDate: TcxBarEditItem
      Caption = 'From'
      Category = 0
      Enabled = False
      Hint = 'From'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DateOnError = deNull
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object dtEVDate: TcxBarEditItem
      Caption = 'To'
      Category = 0
      Enabled = False
      Hint = 'To'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DateOnError = deNull
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object FEDate: TcxBarEditItem
      Caption = 'Filter By Entry Date'
      Category = 0
      Hint = 'Filter By Entry Date'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnEditValueChanged = FEDatePropertiesEditValueChanged
    end
    object dtSEDate: TcxBarEditItem
      Caption = 'From'
      Category = 0
      Enabled = False
      Hint = 'From'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DateOnError = deNull
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object dtEEDate: TcxBarEditItem
      Caption = 'To'
      Category = 0
      Enabled = False
      Hint = 'To'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DateOnError = deNull
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsFundLedgerList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'IsAll'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'SVDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'EVDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAccounting_qryFundLedgerList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsFundLedgerListFLGID: TLargeintField
      FieldName = 'FLGID'
      Required = True
    end
    object cdsFundLedgerListVDATE: TDateField
      DisplayLabel = 'Value Date'
      FieldName = 'VDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsFundLedgerListEDATE: TDateField
      DisplayLabel = 'Entry Date'
      FieldName = 'EDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsFundLedgerListVPERIODID: TLargeintField
      DisplayLabel = 'Value Period ID'
      FieldName = 'VPERIODID'
    end
    object cdsFundLedgerListVPERIODCODE: TStringField
      DisplayLabel = 'Value Period Code'
      FieldName = 'VPERIODCODE'
    end
    object cdsFundLedgerListEPERIODID: TLargeintField
      FieldName = 'EPERIODID'
    end
    object cdsFundLedgerListEPERIODCODE: TStringField
      DisplayLabel = 'Entry Periode Code'
      FieldName = 'EPERIODCODE'
    end
    object cdsFundLedgerListHDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'HDESC'
      Size = 200
    end
    object cdsFundLedgerListTOTALDB: TFloatField
      DisplayLabel = 'Total Debet'
      FieldName = 'TOTALDB'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsFundLedgerListTOTALCR: TFloatField
      DisplayLabel = 'Total Credit'
      FieldName = 'TOTALCR'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsFundLedgerListPOSTED: TStringField
      DisplayLabel = 'Posted'
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsFundLedgerListPOSTEDDATE: TDateField
      DisplayLabel = 'Posted Date'
      FieldName = 'POSTEDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsFundLedgerListPOSTEDUI: TStringField
      DisplayLabel = 'Posted By'
      FieldName = 'POSTEDUI'
      Size = 30
    end
    object cdsFundLedgerListCANCELED: TVarBytesField
      DisplayLabel = 'Canceled'
      FieldName = 'CANCELED'
      Size = 1
    end
    object cdsFundLedgerListCANCELDATE: TDateField
      DisplayLabel = 'Cancel Date'
      FieldName = 'CANCELDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsFundLedgerListCANCELUI: TStringField
      DisplayLabel = 'Cancel By'
      FieldName = 'CANCELUI'
      Size = 30
    end
    object cdsFundLedgerListREVERSED: TStringField
      DisplayLabel = 'Reversed'
      FieldName = 'REVERSED'
      Size = 1
    end
    object cdsFundLedgerListREVERSDATE: TDateField
      DisplayLabel = 'Reverse Date'
      FieldName = 'REVERSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsFundLedgerListREVERSUI: TStringField
      DisplayLabel = 'Reverse By'
      FieldName = 'REVERSUI'
      Size = 30
    end
    object cdsFundLedgerListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsFundLedgerListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsFundLedgerListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsFundLedgerListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsFundLedgerListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsFundLedgerListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsFundLedgerListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsFundLedgerListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsFundLedgerListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsFundLedgerListFLGCD: TStringField
      FieldName = 'FLGCD'
      Size = 30
    end
    object cdsFundLedgerListGL_SUBGL: TStringField
      DisplayLabel = 'Journal Type'
      FieldName = 'GL_SUBGL'
      Size = 1
    end
    object cdsFundLedgerListFUNDTRANSID: TLargeintField
      FieldName = 'FUNDTRANSID'
    end
  end
end
