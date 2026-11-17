inherited frmBankMutation: TfrmBankMutation
  Caption = 'Bank Mutation'
  ClientHeight = 523
  ClientWidth = 864
  ExplicitWidth = 864
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 864
    Height = 76
    Align = alTop
    TabOrder = 0
    object txtBankMutation: TcxButtonEdit
      Left = 118
      Top = 41
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = txtBankReconPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 500
    end
    object txtTransDate: TcxDateEdit
      Left = 118
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 99
    end
    object cxButton1: TcxButton
      Left = 378
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 2
    end
    object cxButton2: TcxButton
      Left = 624
      Top = 41
      Width = 100
      Height = 25
      Action = actUploadData
      TabOrder = 4
    end
    object cbBank: TcxImageComboBox
      Left = 251
      Top = 10
      Properties.Items = <
        item
          Description = 'Bank Permata'
          Value = 'BNLI'
        end
        item
          Description = 'Bank CIMB Niaga'
          Value = 'BNGA'
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
      TabOrder = 1
      Width = 121
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
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Import Bank Mutation'
      Control = txtBankMutation
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 500
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Transaction Date'
      Control = txtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 0
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
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Bank'
      Control = cbBank
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 76
    Width = 864
    Height = 74
    Align = alClient
    PopupMenu = popDocking
    TabOrder = 1
    object gvwBankMutation: TcxGridDBBandedTableView
      PopupMenu = popGrid
      Navigator.Buttons.CustomButtons = <>
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
      object gvwBankMutationMUTATIONID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MUTATIONID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBankMutationTRDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDATE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBankMutationTRDATETIME: TcxGridDBBandedColumn
        Caption = 'Transaction Time'
        DataBinding.FieldName = 'TRDATETIME'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBankMutationSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SID'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBankMutationSUBREK01: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SUBREK01'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBankMutationBNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNCODE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBankMutationBNACCNO: TcxGridDBBandedColumn
        Caption = 'Bank Account No.'
        DataBinding.FieldName = 'BNACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwBankMutationBNACCNAME: TcxGridDBBandedColumn
        Caption = 'Bank Account Name'
        DataBinding.FieldName = 'BNACCNAME'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwBankMutationCCY: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCY'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwBankMutationDC: TcxGridDBBandedColumn
        Caption = 'D / C'
        DataBinding.FieldName = 'DC'
        RepositoryItem = dmGlobal.luDebetCredit
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwBankMutationSALDOAWAL: TcxGridDBBandedColumn
        Caption = 'Begining Balance'
        DataBinding.FieldName = 'SALDOAWAL'
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwBankMutationMUTASI: TcxGridDBBandedColumn
        Caption = 'Mutation Value'
        DataBinding.FieldName = 'MUTASI'
        Width = 77
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwBankMutationSALDOAKHIR: TcxGridDBBandedColumn
        Caption = 'Ending Balance'
        DataBinding.FieldName = 'SALDOAKHIR'
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwBankMutationDESCRIPTION: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCRIPTION'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwBankMutationMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwBankMutationMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwBankMutationAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwBankMutationAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwBankMutationUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwBankMutationUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwBankMutationNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwBankMutationISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwBankMutationID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwBankMutationISGENERATED: TcxGridDBBandedColumn
        Caption = 'Mutation Created'
        DataBinding.FieldName = 'ISGENERATED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 102
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwBankMutationCMID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwBankMutationACCBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCBANKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwBankMutationACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwBankMutationACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwBankMutationACTLED_SEQID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTLED_SEQID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwBankMutation
    end
  end
  object cxGrid2: TcxGrid [2]
    Left = 0
    Top = 150
    Width = 864
    Height = 373
    Align = alBottom
    TabOrder = 2
    object cxGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsBankMutation
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid2DBTableView1MUTATIONID: TcxGridDBColumn
        DataBinding.FieldName = 'MUTATIONID'
      end
      object cxGrid2DBTableView1TRDATE: TcxGridDBColumn
        DataBinding.FieldName = 'TRDATE'
      end
      object cxGrid2DBTableView1TRDATETIME: TcxGridDBColumn
        DataBinding.FieldName = 'TRDATETIME'
      end
      object cxGrid2DBTableView1SID: TcxGridDBColumn
        DataBinding.FieldName = 'SID'
      end
      object cxGrid2DBTableView1SUBREK01: TcxGridDBColumn
        DataBinding.FieldName = 'SUBREK01'
      end
      object cxGrid2DBTableView1BNCODE: TcxGridDBColumn
        DataBinding.FieldName = 'BNCODE'
      end
      object cxGrid2DBTableView1BNACCNO: TcxGridDBColumn
        DataBinding.FieldName = 'BNACCNO'
      end
      object cxGrid2DBTableView1BNACCNAME: TcxGridDBColumn
        DataBinding.FieldName = 'BNACCNAME'
      end
      object cxGrid2DBTableView1CCY: TcxGridDBColumn
        DataBinding.FieldName = 'CCY'
      end
      object cxGrid2DBTableView1DC: TcxGridDBColumn
        DataBinding.FieldName = 'DC'
      end
      object cxGrid2DBTableView1SALDOAWAL: TcxGridDBColumn
        DataBinding.FieldName = 'SALDOAWAL'
      end
      object cxGrid2DBTableView1MUTASI: TcxGridDBColumn
        DataBinding.FieldName = 'MUTASI'
      end
      object cxGrid2DBTableView1SALDOAKHIR: TcxGridDBColumn
        DataBinding.FieldName = 'SALDOAKHIR'
      end
      object cxGrid2DBTableView1DESCRIPTION: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRIPTION'
      end
      object cxGrid2DBTableView1MODDA: TcxGridDBColumn
        DataBinding.FieldName = 'MODDA'
      end
      object cxGrid2DBTableView1MODUI: TcxGridDBColumn
        DataBinding.FieldName = 'MODUI'
      end
      object cxGrid2DBTableView1APPDA: TcxGridDBColumn
        DataBinding.FieldName = 'APPDA'
      end
      object cxGrid2DBTableView1APPUI: TcxGridDBColumn
        DataBinding.FieldName = 'APPUI'
      end
      object cxGrid2DBTableView1UNDER4Y: TcxGridDBColumn
        DataBinding.FieldName = 'UNDER4Y'
      end
      object cxGrid2DBTableView1UNDER4YDA: TcxGridDBColumn
        DataBinding.FieldName = 'UNDER4YDA'
      end
      object cxGrid2DBTableView1NOTES4Y: TcxGridDBColumn
        DataBinding.FieldName = 'NOTES4Y'
      end
      object cxGrid2DBTableView1ISDEL: TcxGridDBColumn
        DataBinding.FieldName = 'ISDEL'
      end
      object cxGrid2DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      object cxGrid2DBTableView1ISGENERATED: TcxGridDBColumn
        DataBinding.FieldName = 'ISGENERATED'
      end
      object cxGrid2DBTableView1CMID: TcxGridDBColumn
        DataBinding.FieldName = 'CMID'
      end
      object cxGrid2DBTableView1ACCBANKID: TcxGridDBColumn
        DataBinding.FieldName = 'ACCBANKID'
      end
      object cxGrid2DBTableView1ACCID: TcxGridDBColumn
        DataBinding.FieldName = 'ACCID'
      end
      object cxGrid2DBTableView1ACCCODE: TcxGridDBColumn
        DataBinding.FieldName = 'ACCCODE'
      end
      object cxGrid2DBTableView1ACTLED_SEQID: TcxGridDBColumn
        DataBinding.FieldName = 'ACTLED_SEQID'
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  inherited popDocking: TPopupMenu
    Left = 384
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclBankMutation
    Left = 280
  end
  object XLS: TXLSReadWriteII5
    ComponentVersion = '6.00.20a'
    Version = xvExcel2007
    DirectRead = False
    DirectWrite = False
    Left = 88
    Top = 176
  end
  object aclBankMutation: TActionList
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
      Caption = 'Create All Mutation'
      CheckPermission = False
    end
  end
  object ImportFilesDialog_: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Excel'
        FileMask = '*.xls'
      end>
    Options = []
    Left = 276
    Top = 111
  end
  object popGrid: TPopupMenu
    Left = 384
    Top = 112
    object CreateMutation1: TMenuItem
      Action = actCreateMutation
    end
  end
  object cdsBankMutation: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BNCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryBankMutation'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsBankMutationBeforePost
    AfterApplyUpdates = cdsBankMutationAfterApplyUpdates
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 373
    Top = 240
    object cdsBankMutationMUTATIONID: TIntegerField
      FieldName = 'MUTATIONID'
      ReadOnly = True
    end
    object cdsBankMutationTRDATE: TDateField
      FieldName = 'TRDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsBankMutationTRDATETIME: TDateTimeField
      FieldName = 'TRDATETIME'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss'
    end
    object cdsBankMutationSID: TStringField
      FieldName = 'SID'
      Size = 30
    end
    object cdsBankMutationSUBREK01: TStringField
      FieldName = 'SUBREK01'
      Size = 30
    end
    object cdsBankMutationBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsBankMutationBNACCNO: TStringField
      FieldName = 'BNACCNO'
      Required = True
      Size = 30
    end
    object cdsBankMutationBNACCNAME: TStringField
      FieldName = 'BNACCNAME'
      Size = 60
    end
    object cdsBankMutationCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsBankMutationDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsBankMutationSALDOAWAL: TFloatField
      FieldName = 'SALDOAWAL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBankMutationMUTASI: TFloatField
      FieldName = 'MUTASI'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBankMutationSALDOAKHIR: TFloatField
      FieldName = 'SALDOAKHIR'
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBankMutationDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 150
    end
    object cdsBankMutationMODDA: TDateTimeField
      FieldName = 'MODDA'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss'
    end
    object cdsBankMutationMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBankMutationAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBankMutationAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBankMutationUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBankMutationUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBankMutationNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBankMutationISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBankMutationID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBankMutationISGENERATED: TStringField
      FieldName = 'ISGENERATED'
      Size = 1
    end
    object cdsBankMutationCMID: TLargeintField
      FieldName = 'CMID'
    end
    object cdsBankMutationACCBANKID: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ACCBANKID'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'BNCODE;BANKACCNO'
      LookupResultField = 'ACCBANKID'
      KeyFields = 'BNCODE;BNACCNO'
      Lookup = True
    end
    object cdsBankMutationACCID: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ACCID'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'BNCODE;BANKACCNO'
      LookupResultField = 'ACCID'
      KeyFields = 'BNCODE;BNACCNO'
      Lookup = True
    end
    object cdsBankMutationACCCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'BNCODE;BANKACCNO'
      LookupResultField = 'ACCCODE'
      KeyFields = 'BNCODE;BNACCNO'
      Size = 30
      Lookup = True
    end
    object cdsBankMutationACTLED_SEQID: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ACTLED_SEQID'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'BNCODE;BANKACCNO'
      LookupResultField = 'ACTLED_SEQID'
      KeyFields = 'BNCODE;BNACCNO'
      Lookup = True
    end
  end
  object dsBankMutation: TDataSource
    DataSet = cdsBankMutationTmp
    Left = 376
    Top = 288
  end
  object ImportFilesDialog: TOpenDialog
    Left = 363
    Top = 162
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
  object cdsBankMutationTmp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 240
    object cdsBankMutationTmpMUTATIONID: TIntegerField
      FieldName = 'MUTATIONID'
    end
    object cdsBankMutationTmpTRDATE: TDateField
      FieldName = 'TRDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsBankMutationTmpTRDATETIME: TDateTimeField
      FieldName = 'TRDATETIME'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss'
    end
    object cdsBankMutationTmpSID: TStringField
      FieldName = 'SID'
      Size = 30
    end
    object cdsBankMutationTmpSUBREK01: TStringField
      FieldName = 'SUBREK01'
      Size = 30
    end
    object cdsBankMutationTmpBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsBankMutationTmpBNACCNO: TStringField
      FieldName = 'BNACCNO'
      Size = 30
    end
    object cdsBankMutationTmpBNACCNAME: TStringField
      FieldName = 'BNACCNAME'
      Size = 60
    end
    object cdsBankMutationTmpCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsBankMutationTmpDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsBankMutationTmpSALDOAWAL: TFloatField
      FieldName = 'SALDOAWAL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBankMutationTmpMUTASI: TFloatField
      FieldName = 'MUTASI'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBankMutationTmpSALDOAKHIR: TFloatField
      FieldName = 'SALDOAKHIR'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBankMutationTmpDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 150
    end
    object cdsBankMutationTmpMODDA: TDateTimeField
      FieldName = 'MODDA'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss'
    end
    object cdsBankMutationTmpMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBankMutationTmpAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBankMutationTmpAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBankMutationTmpUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBankMutationTmpUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBankMutationTmpNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBankMutationTmpISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBankMutationTmpID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBankMutationTmpISGENERATED: TStringField
      FieldName = 'ISGENERATED'
      Size = 1
    end
    object cdsBankMutationTmpCMID: TLargeintField
      FieldName = 'CMID'
    end
    object cdsBankMutationTmpACCBANKID: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ACCBANKID'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'BNCODE;BANKACCNO'
      LookupResultField = 'ACCBANKID'
      KeyFields = 'BNCODE;BNACCNO'
      Lookup = True
    end
    object cdsBankMutationTmpACCID: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ACCID'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'BNCODE;BANKACCNO'
      LookupResultField = 'ACCID'
      KeyFields = 'BNCODE;BNACCNO'
      Lookup = True
    end
    object cdsBankMutationTmpACCCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'BNCODE;BANKACCNO'
      LookupResultField = 'ACCCODE'
      KeyFields = 'BNCODE;BNACCNO'
      Size = 30
      Lookup = True
    end
    object cdsBankMutationTmpACTLED_SEQID: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ACTLED_SEQID'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'BNCODE;BANKACCNO'
      LookupResultField = 'ACTLED_SEQID'
      KeyFields = 'BNCODE;BNACCNO'
      Lookup = True
    end
  end
end
