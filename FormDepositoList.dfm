inherited frmDepositoList: TfrmDepositoList
  Caption = 'Deposito'
  ClientWidth = 1011
  ExplicitWidth = 1011
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1011
    ExplicitWidth = 1011
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
        end
        item
          Caption = 'Create'
        end
        item
          Caption = 'Approve'
        end
        item
          Caption = 'Close'
        end
        item
          Caption = 'Cancel'
        end>
      object gvwMasterDEPOSITO_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEPOSITO_ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterDEPOSITO_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEPOSITO_CODE'
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterBNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNCODE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterREFERENCE_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REFERENCE_NO'
        Width = 152
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterDEPOSITO_OPENDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEPOSITO_OPENDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterDEPOSITO_MATURITYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEPOSITO_MATURITYDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterEXCHRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXCHRATE'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterDEPOSITO_AMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEPOSITO_AMOUNT'
        Width = 140
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterDEPOSITO_EXCHAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEPOSITO_EXCHAMOUNT'
        Width = 140
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Create'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = 'Approve'
            Value = '2'
          end
          item
            Description = 'Cancel'
            Value = '4'
          end
          item
            Description = 'Close'
            Value = '3'
          end>
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 10
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
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actOpen'
        Permission = 'Deposito Viewer'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Desposito Maker'
      end
      item
        ActionName = 'actNew'
        Permission = 'Desposito Maker'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Desposito Maker'
      end
      item
        ActionName = 'actDepositoApprove'
        Permission = 'Deposito Approver'
      end
      item
        ActionName = 'actDepositoCancel'
        Permission = 'Deposito Cancel'
      end
      item
        ActionName = 'actDepositoClose'
        Permission = 'Deposito Close'
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
      Action = actDepositoApprove
    end
    object DepositoCancel1: TMenuItem [11]
      Action = actDepositoCancel
    end
    object DepositoCancel2: TMenuItem [12]
      Action = actDepositoClose
    end
    object N1: TMenuItem [13]
      Caption = '-'
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsDepositoList
  end
  inherited aclEditor: TActionList
    object actDepositoApprove: TNAction
      Category = 'NActions'
      Caption = 'Deposito Approve'
      OnExecute = actDepositoApproveExecute
      CheckPermission = True
    end
    object actDepositoCancel: TNAction
      Category = 'NActions'
      Caption = 'Deposito Cancel'
      OnExecute = actDepositoCancelExecute
      CheckPermission = True
    end
    object actDepositoClose: TNAction
      Category = 'NActions'
      Caption = 'Deposito Close'
      OnExecute = actDepositoCloseExecute
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
          ItemName = 'chkStatus'
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
    object chkStatus: TcxBarEditItem
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
          Caption = 'Create'
        end
        item
          Caption = 'Approved'
        end
        item
          Caption = 'Canceled'
        end
        item
          Caption = 'Closed'
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
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsDepositoList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'stat'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMKBD_qryDepositoList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsDepositoListDEPOSITO_ID: TLargeintField
      DisplayLabel = 'Deposito ID'
      FieldName = 'DEPOSITO_ID'
      Required = True
    end
    object cdsDepositoListDEPOSITO_CODE: TStringField
      DisplayLabel = 'Deposito Code'
      FieldName = 'DEPOSITO_CODE'
      Required = True
      Size = 10
    end
    object cdsDepositoListBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
      Required = True
      Size = 10
    end
    object cdsDepositoListREFERENCE_NO: TStringField
      DisplayLabel = 'Refference Code'
      FieldName = 'REFERENCE_NO'
    end
    object cdsDepositoListDEPOSITO_OPENDATE: TDateField
      DisplayLabel = 'Open Date'
      FieldName = 'DEPOSITO_OPENDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDepositoListDEPOSITO_MATURITYDATE: TDateField
      DisplayLabel = 'Maturity Date'
      FieldName = 'DEPOSITO_MATURITYDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDepositoListCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsDepositoListEXCHRATE: TFloatField
      DisplayLabel = 'Exchange Rate'
      FieldName = 'EXCHRATE'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsDepositoListDEPOSITO_AMOUNT: TFloatField
      DisplayLabel = 'Deposito Amount'
      FieldName = 'DEPOSITO_AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsDepositoListDEPOSITO_EXCHAMOUNT: TFloatField
      DisplayLabel = 'Deposito Exchange Amount'
      FieldName = 'DEPOSITO_EXCHAMOUNT'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsDepositoListSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      Size = 1
    end
    object cdsDepositoListCREATED_DATE: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'CREATED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzzz'
    end
    object cdsDepositoListCREATED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'CREATED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDepositoListCREATED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CREATED_UI'
      Size = 30
    end
    object cdsDepositoListAPPROVED_DATE: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'APPROVED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzzz'
    end
    object cdsDepositoListAPPROVED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'APPROVED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDepositoListAPPROVED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'APPROVED_UI'
      Size = 30
    end
    object cdsDepositoListCLOSED_DATE: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'CLOSED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzzz'
    end
    object cdsDepositoListCLOSED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'CLOSED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDepositoListCLOSED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CLOSED_UI'
      Size = 30
    end
    object cdsDepositoListCANCELED_DATE: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'CANCELED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzzz'
    end
    object cdsDepositoListCANCELED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'CANCELED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDepositoListCANCELED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CANCELED_UI'
      Size = 30
    end
    object cdsDepositoListCANCELED_NOTES: TStringField
      DisplayLabel = 'Canceled Notes'
      FieldName = 'CANCELED_NOTES'
      Size = 100
    end
    object cdsDepositoListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDepositoListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
  end
end
