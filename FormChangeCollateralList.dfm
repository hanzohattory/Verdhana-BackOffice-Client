inherited frmChangeCollateralList: TfrmChangeCollateralList
  Caption = 'frmChangeCollateralList'
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterCCOLID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCOLID'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterTRXDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRXDATE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterCONRID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONRID'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterCONTRACT_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONTRACT_NO'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterEXISTCOLLATERAL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXISTCOLLATERAL'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterNEWCOLLATERAL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NEWCOLLATERAL'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterINPUTBY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INPUTBY'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterINPUTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INPUTDATE'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterAPPROVEBY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVEBY'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterAPPROVEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterPOSTINGBY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTINGBY'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterPOSTINGDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTINGDATE'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterCCOLSTATUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCOLSTATUS'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
    end
  end
  inherited PrintComp: TdxComponentPrinter
    inherited PrintCompMainGrid: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsChangeColList
  end
  inherited BarMBrowse: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
  end
  inherited DataContainer: TNMasterDetailData
    MasterDataset = cdsChangeColM
    ListDataset = cdsChangeColList
    DetailsData = <
      item
        DetailDataset = cdsChangeColD
        DetailTableName = 'main.B_REPO_CHANGE_COL_D'
        DetailKeys = <>
      end>
    MasterTableName = 'main.B_REPO_CHANGE_COL'
    Keys = <
      item
        FieldName = 'CCOLID'
        FieldIndex = 0
      end>
    AutoFields = <
      item
        FieldName = 'CCOLID'
        DataType = ftLargeint
        NumFormat = '%.6d'
      end>
  end
  object cdsChangeColList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmREPO_qryChangeColList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 336
    Top = 152
    object cdsChangeColListCCOLID: TLargeintField
      FieldName = 'CCOLID'
      Required = True
    end
    object cdsChangeColListTRXDATE: TDateTimeField
      FieldName = 'TRXDATE'
    end
    object cdsChangeColListACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsChangeColListACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsChangeColListCONRID: TLargeintField
      FieldName = 'CONRID'
    end
    object cdsChangeColListCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsChangeColListEXISTCOLLATERAL: TFloatField
      FieldName = 'EXISTCOLLATERAL'
    end
    object cdsChangeColListNEWCOLLATERAL: TFloatField
      FieldName = 'NEWCOLLATERAL'
    end
    object cdsChangeColListINPUTBY: TStringField
      FieldName = 'INPUTBY'
      Size = 30
    end
    object cdsChangeColListINPUTDATE: TDateTimeField
      FieldName = 'INPUTDATE'
    end
    object cdsChangeColListAPPROVEBY: TStringField
      FieldName = 'APPROVEBY'
      Size = 30
    end
    object cdsChangeColListAPPROVEDATE: TDateTimeField
      FieldName = 'APPROVEDATE'
    end
    object cdsChangeColListPOSTINGBY: TStringField
      FieldName = 'POSTINGBY'
      Size = 30
    end
    object cdsChangeColListPOSTINGDATE: TDateTimeField
      FieldName = 'POSTINGDATE'
    end
    object cdsChangeColListCCOLSTATUS: TStringField
      FieldName = 'CCOLSTATUS'
      Size = 5
    end
    object cdsChangeColListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsChangeColListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsChangeColListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsChangeColListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsChangeColListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsChangeColListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsChangeColListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsChangeColListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsChangeColListID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsChangeColM: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CCOLID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmREPO_qryChangeColM'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 480
    Top = 152
    object cdsChangeColMCCOLID: TLargeintField
      FieldName = 'CCOLID'
      Required = True
    end
    object cdsChangeColMTRXDATE: TDateTimeField
      FieldName = 'TRXDATE'
    end
    object cdsChangeColMACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsChangeColMACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsChangeColMCONRID: TLargeintField
      FieldName = 'CONRID'
    end
    object cdsChangeColMCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsChangeColMEXISTCOLLATERAL: TFloatField
      FieldName = 'EXISTCOLLATERAL'
    end
    object cdsChangeColMNEWCOLLATERAL: TFloatField
      FieldName = 'NEWCOLLATERAL'
    end
    object cdsChangeColMINPUTBY: TStringField
      FieldName = 'INPUTBY'
      Size = 30
    end
    object cdsChangeColMINPUTDATE: TDateTimeField
      FieldName = 'INPUTDATE'
    end
    object cdsChangeColMAPPROVEBY: TStringField
      FieldName = 'APPROVEBY'
      Size = 30
    end
    object cdsChangeColMAPPROVEDATE: TDateTimeField
      FieldName = 'APPROVEDATE'
    end
    object cdsChangeColMPOSTINGBY: TStringField
      FieldName = 'POSTINGBY'
      Size = 30
    end
    object cdsChangeColMPOSTINGDATE: TDateTimeField
      FieldName = 'POSTINGDATE'
    end
    object cdsChangeColMCCOLSTATUS: TStringField
      FieldName = 'CCOLSTATUS'
      Size = 5
    end
    object cdsChangeColMMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsChangeColMMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsChangeColMAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsChangeColMAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsChangeColMUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsChangeColMUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsChangeColMNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsChangeColMISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsChangeColMID: TLargeintField
      FieldName = 'ID'
    end
    object cdsChangeColMqryChangeColD: TDataSetField
      FieldName = 'qryChangeColD'
    end
  end
  object cdsChangeColD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsChangeColMqryChangeColD
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 600
    Top = 160
    object cdsChangeColDCCOLID: TLargeintField
      FieldName = 'CCOLID'
      Required = True
    end
    object cdsChangeColDSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsChangeColDSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsChangeColDSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsChangeColDSHARES: TFloatField
      FieldName = 'SHARES'
    end
    object cdsChangeColDCLS_PRICE: TFloatField
      FieldName = 'CLS_PRICE'
    end
    object cdsChangeColDCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
    object cdsChangeColDACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsChangeColDACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsChangeColDIN_OUT: TStringField
      FieldName = 'IN_OUT'
      Required = True
      Size = 1
    end
    object cdsChangeColDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsChangeColDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsChangeColDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsChangeColDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsChangeColDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsChangeColDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsChangeColDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsChangeColDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsChangeColDID: TLargeintField
      FieldName = 'ID'
    end
  end
end
