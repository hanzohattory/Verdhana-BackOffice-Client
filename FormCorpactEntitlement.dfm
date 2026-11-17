inherited frmCorpActEntitlement: TfrmCorpActEntitlement
  BorderStyle = bsSizeable
  Caption = 'Corporate Action Entitlement'
  ClientHeight = 487
  ClientWidth = 1002
  OnClose = FormClose
  ExplicitWidth = 1018
  ExplicitHeight = 526
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1002
    Height = 130
    Align = alTop
    ExplicitWidth = 1002
    ExplicitHeight = 130
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
    object cxDBDateEdit1: TcxDBDateEdit [6]
      Left = 647
      Top = 55
      DataBinding.DataField = 'PAYDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 95
    end
    object cxDBDateEdit2: TcxDBDateEdit [7]
      Left = 647
      Top = 82
      DataBinding.DataField = 'DISTDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 95
    end
    object btnGenerateEnt: TcxButton [8]
      Left = 760
      Top = 10
      Width = 204
      Height = 25
      Caption = 'Generate Entitlement'
      TabOrder = 13
      OnClick = btnGenerateEntClick
    end
    object cxDBLabel5: TcxDBLabel [9]
      Left = 70
      Top = 91
      DataBinding.DataField = 'BASE_STK_RATIO'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
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
      Width = 50
      AnchorX = 120
    end
    object cxDBLabel6: TcxDBLabel [10]
      Left = 135
      Top = 91
      DataBinding.DataField = 'GET_STK_RT'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
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
      Width = 50
    end
    object cxDBLabel7: TcxDBLabel [11]
      Left = 255
      Top = 91
      DataBinding.DataField = 'BASE_CASH_RATIO'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
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
      Width = 50
      AnchorX = 305
    end
    object cxDBLabel8: TcxDBLabel [12]
      Left = 320
      Top = 91
      DataBinding.DataField = 'GET_CASH_RATIO'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
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
      Width = 50
    end
    object cxDBDateEdit3: TcxDBDateEdit [13]
      Left = 647
      Top = 28
      DataBinding.DataField = 'RECDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 95
    end
    object chkDiff: TcxCheckBox [14]
      Left = 760
      Top = 41
      Caption = 'Show Different Only'
      Properties.OnEditValueChanged = chkDiffPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
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
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ISIN Code'
      Control = cxDBLabel4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 180
      ControlOptions.ShowBorder = False
      Index = 2
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
      Parent = dxLayoutControl1Group4
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
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object PaymentDate: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Payment Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object DistributionDate: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Distribution Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnGenerateEnt
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 204
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Stock Ratio'
      Control = cxDBLabel5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = ':'
      Control = cxDBLabel6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = ', Cash Ratio'
      Control = cxDBLabel7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = ':'
      Control = cxDBLabel8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Recording Date'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      Visible = False
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkDiff
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 204
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 418
    Width = 1002
    ExplicitTop = 418
    ExplicitWidth = 1002
    inherited btnOK: TcxButton
      Caption = '&Ok'
    end
    inherited dbNavLog: TDBNavigator
      Left = 888
      Hints.Strings = ()
      ExplicitLeft = 888
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 467
    Width = 1002
    ExplicitTop = 467
    ExplicitWidth = 1002
  end
  inherited tabEditorData: TTabSet
    Top = 397
    Width = 1002
    ExplicitTop = 397
    ExplicitWidth = 1002
  end
  object pnlCorpActEnt: TPanel [4]
    Left = 0
    Top = 130
    Width = 1002
    Height = 267
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 1002
      Height = 267
      Align = alClient
      PopupMenu = PopupMenu1
      TabOrder = 0
      object gvwEntetlement: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsCorpActEntList
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.####;(#,##0.####)'
            Kind = skSum
            FieldName = 'CA_AMT'
            Column = gvwEntetlementCA_AMT
          end
          item
            Format = '#,##0.####;(#,##0.####)'
            Kind = skSum
            FieldName = 'CA_NETAMT'
            Column = gvwEntetlementCA_NETAMT
          end
          item
            Format = '#,##0.####;(#,##0.####)'
            Kind = skSum
            FieldName = 'TAXAMT'
            Column = gvwEntetlementTAXAMT
          end
          item
            Format = '#,##0;(#,##0);0'
            Kind = skSum
            FieldName = 'AV_QTY'
            Column = gvwEntetlementAV_QTY
          end
          item
            Format = '#,##0;(#,##0);0'
            Kind = skSum
            FieldName = 'CA_QTY'
            Column = gvwEntetlementCA_QTY
          end
          item
            Format = '#,##0.####;(#,##0.####)'
            Kind = skSum
            FieldName = 'CA_PRICE'
            Column = gvwEntetlementCA_PRICE
          end
          item
            Format = 'Count #,##0'
            Kind = skCount
            FieldName = 'ACCNO'
            Column = gvwEntetlementACCNO
          end
          item
            Format = '#,##0;(#,##0);0'
            Kind = skSum
            FieldName = 'STOCKTAXAMT'
            Column = gvwEntetlementSTOCKTAXAMT
          end
          item
            Format = '#,##0;(#,##0);0'
            Kind = skSum
            FieldName = 'CA_NETQTY'
            Column = gvwEntetlementCA_NETQTY
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle2
        Bands = <
          item
            Caption = 'Bofis Data'
          end>
        object gvwEntetlementCAID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CAID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwEntetlementACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwEntetlementACCNO: TcxGridDBBandedColumn
          Caption = 'A/C Number'
          DataBinding.FieldName = 'ACCNO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 64
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwEntetlementACCNAME: TcxGridDBBandedColumn
          Caption = 'A/C Name'
          DataBinding.FieldName = 'ACCNAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 220
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwEntetlementCUSTODYNO: TcxGridDBBandedColumn
          Caption = 'Custody No.'
          DataBinding.FieldName = 'CUSTODYNO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwEntetlementSTOCKID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCKID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwEntetlementSTOCKCODE: TcxGridDBBandedColumn
          Caption = 'Stock Code'
          DataBinding.FieldName = 'STOCKCODE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwEntetlementACCTYPE: TcxGridDBBandedColumn
          Caption = 'Acc Type'
          DataBinding.FieldName = 'ACCTYPE'
          Visible = False
          Width = 51
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwEntetlementAV_QTY: TcxGridDBBandedColumn
          Caption = 'Entitlement (Qty)'
          DataBinding.FieldName = 'AV_QTY'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          Width = 88
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwEntetlementCA_QTY: TcxGridDBBandedColumn
          Caption = 'Entitlement (Qty)'
          DataBinding.FieldName = 'CA_QTY'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          Width = 88
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwEntetlementCA_AMT: TcxGridDBBandedColumn
          Caption = 'Entitlement (IDR)'
          DataBinding.FieldName = 'CA_AMT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.####;(#,##0.####)'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          Width = 88
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwEntetlementTAXRATE: TcxGridDBBandedColumn
          Caption = 'Tax Rate'
          DataBinding.FieldName = 'TAXRATE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.####;(#,##0.####)'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwEntetlementTAXAMT: TcxGridDBBandedColumn
          Caption = 'Tax (IDR)'
          DataBinding.FieldName = 'TAXAMT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.####;(#,##0.####)'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          Width = 86
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object gvwEntetlementCA_NETAMT: TcxGridDBBandedColumn
          Caption = 'Net Entitlement (IDR)'
          DataBinding.FieldName = 'CA_NETAMT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.####;(#,##0.####)'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          Width = 110
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object gvwEntetlementCDIV_PAYDATE: TcxGridDBBandedColumn
          Caption = 'Payment Date'
          DataBinding.FieldName = 'CDIV_PAYDATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Width = 95
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object gvwEntetlementSTAT: TcxGridDBBandedColumn
          Caption = 'Status'
          DataBinding.FieldName = 'STAT'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 43
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object gvwEntetlementDIV_PAID: TcxGridDBBandedColumn
          Caption = 'Paid Status'
          DataBinding.FieldName = 'DIV_PAID'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 110
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object gvwEntetlementMODDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object gvwEntetlementMODUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object gvwEntetlementAPPDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object gvwEntetlementAPPUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object gvwEntetlementUNDER4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object gvwEntetlementUNDER4YDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
        object gvwEntetlementNOTES4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object gvwEntetlementISDEL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 32
          Position.RowIndex = 0
        end
        object gvwEntetlementID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 33
          Position.RowIndex = 0
        end
        object gvwEntetlementAVGPRICE: TcxGridDBBandedColumn
          Caption = 'Avg Price'
          DataBinding.FieldName = 'AVGPRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.####;(#,##0.####)'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taRightJustify
          Width = 110
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwEntetlementCA_PRICE: TcxGridDBBandedColumn
          Caption = 'Entitlement (Price)'
          DataBinding.FieldName = 'CA_PRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.####;(#,##0.####)'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          Width = 93
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwEntetlementPAID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PAID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 34
          Position.RowIndex = 0
        end
        object gvwEntetlementPAID_DATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PAID_DATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 35
          Position.RowIndex = 0
        end
        object gvwEntetlementCCYCODE: TcxGridDBBandedColumn
          Caption = 'Currency'
          DataBinding.FieldName = 'CCYCODE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 54
          Position.BandIndex = 0
          Position.ColIndex = 36
          Position.RowIndex = 0
        end
        object gvwEntetlementAVAIL_EXER_QTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AVAIL_EXER_QTY'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 37
          Position.RowIndex = 0
        end
        object gvwEntetlementTAXPCNT: TcxGridDBBandedColumn
          Caption = 'Tax (%)'
          DataBinding.FieldName = 'TAXPCNT'
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwEntetlementSEQID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SEQID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 38
          Position.RowIndex = 0
        end
        object gvwEntetlementCASH_VOUCHERID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_VOUCHERID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 39
          Position.RowIndex = 0
        end
        object gvwEntetlementISPARENT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISPARENT'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 40
          Position.RowIndex = 0
        end
        object gvwEntetlementEXCH_CA_NETAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EXCH_CA_NETAMT'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 41
          Position.RowIndex = 0
        end
        object gvwEntetlementRCVD: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RCVD'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 42
          Position.RowIndex = 0
        end
        object gvwEntetlementSDLV: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SDLV'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 43
          Position.RowIndex = 0
        end
        object gvwEntetlementRECON: TcxGridDBBandedColumn
          Caption = 'Recon'
          DataBinding.FieldName = 'RECON'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 36
          Position.BandIndex = 0
          Position.ColIndex = 44
          Position.RowIndex = 0
        end
        object gvwEntetlementWT_INSTRUCTION: TcxGridDBBandedColumn
          Caption = 'WT Instruction'
          DataBinding.FieldName = 'WT_INSTRUCTION'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 45
          Position.RowIndex = 0
        end
        object gvwEntetlementCENO: TcxGridDBBandedColumn
          Caption = 'CE No'
          DataBinding.FieldName = 'CENO'
          Position.BandIndex = 0
          Position.ColIndex = 46
          Position.RowIndex = 0
        end
        object gvwEntetlementINVTYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INVTYPE'
          Position.BandIndex = 0
          Position.ColIndex = 47
          Position.RowIndex = 0
        end
        object gvwEntetlementSTOCKTAXAMT: TcxGridDBBandedColumn
          Caption = 'Tax (Qty)'
          DataBinding.FieldName = 'STOCKTAXAMT'
          HeaderAlignmentHorz = taRightJustify
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object gvwEntetlementACCCUSTODYID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCCUSTODYID'
          Position.BandIndex = 0
          Position.ColIndex = 48
          Position.RowIndex = 0
        end
        object gvwEntetlementCUSTODYCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTODYCODE'
          Position.BandIndex = 0
          Position.ColIndex = 49
          Position.RowIndex = 0
        end
        object gvwEntetlementCUSTODYACCNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTODYACCNO'
          Position.BandIndex = 0
          Position.ColIndex = 50
          Position.RowIndex = 0
        end
        object gvwEntetlementCUSTODYACCNAME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTODYACCNAME'
          Position.BandIndex = 0
          Position.ColIndex = 51
          Position.RowIndex = 0
        end
        object gvwEntetlementSALESCODE: TcxGridDBBandedColumn
          Caption = 'Sales Code'
          DataBinding.FieldName = 'SALESCODE'
          Width = 58
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwEntetlementEXER_AMT: TcxGridDBBandedColumn
          Caption = 'Exercise (IDR)'
          DataBinding.FieldName = 'EXER_AMT'
          Visible = False
          Width = 123
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwEntetlementEXERQTY: TcxGridDBBandedColumn
          Caption = 'Exercise (Qty)'
          DataBinding.FieldName = 'EXERQTY'
          Visible = False
          Width = 96
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwEntetlementCANO: TcxGridDBBandedColumn
          Caption = 'CorpAct No'
          DataBinding.FieldName = 'CANO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 52
          Position.RowIndex = 0
        end
        object gvwEntetlementCATYPE: TcxGridDBBandedColumn
          Caption = 'CorpAct Type'
          DataBinding.FieldName = 'CATYPE'
          RepositoryItem = dmGlobal.luCAType
          Visible = False
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 53
          Position.RowIndex = 0
        end
        object gvwEntetlementSTOCKNAME: TcxGridDBBandedColumn
          Caption = 'Stock Name'
          DataBinding.FieldName = 'STOCKNAME'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 54
          Position.RowIndex = 0
        end
        object gvwEntetlementISINCODE: TcxGridDBBandedColumn
          Caption = 'ISIN Code'
          DataBinding.FieldName = 'ISINCODE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 55
          Position.RowIndex = 0
        end
        object gvwEntetlementBASE_STK_RATIO: TcxGridDBBandedColumn
          Caption = 'Base Stock Ratio'
          DataBinding.FieldName = 'BASE_STK_RATIO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 56
          Position.RowIndex = 0
        end
        object gvwEntetlementGET_STK_RT: TcxGridDBBandedColumn
          Caption = 'Get Stock Ratio'
          DataBinding.FieldName = 'GET_STK_RT'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 57
          Position.RowIndex = 0
        end
        object gvwEntetlementGET_CASH_RATIO: TcxGridDBBandedColumn
          Caption = 'Get Cash Ratio'
          DataBinding.FieldName = 'GET_CASH_RATIO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 58
          Position.RowIndex = 0
        end
        object gvwEntetlementBASE_CASH_RATIO: TcxGridDBBandedColumn
          Caption = 'Base Cash Ratio'
          DataBinding.FieldName = 'BASE_CASH_RATIO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 59
          Position.RowIndex = 0
        end
        object gvwEntetlementDISTDATE: TcxGridDBBandedColumn
          Caption = 'Distribution Date'
          DataBinding.FieldName = 'DISTDATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 60
          Position.RowIndex = 0
        end
        object gvwEntetlementPAYDATE: TcxGridDBBandedColumn
          Caption = 'Payment Date'
          DataBinding.FieldName = 'PAYDATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 61
          Position.RowIndex = 0
        end
        object gvwEntetlementCA_NETQTY: TcxGridDBBandedColumn
          Caption = 'Net Entitlement (Qty)'
          DataBinding.FieldName = 'CA_NETQTY'
          HeaderAlignmentHorz = taRightJustify
          Width = 110
          Position.BandIndex = 0
          Position.ColIndex = 21
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
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 216
    Top = 160
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsCorpActEnt: TDataSource
    DataSet = cdsCorpActEnt
    Left = 319
    Top = 231
  end
  object cdsCorpActEnt: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmSettlement_qryCorpAct_Ent'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsCorpActEntCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 315
    Top = 186
    object cdsCorpActEntCAID: TLargeintField
      FieldName = 'CAID'
      Required = True
    end
    object cdsCorpActEntACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCorpActEntACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCorpActEntACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCorpActEntCUSTODYNO: TStringField
      FieldName = 'CUSTODYNO'
    end
    object cdsCorpActEntSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsCorpActEntSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsCorpActEntACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 1
    end
    object cdsCorpActEntAV_QTY: TFloatField
      FieldName = 'AV_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntCA_QTY: TFloatField
      FieldName = 'CA_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntCA_AMT: TFloatField
      FieldName = 'CA_AMT'
      DisplayFormat = '#,##0.######;(#,##0.######);0'
    end
    object cdsCorpActEntTAXRATE: TFloatField
      FieldName = 'TAXRATE'
      OnChange = cdsCorpActEntTAXRATEChange
      DisplayFormat = '#,##0.######;(#,##0.######);0'
    end
    object cdsCorpActEntTAXAMT: TFloatField
      FieldName = 'TAXAMT'
      DisplayFormat = '#,##0.######;(#,##0.######);0'
    end
    object cdsCorpActEntCA_NETAMT: TFloatField
      FieldName = 'CA_NETAMT'
      DisplayFormat = '#,##0.######;(#,##0.######);0'
    end
    object cdsCorpActEntCDIV_PAYDATE: TDateField
      FieldName = 'CDIV_PAYDATE'
    end
    object cdsCorpActEntSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCorpActEntDIV_PAID: TStringField
      FieldName = 'DIV_PAID'
      Size = 1
    end
    object cdsCorpActEntMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCorpActEntMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCorpActEntAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCorpActEntAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCorpActEntUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCorpActEntUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCorpActEntNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCorpActEntISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCorpActEntID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCorpActEntAVGPRICE: TFloatField
      FieldName = 'AVGPRICE'
    end
    object cdsCorpActEntCA_PRICE: TFloatField
      FieldName = 'CA_PRICE'
    end
    object cdsCorpActEntPAID: TStringField
      FieldName = 'PAID'
      Size = 1
    end
    object cdsCorpActEntPAID_DATE: TDateField
      FieldName = 'PAID_DATE'
    end
    object cdsCorpActEntCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCorpActEntAVAIL_EXER_QTY: TFloatField
      FieldName = 'AVAIL_EXER_QTY'
    end
    object cdsCorpActEntTAXPCNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TAXPCNT'
      DisplayFormat = '#,##0.######;(#,##0.######);0'
      Calculated = True
    end
    object cdsCorpActEntSEQID: TLargeintField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsCorpActEntCASH_VOUCHERID: TLargeintField
      FieldName = 'CASH_VOUCHERID'
    end
    object cdsCorpActEntISPARENT: TLargeintField
      FieldName = 'ISPARENT'
    end
    object cdsCorpActEntEXCH_CA_NETAMT: TFloatField
      FieldName = 'EXCH_CA_NETAMT'
    end
    object cdsCorpActEntRCVD: TStringField
      FieldName = 'RCVD'
      Size = 1
    end
    object cdsCorpActEntSDLV: TStringField
      FieldName = 'SDLV'
      Size = 1
    end
    object cdsCorpActEntRECON: TStringField
      DisplayLabel = 'Recon'
      FieldName = 'RECON'
      Size = 1
    end
    object cdsCorpActEntWT_INSTRUCTION: TStringField
      FieldName = 'WT_INSTRUCTION'
      Size = 1
    end
    object cdsCorpActEntCENO: TStringField
      FieldName = 'CENO'
    end
    object cdsCorpActEntINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 1
    end
    object cdsCorpActEntSTOCKTAXAMT: TFloatField
      FieldName = 'STOCKTAXAMT'
    end
    object cdsCorpActEntCA_NETQTY: TFloatField
      FieldName = 'CA_NETQTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object ActionList1: TActionList
    Left = 498
    Top = 261
    object actSendEmail: TNAction
      Category = 'NActions'
      Caption = 'Send Email'
      OnExecute = actSendEmailExecute
      CheckPermission = False
    end
    object actPrintPreview: TNAction
      Category = 'NActions'
      Caption = 'Print Preview'
      OnExecute = actPrintPreviewExecute
      CheckPermission = False
    end
    object actGenerateToExcelFile: TNAction
      Category = 'NActions'
      Caption = 'Generate To Excel File'
      Enabled = False
      Visible = False
      OnExecute = actGenerateToExcelFileExecute
      OnUpdate = actGenerateToExcelFileUpdate
      CheckPermission = False
    end
    object actEditTaxSubAcc: TNAction
      Category = 'NActions'
      Caption = 'Edit Tax SOP Member Account'
      Enabled = False
      Visible = False
      OnExecute = actEditTaxSubAccExecute
      CheckPermission = False
    end
    object actExportToExcel: TNAction
      Category = 'NActions'
      Caption = 'Export To Excel'
      OnExecute = actExportToExcelExecute
      CheckPermission = False
    end
    object actEditTaxRate: TNAction
      Category = 'NActions'
      Caption = 'Modify'
      OnExecute = actEditTaxRateExecute
      CheckPermission = False
    end
    object actCheck: TNAction
      Category = 'NActions'
      Caption = 'Check Selected'
      OnExecute = actCheckExecute
      CheckPermission = False
    end
    object actReconcileAll: TNAction
      Category = 'NActions'
      Caption = 'Reconcile All'
      OnExecute = actReconcileAllExecute
      CheckPermission = False
    end
    object actReconcileEnt: TNAction
      Category = 'NActions'
      Caption = 'Upload KSEI Entitlement'
      OnExecute = actReconcileEntExecute
      CheckPermission = False
    end
    object actReconSelected: TNAction
      Category = 'NActions'
      Caption = 'Recon Selected Entitlement'
      OnExecute = actReconSelectedExecute
      CheckPermission = False
    end
    object actReconManual: TNAction
      Category = 'NActions'
      Caption = 'Reconcile Manual'
      OnExecute = actReconManualExecute
      CheckPermission = False
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 495
    Top = 207
    object SendEmail1: TMenuItem
      Action = actSendEmail
    end
    object PrintPreview1: TMenuItem
      Action = actPrintPreview
    end
    object GenerateToExcelFile1: TMenuItem
      Action = actGenerateToExcelFile
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object EditTaxRate1: TMenuItem
      Action = actEditTaxRate
    end
    object EditTaxSubAccount1: TMenuItem
      Action = actEditTaxSubAcc
    end
    object CheckSelected1: TMenuItem
      Action = actCheck
      Visible = False
    end
    object ReconcileEntitlement1: TMenuItem
      Action = actReconcileEnt
    end
    object ReconSelectedEntitlement1: TMenuItem
      Action = actReconSelected
      Visible = False
    end
    object ReconcileAll: TMenuItem
      Action = actReconcileAll
      Visible = False
    end
    object ReconcileManual1: TMenuItem
      Action = actReconManual
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ExportToExcel1: TMenuItem
      Action = actExportToExcel
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
        DataType = ftString
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
        Value = 'Hello'
      end>
    Left = 408
    Top = 196
  end
  object cdsGenerateCorpActEnt: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryGenerateCorpactEnt'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 615
    Top = 168
    object cdsGenerateCorpActEntCAID: TLargeintField
      FieldName = 'CAID'
      Required = True
    end
    object cdsGenerateCorpActEntSEQID: TLargeintField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsGenerateCorpActEntACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsGenerateCorpActEntACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsGenerateCorpActEntACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsGenerateCorpActEntCUSTODYNO: TStringField
      FieldName = 'CUSTODYNO'
    end
    object cdsGenerateCorpActEntSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsGenerateCorpActEntSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsGenerateCorpActEntACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 1
    end
    object cdsGenerateCorpActEntAV_QTY: TFloatField
      FieldName = 'AV_QTY'
    end
    object cdsGenerateCorpActEntCA_QTY: TFloatField
      FieldName = 'CA_QTY'
    end
    object cdsGenerateCorpActEntCA_AMT: TFloatField
      FieldName = 'CA_AMT'
    end
    object cdsGenerateCorpActEntTAXRATE: TFloatField
      FieldName = 'TAXRATE'
    end
    object cdsGenerateCorpActEntTAXAMT: TFloatField
      FieldName = 'TAXAMT'
    end
    object cdsGenerateCorpActEntCA_NETAMT: TFloatField
      FieldName = 'CA_NETAMT'
    end
    object cdsGenerateCorpActEntCDIV_PAYDATE: TDateField
      FieldName = 'CDIV_PAYDATE'
    end
    object cdsGenerateCorpActEntSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsGenerateCorpActEntDIV_PAID: TStringField
      FieldName = 'DIV_PAID'
      Size = 1
    end
    object cdsGenerateCorpActEntCASH_VOUCHERID: TLargeintField
      FieldName = 'CASH_VOUCHERID'
    end
    object cdsGenerateCorpActEntAVGPRICE: TFloatField
      FieldName = 'AVGPRICE'
    end
    object cdsGenerateCorpActEntCA_PRICE: TFloatField
      FieldName = 'CA_PRICE'
    end
    object cdsGenerateCorpActEntPAID: TStringField
      FieldName = 'PAID'
      Size = 1
    end
    object cdsGenerateCorpActEntPAID_DATE: TDateField
      FieldName = 'PAID_DATE'
    end
    object cdsGenerateCorpActEntISPARENT: TLargeintField
      FieldName = 'ISPARENT'
    end
    object cdsGenerateCorpActEntCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsGenerateCorpActEntEXCH_CA_NETAMT: TFloatField
      FieldName = 'EXCH_CA_NETAMT'
    end
    object cdsGenerateCorpActEntRCVD: TStringField
      FieldName = 'RCVD'
      Size = 1
    end
    object cdsGenerateCorpActEntSDLV: TStringField
      FieldName = 'SDLV'
      Size = 1
    end
    object cdsGenerateCorpActEntAVAIL_EXER_QTY: TFloatField
      FieldName = 'AVAIL_EXER_QTY'
    end
    object cdsGenerateCorpActEntMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsGenerateCorpActEntMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsGenerateCorpActEntAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsGenerateCorpActEntAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsGenerateCorpActEntUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsGenerateCorpActEntUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsGenerateCorpActEntNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsGenerateCorpActEntISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsGenerateCorpActEntID: TLargeintField
      FieldName = 'ID'
    end
    object cdsGenerateCorpActEntSALESNAME: TStringField
      FieldName = 'SALESNAME'
      ReadOnly = True
      Size = 30
    end
    object cdsGenerateCorpActEntACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel 97-2003|*.xls'
    Left = 615
    Top = 213
  end
  object cdsCorpActEntList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCorpActEntList'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsCorpActEntListCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 318
    Top = 276
    object cdsCorpActEntListCAID: TLargeintField
      FieldName = 'CAID'
      Required = True
    end
    object cdsCorpActEntListSEQID: TLargeintField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsCorpActEntListACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCorpActEntListCENO: TStringField
      FieldName = 'CENO'
    end
    object cdsCorpActEntListACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCorpActEntListACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCorpActEntListCUSTODYNO: TStringField
      FieldName = 'CUSTODYNO'
    end
    object cdsCorpActEntListSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsCorpActEntListSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsCorpActEntListACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 1
    end
    object cdsCorpActEntListINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 1
    end
    object cdsCorpActEntListAV_QTY: TFloatField
      FieldName = 'AV_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListCA_QTY: TFloatField
      FieldName = 'CA_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListCA_AMT: TFloatField
      FieldName = 'CA_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListTAXRATE: TFloatField
      FieldName = 'TAXRATE'
      DisplayFormat = '#,##0.0000;(#,##0.0000);0.0000'
    end
    object cdsCorpActEntListTAXAMT: TFloatField
      FieldName = 'TAXAMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListSTOCKTAXAMT: TFloatField
      DisplayLabel = 'Stock Tax Amt'
      FieldName = 'STOCKTAXAMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListCA_NETAMT: TFloatField
      FieldName = 'CA_NETAMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListCDIV_PAYDATE: TDateField
      FieldName = 'CDIV_PAYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActEntListSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCorpActEntListDIV_PAID: TStringField
      FieldName = 'DIV_PAID'
      Size = 1
    end
    object cdsCorpActEntListCASH_VOUCHERID: TLargeintField
      FieldName = 'CASH_VOUCHERID'
    end
    object cdsCorpActEntListAVGPRICE: TFloatField
      FieldName = 'AVGPRICE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListCA_PRICE: TFloatField
      FieldName = 'CA_PRICE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListPAID: TStringField
      FieldName = 'PAID'
      Size = 1
    end
    object cdsCorpActEntListPAID_DATE: TDateField
      FieldName = 'PAID_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActEntListISPARENT: TLargeintField
      FieldName = 'ISPARENT'
    end
    object cdsCorpActEntListCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCorpActEntListEXCH_CA_NETAMT: TFloatField
      FieldName = 'EXCH_CA_NETAMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListRCVD: TStringField
      FieldName = 'RCVD'
      Size = 1
    end
    object cdsCorpActEntListSDLV: TStringField
      FieldName = 'SDLV'
      Size = 1
    end
    object cdsCorpActEntListAVAIL_EXER_QTY: TFloatField
      FieldName = 'AVAIL_EXER_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListRECON: TStringField
      FieldName = 'RECON'
      Size = 1
    end
    object cdsCorpActEntListWT_INSTRUCTION: TStringField
      FieldName = 'WT_INSTRUCTION'
      Size = 1
    end
    object cdsCorpActEntListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCorpActEntListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCorpActEntListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCorpActEntListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCorpActEntListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCorpActEntListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCorpActEntListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCorpActEntListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCorpActEntListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCorpActEntListACCCUSTODYID: TIntegerField
      DisplayLabel = 'Custody ID'
      FieldName = 'ACCCUSTODYID'
      ReadOnly = True
    end
    object cdsCorpActEntListCUSTODYCODE: TStringField
      DisplayLabel = 'Custody Code'
      FieldName = 'CUSTODYCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsCorpActEntListCUSTODYACCNO: TStringField
      DisplayLabel = 'Custody Account No'
      FieldName = 'CUSTODYACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsCorpActEntListCUSTODYACCNAME: TStringField
      DisplayLabel = 'Custody Account Name'
      FieldName = 'CUSTODYACCNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsCorpActEntListSALESCODE: TStringField
      FieldName = 'SALESCODE'
      ReadOnly = True
      Required = True
    end
    object cdsCorpActEntListEXER_AMT: TFloatField
      FieldName = 'EXER_AMT'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListEXERQTY: TFloatField
      FieldName = 'EXERQTY'
      ReadOnly = True
    end
    object cdsCorpActEntListStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'CANO'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'CANO'
      KeyFields = 'CAID'
      Lookup = True
    end
    object cdsCorpActEntListStringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'CATYPE'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'CATYPE'
      KeyFields = 'CAID'
      Size = 1
      Lookup = True
    end
    object cdsCorpActEntListSTOCKNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCKNAME'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'STOCKNAME'
      KeyFields = 'CAID'
      Size = 100
      Lookup = True
    end
    object cdsCorpActEntListISINCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'ISINCODE'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'ISINCODE'
      KeyFields = 'CAID'
      Lookup = True
    end
    object cdsCorpActEntListBASE_STK_RATIO: TFloatField
      FieldKind = fkLookup
      FieldName = 'BASE_STK_RATIO'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'BASE_STK_RATIO'
      KeyFields = 'CAID'
      Lookup = True
    end
    object cdsCorpActEntListGET_STK_RT: TFloatField
      FieldKind = fkLookup
      FieldName = 'GET_STK_RT'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'GET_STK_RT'
      KeyFields = 'CAID'
      Lookup = True
    end
    object cdsCorpActEntListGET_CASH_RATIO: TFloatField
      FieldKind = fkLookup
      FieldName = 'GET_CASH_RATIO'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'GET_CASH_RATIO'
      KeyFields = 'CAID'
      Lookup = True
    end
    object cdsCorpActEntListBASE_CASH_RATIO: TFloatField
      FieldKind = fkLookup
      FieldName = 'BASE_CASH_RATIO'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'BASE_CASH_RATIO'
      KeyFields = 'CAID'
      Lookup = True
    end
    object cdsCorpActEntListDISTDATE: TDateField
      FieldKind = fkLookup
      FieldName = 'DISTDATE'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'DISTDATE'
      KeyFields = 'CAID'
      DisplayFormat = 'dd mmm yyyy'
      Lookup = True
    end
    object cdsCorpActEntListPAYDATE: TDateField
      FieldKind = fkLookup
      FieldName = 'PAYDATE'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'PAYDATE'
      KeyFields = 'CAID'
      DisplayFormat = 'dd mmm yyyy'
      Lookup = True
    end
    object cdsCorpActEntListCA_NETQTY: TFloatField
      FieldName = 'CA_NETQTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListTAXPCNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TAXPCNT'
      DisplayFormat = '#,##0.######;(#,##0.######);0'
      Calculated = True
    end
    object cdsCorpActEntListC_TAXRATE: TFloatField
      DisplayLabel = 'Tax Rate'
      FieldName = 'C_TAXRATE'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListC_BALPOSITION: TFloatField
      DisplayLabel = 'Balance Position'
      FieldName = 'C_BALPOSITION'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListC_INSTRUMENT: TStringField
      DisplayLabel = 'Instrument'
      FieldName = 'C_INSTRUMENT'
      ReadOnly = True
      Size = 30
    end
    object cdsCorpActEntListC_GROSSPROCEED: TFloatField
      DisplayLabel = 'Gross Proceed'
      FieldName = 'C_GROSSPROCEED'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListC_PROCEEDTAX: TFloatField
      DisplayLabel = 'Proceed Tax'
      FieldName = 'C_PROCEEDTAX'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListC_NETPROCEED: TFloatField
      DisplayLabel = 'Net Proceed'
      FieldName = 'C_NETPROCEED'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpActEntListC_ACCOUNTID: TStringField
      DisplayLabel = 'Account Description'
      FieldName = 'C_ACCOUNTID'
      ReadOnly = True
      Size = 255
    end
  end
  object dsCorpActEntList: TDataSource
    DataSet = cdsCorpActEntList
    Left = 209
    Top = 271
  end
  object cdsCorpActAnno: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CAID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmSettlement_qryCorpAct_Anno'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 152
    Top = 216
    object cdsCorpActAnnoCAID: TLargeintField
      FieldName = 'CAID'
      Required = True
    end
    object cdsCorpActAnnoCANO: TStringField
      FieldName = 'CANO'
    end
    object cdsCorpActAnnoCATYPE: TStringField
      FieldName = 'CATYPE'
      Size = 1
    end
    object cdsCorpActAnnoSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsCorpActAnnoSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsCorpActAnnoSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsCorpActAnnoISINCODE: TStringField
      FieldName = 'ISINCODE'
    end
    object cdsCorpActAnnoBASE_STK_RATIO: TFloatField
      FieldName = 'BASE_STK_RATIO'
    end
    object cdsCorpActAnnoGET_STK_RT: TFloatField
      FieldName = 'GET_STK_RT'
    end
    object cdsCorpActAnnoBASE_CASH_RATIO: TFloatField
      FieldName = 'BASE_CASH_RATIO'
    end
    object cdsCorpActAnnoGET_CASH_RATIO: TFloatField
      FieldName = 'GET_CASH_RATIO'
    end
    object cdsCorpActAnnoBASE_QTY_PRICE_RATIO: TFloatField
      FieldName = 'BASE_QTY_PRICE_RATIO'
    end
    object cdsCorpActAnnoEXER_PRICE: TFloatField
      FieldName = 'EXER_PRICE'
    end
    object cdsCorpActAnnoWR_QTY_PRICE_RATIO: TFloatField
      FieldName = 'WR_QTY_PRICE_RATIO'
    end
    object cdsCorpActAnnoWR_EXER_PRICE: TFloatField
      FieldName = 'WR_EXER_PRICE'
    end
    object cdsCorpActAnnoRND_CALC_MODE: TStringField
      FieldName = 'RND_CALC_MODE'
      Size = 1
    end
    object cdsCorpActAnnoLOCAL_TAX: TFloatField
      FieldName = 'LOCAL_TAX'
    end
    object cdsCorpActAnnoFOR_TAX: TFloatField
      FieldName = 'FOR_TAX'
    end
    object cdsCorpActAnnoRIGHTID: TIntegerField
      FieldName = 'RIGHTID'
    end
    object cdsCorpActAnnoRIGHTCODE: TStringField
      FieldName = 'RIGHTCODE'
    end
    object cdsCorpActAnnoWARRANTID: TIntegerField
      FieldName = 'WARRANTID'
    end
    object cdsCorpActAnnoWAARANTCODE: TStringField
      FieldName = 'WAARANTCODE'
    end
    object cdsCorpActAnnoNGRG_CUMDATE: TDateField
      FieldName = 'NGRG_CUMDATE'
    end
    object cdsCorpActAnnoTN_CUMDATE: TDateField
      FieldName = 'TN_CUMDATE'
    end
    object cdsCorpActAnnoNGRG_EXDATE: TDateField
      FieldName = 'NGRG_EXDATE'
    end
    object cdsCorpActAnnoTN_EXDATE: TDateField
      FieldName = 'TN_EXDATE'
    end
    object cdsCorpActAnnoRECDATE: TDateField
      FieldName = 'RECDATE'
    end
    object cdsCorpActAnnoDISTDATE: TDateField
      FieldName = 'DISTDATE'
    end
    object cdsCorpActAnnoPAYDATE: TDateField
      FieldName = 'PAYDATE'
    end
    object cdsCorpActAnnoST_TRD_NOMDATE: TDateField
      FieldName = 'ST_TRD_NOMDATE'
    end
    object cdsCorpActAnnoLAST_OLD_NOMDATE: TDateField
      FieldName = 'LAST_OLD_NOMDATE'
    end
    object cdsCorpActAnnoRI_STR_LISTDATE: TDateField
      FieldName = 'RI_STR_LISTDATE'
    end
    object cdsCorpActAnnoRI_END_LISDATE: TDateField
      FieldName = 'RI_END_LISDATE'
    end
    object cdsCorpActAnnoRI_STR_TRDDATE: TDateField
      FieldName = 'RI_STR_TRDDATE'
    end
    object cdsCorpActAnnoRI_END_TRDDATE: TDateField
      FieldName = 'RI_END_TRDDATE'
    end
    object cdsCorpActAnnoRI_STR_EXERDATE: TDateField
      FieldName = 'RI_STR_EXERDATE'
    end
    object cdsCorpActAnnoRI_END_EXERDATE: TDateField
      FieldName = 'RI_END_EXERDATE'
    end
    object cdsCorpActAnnoSTR_DISTDATE: TDateField
      FieldName = 'STR_DISTDATE'
    end
    object cdsCorpActAnnoEND_DISTDATE: TDateField
      FieldName = 'END_DISTDATE'
    end
    object cdsCorpActAnnoRI_LASTPAY_DATE: TDateField
      FieldName = 'RI_LASTPAY_DATE'
    end
    object cdsCorpActAnnoALLOTMENT_DATE: TDateField
      FieldName = 'ALLOTMENT_DATE'
    end
    object cdsCorpActAnnoREFUND_DATE: TDateField
      FieldName = 'REFUND_DATE'
    end
    object cdsCorpActAnnoRGNG_WR_STR_TRDDATE: TDateField
      FieldName = 'RGNG_WR_STR_TRDDATE'
    end
    object cdsCorpActAnnoTN_WR_STR_TRDDATE: TDateField
      FieldName = 'TN_WR_STR_TRDDATE'
    end
    object cdsCorpActAnnoWR_STR_EXERDATE: TDateField
      FieldName = 'WR_STR_EXERDATE'
    end
    object cdsCorpActAnnoWR_END_EXERDATE: TDateField
      FieldName = 'WR_END_EXERDATE'
    end
    object cdsCorpActAnnoWR_EXPDATE: TDateField
      FieldName = 'WR_EXPDATE'
    end
    object cdsCorpActAnnoCA_DESC: TStringField
      FieldName = 'CA_DESC'
      Size = 100
    end
    object cdsCorpActAnnoCASHDIV_RECVSTAT: TStringField
      FieldName = 'CASHDIV_RECVSTAT'
      Size = 1
    end
    object cdsCorpActAnnoCASHDIV_RCV: TDateField
      FieldName = 'CASHDIV_RCV'
    end
    object cdsCorpActAnnoENTITLEMENT: TStringField
      FieldName = 'ENTITLEMENT'
      Size = 1
    end
    object cdsCorpActAnnoEXERCISES_CLOSE: TStringField
      FieldName = 'EXERCISES_CLOSE'
      Size = 1
    end
    object cdsCorpActAnnoSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCorpActAnnoRI_EXERCISES: TStringField
      FieldName = 'RI_EXERCISES'
      Size = 1
    end
    object cdsCorpActAnnoRI_STOCK_DIST: TStringField
      FieldName = 'RI_STOCK_DIST'
      Size = 1
    end
    object cdsCorpActAnnoRI_EXPIRED: TStringField
      FieldName = 'RI_EXPIRED'
      Size = 1
    end
    object cdsCorpActAnnoRI_EXER_ADM_FEE: TFloatField
      FieldName = 'RI_EXER_ADM_FEE'
    end
    object cdsCorpActAnnoRI_ISINCODE: TStringField
      FieldName = 'RI_ISINCODE'
    end
    object cdsCorpActAnnoWR_ISINCODE: TStringField
      FieldName = 'WR_ISINCODE'
    end
    object cdsCorpActAnnoWR_STR_TRDDATE: TDateField
      FieldName = 'WR_STR_TRDDATE'
    end
    object cdsCorpActAnnoBASE_RI_QTY: TFloatField
      FieldName = 'BASE_RI_QTY'
    end
    object cdsCorpActAnnoGET_RI_QTY: TFloatField
      FieldName = 'GET_RI_QTY'
    end
    object cdsCorpActAnnoRI_PRICE: TFloatField
      FieldName = 'RI_PRICE'
    end
    object cdsCorpActAnnoBASE_WR_QTY: TFloatField
      FieldName = 'BASE_WR_QTY'
    end
    object cdsCorpActAnnoGET_WR_QTY: TFloatField
      FieldName = 'GET_WR_QTY'
    end
    object cdsCorpActAnnoWR_PRICE: TFloatField
      FieldName = 'WR_PRICE'
    end
    object cdsCorpActAnnoNEW_STOCKID: TIntegerField
      FieldName = 'NEW_STOCKID'
    end
    object cdsCorpActAnnoNEW_STOCKCODE: TStringField
      FieldName = 'NEW_STOCKCODE'
    end
    object cdsCorpActAnnoNEW_STOCKNAME: TStringField
      FieldName = 'NEW_STOCKNAME'
      Size = 100
    end
    object cdsCorpActAnnoNEW_ISINCODE: TStringField
      FieldName = 'NEW_ISINCODE'
    end
    object cdsCorpActAnnoRIGTHNAME: TStringField
      FieldName = 'RIGTHNAME'
      Size = 100
    end
    object cdsCorpActAnnoWARRANTNAME: TStringField
      FieldName = 'WARRANTNAME'
      Size = 100
    end
    object cdsCorpActAnnoLASTCOUPON_DATE: TDateField
      FieldName = 'LASTCOUPON_DATE'
    end
    object cdsCorpActAnnoNEXTCOUPON_DATE: TDateField
      FieldName = 'NEXTCOUPON_DATE'
    end
    object cdsCorpActAnnoMATURITY_DATE: TDateField
      FieldName = 'MATURITY_DATE'
    end
    object cdsCorpActAnnoCOUPONDAYS: TIntegerField
      FieldName = 'COUPONDAYS'
    end
    object cdsCorpActAnnoINTEREST_RATE: TFloatField
      FieldName = 'INTEREST_RATE'
    end
    object cdsCorpActAnnoVOUCHERDATE: TDateTimeField
      FieldName = 'VOUCHERDATE'
    end
    object cdsCorpActAnnoCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCorpActAnnoSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsCorpActAnnoEXRATE: TFloatField
      FieldName = 'EXRATE'
    end
    object cdsCorpActAnnoBROKER_ACCBANKID: TLargeintField
      FieldName = 'BROKER_ACCBANKID'
    end
    object cdsCorpActAnnoWR_END_TRDDATE: TDateField
      FieldName = 'WR_END_TRDDATE'
    end
    object cdsCorpActAnnoFIRST_HANDOVER_DATE: TDateField
      FieldName = 'FIRST_HANDOVER_DATE'
    end
    object cdsCorpActAnnoSCND_HANDOVER_DATE: TDateField
      FieldName = 'SCND_HANDOVER_DATE'
    end
    object cdsCorpActAnnoCLOSING_PRICE: TFloatField
      FieldName = 'CLOSING_PRICE'
    end
    object cdsCorpActAnnoCOMPLAIN_DATE: TDateField
      FieldName = 'COMPLAIN_DATE'
    end
    object cdsCorpActAnnoEFFECTIVE_DATE: TDateField
      FieldName = 'EFFECTIVE_DATE'
    end
    object cdsCorpActAnnoRUPSLB_DATE: TDateField
      FieldName = 'RUPSLB_DATE'
    end
    object cdsCorpActAnnoSTR_IMPL_DATE: TDateField
      FieldName = 'STR_IMPL_DATE'
    end
    object cdsCorpActAnnoEND_IMPL_DATE: TDateField
      FieldName = 'END_IMPL_DATE'
    end
    object cdsCorpActAnnoSTR_TRADE_DATE: TDateField
      FieldName = 'STR_TRADE_DATE'
    end
    object cdsCorpActAnnoEND_TRADE_DATE: TDateField
      FieldName = 'END_TRADE_DATE'
    end
    object cdsCorpActAnnoMERGE_TRADE_DATE: TDateField
      FieldName = 'MERGE_TRADE_DATE'
    end
    object cdsCorpActAnnoSTR_TRADE_MERGE: TDateField
      FieldName = 'STR_TRADE_MERGE'
    end
    object cdsCorpActAnnoRECMERGE: TDateField
      FieldName = 'RECMERGE'
    end
    object cdsCorpActAnnoSHAREHOLDER_DATE: TDateField
      FieldName = 'SHAREHOLDER_DATE'
    end
    object cdsCorpActAnnoREPORT_DATE: TDateField
      FieldName = 'REPORT_DATE'
    end
    object cdsCorpActAnnoSTR_NEW_TRADE: TDateField
      FieldName = 'STR_NEW_TRADE'
    end
    object cdsCorpActAnnoEND_OLD_TRADE: TDateField
      FieldName = 'END_OLD_TRADE'
    end
    object cdsCorpActAnnoANNO_DATE: TDateField
      FieldName = 'ANNO_DATE'
    end
    object cdsCorpActAnnoSTR_RESCISSION_DATE: TDateField
      FieldName = 'STR_RESCISSION_DATE'
    end
    object cdsCorpActAnnoEND_RESCISSION_DATE: TDateField
      FieldName = 'END_RESCISSION_DATE'
    end
    object cdsCorpActAnnoROUNDSTOCK: TIntegerField
      FieldName = 'ROUNDSTOCK'
    end
    object cdsCorpActAnnoCASH_DVDPAY: TDateField
      FieldName = 'CASH_DVDPAY'
    end
    object cdsCorpActAnnoMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCorpActAnnoMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCorpActAnnoAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCorpActAnnoAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCorpActAnnoUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCorpActAnnoUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCorpActAnnoNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCorpActAnnoISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCorpActAnnoID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCorpActAnnoCASH_STAT: TStringField
      FieldName = 'CASH_STAT'
      Size = 1
    end
    object cdsCorpActAnnoSTOCK_STAT: TStringField
      FieldName = 'STOCK_STAT'
      Size = 1
    end
    object cdsCorpActAnnoCANCEL_EXERPAID: TStringField
      FieldName = 'CANCEL_EXERPAID'
      Size = 1
    end
  end
  object dsCorpActAnno: TDataSource
    DataSet = cdsCorpActAnno
    Left = 128
    Top = 288
  end
  object cdsBuatBantuCopyField: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 48
    Top = 192
    object cdsCorpActCAID: TLargeintField
      FieldKind = fkLookup
      FieldName = 'CAID'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'CAID'
      KeyFields = 'CAID'
      Required = True
      Lookup = True
    end
    object cdsCorpActCANO: TStringField
      FieldKind = fkLookup
      FieldName = 'CANO'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'CANO'
      KeyFields = 'CAID'
      Lookup = True
    end
    object cdsCorpActCATYPE: TStringField
      FieldKind = fkLookup
      FieldName = 'CATYPE'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'CATYPE'
      KeyFields = 'CAID'
      Size = 1
      Lookup = True
    end
    object cdsBuatBantuCopyFieldSTOCKCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCKCODE'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'STOCKCODE'
      KeyFields = 'CAID'
      Lookup = True
    end
    object cdsBuatBantuCopyFieldSTOCKNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCKNAME'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'STOCKNAME'
      KeyFields = 'CAID'
      Size = 100
      Lookup = True
    end
    object cdsBuatBantuCopyFieldISINCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'ISINCODE'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'ISINCODE'
      KeyFields = 'CAID'
      Lookup = True
    end
    object cdsBuatBantuCopyFieldBASE_STK_RATIO: TFloatField
      FieldKind = fkLookup
      FieldName = 'BASE_STK_RATIO'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'BASE_STK_RATIO'
      KeyFields = 'CAID'
      Lookup = True
    end
    object cdsBuatBantuCopyFieldGET_STK_RT: TFloatField
      FieldKind = fkLookup
      FieldName = 'GET_STK_RT'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'GET_STK_RT'
      KeyFields = 'CAID'
      Lookup = True
    end
    object cdsBuatBantuCopyFieldGET_CASH_RATIO: TFloatField
      FieldKind = fkLookup
      FieldName = 'GET_CASH_RATIO'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'GET_CASH_RATIO'
      KeyFields = 'CAID'
      Lookup = True
    end
    object cdsBuatBantuCopyFieldBASE_CASH_RATIO: TFloatField
      FieldKind = fkLookup
      FieldName = 'BASE_CASH_RATIO'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'BASE_CASH_RATIO'
      KeyFields = 'CAID'
      Lookup = True
    end
    object cdsBuatBantuCopyFieldDISTDATE: TDateField
      FieldKind = fkLookup
      FieldName = 'DISTDATE'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'DISTDATE'
      KeyFields = 'CAID'
      DisplayFormat = 'dd mmm yyyy'
      Lookup = True
    end
    object cdsBuatBantuCopyFieldPAYDATE: TDateField
      FieldKind = fkLookup
      FieldName = 'PAYDATE'
      LookupDataSet = frmCorpActList.cdsCorpAct
      LookupKeyFields = 'CAID'
      LookupResultField = 'PAYDATE'
      KeyFields = 'CAID'
      DisplayFormat = 'dd mmm yyyy'
      Lookup = True
    end
  end
  object GetFile: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Text File|*.txt'
    Left = 408
    Top = 297
  end
  object cdsCorpactRecon: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmSettlement_qryCorpactRecon'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 615
    Top = 264
    object cdsCorpactReconSECURITY_ID: TStringField
      FieldName = 'SECURITY_ID'
      Size = 30
    end
    object cdsCorpactReconSECURITY_DESC: TStringField
      FieldName = 'SECURITY_DESC'
      Size = 250
    end
    object cdsCorpactReconTYPE_CA: TStringField
      FieldName = 'TYPE_CA'
      Size = 50
    end
    object cdsCorpactReconRECORDING_DATE: TDateField
      FieldName = 'RECORDING_DATE'
    end
    object cdsCorpactReconEFFECTIVE_DATE: TDateField
      FieldName = 'EFFECTIVE_DATE'
    end
    object cdsCorpactReconACCOUNT_ID: TStringField
      FieldName = 'ACCOUNT_ID'
      Size = 50
    end
    object cdsCorpactReconACCOUNT_DESC: TStringField
      FieldName = 'ACCOUNT_DESC'
      Size = 250
    end
    object cdsCorpactReconTAX_ID: TStringField
      FieldName = 'TAX_ID'
      Size = 50
    end
    object cdsCorpactReconTAX_RATE: TFloatField
      FieldName = 'TAX_RATE'
    end
    object cdsCorpactReconBALANCE_POSITION: TFloatField
      FieldName = 'BALANCE_POSITION'
    end
    object cdsCorpactReconPROCEED_INSTRUMENT: TStringField
      FieldName = 'PROCEED_INSTRUMENT'
      Size = 50
    end
    object cdsCorpactReconGROSS_PROCEED: TFloatField
      FieldName = 'GROSS_PROCEED'
    end
    object cdsCorpactReconPROCEED_TAX: TFloatField
      FieldName = 'PROCEED_TAX'
    end
    object cdsCorpactReconNET_PROCEED: TFloatField
      FieldName = 'NET_PROCEED'
    end
  end
end
