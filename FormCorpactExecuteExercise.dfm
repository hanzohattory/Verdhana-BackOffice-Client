inherited frmCorpActExecuteExercise: TfrmCorpActExecuteExercise
  Caption = 'Corpact Execute Exercise'
  ClientHeight = 404
  ClientWidth = 865
  ExplicitWidth = 871
  ExplicitHeight = 429
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 865
    Height = 100
    Align = alTop
    ExplicitWidth = 865
    ExplicitHeight = 100
    object cxDBLabel1: TcxDBLabel [0]
      Left = 70
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
      Left = 70
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
      Left = 178
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
      Left = 70
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
      Left = 256
      Top = 10
      Caption = 'CorpAct Type'
      Style.HotTrack = False
    end
    object txtCorpActType: TcxLabel [5]
      Left = 332
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
      Left = 334
      Top = 64
      DataBinding.DataField = 'RI_STR_EXERDATE'
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
      Left = 442
      Top = 64
      DataBinding.DataField = 'RI_END_EXERDATE'
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
    inherited dxLayoutGroup1: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'CorpAct No'
      Parent = dxLayoutControl1Group2
      Control = cxDBLabel1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Stock Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBLabel2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'cxDBLabel3'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxDBLabel3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ISIN Code'
      Parent = dxLayoutControl1Group3
      Control = cxDBLabel4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      Control = cxLabel1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      Control = txtCorpActType
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Exercise Period'
      Parent = dxLayoutControl1Group3
      Control = cxDBLabel5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'to'
      Parent = dxLayoutControl1Group3
      Control = cxDBLabel6
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 335
    Width = 865
    ExplicitTop = 335
    ExplicitWidth = 865
    inherited dbNavLog: TDBNavigator
      Left = 751
      Hints.Strings = ()
      ExplicitLeft = 751
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      Index = -1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl2Item2: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      Index = 0
    end
    inherited lcNavLog: TdxLayoutItem
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 384
    Width = 865
    ExplicitTop = 384
    ExplicitWidth = 865
  end
  inherited tabEditorData: TTabSet
    Top = 314
    Width = 865
    ExplicitTop = 314
    ExplicitWidth = 865
  end
  object pnlCorpActEnt: TPanel [4]
    Left = 0
    Top = 100
    Width = 865
    Height = 214
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 865
      Height = 214
      Align = alClient
      PopupMenu = PopupMenu1
      TabOrder = 0
      object gvwEntetlement: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsCorpActEnt
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsSelection.MultiSelect = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle2
        Bands = <
          item
            Width = 836
          end>
        object gvwEntetlementCAID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CAID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwEntetlementEXER_ID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_ID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwEntetlementACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwEntetlementEXERDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXERDATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwEntetlementACCNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCNO'
          Width = 69
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwEntetlementACCNAME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCNAME'
          Width = 225
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwEntetlementCA_QTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CA_QTY'
          Visible = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwEntetlementCA_AMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CA_AMT'
          Visible = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwEntetlementEXERQTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXERQTY'
          Width = 95
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwEntetlementEXER_AMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_AMT'
          Width = 95
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwEntetlementEXER_WARRQTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_WARRQTY'
          Visible = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwEntetlementEXER_PAYDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_PAYDATE'
          Visible = False
          Width = 94
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwEntetlementEXER_PAID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_PAID'
          Visible = False
          Width = 61
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwEntetlementEXER_PAIDAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_PAIDAMT'
          Visible = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwEntetlementRCASH_VOUCHEID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RCASH_VOUCHEID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwEntetlementRCASH_VOUCHERNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RCASH_VOUCHERNO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwEntetlementPCASH_VOUCHERID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PCASH_VOUCHERID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwEntetlementPCASH_VOUCHERNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PCASH_VOUCHERNO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwEntetlementMODDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object gvwEntetlementMODUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object gvwEntetlementAPPDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object gvwEntetlementAPPUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object gvwEntetlementUNDER4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object gvwEntetlementUNDER4YDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object gvwEntetlementNOTES4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object gvwEntetlementISDEL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object gvwEntetlementID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object gvwEntetlementCashOnHand: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CashOnHand'
          Width = 94
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object gvwEntetlementISRDN: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISRDN'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object gvwEntetlementFINANCE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FINANCE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object gvwEntetlementVCA_INSTRUCTION: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VCA_INSTRUCTION'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
        object gvwEntetlementBT_INSTRUCTION: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BT_INSTRUCTION'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object gvwEntetlementBANK_INSTRUCTION: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BANK_INSTRUCTION'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 32
          Position.RowIndex = 0
        end
        object gvwEntetlementREQUEST_CASH_LOAN: TcxGridDBBandedColumn
          Caption = 'Cash Loan'
          DataBinding.FieldName = 'REQUEST_CASH_LOAN'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 63
          Position.BandIndex = 0
          Position.ColIndex = 34
          Position.RowIndex = 0
        end
        object gvwEntetlementCASH_LOAN_APPV: TcxGridDBBandedColumn
          Caption = 'Cash Loan Approved'
          DataBinding.FieldName = 'CASH_LOAN_APPV'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 105
          Position.BandIndex = 0
          Position.ColIndex = 35
          Position.RowIndex = 0
        end
        object gvwEntetlementSTOCK_DIST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCK_DIST'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 36
          Position.RowIndex = 0
        end
        object gvwEntetlementMEMBER: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MEMBER'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 37
          Position.RowIndex = 0
        end
        object gvwEntetlementRDN_RECEIVE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RDN_RECEIVE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 38
          Position.RowIndex = 0
        end
        object gvwEntetlementCashOnHold: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CashOnHold'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 33
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gvwEntetlement
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCorpActList.cdsCorpAct
    Left = 408
    Top = 250
  end
  object dsCorpActEnt: TDataSource
    DataSet = cdsCorpActExer
    Left = 319
    Top = 231
  end
  object cdsCorpActExer: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'TRANSDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryExecuteExercise'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 318
    Top = 186
    object cdsCorpActExerCAID: TLargeintField
      FieldName = 'CAID'
      Required = True
    end
    object cdsCorpActExerEXER_ID: TLargeintField
      FieldName = 'EXER_ID'
      Required = True
    end
    object cdsCorpActExerACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCorpActExerEXERDATE: TDateField
      FieldName = 'EXERDATE'
      Required = True
    end
    object cdsCorpActExerACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
    end
    object cdsCorpActExerACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCorpActExerCA_QTY: TFloatField
      FieldName = 'CA_QTY'
    end
    object cdsCorpActExerCA_AMT: TFloatField
      FieldName = 'CA_AMT'
    end
    object cdsCorpActExerEXERQTY: TFloatField
      DisplayLabel = 'Exer Qty'
      FieldName = 'EXERQTY'
      DisplayFormat = '#,##0;(#.##0);-'
    end
    object cdsCorpActExerEXER_AMT: TFloatField
      DisplayLabel = 'Exer Amount'
      FieldName = 'EXER_AMT'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsCorpActExerEXER_WARRQTY: TFloatField
      FieldName = 'EXER_WARRQTY'
    end
    object cdsCorpActExerEXER_PAYDATE: TDateField
      FieldName = 'EXER_PAYDATE'
    end
    object cdsCorpActExerEXER_PAID: TStringField
      FieldName = 'EXER_PAID'
      Size = 1
    end
    object cdsCorpActExerEXER_PAIDAMT: TFloatField
      FieldName = 'EXER_PAIDAMT'
    end
    object cdsCorpActExerFINANCE: TStringField
      FieldName = 'FINANCE'
      Size = 1
    end
    object cdsCorpActExerVCA_INSTRUCTION: TStringField
      FieldName = 'VCA_INSTRUCTION'
      Size = 1
    end
    object cdsCorpActExerBT_INSTRUCTION: TStringField
      FieldName = 'BT_INSTRUCTION'
      Size = 1
    end
    object cdsCorpActExerBANK_INSTRUCTION: TStringField
      FieldName = 'BANK_INSTRUCTION'
      Size = 1
    end
    object cdsCorpActExerREQUEST_CASH_LOAN: TStringField
      FieldName = 'REQUEST_CASH_LOAN'
      Size = 1
    end
    object cdsCorpActExerCASH_LOAN_APPV: TStringField
      FieldName = 'CASH_LOAN_APPV'
      Size = 1
    end
    object cdsCorpActExerSTOCK_DIST: TStringField
      FieldName = 'STOCK_DIST'
      Size = 1
    end
    object cdsCorpActExerMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCorpActExerMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCorpActExerAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCorpActExerAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCorpActExerUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCorpActExerUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCorpActExerNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCorpActExerISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCorpActExerID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCorpActExerCashOnHand: TFloatField
      DisplayLabel = 'Cash On Hand'
      FieldName = 'CashOnHand'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActExerMEMBER: TStringField
      FieldName = 'MEMBER'
      Size = 1
    end
    object cdsCorpActExerRDN_RECEIVE: TStringField
      FieldName = 'RDN_RECEIVE'
      Size = 1
    end
    object cdsCorpActExerCashOnHold: TFloatField
      DisplayLabel = 'Cash On Hold'
      FieldName = 'CashOnHold'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object ActionList1: TActionList
    Left = 495
    Top = 159
    object actRequestCashLoan: TNAction
      Category = 'NActions'
      Caption = 'Request Cash Loan'
      OnExecute = actRequestCashLoanExecute
      OnUpdate = actRequestCashLoanUpdate
      CheckPermission = False
    end
    object actGenerateBankInstructionForExercise: TNAction
      Category = 'NActions'
      Caption = 'Generate Bank Instruction For Exercise'
      OnExecute = actGenerateBankInstructionForExerciseExecute
      OnUpdate = actGenerateBankInstructionForExerciseUpdate
      CheckPermission = False
    end
    object actApprovedCashLoan: TNAction
      Category = 'NActions'
      Caption = 'Approved Cash Loan'
      OnExecute = actApprovedCashLoanExecute
      OnUpdate = actApprovedCashLoanUpdate
      CheckPermission = False
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 495
    Top = 207
    object GenerateBankInstructionForExercise1: TMenuItem
      Action = actGenerateBankInstructionForExercise
    end
    object RequestApprovalHMETD1: TMenuItem
      Action = actRequestCashLoan
    end
    object RequestCashLoan1: TMenuItem
      Action = actApprovedCashLoan
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
    Left = 399
    Top = 148
  end
  object dsCorpactExer: TDataSource
    DataSet = frmCorpActList.cdsCorpActExer
    Left = 234
    Top = 189
  end
end
