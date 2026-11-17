inherited frmRepoSettlement: TfrmRepoSettlement
  Caption = 'Repo Settlement'
  ClientHeight = 508
  ClientWidth = 835
  ExplicitLeft = -69
  ExplicitTop = -56
  ExplicitWidth = 835
  ExplicitHeight = 508
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 835
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
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Text = 'System Date'
      Parent = dxLayoutGroup1
      Control = txtTransDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Refresh'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object grdMaster: TcxGrid [1]
    Left = 0
    Top = 50
    Width = 835
    Height = 458
    Align = alClient
    TabOrder = 1
    object gvwREPOMOnitor: TcxGridDBBandedTableView
      PopupMenu = popGrid
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsREPOMonitor
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwREPOMOnitorCONTRACT_NO: TcxGridDBBandedColumn
        Caption = 'Contract No'
        DataBinding.FieldName = 'CONTRACT_NO'
        Options.Editing = False
        Width = 125
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorTRXDATE: TcxGridDBBandedColumn
        Caption = 'Trans Date'
        DataBinding.FieldName = 'TRXDATE'
        Options.Editing = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorMATURDATE: TcxGridDBBandedColumn
        Caption = 'Maturity Date'
        DataBinding.FieldName = 'MATURDATE'
        Options.Editing = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorRACCCODE: TcxGridDBBandedColumn
        Caption = 'A/C Number'
        DataBinding.FieldName = 'RACCCODE'
        Options.Editing = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorREPO_AMT: TcxGridDBBandedColumn
        Caption = 'REPO Amount'
        DataBinding.FieldName = 'REPO_AMT'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorACCNAME: TcxGridDBBandedColumn
        Caption = 'A/C Name'
        DataBinding.FieldName = 'ACCNAME'
        Options.Editing = False
        Width = 265
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorCOLLATERAL: TcxGridDBBandedColumn
        Caption = 'Collateral'
        DataBinding.FieldName = 'COLLATERAL'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorCOLL_CALL: TcxGridDBBandedColumn
        Caption = 'REPO Call'
        DataBinding.FieldName = 'COLL_CALL'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorFORCESELL: TcxGridDBBandedColumn
        Caption = 'Force Sell'
        DataBinding.FieldName = 'FORCESELL'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorACCRUED_INTEREST: TcxGridDBBandedColumn
        Caption = 'Accrued Interest'
        DataBinding.FieldName = 'ACCRUED_INTEREST'
        Visible = False
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 92
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorRATIO: TcxGridDBBandedColumn
        Caption = 'Current Ratio'
        DataBinding.FieldName = 'RATIO'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorRACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorAPR_COLL: TcxGridDBBandedColumn
        Caption = 'Initial Ratio'
        DataBinding.FieldName = 'APR_COLL'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorCONRID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONRID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorCCY: TcxGridDBBandedColumn
        Caption = 'Ccy'
        DataBinding.FieldName = 'CCY'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorCASH_QQ: TcxGridDBBandedColumn
        Caption = 'Cash QQ'
        DataBinding.FieldName = 'CASH_QQ'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorORG_AMT: TcxGridDBBandedColumn
        Caption = 'Original Amount'
        DataBinding.FieldName = 'ORG_AMT'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorINTEREST_AMT: TcxGridDBBandedColumn
        Caption = 'Interest Amount'
        DataBinding.FieldName = 'INTEREST_AMT'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwREPOMOnitorDUE_AMT: TcxGridDBBandedColumn
        Caption = 'Due Amount'
        DataBinding.FieldName = 'DUE_AMT'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwREPOMOnitor
    end
  end
  inherited popDocking: TPopupMenu
    Left = 264
    Top = 184
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclLocal
    Left = 264
    Top = 136
  end
  object aclLocal: TActionList
    Left = 352
    Top = 136
    object actViewDetail: TAction
      Category = 'NActions'
      Caption = 'View Detail'
      OnExecute = actViewDetailExecute
    end
    object actSaveGridToExcel: TNAction
      Category = 'NActions'
      Caption = 'Save Grid to Excel'
      OnExecute = actSaveGridToExcelExecute
      CheckPermission = False
    end
    object actSettleContract: TNAction
      Category = 'NActions'
      Caption = 'Settle Contract'
      OnExecute = actSettleContractExecute
      CheckPermission = False
    end
  end
  object cdsREPOMonitor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmREPO_qryREPOSettlement'
    RemoteServer = dmGlobal.dspConnection
    Left = 352
    Top = 232
    object cdsREPOMonitorCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsREPOMonitorCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsREPOMonitorTRXDATE: TDateTimeField
      FieldName = 'TRXDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsREPOMonitorMATURDATE: TDateTimeField
      FieldName = 'MATURDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsREPOMonitorRACCID: TIntegerField
      FieldName = 'RACCID'
    end
    object cdsREPOMonitorRACCCODE: TStringField
      FieldName = 'RACCCODE'
      Size = 30
    end
    object cdsREPOMonitorREPO_AMT: TFloatField
      FieldName = 'REPO_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsREPOMonitorACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsREPOMonitorCOLLATERAL: TFloatField
      FieldName = 'COLLATERAL'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object cdsREPOMonitorCOLL_CALL: TFloatField
      FieldName = 'COLL_CALL'
      DisplayFormat = '#,##0 %'
    end
    object cdsREPOMonitorFORCESELL: TFloatField
      FieldName = 'FORCESELL'
      DisplayFormat = '#,##0 %'
    end
    object cdsREPOMonitorACCRUED_INTEREST: TFloatField
      FieldName = 'ACCRUED_INTEREST'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object cdsREPOMonitorRATIO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RATIO'
      DisplayFormat = '#,##0 %'
      Calculated = True
    end
    object cdsREPOMonitorAPR_COLL: TFloatField
      FieldName = 'APR_COLL'
      Required = True
      DisplayFormat = '#,##0 %'
    end
    object cdsREPOMonitorCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsREPOMonitorCASH_QQ: TFloatField
      FieldName = 'CASH_QQ'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object cdsREPOMonitorORG_AMT: TFloatField
      FieldName = 'ORG_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsREPOMonitorINTEREST_AMT: TFloatField
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsREPOMonitorDUE_AMT: TFloatField
      FieldName = 'DUE_AMT'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsREPOMonitor: TDataSource
    DataSet = cdsREPOMonitor
    Left = 264
    Top = 232
  end
  object popGrid: TPopupMenu
    Left = 352
    Top = 184
    object ViewDetail1: TMenuItem
      Action = actViewDetail
    end
    object CloseContract1: TMenuItem
      Action = actSettleContract
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object SaveGridtoExcel1: TMenuItem
      Action = actSaveGridToExcel
    end
  end
  object SaveDlg: TSaveDialog
    DefaultExt = '.xlsx'
    Filter = 'Excel File|*.xlsx'
    Left = 264
    Top = 280
  end
end
