inherited frmCompanyBankRecons: TfrmCompanyBankRecons
  Caption = 'Bank Reconsile'
  ClientWidth = 1014
  ExplicitWidth = 1014
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 1014
    Height = 76
    Align = alTop
    TabOrder = 0
    object txtBankRecon: TcxButtonEdit
      Left = 233
      Top = 41
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 500
    end
    object txtTransDate: TcxDateEdit
      Left = 106
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnEditValueChanged = txtTransDatePropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 99
    end
    object cxButton1: TcxButton
      Left = 211
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 739
      Top = 41
      Width = 100
      Height = 25
      Action = actUploadData
      TabOrder = 4
    end
    object cbBank: TcxImageComboBox
      Left = 106
      Top = 41
      Properties.Items = <
        item
          Description = 'Bank BNI'
          ImageIndex = 0
          Value = 'BBNI'
        end
        item
          Description = 'Bank CIMB Niaga'
          Value = 'BNGA'
        end
        item
          Description = 'Bank Permata'
          Value = 'BNLI'
        end
        item
          Description = 'Bank Central Asia'
          Value = 'BBCA'
        end
        item
          Description = 'Bank Mandiri'
          Value = 'BMRI'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Import Bank Recon'
      CaptionOptions.Visible = False
      Control = txtBankRecon
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 500
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Transaction Date'
      Control = txtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Import Bank Recon'
      Control = cbBank
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 76
    Width = 1014
    Height = 298
    Align = alClient
    PopupMenu = popDocking
    TabOrder = 1
    object gvwBankRecon: TcxGridDBBandedTableView
      PopupMenu = popGrid
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsBankReconcile
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwBankReconTRDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDATE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBankReconACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBankReconACCCODE: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCCODE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBankReconACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBankReconACCINIT: TcxGridDBBandedColumn
        Caption = 'Account Init'
        DataBinding.FieldName = 'ACCINIT'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBankReconACCBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCBANKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBankReconBNCODE: TcxGridDBBandedColumn
        Caption = 'Bank Code'
        DataBinding.FieldName = 'BNCODE'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwBankReconBNACCNO: TcxGridDBBandedColumn
        Caption = 'Bank Account No.'
        DataBinding.FieldName = 'BNACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwBankReconCCY: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCY'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwBankReconSALDO: TcxGridDBBandedColumn
        Caption = 'KSEI Saldo'
        DataBinding.FieldName = 'SALDO'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwBankReconRDNPOS: TcxGridDBBandedColumn
        Caption = 'Nayaga Saldo'
        DataBinding.FieldName = 'RDNPOS'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwBankReconDIFF_AMOUNT: TcxGridDBBandedColumn
        Caption = 'Diff Amount'
        DataBinding.FieldName = 'DIFF_AMOUNT'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwBankRecon
    end
  end
  inherited popDocking: TPopupMenu
    Left = 462
    Top = 238
    object Post1: TMenuItem
      Caption = 'Post'
    end
    object PostAll1: TMenuItem
      Caption = 'Post All'
      OnClick = PostAll1Click
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclBankRecon
    Left = 273
    Top = 208
  end
  object cdsBankRecon: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'TRDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryBankRecon'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 525
    Top = 192
    object cdsBankReconTRDATE: TDateField
      FieldName = 'TRDATE'
      Required = True
    end
    object cdsBankReconACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsBankReconALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsBankReconLDGACC: TStringField
      FieldName = 'LDGACC'
      Size = 10
    end
    object cdsBankReconBNACC: TStringField
      FieldName = 'BNACC'
      Required = True
      Size = 10
    end
    object cdsBankReconBNACCNO: TStringField
      FieldName = 'BNACCNO'
    end
    object cdsBankReconCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsBankReconRDNAMT: TFloatField
      FieldName = 'RDNAMT'
    end
    object cdsBankReconRDNBNK_AMT: TFloatField
      FieldName = 'RDNBNK_AMT'
    end
    object cdsBankReconDIFFAMT: TFloatField
      FieldName = 'DIFFAMT'
    end
    object cdsBankReconREF: TStringField
      FieldName = 'REF'
      Size = 10
    end
    object cdsBankReconATRNS: TStringField
      FieldName = 'ATRNS'
      Size = 1
    end
    object cdsBankReconCDID: TLargeintField
      FieldName = 'CDID'
    end
    object cdsBankReconV_TRNAMT: TFloatField
      FieldName = 'V_TRNAMT'
    end
    object cdsBankReconACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
  end
  object dsBankRecon: TDataSource
    DataSet = cdsBankRecon
    Left = 525
    Top = 234
  end
  object cdsBankReconcile: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryBankReconcile'
    RemoteServer = dmGlobal.dspConnection
    Left = 176
    Top = 240
    object cdsBankReconcileTRDATE: TDateField
      FieldName = 'TRDATE'
      Required = True
    end
    object cdsBankReconcileACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
    end
    object cdsBankReconcileACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsBankReconcileACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsBankReconcileACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsBankReconcileACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      ReadOnly = True
    end
    object cdsBankReconcileBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsBankReconcileBNACCNO: TStringField
      FieldName = 'BNACCNO'
      Required = True
      Size = 30
    end
    object cdsBankReconcileCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsBankReconcileSALDO: TFloatField
      FieldName = 'SALDO'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBankReconcileRDNPOS: TFloatField
      FieldName = 'RDNPOS'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBankReconcileDIFF_AMOUNT: TFloatField
      FieldName = 'DIFF_AMOUNT'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object dsBankReconcile: TDataSource
    DataSet = cdsBankReconcile
    Left = 176
    Top = 288
  end
  object aclBankRecon: TActionList
    Left = 272
    Top = 160
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actUploadData: TNAction
      Category = 'NActions'
      Caption = 'Upload Data'
      OnExecute = actUploadDataExecute
      CheckPermission = False
    end
    object actCreateMutation: TNAction
      Category = 'NActions'
      Caption = 'Create Mutation'
      OnExecute = actCreateMutationExecute
      CheckPermission = False
    end
    object actCreateMutationAll: TNAction
      Category = 'NActions'
      Caption = 'Create Mutation All'
      OnExecute = actCreateMutationAllExecute
      CheckPermission = False
    end
  end
  object cdsCompanyBankPosition: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryBankPosition'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 56
    Top = 240
    object cdsCompanyBankPositionUPLOADID: TIntegerField
      FieldName = 'UPLOADID'
      ReadOnly = True
    end
    object cdsCompanyBankPositionTRDATE: TDateField
      FieldName = 'TRDATE'
      Required = True
    end
    object cdsCompanyBankPositionBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsCompanyBankPositionBNACCNO: TStringField
      FieldName = 'BNACCNO'
      Required = True
      Size = 30
    end
    object cdsCompanyBankPositionCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsCompanyBankPositionSALDO: TFloatField
      FieldName = 'SALDO'
      Required = True
    end
    object cdsCompanyBankPositionMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCompanyBankPositionMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCompanyBankPositionAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCompanyBankPositionAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCompanyBankPositionUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCompanyBankPositionUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCompanyBankPositionNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCompanyBankPositionISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCompanyBankPositionID: TLargeintField
      FieldName = 'ID'
    end
  end
  object popGrid: TPopupMenu
    Left = 384
    Top = 112
    object CreateCashDeposit1: TMenuItem
      Action = actCreateMutation
    end
    object CreateCashDepositAll1: TMenuItem
      Action = actCreateMutationAll
    end
  end
  object cdsCashMutation: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CMID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashMutation'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 56
    Top = 288
    object cdsCashMutationCMID: TLargeintField
      FieldName = 'CMID'
      Required = True
    end
    object cdsCashMutationCMCODE: TStringField
      FieldName = 'CMCODE'
      Required = True
    end
    object cdsCashMutationCMDATE: TDateField
      FieldName = 'CMDATE'
      Required = True
    end
    object cdsCashMutationCMTYPE: TStringField
      FieldName = 'CMTYPE'
      Size = 1
    end
    object cdsCashMutationCMDESC: TStringField
      FieldName = 'CMDESC'
      Size = 100
    end
    object cdsCashMutationACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsCashMutationACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCashMutationACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsCashMutationDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsCashMutationCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCashMutationCMAMT: TFloatField
      FieldName = 'CMAMT'
    end
    object cdsCashMutationPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashMutationMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashMutationMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashMutationAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashMutationAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashMutationUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashMutationUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashMutationNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashMutationISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashMutationID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashMutationBNBRANCH: TStringField
      FieldKind = fkLookup
      FieldName = 'BNBRANCH'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKBRANCH'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashMutationBNACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'BNACCNAME'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNAME'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashMutationBNACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'BNACCNO'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNO'
      KeyFields = 'ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashMutationBNCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'BNCODE'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BNCODE'
      KeyFields = 'ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashMutationACCNAME: TStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 150
      Lookup = True
    end
  end
  object ImportFilesDialog: TOpenDialog
    Filter = 'CSV Files|*.csv|Text Files|*.txt'
    Left = 363
    Top = 162
  end
end
