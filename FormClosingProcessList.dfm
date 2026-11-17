inherited frmClosingProcessList: TfrmClosingProcessList
  Caption = 'Closing Account Process'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterCLSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLSID'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterCLSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLSDATE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterCLSBY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLSBY'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterCLSNOTE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLSNOTE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterCLSSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLSSTAT'
        Visible = False
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actView'
        Permission = '[Closing Account Process].View Approval Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Closing Account Process].View'
      end
      item
        ActionName = 'actNew'
        Permission = '[Closing Account Process].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Closing Account Process].Edit'
      end
      item
        ActionName = 'actDelete'
        Permission = '[Closing Account Process].Delete'
      end
      item
        ActionName = 'actRefresh'
        Permission = '[Closing Account Process].Refresh'
      end
      item
        ActionName = 'actCancel'
        Permission = '[Closing Account Process].Cancel'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Closing Account Process].Copy From Selected Data'
      end
      item
        ActionName = 'actApprove'
        Permission = '[Closing Account Process].Approve'
      end
      item
        ActionName = 'actReject'
        Permission = '[Closing Account Process].Reject'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Closing Price Editor'
      end>
    AssignedPermission = <
      item
        Name = 'Client Management Data'
        Description = 'Client Management Data Permission'
      end>
    Left = 291
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
    DataSet = cdsClosingProcessList
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    Control4Eyes = True
    MasterDataset = cdsClosingProcess
    MasterDatasetUpd = cdsClosingProcessUpd
    ListDataset = cdsClosingProcessList
    ListDatasetUpd = cdsClosingProcessUpdList
    MasterTableName = 'main.B_CLSPROCESS'
    UpdateTableName = 'appr.B_CLSPROCESS_UPD'
    Keys = <
      item
        FieldName = 'CLSID'
        FieldIndex = 0
      end>
    AutoFields = <
      item
        FieldName = 'CLSID'
        DataType = ftLargeint
        NumFormat = '%.6d'
      end>
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsClosingProcessList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryCloseProcessList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 36
    Top = 225
    object cdsClosingProcessListCLSID: TLargeintField
      DisplayLabel = 'CLS ID'
      FieldName = 'CLSID'
      Required = True
    end
    object cdsClosingProcessListACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsClosingProcessListACCNO: TStringField
      DisplayLabel = 'A/C Number'
      FieldName = 'ACCNO'
    end
    object cdsClosingProcessListACCNAME: TStringField
      DisplayLabel = 'A/C Name'
      FieldName = 'ACCNAME'
      Size = 50
    end
    object cdsClosingProcessListCLSDATE: TDateTimeField
      DisplayLabel = 'CP Date'
      FieldName = 'CLSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsClosingProcessListCLSBY: TStringField
      DisplayLabel = 'Closing By'
      FieldName = 'CLSBY'
    end
    object cdsClosingProcessListCLSNOTE: TStringField
      DisplayLabel = 'Note'
      FieldName = 'CLSNOTE'
      Size = 200
    end
    object cdsClosingProcessListCLSSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'CLSSTAT'
      Size = 1
    end
    object cdsClosingProcessListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsClosingProcessListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsClosingProcessListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsClosingProcessListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsClosingProcessListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsClosingProcessListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsClosingProcessListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsClosingProcessListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsClosingProcessListID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsClosingProcess: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CLSID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCloseProcess'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsClosingProcessNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 327
    Top = 63
    object cdsClosingProcessCLSID: TLargeintField
      FieldName = 'CLSID'
      Required = True
    end
    object cdsClosingProcessACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsClosingProcessACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsClosingProcessACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 50
    end
    object cdsClosingProcessCLSDATE: TDateTimeField
      FieldName = 'CLSDATE'
    end
    object cdsClosingProcessCLSBY: TStringField
      FieldName = 'CLSBY'
    end
    object cdsClosingProcessCLSNOTE: TStringField
      FieldName = 'CLSNOTE'
      Size = 200
    end
    object cdsClosingProcessCLSSTAT: TStringField
      FieldName = 'CLSSTAT'
      Size = 1
    end
    object cdsClosingProcessMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsClosingProcessMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsClosingProcessAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsClosingProcessAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsClosingProcessUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsClosingProcessUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsClosingProcessNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsClosingProcessISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsClosingProcessID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsClosingProcessUpdList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryCloseProcessUpdList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 447
    Top = 63
    object cdsClosingProcessUpdListCLSID: TLargeintField
      FieldName = 'CLSID'
      Required = True
    end
    object cdsClosingProcessUpdListACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsClosingProcessUpdListACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsClosingProcessUpdListACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 50
    end
    object cdsClosingProcessUpdListCLSDATE: TDateTimeField
      FieldName = 'CLSDATE'
    end
    object cdsClosingProcessUpdListCLSBY: TStringField
      FieldName = 'CLSBY'
    end
    object cdsClosingProcessUpdListCLSNOTE: TStringField
      FieldName = 'CLSNOTE'
      Size = 200
    end
    object cdsClosingProcessUpdListCLSSTAT: TStringField
      FieldName = 'CLSSTAT'
      Size = 1
    end
    object cdsClosingProcessUpdListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsClosingProcessUpdListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsClosingProcessUpdListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsClosingProcessUpdListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsClosingProcessUpdListEDIT4YDA: TDateTimeField
      FieldName = 'EDIT4YDA'
    end
    object cdsClosingProcessUpdListEDIT4YUI: TStringField
      FieldName = 'EDIT4YUI'
      Size = 30
    end
    object cdsClosingProcessUpdListUPDSTS: TStringField
      FieldName = 'UPDSTS'
      Size = 1
    end
    object cdsClosingProcessUpdListFLOWSTS: TStringField
      FieldName = 'FLOWSTS'
      Size = 1
    end
    object cdsClosingProcessUpdListPROCESSNAME: TStringField
      FieldName = 'PROCESSNAME'
      Size = 30
    end
    object cdsClosingProcessUpdListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsClosingProcessUpdListNOTES4YAPP: TStringField
      FieldName = 'NOTES4YAPP'
      Size = 100
    end
    object cdsClosingProcessUpdListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsClosingProcessUpdListUPDID: TLargeintField
      FieldName = 'UPDID'
    end
  end
  object cdsClosingProcessUpd: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CLSID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCloseProcessUpd'
    RemoteServer = dmGlobal.dspConnection
    AfterPost = cdsClosingProcessUpdAfterPost
    OnNewRecord = cdsClosingProcessUpdNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 447
    Top = 111
    object cdsClosingProcessUpdCLSID: TLargeintField
      FieldName = 'CLSID'
      Required = True
    end
    object cdsClosingProcessUpdACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsClosingProcessUpdACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsClosingProcessUpdACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 50
    end
    object cdsClosingProcessUpdCLSDATE: TDateTimeField
      FieldName = 'CLSDATE'
    end
    object cdsClosingProcessUpdCLSBY: TStringField
      FieldName = 'CLSBY'
    end
    object cdsClosingProcessUpdCLSNOTE: TStringField
      FieldName = 'CLSNOTE'
      Size = 200
    end
    object cdsClosingProcessUpdCLSSTAT: TStringField
      FieldName = 'CLSSTAT'
      Size = 1
    end
    object cdsClosingProcessUpdMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsClosingProcessUpdMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsClosingProcessUpdAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsClosingProcessUpdAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsClosingProcessUpdEDIT4YDA: TDateTimeField
      FieldName = 'EDIT4YDA'
    end
    object cdsClosingProcessUpdEDIT4YUI: TStringField
      FieldName = 'EDIT4YUI'
      Size = 30
    end
    object cdsClosingProcessUpdUPDSTS: TStringField
      FieldName = 'UPDSTS'
      Size = 1
    end
    object cdsClosingProcessUpdFLOWSTS: TStringField
      FieldName = 'FLOWSTS'
      Size = 1
    end
    object cdsClosingProcessUpdPROCESSNAME: TStringField
      FieldName = 'PROCESSNAME'
      Size = 30
    end
    object cdsClosingProcessUpdNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsClosingProcessUpdNOTES4YAPP: TStringField
      FieldName = 'NOTES4YAPP'
      Size = 100
    end
    object cdsClosingProcessUpdID: TLargeintField
      FieldName = 'ID'
    end
    object cdsClosingProcessUpdUPDID: TLargeintField
      FieldName = 'UPDID'
    end
  end
  object cdsAccountByAccID: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 603
    Top = 66
    object cdsAccountByAccIDACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountByAccIDENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsAccountByAccIDACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccountByAccIDACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsAccountByAccIDACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsAccountByAccIDACC_STS: TStringField
      FieldName = 'ACC_STS'
      Size = 1
    end
  end
end
