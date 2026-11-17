inherited frmPortfolioRevaluationList: TfrmPortfolioRevaluationList
  Caption = 'Portfolio Revaluation'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 71
    Width = 472
    Height = 397
    ExplicitTop = 71
    ExplicitWidth = 472
    ExplicitHeight = 397
    inherited gvwMaster: TcxGridDBBandedTableView
      OnKeyPress = gvwMasterKeyPress
      OnCellClick = gvwMasterCellClick
      object gvwMasterPMID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PMID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterPMCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PMCODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRYDATE'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterPM_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PM_DATE'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterTOTAL_AVGSTOCK_VALUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL_AVGSTOCK_VALUE'
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterTOTAL_MARKET_VALUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL_MARKET_VALUE'
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterTOTAL_UNREAL_VALUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL_UNREAL_VALUE'
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED'
        Width = 39
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_UI'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterLAST_JOURNALNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LAST_JOURNALNO'
        Width = 116
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED'
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_UI'
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterLAST_REV_JOURNALNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LAST_REV_JOURNALNO'
        Width = 129
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_DATE'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_DATE'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 26
    Width = 921
    Height = 45
    Align = alTop
    TabOrder = 5
    object dtValue: TcxDateEdit
      Left = 67
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 118
    end
    object cbInstrumentType: TcxLookupComboBox
      Left = 276
      Top = 10
      RepositoryItem = dmGlobal.luInstrumentGroupType
      AutoSize = False
      Properties.ListColumns = <>
      Properties.OnChange = cbInstrumentTypePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Height = 25
      Width = 125
    end
    object cxButton1: TcxButton
      Left = 407
      Top = 10
      Width = 170
      Height = 25
      Action = actGenerate
      TabOrder = 2
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
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Value Date'
      Control = dtValue
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Instrument Type'
      Control = cbInstrumentType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 125
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 480
    Top = 71
    Width = 441
    Height = 397
    Align = alRight
    TabOrder = 6
    object gvwRevaluation: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsPortfoioRevaluationD
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwRevaluationACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwRevaluationACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwRevaluationACQDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACQDATE'
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwRevaluationAVGPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AVGPRICE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwRevaluationCLOSEPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLOSEPRICE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwRevaluationQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwRevaluationAVGSTOCK_VALUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AVGSTOCK_VALUE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwRevaluationMARKET_VALUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARKET_VALUE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwRevaluationUNREAL_VALUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNREAL_VALUE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwRevaluationSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwRevaluation
    end
  end
  object cxSplitter1: TcxSplitter [3]
    Left = 472
    Top = 71
    Width = 8
    Height = 397
    HotZoneClassName = 'TcxSimpleStyle'
    AlignSplitter = salRight
    Control = cxGrid1
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
  inherited popMaster: TPopupMenu
    object ReversePortfolioRevaluation1: TMenuItem [9]
      Action = actReverse
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsPortfoioRevaluation
  end
  inherited aclEditor: TActionList
    object actGenerate: TNAction
      Category = 'NActions'
      Caption = 'Generate Portfolio Revaluation'
      OnExecute = actGenerateExecute
      CheckPermission = False
    end
    object actReverse: TNAction
      Category = 'NActions'
      Caption = 'Reverse Portfolio Revaluation'
      OnExecute = actReverseExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  object cdsPortfoioRevaluation: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'INSTRUMENT_TYPE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryPortfolioRevaluation'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsPortfoioRevaluationPMID: TLargeintField
      FieldName = 'PMID'
      Required = True
    end
    object cdsPortfoioRevaluationPMCODE: TStringField
      DisplayLabel = 'Transaction Code'
      FieldName = 'PMCODE'
    end
    object cdsPortfoioRevaluationENTRYDATE: TDateField
      DisplayLabel = 'Entry Date'
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsPortfoioRevaluationPM_DATE: TDateField
      DisplayLabel = 'Transaction Date'
      FieldName = 'PM_DATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsPortfoioRevaluationTOTAL_AVGSTOCK_VALUE: TFloatField
      DisplayLabel = 'Total Avg Value'
      FieldName = 'TOTAL_AVGSTOCK_VALUE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsPortfoioRevaluationTOTAL_MARKET_VALUE: TFloatField
      DisplayLabel = 'Total Market Value'
      FieldName = 'TOTAL_MARKET_VALUE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsPortfoioRevaluationTOTAL_UNREAL_VALUE: TFloatField
      DisplayLabel = 'Total Unrelized'
      FieldName = 'TOTAL_UNREAL_VALUE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsPortfoioRevaluationPOSTED: TBooleanField
      DisplayLabel = 'Posted'
      FieldName = 'POSTED'
    end
    object cdsPortfoioRevaluationPOSTED_UI: TStringField
      DisplayLabel = 'Posted By'
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsPortfoioRevaluationLAST_JOURNALNO: TStringField
      DisplayLabel = 'Last Posted Journal No'
      FieldName = 'LAST_JOURNALNO'
      ReadOnly = True
      Size = 30
    end
    object cdsPortfoioRevaluationREVERSED: TBooleanField
      DisplayLabel = 'Reserved'
      FieldName = 'REVERSED'
    end
    object cdsPortfoioRevaluationREVERSED_UI: TStringField
      DisplayLabel = 'Reserved By'
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsPortfoioRevaluationLAST_REV_JOURNALNO: TStringField
      DisplayLabel = 'Last Reserved Journal No'
      FieldName = 'LAST_REV_JOURNALNO'
      ReadOnly = True
      Size = 30
    end
    object cdsPortfoioRevaluationPOSTED_DATE: TDateTimeField
      DisplayLabel = 'Posted DAte'
      FieldName = 'POSTED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsPortfoioRevaluationREVERSED_DATE: TDateTimeField
      DisplayLabel = 'Reversed Date'
      FieldName = 'REVERSED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
  end
  object cdsPortfoioRevaluationD: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PMID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryPortfolioRevaluationD'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 568
    Top = 224
    object cdsPortfoioRevaluationDACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsPortfoioRevaluationDACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsPortfoioRevaluationDACQDATE: TDateField
      DisplayLabel = 'Acquisition Date'
      FieldName = 'ACQDATE'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsPortfoioRevaluationDAVGPRICE: TFloatField
      DisplayLabel = 'Average Price'
      FieldName = 'AVGPRICE'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsPortfoioRevaluationDCLOSEPRICE: TFloatField
      DisplayLabel = 'Close Price'
      FieldName = 'CLOSEPRICE'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsPortfoioRevaluationDQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsPortfoioRevaluationDAVGSTOCK_VALUE: TFloatField
      DisplayLabel = 'Average Stock Value'
      FieldName = 'AVGSTOCK_VALUE'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsPortfoioRevaluationDMARKET_VALUE: TFloatField
      DisplayLabel = 'Market Stock Value'
      FieldName = 'MARKET_VALUE'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsPortfoioRevaluationDUNREAL_VALUE: TFloatField
      DisplayLabel = 'Unrealized Value'
      FieldName = 'UNREAL_VALUE'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsPortfoioRevaluationDSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKCODE'
      ReadOnly = True
      Required = True
    end
  end
  object dsPortfoioRevaluationD: TDataSource
    DataSet = cdsPortfoioRevaluationD
    Left = 568
    Top = 280
  end
end
