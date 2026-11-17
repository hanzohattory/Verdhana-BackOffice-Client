inherited frmBondsMultiDealTicket: TfrmBondsMultiDealTicket
  Caption = 'Bonds Deal Ticket Order Form'
  ClientHeight = 346
  ClientWidth = 1004
  ExplicitWidth = 1010
  ExplicitHeight = 375
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 1004
    Height = 297
    ExplicitWidth = 1004
    ExplicitHeight = 297
    object cxDBDateEdit2: TcxDBDateEdit [0]
      Left = 101
      Top = -28
      TabStop = False
      DataBinding.DataField = 'TRADEDATE'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 90
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit [1]
      Left = 248
      Top = -28
      TabStop = False
      DataBinding.DataField = 'DUEDAYS'
      DataBinding.DataSource = dsInstrumentBonds
      Properties.DisplayFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 26
    end
    object cxDBDateEdit6: TcxDBDateEdit [2]
      Left = 337
      Top = -28
      TabStop = False
      DataBinding.DataField = 'VALUEDATE'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 90
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [3]
      Left = 101
      Top = -1
      RepositoryItem = dmGlobal.luInstrumentBonds
      DataBinding.DataField = 'INSTRUMENT_ID'
      DataBinding.DataSource = dsInstrumentBonds
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 136
    end
    object cxDBTextEdit1: TcxDBTextEdit [4]
      Left = 243
      Top = -1
      TabStop = False
      DataBinding.DataField = 'SHORTNAME'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 369
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox [5]
      Left = 101
      Top = 53
      TabStop = False
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 136
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [6]
      Left = 101
      Top = 80
      TabStop = False
      DataBinding.DataField = 'INTERESTRATE'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.0000 %;(#,##0.0000) %'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 136
    end
    object txtFaceValue: TcxDBCurrencyEdit [7]
      Left = 101
      Top = 107
      DataBinding.DataField = 'FACEVALUE'
      DataBinding.DataSource = dsInstrumentBonds
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 136
    end
    object cxDBDateEdit3: TcxDBDateEdit [8]
      Left = 309
      Top = 44
      TabStop = False
      DataBinding.DataField = 'LASTCOUPONDATE'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 112
    end
    object cxDBDateEdit5: TcxDBDateEdit [9]
      Left = 309
      Top = 71
      TabStop = False
      DataBinding.DataField = 'NEXTCOUPONDATE'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 112
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit [10]
      Left = 309
      Top = 98
      TabStop = False
      DataBinding.DataField = 'PERIODECOUPON'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '0 Days'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 112
    end
    object cxGrid3: TcxGrid [11]
      Left = 630
      Top = 17
      Width = 340
      Height = 184
      PopupMenu = PopupMenu1
      TabOrder = 27
      TabStop = False
      object gvwAquisitionBonds: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsAquisition
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'AVAIL'
            Column = gvwAquisitionBondsAVAIL
          end
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'Proceed'
            Column = gvwAquisitionBondsProceed
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.BandHeaders = False
        Styles.ContentEven = dmGlobal.BlueToggle
        Bands = <
          item
          end>
        object gvwAquisitionBondsACQDATE: TcxGridDBBandedColumn
          Caption = 'Acq Date'
          DataBinding.FieldName = 'ACQDATE'
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsBONDID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BONDID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsACQPRICE: TcxGridDBBandedColumn
          Caption = 'Price'
          DataBinding.FieldName = 'ACQPRICE'
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsAVAIL: TcxGridDBBandedColumn
          Caption = 'Cost Value'
          DataBinding.FieldName = 'AVAIL'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsProceed: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Proceed'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsPERIOD: TcxGridDBBandedColumn
          Caption = 'Period'
          DataBinding.FieldName = 'PERIOD'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsINTEREST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INTEREST'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsINTEREST_TAX: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INTEREST_TAX'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = gvwAquisitionBonds
      end
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [12]
      Left = 101
      Top = -55
      DataBinding.DataField = 'BS'
      DataBinding.DataSource = dsInstrumentBonds
      Properties.Items = <
        item
          Description = 'Buy'
          ImageIndex = 0
          Value = 'B'
        end
        item
          Description = 'Sell'
          Value = 'S'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 61
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [13]
      Left = 206
      Top = -55
      TabStop = False
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 64
    end
    object cxDBDateEdit1: TcxDBDateEdit [14]
      Left = 504
      Top = -28
      TabStop = False
      DataBinding.DataField = 'MATURITY_DATE'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 90
    end
    object pnlBS: TPanel [15]
      Left = 618
      Top = -55
      Width = 364
      Height = 48
      BevelKind = bkFlat
      BevelOuter = bvNone
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 26
      object txtBS: TcxLabel
        Left = 0
        Top = 0
        Align = alClient
        Caption = 'txtBS'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -27
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        ExplicitWidth = 345
        AnchorX = 180
        AnchorY = 22
      end
    end
    object cxDBTextEdit2: TcxDBTextEdit [16]
      Left = 101
      Top = 26
      TabStop = False
      DataBinding.DataField = 'ISINCODE'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 136
    end
    object cxDBCurrencyEdit7: TcxDBCurrencyEdit [17]
      Left = 101
      Top = 137
      TabStop = False
      DataBinding.DataField = 'ACCRDAYS'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 95
    end
    object cxDBCurrencyEdit8: TcxDBCurrencyEdit [18]
      Left = 288
      Top = 137
      TabStop = False
      DataBinding.DataField = 'INTEREST_AMT'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 121
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [19]
      Left = 101
      Top = 164
      DataBinding.DataField = 'SACCID'
      DataBinding.DataSource = dsInstrumentBonds
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          Caption = 'Account Code'
          Width = 100
          FieldName = 'ACCCODE'
        end
        item
          Caption = 'Account Name'
          Width = 300
          FieldName = 'ACCNAME'
        end>
      Properties.ListSource = dmLookup.dsLuCustomerBonds
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      Width = 136
    end
    object cxDBTextEdit3: TcxDBTextEdit [20]
      Left = 243
      Top = 164
      TabStop = False
      DataBinding.DataField = 'SACCNAME'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 369
    end
    object cxDBLookupComboBox5: TcxDBLookupComboBox [21]
      Left = 101
      Top = 218
      DataBinding.DataField = 'BACCID'
      DataBinding.DataSource = dsInstrumentBonds
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          Caption = 'Account Code'
          Width = 100
          FieldName = 'ACCCODE'
        end
        item
          Caption = 'Account Name'
          Width = 300
          FieldName = 'ACCNAME'
        end>
      Properties.ListSource = dmLookup.dsLuCustomerBonds
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 22
      Width = 136
    end
    object cxDBTextEdit4: TcxDBTextEdit [22]
      Left = 243
      Top = 218
      TabStop = False
      DataBinding.DataField = 'BACCNAME'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 369
    end
    object cxDBCurrencyEdit9: TcxDBCurrencyEdit [23]
      Left = 248
      Top = 191
      TabStop = False
      DataBinding.DataField = 'SPROCEED'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 150
    end
    object cxDBCurrencyEdit10: TcxDBCurrencyEdit [24]
      Left = 248
      Top = 245
      TabStop = False
      DataBinding.DataField = 'BPROCEED'
      DataBinding.DataSource = dsInstrumentBonds
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 25
      Width = 150
    end
    object cxDBCurrencyEdit11: TcxDBCurrencyEdit [25]
      Left = 101
      Top = 191
      DataBinding.DataField = 'SPRICE'
      DataBinding.DataSource = dsInstrumentBonds
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 90
    end
    object cxDBCurrencyEdit12: TcxDBCurrencyEdit [26]
      Left = 101
      Top = 245
      DataBinding.DataField = 'BPRICE'
      DataBinding.DataSource = dsInstrumentBonds
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Width = 90
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [27]
      Left = 364
      Top = -55
      DataBinding.DataField = 'SETTLE_INSTR'
      DataBinding.DataSource = dsInstrumentBonds
      Properties.Items = <
        item
          Description = 'Versus Payment'
          ImageIndex = 0
          Value = 'VP'
        end
        item
          Description = 'Free Of Payment'
          Value = 'FOP'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 141
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = LayoutControlGroup11
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trade Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item29: TdxLayoutItem
      Parent = LayoutControlGroup11
      CaptionOptions.Text = 'Due Days'
      Control = cxDBCurrencyEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 26
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item31: TdxLayoutItem
      Parent = LayoutControlGroup11
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = LayoutControlGroup2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Instrument Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup2: TdxLayoutGroup
      Parent = LayoutControlGroup7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = LayoutControlGroup2
      CaptionOptions.Text = 'cxDBTextEdit5'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 369
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = LayoutControlGroup14
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = LayoutControlGroup14
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Interest Rate'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = LayoutControlGroup10
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Face Value'
      Control = txtFaceValue
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = LayoutControlGroup3
      CaptionOptions.Text = 'Coupon'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Last Date'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = LayoutControlGroup6
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Next Date'
      Control = cxDBDateEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = LayoutControlGroup5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Periode'
      Control = cxDBCurrencyEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup4: TdxLayoutGroup
      Parent = LayoutControlGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup5: TdxLayoutGroup
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LayoutControlGroup6: TdxLayoutGroup
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup9: TdxLayoutGroup
      Parent = LayoutControlGroup4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup10: TdxLayoutGroup
      Parent = LayoutControlGroup9
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object loHistoricalAcq: TdxLayoutGroup
      Parent = LayoutControlGroup12
      CaptionOptions.Text = 'Historical Cost Price'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      Parent = loHistoricalAcq
      CaptionOptions.Text = 'cxGrid3'
      CaptionOptions.Visible = False
      Control = cxGrid3
      ControlOptions.OriginalHeight = 184
      ControlOptions.OriginalWidth = 340
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup11: TdxLayoutGroup
      Parent = LayoutControlGroup7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup3: TdxLayoutGroup
      Parent = LayoutControlGroup7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LayoutControlGroup7: TdxLayoutGroup
      Parent = LayoutControlGroup18
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object LayoutControlItem2: TdxLayoutItem
      Parent = LayoutControlGroup17
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Buy / Sell'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem3: TdxLayoutItem
      Parent = LayoutControlGroup17
      CaptionOptions.Text = 'Market'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup13: TdxLayoutGroup
      Parent = LayoutControlGroup4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup14: TdxLayoutGroup
      Parent = LayoutControlGroup13
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem4: TdxLayoutItem
      Parent = LayoutControlGroup11
      CaptionOptions.Text = 'Maturity Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlItem8: TdxLayoutItem
      Parent = LayoutControlGroup12
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Control = pnlBS
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 48
      ControlOptions.OriginalWidth = 349
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup17: TdxLayoutGroup
      Parent = LayoutControlGroup18
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup18: TdxLayoutGroup
      Parent = LayoutControlGroup19
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup12: TdxLayoutGroup
      Parent = LayoutControlGroup8
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object LayoutControlItem9: TdxLayoutItem
      Parent = LayoutControlGroup14
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'ISIN Code'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem10: TdxLayoutItem
      Parent = LayoutControlGroup16
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Acc Interest Days'
      Control = cxDBCurrencyEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem11: TdxLayoutItem
      Parent = LayoutControlGroup16
      CaptionOptions.Text = 'Accrued Interest'
      Control = cxDBCurrencyEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup1: TdxLayoutGroup
      Parent = LayoutControlGroup18
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object LayoutControlItem1: TdxLayoutItem
      Parent = LayoutControlGroup24
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Code'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup8: TdxLayoutGroup
      Parent = LayoutControlGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem12: TdxLayoutItem
      Parent = LayoutControlGroup24
      CaptionOptions.Text = 'cxDBTextEdit3'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 369
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object loSACC: TdxLayoutGroup
      Parent = LayoutControlGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup16: TdxLayoutGroup
      Parent = LayoutControlGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem13: TdxLayoutItem
      Parent = LayoutControlGroup25
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Code'
      Control = cxDBLookupComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem14: TdxLayoutItem
      Parent = LayoutControlGroup25
      CaptionOptions.Text = 'cxDBTextEdit4'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 369
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup19: TdxLayoutGroup
      Parent = LayoutControlGroup8
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object loBACC: TdxLayoutGroup
      Parent = LayoutControlGroup19
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object LayoutControlItem15: TdxLayoutItem
      Parent = LayoutControlGroup23
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Proceed'
      Control = cxDBCurrencyEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem16: TdxLayoutItem
      Parent = LayoutControlGroup22
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Proceed'
      Control = cxDBCurrencyEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem17: TdxLayoutItem
      Parent = LayoutControlGroup23
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Price'
      Control = cxDBCurrencyEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup23: TdxLayoutGroup
      Parent = loSACC
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup24: TdxLayoutGroup
      Parent = loSACC
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem18: TdxLayoutItem
      Parent = LayoutControlGroup22
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Price'
      Control = cxDBCurrencyEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup22: TdxLayoutGroup
      Parent = loBACC
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup25: TdxLayoutGroup
      Parent = loBACC
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem5: TdxLayoutItem
      Parent = LayoutControlGroup17
      CaptionOptions.Text = 'Settle Instruction'
      Control = cxDBImageComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 141
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 297
    Width = 1004
    ExplicitTop = 297
    ExplicitWidth = 1004
  end
  inherited dsSubject: TDataSource
    Left = 742
    Top = 126
  end
  object dsAquisition: TDataSource
    DataSet = cdsTmpAquicitionBonds
    Left = 807
    Top = 138
  end
  object cdsBondsDealTicket: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'TRADEBOND_ID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryBondsTransaction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 423
    Top = 243
    object cdsBondsDealTicketTRADEBOND_ID: TLargeintField
      FieldName = 'TRADEBOND_ID'
      Required = True
    end
    object cdsBondsDealTicketTRADEBOND_NO: TStringField
      FieldName = 'TRADEBOND_NO'
    end
    object cdsBondsDealTicketTRADEDATE: TDateTimeField
      FieldName = 'TRADEDATE'
    end
    object cdsBondsDealTicketINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
    end
    object cdsBondsDealTicketINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
    end
    object cdsBondsDealTicketTRADETYPE: TStringField
      FieldName = 'TRADETYPE'
      Size = 5
    end
    object cdsBondsDealTicketCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsBondsDealTicketFACEVALUE: TFloatField
      FieldName = 'FACEVALUE'
    end
    object cdsBondsDealTicketINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
    end
    object cdsBondsDealTicketLASTCOUPONDATE: TDateTimeField
      FieldName = 'LASTCOUPONDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBondsDealTicketNEXTCOUPONDATE: TDateTimeField
      FieldName = 'NEXTCOUPONDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBondsDealTicketPERIODECOUPON: TIntegerField
      FieldName = 'PERIODECOUPON'
      EditFormat = '#,##0 Days'
    end
    object cdsBondsDealTicketDUEDAYS: TIntegerField
      FieldName = 'DUEDAYS'
    end
    object cdsBondsDealTicketACCRDAYS: TIntegerField
      FieldName = 'ACCRDAYS'
      DisplayFormat = '#,##0 Days'
    end
    object cdsBondsDealTicketCOUPONDAY: TIntegerField
      FieldName = 'COUPONDAY'
    end
    object cdsBondsDealTicketMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsBondsDealTicketHOLDPERIOD: TIntegerField
      FieldName = 'HOLDPERIOD'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBondsDealTicketINTEREST_AMT: TFloatField
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBondsDealTicketVALUEDATE: TDateTimeField
      FieldName = 'VALUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBondsDealTicketMATURITY_DATE: TDateTimeField
      FieldName = 'MATURITY_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBondsDealTicketHOLDING_INTEREST: TFloatField
      FieldName = 'HOLDING_INTEREST'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBondsDealTicketHOLDING_INTEREST_TAX: TFloatField
      FieldName = 'HOLDING_INTEREST_TAX'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBondsDealTicketSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object cdsBondsDealTicketBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsBondsDealTicketTOTAL_FV: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_FV'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBondsDealTicketBACCID: TLargeintField
      FieldName = 'BACCID'
    end
    object cdsBondsDealTicketBPRICE: TFloatField
      FieldName = 'BPRICE'
      DisplayFormat = '#,##0.00 %'
    end
    object cdsBondsDealTicketSACCID: TLargeintField
      FieldName = 'SACCID'
    end
    object cdsBondsDealTicketSPRICE: TFloatField
      FieldName = 'SPRICE'
      DisplayFormat = '#,##0.00 %'
    end
    object cdsBondsDealTicketSACCCODE: TStringField
      FieldName = 'SACCCODE'
    end
    object cdsBondsDealTicketBACCCODE: TStringField
      FieldName = 'BACCCODE'
    end
    object cdsBondsDealTicketSACCNAME: TStringField
      FieldName = 'SACCNAME'
      Size = 50
    end
    object cdsBondsDealTicketBACCNAME: TStringField
      FieldName = 'BACCNAME'
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'BACCID'
      Size = 50
    end
    object cdsBondsDealTicketWHTPCT: TFloatField
      FieldName = 'WHTPCT'
    end
    object cdsBondsDealTicketRVSDDATE: TDateField
      FieldName = 'RVSDDATE'
    end
    object cdsBondsDealTicketRVSD_DTID: TLargeintField
      FieldName = 'RVSD_DTID'
    end
    object cdsBondsDealTicketSSALES: TLargeintField
      FieldName = 'SSALES'
    end
    object cdsBondsDealTicketBSALES: TLargeintField
      FieldName = 'BSALES'
    end
    object cdsBondsDealTicketDUEBUYSTOCK: TIntegerField
      FieldName = 'DUEBUYSTOCK'
    end
    object cdsBondsDealTicketDUESELLSTOCK: TIntegerField
      FieldName = 'DUESELLSTOCK'
    end
    object cdsBondsDealTicketDUEBUYCASH: TIntegerField
      FieldName = 'DUEBUYCASH'
    end
    object cdsBondsDealTicketDUESELLCASH: TIntegerField
      FieldName = 'DUESELLCASH'
    end
    object cdsBondsDealTicketSPROCEED: TFloatField
      FieldName = 'SPROCEED'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBondsDealTicketSNETPROCEED: TFloatField
      FieldName = 'SNETPROCEED'
    end
    object cdsBondsDealTicketBPROCEED: TFloatField
      FieldName = 'BPROCEED'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBondsDealTicketBNETPROCEED: TFloatField
      FieldName = 'BNETPROCEED'
    end
    object cdsBondsDealTicketSCAPGAIN: TFloatField
      FieldName = 'SCAPGAIN'
    end
    object cdsBondsDealTicketBCAPGAIN: TFloatField
      FieldName = 'BCAPGAIN'
    end
    object cdsBondsDealTicketSCAPGAINTAX: TFloatField
      FieldName = 'SCAPGAINTAX'
    end
    object cdsBondsDealTicketBCAPGAINTAX: TFloatField
      FieldName = 'BCAPGAINTAX'
    end
    object cdsBondsDealTicketSCOST_PRICE: TFloatField
      FieldName = 'SCOST_PRICE'
    end
    object cdsBondsDealTicketSCOST_AMT: TFloatField
      FieldName = 'SCOST_AMT'
    end
    object cdsBondsDealTicketBCOST_PRICE: TFloatField
      FieldName = 'BCOST_PRICE'
    end
    object cdsBondsDealTicketBCOST_AMT: TFloatField
      FieldName = 'BCOST_AMT'
    end
    object cdsBondsDealTicketSUM_SCAPGAIN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUM_SCAPGAIN'
      Calculated = True
    end
    object cdsBondsDealTicketSUM_BCAPGAIN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUM_BCAPGAIN'
      Calculated = True
    end
    object cdsBondsDealTicketWHT_TAX: TFloatField
      FieldName = 'WHT_TAX'
    end
    object cdsBondsDealTicketCTPREFF: TStringField
      FieldName = 'CTPREFF'
      Size = 10
    end
    object cdsBondsDealTicketMATCH_BUY: TStringField
      FieldName = 'MATCH_BUY'
      Size = 1
    end
    object cdsBondsDealTicketMATCH_SELL: TStringField
      FieldName = 'MATCH_SELL'
      Size = 1
    end
    object cdsBondsDealTicketCONTRACT: TStringField
      FieldName = 'CONTRACT'
      Size = 1
    end
    object cdsBondsDealTicketBCTPREFF: TStringField
      FieldName = 'BCTPREFF'
      Size = 10
    end
    object cdsBondsDealTicketSCTPREFF: TStringField
      FieldName = 'SCTPREFF'
      Size = 10
    end
    object cdsBondsDealTicketHOLD_TAX: TFloatField
      FieldName = 'HOLD_TAX'
    end
    object cdsBondsDealTicketSTAX: TFloatField
      FieldName = 'STAX'
    end
    object cdsBondsDealTicketBTAX: TFloatField
      FieldName = 'BTAX'
    end
    object cdsBondsDealTicketSACCTYPE: TStringField
      FieldKind = fkCalculated
      FieldName = 'SACCTYPE'
      Size = 1
      Calculated = True
    end
    object cdsBondsDealTicketBACCTYPE: TStringField
      FieldKind = fkCalculated
      FieldName = 'BACCTYPE'
      Size = 1
      Calculated = True
    end
    object cdsBondsDealTicketBCOSTDATE: TDateField
      FieldName = 'BCOSTDATE'
    end
    object cdsBondsDealTicketSCOSTDATE: TDateField
      FieldName = 'SCOSTDATE'
    end
    object cdsBondsDealTicketSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsBondsDealTicketISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsBondsDealTicketBONDCONID: TLargeintField
      FieldName = 'BONDCONID'
    end
    object cdsBondsDealTicketSETTLE_INSTR: TStringField
      FieldName = 'SETTLE_INSTR'
      Size = 10
    end
    object cdsBondsDealTicketBCAPGAIN_TAX: TFloatField
      FieldName = 'BCAPGAIN_TAX'
    end
    object cdsBondsDealTicketSCAPGAIN_TAX: TFloatField
      FieldName = 'SCAPGAIN_TAX'
    end
    object cdsBondsDealTicketBACR_INTEREST_TAX: TFloatField
      FieldName = 'BACR_INTEREST_TAX'
    end
    object cdsBondsDealTicketSACR_INTEREST_TAX: TFloatField
      FieldName = 'SACR_INTEREST_TAX'
    end
  end
  object cdsTmpInstrumentBonds: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 423
    Top = 294
    object cdsTmpInstrumentBondsTRADEDATE: TDateTimeField
      FieldName = 'TRADEDATE'
    end
    object cdsTmpInstrumentBondsINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      OnChange = cdsTmpInstrumentBondsINSTRUMENT_IDChange
    end
    object cdsTmpInstrumentBondsINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
    end
    object cdsTmpInstrumentBondsTRADETYPE: TStringField
      FieldName = 'TRADETYPE'
      Size = 5
    end
    object cdsTmpInstrumentBondsCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsTmpInstrumentBondsFACEVALUE: TFloatField
      FieldName = 'FACEVALUE'
      OnChange = cdsTmpInstrumentBondsFACEVALUEChange
    end
    object cdsTmpInstrumentBondsINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
    end
    object cdsTmpInstrumentBondsLASTCOUPONDATE: TDateTimeField
      FieldName = 'LASTCOUPONDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTmpInstrumentBondsNEXTCOUPONDATE: TDateTimeField
      FieldName = 'NEXTCOUPONDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTmpInstrumentBondsPERIODECOUPON: TIntegerField
      FieldName = 'PERIODECOUPON'
      EditFormat = '#,##0 Days'
    end
    object cdsTmpInstrumentBondsDUEDAYS: TIntegerField
      FieldName = 'DUEDAYS'
      OnChange = cdsTmpInstrumentBondsDUEDAYSChange
    end
    object cdsTmpInstrumentBondsACCRDAYS: TIntegerField
      FieldName = 'ACCRDAYS'
      DisplayFormat = '#,##0 Days'
    end
    object cdsTmpInstrumentBondsCOUPONDAY: TIntegerField
      FieldName = 'COUPONDAY'
    end
    object cdsTmpInstrumentBondsMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsTmpInstrumentBondsHOLDPERIOD: TIntegerField
      FieldName = 'HOLDPERIOD'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsTmpInstrumentBondsINTEREST_AMT: TFloatField
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsTmpInstrumentBondsVALUEDATE: TDateTimeField
      FieldName = 'VALUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTmpInstrumentBondsMATURITY_DATE: TDateTimeField
      FieldName = 'MATURITY_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTmpInstrumentBondsHOLDING_INTEREST: TFloatField
      FieldName = 'HOLDING_INTEREST'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsTmpInstrumentBondsHOLDING_INTEREST_TAX: TFloatField
      FieldName = 'HOLDING_INTEREST_TAX'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsTmpInstrumentBondsSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object cdsTmpInstrumentBondsBS: TStringField
      FieldName = 'BS'
      OnChange = cdsTmpInstrumentBondsBSChange
      Size = 1
    end
    object cdsTmpInstrumentBondsTOTAL_FV: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_FV'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsTmpInstrumentBondsBACCID: TLargeintField
      FieldName = 'BACCID'
      OnChange = cdsTmpInstrumentBondsBACCIDChange
    end
    object cdsTmpInstrumentBondsBPRICE: TFloatField
      FieldName = 'BPRICE'
      OnChange = cdsTmpInstrumentBondsBPRICEChange
      DisplayFormat = '#,##0.00 %'
    end
    object cdsTmpInstrumentBondsSACCID: TLargeintField
      FieldName = 'SACCID'
      OnChange = cdsTmpInstrumentBondsSACCIDChange
    end
    object cdsTmpInstrumentBondsSPRICE: TFloatField
      FieldName = 'SPRICE'
      OnChange = cdsTmpInstrumentBondsSPRICEChange
      DisplayFormat = '#,##0.00 %'
    end
    object cdsTmpInstrumentBondsSACCCODE: TStringField
      FieldName = 'SACCCODE'
    end
    object cdsTmpInstrumentBondsBACCCODE: TStringField
      FieldName = 'BACCCODE'
    end
    object cdsTmpInstrumentBondsSACCNAME: TStringField
      FieldName = 'SACCNAME'
      Size = 50
    end
    object cdsTmpInstrumentBondsBACCNAME: TStringField
      FieldName = 'BACCNAME'
      LookupDataSet = dmLookup.cdsLuCustomerBonds
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'BACCID'
      Size = 50
    end
    object cdsTmpInstrumentBondsWHTPCT: TFloatField
      FieldName = 'WHTPCT'
    end
    object cdsTmpInstrumentBondsRVSDDATE: TDateField
      FieldName = 'RVSDDATE'
    end
    object cdsTmpInstrumentBondsRVSD_DTID: TLargeintField
      FieldName = 'RVSD_DTID'
    end
    object cdsTmpInstrumentBondsSSALES: TLargeintField
      FieldName = 'SSALES'
    end
    object cdsTmpInstrumentBondsBSALES: TLargeintField
      FieldName = 'BSALES'
    end
    object cdsTmpInstrumentBondsDUEBUYSTOCK: TIntegerField
      FieldName = 'DUEBUYSTOCK'
    end
    object cdsTmpInstrumentBondsDUESELLSTOCK: TIntegerField
      FieldName = 'DUESELLSTOCK'
    end
    object cdsTmpInstrumentBondsDUEBUYCASH: TIntegerField
      FieldName = 'DUEBUYCASH'
    end
    object cdsTmpInstrumentBondsDUESELLCASH: TIntegerField
      FieldName = 'DUESELLCASH'
    end
    object cdsTmpInstrumentBondsSPROCEED: TFloatField
      FieldName = 'SPROCEED'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsTmpInstrumentBondsSNETPROCEED: TFloatField
      FieldName = 'SNETPROCEED'
    end
    object cdsTmpInstrumentBondsBPROCEED: TFloatField
      FieldName = 'BPROCEED'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsTmpInstrumentBondsBNETPROCEED: TFloatField
      FieldName = 'BNETPROCEED'
    end
    object cdsTmpInstrumentBondsSCAPGAIN: TFloatField
      FieldName = 'SCAPGAIN'
    end
    object cdsTmpInstrumentBondsBCAPGAIN: TFloatField
      FieldName = 'BCAPGAIN'
    end
    object cdsTmpInstrumentBondsSCAPGAINTAX: TFloatField
      FieldName = 'SCAPGAINTAX'
    end
    object cdsTmpInstrumentBondsBCAPGAINTAX: TFloatField
      FieldName = 'BCAPGAINTAX'
    end
    object cdsTmpInstrumentBondsSCOST_PRICE: TFloatField
      FieldName = 'SCOST_PRICE'
    end
    object cdsTmpInstrumentBondsSCOST_AMT: TFloatField
      FieldName = 'SCOST_AMT'
    end
    object cdsTmpInstrumentBondsBCOST_PRICE: TFloatField
      FieldName = 'BCOST_PRICE'
    end
    object cdsTmpInstrumentBondsBCOST_AMT: TFloatField
      FieldName = 'BCOST_AMT'
    end
    object cdsTmpInstrumentBondsSUM_SCAPGAIN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUM_SCAPGAIN'
      Calculated = True
    end
    object cdsTmpInstrumentBondsSUM_BCAPGAIN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUM_BCAPGAIN'
      Calculated = True
    end
    object cdsTmpInstrumentBondsWHT_TAX: TFloatField
      FieldName = 'WHT_TAX'
    end
    object cdsTmpInstrumentBondsCTPREFF: TStringField
      FieldName = 'CTPREFF'
      Size = 10
    end
    object cdsTmpInstrumentBondsMATCH_BUY: TStringField
      FieldName = 'MATCH_BUY'
      Size = 1
    end
    object cdsTmpInstrumentBondsMATCH_SELL: TStringField
      FieldName = 'MATCH_SELL'
      Size = 1
    end
    object cdsTmpInstrumentBondsCONTRACT: TStringField
      FieldName = 'CONTRACT'
      Size = 1
    end
    object cdsTmpInstrumentBondsBCTPREFF: TStringField
      FieldName = 'BCTPREFF'
      Size = 10
    end
    object cdsTmpInstrumentBondsSCTPREFF: TStringField
      FieldName = 'SCTPREFF'
      Size = 10
    end
    object cdsTmpInstrumentBondsHOLD_TAX: TFloatField
      FieldName = 'HOLD_TAX'
    end
    object cdsTmpInstrumentBondsSTAX: TFloatField
      FieldName = 'STAX'
    end
    object cdsTmpInstrumentBondsBTAX: TFloatField
      FieldName = 'BTAX'
    end
    object cdsTmpInstrumentBondsSACCTYPE: TStringField
      FieldKind = fkCalculated
      FieldName = 'SACCTYPE'
      Size = 1
      Calculated = True
    end
    object cdsTmpInstrumentBondsBACCTYPE: TStringField
      FieldKind = fkCalculated
      FieldName = 'BACCTYPE'
      Size = 1
      Calculated = True
    end
    object cdsTmpInstrumentBondsBCOSTDATE: TDateField
      FieldName = 'BCOSTDATE'
    end
    object cdsTmpInstrumentBondsSCOSTDATE: TDateField
      FieldName = 'SCOSTDATE'
    end
    object cdsTmpInstrumentBondsSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsTmpInstrumentBondsISINCODE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsTmpInstrumentBondsBONDCONID: TLargeintField
      FieldName = 'BONDCONID'
    end
    object cdsTmpInstrumentBondsSETTLE_INSTR: TStringField
      FieldName = 'SETTLE_INSTR'
      Size = 10
    end
    object cdsTmpInstrumentBondsBCAPGAIN_TAX: TFloatField
      FieldName = 'BCAPGAIN_TAX'
    end
    object cdsTmpInstrumentBondsSCAPGAIN_TAX: TFloatField
      FieldName = 'SCAPGAIN_TAX'
    end
    object cdsTmpInstrumentBondsBACR_INTEREST_TAX: TFloatField
      FieldName = 'BACR_INTEREST_TAX'
    end
    object cdsTmpInstrumentBondsSACR_INTEREST_TAX: TFloatField
      FieldName = 'SACR_INTEREST_TAX'
    end
  end
  object dsInstrumentBonds: TDataSource
    DataSet = cdsTmpInstrumentBonds
    Left = 687
    Top = 159
  end
  object cdsAquisitionBonds: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'BONDID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'AQCDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryBondsAquisition'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsAquisitionBondsCalcFields
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 897
    Top = 255
    object cdsAquisitionBondsACQDATE: TDateField
      FieldName = 'ACQDATE'
    end
    object cdsAquisitionBondsACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsAquisitionBondsBONDID: TLargeintField
      FieldName = 'BONDID'
    end
    object cdsAquisitionBondsACQPRICE: TFloatField
      FieldName = 'ACQPRICE'
    end
    object cdsAquisitionBondsAVAIL: TFloatField
      FieldName = 'AVAIL'
    end
    object cdsAquisitionBondsPROCEED: TFloatField
      FieldName = 'PROCEED'
    end
    object cdsAquisitionBondsPERIOD: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PERIOD'
    end
    object cdsAquisitionBondsINTEREST: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'INTEREST'
    end
    object cdsAquisitionBondsINTEREST_TAX: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'INTEREST_TAX'
    end
    object cdsAquisitionBondsACQ_HISTID: TLargeintField
      FieldName = 'ACQ_HISTID'
    end
    object cdsAquisitionBondsHOLDING: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'HOLDING'
    end
    object cdsAquisitionBondsHOLD_INTEREST: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'HOLD_INTEREST'
    end
    object cdsAquisitionBondsHOLD_INTEREST_TAX: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'HOLD_INTEREST_TAX'
    end
    object cdsAquisitionBondsCAP_GAIN_TAX: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CAP_GAIN_TAX'
    end
    object cdsAquisitionBondsCAP_GAIN: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CAP_GAIN'
    end
  end
  object cdsDetailInstrumentBonds: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'INSTRUMENT_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'COUPONDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryDetailInstrumentBonds'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 567
    Top = 288
    object cdsDetailInstrumentBondsINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsDetailInstrumentBondsINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      ReadOnly = True
      Required = True
    end
    object cdsDetailInstrumentBondsSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsDetailInstrumentBondsMATURITYDATE: TDateTimeField
      FieldName = 'MATURITYDATE'
      ReadOnly = True
    end
    object cdsDetailInstrumentBondsCCY: TStringField
      FieldName = 'CCY'
      ReadOnly = True
      Size = 5
    end
    object cdsDetailInstrumentBondsCALCULATE_DAYS_METHOD: TIntegerField
      FieldName = 'CALCULATE_DAYS_METHOD'
      ReadOnly = True
    end
    object cdsDetailInstrumentBondsCOUNTINGDAYS_METHOD: TIntegerField
      FieldName = 'COUNTINGDAYS_METHOD'
      ReadOnly = True
    end
    object cdsDetailInstrumentBondsDAYSOFYEAR: TIntegerField
      FieldName = 'DAYSOFYEAR'
      ReadOnly = True
    end
    object cdsDetailInstrumentBondsCOUPON_IN_YEAR: TIntegerField
      FieldName = 'COUPON_IN_YEAR'
      ReadOnly = True
    end
    object cdsDetailInstrumentBondsMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cdsDetailInstrumentBondsLASTCOUPONDATE: TDateTimeField
      FieldName = 'LASTCOUPONDATE'
      ReadOnly = True
    end
    object cdsDetailInstrumentBondsNEXTCOUPONDATE: TDateTimeField
      FieldName = 'NEXTCOUPONDATE'
      ReadOnly = True
    end
    object cdsDetailInstrumentBondsINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
      ReadOnly = True
    end
    object cdsDetailInstrumentBondsLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      ReadOnly = True
      Required = True
    end
    object cdsDetailInstrumentBondsISINCODE: TStringField
      FieldName = 'ISINCODE'
      ReadOnly = True
      Size = 30
    end
  end
  object cdsCalcFactor: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'LAST_COUPON'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'NEXTCOUPON'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'ACQ_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'BASIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'COUPONINYEAR'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryCalcFactor'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 672
    Top = 294
    object cdsCalcFactorACCRUED_FACTOR: TFloatField
      FieldName = 'ACCRUED_FACTOR'
    end
    object cdsCalcFactorCOUPON_DAYS: TFloatField
      FieldName = 'COUPON_DAYS'
    end
    object cdsCalcFactorACCRUED_DAYS: TFloatField
      FieldName = 'ACCRUED_DAYS'
    end
    object cdsCalcFactorHOLDING_DAYS: TFloatField
      FieldName = 'HOLDING_DAYS'
    end
    object cdsCalcFactorHOLDING_FACTOR: TFloatField
      FieldName = 'HOLDING_FACTOR'
    end
  end
  object cdsMarket: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'MARKETCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryMarket'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 624
    Top = 273
    object cdsMarketMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsMarketMARKETDESC: TStringField
      FieldName = 'MARKETDESC'
      Size = 50
    end
    object cdsMarketINITCODE: TStringField
      FieldName = 'INITCODE'
      Size = 5
    end
    object cdsMarketCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsMarketCCYTRANS: TStringField
      FieldName = 'CCYTRANS'
      Size = 5
    end
    object cdsMarketCCYSETTLE: TStringField
      FieldName = 'CCYSETTLE'
      Required = True
      Size = 5
    end
    object cdsMarketHOLDTAX: TFloatField
      FieldName = 'HOLDTAX'
    end
    object cdsMarketCAPGAINTAX: TFloatField
      FieldName = 'CAPGAINTAX'
    end
    object cdsMarketBONDSWHT: TFloatField
      FieldName = 'BONDSWHT'
    end
  end
  object cdsHouseAccount_BSTAx: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmFixIncome_qryHouseAccount_BSTax'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 303
    Top = 273
    object cdsHouseAccount_BSTAxins_busstype: TStringField
      FieldName = 'ins_busstype'
    end
    object cdsHouseAccount_BSTAxBTAX: TFloatField
      FieldName = 'BTAX'
      ReadOnly = True
    end
    object cdsHouseAccount_BSTAxSTAX: TFloatField
      FieldName = 'STAX'
      ReadOnly = True
    end
    object cdsHouseAccount_BSTAxACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
      Required = True
    end
    object cdsHouseAccount_BSTAxACCCODE: TStringField
      FieldName = 'ACCCODE'
    end
    object cdsHouseAccount_BSTAxACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsHouseAccount_BSTAxACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsHouseAccount_BSTAxACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsHouseAccount_BSTAxBUSSTYPE: TLargeintField
      FieldName = 'BUSSTYPE'
      ReadOnly = True
    end
    object cdsHouseAccount_BSTAxPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 912
    Top = 120
    object AddHistoricalCostPrice1: TMenuItem
      Caption = 'Add Historical Cost Price'
      OnClick = AddHistoricalCostPrice1Click
    end
    object Edit1: TMenuItem
      Caption = 'Edit Historical Cost Price'
      OnClick = Edit1Click
    end
    object DeleteCostPrice1: TMenuItem
      Caption = 'Delete Cost Price'
      OnClick = DeleteCostPrice1Click
    end
  end
  object cdsTmpAquicitionBonds: TNClientDataset
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsTmpAquicitionBondsCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 900
    Top = 300
    object cdsTmpAquicitionBondsACQDATE: TDateField
      FieldName = 'ACQDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTmpAquicitionBondsACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsTmpAquicitionBondsBONDID: TLargeintField
      FieldName = 'BONDID'
    end
    object cdsTmpAquicitionBondsACQPRICE: TFloatField
      FieldName = 'ACQPRICE'
      DisplayFormat = '#,##0.00%;(#,##0.00%);0.00%'
    end
    object cdsTmpAquicitionBondsAVAIL: TFloatField
      FieldName = 'AVAIL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsTmpAquicitionBondsProceed: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'Proceed'
      DisplayFormat = '#,##0'
    end
    object cdsTmpAquicitionBondsPERIOD: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PERIOD'
    end
    object cdsTmpAquicitionBondsINTEREST: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'INTEREST'
    end
    object cdsTmpAquicitionBondsINTEREST_TAX: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'INTEREST_TAX'
    end
    object cdsTmpAquicitionBondsACQ_HISTID: TLargeintField
      FieldName = 'ACQ_HISTID'
    end
    object cdsTmpAquicitionBondsHOLDING: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'HOLDING'
    end
    object cdsTmpAquicitionBondsHOLD_INTEREST: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'HOLD_INTEREST'
    end
    object cdsTmpAquicitionBondsHOLD_INTEREST_TAX: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'HOLD_INTEREST_TAX'
    end
    object cdsTmpAquicitionBondsCAP_GAIN_TAX: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CAP_GAIN_TAX'
    end
    object cdsTmpAquicitionBondsCAP_GAIN: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CAP_GAIN'
    end
  end
  object cdsAcq_Hist: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TRADEBOND_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACQ_HISID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryAcq_Hist'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 219
    Top = 288
    object cdsAcq_HistACQ_HISID: TLargeintField
      FieldName = 'ACQ_HISID'
      Required = True
    end
    object cdsAcq_HistTRADEDATE: TDateField
      FieldName = 'TRADEDATE'
    end
    object cdsAcq_HistBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsAcq_HistACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsAcq_HistBONDID: TLargeintField
      FieldName = 'BONDID'
    end
    object cdsAcq_HistACQDATE: TDateField
      FieldName = 'ACQDATE'
    end
    object cdsAcq_HistACQ_PRICE: TFloatField
      FieldName = 'ACQ_PRICE'
    end
    object cdsAcq_HistFACEVALUE: TFloatField
      FieldName = 'FACEVALUE'
    end
    object cdsAcq_HistPROCEED: TFloatField
      FieldName = 'PROCEED'
    end
    object cdsAcq_HistCAP_GAIN: TFloatField
      FieldName = 'CAP_GAIN'
    end
    object cdsAcq_HistACC_INTEREST: TFloatField
      FieldName = 'ACC_INTEREST'
    end
    object cdsAcq_HistHOLD_PERIOD: TIntegerField
      FieldName = 'HOLD_PERIOD'
    end
    object cdsAcq_HistHOLD_INTEREST: TFloatField
      FieldName = 'HOLD_INTEREST'
    end
    object cdsAcq_HistHOLD_TAX: TFloatField
      FieldName = 'HOLD_TAX'
    end
    object cdsAcq_HistHOLD_INTERESTTAX: TFloatField
      FieldName = 'HOLD_INTERESTTAX'
    end
    object cdsAcq_HistNET_PROCEED: TFloatField
      FieldName = 'NET_PROCEED'
    end
    object cdsAcq_HistSELL_VAL: TFloatField
      FieldName = 'SELL_VAL'
    end
    object cdsAcq_HistLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsAcq_HistPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsAcq_HistCAP_GAIN_TAX: TFloatField
      FieldName = 'CAP_GAIN_TAX'
    end
  end
  object cdsBondPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'BONDID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'ACQDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryBondPos'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 549
    Top = 129
    object cdsBondPosVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsBondPosACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsBondPosBONDID: TIntegerField
      FieldName = 'BONDID'
      Required = True
    end
    object cdsBondPosACQDATE: TDateField
      FieldName = 'ACQDATE'
      Required = True
    end
    object cdsBondPosACQPRICE: TFloatField
      FieldName = 'ACQPRICE'
    end
    object cdsBondPosONHAND_VALUE: TFloatField
      FieldName = 'ONHAND_VALUE'
    end
    object cdsBondPosONHOLD_VALUE: TFloatField
      FieldName = 'ONHOLD_VALUE'
    end
    object cdsBondPosDELIVER_VALUE: TFloatField
      FieldName = 'DELIVER_VALUE'
    end
    object cdsBondPosRECEIVE_VALUE: TFloatField
      FieldName = 'RECEIVE_VALUE'
    end
    object cdsBondPosOUTS_VALUE: TFloatField
      FieldName = 'OUTS_VALUE'
    end
    object cdsBondPosBUY_VALUE: TFloatField
      FieldName = 'BUY_VALUE'
    end
    object cdsBondPosSELL_VALUE: TFloatField
      FieldName = 'SELL_VALUE'
    end
  end
  object cdsAqcHistPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TRADEBOND_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACQ_HISID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryAcq_Hist'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 780
    Top = 291
    object cdsAqcHistPosACQ_HISID: TLargeintField
      FieldName = 'ACQ_HISID'
      Required = True
    end
    object cdsAqcHistPosTRADEDATE: TDateField
      FieldName = 'TRADEDATE'
    end
    object cdsAqcHistPosBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsAqcHistPosACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsAqcHistPosBONDID: TLargeintField
      FieldName = 'BONDID'
    end
    object cdsAqcHistPosACQDATE: TDateField
      FieldName = 'ACQDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsAqcHistPosACQ_PRICE: TFloatField
      FieldName = 'ACQ_PRICE'
      OnChange = cdsAqcHistPosACQ_PRICEChange
      DisplayFormat = '#,##0.00%;(#,##0.00%);0.00'
    end
    object cdsAqcHistPosFACEVALUE: TFloatField
      FieldName = 'FACEVALUE'
      OnChange = cdsAqcHistPosACQ_PRICEChange
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAqcHistPosPROCEED: TFloatField
      FieldName = 'PROCEED'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAqcHistPosCAP_GAIN: TFloatField
      FieldName = 'CAP_GAIN'
    end
    object cdsAqcHistPosACC_INTEREST: TFloatField
      FieldName = 'ACC_INTEREST'
    end
    object cdsAqcHistPosHOLD_PERIOD: TIntegerField
      FieldName = 'HOLD_PERIOD'
    end
    object cdsAqcHistPosHOLD_INTEREST: TFloatField
      FieldName = 'HOLD_INTEREST'
    end
    object cdsAqcHistPosHOLD_TAX: TFloatField
      FieldName = 'HOLD_TAX'
    end
    object cdsAqcHistPosHOLD_INTERESTTAX: TFloatField
      FieldName = 'HOLD_INTERESTTAX'
    end
    object cdsAqcHistPosNET_PROCEED: TFloatField
      FieldName = 'NET_PROCEED'
    end
    object cdsAqcHistPosSELL_VAL: TFloatField
      FieldName = 'SELL_VAL'
    end
    object cdsAqcHistPosLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsAqcHistPosPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
  end
end
