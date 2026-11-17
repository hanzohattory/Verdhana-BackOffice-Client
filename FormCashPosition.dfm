inherited frmCashPosition: TfrmCashPosition
  Caption = 'Cash Position'
  ClientHeight = 574
  ClientWidth = 973
  ExplicitWidth = 973
  ExplicitHeight = 574
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 973
    Height = 129
    Align = alTop
    TabOrder = 0
    object dtTransDate: TcxDateEdit
      Left = 78
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
    object chkAccount: TcxCheckBox
      Left = 10
      Top = 41
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '0'
      Properties.ValueUnchecked = '1'
      Properties.OnChange = chkAccountPropertiesChange
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
    end
    object chkBranch: TcxCheckBox
      Left = 10
      Top = 68
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '0'
      Properties.ValueUnchecked = '1'
      Properties.OnChange = chkBranchPropertiesChange
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
    end
    object chkSales: TcxCheckBox
      Left = 10
      Top = 95
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '0'
      Properties.ValueUnchecked = '1'
      Properties.OnChange = chkSalesPropertiesChange
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
    end
    object edAccCode: TcxButtonEdit
      Left = 105
      Top = 41
      AutoSize = False
      Enabled = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edAccCodePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Height = 21
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 204
      Top = 10
      Width = 75
      Height = 25
      Action = actViewList
      TabOrder = 1
    end
    object edAccName: TcxTextEdit
      Left = 232
      Top = 41
      TabStop = False
      AutoSize = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Height = 21
      Width = 330
    end
    object edBranch: TcxLookupComboBox
      Left = 105
      Top = 68
      RepositoryItem = dmGlobal.luBranch
      AutoSize = False
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Height = 21
      Width = 145
    end
    object edSales: TcxLookupComboBox
      Left = 105
      Top = 95
      RepositoryItem = dmGlobal.luSales
      AutoSize = False
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Height = 21
      Width = 145
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
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Balance Date'
      Control = dtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkAccount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCheckBox2'
      CaptionOptions.Visible = False
      Control = chkBranch
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxCheckBox3'
      CaptionOptions.Visible = False
      Control = chkSales
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Account Code'
      Control = edAccCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Control = edAccName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 330
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Branch'
      Control = edBranch
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Sales'
      Control = edSales
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 3
    end
  end
  object grdMaster: TcxGrid [1]
    Left = 0
    Top = 129
    Width = 973
    Height = 445
    Align = alClient
    TabOrder = 1
    object gvwMaster: TcxGridDBBandedTableView
      PopupMenu = popMaster
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsCashPosition
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwMasterACCID: TcxGridDBBandedColumn
        Caption = 'Account ID'
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCNO'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterCCY: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCY'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterCashOnHand: TcxGridDBBandedColumn
        Caption = 'Cash On Hand'
        DataBinding.FieldName = 'CashOnHand'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCashOnHold: TcxGridDBBandedColumn
        Caption = 'Cash On Hold'
        DataBinding.FieldName = 'CashOnHold'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterARAmt: TcxGridDBBandedColumn
        Caption = 'AR Amount'
        DataBinding.FieldName = 'ARAmt'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterApAmt: TcxGridDBBandedColumn
        Caption = 'AP Amount'
        DataBinding.FieldName = 'ApAmt'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterNetARAP: TcxGridDBBandedColumn
        Caption = 'Net ARAP'
        DataBinding.FieldName = 'NetARAP'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterCashPosition: TcxGridDBBandedColumn
        Caption = 'Cash Position'
        DataBinding.FieldName = 'CashPosition'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterBranchID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BranchID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterBranchCode: TcxGridDBBandedColumn
        Caption = 'Branch Code'
        DataBinding.FieldName = 'BranchCode'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterBranchName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BranchName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSalesID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SalesID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterSalesCode: TcxGridDBBandedColumn
        Caption = 'Sales Code'
        DataBinding.FieldName = 'SalesCode'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSalesName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SalesName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterAccInit: TcxGridDBBandedColumn
        Caption = 'Account Init'
        DataBinding.FieldName = 'AccInit'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterCASH_QQ: TcxGridDBBandedColumn
        Caption = 'Cash QQ'
        DataBinding.FieldName = 'CASH_QQ'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterACCRUED_INTEREST: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCRUED_INTEREST'
        Width = 279
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterSAVEKEEP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SAVEKEEP'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterBuyAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BuyAmount'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterAvCashAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AvCashAmount'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterCASHOUTS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASHOUTS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterCASH_SUBACC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_SUBACC'
        Width = 106
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterBankCode: TcxGridDBBandedColumn
        Caption = 'Bank Code'
        DataBinding.FieldName = 'BankCode'
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterBankName: TcxGridDBBandedColumn
        Caption = 'Bank Name'
        DataBinding.FieldName = 'BankName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterBankAccountNo: TcxGridDBBandedColumn
        Caption = 'Bank Account No'
        DataBinding.FieldName = 'BankAccountNo'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterBankAccountName: TcxGridDBBandedColumn
        Caption = 'Bank Account Name'
        DataBinding.FieldName = 'BankAccountName'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  inherited popDocking: TPopupMenu
    Left = 208
    Top = 288
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclCashPosition
    Left = 208
    Top = 240
  end
  object aclCashPosition: TActionList
    Left = 296
    Top = 240
    object actViewList: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewListExecute
      CheckPermission = False
    end
    object actSaveGridExcel: TNAction
      Category = 'NActions'
      Caption = 'Save Grid to Excel'
      OnExecute = actSaveGridExcelExecute
      CheckPermission = False
    end
  end
  object cdsCashPosition: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'tradedate'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'chk_accid'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'accid'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'chk_branch'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'branch_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'chk_sales'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'sales_id'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashPositionList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 296
    Top = 288
    object cdsCashPositionBranchID: TIntegerField
      FieldName = 'BranchID'
    end
    object cdsCashPositionBranchCode: TStringField
      FieldName = 'BranchCode'
    end
    object cdsCashPositionBranchName: TStringField
      FieldName = 'BranchName'
      Size = 150
    end
    object cdsCashPositionSalesID: TIntegerField
      FieldName = 'SalesID'
    end
    object cdsCashPositionSalesCode: TStringField
      FieldName = 'SalesCode'
    end
    object cdsCashPositionSalesName: TStringField
      FieldName = 'SalesName'
      Size = 150
    end
    object cdsCashPositionACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCashPositionACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCashPositionACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCashPositionAccInit: TStringField
      FieldName = 'AccInit'
      Size = 30
    end
    object cdsCashPositionCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCashPositionCashOnHand: TFloatField
      FieldName = 'CashOnHand'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashPositionCashOnHold: TFloatField
      FieldName = 'CashOnHold'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashPositionARAmt: TFloatField
      FieldName = 'ARAmt'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashPositionApAmt: TFloatField
      FieldName = 'ApAmt'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashPositionNetARAP: TFloatField
      FieldName = 'NetARAP'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashPositionCashPosition: TFloatField
      FieldName = 'CashPosition'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashPositionCASH_QQ: TFloatField
      FieldName = 'CASH_QQ'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashPositionSAVEKEEP: TStringField
      FieldName = 'SAVEKEEP'
      Size = 1
    end
    object cdsCashPositionBuyAmount: TFloatField
      FieldName = 'BuyAmount'
    end
    object cdsCashPositionAvCashAmount: TFloatField
      FieldName = 'AvCashAmount'
    end
    object cdsCashPositionCASHOUTS: TFloatField
      FieldName = 'CASHOUTS'
    end
    object cdsCashPositionCASH_SUBACC: TFloatField
      DisplayLabel = 'Sub Account Amount'
      FieldName = 'CASH_SUBACC'
      DisplayFormat = '#,##0.##;(#,##0.##);0'
    end
    object cdsCashPositionACCRUED_INTEREST: TFloatField
      DisplayLabel = 'Accrued Interest'
      FieldName = 'ACCRUED_INTEREST'
    end
    object cdsCashPositionBankCode: TStringField
      FieldName = 'BankCode'
      Size = 10
    end
    object cdsCashPositionBankName: TStringField
      FieldName = 'BankName'
      Size = 150
    end
    object cdsCashPositionBankAccountNo: TStringField
      FieldName = 'BankAccountNo'
    end
    object cdsCashPositionBankAccountName: TStringField
      FieldName = 'BankAccountName'
      Size = 200
    end
  end
  object dsCashPosition: TDataSource
    DataSet = cdsCashPosition
    Left = 296
    Top = 336
  end
  object popMaster: TPopupMenu
    OwnerDraw = True
    Left = 208
    Top = 336
    object SaveGridtoExcel1: TMenuItem
      Action = actSaveGridExcel
    end
  end
  object SaveDlg: TSaveDialog
    DefaultExt = '.xlsx'
    Filter = 'Excel File|*.xlsx'
    Left = 208
    Top = 384
  end
end
