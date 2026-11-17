inherited frmBondsMultiDealTicket_View: TfrmBondsMultiDealTicket_View
  Caption = 'Bonds Deal Ticket Form'
  ClientHeight = 547
  ClientWidth = 631
  ExplicitWidth = 637
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 631
    Height = 498
    ExplicitWidth = 631
    ExplicitHeight = 498
    object cxDBDateEdit2: TcxDBDateEdit [0]
      Left = 101
      Top = 64
      TabStop = False
      DataBinding.DataField = 'TRADEDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 90
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit [1]
      Left = 248
      Top = 64
      TabStop = False
      DataBinding.DataField = 'DUEDAYS'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = '0'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 26
    end
    object cxDBDateEdit6: TcxDBDateEdit [2]
      Left = 337
      Top = 64
      TabStop = False
      DataBinding.DataField = 'VALUEDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 90
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [3]
      Left = 101
      Top = 91
      RepositoryItem = dmGlobal.luInstrumentBonds
      DataBinding.DataField = 'INSTRUMENT_ID'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 136
    end
    object cxDBTextEdit1: TcxDBTextEdit [4]
      Left = 243
      Top = 91
      TabStop = False
      DataBinding.DataField = 'SHORTNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 369
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox [5]
      Left = 101
      Top = 145
      TabStop = False
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 136
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [6]
      Left = 101
      Top = 172
      TabStop = False
      DataBinding.DataField = 'INTERESTRATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.0000 %;(#,##0.0000) %'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 136
    end
    object txtFaceValue: TcxDBCurrencyEdit [7]
      Left = 312
      Top = 136
      DataBinding.DataField = 'FACEVALUE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 115
    end
    object cxDBDateEdit3: TcxDBDateEdit [8]
      Left = 511
      Top = 136
      TabStop = False
      DataBinding.DataField = 'LASTCOUPONDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      Width = 89
    end
    object cxDBDateEdit5: TcxDBDateEdit [9]
      Left = 511
      Top = 163
      TabStop = False
      DataBinding.DataField = 'NEXTCOUPONDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      Width = 89
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit [10]
      Left = 511
      Top = 190
      TabStop = False
      DataBinding.DataField = 'PERIODECOUPON'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '0 Days'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 89
    end
    object cxGrid3: TcxGrid [11]
      Left = 22
      Top = 358
      Width = 357
      Height = 114
      TabOrder = 25
      TabStop = False
      object gvwAquisitionBonds: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsAquisition
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'FACEVALUE'
            Column = gvwAquisitionBondsFACEVALUE
          end
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'PROCEED'
            Column = gvwAquisitionBondsPROCEED
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
        Styles.ContentOdd = dmGlobal.cxStyle1
        Bands = <
          item
          end>
        object gvwAquisitionBondsACQ_HISID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACQ_HISID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsTRADEDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TRADEDATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsACQDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACQDATE'
          Width = 69
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsACQ_PRICE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACQ_PRICE'
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsFACEVALUE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FACEVALUE'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsPROCEED: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PROCEED'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsCAP_GAIN: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CAP_GAIN'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsACC_INTEREST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACC_INTEREST'
          Width = 87
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsHOLD_PERIOD: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HOLD_PERIOD'
          Width = 74
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsHOLD_INTEREST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HOLD_INTEREST'
          Width = 83
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsHOLD_TAX: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HOLD_TAX'
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsHOLD_INTERESTTAX: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HOLD_INTERESTTAX'
          Width = 104
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsNET_PROCEED: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NET_PROCEED'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsBS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BS'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsBONDID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BONDID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsSELL_VAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SELL_VAL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsLINKID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LINKID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsPOSTED: TcxGridDBBandedColumn
          DataBinding.FieldName = 'POSTED'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = gvwAquisitionBonds
      end
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [12]
      Left = 101
      Top = 37
      DataBinding.DataField = 'BS'
      DataBinding.DataSource = dsSubject
      ParentColor = True
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
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 61
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [13]
      Left = 206
      Top = 37
      TabStop = False
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 64
    end
    object cxDBDateEdit1: TcxDBDateEdit [14]
      Left = 504
      Top = 64
      TabStop = False
      DataBinding.DataField = 'MATURITY_DATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 90
    end
    object pnlBS: TPanel [15]
      Left = 276
      Top = 10
      Width = 151
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
      TabOrder = 3
      object txtBS: TcxLabel
        Left = 0
        Top = 0
        Align = alClient
        Caption = 'txtBS'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        AnchorX = 74
        AnchorY = 22
      end
    end
    object cxDBTextEdit2: TcxDBTextEdit [16]
      Left = 101
      Top = 118
      TabStop = False
      DataBinding.DataField = 'ISINCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBCurrencyEdit7: TcxDBCurrencyEdit [17]
      Left = 101
      Top = 199
      TabStop = False
      DataBinding.DataField = 'ACCRDAYS'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 95
    end
    object cxDBCurrencyEdit8: TcxDBCurrencyEdit [18]
      Left = 101
      Top = 229
      TabStop = False
      DataBinding.DataField = 'INTEREST_AMT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 136
    end
    object cxDBTextEdit3: TcxDBTextEdit [19]
      Left = 221
      Top = 331
      TabStop = False
      DataBinding.DataField = 'SACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Width = 369
    end
    object cxDBTextEdit4: TcxDBTextEdit [20]
      Left = 221
      Top = 274
      TabStop = False
      DataBinding.DataField = 'BACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 369
    end
    object cxDBCurrencyEdit9: TcxDBCurrencyEdit [21]
      Left = 312
      Top = 190
      TabStop = False
      DataBinding.DataField = 'SPROCEED'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 97
    end
    object cxDBCurrencyEdit11: TcxDBCurrencyEdit [22]
      Left = 312
      Top = 163
      DataBinding.DataField = 'SPRICE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 97
    end
    object cxDBTextEdit5: TcxDBTextEdit [23]
      Left = 101
      Top = 10
      DataBinding.DataField = 'TRADEBOND_NO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 169
    end
    object cxDBTextEdit6: TcxDBTextEdit [24]
      Left = 94
      Top = 274
      TabStop = False
      DataBinding.DataField = 'BACCCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit [25]
      Left = 94
      Top = 331
      TabStop = False
      DataBinding.DataField = 'SACCCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 121
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trade Date'
      Parent = LayoutControlGroup11
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item29: TdxLayoutItem
      CaptionOptions.Text = 'Due Days'
      Parent = LayoutControlGroup11
      Control = cxDBCurrencyEdit6
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item31: TdxLayoutItem
      CaptionOptions.Text = 'Value Date'
      Parent = LayoutControlGroup11
      Control = cxDBDateEdit6
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Instrument Code'
      Parent = LayoutControlGroup2
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'cxDBTextEdit5'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup2
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Parent = LayoutControlGroup14
      Control = cxDBLookupComboBox4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Interest Rate'
      Parent = LayoutControlGroup14
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Face Value'
      Parent = LayoutControlGroup15
      Control = txtFaceValue
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      CaptionOptions.Text = 'Coupon'
      Parent = LayoutControlGroup3
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Last Date'
      Parent = dxLayoutControl1Group12
      Control = cxDBDateEdit3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Next Date'
      Parent = LayoutControlGroup6
      Control = cxDBDateEdit5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Periode'
      Parent = LayoutControlGroup5
      Control = cxDBCurrencyEdit5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group12
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LayoutControlGroup6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group12
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object loHistoricalAcq: TdxLayoutGroup
      CaptionOptions.Text = 'Customer Sell'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      CaptionOptions.Text = 'cxGrid3'
      CaptionOptions.Visible = False
      Parent = loHistoricalAcq
      Control = cxGrid3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup11: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LayoutControlGroup7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup8
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Buy / Sell'
      Parent = LayoutControlGroup19
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem3: TdxLayoutItem
      CaptionOptions.Text = 'Market'
      Parent = LayoutControlGroup19
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup13: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup14: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup13
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem4: TdxLayoutItem
      CaptionOptions.Text = 'Maturity Date'
      Parent = LayoutControlGroup11
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlItem8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup17
      Control = pnlBS
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup17: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup8
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem9: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'ISIN Code'
      Parent = LayoutControlGroup14
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem10: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Acc Interest Days'
      Parent = LayoutControlGroup14
      Control = cxDBCurrencyEdit7
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlItem11: TdxLayoutItem
      CaptionOptions.Text = 'Accrued Interest'
      Parent = LayoutControlGroup1
      Control = cxDBCurrencyEdit8
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup8
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LayoutControlGroup8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem12: TdxLayoutItem
      CaptionOptions.Text = 'cxDBTextEdit3'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup9
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem14: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxDBTextEdit4'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup10
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem15: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Proceed'
      Parent = LayoutControlGroup15
      Control = cxDBCurrencyEdit9
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem17: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Price'
      Parent = LayoutControlGroup15
      Control = cxDBCurrencyEdit11
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup15: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = LayoutControlGroup3
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object LayoutControlGroup9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = loHistoricalAcq
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup10: TdxLayoutGroup
      CaptionOptions.Text = 'Customer Buy'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object LayoutControlItem5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trade Bonds No'
      Parent = LayoutControlGroup18
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup18: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup17
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup19: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup18
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlItem6: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Code'
      Parent = LayoutControlGroup10
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem7: TdxLayoutItem
      CaptionOptions.Text = 'Account Code'
      Parent = LayoutControlGroup9
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 498
    Width = 631
    ExplicitTop = 498
    ExplicitWidth = 631
    inherited LayoutControlFooterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    inherited LayoutControlFooterItem1: TdxLayoutItem
      Index = 0
    end
    inherited LayoutControlFooterItem2: TdxLayoutItem
      Index = 1
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsBondsDealTicket
    Left = 235
    Top = 471
  end
  object dsAquisition: TDataSource
    DataSet = cdsAcq_Hist
    Left = 312
    Top = 474
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
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 165
    Top = 465
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
  end
  object cdsAcq_Hist: TNClientDataset
    Aggregates = <>
    Filter = 'BS = '#39'S'#39
    Filtered = True
    Params = <
      item
        DataType = ftSmallint
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
    Left = 382
    Top = 474
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
      DisplayLabel = 'Aqc Date'
      FieldName = 'ACQDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsAcq_HistACQ_PRICE: TFloatField
      DisplayLabel = 'Acq Price'
      FieldName = 'ACQ_PRICE'
      DisplayFormat = '#,##0%'
    end
    object cdsAcq_HistFACEVALUE: TFloatField
      DisplayLabel = 'Acq Value'
      FieldName = 'FACEVALUE'
      DisplayFormat = '#,##0'
    end
    object cdsAcq_HistPROCEED: TFloatField
      DisplayLabel = 'Proceed'
      FieldName = 'PROCEED'
      DisplayFormat = '#,##0'
    end
    object cdsAcq_HistCAP_GAIN: TFloatField
      DisplayLabel = 'Capital Gain'
      FieldName = 'CAP_GAIN'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAcq_HistACC_INTEREST: TFloatField
      DisplayLabel = 'Acc Interest'
      FieldName = 'ACC_INTEREST'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAcq_HistHOLD_PERIOD: TIntegerField
      DisplayLabel = 'Holding Interest'
      FieldName = 'HOLD_PERIOD'
      DisplayFormat = '#,##0 Days'
    end
    object cdsAcq_HistHOLD_INTEREST: TFloatField
      DisplayLabel = 'Holding Interest'
      FieldName = 'HOLD_INTEREST'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAcq_HistHOLD_TAX: TFloatField
      DisplayLabel = 'Holding Tax'
      FieldName = 'HOLD_TAX'
      DisplayFormat = '#,##0.00%;(#,##0.00%);0.00%'
    end
    object cdsAcq_HistHOLD_INTERESTTAX: TFloatField
      DisplayLabel = 'Holding Interest Tax'
      FieldName = 'HOLD_INTERESTTAX'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAcq_HistNET_PROCEED: TFloatField
      DisplayLabel = 'Net Proceed'
      FieldName = 'NET_PROCEED'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
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
  end
end
