inherited frmCorpActWarrantMonitoring: TfrmCorpActWarrantMonitoring
  BorderStyle = bsSizeable
  Caption = 'Exercise Monitoring'
  ClientHeight = 517
  ClientWidth = 993
  ExplicitWidth = 1009
  ExplicitHeight = 556
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 993
    Height = 157
    Align = alTop
    ExplicitWidth = 993
    ExplicitHeight = 157
    object cxDBLabel1: TcxDBLabel [0]
      Left = 88
      Top = 10
      DataBinding.DataField = 'CANO'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 21
      Width = 180
    end
    object cxDBLabel2: TcxDBLabel [1]
      Left = 88
      Top = 37
      DataBinding.DataField = 'STOCKCODE'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 21
      Width = 102
    end
    object cxDBLabel3: TcxDBLabel [2]
      Left = 196
      Top = 37
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 21
      Width = 366
    end
    object cxDBLabel4: TcxDBLabel [3]
      Left = 88
      Top = 64
      DataBinding.DataField = 'ISINCODE'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 21
      Width = 180
    end
    object cxLabel1: TcxLabel [4]
      Left = 274
      Top = 10
      Caption = 'CorpAct Type'
      Style.HotTrack = False
    end
    object txtCorpActType: TcxLabel [5]
      Left = 350
      Top = 10
      AutoSize = False
      Caption = 'txtCorpActType'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Height = 21
      Width = 107
    end
    object cxDBLabel5: TcxDBLabel [6]
      Left = 88
      Top = 118
      DataBinding.DataField = 'WR_STR_EXERDATE'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 21
      Width = 87
    end
    object cxDBLabel6: TcxDBLabel [7]
      Left = 196
      Top = 118
      DataBinding.DataField = 'WR_END_EXERDATE'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 21
      Width = 102
    end
    object cxDBLabel7: TcxDBLabel [8]
      Left = 88
      Top = 91
      DataBinding.DataField = 'WAARANTCODE'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 21
      Width = 121
    end
    object cxDBLabel8: TcxDBLabel [9]
      Left = 215
      Top = 91
      DataBinding.DataField = 'WARRANTNAME'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 21
      Width = 347
    end
    object cxDBLabel9: TcxDBLabel [10]
      Left = 446
      Top = 118
      DataBinding.DataField = 'STR_DISTDATE'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 95
    end
    object cxDBLabel10: TcxDBLabel [11]
      Left = 562
      Top = 118
      DataBinding.DataField = 'END_DISTDATE'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 99
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'CorpAct No'
      Control = cxDBLabel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 180
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBLabel2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxDBLabel3'
      CaptionOptions.Visible = False
      Control = cxDBLabel3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 366
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ISIN Code'
      Control = cxDBLabel4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 180
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Control = txtCorpActType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Exercise Period'
      Control = cxDBLabel5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'to'
      Control = cxDBLabel6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Warrant Code'
      Control = cxDBLabel7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'cxDBLabel8'
      CaptionOptions.Visible = False
      Control = cxDBLabel8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 347
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = ', Exercise Distribution Period'
      Control = cxDBLabel9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'to'
      Control = cxDBLabel10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 448
    Width = 993
    ExplicitTop = 448
    ExplicitWidth = 993
    inherited dbNavLog: TDBNavigator
      Left = 879
      Hints.Strings = ()
      ExplicitLeft = 879
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 497
    Width = 993
    ExplicitTop = 497
    ExplicitWidth = 993
  end
  inherited tabEditorData: TTabSet
    Top = 427
    Width = 993
    ExplicitTop = 427
    ExplicitWidth = 993
  end
  object pnlCorpActEnt: TPanel [4]
    Left = 0
    Top = 157
    Width = 993
    Height = 270
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 993
      Height = 270
      Align = alClient
      PopupMenu = PopupMenu1
      TabOrder = 0
      object gvwMonitoring: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = gvwMonitoringCustomDrawCell
        DataController.DataSource = dsCorpActExerMonitoring
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle2
        Bands = <
          item
          end>
        object gvwMonitoringCAID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CAID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwMonitoringEXER_ID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_ID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwMonitoringACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwMonitoringEXERDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXERDATE'
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwMonitoringACCNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCNO'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwMonitoringACCNAME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCNAME'
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwMonitoringCA_QTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CA_QTY'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwMonitoringCA_AMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CA_AMT'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwMonitoringEXERQTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXERQTY'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwMonitoringEXER_AMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_AMT'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwMonitoringEXER_WARRQTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_WARRQTY'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwMonitoringEXER_PAYDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_PAYDATE'
          Width = 105
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object gvwMonitoringEXER_PAID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_PAID'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 69
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object gvwMonitoringEXER_PAIDAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_PAIDAMT'
          Width = 109
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object gvwMonitoringFINANCE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FINANCE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Visible = False
          Width = 43
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwMonitoringVCA_INSTRUCTION: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VCA_INSTRUCTION'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 81
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object gvwMonitoringBT_INSTRUCTION: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BT_INSTRUCTION'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 73
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object gvwMonitoringBANK_INSTRUCTION: TcxGridDBBandedColumn
          Caption = 'Payment'
          DataBinding.FieldName = 'BANK_INSTRUCTION'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 48
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwMonitoringREQUEST_CASH_LOAN: TcxGridDBBandedColumn
          DataBinding.FieldName = 'REQUEST_CASH_LOAN'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Visible = False
          Width = 99
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwMonitoringCASH_LOAN_APPV: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_LOAN_APPV'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Visible = False
          Width = 106
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwMonitoringSTOCK_DIST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCK_DIST'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 89
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object gvwMonitoringCashOnHand: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CashOnHand'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwMonitoringPAYDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PAYDATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object gvwMonitoringALLOTMENT_DATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ALLOTMENT_DATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object gvwMonitoringRDN_RECEIVE: TcxGridDBBandedColumn
          Caption = 'RDN Receive'
          DataBinding.FieldName = 'RDN_RECEIVE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 68
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object gvwMonitoringMEMBER: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MEMBER'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object gvwMonitoringEXER_NO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_NO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
        object gvwMonitoringCUSTODY: TcxGridDBBandedColumn
          Caption = 'Right Withdraw'
          DataBinding.FieldName = 'CUSTODY'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 95
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object gvwMonitoringSTOCK_DIST_DATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCK_DIST_DATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object gvwMonitoringBT_DATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BT_DATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Width = 81
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object gvwMonitoringREMARKS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'REMARKS'
          Width = 300
          Position.BandIndex = 0
          Position.ColIndex = 32
          Position.RowIndex = 0
        end
        object gvwMonitoringCANCEL_EXERPAID: TcxGridDBBandedColumn
          Caption = 'Cancel Payment'
          DataBinding.FieldName = 'CANCEL_EXERPAID'
          RepositoryItem = dmGlobal.chkStandard
          Width = 83
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwMonitoringStockOnHand: TcxGridDBBandedColumn
          Caption = 'Stock On Hand'
          DataBinding.FieldName = 'StockOnHand'
          Visible = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gvwMonitoring
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCorpActList.cdsCorpAct
    Left = 408
    Top = 250
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsCorpActExerMonitoring: TDataSource
    DataSet = cdsCorpActExerMonitoring
    Left = 238
    Top = 315
  end
  object cdsCorpActExerMonitoring: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'TRADEDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CAID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryWarrantMonitoring'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 237
    Top = 270
    object cdsCorpActExerMonitoringCAID: TLargeintField
      FieldName = 'CAID'
      Required = True
    end
    object cdsCorpActExerMonitoringEXER_ID: TLargeintField
      FieldName = 'EXER_ID'
      Required = True
    end
    object cdsCorpActExerMonitoringACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCorpActExerMonitoringEXERDATE: TDateField
      DisplayLabel = 'Exercise Date'
      FieldName = 'EXERDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActExerMonitoringACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
    end
    object cdsCorpActExerMonitoringACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCorpActExerMonitoringCA_QTY: TFloatField
      FieldName = 'CA_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActExerMonitoringCA_AMT: TFloatField
      FieldName = 'CA_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActExerMonitoringEXERQTY: TFloatField
      DisplayLabel = 'Exercise Qty'
      FieldName = 'EXERQTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActExerMonitoringEXER_AMT: TFloatField
      DisplayLabel = 'Exercise Amount'
      FieldName = 'EXER_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActExerMonitoringEXER_WARRQTY: TFloatField
      FieldName = 'EXER_WARRQTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActExerMonitoringEXER_PAYDATE: TDateField
      DisplayLabel = 'Exercise Pay Date'
      FieldName = 'EXER_PAYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActExerMonitoringEXER_PAID: TStringField
      DisplayLabel = 'Exercise Paid'
      FieldName = 'EXER_PAID'
      Size = 1
    end
    object cdsCorpActExerMonitoringEXER_PAIDAMT: TFloatField
      DisplayLabel = 'Exercise Paid Amount'
      FieldName = 'EXER_PAIDAMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActExerMonitoringFINANCE: TStringField
      DisplayLabel = 'Finance'
      FieldName = 'FINANCE'
      Size = 1
    end
    object cdsCorpActExerMonitoringVCA_INSTRUCTION: TStringField
      DisplayLabel = 'VCA Instruction'
      FieldName = 'VCA_INSTRUCTION'
      Size = 1
    end
    object cdsCorpActExerMonitoringBT_INSTRUCTION: TStringField
      DisplayLabel = 'BT Instruction'
      FieldName = 'BT_INSTRUCTION'
      Size = 1
    end
    object cdsCorpActExerMonitoringBANK_INSTRUCTION: TStringField
      DisplayLabel = 'Bank Instruction'
      FieldName = 'BANK_INSTRUCTION'
      Size = 1
    end
    object cdsCorpActExerMonitoringREQUEST_CASH_LOAN: TStringField
      DisplayLabel = 'Request Cash Loan'
      FieldName = 'REQUEST_CASH_LOAN'
      Size = 1
    end
    object cdsCorpActExerMonitoringCASH_LOAN_APPV: TStringField
      DisplayLabel = 'Cash Loan Approved'
      FieldName = 'CASH_LOAN_APPV'
      Size = 1
    end
    object cdsCorpActExerMonitoringSTOCK_DIST: TStringField
      DisplayLabel = 'Stock Distribution'
      FieldName = 'STOCK_DIST'
      Size = 1
    end
    object cdsCorpActExerMonitoringCashOnHand: TFloatField
      DisplayLabel = 'Cash On Hand'
      FieldName = 'CashOnHand'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCorpActExerMonitoringPAYDATE: TDateField
      FieldName = 'PAYDATE'
      ReadOnly = True
    end
    object cdsCorpActExerMonitoringALLOTMENT_DATE: TDateField
      FieldName = 'ALLOTMENT_DATE'
      ReadOnly = True
    end
    object cdsCorpActExerMonitoringRDN_RECEIVE: TStringField
      FieldName = 'RDN_RECEIVE'
      Size = 1
    end
    object cdsCorpActExerMonitoringMEMBER: TStringField
      FieldName = 'MEMBER'
      Size = 1
    end
    object cdsCorpActExerMonitoringEXER_NO: TStringField
      FieldName = 'EXER_NO'
    end
    object cdsCorpActExerMonitoringCUSTODY: TStringField
      FieldName = 'CUSTODY'
      Size = 1
    end
    object cdsCorpActExerMonitoringSTOCK_DIST_DATE: TDateField
      FieldName = 'STOCK_DIST_DATE'
    end
    object cdsCorpActExerMonitoringBT_DATE: TDateField
      DisplayLabel = 'BT Date'
      FieldName = 'BT_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActExerMonitoringREMARKS: TStringField
      DisplayLabel = 'Remarks'
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsCorpActExerMonitoringCANCEL_EXERPAID: TStringField
      FieldName = 'CANCEL_EXERPAID'
      Size = 1
    end
    object cdsCorpActExerMonitoringStockOnHand: TFloatField
      FieldName = 'StockOnHand'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object actCorpactExer: TActionList
    Left = 621
    Top = 288
    object actPaidExercise: TNAction
      Category = 'NActions'
      Caption = 'Payment Processing'
      OnExecute = actPaidExerciseExecute
      OnUpdate = actPaidExerciseUpdate
      CheckPermission = False
    end
    object actGenerateBTInstruction: TNAction
      Category = 'NActions'
      Caption = 'Book Transfer Execution'
      Enabled = False
      Visible = False
      OnExecute = actGenerateBTInstructionExecute
      OnUpdate = actGenerateBTInstructionUpdate
      CheckPermission = False
    end
    object actGenerateBTToExcel: TNAction
      Category = 'NActions'
      Caption = 'Book Transfer To Excel'
      OnExecute = actGenerateBTToExcelExecute
      OnUpdate = actGenerateBTToExcelUpdate
      CheckPermission = False
    end
    object actGenerateFileVCA: TNAction
      Category = 'NActions'
      Caption = 'Generate File VCA'
      OnExecute = actGenerateFileVCAExecute
      OnUpdate = actGenerateFileVCAUpdate
      CheckPermission = False
    end
    object actCorpactDistributionProcess: TNAction
      Category = 'NActions'
      Caption = 'Exercise Distribution Process'
      OnExecute = actCorpactDistributionProcessExecute
      OnUpdate = actCorpactDistributionProcessUpdate
      CheckPermission = False
    end
    object actTakeOverToFinance: TNAction
      Category = 'NActions'
      Caption = 'Finance Checking'
      OnExecute = actTakeOverToFinanceExecute
      CheckPermission = False
    end
    object actCancelCorpactDistProcess: TNAction
      Category = 'NActions'
      Caption = 'Cancel Payment Process'
      OnExecute = actCancelCorpactDistProcessExecute
      OnUpdate = actCancelCorpactDistProcessUpdate
      CheckPermission = False
    end
    object actWithdrawRight: TNAction
      Category = 'NActions'
      Caption = 'Withdrawal Right Exercise'
      Visible = False
      OnExecute = actWithdrawRightExecute
      OnUpdate = actWithdrawRightUpdate
      CheckPermission = False
    end
    object actWithdrawWarrant: TNAction
      Category = 'NActions'
      Caption = 'Withdrawal Warrant Exercise'
      OnExecute = actWithdrawWarrantExecute
      CheckPermission = False
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 624
    Top = 336
    object PaidExercise1: TMenuItem
      Action = actPaidExercise
    end
    object NAction11: TMenuItem
      Action = actCancelCorpactDistProcess
    end
    object Generatebooktransfertoexcel1: TMenuItem
      Action = actGenerateBTToExcel
    end
    object GenerateBookTransferInstruction1: TMenuItem
      Action = actGenerateBTInstruction
    end
    object GenerateFileVCA1: TMenuItem
      Action = actGenerateFileVCA
    end
    object WithdrawalRightExercise1: TMenuItem
      Action = actWithdrawRight
    end
    object WithdrawalWarrantExercise1: TMenuItem
      Action = actWithdrawWarrant
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CorpactDistributionProcess1: TMenuItem
      Action = actCorpactDistributionProcess
    end
  end
  object Report: TNClientReportContainer
    ReportClient = dmGlobal.ReportClient
    ReportName = 'Middle Office\TradeSummaryBySales.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'CAID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    Left = 525
    Top = 277
  end
  object dsCorpactExer: TDataSource
    Left = 360
    Top = 321
  end
  object NClientDataset1: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmSettlement_qryCorpActExercise'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 237
    Top = 369
  end
  object cdsCorpactExer: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'EXER_ID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCorpAcct_Warrant'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 438
    Top = 381
    object cdsCorpactExerCAID: TLargeintField
      FieldName = 'CAID'
      Required = True
    end
    object cdsCorpactExerEXER_ID: TLargeintField
      FieldName = 'EXER_ID'
      Required = True
    end
    object cdsCorpactExerACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCorpactExerEXERDATE: TDateField
      FieldName = 'EXERDATE'
      Required = True
    end
    object cdsCorpactExerACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCorpactExerACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCorpactExerCA_QTY: TFloatField
      FieldName = 'CA_QTY'
    end
    object cdsCorpactExerCA_AMT: TFloatField
      FieldName = 'CA_AMT'
    end
    object cdsCorpactExerEXERQTY: TFloatField
      FieldName = 'EXERQTY'
    end
    object cdsCorpactExerEXER_AMT: TFloatField
      FieldName = 'EXER_AMT'
    end
    object cdsCorpactExerEXER_WARRQTY: TFloatField
      FieldName = 'EXER_WARRQTY'
    end
    object cdsCorpactExerEXER_PAYDATE: TDateField
      FieldName = 'EXER_PAYDATE'
    end
    object cdsCorpactExerEXER_PAID: TStringField
      FieldName = 'EXER_PAID'
      Size = 1
    end
    object cdsCorpactExerEXER_PAIDAMT: TFloatField
      FieldName = 'EXER_PAIDAMT'
    end
    object cdsCorpactExerFINANCE: TStringField
      FieldName = 'FINANCE'
      Size = 1
    end
    object cdsCorpactExerVCA_INSTRUCTION: TStringField
      FieldName = 'VCA_INSTRUCTION'
      Size = 1
    end
    object cdsCorpactExerBT_INSTRUCTION: TStringField
      FieldName = 'BT_INSTRUCTION'
      Size = 1
    end
    object cdsCorpactExerBANK_INSTRUCTION: TStringField
      FieldName = 'BANK_INSTRUCTION'
      Size = 1
    end
    object cdsCorpactExerREQUEST_CASH_LOAN: TStringField
      FieldName = 'REQUEST_CASH_LOAN'
      Size = 1
    end
    object cdsCorpactExerCASH_LOAN_APPV: TStringField
      FieldName = 'CASH_LOAN_APPV'
      Size = 1
    end
    object cdsCorpactExerSTOCK_DIST: TStringField
      FieldName = 'STOCK_DIST'
      Size = 1
    end
    object cdsCorpactExerMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCorpactExerMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCorpactExerAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCorpactExerAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCorpactExerUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCorpactExerUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCorpactExerNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCorpactExerISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCorpactExerID: TLargeintField
      FieldName = 'ID'
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'Excel 97-2003|*.xls'
    Left = 630
    Top = 396
  end
  object cdsExerciseBookTransfer: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'EXERNO'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryExerciseBookTransfer'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 738
    Top = 273
    object cdsExerciseBookTransferexternalReference: TStringField
      FieldName = 'externalReference'
    end
    object cdsExerciseBookTransferparticipantCode: TStringField
      FieldName = 'participantCode'
      Size = 10
    end
    object cdsExerciseBookTransferparticipantAccount: TStringField
      FieldName = 'participantAccount'
    end
    object cdsExerciseBookTransfercounterpartAccount: TStringField
      FieldName = 'counterpartAccount'
    end
    object cdsExerciseBookTransfervalueDate: TStringField
      FieldName = 'valueDate'
      Size = 10
    end
    object cdsExerciseBookTransfercurrencyCode: TStringField
      FieldName = 'currencyCode'
      Size = 5
    end
    object cdsExerciseBookTransfercashAmount: TFloatField
      FieldName = 'cashAmount'
    end
    object cdsExerciseBookTransferdescription: TStringField
      FieldName = 'description'
      Size = 150
    end
  end
  object cdsVCA: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CAID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'EXERNO'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryVCA_Warrant'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 633
    Top = 456
    object cdsVCAexternalReference: TStringField
      FieldName = 'externalReference'
      Size = 30
    end
    object cdsVCAcorporateActionType: TStringField
      FieldName = 'corporateActionType'
      Size = 10
    end
    object cdsVCAeffectiveDate: TStringField
      FieldName = 'effectiveDate'
      Size = 10
    end
    object cdsVCAsecurityCodeType: TStringField
      FieldName = 'securityCodeType'
      Size = 10
    end
    object cdsVCAsecurityCode: TStringField
      FieldName = 'securityCode'
      Size = 10
    end
    object cdsVCAparticipantCode: TStringField
      FieldName = 'participantCode'
      Size = 10
    end
    object cdsVCAparticipantAccount: TStringField
      FieldName = 'participantAccount'
    end
    object cdsVCAoptionName: TStringField
      FieldName = 'optionName'
      Size = 10
    end
    object cdsVCAoptionQuantity: TFloatField
      FieldName = 'optionQuantity'
    end
    object cdsVCAadditionalProceedRequest: TStringField
      FieldName = 'additionalProceedRequest'
    end
    object cdsVCAdescription: TStringField
      FieldName = 'description'
      Size = 150
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel 97-2003|*.xls'
    Left = 720
    Top = 450
  end
end
