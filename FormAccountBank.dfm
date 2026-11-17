inherited frmAccountBank: TfrmAccountBank
  Caption = 'Account Bank'
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
      object gvwBank: TcxGridDBTableView
        PopupMenu = popBank
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
        DataController.DataSource = dsBank
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
        object gvwBankCCYCODE: TcxGridDBColumn
          Caption = 'Currency'
          DataBinding.FieldName = 'CCYCODE'
          RepositoryItem = dmGlobal.luCurrency
          Width = 62
        end
        object gvwBankBNCODE: TcxGridDBColumn
          Caption = 'Bank Code'
          DataBinding.FieldName = 'BNCODE'
          RepositoryItem = dmGlobal.luBank
          Width = 100
        end
        object gvwBankBANKACCNO: TcxGridDBColumn
          Caption = 'Bank Account No.'
          DataBinding.FieldName = 'BANKACCNO'
          Width = 91
        end
        object gvwBankBANKACCNAME: TcxGridDBColumn
          Caption = 'Bank Account Name'
          DataBinding.FieldName = 'BANKACCNAME'
          Width = 244
        end
        object gvwBankBANKBRANCH: TcxGridDBColumn
          Caption = 'Bank Branch'
          DataBinding.FieldName = 'BANKBRANCH'
          Width = 92
        end
        object gvwBankISRDN: TcxGridDBColumn
          Caption = 'RDN'
          DataBinding.FieldName = 'ISRDN'
          RepositoryItem = dmGlobal.chkStandard
          Width = 27
        end
        object gvwBankDEFAULT_BANK: TcxGridDBColumn
          Caption = 'Default Bank'
          DataBinding.FieldName = 'DEFAULT_BANK'
          Width = 67
        end
        object gvwBankDEFAULT_BANK_ACCOUNT: TcxGridDBColumn
          Caption = 'Owner'
          DataBinding.FieldName = 'DEFAULT_BANK_ACCOUNT'
          Width = 38
        end
        object gvwBankACCBANKID: TcxGridDBColumn
          DataBinding.FieldName = 'ACCBANKID'
          Visible = False
        end
        object gvwBankPRIVATEBANK_DEFAULT: TcxGridDBColumn
          DataBinding.FieldName = 'PRIVATEBANK_DEFAULT'
          Visible = False
        end
        object gvwBankRDNBANK_DEFAULT: TcxGridDBColumn
          DataBinding.FieldName = 'RDNBANK_DEFAULT'
          Visible = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gvwBank
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
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxGrid1
      ControlOptions.OriginalHeight = 185
      ControlOptions.OriginalWidth = 986
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
      TabOrder = 3
      ExplicitLeft = 780
    end
    object cxButton1: TcxButton [3]
      Left = 172
      Top = 10
      Width = 75
      Height = 25
      Caption = 'cxButton1'
      TabOrder = 2
      OnClick = cxButton1Click
    end
    inherited lcNavLog: TdxLayoutItem
      Index = 2
    end
    object dxLayoutControl2Item1: TdxLayoutItem
      Parent = dxLayoutGroup2
      Visible = False
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
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
    DataSet = cdsAccForBank
    Left = 272
    Top = 192
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsAccForBank: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryAccForBank'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsAccForBankAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = True
    Left = 272
    Top = 240
    object cdsAccForBankACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccForBankNOTES4Y: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccForBankqryAccBank: TDataSetField
      FieldName = 'qryAccBank'
    end
    object cdsAccForBankqryAccDefaultBank: TDataSetField
      FieldName = 'qryAccDefaultBank'
    end
    object cdsAccForBankqryAccBankOwner: TDataSetField
      FieldName = 'qryAccBankOwner'
    end
  end
  object dsAccInfo: TDataSource
    DataSet = cdsAccInfo
    Left = 176
    Top = 192
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
    Left = 176
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
  object cdsAccBankOwner: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccForBankqryAccBankOwner
    FieldDefs = <
      item
        Name = 'ACCID_OWNER'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ACCBANKID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MODDA'
        DataType = ftDateTime
      end
      item
        Name = 'MODUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'APPDA'
        DataType = ftDateTime
      end
      item
        Name = 'APPUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UNDER4Y'
        DataType = ftInteger
      end
      item
        Name = 'UNDER4YDA'
        DataType = ftDateTime
      end
      item
        Name = 'NOTES4Y'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ISDEL'
        DataType = ftInteger
      end
      item
        Name = 'ID'
        DataType = ftLargeint
      end>
    IndexDefs = <
      item
        Name = 'cdsAccBankOwnerIndex1'
        Fields = 'ACCID_OWNER;ACCBANKID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'cdsAccBankOwnerIndex1'
    Params = <>
    StoreDefs = True
    OnCalcFields = cdsAccBankOwnerCalcFields
    OnNewRecord = cdsAccBankOwnerNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 376
    Top = 240
    object cdsAccBankOwnerACCID_OWNER: TIntegerField
      FieldName = 'ACCID_OWNER'
      Required = True
    end
    object cdsAccBankOwnerACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsAccBankOwnerMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccBankOwnerMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccBankOwnerAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccBankOwnerAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccBankOwnerUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccBankOwnerUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccBankOwnerNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccBankOwnerISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccBankOwnerID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccBankOwnerCCYCODE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CCYCODE'
      Size = 5
      Calculated = True
    end
    object cdsAccBankOwnerBNCODE: TStringField
      FieldKind = fkCalculated
      FieldName = 'BNCODE'
      Required = True
      Size = 30
      Calculated = True
    end
    object cdsAccBankOwnerBANKACCNO: TStringField
      FieldKind = fkCalculated
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
      Calculated = True
    end
    object cdsAccBankOwnerBANKACCNAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'BANKACCNAME'
      Size = 50
      Calculated = True
    end
    object cdsAccBankOwnerBANKBRANCH: TStringField
      FieldKind = fkCalculated
      FieldName = 'BANKBRANCH'
      Size = 50
      Calculated = True
    end
    object cdsAccBankOwnerISRDN: TStringField
      FieldKind = fkCalculated
      FieldName = 'ISRDN'
      Size = 1
      Calculated = True
    end
    object cdsAccBankOwnerACCID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ACCID'
      Calculated = True
    end
    object cdsAccBankOwnerCCYCODE_1: TStringField
      FieldKind = fkLookup
      FieldName = 'CCYCODE_1'
      LookupDataSet = cdsAccBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'CCYCODE'
      KeyFields = 'ACCBANKID'
      Size = 5
      Lookup = True
    end
    object cdsAccBankOwnerBNCODE_1: TStringField
      FieldKind = fkLookup
      FieldName = 'BNCODE_1'
      LookupDataSet = cdsAccBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BNCODE'
      KeyFields = 'ACCBANKID'
      Required = True
      Size = 30
      Lookup = True
    end
    object cdsAccBankOwnerBANKACCNO_1: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKACCNO_1'
      LookupDataSet = cdsAccBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNO'
      KeyFields = 'ACCBANKID'
      Required = True
      Size = 30
      Lookup = True
    end
    object cdsAccBankOwnerBANKACCNAME_1: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKACCNAME_1'
      LookupDataSet = cdsAccBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNAME'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsAccBankOwnerBANKBRANCH_1: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKBRANCH_1'
      LookupDataSet = cdsAccBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKBRANCH'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsAccBankOwnerISRDN_1: TStringField
      FieldKind = fkLookup
      FieldName = 'ISRDN_1'
      LookupDataSet = cdsAccBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'ISRDN'
      KeyFields = 'ACCBANKID'
      Size = 1
      Lookup = True
    end
    object cdsAccBankOwnerACCID_1: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ACCID_1'
      LookupDataSet = cdsAccBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'ACCID'
      KeyFields = 'ACCBANKID'
      Lookup = True
    end
    object cdsAccBankOwnerRDNBANK_DEFAULT_1: TIntegerField
      FieldKind = fkLookup
      FieldName = 'RDNBANK_DEFAULT_1'
      LookupDataSet = cdsAccDefaultBank
      LookupKeyFields = 'ACCID;CCYCODE'
      LookupResultField = 'RDNBANK_DEFAULT'
      KeyFields = 'ACCID_OWNER;CCYCODE_1'
      Lookup = True
    end
    object cdsAccBankOwnerPRIVATEBANK_DEFAULT_1: TIntegerField
      FieldKind = fkLookup
      FieldName = 'PRIVATEBANK_DEFAULT_1'
      LookupDataSet = cdsAccDefaultBank
      LookupKeyFields = 'ACCID;CCYCODE'
      LookupResultField = 'PRIVATEBANK_DEFAULT'
      KeyFields = 'ACCID_OWNER;CCYCODE_1'
      Lookup = True
    end
    object cdsAccBankOwnerCCYCODE_2: TStringField
      FieldKind = fkLookup
      FieldName = 'CCYCODE_2'
      LookupDataSet = cdsAccBankOther
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'CCYCODE'
      KeyFields = 'ACCBANKID'
      Size = 5
      Lookup = True
    end
    object cdsAccBankOwnerBNCODE_2: TStringField
      FieldKind = fkLookup
      FieldName = 'BNCODE_2'
      LookupDataSet = cdsAccBankOther
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BNCODE'
      KeyFields = 'ACCBANKID'
      Required = True
      Size = 30
      Lookup = True
    end
    object cdsAccBankOwnerBANKACCNO_2: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKACCNO_2'
      LookupDataSet = cdsAccBankOther
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNO'
      KeyFields = 'ACCBANKID'
      Required = True
      Size = 30
      Lookup = True
    end
    object cdsAccBankOwnerBANKACCNAME_2: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKACCNAME_2'
      LookupDataSet = cdsAccBankOther
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNAME'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsAccBankOwnerBANKBRANCH_2: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKBRANCH_2'
      LookupDataSet = cdsAccBankOther
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKBRANCH'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsAccBankOwnerISRDN_2: TStringField
      FieldKind = fkLookup
      FieldName = 'ISRDN_2'
      LookupDataSet = cdsAccBankOther
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'ISRDN'
      KeyFields = 'ACCBANKID'
      Size = 1
      Lookup = True
    end
    object cdsAccBankOwnerACCID_2: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ACCID_2'
      LookupDataSet = cdsAccBankOther
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'ACCID'
      KeyFields = 'ACCBANKID'
      Lookup = True
    end
    object cdsAccBankOwnerRDNBANK_DEFAULT_2: TIntegerField
      FieldKind = fkLookup
      FieldName = 'RDNBANK_DEFAULT_2'
      LookupDataSet = cdsAccDefaultBank
      LookupKeyFields = 'ACCID;CCYCODE'
      LookupResultField = 'RDNBANK_DEFAULT'
      KeyFields = 'ACCID_OWNER;CCYCODE_2'
      Lookup = True
    end
    object cdsAccBankOwnerPRIVATEBANK_DEFAULT_2: TIntegerField
      FieldKind = fkLookup
      FieldName = 'PRIVATEBANK_DEFAULT_2'
      LookupDataSet = cdsAccDefaultBank
      LookupKeyFields = 'ACCID;CCYCODE'
      LookupResultField = 'PRIVATEBANK_DEFAULT'
      KeyFields = 'ACCID_OWNER;CCYCODE_2'
      Lookup = True
    end
    object cdsAccBankOwnerDEFAULT_BANK: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'DEFAULT_BANK'
      Calculated = True
    end
    object cdsAccBankOwnerRDNBANK_DEFAULT: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'RDNBANK_DEFAULT'
      Calculated = True
    end
    object cdsAccBankOwnerPRIVATEBANK_DEFAULT: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PRIVATEBANK_DEFAULT'
      Calculated = True
    end
    object cdsAccBankOwnerDEFAULT_BANK_ACCOUNT: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'DEFAULT_BANK_ACCOUNT'
      Calculated = True
    end
  end
  object cdsAccDefaultBank: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccForBankqryAccDefaultBank
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 488
    Top = 240
    object cdsAccDefaultBankACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccDefaultBankCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsAccDefaultBankPRIVATEBANK_DEFAULT: TIntegerField
      FieldName = 'PRIVATEBANK_DEFAULT'
    end
    object cdsAccDefaultBankRDNBANK_DEFAULT: TIntegerField
      FieldName = 'RDNBANK_DEFAULT'
    end
    object cdsAccDefaultBankMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccDefaultBankMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccDefaultBankAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccDefaultBankAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccDefaultBankUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccDefaultBankUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccDefaultBankNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccDefaultBankISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccDefaultBankID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsAccBank: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccForBankqryAccBank
    Params = <>
    OnNewRecord = cdsAccBankNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 600
    Top = 240
    object cdsAccBankACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsAccBankACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsAccBankCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsAccBankACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccBankBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsAccBankBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsAccBankBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsAccBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsAccBankISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsAccBankBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Size = 1
    end
    object cdsAccBankBNCHGSTYPE: TStringField
      FieldName = 'BNCHGSTYPE'
      Size = 10
    end
    object cdsAccBankACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsAccBankCBEST_CODE: TStringField
      FieldName = 'CBEST_CODE'
      Size = 10
    end
    object cdsAccBankBANK_DEFAULT: TStringField
      FieldName = 'BANK_DEFAULT'
      Size = 1
    end
    object cdsAccBankSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsAccBankMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccBankMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccBankAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccBankAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccBankUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccBankUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccBankNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccBankISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccBankID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsBank: TDataSource
    DataSet = cdsAccBankOwner
    Left = 376
    Top = 192
  end
  object aclBank: TActionList
    Left = 80
    Top = 192
    object actSetDefaultBank: TNAction
      Category = 'NActions'
      Caption = 'Set As Default Bank'
      OnExecute = actSetDefaultBankExecute
      OnUpdate = actSetDefaultBankUpdate
      CheckPermission = False
    end
    object actAddNewBank: TNAction
      Category = 'NActions'
      Caption = 'New'
      OnExecute = actAddNewBankExecute
      OnUpdate = actAddNewBankUpdate
      CheckPermission = False
    end
    object actAddFromCurrentBank: TNAction
      Category = 'NActions'
      Caption = 'From Related Account'
      OnExecute = actAddFromCurrentBankExecute
      OnUpdate = actAddNewBankUpdate
      CheckPermission = False
    end
    object actDeleteBank: TNAction
      Category = 'NActions'
      Caption = 'Delete Bank'
      OnExecute = actDeleteBankExecute
      OnUpdate = actSetDefaultBankUpdate
      CheckPermission = False
    end
    object actEditBank: TNAction
      Category = 'NActions'
      Caption = 'Edit Bank'
      OnExecute = actEditBankExecute
      OnUpdate = actSetDefaultBankUpdate
      CheckPermission = False
    end
  end
  object popBank: TPopupMenu
    Left = 80
    Top = 240
    object AddBank1: TMenuItem
      Caption = 'Add Bank'
      object New1: TMenuItem
        Action = actAddNewBank
      end
      object actAddFromCurrentBank1: TMenuItem
        Action = actAddFromCurrentBank
      end
    end
    object EditBank1: TMenuItem
      Action = actEditBank
    end
    object SetAsDefaultBank1: TMenuItem
      Action = actSetDefaultBank
    end
    object DeleteBank1: TMenuItem
      Action = actDeleteBank
    end
  end
  object NClientDataset1: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 512
    Top = 152
    object NClientDataset1RDNBANK_DEFAULT: TIntegerField
      FieldKind = fkLookup
      FieldName = 'RDNBANK_DEFAULT_2'
      LookupDataSet = cdsAccDefaultBank
      LookupKeyFields = 'ACCID;CCYCODE'
      LookupResultField = 'RDNBANK_DEFAULT'
      KeyFields = 'ACCID_OWNER;CCYCODE_2'
      Lookup = True
    end
    object NClientDataset1PRIVATEBANK_DEFAULT: TIntegerField
      FieldKind = fkLookup
      FieldName = 'PRIVATEBANK_DEFAULT_2'
      LookupDataSet = cdsAccDefaultBank
      LookupKeyFields = 'ACCID;CCYCODE'
      LookupResultField = 'PRIVATEBANK_DEFAULT'
      KeyFields = 'ACCID_OWNER;CCYCODE_2'
      Lookup = True
    end
  end
  object cdsAccBankOther: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccBankOther'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 488
    Top = 288
    object cdsAccBankOtherACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsAccBankOtherACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsAccBankOtherCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsAccBankOtherACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccBankOtherBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsAccBankOtherBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsAccBankOtherBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsAccBankOtherBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsAccBankOtherISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsAccBankOtherBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Size = 1
    end
    object cdsAccBankOtherBNCHGSTYPE: TStringField
      FieldName = 'BNCHGSTYPE'
      Size = 10
    end
    object cdsAccBankOtherACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsAccBankOtherCBEST_CODE: TStringField
      FieldName = 'CBEST_CODE'
      Size = 10
    end
    object cdsAccBankOtherBANK_DEFAULT: TStringField
      FieldName = 'BANK_DEFAULT'
      Size = 1
    end
    object cdsAccBankOtherSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsAccBankOtherMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccBankOtherMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccBankOtherAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccBankOtherAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccBankOtherUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccBankOtherUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccBankOtherNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccBankOtherISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccBankOtherID: TLargeintField
      FieldName = 'ID'
    end
  end
end
