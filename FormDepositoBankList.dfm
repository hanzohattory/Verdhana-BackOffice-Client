inherited frmDepositoBankList: TfrmDepositoBankList
  Caption = 'Deposito Bank'
  ClientWidth = 1120
  ExplicitWidth = 1120
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1120
    ExplicitWidth = 1120
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterBNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNCODE'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterBNNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNNAME'
        Width = 243
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterDESCRIPTION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCOACODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COACODE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterMAX_LPS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MAX_LPS'
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        Caption = 'Modda'
        DataBinding.FieldName = 'MODDA'
        Width = 152
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        Caption = 'Modui'
        DataBinding.FieldName = 'MODUI'
        Width = 109
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actOpen'
        Permission = 'Deposito Bank Viewer'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Deposito Bank Maker'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Deposito Bank Maker'
      end
      item
        ActionName = 'actNew'
        Permission = 'Deposito Bank Maker'
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
    DataSet = cdsDepositoBank
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsDepositoBank: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMKBD_qryDepositoBankList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsDepositoBankBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
      Required = True
      Size = 10
    end
    object cdsDepositoBankBNNAME: TStringField
      DisplayLabel = 'Bank Name'
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsDepositoBankDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object cdsDepositoBankCOACODE: TStringField
      DisplayLabel = 'COA Code'
      FieldName = 'COACODE'
    end
    object cdsDepositoBankMAX_LPS: TFloatField
      DisplayLabel = 'Maximum LPS'
      FieldName = 'MAX_LPS'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDepositoBankMODDA: TDateTimeField
      FieldName = 'MODDA'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsDepositoBankMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
  end
end
