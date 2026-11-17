inherited frmBankCompanyList: TfrmBankCompanyList
  Caption = 'Bank Company'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsSelection.CellSelect = True
      OptionsSelection.InvertSelect = True
      OptionsView.BandHeaders = True
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Activated'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Closed'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwMasterBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterBNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNCODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterBANKACCOUNTNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCOUNTNO'
        Width = 104
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterBANKACCOUNTBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCOUNTBRANCH'
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Actived'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = 'Closed'
            Value = '2'
          end>
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterAS_RDNBANK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AS_RDNBANK'
        RepositoryItem = dmGlobal.chkStandard
        Width = 42
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterAS_PRIVATEBANK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AS_PRIVATEBANK'
        RepositoryItem = dmGlobal.chkStandard
        Width = 55
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterAS_PAYMENTBANK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AS_PAYMENTBANK'
        RepositoryItem = dmGlobal.chkStandard
        Width = 63
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterCOA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COA'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterBANKACCOUNTNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCOUNTNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterACTIVED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTIVED_DATE'
        Width = 125
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACTIVED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTIVED_SYSDATE'
        Width = 85
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACTIVED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTIVED_UI'
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCLOSED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLOSED_DATE'
        Width = 125
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCLOSED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLOSED_SYSDATE'
        Width = 85
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCLOSED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLOSED_UI'
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 2
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
    MenuBar = dmGlobal.menuBarAdmin
    Actions = <
      item
        ActionName = 'actOpen'
        Permission = 'Bank Company Viewer'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Bank Company Maker'
      end
      item
        ActionName = 'actNew'
        Permission = 'Bank Company Maker'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Bank Company Maker'
      end
      item
        ActionName = 'actActivateBankCompany'
        Permission = 'Bank Company Activator'
      end
      item
        ActionName = 'actClosedBankCompany'
        Permission = 'Bank Company Closed'
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
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsBankCompanyList
  end
  inherited aclEditor: TActionList
    object actActivateBankCompany: TNAction
      Category = 'NActions'
      Caption = 'Activate Bank Company'
      CheckPermission = True
    end
    object actClosedBankCompany: TNAction
      Category = 'NActions'
      Caption = 'actClosedBankCompany'
      CheckPermission = True
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsBankCompanyList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMaster_qryBankCompanyList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsBankCompanyListBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
    object cdsBankCompanyListBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
      Required = True
      Size = 10
    end
    object cdsBankCompanyListBANKACCOUNTNO: TStringField
      DisplayLabel = 'Bank Account No'
      FieldName = 'BANKACCOUNTNO'
      Size = 30
    end
    object cdsBankCompanyListBANKACCOUNTBRANCH: TStringField
      DisplayLabel = 'Bank Branch'
      FieldName = 'BANKACCOUNTBRANCH'
      Size = 50
    end
    object cdsBankCompanyListCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsBankCompanyListSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      Size = 1
    end
    object cdsBankCompanyListAS_RDNBANK: TStringField
      DisplayLabel = 'As RDN'
      FieldName = 'AS_RDNBANK'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsBankCompanyListAS_PRIVATEBANK: TStringField
      DisplayLabel = 'As Private'
      FieldName = 'AS_PRIVATEBANK'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsBankCompanyListAS_PAYMENTBANK: TStringField
      DisplayLabel = 'As Payment'
      FieldName = 'AS_PAYMENTBANK'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsBankCompanyListCOA: TStringField
      FieldName = 'COA'
    end
    object cdsBankCompanyListBANKACCOUNTNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      FieldName = 'BANKACCOUNTNAME'
      Size = 150
    end
    object cdsBankCompanyListACTIVED_DATE: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'ACTIVED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsBankCompanyListACTIVED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'ACTIVED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBankCompanyListACTIVED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'ACTIVED_UI'
      Size = 30
    end
    object cdsBankCompanyListCLOSED_DATE: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'CLOSED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsBankCompanyListCLOSED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'CLOSED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBankCompanyListCLOSED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CLOSED_UI'
      Size = 30
    end
    object cdsBankCompanyListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBankCompanyListMODUI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'MODUI'
      Size = 30
    end
  end
end
