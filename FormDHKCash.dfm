inherited frmDHKCash: TfrmDHKCash
  Caption = 'DHK Cash'
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 607
    Height = 49
    Align = alTop
    TabOrder = 0
    object dtDueDate: TcxDateEdit
      Left = 60
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
      Left = 186
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Due Date'
      Control = dtDueDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object grdMaster: TcxGrid [1]
    Left = 0
    Top = 49
    Width = 607
    Height = 325
    Align = alClient
    TabOrder = 1
    object gvwMaster: TcxGridDBBandedTableView
      PopupMenu = popGrid
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsDHKCashInstr
      DataController.Filter.Options = [fcoCaseInsensitive]
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
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwMasterDHKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DHKID'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterDAY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DAY'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterSID_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SID_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCBEST_ACC_01: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CBEST_ACC_01'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterCBEST_ACC_04: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CBEST_ACC_04'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSECURITY_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SECURITY_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterRIGHTS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RIGHTS'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterOBLIGATION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OBLIGATION'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclDHK
  end
  object dsDHKCashInstr: TDataSource
    DataSet = cdsDHKCashInstr
    Left = 41
    Top = 187
  end
  object cdsDHKCashInstr: TNClientDataset
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DHKID'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'DHKNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DAY'
        DataType = ftDate
      end
      item
        Name = 'SID_CODE'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'CBEST_ACC_01'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 8000
      end
      item
        Name = 'CBEST_ACC_04'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 8000
      end
      item
        Name = 'SECURITY_CODE'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'RIGHTS'
        DataType = ftFloat
      end
      item
        Name = 'OBLIGATION'
        DataType = ftFloat
      end
      item
        Name = 'MEMBER_ID'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'WTNO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDHKCashInstr'
    RemoteServer = dmGlobal.dspConnection
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 41
    Top = 139
    object cdsDHKCashInstrDHKID: TLargeintField
      FieldName = 'DHKID'
      Required = True
    end
    object cdsDHKCashInstrDHKNO: TStringField
      FieldName = 'DHKNO'
    end
    object cdsDHKCashInstrDAY: TDateField
      FieldName = 'DAY'
    end
    object cdsDHKCashInstrSID_CODE: TStringField
      FieldName = 'SID_CODE'
      Size = 255
    end
    object cdsDHKCashInstrCBEST_ACC_01: TStringField
      FieldName = 'CBEST_ACC_01'
      ReadOnly = True
      Size = 8000
    end
    object cdsDHKCashInstrCBEST_ACC_04: TStringField
      FieldName = 'CBEST_ACC_04'
      ReadOnly = True
      Size = 8000
    end
    object cdsDHKCashInstrSECURITY_CODE: TStringField
      FieldName = 'SECURITY_CODE'
      Size = 255
    end
    object cdsDHKCashInstrRIGHTS: TFloatField
      FieldName = 'RIGHTS'
    end
    object cdsDHKCashInstrOBLIGATION: TFloatField
      FieldName = 'OBLIGATION'
    end
    object cdsDHKCashInstrMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Size = 255
    end
    object cdsDHKCashInstrWTNO: TStringField
      FieldName = 'WTNO'
    end
  end
  object aclDHK: TActionList
    Left = 297
    Top = 115
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actCreateCashCOLW: TNAction
      Category = 'NActions'
      Caption = 'Create Cash COLW && COLD'
      OnExecute = actCreateCashCOLWExecute
      CheckPermission = False
    end
    object actCreateCashCOLDS: TNAction
      Category = 'NActions'
      Caption = 'actCreateCashCOLDS'
      OnExecute = actCreateCashCOLDSExecute
      CheckPermission = False
    end
    object actGenerateWT: TNAction
      Category = 'NActions'
      Caption = 'Generate Wire Transfer'
      OnExecute = actGenerateWTExecute
      CheckPermission = False
    end
  end
  object XLS: TXLSReadWriteII5
    ComponentVersion = '6.01.10a'
    Version = xvExcel97
    DirectRead = False
    DirectWrite = False
    DoNotReadSheets = False
    Left = 40
    Top = 240
  end
  object popGrid: TPopupMenu
    Left = 400
    Top = 120
    object CreateCashCOLW: TMenuItem
      Action = actCreateCashCOLW
      Caption = 'Create Cash COLW'
    end
    object CreateCashCOLDS: TMenuItem
      Action = actCreateCashCOLDS
      Caption = 'Create Cash COLDS'
    end
    object GenerateWT: TMenuItem
      Action = actGenerateWT
    end
  end
  object cdsBankBeneficiary: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMiddleOffice_qryBankBeneficiary'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 184
    Top = 224
    object cdsBankBeneficiaryACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsBankBeneficiaryACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsBankBeneficiaryCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsBankBeneficiaryACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsBankBeneficiaryBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsBankBeneficiaryBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsBankBeneficiaryBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsBankBeneficiaryBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsBankBeneficiaryISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsBankBeneficiaryBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Size = 1
    end
    object cdsBankBeneficiaryBNCHGSTYPE: TStringField
      FieldName = 'BNCHGSTYPE'
      Size = 10
    end
    object cdsBankBeneficiaryACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsBankBeneficiaryCBEST_CODE: TStringField
      FieldName = 'CBEST_CODE'
      Size = 10
    end
    object cdsBankBeneficiaryBANK_DEFAULT: TStringField
      FieldName = 'BANK_DEFAULT'
      Size = 1
    end
    object cdsBankBeneficiarySTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsBankBeneficiaryMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBankBeneficiaryMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBankBeneficiaryAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBankBeneficiaryAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBankBeneficiaryUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBankBeneficiaryUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBankBeneficiaryNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBankBeneficiaryISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBankBeneficiaryID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBankBeneficiaryBNCODE_1: TStringField
      FieldName = 'BNCODE_1'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsBankBeneficiaryBNNAME: TStringField
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsBankBeneficiaryINITIAL_NAME: TStringField
      FieldName = 'INITIAL_NAME'
      ReadOnly = True
      Size = 10
    end
    object cdsBankBeneficiaryBICODE: TStringField
      FieldName = 'BICODE'
      ReadOnly = True
      Size = 10
    end
    object cdsBankBeneficiarySWIFT_CODE: TStringField
      FieldName = 'SWIFT_CODE'
      ReadOnly = True
      Size = 10
    end
    object cdsBankBeneficiaryISRDN_1: TStringField
      FieldName = 'ISRDN_1'
      ReadOnly = True
      Size = 1
    end
    object cdsBankBeneficiaryMODDA_1: TDateTimeField
      FieldName = 'MODDA_1'
      ReadOnly = True
    end
    object cdsBankBeneficiaryMODUI_1: TStringField
      FieldName = 'MODUI_1'
      ReadOnly = True
      Size = 30
    end
    object cdsBankBeneficiaryAPPDA_1: TDateTimeField
      FieldName = 'APPDA_1'
      ReadOnly = True
    end
    object cdsBankBeneficiaryAPPUI_1: TStringField
      FieldName = 'APPUI_1'
      ReadOnly = True
      Size = 30
    end
    object cdsBankBeneficiaryISDEL_1: TIntegerField
      FieldName = 'ISDEL_1'
      ReadOnly = True
    end
    object cdsBankBeneficiaryID_1: TLargeintField
      FieldName = 'ID_1'
      ReadOnly = True
    end
  end
  object cdsDHKCashXLS: TNClientDataset
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ENTTCODE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CUST_TYPE'
        DataType = ftInteger
      end
      item
        Name = 'DHKNO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DAY'
        Attributes = [faReadonly]
        DataType = ftDate
      end
      item
        Name = 'SID_CODE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'CBEST_ACC_01'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 8000
      end
      item
        Name = 'CBEST_ACC_04'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 8000
      end
      item
        Name = 'SECURITY_CODE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'RIGHTS'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'OBLIGATION'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'MEMBER_ID'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'WTNO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DHKNO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDHKCashXLS'
    RemoteServer = dmGlobal.dspConnection
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 321
    Top = 235
    object cdsDHKCashXLSENTTCODE: TStringField
      FieldName = 'ENTTCODE'
    end
    object cdsDHKCashXLSCUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
    end
    object cdsDHKCashXLSDHKNO: TStringField
      FieldName = 'DHKNO'
      ReadOnly = True
    end
    object cdsDHKCashXLSDAY: TDateField
      FieldName = 'DAY'
      ReadOnly = True
    end
    object cdsDHKCashXLSSID_CODE: TStringField
      FieldName = 'SID_CODE'
      ReadOnly = True
      Size = 255
    end
    object cdsDHKCashXLSCBEST_ACC_01: TStringField
      FieldName = 'CBEST_ACC_01'
      ReadOnly = True
      Size = 8000
    end
    object cdsDHKCashXLSCBEST_ACC_04: TStringField
      FieldName = 'CBEST_ACC_04'
      ReadOnly = True
      Size = 8000
    end
    object cdsDHKCashXLSSECURITY_CODE: TStringField
      FieldName = 'SECURITY_CODE'
      ReadOnly = True
      Size = 255
    end
    object cdsDHKCashXLSRIGHTS: TFloatField
      FieldName = 'RIGHTS'
      ReadOnly = True
    end
    object cdsDHKCashXLSOBLIGATION: TFloatField
      FieldName = 'OBLIGATION'
      ReadOnly = True
    end
    object cdsDHKCashXLSMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      ReadOnly = True
      Size = 255
    end
    object cdsDHKCashXLSWTNO: TStringField
      FieldName = 'WTNO'
      ReadOnly = True
    end
  end
end
