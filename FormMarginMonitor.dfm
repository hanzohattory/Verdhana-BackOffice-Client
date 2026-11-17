inherited frmMarginMonitor: TfrmMarginMonitor
  Caption = 'Margin Monitoring'
  ClientHeight = 627
  ClientWidth = 1023
  ExplicitWidth = 1023
  ExplicitHeight = 627
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 1023
    Height = 50
    Align = alTop
    BevelKind = bkTile
    TabOrder = 0
    object txtTransDate: TcxTextEdit
      Left = 76
      Top = 10
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Text = 'txtTransDate'
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 203
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Refresh'
      TabOrder = 1
      OnClick = cxButton1Click
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
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'System Date'
      Control = txtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Refresh'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object grdMaster: TcxGrid [1]
    Left = 0
    Top = 50
    Width = 1023
    Height = 577
    Align = alClient
    PopupMenu = popMargin
    TabOrder = 1
    object gvwMaster: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCustomDrawCell = gvwMasterCustomDrawCell
      DataController.DataSource = dsMarginMonitor
      DataController.Filter.Options = [fcoCaseInsensitive]
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
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentEven = dmGlobal.BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwMasterACCNO: TcxGridDBBandedColumn
        Caption = 'A/C Number'
        DataBinding.FieldName = 'ACCNO'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'A/C Name'
        DataBinding.FieldName = 'ACCNAME'
        Options.Editing = False
        Width = 264
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCASH_ONHAND: TcxGridDBBandedColumn
        Caption = 'Cash On Hand'
        DataBinding.FieldName = 'CASH_ONHAND'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 144
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterARAMT: TcxGridDBBandedColumn
        Caption = 'AR'
        DataBinding.FieldName = 'ARAMT'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 105
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterAPAMT: TcxGridDBBandedColumn
        Caption = 'AP'
        DataBinding.FieldName = 'APAMT'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 125
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterBUY_AMT: TcxGridDBBandedColumn
        Caption = 'TDay Buy'
        DataBinding.FieldName = 'BUY_AMT'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 141
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterSELL_AMT: TcxGridDBBandedColumn
        Caption = 'TDay Sell'
        DataBinding.FieldName = 'SELL_AMT'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 123
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterCASH_OUTS: TcxGridDBBandedColumn
        Caption = 'Cash Outstanding'
        DataBinding.FieldName = 'CASH_OUTS'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 159
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCOLLATERAL: TcxGridDBBandedColumn
        Caption = 'Collateral'
        DataBinding.FieldName = 'COLLATERAL'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 158
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterMKTVALUE: TcxGridDBBandedColumn
        Caption = 'Market Value'
        DataBinding.FieldName = 'MKTVALUE'
        Visible = False
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterASSETVALUE: TcxGridDBBandedColumn
        Caption = 'Asset Value'
        DataBinding.FieldName = 'ASSETVALUE'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterPL: TcxGridDBBandedColumn
        Caption = 'Profit && Lost'
        DataBinding.FieldName = 'PL'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 131
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterMCALLDAY: TcxGridDBBandedColumn
        Caption = 'M-Call Age'
        DataBinding.FieldName = 'MCALLDAY'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 114
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterRATIO_MRGCALL: TcxGridDBBandedColumn
        Caption = 'M-Call Ratio'
        DataBinding.FieldName = 'RATIO_MRGCALL'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 105
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterRATIO_FORCESELL: TcxGridDBBandedColumn
        Caption = 'Force Sell Ratio'
        DataBinding.FieldName = 'RATIO_FORCESELL'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 108
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterRATIO_MRGWARING: TcxGridDBBandedColumn
        Caption = 'M-Warning Ratio'
        DataBinding.FieldName = 'RATIO_MRGWARING'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 122
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterCASHASSET: TcxGridDBBandedColumn
        Caption = 'Cash Asset'
        DataBinding.FieldName = 'CASHASSET'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 147
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterBUYINGPOWER: TcxGridDBBandedColumn
        Caption = 'Trading  Line'
        DataBinding.FieldName = 'BUYINGPOWER'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 136
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterRATIO: TcxGridDBBandedColumn
        Caption = 'Current Ratio'
        DataBinding.FieldName = 'RATIO'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 107
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterACCRUED_INTEREST: TcxGridDBBandedColumn
        Caption = 'Accrued Interest'
        DataBinding.FieldName = 'ACCRUED_INTEREST'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterSTOCK_SHORTFALL: TcxGridDBBandedColumn
        Caption = 'Share Shortfall'
        DataBinding.FieldName = 'STOCK_SHORTFALL'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 141
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterCASH_SHORTFALL: TcxGridDBBandedColumn
        Caption = 'Cash Shortfall'
        DataBinding.FieldName = 'CASH_SHORTFALL'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 115
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterCASH_DRAWDOWN: TcxGridDBBandedColumn
        Caption = 'Cash Drawdown'
        DataBinding.FieldName = 'CASH_DRAWDOWN'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 140
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterSTOCK_DRAWDOWN: TcxGridDBBandedColumn
        Caption = 'Share Drawdown'
        DataBinding.FieldName = 'STOCK_DRAWDOWN'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 154
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterACCINIT: TcxGridDBBandedColumn
        Caption = 'Acc Init'
        DataBinding.FieldName = 'ACCINIT'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterTOPUP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOPUP'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterACCTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCTYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterACCTYPEDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCTYPEDESC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterPRDCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRDCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterPRDDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRDDESC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterACC_STS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACC_STS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterEMAILID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EMAILID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterSENDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SENDID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterLASTSENDMAIL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LASTSENDMAIL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwMasterMRG_STATUS: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'MRG_STATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Force Sell'
            ImageIndex = 0
            Value = 'FC'
          end
          item
            Description = 'Margin Call'
            Value = 'MC'
          end>
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterCASH_QQ: TcxGridDBBandedColumn
        Caption = 'Cash QQ'
        DataBinding.FieldName = 'CASH_QQ'
        HeaderAlignmentHorz = taRightJustify
        Width = 151
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  inherited popDocking: TPopupMenu
    Left = 392
    Top = 104
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclLocal
    Top = 104
  end
  object cdsMarginMonitor: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'TRDATE'
        ParamType = ptInput
        Value = 43010d
      end>
    ProviderName = 'dspN_dmMargin_qryMarginMonitor'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsMarginMonitorCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 392
    Top = 152
    object cdsMarginMonitorACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsMarginMonitorACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsMarginMonitorCASH_ONHAND: TFloatField
      FieldName = 'CASH_ONHAND'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginMonitorARAMT: TFloatField
      FieldName = 'ARAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginMonitorAPAMT: TFloatField
      FieldName = 'APAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginMonitorBUY_AMT: TFloatField
      FieldName = 'BUY_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginMonitorSELL_AMT: TFloatField
      FieldName = 'SELL_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginMonitorCASH_OUTS: TFloatField
      FieldName = 'CASH_OUTS'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginMonitorCOLLATERAL: TFloatField
      FieldName = 'COLLATERAL'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginMonitorMKTVALUE: TFloatField
      FieldName = 'MKTVALUE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginMonitorASSETVALUE: TFloatField
      FieldName = 'ASSETVALUE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginMonitorPL: TFloatField
      FieldName = 'PL'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginMonitorMCALLDAY: TIntegerField
      FieldName = 'MCALLDAY'
      DisplayFormat = '#,##0'
    end
    object cdsMarginMonitorRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginMonitorRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginMonitorRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginMonitorCASHASSET: TFloatField
      FieldName = 'CASHASSET'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginMonitorBUYINGPOWER: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BUYINGPOWER'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsMarginMonitorRATIO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RATIO'
      DisplayFormat = '#,##0.0000;(#,##0.0000);-'
      Calculated = True
    end
    object cdsMarginMonitorTOPUP: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOPUP'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsMarginMonitorACCRUED_INTEREST: TFloatField
      FieldName = 'ACCRUED_INTEREST'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginMonitorSTOCK_SHORTFALL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'STOCK_SHORTFALL'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsMarginMonitorCASH_SHORTFALL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CASH_SHORTFALL'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsMarginMonitorCASH_DRAWDOWN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CASH_DRAWDOWN'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsMarginMonitorSTOCK_DRAWDOWN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'STOCK_DRAWDOWN'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsMarginMonitorACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsMarginMonitorACCTYPEDESC: TStringField
      FieldName = 'ACCTYPEDESC'
      Size = 30
    end
    object cdsMarginMonitorPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsMarginMonitorPRDDESC: TStringField
      FieldName = 'PRDDESC'
      Size = 50
    end
    object cdsMarginMonitorACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsMarginMonitorACC_STS: TStringField
      FieldName = 'ACC_STS'
      Size = 1
    end
    object cdsMarginMonitorEMAILID: TLargeintField
      FieldName = 'EMAILID'
    end
    object cdsMarginMonitorSENDID: TLargeintField
      FieldName = 'SENDID'
    end
    object cdsMarginMonitorLASTSENDMAIL: TDateField
      FieldName = 'LASTSENDMAIL'
    end
    object cdsMarginMonitorACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsMarginMonitorMRG_STATUS: TStringField
      FieldName = 'MRG_STATUS'
      Size = 2
    end
    object cdsMarginMonitorCASH_QQ: TFloatField
      FieldName = 'CASH_QQ'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
  end
  object dsMarginMonitor: TDataSource
    DataSet = cdsMarginMonitor
    Left = 392
    Top = 200
  end
  object aclLocal: TActionList
    Left = 296
    Top = 152
    object actViewDetail: TAction
      Caption = 'View Detail'
      OnExecute = actViewDetailExecute
    end
    object actProcessAllMarginCall: TNAction
      Category = 'NActions'
      Caption = 'Process All Margin Call Letter'
      OnExecute = actProcessAllMarginCallExecute
      CheckPermission = False
    end
    object actSendEmail: TNAction
      Category = 'NActions'
      Caption = 'Send Margin Call Letter By Email'
      OnExecute = actSendEmailExecute
      OnUpdate = actSendEmailUpdate
      CheckPermission = False
    end
    object actViewSendMail: TNAction
      Category = 'NActions'
      Caption = 'View Send Mail Margin Call Letter'
      OnExecute = actViewSendMailExecute
      OnUpdate = actViewSendMailUpdate
      CheckPermission = False
    end
    object ActGenerateMCalNotification: TNAction
      Category = 'NActions'
      Caption = 'Calculate MCall Status'
      OnExecute = ActGenerateMCalNotificationExecute
      CheckPermission = False
    end
    object actSaveGridToExcel: TNAction
      Category = 'NActions'
      Caption = 'Save Grid to Excel'
      OnExecute = actSaveGridToExcelExecute
      CheckPermission = False
    end
    object actGenerateMCall: TNAction
      Category = 'NActions'
      Caption = 'Generate Margin Call Notification'
      OnExecute = actGenerateMCallExecute
      CheckPermission = False
    end
  end
  object popMargin: TPopupMenu
    Left = 296
    Top = 248
    object ViewDetail1: TMenuItem
      Action = actViewDetail
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CalculateMCallStatus1: TMenuItem
      Action = actGenerateMCall
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SaveGridtoExcel1: TMenuItem
      Action = actSaveGridToExcel
    end
  end
  object SaveDlg: TSaveDialog
    DefaultExt = '.xlsx'
    Filter = 'Excel File|*.xlsx'
    Left = 296
    Top = 200
  end
end
