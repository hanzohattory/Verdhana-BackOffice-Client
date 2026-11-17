inherited frmReconcileDTE: TfrmReconcileDTE
  Caption = 'Reconsile DTE'
  ClientHeight = 527
  ClientWidth = 1085
  OnResize = FormResize
  ExplicitWidth = 1085
  ExplicitHeight = 527
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 1085
    Height = 150
    Align = alTop
    TabOrder = 0
    object dtTransDate: TcxDateEdit
      Left = 97
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    object cxButton1: TcxButton
      Left = 223
      Top = 10
      Width = 80
      Height = 25
      Action = actViewData
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 415
      Top = 10
      Width = 100
      Height = 25
      Action = actShowHideDesc
      TabOrder = 3
    end
    object cxLabel1: TcxLabel
      Left = 232
      Top = 59
      AutoSize = False
      Caption = 'DTE Exists in Deal Ticket'
      ParentColor = False
      Style.BorderStyle = ebsNone
      Style.Color = clLime
      Style.HotTrack = False
      Style.TextColor = clWindowText
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 30
      Width = 180
      AnchorX = 322
      AnchorY = 74
    end
    object cxLabel2: TcxLabel
      Left = 232
      Top = 95
      AutoSize = False
      Caption = 'DTE not Exists in Deal Ticket'
      ParentColor = False
      Style.Color = clWhite
      Style.HotTrack = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 30
      Width = 180
      AnchorX = 322
      AnchorY = 110
    end
    object cxLabel3: TcxLabel
      Left = 22
      Top = 95
      AutoSize = False
      Caption = 'Off Market Transaction'
      ParentColor = False
      Style.Color = clYellow
      Style.HotTrack = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 30
      Width = 180
      AnchorX = 112
      AnchorY = 110
    end
    object cxLabel4: TcxLabel
      Left = 22
      Top = 59
      AutoSize = False
      Caption = 'Market Transaction'
      ParentColor = False
      Style.Color = clAqua
      Style.HotTrack = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 30
      Width = 180
      AnchorX = 112
      AnchorY = 74
    end
    object cxButton3: TcxButton
      Left = 309
      Top = 10
      Width = 100
      Height = 25
      Action = actCompareData
      TabOrder = 2
    end
    object cxButton4: TcxButton
      Left = 521
      Top = 10
      Width = 100
      Height = 25
      Action = actViewDifference
      TabOrder = 4
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Transaction Date'
      Control = dtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'DTE Data Colour Description'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 180
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 180
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'cxLabel3'
      CaptionOptions.Visible = False
      Control = cxLabel3
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 180
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'cxLabel4'
      CaptionOptions.Visible = False
      Control = cxLabel4
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 180
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Valid Order Data Colour Description'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  object cxPageControl1: TcxPageControl [1]
    Left = 0
    Top = 150
    Width = 1085
    Height = 377
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tabRecDTE
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 373
    ClientRectLeft = 4
    ClientRectRight = 1081
    ClientRectTop = 4
    object tabRecDTE: TcxTabSheet
      Caption = 'Reconcile DTE'
      ImageIndex = 0
      TabVisible = False
      object grdOrderView: TcxGrid
        Left = 0
        Top = 0
        Width = 425
        Height = 252
        Align = alLeft
        TabOrder = 0
        object gvwOrderView: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = gvwOrderViewCustomDrawCell
          DataController.DataSource = dsRecDealTicketExec
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'EXVALUE'
              Column = gvwOrderViewEXVALUE
            end
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'EXQTY'
              Column = gvwOrderViewEXQTY
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.HideSelection = True
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Valid Order Data'
            end>
          object gvwOrderViewACCNO: TcxGridDBBandedColumn
            Caption = 'Account No.'
            DataBinding.FieldName = 'ACCNO'
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwOrderViewBROKERCODE: TcxGridDBBandedColumn
            Caption = 'Broker Code'
            DataBinding.FieldName = 'BROKERCODE'
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwOrderViewEXQTY: TcxGridDBBandedColumn
            Caption = 'Quantity'
            DataBinding.FieldName = 'EXQTY'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwOrderViewEXPRICE: TcxGridDBBandedColumn
            Caption = 'Price'
            DataBinding.FieldName = 'EXPRICE'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwOrderViewEXVALUE: TcxGridDBBandedColumn
            Caption = 'Value'
            DataBinding.FieldName = 'EXVALUE'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwOrderViewEXTIME: TcxGridDBBandedColumn
            Caption = 'Execution Time'
            DataBinding.FieldName = 'EXTIME'
            Width = 78
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwOrderViewDUECASH: TcxGridDBBandedColumn
            Caption = 'Due Cash'
            DataBinding.FieldName = 'DUECASH'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwOrderViewDUESTOCK: TcxGridDBBandedColumn
            Caption = 'Due Stock'
            DataBinding.FieldName = 'DUESTOCK'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwOrderViewTRDID: TcxGridDBBandedColumn
            Caption = 'Transaction Code'
            DataBinding.FieldName = 'TRDID'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwOrderViewACCNAME: TcxGridDBBandedColumn
            Caption = 'Account Name'
            DataBinding.FieldName = 'ACCNAME'
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwOrderViewSTOCKCODE: TcxGridDBBandedColumn
            Caption = 'Stock Code'
            DataBinding.FieldName = 'STOCKCODE'
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwOrderViewSTOCKNAME: TcxGridDBBandedColumn
            Caption = 'Stock Name'
            DataBinding.FieldName = 'STOCKNAME'
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwOrderViewBS: TcxGridDBBandedColumn
            Caption = 'B / S'
            DataBinding.FieldName = 'BS'
            RepositoryItem = dmGlobal.luBuySell
            Width = 28
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwOrderViewMARKETCODE: TcxGridDBBandedColumn
            Caption = 'Market'
            DataBinding.FieldName = 'MARKETCODE'
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwOrderViewBOARDCODE: TcxGridDBBandedColumn
            Caption = 'Board'
            DataBinding.FieldName = 'BOARDCODE'
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwOrderViewREC_STATUS: TcxGridDBBandedColumn
            Caption = 'Reconsile Status'
            DataBinding.FieldName = 'REC_STATUS'
            Width = 85
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwOrderViewMARKET: TcxGridDBBandedColumn
            Caption = 'Market Transaction'
            DataBinding.FieldName = 'MARKET'
            RepositoryItem = dmGlobal.chkStandard
            Width = 98
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
        end
        object grdOrderViewLevel1: TcxGridLevel
          GridView = gvwOrderView
        end
      end
      object grdDTEView: TcxGrid
        Left = 425
        Top = 0
        Width = 652
        Height = 252
        Align = alClient
        TabOrder = 1
        object gvwDTEView: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = gvwDTEViewCustomDrawCell
          DataController.DataSource = dsRecDTE
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'STK_VAL'
              Column = gvwDTEViewSTK_VAL
            end
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'STK_VOLM'
              Column = gvwDTEViewSTK_VOLM
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.HideSelection = True
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'DTE Data'
            end>
          object gvwDTEViewTRX_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_CODE'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwDTEViewTRX_POST: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_POST'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwDTEViewTRX_NOTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_NOTE'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwDTEViewTRX_SESS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_SESS'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwDTEViewTRX_TYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_TYPE'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwDTEViewBRK_COD2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BRK_COD2'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwDTEViewINV_TYP2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INV_TYP2'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwDTEViewBRK_COD1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BRK_COD1'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwDTEViewINV_TYP1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INV_TYP1'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwDTEViewSTK_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STK_CODE'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwDTEViewSTK_VOLM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STK_VOLM'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwDTEViewSTK_PRIC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STK_PRIC'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwDTEViewTRX_ORD2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_ORD2'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwDTEViewTRX_ORD1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_ORD1'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwDTEViewTRX_REF2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_REF2'
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwDTEViewTRX_REF1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_REF1'
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwDTEViewTRX_KOPUR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_KOPUR'
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwDTEViewTRX_TIME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_TIME'
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwDTEViewTRX_USER: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_USER'
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gvwDTEViewTRADING_ID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRADING_ID'
            Width = 68
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object gvwDTEViewREC_STATUS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REC_STATUS'
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object gvwDTEViewBS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BS'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwDTEViewSTK_VAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STK_VAL'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwDTEViewDIFFERENT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DIFFERENT'
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwDTEView
        end
      end
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 252
        Width = 1077
        Height = 117
        Align = alBottom
        TabOrder = 2
        object edBuyMarketTotal: TcxTextEdit
          Left = 167
          Top = 28
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 110
        end
        object edSellMarketTotal: TcxTextEdit
          Left = 167
          Top = 55
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 110
        end
        object edSellDTETotal: TcxTextEdit
          Left = 696
          Top = 55
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 110
        end
        object edBuyDTETotal: TcxTextEdit
          Left = 696
          Top = 28
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 110
        end
        object edBuyOffMarketTotal: TcxTextEdit
          Left = 447
          Top = 28
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 110
        end
        object edSellOffMarketTotal: TcxTextEdit
          Left = 447
          Top = 55
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 110
        end
        object txtDiffBuy: TcxCurrencyEdit
          Left = 945
          Top = 28
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0);0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 110
        end
        object txtDiffSell: TcxCurrencyEdit
          Left = 945
          Top = 55
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0);0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 110
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl2Item1: TdxLayoutItem
          Parent = dxLayoutControl2Group4
          CaptionOptions.Text = 'Total Buy Market Transaction'
          Control = edBuyMarketTotal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 110
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl2Item2: TdxLayoutItem
          Parent = dxLayoutControl2Group5
          CaptionOptions.Text = 'Total Sell Market Transaction'
          Control = edSellMarketTotal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 110
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl2Group1: TdxLayoutGroup
          Parent = dxLayoutControl2Group3
          CaptionOptions.Text = 'Valid Order Data Summary'
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl2Item4: TdxLayoutItem
          Parent = dxLayoutControl2Group2
          CaptionOptions.Text = 'Total Sell Transaction'
          Control = edSellDTETotal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 110
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Group2: TdxLayoutGroup
          Parent = dxLayoutControl2Group3
          CaptionOptions.Text = 'DTE Data Summary'
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl2Group3: TdxLayoutGroup
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl2Item3: TdxLayoutItem
          Parent = dxLayoutControl2Group2
          CaptionOptions.Text = 'Total Buy Transaction'
          Control = edBuyDTETotal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 110
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl2Item5: TdxLayoutItem
          Parent = dxLayoutControl2Group4
          CaptionOptions.Text = 'Total Buy Off Market Transaction'
          Control = edBuyOffMarketTotal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 110
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Item6: TdxLayoutItem
          Parent = dxLayoutControl2Group5
          CaptionOptions.Text = 'Total Sell Off Market Transaction'
          Control = edSellOffMarketTotal
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 110
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Group4: TdxLayoutGroup
          Parent = dxLayoutControl2Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl2Group5: TdxLayoutGroup
          Parent = dxLayoutControl2Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Group6: TdxLayoutGroup
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'Difference'
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl2Item7: TdxLayoutItem
          Parent = dxLayoutControl2Group6
          CaptionOptions.Text = 'Total Buy Transaction'
          Control = txtDiffBuy
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 110
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl2Item8: TdxLayoutItem
          Parent = dxLayoutControl2Group6
          CaptionOptions.Text = 'Total Sell Transaction'
          Control = txtDiffSell
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 110
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
  end
  inherited popDocking: TPopupMenu
    Left = 224
    Top = 192
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclRecDTE
    Left = 312
    Top = 192
  end
  object aclRecDTE: TActionList
    Left = 312
    Top = 248
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
      ActionLog = dmGlobal.ActionLog
      ActionType = 'View Data'
    end
    object actCompareData: TNAction
      Category = 'NActions'
      Caption = 'Compare Data'
      OnExecute = actCompareDataExecute
      CheckPermission = False
      ActionLog = dmGlobal.ActionLog
    end
    object actShowHideDesc: TNAction
      Category = 'NActions'
      Caption = 'Hide Description'
      OnExecute = actShowHideDescExecute
      CheckPermission = False
      ActionLog = dmGlobal.ActionLog
    end
    object actReconcile: TNAction
      Category = 'NActions'
      Caption = 'Reconcile'
      CheckPermission = False
    end
    object actViewDifference: TNAction
      Category = 'NActions'
      Caption = 'View Difference'
      OnExecute = actViewDifferenceExecute
      CheckPermission = False
    end
  end
  object cdsRecDealTicketExec: TNClientDataset
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DEALTICKETID'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'SEQID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'BOARDID'
        DataType = ftLargeint
      end
      item
        Name = 'BROKERCODE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'EXQTY'
        DataType = ftLargeint
      end
      item
        Name = 'EXPRICE'
        DataType = ftFloat
      end
      item
        Name = 'EXVALUE'
        DataType = ftFloat
      end
      item
        Name = 'EXTIME'
        DataType = ftTime
      end
      item
        Name = 'DUECASH'
        DataType = ftDateTime
      end
      item
        Name = 'DUESTOCK'
        DataType = ftDateTime
      end
      item
        Name = 'TRDID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MODDA'
        DataType = ftDateTime
      end
      item
        Name = 'MODUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'APPDA'
        DataType = ftDateTime
      end
      item
        Name = 'APPUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ISDEL'
        DataType = ftInteger
      end
      item
        Name = 'ID'
        DataType = ftLargeint
      end
      item
        Name = 'CPACCID'
        DataType = ftInteger
      end
      item
        Name = 'ACCID'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'ACCNO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ACCNAME'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 150
      end
      item
        Name = 'STOCKID'
        Attributes = [faReadonly]
        DataType = ftLargeint
      end
      item
        Name = 'STOCKCODE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'STOCKNAME'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 150
      end
      item
        Name = 'BS'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MARKETCODE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'BOARDCODE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'MARKET'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'cdsRecDealTicketExecIndex1'
        Fields = 'TRDID;BS'
      end>
    IndexFieldNames = 'TRDID;BS'
    Params = <
      item
        DataType = ftDate
        Name = 'DEALTICKETDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryRecDealTicketExec'
    RemoteServer = dmGlobal.dspConnection
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 296
    Top = 360
    object cdsRecDealTicketExecDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsRecDealTicketExecSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsRecDealTicketExecBOARDID: TLargeintField
      FieldName = 'BOARDID'
    end
    object cdsRecDealTicketExecBROKERCODE: TStringField
      FieldName = 'BROKERCODE'
      Size = 10
    end
    object cdsRecDealTicketExecEXQTY: TLargeintField
      FieldName = 'EXQTY'
      DisplayFormat = '#,##0'
    end
    object cdsRecDealTicketExecEXPRICE: TFloatField
      FieldName = 'EXPRICE'
      DisplayFormat = '#,##0'
    end
    object cdsRecDealTicketExecEXVALUE: TFloatField
      FieldName = 'EXVALUE'
      DisplayFormat = '#,##0'
    end
    object cdsRecDealTicketExecEXTIME: TTimeField
      FieldName = 'EXTIME'
    end
    object cdsRecDealTicketExecDUECASH: TDateTimeField
      FieldName = 'DUECASH'
    end
    object cdsRecDealTicketExecDUESTOCK: TDateTimeField
      FieldName = 'DUESTOCK'
    end
    object cdsRecDealTicketExecTRDID: TStringField
      FieldName = 'TRDID'
    end
    object cdsRecDealTicketExecMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRecDealTicketExecMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRecDealTicketExecAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRecDealTicketExecAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRecDealTicketExecISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRecDealTicketExecID: TLargeintField
      FieldName = 'ID'
    end
    object cdsRecDealTicketExecCPACCID: TIntegerField
      FieldName = 'CPACCID'
    end
    object cdsRecDealTicketExecACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
    end
    object cdsRecDealTicketExecACCNO: TStringField
      FieldName = 'ACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsRecDealTicketExecACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsRecDealTicketExecSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      ReadOnly = True
    end
    object cdsRecDealTicketExecSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      ReadOnly = True
    end
    object cdsRecDealTicketExecSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsRecDealTicketExecBS: TStringField
      FieldName = 'BS'
      ReadOnly = True
      Size = 1
    end
    object cdsRecDealTicketExecMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsRecDealTicketExecBOARDCODE: TStringField
      FieldName = 'BOARDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsRecDealTicketExecREC_STATUS: TStringField
      FieldKind = fkCalculated
      FieldName = 'REC_STATUS'
      Size = 1
      Calculated = True
    end
    object cdsRecDealTicketExecMARKET: TStringField
      FieldName = 'MARKET'
      ReadOnly = True
      Size = 1
    end
  end
  object cdsRecDTE: TNClientDataset
    Aggregates = <>
    IndexFieldNames = 'TRX_CODE'
    Params = <
      item
        DataType = ftDate
        Name = 'TRX_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryRecDTE'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsRecDTECalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 773
    Top = 360
    object cdsRecDTETRX_CODE: TIntegerField
      FieldName = 'TRX_CODE'
    end
    object cdsRecDTETRX_POST: TSmallintField
      FieldName = 'TRX_POST'
    end
    object cdsRecDTETRX_NOTE: TStringField
      FieldName = 'TRX_NOTE'
      Size = 30
    end
    object cdsRecDTETRX_SESS: TLargeintField
      FieldName = 'TRX_SESS'
    end
    object cdsRecDTETRX_TYPE: TStringField
      FieldName = 'TRX_TYPE'
      Size = 2
    end
    object cdsRecDTEBRK_COD2: TStringField
      FieldName = 'BRK_COD2'
      Size = 5
    end
    object cdsRecDTEINV_TYP2: TStringField
      FieldName = 'INV_TYP2'
      Size = 1
    end
    object cdsRecDTEBRK_COD1: TStringField
      FieldName = 'BRK_COD1'
      Size = 5
    end
    object cdsRecDTEINV_TYP1: TStringField
      FieldName = 'INV_TYP1'
      Size = 1
    end
    object cdsRecDTESTK_CODE: TStringField
      FieldName = 'STK_CODE'
      Size = 7
    end
    object cdsRecDTESTK_VOLM: TLargeintField
      FieldName = 'STK_VOLM'
      DisplayFormat = '#,##0'
    end
    object cdsRecDTESTK_PRIC: TFloatField
      FieldName = 'STK_PRIC'
      DisplayFormat = '#,##0'
    end
    object cdsRecDTETRX_ORD2: TIntegerField
      FieldName = 'TRX_ORD2'
    end
    object cdsRecDTETRX_ORD1: TIntegerField
      FieldName = 'TRX_ORD1'
    end
    object cdsRecDTETRX_REF2: TStringField
      FieldName = 'TRX_REF2'
    end
    object cdsRecDTETRX_REF1: TStringField
      FieldName = 'TRX_REF1'
    end
    object cdsRecDTETRX_KOPUR: TFloatField
      FieldName = 'TRX_KOPUR'
    end
    object cdsRecDTETRX_TIME: TStringField
      FieldName = 'TRX_TIME'
      Size = 8
    end
    object cdsRecDTETRX_USER: TStringField
      FieldName = 'TRX_USER'
      Size = 10
    end
    object cdsRecDTETRADING_ID: TStringField
      FieldName = 'TRADING_ID'
      Size = 10
    end
    object cdsRecDTEBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsRecDTEDTEID: TLargeintField
      FieldName = 'DTEID'
    end
    object cdsRecDTEREC_STATUS: TStringField
      FieldName = 'REC_STATUS'
      Size = 1
    end
    object cdsRecDTESTK_VAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'STK_VAL'
      DisplayFormat = '#,##0'
      Calculated = True
    end
    object cdsRecDTETRX_CODE_STR: TStringField
      FieldKind = fkCalculated
      FieldName = 'TRX_CODE_STR'
      Size = 50
      Calculated = True
    end
    object cdsRecDTEDIFFERENT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DIFFERENT'
      DisplayFormat = '#,##0;(#,##0);0'
      Calculated = True
    end
  end
  object dsRecDealTicketExec: TDataSource
    DataSet = cdsRecDealTicketExec
    Left = 296
    Top = 408
  end
  object dsRecDTE: TDataSource
    DataSet = cdsRecDTE
    Left = 776
    Top = 312
  end
  object cdsRecDealExecSum: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DEALTICKETDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MARKET'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryRecDealExecSum'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 72
    Top = 344
    object cdsRecDealExecSumTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
  end
  object cdsRecDTESum: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRX_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BS'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryRecDTESum'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 552
    Top = 336
    object cdsRecDTESumTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
  end
  object cdsCheckDTERecon: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'TransDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryCheckDTERecon'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 516
    Top = 81
    object cdsCheckDTEReconDT_STOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'DT_STOCKCODE'
    end
    object cdsCheckDTEReconDT_BOARDCODE: TStringField
      DisplayLabel = 'Board'
      FieldName = 'DT_BOARDCODE'
      Size = 10
    end
    object cdsCheckDTEReconDT_BS: TStringField
      DisplayLabel = 'BS'
      FieldName = 'DT_BS'
      Size = 1
    end
    object cdsCheckDTEReconDT_PRICE: TFloatField
      DisplayLabel = 'DT Price'
      FieldName = 'DT_PRICE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCheckDTEReconDT_QTY: TFloatField
      DisplayLabel = 'DT Quantity'
      FieldName = 'DT_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCheckDTEReconDTE_STOCKCODE: TStringField
      DisplayLabel = 'DTE Stock Code'
      FieldName = 'DTE_STOCKCODE'
    end
    object cdsCheckDTEReconDTE_BOARDCODE: TStringField
      DisplayLabel = 'DTE Board'
      FieldName = 'DTE_BOARDCODE'
      Size = 10
    end
    object cdsCheckDTEReconDTE_BS: TStringField
      FieldName = 'DTE_BS'
      Size = 1
    end
    object cdsCheckDTEReconDTE_PRICE: TFloatField
      DisplayLabel = 'DTE Price'
      FieldName = 'DTE_PRICE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCheckDTEReconDTE_QTY: TFloatField
      DisplayLabel = 'DTE Quantity'
      FieldName = 'DTE_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCheckDTEReconDIFFERENT: TFloatField
      DisplayLabel = 'Difference'
      FieldName = 'DIFFERENT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCheckDTEReconDT_ACCCODE: TStringField
      FieldName = 'DT_ACCCODE'
    end
    object cdsCheckDTEReconDT_ACCNAME: TStringField
      FieldName = 'DT_ACCNAME'
      Size = 100
    end
    object cdsCheckDTEReconDT_VALUE: TFloatField
      FieldName = 'DT_VALUE'
    end
    object cdsCheckDTEReconDTE_VALUE: TFloatField
      FieldName = 'DTE_VALUE'
    end
    object cdsCheckDTEReconDTE_ACCCODE: TStringField
      FieldName = 'DTE_ACCCODE'
    end
    object cdsCheckDTEReconDTE_ACCNAME: TStringField
      FieldName = 'DTE_ACCNAME'
      Size = 100
    end
  end
end
