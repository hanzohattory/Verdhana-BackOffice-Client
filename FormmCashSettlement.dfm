inherited frmCashSettlement: TfrmCashSettlement
  Caption = 'Cash Settlement'
  ClientHeight = 550
  ClientWidth = 877
  OnResize = FormResize
  OnShow = FormShow
  ExplicitWidth = 877
  ExplicitHeight = 550
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    Top = 105
    Width = 877
    Height = 291
    Align = alTop
    ParentFont = False
    ExplicitTop = 105
    ExplicitWidth = 877
    ExplicitHeight = 291
    inherited gvwBrowse: TcxGridDBBandedTableView
      OptionsSelection.MultiSelect = True
      OptionsSelection.InvertSelect = True
      Bands = <
        item
          Caption = 'Cash Receive'
          HeaderAlignmentHorz = taLeftJustify
        end>
      object gvwBrowseSIID: TcxGridDBBandedColumn
        Caption = 'ID'
        DataBinding.FieldName = 'SIID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBrowseSINO: TcxGridDBBandedColumn
        Caption = 'Instruction No.'
        DataBinding.FieldName = 'SINO'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBrowseTRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDDATE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBrowseDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DUEDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBrowseSITYPE: TcxGridDBBandedColumn
        Caption = 'Trans. Type'
        DataBinding.FieldName = 'SITYPE'
        Visible = False
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBrowseACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBrowseACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwBrowseACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwBrowseBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwBrowseBANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwBrowseBANKNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKNO'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwBrowseBANKNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwBrowseBANKBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKBRANCH'
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwBrowseBASE_CCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_CCYCODE'
        Visible = False
        Width = 62
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwBrowseBASE_NETAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_NETAMT'
        Visible = False
        Width = 89
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwBrowseSETTLE_CCYCODE: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'SETTLE_CCYCODE'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwBrowseTRANSFER_MODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSFER_MODE'
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwBrowseBANK_CHARGES: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANK_CHARGES'
        HeaderAlignmentHorz = taRightJustify
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwBrowseSETTLE_EXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_EXRATE'
        Visible = False
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwBrowseSETTLE_NETAMT: TcxGridDBBandedColumn
        Caption = 'Settlement Amount'
        DataBinding.FieldName = 'SETTLE_NETAMT'
        HeaderAlignmentHorz = taRightJustify
        Width = 106
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwBrowseNO_INTRC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NO_INTRC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwBrowseCASH_POS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_POS'
        HeaderAlignmentHorz = taRightJustify
        Width = 142
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwBrowseBANKACCOUNTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCOUNTID'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
    end
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView [1]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
        end>
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 26
    Width = 877
    Height = 79
    Align = alTop
    TabOrder = 5
    object txtDueDate: TcxDateEdit
      Left = 125
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 115
    end
    object btnView: TcxButton
      Left = 246
      Top = 10
      Width = 75
      Height = 25
      Caption = 'View'
      TabOrder = 1
      OnClick = btnViewClick
    end
    object chkBusCat: TcxCheckBox
      Left = 125
      Top = 41
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      OnClick = chkBusCatClick
    end
    object cbBusCat: TcxLookupComboBox
      Left = 221
      Top = 41
      RepositoryItem = dmGlobal.luBussCat
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 254
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
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Due Date'
      Control = txtDueDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 115
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
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'View'
      CaptionOptions.Visible = False
      Control = btnView
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Filter By Business Type'
      Control = chkBusCat
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcBusCat: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Business Type'
      Control = cbBusCat
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 254
      ControlOptions.ShowBorder = False
      Index = 1
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
  end
  object cxGrid2: TcxGrid [2]
    Left = 0
    Top = 396
    Width = 877
    Height = 154
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PopupMenu = popGridPayment
    TabOrder = 6
    object gvwPayment: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsBankCashPayment
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = BlueToggle
      Bands = <
        item
          Caption = 'Cash Payment'
          HeaderAlignmentHorz = taLeftJustify
        end>
      object gvwPaymentSIID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwPaymentSINO: TcxGridDBBandedColumn
        Caption = 'Instruction No.'
        DataBinding.FieldName = 'SINO'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwPaymentTRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDDATE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwPaymentDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DUEDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwPaymentSITYPE: TcxGridDBBandedColumn
        Caption = 'Trans. Type'
        DataBinding.FieldName = 'SITYPE'
        Visible = False
        Width = 61
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwPaymentACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwPaymentACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwPaymentACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwPaymentBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwPaymentBANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwPaymentBANKNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKNO'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwPaymentBANKNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwPaymentBANKBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKBRANCH'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwPaymentBASE_CCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_CCYCODE'
        Visible = False
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwPaymentBASE_NETAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_NETAMT'
        Visible = False
        Width = 89
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwPaymentSETTLE_CCYCODE: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'SETTLE_CCYCODE'
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwPaymentTRANSFER_MODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSFER_MODE'
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwPaymentBANK_CHARGES: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANK_CHARGES'
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwPaymentSETTLE_EXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_EXRATE'
        Visible = False
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwPaymentSETTLE_NETAMT: TcxGridDBBandedColumn
        Caption = 'Settlement Amount'
        DataBinding.FieldName = 'SETTLE_NETAMT'
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwPaymentNO_INTRC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NO_INTRC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwPaymentBANKACCOUNTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCOUNTID'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
    end
    object cxGridDBBandedTableView2: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
        end>
    end
    object gvwPayment2: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsBankCashReceived_D
      DataController.DetailKeyFieldNames = 'SIID'
      DataController.KeyFieldNames = 'SIID'
      DataController.MasterKeyFieldNames = 'SIID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Styles.ContentOdd = BlueToggle
      Bands = <
        item
        end>
      object gvwPayment2SIID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwPayment2LINKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwPayment2DUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DUEDATE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwPayment2BASE_CCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_CCYCODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwPayment2BASE_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_AMT'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwPayment2SETTLE_CCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_CCY'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwPayment2SETTLE_EXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_EXRATE'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwPayment2SETTLE_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_AMT'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gvwPayment
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actInsert'
      end
      item
        ActionName = 'actDelete'
      end
      item
        ActionName = 'actEdit'
      end
      item
        ActionName = 'actPost'
      end
      item
        ActionName = 'actcancel'
      end>
    AssignedPermission = <
      item
        Name = 'Cash Management Data'
        Description = 'Cash Management Data Permission'
      end>
    Left = 219
  end
  inherited aclEditor: TActionList
    Left = 87
    object actCreateCashVoucherBySI: TNAction
      Category = 'NActions'
      Caption = 'Create Cash Voucher By Settlement Instruction'
      OnExecute = actCreateCashVoucherBySIExecute
      CheckPermission = False
    end
    object actCreateCashVoucherAll: TNAction
      Category = 'NActions'
      Caption = 'Create Cash Voucher All'
      OnExecute = actCreateCashVoucherAllExecute
      CheckPermission = False
    end
    object actCreateCashVoucherGroup: TNAction
      Category = 'NActions'
      Caption = 'Create Cash Voucher Group'
      OnExecute = actCreateCashVoucherGroupExecute
      CheckPermission = False
    end
    object actCreateCashVoucherBySI2: TNAction
      Category = 'NActions'
      Caption = 'Create Cash Voucher By Settlement Instruction'
      OnExecute = actCreateCashVoucherBySI2Execute
      CheckPermission = False
    end
    object actCreateCashVoucherAll2: TNAction
      Category = 'NActions'
      Caption = 'Create Cash Voucher All'
      OnExecute = actCreateCashVoucherAll2Execute
      CheckPermission = False
    end
    object actCreateCashVoucherGroup2: TNAction
      Category = 'NActions'
      Caption = 'Create Cash Voucher Group'
      OnExecute = actCreateCashVoucherGroup2Execute
      CheckPermission = False
    end
  end
  inherited popGrid: TPopupMenu
    object N5: TMenuItem
      Caption = '-'
    end
    object CreateVoucher1: TMenuItem
      Caption = 'Create Voucher'
      object CreateCashVoucherBySettlementInstruction1: TMenuItem
        Action = actCreateCashVoucherBySI
      end
      object CreateCashVoucherAll1: TMenuItem
        Action = actCreateCashVoucherAll
      end
    end
  end
  inherited DatasetContainer: TNSimpleContainer
    Dataset = cdsBankCashReceived
  end
  inherited dsBrowse: TDataSource
    DataSet = cdsBankCashReceived
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
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  object cdsBankCashReceived: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILTERBYBUSCAT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BUS_CAT'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryBankCashReceive'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 480
    Top = 174
    object cdsBankCashReceivedSIID: TLargeintField
      FieldName = 'SIID'
    end
    object cdsBankCashReceivedSINO: TStringField
      DisplayLabel = 'Settlement Instruction'
      FieldName = 'SINO'
    end
    object cdsBankCashReceivedTRDDATE: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBankCashReceivedDUEDATE: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBankCashReceivedSITYPE: TStringField
      DisplayLabel = 'Settle Type'
      FieldName = 'SITYPE'
      Size = 2
    end
    object cdsBankCashReceivedACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsBankCashReceivedACCNO: TStringField
      DisplayLabel = 'Account No.'
      FieldName = 'ACCNO'
    end
    object cdsBankCashReceivedACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsBankCashReceivedBANKID: TIntegerField
      FieldName = 'BANKID'
    end
    object cdsBankCashReceivedBANKCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BANKCODE'
      Size = 10
    end
    object cdsBankCashReceivedBANKNO: TStringField
      DisplayLabel = 'Bank No.'
      FieldName = 'BANKNO'
    end
    object cdsBankCashReceivedBANKNAME: TStringField
      DisplayLabel = 'Bank Name'
      FieldName = 'BANKNAME'
      Size = 100
    end
    object cdsBankCashReceivedBANKBRANCH: TStringField
      DisplayLabel = 'Bank Branch'
      FieldName = 'BANKBRANCH'
    end
    object cdsBankCashReceivedBASE_CCYCODE: TStringField
      DisplayLabel = 'Base CCY'
      FieldName = 'BASE_CCYCODE'
      Size = 5
    end
    object cdsBankCashReceivedBASE_NETAMT: TFloatField
      DisplayLabel = 'Base Net Amount'
      FieldName = 'BASE_NETAMT'
      DisplayFormat = '#,##0'
    end
    object cdsBankCashReceivedSETTLE_CCYCODE: TStringField
      DisplayLabel = 'Settle CCY'
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsBankCashReceivedTRANSFER_MODE: TStringField
      DisplayLabel = 'Transfer Mode'
      FieldName = 'TRANSFER_MODE'
      Size = 10
    end
    object cdsBankCashReceivedBANK_CHARGES: TFloatField
      DisplayLabel = 'Bank Charges'
      FieldName = 'BANK_CHARGES'
      DisplayFormat = '#,##0'
    end
    object cdsBankCashReceivedSETTLE_EXRATE: TFloatField
      DisplayLabel = 'Settle ExRate'
      FieldName = 'SETTLE_EXRATE'
      DisplayFormat = '#,##0.00'
    end
    object cdsBankCashReceivedSETTLE_NETAMT: TFloatField
      DisplayLabel = 'Settle Net Amount'
      FieldName = 'SETTLE_NETAMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsBankCashReceivedNO_INTRC: TStringField
      FieldName = 'NO_INTRC'
      Size = 1
    end
    object cdsBankCashReceivedCASH_POS: TFloatField
      DisplayLabel = 'Cash Position'
      FieldName = 'CASH_POS'
      DisplayFormat = '#,##0'
    end
    object cdsBankCashReceivedBANKACCOUNTID: TIntegerField
      FieldName = 'BANKACCOUNTID'
    end
  end
  object cdsBankCashReceived_D: TNClientDataset
    Aggregates = <>
    IndexFieldNames = 'SIID'
    Params = <>
    ProviderName = 'dspN_dmCashManagement_cdsBankCashPayment_D'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 198
    Top = 438
    object cdsBankCashReceived_DSIID: TLargeintField
      FieldName = 'SIID'
    end
    object cdsBankCashReceived_DLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsBankCashReceived_DDUEDATE: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBankCashReceived_DBASE_CCYCODE: TStringField
      DisplayLabel = 'Base CCY'
      FieldName = 'BASE_CCYCODE'
      Size = 5
    end
    object cdsBankCashReceived_DBASE_AMT: TFloatField
      DisplayLabel = 'Base Amount'
      FieldName = 'BASE_AMT'
      DisplayFormat = '#,##0'
    end
    object cdsBankCashReceived_DSETTLE_CCY: TStringField
      DisplayLabel = 'Settle CCY'
      FieldName = 'SETTLE_CCY'
      Size = 5
    end
    object cdsBankCashReceived_DSETTLE_EXRATE: TFloatField
      DisplayLabel = 'Settle  ExRate'
      FieldName = 'SETTLE_EXRATE'
      DisplayFormat = '#,##0.00'
    end
    object cdsBankCashReceived_DSETTLE_AMT: TFloatField
      DisplayLabel = 'Settle Amount'
      FieldName = 'SETTLE_AMT'
      DisplayFormat = '#,##0'
    end
  end
  object dsBankCashReceived_D: TDataSource
    DataSet = cdsBankCashReceived_D
    Left = 198
    Top = 483
  end
  object dsBankCashPayment: TDataSource
    DataSet = cdsBankCashPayment
    Left = 586
    Top = 462
  end
  object cdsBankCashPayment: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FILTERBYBUSCAT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BUS_CAT'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryBankCashPayment'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 432
    Top = 462
    object cdsBankCashPaymentSIID: TLargeintField
      FieldName = 'SIID'
    end
    object cdsBankCashPaymentSINO: TStringField
      FieldName = 'SINO'
    end
    object cdsBankCashPaymentTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsBankCashPaymentDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object cdsBankCashPaymentSITYPE: TStringField
      FieldName = 'SITYPE'
      Size = 2
    end
    object cdsBankCashPaymentACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsBankCashPaymentACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsBankCashPaymentACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsBankCashPaymentBANKID: TIntegerField
      FieldName = 'BANKID'
    end
    object cdsBankCashPaymentBANKCODE: TStringField
      FieldName = 'BANKCODE'
      Size = 10
    end
    object cdsBankCashPaymentBANKNO: TStringField
      FieldName = 'BANKNO'
    end
    object cdsBankCashPaymentBANKNAME: TStringField
      FieldName = 'BANKNAME'
      Size = 100
    end
    object cdsBankCashPaymentBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
    end
    object cdsBankCashPaymentBASE_CCYCODE: TStringField
      FieldName = 'BASE_CCYCODE'
      Size = 5
    end
    object cdsBankCashPaymentBASE_NETAMT: TFloatField
      FieldName = 'BASE_NETAMT'
    end
    object cdsBankCashPaymentSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsBankCashPaymentTRANSFER_MODE: TStringField
      FieldName = 'TRANSFER_MODE'
      Size = 10
    end
    object cdsBankCashPaymentBANK_CHARGES: TFloatField
      FieldName = 'BANK_CHARGES'
    end
    object cdsBankCashPaymentSETTLE_EXRATE: TFloatField
      FieldName = 'SETTLE_EXRATE'
    end
    object cdsBankCashPaymentSETTLE_NETAMT: TFloatField
      FieldName = 'SETTLE_NETAMT'
    end
    object cdsBankCashPaymentNO_INTRC: TStringField
      FieldName = 'NO_INTRC'
      Size = 1
    end
    object cdsBankCashPaymentBANKACCOUNTID: TIntegerField
      FieldName = 'BANKACCOUNTID'
    end
  end
  object popGridPayment: TPopupMenu
    AutoLineReduction = maManual
    Images = imlBrowse
    OwnerDraw = True
    Left = 696
    Top = 462
    object CreateVoucher2: TMenuItem
      Caption = 'Create Voucher'
      object CreateCashVoucherBySettlementInstruction2: TMenuItem
        Action = actCreateCashVoucherBySI2
      end
      object CreateCashVoucherAll2: TMenuItem
        Action = actCreateCashVoucherAll2
      end
    end
  end
  object cdsAccSaveKeep: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccSaveKeep'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 480
    Top = 228
    object cdsAccSaveKeepACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccSaveKeepSAVEKEEP: TIntegerField
      FieldName = 'SAVEKEEP'
      ReadOnly = True
      Required = True
    end
  end
end
