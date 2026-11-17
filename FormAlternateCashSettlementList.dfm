inherited frmAlternateCashSettlementList: TfrmAlternateCashSettlementList
  Caption = 'Alternate Cash Settlement'
  ClientWidth = 1080
  ExplicitWidth = 1080
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1080
    ExplicitWidth = 1080
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
      object gvwMasterACSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACSID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACSCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACSCODE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACSDATE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterCLIENT_ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLIENT_ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterCLIENT_ACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLIENT_ACCCODE'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterCLIENT_ACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLIENT_ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterKPEI_ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KPEI_ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterKPEI_ACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KPEI_ACCCODE'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterKPEI_ACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KPEI_ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterSTOCK_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCK_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterSTOCK_NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCK_NAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterQUANTITY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QUANTITY'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterACS_RATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACS_RATE'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterFEEAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FEEAMOUNT'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterNETAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NETAMOUNT'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterStatus: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Status'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCLIENT_COCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLIENT_COCODE'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterKPEI_COCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KPEI_COCODE'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterCLIENT_SOCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLIENT_SOCODE'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterKPEI_SOCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KPEI_SOCODE'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterCREATED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATED_DATE'
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCREATED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATED_SYSDATE'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCREATED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATED_UI'
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_DATE'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_SYSDATE'
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_UI'
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_DATE'
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_SYSDATE'
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_UI'
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED_DATE'
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED_NOTES: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED_NOTES'
        Width = 200
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED_SYSDATE'
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED_UI'
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterACS_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACS_TYPE'
        RepositoryItem = dmGlobal.luACSType
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actOpen'
        Permission = 'Alternate Cash Settlement Viewer'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Alternate Cash Settlement Creator'
      end
      item
        ActionName = 'actNew'
        Permission = 'Alternate Cash Settlement Creator'
      end
      item
        ActionName = 'actACSPost'
        Permission = 'Alternate Cash Settlement Poster'
      end
      item
        ActionName = 'actACSCancel'
        Permission = 'Alternate Cash Settlement Canceler'
      end
      item
        ActionName = 'actACSReverse'
        Permission = 'Alternate Cash Settlement Reverser'
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
    object ViewTransaction1: TMenuItem [5]
      Action = actViewTransaction
    end
    object AlternateCashSettlementPost1: TMenuItem [11]
      Action = actACSPost
    end
    object AlternateCashSettlementCancel1: TMenuItem [12]
      Action = actACSCancel
    end
    object AlternateCashSettlementReverse1: TMenuItem [13]
      Action = actACSReverse
    end
    object N1: TMenuItem [14]
      Caption = '-'
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsAlternateCashSettlList
  end
  inherited aclEditor: TActionList
    object actACSPost: TNAction
      Category = 'NActions'
      Caption = 'Alternate Cash Settlement Post'
      OnExecute = actACSPostExecute
      CheckPermission = True
    end
    object actACSCancel: TNAction
      Category = 'NActions'
      Caption = 'Alternate Cash Settlement Cancel'
      OnExecute = actACSCancelExecute
      CheckPermission = True
    end
    object actACSReverse: TNAction
      Category = 'NActions'
      Caption = 'Alternate Cash Settlement Reverse'
      OnExecute = actACSReverseExecute
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
          ItemName = 'dtStart'
        end
        item
          Visible = True
          ItemName = 'dtEnd'
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
          Caption = 'Created'
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
    object dtStart: TcxBarEditItem
      Caption = 'Withdraw Date'
      Category = 0
      Hint = 'Withdraw Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object dtEnd: TcxBarEditItem
      Caption = '-'
      Category = 0
      Hint = '-'
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
  object cdsAlternateCashSettlList: TNClientDataset
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
        Name = 'acsStatus'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryAlternateCashSettlementList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsAlternateCashSettlListACSID: TLargeintField
      FieldName = 'ACSID'
      Required = True
    end
    object cdsAlternateCashSettlListACSCODE: TStringField
      DisplayLabel = 'ACS Code'
      FieldName = 'ACSCODE'
      Required = True
    end
    object cdsAlternateCashSettlListACSDATE: TDateField
      DisplayLabel = 'ACS Date'
      FieldName = 'ACSDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsAlternateCashSettlListDUEDATE: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DUEDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsAlternateCashSettlListSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsAlternateCashSettlListCLIENT_ACCID: TIntegerField
      FieldName = 'CLIENT_ACCID'
      Required = True
    end
    object cdsAlternateCashSettlListCLIENT_ACCCODE: TStringField
      DisplayLabel = 'Client Account Code'
      FieldName = 'CLIENT_ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsAlternateCashSettlListCLIENT_ACCNAME: TStringField
      DisplayLabel = 'Client Account Name'
      FieldName = 'CLIENT_ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsAlternateCashSettlListKPEI_ACCID: TIntegerField
      FieldName = 'KPEI_ACCID'
      ReadOnly = True
    end
    object cdsAlternateCashSettlListKPEI_ACCCODE: TStringField
      DisplayLabel = 'KPEI Account Code'
      FieldName = 'KPEI_ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsAlternateCashSettlListKPEI_ACCNAME: TStringField
      DisplayLabel = 'KPEI Account Name'
      FieldName = 'KPEI_ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsAlternateCashSettlListSTOCK_CODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCK_CODE'
      ReadOnly = True
    end
    object cdsAlternateCashSettlListSTOCK_CODE_1: TStringField
      DisplayLabel = 'Stock Name'
      FieldName = 'STOCK_NAME'
      ReadOnly = True
      Size = 100
    end
    object cdsAlternateCashSettlListPRICE: TFloatField
      DisplayLabel = 'Price'
      FieldName = 'PRICE'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAlternateCashSettlListQUANTITY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QUANTITY'
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAlternateCashSettlListACS_RATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'ACS_RATE'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAlternateCashSettlListAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAlternateCashSettlListFEEAMOUNT: TFloatField
      DisplayLabel = 'Fee Amount'
      FieldName = 'FEEAMOUNT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAlternateCashSettlListNETAMOUNT: TFloatField
      DisplayLabel = 'Net Amount'
      FieldName = 'NETAMOUNT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAlternateCashSettlListSTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
    object cdsAlternateCashSettlListStatus: TStringField
      FieldName = 'Status'
      ReadOnly = True
      Required = True
      Size = 8
    end
    object cdsAlternateCashSettlListCLIENT_COCODE: TStringField
      DisplayLabel = 'Client CO Code'
      FieldName = 'CLIENT_COCODE'
      ReadOnly = True
    end
    object cdsAlternateCashSettlListKPEI_COCODE: TStringField
      DisplayLabel = 'KPEI CO Code'
      FieldName = 'KPEI_COCODE'
      ReadOnly = True
    end
    object cdsAlternateCashSettlListCLIENT_SOCODE: TStringField
      DisplayLabel = 'Client SO Code'
      FieldName = 'CLIENT_SOCODE'
      ReadOnly = True
    end
    object cdsAlternateCashSettlListKPEI_SOCODE: TStringField
      DisplayLabel = 'KPEI SO Code'
      FieldName = 'KPEI_SOCODE'
      ReadOnly = True
    end
    object cdsAlternateCashSettlListCREATED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'CREATED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsAlternateCashSettlListCREATED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'CREATED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsAlternateCashSettlListCREATED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CREATED_UI'
      Size = 30
    end
    object cdsAlternateCashSettlListPOSTED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'POSTED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsAlternateCashSettlListPOSTED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'POSTED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsAlternateCashSettlListPOSTED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsAlternateCashSettlListREVERSED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'REVERSED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsAlternateCashSettlListREVERSED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'REVERSED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsAlternateCashSettlListREVERSED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsAlternateCashSettlListCANCELED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'CANCELED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsAlternateCashSettlListCANCELED_NOTES: TStringField
      DisplayLabel = 'Notes'
      FieldName = 'CANCELED_NOTES'
      Size = 100
    end
    object cdsAlternateCashSettlListCANCELED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'CANCELED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsAlternateCashSettlListCANCELED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CANCELED_UI'
      Size = 30
    end
    object cdsAlternateCashSettlListLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
    object cdsAlternateCashSettlListSTOCKTRANSID: TLargeintField
      FieldName = 'STOCKTRANSID'
    end
    object cdsAlternateCashSettlListACS_TYPE: TStringField
      DisplayLabel = 'ACS Type'
      FieldName = 'ACS_TYPE'
      Required = True
      Size = 2
    end
  end
end
