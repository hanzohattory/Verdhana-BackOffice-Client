inherited frmCorpActWarrantExercise: TfrmCorpActWarrantExercise
  BorderStyle = bsSizeable
  Caption = 'Corporate Action Exercise'
  ClientHeight = 505
  ClientWidth = 1079
  ExplicitWidth = 1095
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1079
    Height = 103
    Align = alTop
    ExplicitWidth = 1079
    ExplicitHeight = 103
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
      Width = 102
    end
    object cxDBLabel5: TcxDBLabel [4]
      Left = 231
      Top = 64
      DataBinding.DataField = 'WR_PRICE'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 69
    end
    object cxDBLabel6: TcxDBLabel [5]
      Left = 384
      Top = 64
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
      Width = 103
    end
    object cxDBLabel7: TcxDBLabel [6]
      Left = 508
      Top = 64
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
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      LayoutDirection = ldHorizontal
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
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ISIN Code'
      Control = cxDBLabel4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Exer Price'
      Control = cxDBLabel5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Exercise Period'
      Control = cxDBLabel6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'to'
      Control = cxDBLabel7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 436
    Width = 1079
    Visible = False
    ExplicitTop = 436
    ExplicitWidth = 1079
    inherited btnCancel: TcxButton
      TabStop = False
    end
    inherited dbNavLog: TDBNavigator
      Left = 965
      Hints.Strings = ()
      ExplicitLeft = 965
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 485
    Width = 1079
    ExplicitTop = 485
    ExplicitWidth = 1079
  end
  inherited tabEditorData: TTabSet
    Top = 415
    Width = 1079
    ExplicitTop = 415
    ExplicitWidth = 1079
  end
  object pnlCorpActExer: TPanel [4]
    Left = 0
    Top = 103
    Width = 1079
    Height = 312
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object cxGrid2: TcxGrid
      Left = 487
      Top = 0
      Width = 592
      Height = 312
      Align = alClient
      PopupMenu = pmCorpactExer
      TabOrder = 0
      object gvwCorpActExer: TcxGridDBBandedTableView
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        OnCustomDrawCell = gvwCorpActExerCustomDrawCell
        DataController.DataSource = dsCorpActExer
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0 Records'
            Kind = skCount
            FieldName = 'ACCNAME'
            Column = gvwCorpActExerACCNAME
          end
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'EXER_AMT'
            Column = gvwCorpActExerEXER_AMT
          end
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'EXERQTY'
            Column = gvwCorpActExerEXERQTY
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle2
        Bands = <
          item
            Caption = 'Corporate Action Exercise'
            HeaderAlignmentHorz = taLeftJustify
          end>
        object gvwCorpActExerCAID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CAID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwCorpActExerACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwCorpActExerACCNO: TcxGridDBBandedColumn
          Caption = 'A/C Number'
          DataBinding.FieldName = 'ACCNO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwCorpActExerACCNAME: TcxGridDBBandedColumn
          Caption = 'A/C Name'
          DataBinding.FieldName = 'ACCNAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwCorpActExerCA_QTY: TcxGridDBBandedColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'CA_QTY'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Visible = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwCorpActExerCA_AMT: TcxGridDBBandedColumn
          Caption = 'CA Amount'
          DataBinding.FieldName = 'CA_AMT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Visible = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwCorpActExerEXERQTY: TcxGridDBBandedColumn
          Caption = 'Exer Qty'
          DataBinding.FieldName = 'EXERQTY'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.EditFormat = '#'
          Properties.ReadOnly = True
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwCorpActExerEXER_AMT: TcxGridDBBandedColumn
          Caption = 'Exer Amount'
          DataBinding.FieldName = 'EXER_AMT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwCorpActExerEXER_WARRQTY: TcxGridDBBandedColumn
          Caption = 'Exer Warrant Qty'
          DataBinding.FieldName = 'EXER_WARRQTY'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Visible = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwCorpActExerEXER_PAYDATE: TcxGridDBBandedColumn
          Caption = 'Exer Pay Date'
          DataBinding.FieldName = 'EXER_PAYDATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd mmm yyyy'
          Visible = False
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwCorpActExerEXER_PAID: TcxGridDBBandedColumn
          Caption = 'Exer Paid'
          DataBinding.FieldName = 'EXER_PAID'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Visible = False
          Width = 53
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwCorpActExerMODDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwCorpActExerMODUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwCorpActExerAPPDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwCorpActExerAPPUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwCorpActExerUNDER4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object gvwCorpActExerUNDER4YDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object gvwCorpActExerNOTES4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object gvwCorpActExerISDEL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object gvwCorpActExerID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object gvwCorpActExerEXERDATE: TcxGridDBBandedColumn
          Caption = 'Exer Date'
          DataBinding.FieldName = 'EXERDATE'
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwCorpActExerEXER_ID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_ID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object gvwCorpActExerEXER_PAIDAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_PAIDAMT'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object gvwCorpActExerFINANCE: TcxGridDBBandedColumn
          Caption = 'Finance'
          DataBinding.FieldName = 'FINANCE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Visible = False
          Width = 43
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwCorpActExerWT_INSTRUCTION: TcxGridDBBandedColumn
          DataBinding.FieldName = 'WT_INSTRUCTION'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object gvwCorpActExerBT_INSTRUCTION: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BT_INSTRUCTION'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object gvwCorpActExerBANK_INSTRUCTION: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BANK_INSTRUCTION'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object gvwCorpActExerREQUEST_CASH_LOAN: TcxGridDBBandedColumn
          DataBinding.FieldName = 'REQUEST_CASH_LOAN'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object gvwCorpActExerCASH_LOAN_APPV: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_LOAN_APPV'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object gvwCorpActExerSTOCK_DIST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCK_DIST'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
        object gvwCorpActExerVCA_INSTRUCTION: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VCA_INSTRUCTION'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object gvwCorpActExerMEMBER: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Member'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Visible = False
          Width = 44
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwCorpActExerRDN_RECEIVE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RDN_RECEIVE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 32
          Position.RowIndex = 0
        end
        object gvwCorpActExerORIQTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ORIQTY'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 33
          Position.RowIndex = 0
        end
        object gvwCorpActExerEXER_NO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXER_NO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 34
          Position.RowIndex = 0
        end
        object gvwCorpActExerCUSTODY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTODY'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 35
          Position.RowIndex = 0
        end
        object gvwCorpActExerSTOCK_DIST_DATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCK_DIST_DATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 36
          Position.RowIndex = 0
        end
        object gvwCorpActExerBT_DATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BT_DATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 37
          Position.RowIndex = 0
        end
        object gvwCorpActExerREMARKS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'REMARKS'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 38
          Position.RowIndex = 0
        end
        object gvwCorpActExerCANCEL_EXERPAID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CANCEL_EXERPAID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 39
          Position.RowIndex = 0
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = gvwCorpActExer
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 487
      Height = 312
      Align = alLeft
      PopupMenu = pmCorpactEnt
      TabOrder = 1
      object gvwEntetlement: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsStockOnHand
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0 Records'
            Kind = skCount
            FieldName = 'AccName'
            Column = gvwEntetlementAccName
          end
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'AVAIL_EXER_QTY'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnSorting = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle2
        Bands = <
          item
            Caption = 'Corporate Action Entitlement'
            HeaderAlignmentHorz = taLeftJustify
          end>
        object gvwEntetlementRPTDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RPTDATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwEntetlementAcqDate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AcqDate'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwEntetlementBranchID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BranchID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwEntetlementBranchCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BranchCode'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwEntetlementBranchName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BranchName'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwEntetlementSalesID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SalesID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwEntetlementSalesCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SalesCode'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwEntetlementSalesName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SalesName'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwEntetlementAccID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AccID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwEntetlementAccNo: TcxGridDBBandedColumn
          Caption = 'A/C Number'
          DataBinding.FieldName = 'AccNo'
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwEntetlementAccName: TcxGridDBBandedColumn
          Caption = 'A/C Name'
          DataBinding.FieldName = 'AccName'
          SortIndex = 0
          SortOrder = soAscending
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwEntetlementStockID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwEntetlementStockCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockCode'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwEntetlementStockName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockName'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwEntetlementAvgPrice: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AvgPrice'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwEntetlementClosePrice: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ClosePrice'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwEntetlementStockOnHand: TcxGridDBBandedColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'StockOnHand'
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwEntetlementStockOnHold: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockOnHold'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwEntetlementStockOuts: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockOuts'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object gvwEntetlementStockReceive: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockReceive'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object gvwEntetlementStockDeliver: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockDeliver'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object gvwEntetlementStockBalance: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockBalance'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object gvwEntetlementStockBal_Value: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockBal_Value'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object gvwEntetlementStockBal_MktValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockBal_MktValue'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object gvwEntetlementUnReal_LossProfit: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UnReal_LossProfit'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object gvwEntetlementLastCP: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LastCP'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object gvwEntetlementInvType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'InvType'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object gvwEntetlementSELLQTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SELLQTY'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object gvwEntetlementAV_QTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AV_QTY'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object gvwEntetlementQTY_CORPACT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_CORPACT'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object gvwEntetlementENTTID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ENTTID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
        object gvwEntetlementACCTYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCTYPE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object gvwEntetlementHAIRCUTVAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HAIRCUTVAL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 32
          Position.RowIndex = 0
        end
        object gvwEntetlementACCSOPID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCSOPID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 33
          Position.RowIndex = 0
        end
        object gvwEntetlementQTY_AVAILABLE: TcxGridDBBandedColumn
          Caption = 'Qty Available'
          DataBinding.FieldName = 'QTY_AVAILABLE'
          HeaderAlignmentHorz = taRightJustify
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 34
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
    Top = 301
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsCorpActExer: TDataSource
    DataSet = cdsCorpactExer
    Left = 393
    Top = 180
  end
  object pmCorpactEnt: TPopupMenu
    Left = 234
    Top = 144
    object AddToExercise1: TMenuItem
      Action = actAddToExercise
    end
  end
  object actCorpactExer: TActionList
    Left = 231
    Top = 192
    object actAddToExercise: TNAction
      Category = 'Entitlement'
      Caption = 'Add To Exercise'
      OnExecute = actAddToExerciseExecute
      OnUpdate = actAddToExerciseUpdate
      CheckPermission = False
    end
    object actCancel: TNAction
      Category = 'Exercise'
      Caption = 'Cancel'
      OnExecute = actCancelExecute
      OnUpdate = actCancelUpdate
      CheckPermission = False
    end
    object actChangeExerQty: TNAction
      Category = 'Exercise'
      Caption = 'Change Exer Qty'
      OnExecute = actChangeExerQtyExecute
      OnUpdate = actCancelUpdate
      CheckPermission = False
    end
    object actGenerateExcelFile: TNAction
      Category = 'Exercise'
      Caption = 'Upload Data Exercise From Excel'
      OnExecute = actGenerateExcelFileExecute
      CheckPermission = False
    end
    object actTakeOverToFinanceSelected: TNAction
      Category = 'Exercise'
      Caption = 'Take Over To Finance Selected'
      OnExecute = actTakeOverToFinanceSelectedExecute
      CheckPermission = False
    end
    object actTakeOverToFinanceAll: TNAction
      Category = 'Exercise'
      Caption = 'Take Over To Finance All'
      OnExecute = actTakeOverToFinanceAllExecute
      CheckPermission = False
    end
    object actGenerateFileVCA: TNAction
      Category = 'Exercise'
      Caption = 'Generate File VCA'
      CheckPermission = False
    end
    object actAddTradeExercise: TNAction
      Category = 'Exercise'
      Caption = 'Add Trade Exercise'
      OnExecute = actAddTradeExerciseExecute
      CheckPermission = False
    end
  end
  object pmCorpactExer: TPopupMenu
    Left = 594
    Top = 318
    object MenuItem1: TMenuItem
      Action = actCancel
    end
    object ChangeExerQty1: TMenuItem
      Action = actChangeExerQty
    end
    object GenerateFromExcel1: TMenuItem
      Action = actGenerateExcelFile
    end
  end
  object OpenDialog: TOpenDialog
    Left = 705
    Top = 60
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
    ProviderName = 'dspN_dmSettlement_qryVCA'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 594
    Top = 252
    object cdsVCAexternalReference: TStringField
      FieldName = 'externalReference'
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
  object cdsTradeExercise: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'TRADEDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'STOCKID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryClientStockPosition'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 693
    Top = 252
    object cdsTradeExerciseAcqDate: TDateField
      FieldName = 'AcqDate'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTradeExerciseBranchID: TIntegerField
      FieldName = 'BranchID'
    end
    object cdsTradeExerciseBranchCode: TStringField
      FieldName = 'BranchCode'
      Size = 10
    end
    object cdsTradeExerciseBranchName: TStringField
      FieldName = 'BranchName'
      Size = 50
    end
    object cdsTradeExerciseSalesID: TIntegerField
      FieldName = 'SalesID'
    end
    object cdsTradeExerciseSalesCode: TStringField
      FieldName = 'SalesCode'
    end
    object cdsTradeExerciseSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object cdsTradeExerciseAccID: TLargeintField
      FieldName = 'AccID'
    end
    object cdsTradeExerciseAccNo: TStringField
      FieldName = 'AccNo'
      Size = 30
    end
    object cdsTradeExerciseAccName: TStringField
      FieldName = 'AccName'
      Size = 100
    end
    object cdsTradeExerciseStockID: TIntegerField
      FieldName = 'StockID'
    end
    object cdsTradeExerciseStockCode: TStringField
      FieldName = 'StockCode'
    end
    object cdsTradeExerciseStockName: TStringField
      FieldName = 'StockName'
      Size = 100
    end
    object cdsTradeExerciseAvgPrice: TFloatField
      FieldName = 'AvgPrice'
    end
    object cdsTradeExerciseClosePrice: TFloatField
      FieldName = 'ClosePrice'
    end
    object cdsTradeExerciseStockOnHand: TFloatField
      FieldName = 'StockOnHand'
    end
    object cdsTradeExerciseStockOnHold: TFloatField
      FieldName = 'StockOnHold'
    end
    object cdsTradeExerciseStockOuts: TFloatField
      FieldName = 'StockOuts'
    end
    object cdsTradeExerciseStockReceive: TFloatField
      FieldName = 'StockReceive'
    end
    object cdsTradeExerciseStockDeliver: TFloatField
      FieldName = 'StockDeliver'
    end
    object cdsTradeExerciseStockBalance: TFloatField
      FieldName = 'StockBalance'
    end
    object cdsTradeExerciseStockBal_Value: TFloatField
      FieldName = 'StockBal_Value'
    end
    object cdsTradeExerciseStockBal_MktValue: TFloatField
      FieldName = 'StockBal_MktValue'
    end
    object cdsTradeExerciseUnReal_LossProfit: TFloatField
      FieldName = 'UnReal_LossProfit'
    end
    object cdsTradeExerciseLastCP: TDateField
      FieldName = 'LastCP'
    end
    object cdsTradeExerciseInvType: TStringField
      FieldName = 'InvType'
      Size = 1
    end
    object cdsTradeExerciseSELLQTY: TFloatField
      FieldName = 'SELLQTY'
    end
    object cdsTradeExerciseAV_QTY: TFloatField
      FieldName = 'AV_QTY'
    end
    object cdsTradeExerciseQTY_CORPACT: TFloatField
      FieldName = 'QTY_CORPACT'
    end
    object cdsTradeExerciseENTTID: TLargeintField
      FieldName = 'ENTTID'
    end
    object cdsTradeExerciseEXERQTY: TFloatField
      FieldName = 'EXERQTY'
      ReadOnly = True
    end
    object cdsTradeExerciseAVAILQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'AVAILQTY'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object cdsStockOnHand: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'TRDDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qrySourceExerWarrant'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 36
    Top = 201
    object cdsStockOnHandQTY_AVAILABLE: TFloatField
      FieldName = 'QTY_AVAILABLE'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockOnHandACCID: TLargeintField
      FieldName = 'ACCID'
      ReadOnly = True
    end
    object cdsStockOnHandACCNO: TStringField
      FieldName = 'ACCNO'
      Required = True
      Size = 30
    end
    object cdsStockOnHandACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsStockOnHandQTY_CORPACT: TFloatField
      FieldName = 'QTY_CORPACT'
      ReadOnly = True
      Required = True
    end
  end
  object dsStockOnHand: TDataSource
    DataSet = cdsStockOnHand
    Left = 36
    Top = 246
  end
  object cdsCorpactExer: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCorpAcct_Warrant'
    RemoteServer = dmGlobal.dspConnection
    AfterPost = cdsCorpactExerAfterPost
    AfterDelete = cdsCorpactExerAfterDelete
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 390
    Top = 228
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
    object cdsCorpactExerEXER_NO: TStringField
      FieldName = 'EXER_NO'
    end
    object cdsCorpactExerEXERDATE: TDateField
      FieldName = 'EXERDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
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
    object cdsCorpactExerMEMBER: TStringField
      FieldName = 'MEMBER'
      Size = 1
    end
    object cdsCorpactExerCUSTODY: TStringField
      FieldName = 'CUSTODY'
      Size = 1
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
    object cdsCorpactExerRDN_RECEIVE: TStringField
      FieldName = 'RDN_RECEIVE'
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
    object cdsCorpactExerSTOCK_DIST_DATE: TDateField
      FieldName = 'STOCK_DIST_DATE'
    end
    object cdsCorpactExerBT_DATE: TDateField
      FieldName = 'BT_DATE'
    end
    object cdsCorpactExerREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsCorpactExerCANCEL_EXERPAID: TStringField
      FieldName = 'CANCEL_EXERPAID'
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
    object cdsCorpactExerORIQTY: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'ORIQTY'
    end
  end
end
