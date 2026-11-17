object frmDataOwnerSetting: TfrmDataOwnerSetting
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Owner Configuration'
  ClientHeight = 571
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 522
    Width = 594
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 1
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
    end
    object btnCancel: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutControl3: TdxLayoutControl
    Left = 265
    Top = 272
    Width = 64
    Height = 250
    Align = alLeft
    BevelKind = bkTile
    TabOrder = 1
    object btnAdd: TcxButton
      Left = 10
      Top = 72
      Width = 39
      Height = 25
      Hint = 'Add'
      Caption = '>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnAddClick
    end
    object btnRemove: TcxButton
      Left = 10
      Top = 103
      Width = 39
      Height = 25
      Hint = 'Remove'
      Caption = '<'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnRemoveClick
    end
    object btnRemoveAll: TcxButton
      Left = 10
      Top = 41
      Width = 39
      Height = 25
      Hint = 'Remove All'
      Caption = '<<'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnRemoveAllClick
    end
    object btnAddAll: TcxButton
      Left = 10
      Top = 10
      Width = 39
      Height = 25
      Hint = 'Add All'
      Caption = '>>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnAddAllClick
    end
    object dxLayoutGroup4: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnAdd
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 39
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnRemove
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 15
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = btnRemoveAll
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 39
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = btnAddAll
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 39
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object grdSource: TcxGrid
    Left = 0
    Top = 272
    Width = 265
    Height = 250
    Align = alLeft
    TabOrder = 2
    object gvwSourceData: TcxGridDBBandedTableView
      PopupMenu = popSource
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAvailableData
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
          Caption = 'Available Data Group'
          HeaderAlignmentHorz = taLeftJustify
        end>
      object gvwSourceDataDATAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DATAID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwSourceDataDATACODE: TcxGridDBBandedColumn
        Caption = 'Code'
        DataBinding.FieldName = 'DATACODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwSourceDataDATADESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DATADESC'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object grdSourceLevel1: TcxGridLevel
      GridView = gvwSourceData
    end
  end
  object grdTarget: TcxGrid
    Left = 329
    Top = 272
    Width = 265
    Height = 250
    Align = alClient
    TabOrder = 3
    object gvwTargetData: TcxGridDBBandedTableView
      PopupMenu = popTarget
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDataOwner
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
          Caption = 'Selected Data Group'
          HeaderAlignmentHorz = taLeftJustify
        end>
      object gvwTargetDataUSERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'USERID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwTargetDataDATAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DATAID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwTargetDataDATACODE: TcxGridDBBandedColumn
        Caption = 'Code'
        DataBinding.FieldName = 'DATACODE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwTargetDataDATADESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DATADESC'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object grdTargetLevel1: TcxGridLevel
      GridView = gvwTargetData
    end
  end
  object grdUser: TcxGrid
    Left = 0
    Top = 0
    Width = 594
    Height = 272
    Align = alTop
    TabOrder = 4
    object gvwUser: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      OnFocusedRecordChanged = gvwUserFocusedRecordChanged
      DataController.DataSource = dsUserList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
          Caption = 'List of All User'
        end>
      object gvwUserUSERID: TcxGridDBBandedColumn
        Caption = 'User ID'
        DataBinding.FieldName = 'USERID'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwUserUSERNAME: TcxGridDBBandedColumn
        Caption = 'User Name'
        DataBinding.FieldName = 'USERNAME'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwUserUSERSTATE: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'USERSTATE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object grdUserLevel1: TcxGridLevel
      GridView = gvwUser
    end
  end
  object cdsUserList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAdministrator_qryUserList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 176
    Top = 120
    object cdsUserListUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsUserListAPPID: TStringField
      FieldName = 'APPID'
      Required = True
      Size = 30
    end
    object cdsUserListUSERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 50
    end
    object cdsUserListCRETEDATE: TDateTimeField
      FieldName = 'CRETEDATE'
    end
    object cdsUserListUSERSTATE: TStringField
      FieldName = 'USERSTATE'
      Size = 10
    end
    object cdsUserListUSERPWD: TStringField
      FieldName = 'USERPWD'
      Size = 30
    end
    object cdsUserListLASTCHANGEPWD: TDateTimeField
      FieldName = 'LASTCHANGEPWD'
    end
    object cdsUserListLOCKED: TStringField
      FieldName = 'LOCKED'
      Size = 1
    end
    object cdsUserListWRONGPWDCOUNT: TIntegerField
      FieldName = 'WRONGPWDCOUNT'
    end
    object cdsUserListHARDLIMIT: TFloatField
      FieldName = 'HARDLIMIT'
    end
    object cdsUserListSOFTLIMIT: TFloatField
      FieldName = 'SOFTLIMIT'
    end
    object cdsUserListTEMPLIMIT: TFloatField
      FieldName = 'TEMPLIMIT'
    end
    object cdsUserListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsUserListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsUserListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsUserListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsUserListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsUserListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsUserListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsUserListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsUserListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsUserListqryDataOwner: TDataSetField
      FieldName = 'qryDataOwner'
    end
  end
  object cdsDataOwner: TNClientDataset
    Aggregates = <>
    DataSetField = cdsUserListqryDataOwner
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 176
    Top = 168
    object cdsDataOwnerUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsDataOwnerDATAID: TIntegerField
      FieldName = 'DATAID'
      Required = True
    end
    object cdsDataOwnerDATACODE: TStringField
      FieldKind = fkLookup
      FieldName = 'DATACODE'
      LookupDataSet = cdsDataList
      LookupKeyFields = 'DATAID'
      LookupResultField = 'DATACODE'
      KeyFields = 'DATAID'
      Lookup = True
    end
    object cdsDataOwnerDATADESC: TStringField
      FieldKind = fkLookup
      FieldName = 'DATADESC'
      LookupDataSet = cdsDataList
      LookupKeyFields = 'DATAID'
      LookupResultField = 'DATADESC'
      KeyFields = 'DATAID'
      Size = 100
      Lookup = True
    end
  end
  object cdsDataList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAdministrator_qryDataList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 176
    Top = 216
    object cdsDataListDATAID: TIntegerField
      FieldName = 'DATAID'
      Required = True
    end
    object cdsDataListDATACODE: TStringField
      FieldName = 'DATACODE'
    end
    object cdsDataListDATADESC: TStringField
      FieldName = 'DATADESC'
      Size = 100
    end
  end
  object dsUserList: TDataSource
    DataSet = cdsUserList
    Left = 272
    Top = 120
  end
  object dsDataOwner: TDataSource
    DataSet = cdsDataOwner
    Left = 272
    Top = 168
  end
  object aclDataOwner: TActionList
    Left = 528
    Top = 40
    object actAddDataGroup: TNAction
      Category = 'NActions'
      Caption = 'Add Data Group'
      OnExecute = actAddDataGroupExecute
      CheckPermission = False
    end
    object actEditDataGroup: TNAction
      Category = 'NActions'
      Caption = 'Edit Data Group'
      OnExecute = actEditDataGroupExecute
      CheckPermission = False
    end
    object actEditDataGroupSelected: TNAction
      Category = 'NActions'
      Caption = 'Edit Data Group'
      OnExecute = actEditDataGroupSelectedExecute
      CheckPermission = False
    end
  end
  object cdsAvailableData: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 176
    Top = 264
    object cdsAvailableDataDATAID: TIntegerField
      FieldName = 'DATAID'
      Required = True
    end
    object cdsAvailableDataDATACODE: TStringField
      FieldName = 'DATACODE'
    end
    object cdsAvailableDataDATADESC: TStringField
      FieldName = 'DATADESC'
      Size = 100
    end
  end
  object dsAvailableData: TDataSource
    DataSet = cdsAvailableData
    Left = 176
    Top = 312
  end
  object popSource: TPopupMenu
    Left = 144
    Top = 368
    object AddDataGroup1: TMenuItem
      Action = actAddDataGroup
    end
    object EditDataGroup1: TMenuItem
      Action = actEditDataGroup
    end
  end
  object popTarget: TPopupMenu
    Left = 472
    Top = 368
    object EditDataGroup2: TMenuItem
      Action = actEditDataGroupSelected
    end
  end
end
