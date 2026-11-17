inherited frmCashBookList: TfrmCashBookList
  Caption = 'Cash Book'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterCBID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CBID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCBCODE: TcxGridDBBandedColumn
        Caption = 'Code'
        DataBinding.FieldName = 'CBCODE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCBDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'CBDESC'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCYCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterGLACCOUNTID: TcxGridDBBandedColumn
        Caption = 'GL Account'
        DataBinding.FieldName = 'GLACCOUNTID'
        RepositoryItem = dmGlobal.luGLAccountNo
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        Caption = 'Active'
        DataBinding.FieldName = 'STAT'
        RepositoryItem = dmGlobal.chkStandard
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterCOA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COA'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actNew'
        Permission = '[Cash Book].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Cash Book].Edit'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Cash Book].Copy From Selected Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Cash Book].View'
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
    DataSet = cdsCashBookList
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsCashBookList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmCashManagement_qryCashBookList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 176
    object cdsCashBookListCBID: TIntegerField
      FieldName = 'CBID'
      Required = True
    end
    object cdsCashBookListCBCODE: TStringField
      FieldName = 'CBCODE'
      Required = True
    end
    object cdsCashBookListCBDESC: TStringField
      FieldName = 'CBDESC'
      Required = True
      Size = 150
    end
    object cdsCashBookListCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsCashBookListGLACCOUNTID: TLargeintField
      FieldName = 'GLACCOUNTID'
      Required = True
    end
    object cdsCashBookListSTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
    object cdsCashBookListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashBookListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashBookListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashBookListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashBookListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashBookListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashBookListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashBookListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashBookListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashBookListCOA: TStringField
      DisplayLabel = 'GL Account'
      FieldName = 'COA'
    end
  end
end
