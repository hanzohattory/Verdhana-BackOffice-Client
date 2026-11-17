inherited frmEndOfDay: TfrmEndOfDay
  Caption = 'Batch Process Monitoring'
  ClientHeight = 363
  ClientWidth = 1047
  OnDestroy = FormDestroy
  ExplicitWidth = 1047
  ExplicitHeight = 363
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 1047
    Height = 45
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1138
    object dtTransDate: TcxDateEdit
      Left = 97
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    object cxButton1: TcxButton
      Left = 223
      Top = 10
      Width = 75
      Height = 25
      Action = actViewList
      TabOrder = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Transaction Date'
      Control = dtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object grdMaster: TcxGrid [1]
    Left = 0
    Top = 45
    Width = 1047
    Height = 318
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1138
    object gvwMaster: TcxGridDBBandedTableView
      PopupMenu = popMaster
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = gvwMasterCustomDrawCell
      DataController.DataSource = dsBatchProcess
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideSelection = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwMasterPROCESSNAME: TcxGridDBBandedColumn
        Caption = 'Process Name'
        DataBinding.FieldName = 'PROCESSNAME'
        Options.Sorting = False
        Width = 154
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSCHEDULETIME: TcxGridDBBandedColumn
        Caption = 'Schedule Time'
        DataBinding.FieldName = 'SCHEDULETIME'
        Options.Sorting = False
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAUTO: TcxGridDBBandedColumn
        Caption = 'Auto'
        DataBinding.FieldName = 'AUTO'
        RepositoryItem = dmGlobal.chkStandard
        Options.Sorting = False
        Width = 34
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS'
        RepositoryItem = dmGlobal.luBatchProcessStatus
        Options.Sorting = False
        Width = 114
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSTARTTIME: TcxGridDBBandedColumn
        Caption = 'Last Process Start Time'
        DataBinding.FieldName = 'STARTTIME'
        Options.Sorting = False
        Width = 137
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterENDTIME: TcxGridDBBandedColumn
        Caption = 'Last Process End Time'
        DataBinding.FieldName = 'ENDTIME'
        Options.Sorting = False
        Width = 134
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterPROCESSUI: TcxGridDBBandedColumn
        Caption = 'Last Process By'
        DataBinding.FieldName = 'PROCESSUI'
        Options.Sorting = False
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterPROCESSDESC: TcxGridDBBandedColumn
        Caption = 'Last Process Description'
        DataBinding.FieldName = 'PROCESSDESC'
        Options.Sorting = False
        Width = 297
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterREPEAT: TcxGridDBBandedColumn
        Caption = 'Repeat'
        DataBinding.FieldName = 'REPEAT'
        RepositoryItem = dmGlobal.chkStandard
        Options.Sorting = False
        Width = 53
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterBATCH_CAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BATCH_CAT'
        Visible = False
        Options.Sorting = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterFLAGPERMISSION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FLAGPERMISSION'
        Visible = False
        Options.Sorting = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
    end
    object gvwDetail: TcxGridDBBandedTableView
      PopupMenu = popMaster
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsBatchProcessDetail
      DataController.DetailKeyFieldNames = 'PROCESSID'
      DataController.KeyFieldNames = 'PROCESSID;SEQID'
      DataController.MasterKeyFieldNames = 'PROCESSID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwDetailSTARTTIME: TcxGridDBBandedColumn
        Caption = 'Start Time'
        DataBinding.FieldName = 'STARTTIME'
        Width = 171
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDetailENDTIME: TcxGridDBBandedColumn
        Caption = 'End Time'
        DataBinding.FieldName = 'ENDTIME'
        Width = 156
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwDetailPROCESSUI: TcxGridDBBandedColumn
        Caption = 'Process By'
        DataBinding.FieldName = 'PROCESSUI'
        Width = 92
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwDetailPROCESSDESC: TcxGridDBBandedColumn
        Caption = 'Process Description'
        DataBinding.FieldName = 'PROCESSDESC'
        Width = 529
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwDetailSTATUS: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS'
        RepositoryItem = dmGlobal.luBatchProcessStatus
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
      object grdMasterLevel2: TcxGridLevel
        GridView = gvwDetail
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclEndOfDay
    AssignedPermission = <
      item
        Name = 'Static Data'
      end>
  end
  object aclEndOfDay: TActionList
    Left = 299
    Top = 112
    object actViewList: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewListExecute
      CheckPermission = False
    end
    object actRunProcess: TNAction
      Category = 'NActions'
      Caption = 'Run Process'
      OnExecute = actRunProcessExecute
      OnUpdate = actRunProcessUpdate
      CheckPermission = False
    end
    object actRunAllProcess: TNAction
      Category = 'NActions'
      Caption = 'Run All Process'
      OnExecute = actRunAllProcessExecute
      CheckPermission = False
    end
    object actCreateBatch: TNAction
      Category = 'NActions'
      Caption = 'Create Batch Process'
      OnExecute = actCreateBatchExecute
      CheckPermission = False
    end
    object actRunSelectedProcess: TNAction
      Category = 'NActions'
      Caption = 'Run Selected Process'
      OnExecute = actRunSelectedProcessExecute
      OnUpdate = actRunSelectedProcessUpdate
      CheckPermission = False
    end
  end
  object cdsBatchProcess: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptInput
        Value = 41821d
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryBatchProcess'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsBatchProcessCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 299
    Top = 168
    object cdsBatchProcessTRANSDATE: TDateField
      FieldName = 'TRANSDATE'
      Required = True
    end
    object cdsBatchProcessPROCESSID: TIntegerField
      FieldName = 'PROCESSID'
      Required = True
    end
    object cdsBatchProcessPROCESSNAME: TStringField
      FieldName = 'PROCESSNAME'
      Size = 100
    end
    object cdsBatchProcessSCHEDULETIME: TDateTimeField
      FieldName = 'SCHEDULETIME'
      DisplayFormat = 'hh:nn:ss'
    end
    object cdsBatchProcessAUTO: TStringField
      FieldName = 'AUTO'
      Size = 1
    end
    object cdsBatchProcessSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsBatchProcessSTARTTIME: TDateTimeField
      FieldName = 'STARTTIME'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss.zzz'
    end
    object cdsBatchProcessENDTIME: TDateTimeField
      FieldName = 'ENDTIME'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss.zzz'
    end
    object cdsBatchProcessPROCESSUI: TStringField
      FieldName = 'PROCESSUI'
      Size = 30
    end
    object cdsBatchProcessPROCESSDESC: TStringField
      FieldName = 'PROCESSDESC'
      Size = 150
    end
    object cdsBatchProcessCONCOUNT: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CONCOUNT'
      Calculated = True
    end
    object cdsBatchProcessPROSCOUNT: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PROSCOUNT'
      Calculated = True
    end
    object cdsBatchProcessBATCH_CAT: TStringField
      FieldName = 'BATCH_CAT'
    end
    object cdsBatchProcessREPEAT: TStringField
      FieldName = 'REPEAT'
      Size = 1
    end
    object cdsBatchProcessBATCHID: TIntegerField
      FieldName = 'BATCHID'
    end
    object cdsBatchProcessDONE_FREQ: TIntegerField
      FieldName = 'DONE_FREQ'
    end
    object cdsBatchProcessFLAGPERMISSION: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'FLAGPERMISSION'
    end
    object cdsBatchProcessNOTI_TIME: TDateTimeField
      FieldName = 'NOTI_TIME'
    end
    object cdsBatchProcessEMAILTYPE: TStringField
      FieldName = 'EMAILTYPE'
      Size = 10
    end
    object cdsBatchProcessNOTIF: TStringField
      FieldName = 'NOTIF'
      Size = 1
    end
  end
  object dsBatchProcess: TDataSource
    DataSet = cdsBatchProcess
    Left = 296
    Top = 216
  end
  object tmrRefresh: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = tmrRefreshTimer
    Left = 408
    Top = 112
  end
  object popMaster: TPopupMenu
    Left = 408
    Top = 168
    object RunSelectedProcess1: TMenuItem
      Action = actRunSelectedProcess
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CreateBatchProcess1: TMenuItem
      Action = actCreateBatch
    end
  end
  object cdsBatchProcessDetail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptInput
        Value = 41646d
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryBatchProcessDetail'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 176
    Top = 168
    object cdsBatchProcessDetailPROCESSID: TIntegerField
      FieldName = 'PROCESSID'
      Required = True
    end
    object cdsBatchProcessDetailSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsBatchProcessDetailSTARTTIME: TDateTimeField
      FieldName = 'STARTTIME'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss.zzz'
    end
    object cdsBatchProcessDetailENDTIME: TDateTimeField
      FieldName = 'ENDTIME'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss.zzz'
    end
    object cdsBatchProcessDetailPROCESSUI: TStringField
      FieldName = 'PROCESSUI'
      Size = 30
    end
    object cdsBatchProcessDetailPROCESSDESC: TStringField
      FieldName = 'PROCESSDESC'
      Size = 150
    end
    object cdsBatchProcessDetailSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object dsBatchProcessDetail: TDataSource
    DataSet = cdsBatchProcessDetail
    Left = 176
    Top = 216
  end
  object cdsBatchPermission: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryBatchPermission'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 176
    Top = 264
    object cdsBatchPermissionBATCHID: TIntegerField
      FieldName = 'BATCHID'
      Required = True
    end
  end
end
