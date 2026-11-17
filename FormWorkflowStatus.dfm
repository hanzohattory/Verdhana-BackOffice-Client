object frmWorkflowStatus: TfrmWorkflowStatus
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Workflow Status'
  ClientHeight = 451
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object grdDataActivityStatus: TcxGrid
    Left = 0
    Top = 0
    Width = 474
    Height = 300
    Align = alTop
    TabOrder = 0
    LookAndFeel.NativeStyle = True
    object gvwDataActivityStatus: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsDataActivityStatus
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwDataActivityStatusDATAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DATAID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDataActivityStatusACTIVITYID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTIVITYID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwDataActivityStatusSTATUS: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS'
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwDataActivityStatusDONE_BY: TcxGridDBBandedColumn
        Caption = 'Done By'
        DataBinding.FieldName = 'DONE_BY'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwDataActivityStatusDONE_DATE: TcxGridDBBandedColumn
        Caption = 'Done Date'
        DataBinding.FieldName = 'DONE_DATE'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwDataActivityStatusNOTES: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwDataActivityStatusDESCRIPTION: TcxGridDBBandedColumn
        Caption = 'Activity'
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 159
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object grdDataActivityStatusLevel1: TcxGridLevel
      GridView = gvwDataActivityStatus
    end
  end
  object grdWorkflowDataNotes: TcxGrid
    Left = 0
    Top = 300
    Width = 474
    Height = 151
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = True
    object gvwWorkflowDataNotes: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsWorkflowDataNotes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwWorkflowDataNotesFLOWID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FLOWID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwWorkflowDataNotesDATAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DATAID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwWorkflowDataNotesNOTES_DATE: TcxGridDBBandedColumn
        Caption = 'Date'
        DataBinding.FieldName = 'NOTES_DATE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwWorkflowDataNotesNOTES: TcxGridDBBandedColumn
        Caption = 'Notes'
        DataBinding.FieldName = 'NOTES'
        Width = 231
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwWorkflowDataNotesNOTES_USER: TcxGridDBBandedColumn
        Caption = 'User'
        DataBinding.FieldName = 'NOTES_USER'
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object grdWorkflowDataNotesLevel1: TcxGridLevel
      GridView = gvwWorkflowDataNotes
    end
  end
  object dsDataActivityStatus: TDataSource
    DataSet = cdsDataActivityStatus
    Left = 400
    Top = 168
  end
  object cdsDataActivityStatus: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'FLOWID'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'DATAID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryDataActivityStatus'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 400
    Top = 120
    object cdsDataActivityStatusDATAID: TLargeintField
      FieldName = 'DATAID'
      Required = True
    end
    object cdsDataActivityStatusACTIVITYID: TIntegerField
      FieldName = 'ACTIVITYID'
      Required = True
    end
    object cdsDataActivityStatusSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsDataActivityStatusDONE_BY: TStringField
      FieldName = 'DONE_BY'
    end
    object cdsDataActivityStatusDONE_DATE: TDateTimeField
      FieldName = 'DONE_DATE'
    end
    object cdsDataActivityStatusNOTES: TMemoField
      FieldName = 'NOTES'
      BlobType = ftMemo
    end
    object cdsDataActivityStatusDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      ReadOnly = True
      Size = 60
    end
  end
  object cdsWorkflowDataNotes: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAdministrator_qryWorkflowDataNotes'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 64
    Top = 352
    object cdsWorkflowDataNotesFLOWID: TIntegerField
      FieldName = 'FLOWID'
      Required = True
    end
    object cdsWorkflowDataNotesDATAID: TLargeintField
      FieldName = 'DATAID'
      Required = True
    end
    object cdsWorkflowDataNotesNOTES_DATE: TDateTimeField
      FieldName = 'NOTES_DATE'
      Required = True
    end
    object cdsWorkflowDataNotesNOTES: TMemoField
      FieldName = 'NOTES'
      Required = True
      BlobType = ftMemo
    end
    object cdsWorkflowDataNotesNOTES_USER: TStringField
      FieldName = 'NOTES_USER'
      Required = True
    end
  end
  object dsWorkflowDataNotes: TDataSource
    DataSet = cdsWorkflowDataNotes
    Left = 64
    Top = 400
  end
  object aclWorkflow: TActionList
    Left = 56
    Top = 136
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      CheckPermission = False
    end
    object actModifyData: TNAction
      Category = 'NActions'
      Caption = 'Modify Data'
      CheckPermission = False
    end
    object actComplete: TNAction
      Category = 'NActions'
      Caption = 'Complete'
      OnExecute = actCompleteExecute
      CheckPermission = False
    end
    object actBackProcess: TNAction
      Category = 'NActions'
      Caption = 'Back to Previous Process'
      OnExecute = actBackProcessExecute
      CheckPermission = False
    end
    object actRefresh: TNAction
      Category = 'NActions'
      Caption = 'Refresh'
      ShortCut = 116
      OnExecute = actRefreshExecute
      CheckPermission = False
    end
  end
  object popDataActivityStatus: TPopupMenu
    Left = 56
    Top = 184
    object ViewData1: TMenuItem
      Action = actViewData
    end
    object ModifyData1: TMenuItem
      Action = actModifyData
    end
    object Complete1: TMenuItem
      Action = actComplete
    end
    object BacktoPreviousProcess1: TMenuItem
      Action = actBackProcess
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Refresh1: TMenuItem
      Action = actRefresh
    end
  end
end
