inherited frmBondsDealTicket: TfrmBondsDealTicket
  Caption = 'Bonds Deal Ticket'
  ClientHeight = 647
  ClientWidth = 1076
  ExplicitWidth = 1082
  ExplicitHeight = 676
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1076
    Height = 557
    ExplicitWidth = 1076
    ExplicitHeight = 557
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 96
      Top = 10
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
      TabOrder = 0
      Width = 80
    end
    object txtInstrument: TcxDBLookupComboBox [1]
      Left = 96
      Top = 37
      RepositoryItem = dmGlobal.luInstrumentBonds
      DataBinding.DataField = 'INSTRUMENT_ID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Properties.OnCloseUp = txtInstrumentPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      OnExit = txtInstrumentExit
      Width = 148
    end
    object txtTradeType: TcxDBImageComboBox [2]
      Left = 96
      Top = 64
      TabStop = False
      DataBinding.DataField = 'TRADETYPE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Items = <
        item
          Description = 'Regular'
          ImageIndex = 0
          Value = 'RG'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 94
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox [3]
      Left = 96
      Top = 91
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
      TabOrder = 7
      Width = 94
    end
    object txtFaceValue: TcxDBCurrencyEdit [4]
      Left = 96
      Top = 145
      DataBinding.DataField = 'FACEVALUE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      OnExit = txtFaceValueExit
      Width = 94
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [5]
      Left = 96
      Top = 118
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
      TabOrder = 8
      Width = 94
    end
    object cxDBTextEdit5: TcxDBTextEdit [6]
      Left = 250
      Top = 37
      TabStop = False
      DataBinding.DataField = 'SHORTNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 324
    end
    object cxDBTextEdit6: TcxDBTextEdit [7]
      Left = 268
      Top = 10
      DataBinding.DataField = 'INSTRUMENT_CODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 80
    end
    object cxDBDateEdit2: TcxDBDateEdit [8]
      Left = 262
      Top = 82
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
      TabOrder = 10
      Width = 89
    end
    object cxDBDateEdit3: TcxDBDateEdit [9]
      Left = 262
      Top = 109
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
      TabOrder = 11
      Width = 89
    end
    object pnlSell: TPanel [10]
      Left = 10
      Top = 364
      Width = 779
      Height = 183
      ParentBackground = False
      TabOrder = 21
      object dxLayoutControl3: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 777
        Height = 181
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = True
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 769
        object txtAccSell: TcxDBLookupComboBox
          Left = 96
          Top = 28
          DataBinding.DataField = 'BACCID'
          DataBinding.DataSource = dsSubject
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'ACCID'
          Properties.ListColumns = <
            item
              Caption = 'Account Code'
              Width = 150
              FieldName = 'ACCCODE'
            end
            item
              Caption = 'Account Name'
              Width = 300
              FieldName = 'ACCNAME'
            end>
          Properties.ListFieldIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          OnExit = txtAccSellExit
          Width = 244
        end
        object txtOfferPrice: TcxDBCurrencyEdit
          Left = 96
          Top = 82
          DataBinding.DataField = 'BPRICE'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000 %;(#,##0.0000) %'
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          OnExit = txtOfferPriceExit
          Width = 85
        end
        object cxGrid2: TcxGrid
          Left = 570
          Top = 10
          Width = 196
          Height = 156
          TabOrder = 10
          TabStop = False
          object gvwOffer: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsQuotationDealTicket
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            Bands = <
              item
              end>
            object gvwOfferBID_PRICE: TcxGridDBBandedColumn
              Caption = 'Price'
              DataBinding.FieldName = 'OFFER_PRICE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwOfferBOTTOM_BID_PRICE: TcxGridDBBandedColumn
              Caption = 'Bottom'
              DataBinding.FieldName = 'BOTTOM_OFFER_PRICE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwOfferTOP_BID_PRICE: TcxGridDBBandedColumn
              Caption = 'Top'
              DataBinding.FieldName = 'TOP_OFFER_PRICE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = gvwOffer
          end
        end
        object txtCashLimit: TcxCurrencyEdit
          Left = 96
          Top = 55
          TabStop = False
          EditValue = '0'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 1
          Width = 157
        end
        object cxDBCurrencyEdit12: TcxDBCurrencyEdit
          Left = 452
          Top = 28
          TabStop = False
          DataBinding.DataField = 'BPROCEED'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 6
          Width = 100
        end
        object cxDBCurrencyEdit13: TcxDBCurrencyEdit
          Left = 452
          Top = 55
          TabStop = False
          DataBinding.DataField = 'BNETPROCEED'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 7
          Width = 100
        end
        object cxDBCurrencyEdit8: TcxDBCurrencyEdit
          Left = 452
          Top = 82
          TabStop = False
          DataBinding.DataField = 'SUM_BCAPGAIN'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 8
          Width = 100
        end
        object cxDBCurrencyEdit14: TcxDBCurrencyEdit
          Left = 452
          Top = 109
          TabStop = False
          DataBinding.DataField = 'WHT_TAX'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 9
          Width = 100
        end
        object cxDBCurrencyEdit17: TcxDBCurrencyEdit
          Left = 96
          Top = 109
          TabStop = False
          DataBinding.DataField = 'BCOST_PRICE'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000 %;(#,##0.0000) %'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 3
          Width = 85
        end
        object cxDBCurrencyEdit18: TcxDBCurrencyEdit
          Left = 96
          Top = 136
          TabStop = False
          DataBinding.DataField = 'BCOST_AMT'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 5
          Width = 157
        end
        object cxDBDateEdit7: TcxDBDateEdit
          Left = 240
          Top = 109
          DataBinding.DataField = 'BCOSTDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Width = 100
        end
        object dxLayoutControl3Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl1Group4: TdxLayoutGroup
          Parent = dxLayoutControl3Group_Root
          CaptionOptions.Text = 'Sell'
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl1Group6: TdxLayoutGroup
          Parent = dxLayoutControl1Group4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item10: TdxLayoutItem
          Parent = dxLayoutControl1Group6
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account Name'
          Control = txtAccSell
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 244
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item12: TdxLayoutItem
          Parent = dxLayoutControl3Group7
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Price'
          Control = txtOfferPrice
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 85
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item1: TdxLayoutItem
          Parent = dxLayoutControl3Group1
          Control = cxGrid2
          ControlOptions.OriginalHeight = 156
          ControlOptions.OriginalWidth = 196
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          Parent = dxLayoutControl1Group6
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cash Limit'
          Control = txtCashLimit
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 157
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group1: TdxLayoutGroup
          Parent = dxLayoutControl3Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Group2: TdxLayoutGroup
          Parent = dxLayoutControl1Group4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Proceed'
          Control = cxDBCurrencyEdit12
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item4: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Net Proceed'
          Control = cxDBCurrencyEdit13
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group4: TdxLayoutGroup
          Parent = dxLayoutControl3Group2
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group5: TdxLayoutGroup
          Parent = dxLayoutControl3Group4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group6: TdxLayoutGroup
          Parent = dxLayoutControl3Group5
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group7: TdxLayoutGroup
          Parent = dxLayoutControl3Group6
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item5: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Capital Gain'
          Control = cxDBCurrencyEdit8
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item6: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '           WTH Tax'
          Control = cxDBCurrencyEdit14
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl1Group1: TdxLayoutGroup
          Parent = dxLayoutControl3Group_Root
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl3Item7: TdxLayoutItem
          Parent = dxLayoutControl3Group3
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cost Price'
          Control = cxDBCurrencyEdit17
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 85
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item8: TdxLayoutItem
          Parent = dxLayoutControl1Group4
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cost Amount'
          Control = cxDBCurrencyEdit18
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 157
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Item9: TdxLayoutItem
          Parent = dxLayoutControl3Group3
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cost Date'
          Control = cxDBDateEdit7
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group3: TdxLayoutGroup
          Parent = dxLayoutControl1Group4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
      end
    end
    object pnlBuy: TPanel [11]
      Left = 10
      Top = 175
      Width = 779
      Height = 183
      ParentBackground = False
      TabOrder = 20
      object dxLayoutControl4: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 777
        Height = 181
        Align = alClient
        ParentBackground = True
        TabOrder = 0
        ExplicitWidth = 772
        object txtAccBuy: TcxDBLookupComboBox
          Left = 96
          Top = 28
          DataBinding.DataField = 'SACCID'
          DataBinding.DataSource = dsSubject
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'ACCID'
          Properties.ListColumns = <
            item
              Caption = 'Account Code'
              Width = 150
              FieldName = 'ACCCODE'
            end
            item
              Caption = 'Account Name'
              Width = 300
              FieldName = 'ACCNAME'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListSource = dmLookup.dsLuCustBonds
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          OnExit = txtAccBuyExit
          Width = 244
        end
        object txtBidPrice: TcxDBCurrencyEdit
          Left = 96
          Top = 82
          DataBinding.DataField = 'SPRICE'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000 %;(#,##0.0000) %'
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          OnExit = txtBidPriceExit
          Width = 85
        end
        object cxGrid1: TcxGrid
          Left = 570
          Top = 10
          Width = 196
          Height = 159
          TabOrder = 11
          TabStop = False
          object gvwBid: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsQuotationDealTicket
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            Bands = <
              item
              end>
            object gvwBidOFFER_PRICE: TcxGridDBBandedColumn
              Caption = 'Price'
              DataBinding.FieldName = 'BID_PRICE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwBidBOTTOM_OFFER_PRICE: TcxGridDBBandedColumn
              Caption = 'Bottom'
              DataBinding.FieldName = 'BOTTOM_BID_PRICE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwBidTOP_OFFER_PRICE: TcxGridDBBandedColumn
              Caption = 'Top'
              DataBinding.FieldName = 'TOP_BID_PRICE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = gvwBid
          end
        end
        object txtBondsLimit: TcxCurrencyEdit
          Left = 96
          Top = 55
          TabStop = False
          EditValue = 0c
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 1
          Width = 152
        end
        object cxDBCurrencyEdit10: TcxDBCurrencyEdit
          Left = 452
          Top = 28
          TabStop = False
          DataBinding.DataField = 'SPROCEED'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 6
          Width = 100
        end
        object cxDBCurrencyEdit11: TcxDBCurrencyEdit
          Left = 452
          Top = 55
          TabStop = False
          DataBinding.DataField = 'SNETPROCEED'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 7
          Width = 100
        end
        object txtCapGain: TcxDBCurrencyEdit
          Left = 452
          Top = 82
          TabStop = False
          DataBinding.DataField = 'SCAPGAIN'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 8
          Width = 100
        end
        object cxDBCurrencyEdit3: TcxDBCurrencyEdit
          Left = 452
          Top = 109
          TabStop = False
          DataBinding.DataField = 'HOLDING_INTEREST'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 9
          Width = 100
        end
        object txtCostPrice: TcxDBCurrencyEdit
          Left = 96
          Top = 109
          TabStop = False
          DataBinding.DataField = 'SCOST_PRICE'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DecimalPlaces = 4
          Properties.DisplayFormat = '#,##0.0000 %;(#,##0.0000) %'
          Properties.ReadOnly = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          OnExit = txtCostPriceExit
          Width = 85
        end
        object cxDBCurrencyEdit16: TcxDBCurrencyEdit
          Left = 96
          Top = 136
          TabStop = False
          DataBinding.DataField = 'SCOST_AMT'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 5
          Width = 157
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 452
          Top = 136
          TabStop = False
          DataBinding.DataField = 'HOLDING_INTEREST_TAX'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 10
          Width = 100
        end
        object txtConsDate: TcxDBDateEdit
          Left = 240
          Top = 109
          TabStop = False
          DataBinding.DataField = 'SCOSTDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Properties.ReadOnly = False
          Properties.SaveTime = False
          Properties.ShowTime = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clWhite
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Width = 100
        end
        object dxLayoutControl4Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl1Group5: TdxLayoutGroup
          Parent = dxLayoutControl4Group_Root
          CaptionOptions.Text = 'Buy'
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl1Group7: TdxLayoutGroup
          Parent = dxLayoutControl1Group5
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item14: TdxLayoutItem
          Parent = dxLayoutControl1Group7
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account Name'
          Control = txtAccBuy
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 244
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item16: TdxLayoutItem
          Parent = dxLayoutControl4Group6
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Price'
          Control = txtBidPrice
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 85
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item1: TdxLayoutItem
          Parent = dxLayoutControl4Group7
          Control = cxGrid1
          ControlOptions.OriginalHeight = 159
          ControlOptions.OriginalWidth = 196
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          Parent = dxLayoutControl1Group7
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Bonds Limit'
          Control = txtBondsLimit
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 152
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group2: TdxLayoutGroup
          Parent = dxLayoutControl1Group5
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item3: TdxLayoutItem
          Parent = dxLayoutControl4Group10
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Proceed'
          Control = cxDBCurrencyEdit10
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group4: TdxLayoutGroup
          Parent = dxLayoutControl4Group2
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item4: TdxLayoutItem
          Parent = dxLayoutControl4Group10
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Net Proceed'
          Control = cxDBCurrencyEdit11
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group6: TdxLayoutGroup
          Parent = dxLayoutControl4Group4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group7: TdxLayoutGroup
          Parent = dxLayoutControl4Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item15: TdxLayoutItem
          Parent = dxLayoutControl4Group10
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Capital Gain'
          Control = txtCapGain
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item27: TdxLayoutItem
          Parent = dxLayoutControl4Group10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Holding Interest'
          Control = cxDBCurrencyEdit3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Group10: TdxLayoutGroup
          Parent = dxLayoutControl4Group_Root
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl4Item5: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cost Price'
          Control = txtCostPrice
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 85
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item6: TdxLayoutItem
          Parent = dxLayoutControl1Group5
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cost Amount'
          Control = cxDBCurrencyEdit16
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 157
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item7: TdxLayoutItem
          Parent = dxLayoutControl4Group10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Interest Tax'
          Control = cxDBCurrencyEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl4Item8: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cost Date'
          Control = txtConsDate
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group1: TdxLayoutGroup
          Parent = dxLayoutControl1Group5
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
      end
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit [12]
      Left = 262
      Top = 136
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
      TabOrder = 12
      Width = 89
    end
    object txtQuotationLimit: TcxCurrencyEdit [13]
      Left = 467
      Top = 82
      TabStop = False
      EditValue = 0c
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 100
    end
    object txtHardLimitDealer: TcxCurrencyEdit [14]
      Left = 467
      Top = 109
      TabStop = False
      EditValue = 0c
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Properties.ReadOnly = True
      Properties.OnEditValueChanged = txtHardLimitDealerPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 100
    end
    object txtSoftLimitDealer: TcxCurrencyEdit [15]
      Left = 467
      Top = 136
      TabStop = False
      EditValue = 0c
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 100
    end
    object cxGrid3: TcxGrid [16]
      Left = 807
      Top = 28
      Width = 246
      Height = 506
      TabOrder = 22
      TabStop = False
      object gvwAquisitionBonds: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = gvwAquisitionBondsCellClick
        DataController.DataSource = dsAquisitionBonds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Bands = <
          item
          end>
        object gvwAquisitionBondsVALUEDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VALUEDATE'
          Width = 69
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
        object gvwAquisitionBondsSTOCKID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCKID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsAVGPRICE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AVGPRICE'
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwAquisitionBondsAVAIL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AVAIL'
          Width = 98
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = gvwAquisitionBonds
      end
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [17]
      Left = 683
      Top = 109
      TabStop = False
      DataBinding.DataField = 'ACCRDAYS'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0 Days;(#,##0) Days'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 94
    end
    object txtDueDays: TcxDBCurrencyEdit [18]
      Left = 405
      Top = 10
      TabStop = False
      DataBinding.DataField = 'DUEDAYS'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      OnExit = txtDueDaysExit
      Width = 26
    end
    object cxDBCurrencyEdit7: TcxDBCurrencyEdit [19]
      Left = 683
      Top = 55
      TabStop = False
      DataBinding.DataField = 'HOLDPERIOD'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0 Days'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 94
    end
    object cxDBCurrencyEdit9: TcxDBCurrencyEdit [20]
      Left = 683
      Top = 82
      TabStop = False
      DataBinding.DataField = 'INTEREST_AMT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 94
    end
    object cxDBDateEdit4: TcxDBDateEdit [21]
      Left = 494
      Top = 10
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
      TabOrder = 3
      Width = 80
    end
    object cxDBDateEdit5: TcxDBDateEdit [22]
      Left = 683
      Top = 28
      TabStop = False
      DataBinding.DataField = 'MATURITY_DATE'
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
      TabOrder = 16
      Width = 94
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group16
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trade Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Instrument Code'
      Control = txtInstrument
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 148
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group20
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trade Type'
      Control = txtTradeType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group20
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group20
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Face Value'
      Control = txtFaceValue
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group20
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Interest Rate'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'cxDBTextEdit5'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 324
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group16
      CaptionOptions.Text = 'Instrument Code'
      Visible = False
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Last Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Next Date'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Control = pnlSell
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 183
      ControlOptions.OriginalWidth = 771
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Visible = False
      Control = pnlBuy
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 183
      ControlOptions.OriginalWidth = 774
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group19
      CaptionOptions.Text = 'Coupon'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Periode'
      Control = cxDBCurrencyEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group19
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Quotation Limit'
      Visible = False
      Control = txtQuotationLimit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Hard Limit Dealer'
      Control = txtHardLimitDealer
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Soft Limit Dealer'
      Control = txtSoftLimitDealer
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group15
      CaptionOptions.Text = 'Aquisition Bonds'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'cxGrid3'
      CaptionOptions.Visible = False
      Control = cxGrid3
      ControlOptions.OriginalHeight = 506
      ControlOptions.OriginalWidth = 246
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group14: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group15: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item28: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Accrued Days'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item29: TdxLayoutItem
      Parent = dxLayoutControl1Group16
      CaptionOptions.Text = 'Due Days'
      Control = txtDueDays
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 26
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Holding Period'
      Control = cxDBCurrencyEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item30: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Accrued Interest'
      Control = cxDBCurrencyEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item31: TdxLayoutItem
      Parent = dxLayoutControl1Group16
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group16: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group18: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group19: TdxLayoutGroup
      Parent = dxLayoutControl1Group18
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group20: TdxLayoutGroup
      Parent = dxLayoutControl1Group19
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group18
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item32: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Maturity Date'
      Control = cxDBDateEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 578
    Width = 1076
    ExplicitTop = 578
    ExplicitWidth = 1076
    inherited dbNavLog: TDBNavigator
      Left = 962
      Hints.Strings = ()
      ExplicitLeft = 962
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 627
    Width = 1076
    ExplicitTop = 627
    ExplicitWidth = 1076
  end
  inherited tabEditorData: TTabSet
    Top = 557
    Width = 1076
    ExplicitTop = 557
    ExplicitWidth = 1076
  end
  inherited dsSubject: TDataSource
    DataSet = frmBondsDealTicketList.cdsBondsDealTicket
    Left = 825
    Top = 583
  end
  object cdsCouponPayment: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'INSTRUMENT_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'COUPONDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryCouponPayment'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 861
    Top = 402
    object cdsCouponPaymentINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      ReadOnly = True
      Required = True
    end
    object cdsCouponPaymentINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsCouponPaymentSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 50
    end
    object cdsCouponPaymentMATURITYDATE: TDateTimeField
      FieldName = 'MATURITYDATE'
    end
    object cdsCouponPaymentCOUPONDATE: TDateTimeField
      FieldName = 'COUPONDATE'
      ReadOnly = True
    end
    object cdsCouponPaymentINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
      ReadOnly = True
    end
    object cdsCouponPaymentCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCouponPaymentCALCULATE_DAYS_METHOD: TIntegerField
      FieldName = 'CALCULATE_DAYS_METHOD'
    end
    object cdsCouponPaymentCOUNTINGDAYS_METHOD: TIntegerField
      FieldName = 'COUNTINGDAYS_METHOD'
    end
    object cdsCouponPaymentDAYSOFYEAR: TIntegerField
      FieldName = 'DAYSOFYEAR'
    end
    object cdsCouponPaymentCOUPON_IN_YEAR: TIntegerField
      FieldName = 'COUPON_IN_YEAR'
    end
    object cdsCouponPaymentMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
  end
  object cdsQuotationDealTicket: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'TRADE_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INSTRUMENT_ID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryQuotationDealTicket'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 861
    Top = 312
    object cdsQuotationDealTicketTRADE_DATE: TDateTimeField
      FieldName = 'TRADE_DATE'
    end
    object cdsQuotationDealTicketINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
    end
    object cdsQuotationDealTicketINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
    end
    object cdsQuotationDealTicketSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 50
    end
    object cdsQuotationDealTicketBOTTOM_BID_PRICE: TFloatField
      FieldName = 'BOTTOM_BID_PRICE'
    end
    object cdsQuotationDealTicketTOP_BID_PRICE: TFloatField
      FieldName = 'TOP_BID_PRICE'
    end
    object cdsQuotationDealTicketBID_PRICE: TFloatField
      FieldName = 'BID_PRICE'
    end
    object cdsQuotationDealTicketBOTTOM_OFFER_PRICE: TFloatField
      FieldName = 'BOTTOM_OFFER_PRICE'
    end
    object cdsQuotationDealTicketTOP_OFFER_PRICE: TFloatField
      FieldName = 'TOP_OFFER_PRICE'
    end
    object cdsQuotationDealTicketOFFER_PRICE: TFloatField
      FieldName = 'OFFER_PRICE'
    end
    object cdsQuotationDealTicketHARDLIMIT: TFloatField
      FieldName = 'HARDLIMIT'
    end
    object cdsQuotationDealTicketMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsQuotationDealTicketMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsQuotationDealTicketAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsQuotationDealTicketAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsQuotationDealTicketISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsQuotationDealTicketID: TLargeintField
      FieldName = 'ID'
    end
    object cdsQuotationDealTicketYIELDBUY: TFloatField
      FieldName = 'YIELDBUY'
    end
    object cdsQuotationDealTicketYIELDSELL: TFloatField
      FieldName = 'YIELDSELL'
    end
  end
  object dsQuotationDealTicket: TDataSource
    DataSet = cdsQuotationDealTicket
    Left = 915
    Top = 582
  end
  object cdsUserLimit: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'USERID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryUserLimit'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 861
    Top = 357
    object cdsUserLimitUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsUserLimitHARDLIMIT: TFloatField
      FieldName = 'HARDLIMIT'
    end
    object cdsUserLimitSOFTLIMIT: TFloatField
      FieldName = 'SOFTLIMIT'
    end
    object cdsUserLimitTEMPLIMIT: TFloatField
      FieldName = 'TEMPLIMIT'
    end
  end
  object cdsAquisitionBonds: TNClientDataset
    Aggregates = <>
    Filtered = True
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INSTRUMENT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryBondsAquisition'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 993
    Top = 162
    object cdsAquisitionBondsVALUEDATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'VALUEDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsAquisitionBondsACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAquisitionBondsSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsAquisitionBondsAVGPRICE: TFloatField
      DisplayLabel = 'Price'
      FieldName = 'AVGPRICE'
      DisplayFormat = '#,##0.0000'
    end
    object cdsAquisitionBondsAVAIL: TFloatField
      DisplayLabel = 'Available'
      FieldName = 'AVAIL'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
    object cdsAquisitionBondsACQDATE: TDateField
      FieldName = 'ACQDATE'
    end
  end
  object dsAquisitionBonds: TDataSource
    DataSet = cdsAquisitionBonds
    Left = 1017
    Top = 579
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
    Left = 861
    Top = 267
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
  object cdsAccCashPosition: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'TRADEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmFixIncome_qryAccCashPosition'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 993
    Top = 114
    object cdsAccCashPositionACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsAccCashPositionACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsAccCashPositionACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsAccCashPositionCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsAccCashPositionCashOnHand: TFloatField
      FieldName = 'CashOnHand'
    end
    object cdsAccCashPositionCashOnHold: TFloatField
      FieldName = 'CashOnHold'
    end
    object cdsAccCashPositionARAmt: TFloatField
      FieldName = 'ARAmt'
    end
    object cdsAccCashPositionApAmt: TFloatField
      FieldName = 'ApAmt'
    end
    object cdsAccCashPositionNetARAP: TFloatField
      FieldName = 'NetARAP'
    end
    object cdsAccCashPositionCashPosition: TFloatField
      FieldName = 'CashPosition'
    end
  end
  object cdsAccInstrumentBond: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STOCKID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryAccInstrumentBond'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 993
    Top = 75
    object cdsAccInstrumentBondACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccInstrumentBondSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsAccInstrumentBondAVAIL: TFloatField
      FieldName = 'AVAIL'
      ReadOnly = True
    end
  end
  object cdsBondsCashPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'VALUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmFixIncome_qryBondsCashPos'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 993
    Top = 207
    object cdsBondsCashPosVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsBondsCashPosACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsBondsCashPosCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsBondsCashPosACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsBondsCashPosCASH_ONHAND: TFloatField
      FieldName = 'CASH_ONHAND'
    end
    object cdsBondsCashPosCASH_ONHOLD: TFloatField
      FieldName = 'CASH_ONHOLD'
    end
    object cdsBondsCashPosARAMT: TFloatField
      FieldName = 'ARAMT'
    end
    object cdsBondsCashPosAPAMT: TFloatField
      FieldName = 'APAMT'
    end
    object cdsBondsCashPosCASH_OUTS: TFloatField
      FieldName = 'CASH_OUTS'
    end
    object cdsBondsCashPosBUY_AMT: TFloatField
      FieldName = 'BUY_AMT'
    end
    object cdsBondsCashPosSELL_AMT: TFloatField
      FieldName = 'SELL_AMT'
    end
    object cdsBondsCashPosMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBondsCashPosMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBondsCashPosAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBondsCashPosAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBondsCashPosUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBondsCashPosUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBondsCashPosNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBondsCashPosISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBondsCashPosID: TLargeintField
      FieldName = 'ID'
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
    Left = 861
    Top = 126
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
    Left = 861
    Top = 78
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
  end
  object cdsStockPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'TRADEDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'STOCKID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'PRICE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryStockPos'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 861
    Top = 219
    object cdsStockPosVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsStockPosACQDATE: TDateField
      FieldName = 'ACQDATE'
    end
    object cdsStockPosACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsStockPosACCNO: TStringField
      FieldName = 'ACCNO'
      Required = True
      Size = 30
    end
    object cdsStockPosSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsStockPosSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Required = True
    end
    object cdsStockPosAVGPRICE: TFloatField
      FieldName = 'AVGPRICE'
    end
    object cdsStockPosQTY_ONHAND: TFloatField
      FieldName = 'QTY_ONHAND'
    end
    object cdsStockPosQTY_OUTS: TFloatField
      FieldName = 'QTY_OUTS'
    end
    object cdsStockPosQTY_ONHOLD: TFloatField
      FieldName = 'QTY_ONHOLD'
    end
    object cdsStockPosQTY_BAL: TFloatField
      FieldName = 'QTY_BAL'
    end
    object cdsStockPosQTY_OVERDUE: TFloatField
      FieldName = 'QTY_OVERDUE'
    end
    object cdsStockPosQTY_DLV: TFloatField
      FieldName = 'QTY_DLV'
    end
    object cdsStockPosQTY_RCV: TFloatField
      FieldName = 'QTY_RCV'
    end
    object cdsStockPosPROFIT_LOSS: TFloatField
      FieldName = 'PROFIT_LOSS'
    end
    object cdsStockPosBUY_VAL: TFloatField
      FieldName = 'BUY_VAL'
    end
    object cdsStockPosSELL_VAL: TFloatField
      FieldName = 'SELL_VAL'
    end
  end
  object cdsAccCreditLimit: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccCreditLimit'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 861
    Top = 174
    object cdsAccCreditLimitACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccCreditLimitCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
    end
    object cdsAccCreditLimitCCLSSNAME: TStringField
      FieldName = 'CCLSSNAME'
      Size = 80
    end
    object cdsAccCreditLimitCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
      Size = 40
    end
    object cdsAccCreditLimitTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsAccCreditLimitTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsAccCreditLimitTLB_OVERLIMIT: TStringField
      FieldName = 'TLB_OVERLIMIT'
      Size = 1
    end
    object cdsAccCreditLimitTLB_NOTVALIDSTATUS: TStringField
      FieldName = 'TLB_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsAccCreditLimitTLB_MRG_NONVALSTOCK: TStringField
      FieldName = 'TLB_MRG_NONVALSTOCK'
      Size = 1
    end
    object cdsAccCreditLimitTLB_OVERDUE: TStringField
      FieldName = 'TLB_OVERDUE'
      Size = 1
    end
    object cdsAccCreditLimitTLS_SHORTSELL: TStringField
      FieldName = 'TLS_SHORTSELL'
      Size = 1
    end
    object cdsAccCreditLimitTLS_NOTVALIDSTATUS: TStringField
      FieldName = 'TLS_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsAccCreditLimitTLS_OVERDUE: TStringField
      FieldName = 'TLS_OVERDUE'
      Size = 1
    end
    object cdsAccCreditLimitRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
    end
    object cdsAccCreditLimitRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
    end
    object cdsAccCreditLimitRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
    end
    object cdsAccCreditLimitFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
    end
    object cdsAccCreditLimitCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsAccCreditLimitBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsAccCreditLimitSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
    object cdsAccCreditLimitMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccCreditLimitMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccCreditLimitAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccCreditLimitAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccCreditLimitUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccCreditLimitUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccCreditLimitNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccCreditLimitISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccCreditLimitID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsStockPosNonSafeKeep: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'TRADEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryStockPosNonSafeKeep'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 993
    Top = 258
    object cdsStockPosNonSafeKeepACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsStockPosNonSafeKeepAVAIL: TFloatField
      FieldName = 'AVAIL'
      ReadOnly = True
    end
  end
  object cdsCashPosNonSafeKeep: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'VALUEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryCashPosNonSafeKeep'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 996
    Top = 309
    object cdsCashPosNonSafeKeepACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCashPosNonSafeKeepBUY_AMT: TFloatField
      FieldName = 'BUY_AMT'
    end
  end
end
