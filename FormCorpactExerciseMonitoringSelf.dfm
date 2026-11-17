object frmCorpactExerciseMonitoringSelf: TfrmCorpactExerciseMonitoringSelf
  Left = 0
  Top = 0
  Caption = 'Corpact Exercise Monitoring'
  ClientHeight = 471
  ClientWidth = 1042
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1042
    Height = 157
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 993
    object cxDBLabel1: TcxDBLabel
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
    object cxDBLabel2: TcxDBLabel
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
    object cxDBLabel3: TcxDBLabel
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
    object cxDBLabel4: TcxDBLabel
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
    object cxLabel1: TcxLabel
      Left = 274
      Top = 10
      Caption = 'CorpAct Type'
      Style.HotTrack = False
    end
    object txtCorpActType: TcxLabel
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
    object cxDBLabel5: TcxDBLabel
      Left = 88
      Top = 118
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
    object cxDBLabel6: TcxDBLabel
      Left = 196
      Top = 118
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
    object cxDBLabel7: TcxDBLabel
      Left = 88
      Top = 91
      DataBinding.DataField = 'RIGHTCODE'
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
    object cxDBLabel8: TcxDBLabel
      Left = 215
      Top = 91
      DataBinding.DataField = 'RIGTHNAME'
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
    object cxDBLabel9: TcxDBLabel
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
    object cxDBLabel10: TcxDBLabel
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
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
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
    object dxLayoutItem1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Stock Code'
      Parent = dxLayoutGroup2
      Control = cxDBLabel2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'cxDBLabel3'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup2
      Control = cxDBLabel3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group5
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
      Parent = dxLayoutControl1Group5
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
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Exercise Period'
      Parent = dxLayoutControl1Group7
      Control = cxDBLabel5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'to'
      Parent = dxLayoutControl1Group7
      Control = cxDBLabel6
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'Right Code'
      Parent = dxLayoutControl1Group8
      Control = cxDBLabel7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'cxDBLabel8'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group8
      Control = cxDBLabel8
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = ', Exercise Distribution Period'
      Parent = dxLayoutControl1Group7
      Control = cxDBLabel9
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'to'
      Parent = dxLayoutControl1Group7
      Control = cxDBLabel10
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 402
    Width = 1042
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    ExplicitTop = 422
    ExplicitWidth = 993
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
    end
    object btnCancel: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
    end
    object dbNavLog: TDBNavigator
      Left = 928
      Top = 10
      Width = 100
      Height = 25
      DataSource = dsSubject
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Kind = dbnHorizontal
      TabOrder = 2
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcNavLog: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'DBNavigator1'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = dbNavLog
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 451
    Width = 1042
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 130
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitWidth = 993
  end
  object tabEditorData: TTabSet
    Left = 0
    Top = 381
    Width = 1042
    Height = 21
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    SoftTop = True
    Style = tsSoftTabs
    Tabs.Strings = (
      'New Data'
      'Current Data')
    TabIndex = 0
    Visible = False
    ExplicitTop = 427
    ExplicitWidth = 993
  end
  object pnlCorpActEnt: TPanel
    Left = 0
    Top = 157
    Width = 1042
    Height = 224
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitWidth = 993
    ExplicitHeight = 270
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 1042
      Height = 224
      Align = alClient
      PopupMenu = PopupMenu1
      TabOrder = 0
      ExplicitWidth = 993
      ExplicitHeight = 270
      object gvwMonitoring: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
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
  object dsSubject: TDataSource
    Left = 408
    Top = 250
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
    ProviderName = 'dspN_dmSettlement_qryExerciseMonitoring'
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
      CheckPermission = False
    end
    object actGenerateBTInstruction: TNAction
      Category = 'NActions'
      Caption = 'Book Transfer Execution'
      CheckPermission = False
    end
    object actGenerateBTToExcel: TNAction
      Category = 'NActions'
      Caption = 'Book Transfer To Excel'
      CheckPermission = False
    end
    object actGenerateFileVCA: TNAction
      Category = 'NActions'
      Caption = 'Generate File VCA'
      CheckPermission = False
    end
    object actCorpactDistributionProcess: TNAction
      Category = 'NActions'
      Caption = 'Exercise Distribution Process'
      CheckPermission = False
    end
    object actTakeOverToFinance: TNAction
      Category = 'NActions'
      Caption = 'Finance Checking'
      CheckPermission = False
    end
    object actCancelCorpactDistProcess: TNAction
      Category = 'NActions'
      Caption = 'Cancel Payment Process'
      CheckPermission = False
    end
    object actWithdrawRight: TNAction
      Category = 'NActions'
      Caption = 'Withdrawal Right Exercise'
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
    DataSet = frmCorpActList.cdsCorpActExer
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
    Left = 240
    Top = 384
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
    ProviderName = 'dspN_dmSettlement_qryCorpactExer'
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
    ProviderName = 'dspN_dmSettlement_qryVCA'
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
