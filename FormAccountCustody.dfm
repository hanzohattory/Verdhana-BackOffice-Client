inherited frmAccountCustody: TfrmAccountCustody
  Caption = 'Account Custody'
  ClientHeight = 371
  ClientWidth = 894
  ExplicitWidth = 910
  ExplicitHeight = 410
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 894
    Height = 281
    ExplicitWidth = 894
    ExplicitHeight = 281
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 54
      Top = 10
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsAccInfo
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 190
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsAccInfo
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 300
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 559
      Top = 10
      DataBinding.DataField = 'ACCINIT'
      DataBinding.DataSource = dsAccInfo
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [3]
      Left = 722
      Top = 10
      RepositoryItem = dmGlobal.luAccountStatus
      DataBinding.DataField = 'ACC_STS'
      DataBinding.DataSource = dsAccInfo
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxGrid1: TcxGrid [4]
      Left = 10
      Top = 37
      Width = 874
      Height = 234
      TabOrder = 4
      object gvwCustody: TcxGridDBTableView
        PopupMenu = popCustody
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsCustody
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
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
        object gvwCustodyACCID_OWNER: TcxGridDBColumn
          DataBinding.FieldName = 'ACCID_OWNER'
          Visible = False
        end
        object gvwCustodyACCCUSTODYID: TcxGridDBColumn
          DataBinding.FieldName = 'ACCCUSTODYID'
          Visible = False
        end
        object gvwCustodyMODDA: TcxGridDBColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
        end
        object gvwCustodyMODUI: TcxGridDBColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
        end
        object gvwCustodyAPPDA: TcxGridDBColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
        end
        object gvwCustodyAPPUI: TcxGridDBColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
        end
        object gvwCustodyUNDER4Y: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
        end
        object gvwCustodyUNDER4YDA: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
        end
        object gvwCustodyNOTES4Y: TcxGridDBColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
        end
        object gvwCustodyISDEL: TcxGridDBColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
        end
        object gvwCustodyID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object gvwCustodyACCID_1: TcxGridDBColumn
          DataBinding.FieldName = 'ACCID_1'
          Visible = False
        end
        object gvwCustodyCUSTODYCODE_1: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTODYCODE_1'
          Visible = False
        end
        object gvwCustodyCUSTODYACCNO_1: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTODYACCNO_1'
          Visible = False
        end
        object gvwCustodyCUSTODYACCNAME_1: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTODYACCNAME_1'
          Visible = False
        end
        object gvwCustodyCUSTODYBRANCH_1: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTODYBRANCH_1'
          Visible = False
        end
        object gvwCustodyCUSTODYTYPE_1: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTODYTYPE_1'
          Visible = False
        end
        object gvwCustodyCUSTODY_DEFAULT_1: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTODY_DEFAULT_1'
          Visible = False
        end
        object gvwCustodyACCID_2: TcxGridDBColumn
          DataBinding.FieldName = 'ACCID_2'
          Visible = False
        end
        object gvwCustodyCUSTODYCODE_2: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTODYCODE_2'
          Visible = False
        end
        object gvwCustodyCUSTODYACCNO_2: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTODYACCNO_2'
          Visible = False
        end
        object gvwCustodyCUSTODYACCNAME_2: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTODYACCNAME_2'
          Visible = False
        end
        object gvwCustodyCUSTODYBRANCH_2: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTODYBRANCH_2'
          Visible = False
        end
        object gvwCustodyCUSTODYTYPE_2: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTODYTYPE_2'
          Visible = False
        end
        object gvwCustodyCUSTODY_DEFAULT_2: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTODY_DEFAULT_2'
          Visible = False
        end
        object gvwCustodyACCID: TcxGridDBColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
        end
        object gvwCustodyCUSTODYTYPE: TcxGridDBColumn
          Caption = 'Custody Type'
          DataBinding.FieldName = 'CUSTODYTYPE'
          RepositoryItem = dmGlobal.luCustudyType
          Width = 120
        end
        object gvwCustodyCUSTODYCODE: TcxGridDBColumn
          Caption = 'Custody Code'
          DataBinding.FieldName = 'CUSTODYCODE'
          Width = 74
        end
        object gvwCustodyCUSTODYACCNO: TcxGridDBColumn
          Caption = 'Custody Account No.'
          DataBinding.FieldName = 'CUSTODYACCNO'
          Width = 108
        end
        object gvwCustodyCUSTODYACCNAME: TcxGridDBColumn
          Caption = 'Custody Account Name'
          DataBinding.FieldName = 'CUSTODYACCNAME'
        end
        object gvwCustodyCUSTODYBRANCH: TcxGridDBColumn
          Caption = 'Custody Branch'
          DataBinding.FieldName = 'CUSTODYBRANCH'
          Width = 94
        end
        object gvwCustodyCUSTODY_DEFAULT: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTODY_DEFAULT'
          Visible = False
        end
        object gvwCustodyDEFAULT_CUSTODY: TcxGridDBColumn
          Caption = 'Default'
          DataBinding.FieldName = 'DEFAULT_CUSTODY'
          Width = 41
        end
        object gvwCustodyDEFAULT_CUSTODY_ACCOUNT: TcxGridDBColumn
          Caption = 'Owner'
          DataBinding.FieldName = 'DEFAULT_CUSTODY_ACCOUNT'
          Width = 38
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gvwCustody
      end
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Account'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Account Init'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Status'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup1
      Control = cxGrid1
      ControlOptions.OriginalHeight = 234
      ControlOptions.OriginalWidth = 874
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 302
    Width = 894
    ExplicitTop = 302
    ExplicitWidth = 894
    inherited dbNavLog: TDBNavigator
      Left = 780
      Hints.Strings = ()
      ExplicitLeft = 780
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 351
    Width = 894
    ExplicitTop = 351
    ExplicitWidth = 894
  end
  inherited tabEditorData: TTabSet
    Top = 281
    Width = 894
    ExplicitTop = 281
    ExplicitWidth = 894
  end
  inherited dsSubject: TDataSource
    DataSet = cdsAccForCustody
    Left = 208
    Top = 192
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsAccForCustody: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccForCustody'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsAccForCustodyAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = True
    Left = 208
    Top = 240
    object cdsAccForCustodyACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccForCustodyNOTES4Y: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccForCustodyqryAccCustody: TDataSetField
      FieldName = 'qryAccCustody'
    end
    object cdsAccForCustodyqryAccDefaultCustody: TDataSetField
      FieldName = 'qryAccDefaultCustody'
    end
    object cdsAccForCustodyqryAccCustodyOwner: TDataSetField
      FieldName = 'qryAccCustodyOwner'
    end
  end
  object dsAccInfo: TDataSource
    DataSet = cdsAccInfo
    Left = 128
    Top = 192
  end
  object aclCustody: TActionList
    Left = 56
    Top = 192
    object actSetDefaultCustody: TNAction
      Category = 'NActions'
      Caption = 'Set As Default Custody'
      OnExecute = actSetDefaultCustodyExecute
      OnUpdate = actSetDefaultCustodyUpdate
      CheckPermission = False
    end
    object actAddNewCustody: TNAction
      Category = 'NActions'
      Caption = 'New'
      OnExecute = actAddNewCustodyExecute
      OnUpdate = actAddNewCustodyUpdate
      CheckPermission = False
    end
    object actAddFromCurrentCustody: TNAction
      Category = 'NActions'
      Caption = 'From Related Account'
      OnExecute = actAddFromCurrentCustodyExecute
      OnUpdate = actAddNewCustodyUpdate
      CheckPermission = False
    end
    object actEditCustody: TNAction
      Category = 'NActions'
      Caption = 'Edit Custody'
      OnExecute = actEditCustodyExecute
      OnUpdate = actSetDefaultCustodyUpdate
      CheckPermission = False
    end
  end
  object popCustody: TPopupMenu
    Left = 56
    Top = 240
    object AddBank1: TMenuItem
      Caption = 'Add Custody'
      object New1: TMenuItem
        Action = actAddNewCustody
      end
      object actAddFromCurrentBank1: TMenuItem
        Action = actAddFromCurrentCustody
      end
    end
    object EditBank1: TMenuItem
      Action = actEditCustody
    end
    object SetAsDefaultBank1: TMenuItem
      Action = actSetDefaultCustody
    end
  end
  object cdsAccInfo: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccInfo'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsAccInfoAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    TableName = 'main.B_ACCOUNT'
    PrimaryKeyFields = 'ACCID'
    Left = 128
    Top = 240
    object cdsAccInfoACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccInfoACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccInfoACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsAccInfoACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsAccInfoACC_STS: TStringField
      FieldName = 'ACC_STS'
      Size = 1
    end
  end
  object dsCustody: TDataSource
    DataSet = cdsAccCustodyOwner
    Left = 312
    Top = 192
  end
  object cdsAccCustodyOwner: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccForCustodyqryAccCustodyOwner
    Params = <>
    OnCalcFields = cdsAccCustodyOwnerCalcFields
    OnNewRecord = cdsAccCustodyOwnerNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 312
    Top = 240
    object cdsAccCustodyOwnerACCID_OWNER: TIntegerField
      FieldName = 'ACCID_OWNER'
      Required = True
    end
    object cdsAccCustodyOwnerACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsAccCustodyOwnerMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccCustodyOwnerMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccCustodyOwnerAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccCustodyOwnerAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccCustodyOwnerUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccCustodyOwnerUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccCustodyOwnerNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccCustodyOwnerISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccCustodyOwnerID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccCustodyOwnerACCID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ACCID'
      Calculated = True
    end
    object cdsAccCustodyOwnerCUSTODYCODE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CUSTODYCODE'
      Size = 30
      Calculated = True
    end
    object cdsAccCustodyOwnerCUSTODYACCNO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CUSTODYACCNO'
      Size = 30
      Calculated = True
    end
    object cdsAccCustodyOwnerCUSTODYACCNAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'CUSTODYACCNAME'
      Size = 50
      Calculated = True
    end
    object cdsAccCustodyOwnerCUSTODYBRANCH: TStringField
      FieldKind = fkCalculated
      FieldName = 'CUSTODYBRANCH'
      Size = 50
      Calculated = True
    end
    object cdsAccCustodyOwnerCUSTODYTYPE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CUSTODYTYPE'
      Size = 2
      Calculated = True
    end
    object cdsAccCustodyOwnerCUSTODY_DEFAULT: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CUSTODY_DEFAULT'
      Calculated = True
    end
    object cdsAccCustodyOwnerACCID_1: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ACCID_1'
      LookupDataSet = cdsAccCustody
      LookupKeyFields = 'ACCCUSTODYID'
      LookupResultField = 'ACCID'
      KeyFields = 'ACCCUSTODYID'
      Lookup = True
    end
    object cdsAccCustodyOwnerCUSTODYCODE_1: TStringField
      FieldKind = fkLookup
      FieldName = 'CUSTODYCODE_1'
      LookupDataSet = cdsAccCustody
      LookupKeyFields = 'ACCCUSTODYID'
      LookupResultField = 'CUSTODYCODE'
      KeyFields = 'ACCCUSTODYID'
      Size = 30
      Lookup = True
    end
    object cdsAccCustodyOwnerCUSTODYACCNO_1: TStringField
      FieldKind = fkLookup
      FieldName = 'CUSTODYACCNO_1'
      LookupDataSet = cdsAccCustody
      LookupKeyFields = 'ACCCUSTODYID'
      LookupResultField = 'CUSTODYACCNO'
      KeyFields = 'ACCCUSTODYID'
      Size = 30
      Lookup = True
    end
    object cdsAccCustodyOwnerCUSTODYACCNAME_1: TStringField
      FieldKind = fkLookup
      FieldName = 'CUSTODYACCNAME_1'
      LookupDataSet = cdsAccCustody
      LookupKeyFields = 'ACCCUSTODYID'
      LookupResultField = 'CUSTODYACCNAME'
      KeyFields = 'ACCCUSTODYID'
      Size = 50
      Lookup = True
    end
    object cdsAccCustodyOwnerCUSTODYBRANCH_1: TStringField
      FieldKind = fkLookup
      FieldName = 'CUSTODYBRANCH_1'
      LookupDataSet = cdsAccCustody
      LookupKeyFields = 'ACCCUSTODYID'
      LookupResultField = 'CUSTODYBRANCH'
      KeyFields = 'ACCCUSTODYID'
      Size = 50
      Lookup = True
    end
    object cdsAccCustodyOwnerCUSTODYTYPE_1: TStringField
      FieldKind = fkLookup
      FieldName = 'CUSTODYTYPE_1'
      LookupDataSet = cdsAccCustody
      LookupKeyFields = 'ACCCUSTODYID'
      LookupResultField = 'CUSTODYTYPE'
      KeyFields = 'ACCCUSTODYID'
      Size = 2
      Lookup = True
    end
    object cdsAccCustodyOwnerCUSTODY_DEFAULT_1: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CUSTODY_DEFAULT_1'
      LookupDataSet = cdsAccDefaultCustody
      LookupKeyFields = 'ACCID;CUSTODYTYPE'
      LookupResultField = 'ACCCUSTODYID'
      KeyFields = 'ACCID_OWNER;CUSTODYTYPE_1'
      Lookup = True
    end
    object cdsAccCustodyOwnerACCID_2: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ACCID_2'
      LookupDataSet = cdsAccCustodyOther
      LookupKeyFields = 'ACCCUSTODYID'
      LookupResultField = 'ACCID'
      KeyFields = 'ACCCUSTODYID'
      Lookup = True
    end
    object cdsAccCustodyOwnerCUSTODYCODE_2: TStringField
      FieldKind = fkLookup
      FieldName = 'CUSTODYCODE_2'
      LookupDataSet = cdsAccCustodyOther
      LookupKeyFields = 'ACCCUSTODYID'
      LookupResultField = 'CUSTODYCODE'
      KeyFields = 'ACCCUSTODYID'
      Size = 30
      Lookup = True
    end
    object cdsAccCustodyOwnerCUSTODYACCNO_2: TStringField
      FieldKind = fkLookup
      FieldName = 'CUSTODYACCNO_2'
      LookupDataSet = cdsAccCustodyOther
      LookupKeyFields = 'ACCCUSTODYID'
      LookupResultField = 'CUSTODYACCNO'
      KeyFields = 'ACCCUSTODYID'
      Size = 30
      Lookup = True
    end
    object cdsAccCustodyOwnerCUSTODYACCNAME_2: TStringField
      FieldKind = fkLookup
      FieldName = 'CUSTODYACCNAME_2'
      LookupDataSet = cdsAccCustodyOther
      LookupKeyFields = 'ACCCUSTODYID'
      LookupResultField = 'CUSTODYACCNAME'
      KeyFields = 'ACCCUSTODYID'
      Size = 50
      Lookup = True
    end
    object cdsAccCustodyOwnerCUSTODYBRANCH_2: TStringField
      FieldKind = fkLookup
      FieldName = 'CUSTODYBRANCH_2'
      LookupDataSet = cdsAccCustodyOther
      LookupKeyFields = 'ACCCUSTODYID'
      LookupResultField = 'CUSTODYBRANCH'
      KeyFields = 'ACCCUSTODYID'
      Size = 50
      Lookup = True
    end
    object cdsAccCustodyOwnerCUSTODYTYPE_2: TStringField
      FieldKind = fkLookup
      FieldName = 'CUSTODYTYPE_2'
      LookupDataSet = cdsAccCustodyOther
      LookupKeyFields = 'ACCCUSTODYID'
      LookupResultField = 'CUSTODYTYPE'
      KeyFields = 'ACCCUSTODYID'
      Size = 2
      Lookup = True
    end
    object cdsAccCustodyOwnerCUSTODY_DEFAULT_2: TIntegerField
      FieldKind = fkLookup
      FieldName = 'CUSTODY_DEFAULT_2'
      LookupDataSet = cdsAccDefaultCustody
      LookupKeyFields = 'ACCID;CUSTODYTYPE'
      LookupResultField = 'ACCCUSTODYID'
      KeyFields = 'ACCID_OWNER;CUSTODYTYPE_2'
      Lookup = True
    end
    object cdsAccCustodyOwnerDEFAULT_CUSTODY: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'DEFAULT_CUSTODY'
      Calculated = True
    end
    object cdsAccCustodyOwnerDEFAULT_CUSTODY_ACCOUNT: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'DEFAULT_CUSTODY_ACCOUNT'
      Calculated = True
    end
  end
  object cdsAccDefaultCustody: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccForCustodyqryAccDefaultCustody
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 424
    Top = 240
    object cdsAccDefaultCustodyACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccDefaultCustodyCUSTODYTYPE: TStringField
      FieldName = 'CUSTODYTYPE'
      Required = True
      Size = 2
    end
    object cdsAccDefaultCustodyACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsAccDefaultCustodyMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccDefaultCustodyMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccDefaultCustodyAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccDefaultCustodyAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccDefaultCustodyUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccDefaultCustodyUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccDefaultCustodyNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccDefaultCustodyISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccDefaultCustodyID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsAccCustody: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccForCustodyqryAccCustody
    Params = <>
    OnNewRecord = cdsAccCustodyNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 528
    Top = 240
    object cdsAccCustodyACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsAccCustodyACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccCustodyCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 30
    end
    object cdsAccCustodyCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsAccCustodyCUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 50
    end
    object cdsAccCustodyCUSTODYBRANCH: TStringField
      FieldName = 'CUSTODYBRANCH'
      Size = 50
    end
    object cdsAccCustodyCUSTODYTYPE: TStringField
      FieldName = 'CUSTODYTYPE'
      Size = 2
    end
    object cdsAccCustodyACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsAccCustodyCBEST_ACCBANKID: TLargeintField
      FieldName = 'CBEST_ACCBANKID'
    end
    object cdsAccCustodyCUSTODY_DEFAULT: TStringField
      FieldName = 'CUSTODY_DEFAULT'
      Size = 1
    end
    object cdsAccCustodySTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsAccCustodyMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccCustodyMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccCustodyAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccCustodyAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccCustodyUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccCustodyUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccCustodyNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccCustodyISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccCustodyID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsAccCustodyOther: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccCustodyOther'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsAccCustodyOtherAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 424
    Top = 288
    object cdsAccCustodyOtherACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsAccCustodyOtherACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccCustodyOtherCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 30
    end
    object cdsAccCustodyOtherCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsAccCustodyOtherCUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 50
    end
    object cdsAccCustodyOtherCUSTODYBRANCH: TStringField
      FieldName = 'CUSTODYBRANCH'
      Size = 50
    end
    object cdsAccCustodyOtherCUSTODYTYPE: TStringField
      FieldName = 'CUSTODYTYPE'
      Size = 2
    end
    object cdsAccCustodyOtherACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsAccCustodyOtherCBEST_ACCBANKID: TLargeintField
      FieldName = 'CBEST_ACCBANKID'
    end
    object cdsAccCustodyOtherCUSTODY_DEFAULT: TStringField
      FieldName = 'CUSTODY_DEFAULT'
      Size = 1
    end
    object cdsAccCustodyOtherSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsAccCustodyOtherMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccCustodyOtherMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccCustodyOtherAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccCustodyOtherAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccCustodyOtherUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccCustodyOtherUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccCustodyOtherNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccCustodyOtherISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccCustodyOtherID: TLargeintField
      FieldName = 'ID'
    end
  end
  object NClientDataset1: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 424
    Top = 192
  end
end
