inherited frmCashPositionMovementList: TfrmCashPositionMovementList
  Caption = 'Cash Position Movement'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 73
    Height = 395
    ExplicitTop = 73
    ExplicitHeight = 395
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterCMPOSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMPOSID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCMPOSCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMPOSCODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCMPOSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMPOSDATE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRYDATE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterCMPOSTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMPOSTYPE'
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_ACCID'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TARGET_ACCID'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ALTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_ALTYPE'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ALTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TARGET_ALTYPE'
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Width = 49
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterEXCHRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXCHRATE'
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterFXAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FXAMOUNT'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 38
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_DATE'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_UI'
        Width = 131
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL'
        RepositoryItem = dmGlobal.chkStandard
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL_DATE'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterCANCEL_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCEL_UI'
        Width = 106
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterAPPROVED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterAPPROVED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVED_DATE'
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterAPPROVED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPROVED_UI'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ALTYPE_1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_ALTYPE_1'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ALDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_ALDESC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ALTYPE_1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TARGET_ALTYPE_1'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ALDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TARGET_ALDESC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 26
    Width = 921
    Height = 47
    Align = alTop
    TabOrder = 5
    object dtEntryDate: TcxDateEdit
      Left = 67
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 102
    end
    object cxButton1: TcxButton
      Left = 175
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Entry Date'
      Control = dtEntryDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actNew'
        Permission = '[Cash Position Movement].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Cash Position Movement].Edit'
      end
      item
        ActionName = 'actDelete'
        Permission = '[Cash Position Movement].Delete'
      end
      item
        ActionName = 'actCancel'
        Permission = '[Cash Position Movement].Cancel'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Cash Position Movement].Copy From Selected Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Cash Position Movement].View'
      end
      item
        ActionName = 'actView'
        Permission = '[Cash Position Movement].View Approval Data'
      end
      item
        ActionName = 'actApprove'
        Permission = '[Cash Position Movement].Approve'
      end
      item
        ActionName = 'actReject'
        Permission = '[Cash Position Movement].Reject'
      end>
    AssignedPermission = <
      item
        Name = '[Cash Position Movement].New'
        Description = 'New Cash Position Movement'
      end
      item
        Name = '[Cash Position Movement].Edit'
        Description = 'Edit Cash Position Movement'
      end
      item
        Name = '[Cash Position Movement].View'
        Description = 'View Cash Position Movement'
      end>
    Left = 299
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
    object N5: TMenuItem [9]
      Caption = '-'
    end
    object ApprovedCashPositionMovement1: TMenuItem [10]
      Action = actApprovedCashPositionMovement
    end
    object CashPositionMovementPosting1: TMenuItem [11]
      Action = actCashPositionMovementPosting
    end
    object CashPositionMovementReverse1: TMenuItem [12]
      Action = actCashPositionMovementReverse
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsCashPositionMovementList
  end
  inherited aclEditor: TActionList
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actCashPositionMovementPosting: TNAction
      Category = 'NActions'
      Caption = 'Cash Position Movement Posting'
      OnUpdate = actCashPositionMovementPostingUpdate
      CheckPermission = False
    end
    object actCashPositionMovementReverse: TNAction
      Category = 'NActions'
      Caption = 'Cash Position Movement Reverse'
      OnUpdate = actCashPositionMovementPostingUpdate
      CheckPermission = False
    end
    object actApprovedCashPositionMovement: TNAction
      Category = 'NActions'
      Caption = 'Approved Cash Position Movement'
      OnExecute = actApprovedCashPositionMovementExecute
      OnUpdate = actApprovedCashPositionMovementUpdate
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  inherited ReportContainer: TNClientReportContainer
    Top = 242
  end
  object cdsCashPositionMovementList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'CMPOSDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashPositionMovementList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 171
    object cdsCashPositionMovementListCMPOSID: TLargeintField
      FieldName = 'CMPOSID'
      Required = True
    end
    object cdsCashPositionMovementListCMPOSCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CMPOSCODE'
      Required = True
    end
    object cdsCashPositionMovementListCMPOSDATE: TDateField
      DisplayLabel = 'Movement Date'
      FieldName = 'CMPOSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashPositionMovementListENTRYDATE: TDateField
      DisplayLabel = 'Entry Date'
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashPositionMovementListCMPOSTYPE: TStringField
      DisplayLabel = 'Movement Type'
      FieldName = 'CMPOSTYPE'
      Size = 1
    end
    object cdsCashPositionMovementListSOURCE_ACCID: TLargeintField
      DisplayLabel = 'Source AccID'
      FieldName = 'SOURCE_ACCID'
    end
    object cdsCashPositionMovementListTARGET_ACCID: TLargeintField
      DisplayLabel = 'Target AccID'
      FieldName = 'TARGET_ACCID'
    end
    object cdsCashPositionMovementListSOURCE_ALTYPE: TStringField
      DisplayLabel = 'Source Altype'
      FieldName = 'SOURCE_ALTYPE'
      Size = 10
    end
    object cdsCashPositionMovementListTARGET_ALTYPE: TStringField
      DisplayLabel = 'Target Altype'
      FieldName = 'TARGET_ALTYPE'
      Size = 10
    end
    object cdsCashPositionMovementListCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCashPositionMovementListEXCHRATE: TFloatField
      DisplayLabel = 'Exchange Rate'
      FieldName = 'EXCHRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPositionMovementListAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPositionMovementListFXAMOUNT: TFloatField
      DisplayLabel = 'Forex Amount'
      FieldName = 'FXAMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPositionMovementListPOSTED: TStringField
      DisplayLabel = 'Posted'
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashPositionMovementListPOSTED_DATE: TDateField
      DisplayLabel = 'Posted Date'
      FieldName = 'POSTED_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashPositionMovementListPOSTED_UI: TStringField
      DisplayLabel = 'Posted User'
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsCashPositionMovementListCANCEL: TStringField
      DisplayLabel = 'Cancel'
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsCashPositionMovementListCANCEL_DATE: TDateField
      DisplayLabel = 'Cancel Date'
      FieldName = 'CANCEL_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashPositionMovementListCANCEL_UI: TStringField
      DisplayLabel = 'Cancel User'
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsCashPositionMovementListAPPROVED: TStringField
      DisplayLabel = 'Approved'
      FieldName = 'APPROVED'
      Size = 1
    end
    object cdsCashPositionMovementListAPPROVED_DATE: TDateField
      DisplayLabel = 'Approved Date'
      FieldName = 'APPROVED_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashPositionMovementListAPPROVED_UI: TStringField
      DisplayLabel = 'Approved User'
      FieldName = 'APPROVED_UI'
      Size = 30
    end
    object cdsCashPositionMovementListSOURCE_ALTYPE_1: TStringField
      FieldName = 'SOURCE_ALTYPE_1'
      ReadOnly = True
      Size = 10
    end
    object cdsCashPositionMovementListSOURCE_ALDESC: TStringField
      FieldName = 'SOURCE_ALDESC'
      ReadOnly = True
      Size = 150
    end
    object cdsCashPositionMovementListTARGET_ALTYPE_1: TStringField
      FieldName = 'TARGET_ALTYPE_1'
      ReadOnly = True
      Size = 10
    end
    object cdsCashPositionMovementListTARGET_ALDESC: TStringField
      FieldName = 'TARGET_ALDESC'
      ReadOnly = True
      Size = 150
    end
  end
  object cdsCashPositionMovement: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CMPOSID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashPositionMovement'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 123
    object cdsCashPositionMovementCMPOSID: TLargeintField
      FieldName = 'CMPOSID'
      Required = True
    end
    object cdsCashPositionMovementCMPOSCODE: TStringField
      FieldName = 'CMPOSCODE'
      Required = True
    end
    object cdsCashPositionMovementCMPOSDATE: TDateField
      FieldName = 'CMPOSDATE'
    end
    object cdsCashPositionMovementENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsCashPositionMovementCMPOSTYPE: TStringField
      FieldName = 'CMPOSTYPE'
      Size = 1
    end
    object cdsCashPositionMovementSOURCE_ACCID: TLargeintField
      FieldName = 'SOURCE_ACCID'
    end
    object cdsCashPositionMovementTARGET_ACCID: TLargeintField
      FieldName = 'TARGET_ACCID'
    end
    object cdsCashPositionMovementSOURCE_ALTYPE: TStringField
      FieldName = 'SOURCE_ALTYPE'
      Size = 10
    end
    object cdsCashPositionMovementTARGET_ALTYPE: TStringField
      FieldName = 'TARGET_ALTYPE'
      Size = 10
    end
    object cdsCashPositionMovementCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCashPositionMovementEXCHRATE: TFloatField
      FieldName = 'EXCHRATE'
    end
    object cdsCashPositionMovementAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object cdsCashPositionMovementFXAMOUNT: TFloatField
      FieldName = 'FXAMOUNT'
    end
    object cdsCashPositionMovementPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashPositionMovementPOSTED_DATE: TDateField
      FieldName = 'POSTED_DATE'
    end
    object cdsCashPositionMovementPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsCashPositionMovementCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsCashPositionMovementCANCEL_DATE: TDateField
      FieldName = 'CANCEL_DATE'
    end
    object cdsCashPositionMovementCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsCashPositionMovementAPPROVED: TStringField
      FieldName = 'APPROVED'
      Size = 1
    end
    object cdsCashPositionMovementAPPROVED_DATE: TDateField
      FieldName = 'APPROVED_DATE'
    end
    object cdsCashPositionMovementAPPROVED_UI: TStringField
      FieldName = 'APPROVED_UI'
      Size = 30
    end
    object cdsCashPositionMovementMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashPositionMovementMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashPositionMovementAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashPositionMovementAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashPositionMovementUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashPositionMovementUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashPositionMovementNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashPositionMovementISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashPositionMovementID: TLargeintField
      FieldName = 'ID'
    end
  end
end
