inherited frmReksadanaList: TfrmReksadanaList
  Caption = 'Reksadana Deposito'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Create'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Approve'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Close'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Cancel'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwMasterREKSADANAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REKSADANAID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterREKSADANACODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REKSADANACODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterVALUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUEDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUMENT_ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterLOCALCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LOCALCODE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterUNIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNIT'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterCLOSE_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLOSE_PRICE'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterTOTAL_NAV: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL_NAV'
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterSTATUSDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STATUSDESC'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterCREATED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATED_DATE'
        Width = 130
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCREATED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATED_SYSDATE'
        Width = 100
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
      object gvwMasterAPPROVED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVED_DATE'
        Width = 130
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAPPROVED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVED_SYSDATE'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAPPROVED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVED_UI'
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCLOSED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLOSED_DATE'
        Width = 130
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCLOSED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLOSED_SYSDATE'
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCLOSED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLOSED_UI'
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED_DATE'
        Width = 130
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED_SYSDATE'
        Width = 100
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED_UI'
        Width = 80
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED_NOTES: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED_NOTES'
        Width = 300
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actOpen'
        Permission = 'Reksadana Viewer'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Reksadana Maker'
      end
      item
        ActionName = 'actNew'
        Permission = 'Reksadana Maker'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Reksadana Maker'
      end
      item
        ActionName = 'actApprove'
        Permission = 'Reksadana Approver'
      end
      item
        ActionName = 'actClose'
        Permission = 'Reksadana Closer'
      end
      item
        ActionName = 'actCancel'
        Permission = 'Reksadana Canceler'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Reksadana Deposito Viewer'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Reksadana Deposito Maker'
      end
      item
        ActionName = 'actNew'
        Permission = 'Reksadana Deposito Maker'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Reksadana Deposito Maker'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Reksadana Deposito Approver'
      end
      item
        ActionName = 'actApprove'
        Permission = 'Reksadana Deposito Approver'
      end
      item
        ActionName = 'actClose'
        Permission = 'Reksadana Deposito Closer'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Reksadana Deposito Closer'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Reksadana Deposito Canceler'
      end
      item
        ActionName = 'actCancel'
        Permission = 'Reksadana Deposito Canceler'
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
    object Approve1: TMenuItem [10]
      Action = actApprove
    end
    object Cancel1: TMenuItem [11]
      Action = actCancel
    end
    object Close1: TMenuItem [12]
      Action = actClose
    end
    object N1: TMenuItem [13]
      Caption = '-'
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsReksadanaList
  end
  inherited aclEditor: TActionList
    inherited actCancel: TNAction
      Enabled = True
      CheckPermission = True
    end
    inherited actApprove: TNAction
      Enabled = True
      OnExecute = actApproveExecute
      CheckPermission = True
    end
    object actClose: TNAction
      Category = 'NActions'
      Caption = 'Close'
      OnExecute = actCloseExecute
      CheckPermission = True
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
    inherited mnuRefresh: TdxBarButton
      Caption = 'Reload'
    end
    object dtStart: TcxBarEditItem
      Caption = 'Value Date'
      Category = 0
      Hint = 'Value Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object dtEnd: TcxBarEditItem
      Caption = '-'
      Category = 0
      Hint = 'End Value Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object NClientDataset1: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 448
    Top = 224
  end
  object cdsReksadanaList: TNClientDataset
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
      end>
    ProviderName = 'dspN_dmStockManagement_qryReksadanaList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 104
    Top = 352
    object cdsReksadanaListREKSADANAID: TLargeintField
      FieldName = 'REKSADANAID'
      Required = True
    end
    object cdsReksadanaListREKSADANACODE: TStringField
      DisplayLabel = 'Reksadana Code'
      FieldName = 'REKSADANACODE'
      Required = True
    end
    object cdsReksadanaListVALUEDATE: TDateField
      DisplayLabel = 'Value Date'
      FieldName = 'VALUEDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsReksadanaListACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsReksadanaListACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsReksadanaListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsReksadanaListINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      ReadOnly = True
    end
    object cdsReksadanaListLOCALCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'LOCALCODE'
      ReadOnly = True
    end
    object cdsReksadanaListSTOCKNAME: TStringField
      DisplayLabel = 'Stock Name'
      FieldName = 'STOCKNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsReksadanaListUNIT: TFloatField
      DisplayLabel = 'Unit'
      FieldName = 'UNIT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsReksadanaListCLOSE_PRICE: TFloatField
      DisplayLabel = 'Close Price'
      FieldName = 'CLOSE_PRICE'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsReksadanaListTOTAL_NAV: TFloatField
      DisplayLabel = 'Total Nav'
      FieldName = 'TOTAL_NAV'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsReksadanaListSTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
    object cdsReksadanaListSTATUSDESC: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUSDESC'
      ReadOnly = True
      Required = True
      Size = 8
    end
    object cdsReksadanaListCREATED_DATE: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'CREATED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsReksadanaListCREATED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'CREATED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsReksadanaListCREATED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CREATED_UI'
      Size = 30
    end
    object cdsReksadanaListAPPROVED_DATE: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'APPROVED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsReksadanaListAPPROVED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'APPROVED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsReksadanaListAPPROVED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'APPROVED_UI'
      Size = 30
    end
    object cdsReksadanaListCLOSED_DATE: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'CLOSED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsReksadanaListCLOSED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'CLOSED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsReksadanaListCLOSED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CLOSED_UI'
      Size = 30
    end
    object cdsReksadanaListCANCELED_DATE: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'CANCELED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsReksadanaListCANCELED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'CANCELED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsReksadanaListCANCELED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CANCELED_UI'
      Size = 30
    end
    object cdsReksadanaListCANCELED_NOTES: TStringField
      DisplayLabel = 'Notes'
      FieldName = 'CANCELED_NOTES'
      Size = 100
    end
  end
end
