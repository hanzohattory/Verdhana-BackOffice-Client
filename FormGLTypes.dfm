inherited frmGLTypes: TfrmGLTypes
  Caption = 'GL Type'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.GroupByBox = True
      object gvwMasterPRODUCTCODE: TcxGridDBBandedColumn
        Caption = 'Product'
        DataBinding.FieldName = 'PRODUCTCODE'
        RepositoryItem = dmGlobal.luProduct
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCOUNTTYPE: TcxGridDBBandedColumn
        Caption = 'Account Type'
        DataBinding.FieldName = 'ACCOUNTTYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Portfolio House Account'
            ImageIndex = 0
            Value = 'P'
          end
          item
            Description = 'Broker'
            Value = 'B'
          end
          item
            Description = 'Company'
            Value = 'C'
          end
          item
            Description = 'Individual'
            Value = 'N'
          end
          item
            Description = 'Institution'
            Value = 'I'
          end
          item
            Description = 'Clearing House'
            Value = 'K'
          end
          item
            Description = 'Facilitation'
            Value = 'F'
          end>
        RepositoryItem = dmGlobal.luAccType
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAFFILIASI: TcxGridDBBandedColumn
        Caption = 'Affil'
        DataBinding.FieldName = 'AFFILIASI'
        RepositoryItem = dmGlobal.chkStandard
        Width = 25
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterColumn1: TcxGridDBBandedColumn
        Caption = 'AL Type'
        DataBinding.FieldName = 'ALTYPE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterALTYPE: TcxGridDBBandedColumn
        Caption = 'AL Type Description'
        DataBinding.FieldName = 'ALTYPE'
        RepositoryItem = dmGlobal.luActLedgerType
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterGLACCOUNTID: TcxGridDBBandedColumn
        Caption = 'GL Account'
        DataBinding.FieldName = 'GLACCOUNTID'
        RepositoryItem = dmGlobal.luGLAccountNo
        Width = 183
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterUSEGL_ANALIZE: TcxGridDBBandedColumn
        Caption = 'Use GL Analyze'
        DataBinding.FieldName = 'USEGL_ANALIZE'
        RepositoryItem = dmGlobal.chkStandard
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Width = 123
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterGLTYPEDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GLTYPEDESC'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actNew'
        Permission = 'GL Type'
      end
      item
        ActionName = 'actEdit'
        Permission = 'GL Type'
      end
      item
        ActionName = 'actOpen'
        Permission = 'GL Type'
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
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsGLTypeList
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsGLTypeList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAccounting_qryGLTypeList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsGLTypeListPRODUCTCODE: TStringField
      FieldName = 'PRODUCTCODE'
      Required = True
      Size = 10
    end
    object cdsGLTypeListACCOUNTTYPE: TStringField
      FieldName = 'ACCOUNTTYPE'
      Required = True
      Size = 1
    end
    object cdsGLTypeListAFFILIASI: TStringField
      FieldName = 'AFFILIASI'
      Required = True
      Size = 1
    end
    object cdsGLTypeListALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      Size = 15
    end
    object cdsGLTypeListGLACCOUNTID: TLargeintField
      FieldName = 'GLACCOUNTID'
      Required = True
    end
    object cdsGLTypeListUSEGL_ANALIZE: TStringField
      FieldName = 'USEGL_ANALIZE'
      Required = True
      Size = 1
    end
    object cdsGLTypeListID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object cdsGLTypeListMODDA: TDateTimeField
      DisplayLabel = 'Last Modification Date'
      FieldName = 'MODDA'
    end
    object cdsGLTypeListMODUI: TStringField
      DisplayLabel = 'Last Modification User'
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsGLTypeListCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsGLTypeListGLTYPEDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'GLTYPEDESC'
      Size = 50
    end
  end
end
