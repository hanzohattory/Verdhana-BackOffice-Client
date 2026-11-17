inherited frmClient2Inquery: TfrmClient2Inquery
  Caption = 'Client Inquery'
  ClientHeight = 678
  ClientWidth = 1500
  ExplicitWidth = 1500
  ExplicitHeight = 678
  TextHeight = 13
  object pgParent: TcxPageControl [0]
    Left = 0
    Top = 188
    Width = 1500
    Height = 490
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsPosition
    Properties.CustomButtons.Buttons = <>
    OnChange = pgParentChange
    ClientRectBottom = 486
    ClientRectLeft = 4
    ClientRectRight = 1496
    ClientRectTop = 24
    object tsPosition: TcxTabSheet
      Caption = 'Client Position'
      ImageIndex = 1
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1492
        Height = 49
        Align = alTop
        TabOrder = 0
        object dtValueDate: TcxDateEdit
          Left = 67
          Top = 10
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 121
        end
        object cxButton3: TcxButton
          Left = 341
          Top = 10
          Width = 75
          Height = 25
          Caption = 'View'
          TabOrder = 2
          OnClick = cxButton3Click
        end
        object luCCY: TcxLookupComboBox
          Left = 243
          Top = 10
          RepositoryItem = dmGlobal.luCurrency
          Properties.DropDownAutoSize = True
          Properties.DropDownSizeable = True
          Properties.GridMode = True
          Properties.ImmediatePost = True
          Properties.ListColumns = <>
          Properties.PostPopupValueOnTab = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 92
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
          Parent = dxLayoutControl2Group3
          CaptionOptions.Text = 'Value Date'
          Control = dtValueDate
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl2Item4: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'cxButton3'
          CaptionOptions.Visible = False
          Control = cxButton3
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 75
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl2Group3: TdxLayoutGroup
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object lyCcy: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'Currency'
          Control = luCCY
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 92
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
      object pgPos: TcxPageControl
        Left = 0
        Top = 49
        Width = 1492
        Height = 413
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = tsCashPos
        Properties.CustomButtons.Buttons = <>
        Properties.TabPosition = tpBottom
        OnChange = pgPosChange
        ClientRectBottom = 389
        ClientRectLeft = 4
        ClientRectRight = 1488
        ClientRectTop = 4
        object tsCashPos: TcxTabSheet
          Caption = 'Cash Position'
          ImageIndex = 0
          object dxLayoutControl3: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 1484
            Height = 385
            Align = alClient
            TabOrder = 0
            object cxDBLabel5: TcxDBLabel
              Left = 113
              Top = 38
              DataBinding.DataField = 'CASH_ONHAND'
              DataBinding.DataSource = dsCashPos
              ParentFont = False
              Properties.LineOptions.Alignment = cxllaBottom
              Properties.LineOptions.Visible = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.IsFontAssigned = True
              Height = 21
              Width = 201
            end
            object cxDBLabel6: TcxDBLabel
              Left = 136
              Top = 65
              DataBinding.DataField = 'ARAMT'
              DataBinding.DataSource = dsCashPos
              Properties.LineOptions.Alignment = cxllaBottom
              Properties.LineOptions.Visible = True
              Style.HotTrack = False
              Height = 21
              Width = 178
            end
            object cxDBLabel7: TcxDBLabel
              Left = 136
              Top = 92
              DataBinding.DataField = 'APAMT'
              DataBinding.DataSource = dsCashPos
              Properties.LineOptions.Alignment = cxllaBottom
              Properties.LineOptions.Visible = True
              Style.HotTrack = False
              Height = 21
              Width = 178
            end
            object cxDBLabel11: TcxDBLabel
              Left = 113
              Top = 250
              DataBinding.DataField = 'BUY_AMT'
              DataBinding.DataSource = dsCashPos
              ParentFont = False
              Properties.LineOptions.Alignment = cxllaBottom
              Properties.LineOptions.Visible = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.HotTrack = False
              Style.IsFontAssigned = True
              Height = 21
              Width = 201
            end
            object cxDBLabel14: TcxDBLabel
              Left = 113
              Top = 277
              DataBinding.DataField = 'SELL_AMT'
              DataBinding.DataSource = dsCashPos
              ParentFont = False
              Properties.LineOptions.Alignment = cxllaBottom
              Properties.LineOptions.Visible = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.HotTrack = False
              Style.IsFontAssigned = True
              Height = 21
              Width = 201
            end
            object cxDBLabel16: TcxDBLabel
              Left = 113
              Top = 193
              DataBinding.DataField = 'CASHASSET'
              DataBinding.DataSource = dsCashPos
              ParentFont = False
              Properties.LineOptions.Alignment = cxllaBottom
              Properties.LineOptions.Visible = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.HotTrack = False
              Style.IsFontAssigned = True
              Height = 21
              Width = 201
            end
            object cxDBLabel8: TcxDBLabel
              Left = 113
              Top = 119
              DataBinding.DataField = 'CASH_OUTS'
              DataBinding.DataSource = dsCashPos
              Properties.LineOptions.Alignment = cxllaBottom
              Properties.LineOptions.Visible = True
              Style.HotTrack = False
              Height = 21
              Width = 201
            end
            object cxDBLabel15: TcxDBLabel
              Left = 113
              Top = 146
              DataBinding.DataField = 'ACCRUED_INTEREST'
              DataBinding.DataSource = dsCashPos
              Properties.LineOptions.Alignment = cxllaBottom
              Properties.LineOptions.Visible = True
              Style.HotTrack = False
              Height = 21
              Width = 201
            end
            object cxGrid1: TcxGrid
              Left = 332
              Top = 37
              Width = 704
              Height = 303
              TabOrder = 9
              LookAndFeel.NativeStyle = True
              object gvwAgingARAP: TcxGridDBBandedTableView
                PopupMenu = frmBrowseData.popMaster
                Navigator.Buttons.CustomButtons = <>
                ScrollbarAnnotations.CustomAnnotations = <>
                DataController.DataSource = dsAgingArap
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '#,##0.00;(#,##0.00);-'
                    Kind = skSum
                    FieldName = 'AP'
                    Column = gvwAgingARAPAP
                  end
                  item
                    Format = '#,##0.00;(#,##0.00);-'
                    Kind = skSum
                    FieldName = 'AR'
                    Column = gvwAgingARAPAR
                  end
                  item
                    Format = '#,##0.00;(#,##0.00);-'
                    Kind = skSum
                    FieldName = 'NETARAP'
                    Column = gvwAgingARAPNETARAP
                  end>
                DataController.Summary.SummaryGroups = <>
                Filtering.ColumnFilteredItemsList = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.MultiSelect = True
                OptionsSelection.HideSelection = True
                OptionsSelection.InvertSelect = False
                OptionsView.Footer = True
                OptionsView.GridLineColor = 16777088
                OptionsView.GroupByBox = False
                OptionsView.GroupFooterMultiSummaries = True
                OptionsView.GroupFooters = gfVisibleWhenExpanded
                OptionsView.Indicator = True
                OptionsView.BandHeaders = False
                Styles.ContentOdd = frmBrowseData.BlueToggle
                Styles.FilterRowInfoText = dmGlobal.GridFilterBox
                Styles.Header = dmGlobal.colSelected
                Styles.BandHeader = dmGlobal.colSelected
                Bands = <
                  item
                    Caption = 'Aging AR/AP By Due Date'
                  end>
                object gvwAgingARAPCCY: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'CCY'
                  Options.Editing = False
                  Options.Sorting = False
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object gvwAgingARAPAR: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'AR'
                  HeaderAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Sorting = False
                  Width = 168
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object gvwAgingARAPAP: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'AP'
                  HeaderAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Sorting = False
                  Width = 167
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object gvwAgingARAPNETARAP: TcxGridDBBandedColumn
                  Caption = 'NET AR/AP'
                  DataBinding.FieldName = 'NETARAP'
                  HeaderAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Sorting = False
                  Width = 166
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object gvwAgingARAPARAPDESC: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'ARAPDESC'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Horz = taLeftJustify
                  Options.Editing = False
                  Options.Sorting = False
                  Styles.Content = dmGlobal.colSelected
                  Width = 139
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                  IsCaptionAssigned = True
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = gvwAgingARAP
              end
            end
            object luAgingArapViewBy: TcxImageComboBox
              Left = 374
              Top = 10
              Properties.Items = <
                item
                  Description = 'By Due Date'
                  ImageIndex = 0
                  Value = 'D'
                end
                item
                  Description = 'By Trade Date'
                  Value = 'T'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              Style.ButtonStyle = bts3D
              Style.PopupBorderStyle = epbsFrame3D
              TabOrder = 8
              Width = 121
            end
            object dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem1: TdxLayoutItem
              Parent = dxLayoutControl2Group1
              AlignHorz = ahLeft
              Offsets.Top = 10
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Cash Balance'
              Control = cxDBLabel5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 201
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl2Item2: TdxLayoutItem
              Parent = dxLayoutControl2Group1
              AlignHorz = ahRight
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Receivable'
              Control = cxDBLabel6
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 178
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl2Item3: TdxLayoutItem
              Parent = dxLayoutControl2Group1
              AlignHorz = ahRight
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Payable'
              Control = cxDBLabel7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 178
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutControl2Item7: TdxLayoutItem
              Parent = dxLayoutControl2Group2
              CaptionOptions.Text = 'Buy Value'
              Control = cxDBLabel11
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 201
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl2Group1: TdxLayoutGroup
              Parent = dxLayoutGroup3
              AlignVert = avClient
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutControl2Group2: TdxLayoutGroup
              Parent = dxLayoutControl3Group1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Today Transaction'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutControl2Item10: TdxLayoutItem
              Parent = dxLayoutControl2Group2
              CaptionOptions.Text = 'Sell Value'
              Control = cxDBLabel14
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 201
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl2Item21: TdxLayoutItem
              Parent = dxLayoutControl2Group1
              AlignHorz = ahClient
              Offsets.Top = 20
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Total Cash Asset'
              Control = cxDBLabel16
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 201
              ControlOptions.ShowBorder = False
              Index = 5
            end
            object TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Index = -1
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl3Group1
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 0
            end
            object dxLayoutControl3Item3: TdxLayoutItem
              Parent = dxLayoutControl2Group1
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Cash Outstanding'
              Control = cxDBLabel8
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 201
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutControl3Item4: TdxLayoutItem
              Parent = dxLayoutControl2Group1
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Accrued Interest'
              Control = cxDBLabel15
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 201
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutControl3Item1: TdxLayoutItem
              Parent = dxLayoutControl3Group2
              CaptionOptions.Text = '        '
              CaptionOptions.Visible = False
              Control = cxGrid1
              ControlOptions.OriginalHeight = 303
              ControlOptions.OriginalWidth = 704
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl3Group1: TdxLayoutGroup
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 0
            end
            object dxLayoutControl3Item2: TdxLayoutItem
              Parent = dxLayoutControl3Group3
              CaptionOptions.Text = 'View By'
              Control = luAgingArapViewBy
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl3Group2: TdxLayoutGroup
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 1
            end
            object dxLayoutControl3Group3: TdxLayoutGroup
              Parent = dxLayoutControl3Group2
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
          end
        end
        object tsStockPos: TcxTabSheet
          Caption = 'Stock Position'
          ImageIndex = 1
          object grdMaster: TcxGrid
            Left = 0
            Top = 0
            Width = 1484
            Height = 385
            Align = alClient
            TabOrder = 0
            object gvwMaster: TcxGridDBBandedTableView
              PopupMenu = frmBrowseData.popMaster
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = dsStockPos
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.00;(#,##0.00);0.00'
                  Kind = skSum
                  FieldName = 'COLLATERAL'
                end
                item
                  Format = '#,##0.00;(#,##0.00);0.00'
                  Kind = skSum
                  FieldName = 'MKTVALUE'
                end
                item
                  Format = '#,##0.00;(#,##0.00);0.00'
                  Kind = skSum
                  FieldName = 'ASSETVALUE'
                end
                item
                  Format = '#,##0.00;(#,##0.00);0.00'
                  Kind = skSum
                  FieldName = 'PL'
                end>
              DataController.Summary.SummaryGroups = <>
              Filtering.ColumnFilteredItemsList = True
              FilterRow.Visible = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsSelection.HideSelection = True
              OptionsSelection.InvertSelect = False
              OptionsView.Footer = True
              OptionsView.GridLineColor = 16777088
              OptionsView.GroupByBox = False
              OptionsView.GroupFooterMultiSummaries = True
              OptionsView.GroupFooters = gfVisibleWhenExpanded
              OptionsView.Indicator = True
              OptionsView.BandHeaders = False
              Styles.ContentOdd = frmBrowseData.BlueToggle
              Styles.FilterRowInfoText = dmGlobal.GridFilterBox
              Bands = <
                item
                end>
              object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
                Caption = 'Stock Code'
                DataBinding.FieldName = 'STOCKCODE'
                Width = 66
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gvwMasterHCUT: TcxGridDBBandedColumn
                Caption = 'Valuation (%)'
                DataBinding.FieldName = 'HCUT'
                HeaderAlignmentHorz = taRightJustify
                Width = 78
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object gvwMasterQTY_ONHAND: TcxGridDBBandedColumn
                Caption = 'Qty On Hand'
                DataBinding.FieldName = 'QTY_ONHAND'
                HeaderAlignmentHorz = taRightJustify
                Width = 118
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object gvwMasterQTY_RCV: TcxGridDBBandedColumn
                Caption = 'Qty Receive'
                DataBinding.FieldName = 'QTY_RCV'
                HeaderAlignmentHorz = taRightJustify
                Width = 121
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object gvwMasterQTY_DLV: TcxGridDBBandedColumn
                Caption = 'Qty Deliver'
                DataBinding.FieldName = 'QTY_DLV'
                HeaderAlignmentHorz = taRightJustify
                Width = 113
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object gvwMasterQTY_OUTS: TcxGridDBBandedColumn
                Caption = 'Qty Failed To Deliver'
                DataBinding.FieldName = 'QTY_OUTS'
                HeaderAlignmentHorz = taRightJustify
                Width = 114
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object gvwMasterLASTCLSPRICE: TcxGridDBBandedColumn
                Caption = 'Close Price'
                DataBinding.FieldName = 'LASTCLSPRICE'
                HeaderAlignmentHorz = taRightJustify
                Width = 81
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gvwMasterAVGPRICE: TcxGridDBBandedColumn
                Caption = 'Avg Price'
                DataBinding.FieldName = 'AVGPRICE'
                HeaderAlignmentHorz = taRightJustify
                Width = 74
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object gvwMasterQTY_BAL: TcxGridDBBandedColumn
                Caption = 'Qty Balance'
                DataBinding.FieldName = 'QTY_BAL'
                HeaderAlignmentHorz = taRightJustify
                Width = 98
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object gvwMasterBUY_QTY: TcxGridDBBandedColumn
                Caption = 'Qty Buy'
                DataBinding.FieldName = 'BUY_QTY'
                HeaderAlignmentHorz = taRightJustify
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object gvwMasterSELL_QTY: TcxGridDBBandedColumn
                Caption = 'Sell Qty'
                DataBinding.FieldName = 'SELL_QTY'
                HeaderAlignmentHorz = taRightJustify
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object gvwMasterCOLLATERAL: TcxGridDBBandedColumn
                Caption = 'Collateral'
                DataBinding.FieldName = 'COLLATERAL'
                HeaderAlignmentHorz = taRightJustify
                Width = 165
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object gvwMasterMKTVALUE: TcxGridDBBandedColumn
                Caption = 'Market Value'
                DataBinding.FieldName = 'MKTVALUE'
                HeaderAlignmentHorz = taRightJustify
                Width = 149
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object gvwMasterASSETVALUE: TcxGridDBBandedColumn
                Caption = 'Asset Value'
                DataBinding.FieldName = 'ASSETVALUE'
                HeaderAlignmentHorz = taRightJustify
                Width = 120
                Position.BandIndex = 0
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object gvwMasterPL: TcxGridDBBandedColumn
                Caption = 'Gain/Lost'
                DataBinding.FieldName = 'PL'
                HeaderAlignmentHorz = taRightJustify
                Width = 194
                Position.BandIndex = 0
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object gvwMasterACCINFO: TcxGridDBBandedColumn
                Caption = 'Account:'
                DataBinding.FieldName = 'ACCINFO'
                Visible = False
                GroupIndex = 0
                Position.BandIndex = 0
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object gvwMasterMARKETCODE: TcxGridDBBandedColumn
                Caption = 'Market'
                DataBinding.FieldName = 'MARKETCODE'
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
            end
            object grdMasterLevel1: TcxGridLevel
              GridView = gvwMaster
            end
          end
        end
      end
    end
    object tsTransactional: TcxTabSheet
      Caption = 'Transactional'
      ImageIndex = 0
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1492
        Height = 57
        Align = alTop
        BevelKind = bkTile
        TabOrder = 0
        object dtTransStart: TcxDateEdit
          Left = 131
          Top = 10
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 121
        end
        object dtTransTo: TcxDateEdit
          Left = 275
          Top = 10
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 121
        end
        object cxButton5: TcxButton
          Left = 402
          Top = 10
          Width = 75
          Height = 25
          Caption = 'View'
          TabOrder = 2
          OnClick = cxButton5Click
        end
        object dxLayoutControl4Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl4Item1: TdxLayoutItem
          Parent = dxLayoutControl4Group2
          CaptionOptions.Text = 'Transaction Date,  From'
          Control = dtTransStart
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          Parent = dxLayoutControl4Group2
          CaptionOptions.Text = 'To'
          Control = dtTransTo
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item3: TdxLayoutItem
          Parent = dxLayoutControl4Group_Root
          CaptionOptions.Text = 'cxButton5'
          CaptionOptions.Visible = False
          Control = cxButton5
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 75
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group2: TdxLayoutGroup
          Parent = dxLayoutControl4Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
      end
      object pgTrans: TcxPageControl
        Left = 0
        Top = 57
        Width = 1492
        Height = 405
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        Properties.TabPosition = tpBottom
        ClientRectBottom = 381
        ClientRectLeft = 4
        ClientRectRight = 1488
        ClientRectTop = 4
        object cxTabSheet1: TcxTabSheet
          Caption = 'Daily Market Transaction'
          ImageIndex = 0
          object cxGrid3: TcxGrid
            Left = 0
            Top = 0
            Width = 1484
            Height = 377
            Align = alClient
            TabOrder = 0
            object gvwDailyMktTrans: TcxGridDBBandedTableView
              PopupMenu = frmBrowseData.popMaster
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = dsDailyMarketTrans
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              Filtering.ColumnFilteredItemsList = True
              FilterRow.Visible = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsSelection.HideSelection = True
              OptionsSelection.InvertSelect = False
              OptionsView.Footer = True
              OptionsView.GridLineColor = 16777088
              OptionsView.GroupByBox = False
              OptionsView.GroupFooterMultiSummaries = True
              OptionsView.GroupFooters = gfVisibleWhenExpanded
              OptionsView.Indicator = True
              Styles.ContentOdd = frmBrowseData.BlueToggle
              Styles.FilterRowInfoText = dmGlobal.GridFilterBox
              Bands = <
                item
                end
                item
                  Caption = 'Transaction'
                end
                item
                  Caption = 'Settle'
                end
                item
                  Caption = 'Counter Part'
                end
                item
                  Caption = 'CHG1'
                end
                item
                  Caption = 'CHG2'
                end
                item
                  Caption = 'CHG3'
                end
                item
                  Caption = 'CHG4'
                end
                item
                  Caption = 'CHG5'
                end
                item
                  Caption = 'CHG6'
                end
                item
                  Caption = 'CHG7'
                end
                item
                  Caption = 'CHG8'
                end
                item
                  Caption = 'CHG9'
                end>
              object gvwDailyMktTransCONCODE: TcxGridDBBandedColumn
                Caption = 'Contract Number'
                DataBinding.FieldName = 'CONCODE'
                Width = 91
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCONDATE: TcxGridDBBandedColumn
                Caption = 'Contract Date'
                DataBinding.FieldName = 'CONDATE'
                Width = 109
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCASHSETTLEDATE: TcxGridDBBandedColumn
                Caption = 'Cash Settle Date'
                DataBinding.FieldName = 'CASHSETTLEDATE'
                Width = 103
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object gvwDailyMktTransSTOCKSETTLEDATE: TcxGridDBBandedColumn
                Caption = 'Stock Settle Date'
                DataBinding.FieldName = 'STOCKSETTLEDATE'
                Width = 101
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object gvwDailyMktTransMARKETCODE: TcxGridDBBandedColumn
                Caption = 'Market'
                DataBinding.FieldName = 'MARKETCODE'
                Visible = False
                VisibleForCustomization = False
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCCYCODE: TcxGridDBBandedColumn
                Caption = 'CCY'
                DataBinding.FieldName = 'CCYCODE'
                Visible = False
                VisibleForCustomization = False
                Position.BandIndex = 1
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gvwDailyMktTransNETAMT: TcxGridDBBandedColumn
                Caption = 'Net Amount'
                DataBinding.FieldName = 'NETAMT'
                Visible = False
                VisibleForCustomization = False
                Position.BandIndex = 1
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gvwDailyMktTransFOREIGN_CCYCODE: TcxGridDBBandedColumn
                Caption = 'Settl CCY'
                DataBinding.FieldName = 'FOREIGN_CCYCODE'
                Options.Moving = False
                Width = 54
                Position.BandIndex = 2
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gvwDailyMktTransFOREIGN_EXRATE: TcxGridDBBandedColumn
                Caption = 'Ex Rate'
                DataBinding.FieldName = 'FOREIGN_EXRATE'
                Options.Moving = False
                Width = 78
                Position.BandIndex = 2
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gvwDailyMktTransFOREIGN_NETAMT: TcxGridDBBandedColumn
                Caption = 'Settl Ammount'
                DataBinding.FieldName = 'FOREIGN_NETAMT'
                Options.Moving = False
                Width = 174
                Position.BandIndex = 2
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCASHKEEP: TcxGridDBBandedColumn
                Caption = 'Cash Keep'
                DataBinding.FieldName = 'CASHKEEP'
                Width = 62
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object gvwDailyMktTransSTOCKKEEP: TcxGridDBBandedColumn
                Caption = 'Stock Keep'
                DataBinding.FieldName = 'STOCKKEEP'
                Width = 61
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object gvwDailyMktTransAFFIL: TcxGridDBBandedColumn
                Caption = 'Affil'
                DataBinding.FieldName = 'AFFIL'
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object gvwDailyMktTransSALESCODE: TcxGridDBBandedColumn
                Caption = 'SalesID'
                DataBinding.FieldName = 'SALESCODE'
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object gvwDailyMktTransSALESNAME: TcxGridDBBandedColumn
                Caption = 'Sales Name'
                DataBinding.FieldName = 'SALESNAME'
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object gvwDailyMktTransSTOCKCODE: TcxGridDBBandedColumn
                Caption = 'Stock Code'
                DataBinding.FieldName = 'STOCKCODE'
                Width = 79
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gvwDailyMktTransSTOCKNAME: TcxGridDBBandedColumn
                Caption = 'Stock Name'
                DataBinding.FieldName = 'STOCKNAME'
                Width = 315
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object gvwDailyMktTransBOARDCODE: TcxGridDBBandedColumn
                Caption = 'Board'
                DataBinding.FieldName = 'BOARDCODE'
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCPACCCODE: TcxGridDBBandedColumn
                Caption = 'A/C No'
                DataBinding.FieldName = 'CPACCCODE'
                Width = 120
                Position.BandIndex = 3
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCPACCNAME: TcxGridDBBandedColumn
                Caption = 'A/C Name'
                DataBinding.FieldName = 'CPACCNAME'
                Width = 283
                Position.BandIndex = 3
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCPACCINIT: TcxGridDBBandedColumn
                Caption = 'Alt Code'
                DataBinding.FieldName = 'CPACCINIT'
                Width = 100
                Position.BandIndex = 3
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gvwDailyMktTransBS: TcxGridDBBandedColumn
                Caption = 'B/S'
                DataBinding.FieldName = 'BS'
                Width = 70
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object gvwDailyMktTransAPRICE: TcxGridDBBandedColumn
                Caption = 'Alloc Price'
                DataBinding.FieldName = 'APRICE'
                Visible = False
                VisibleForCustomization = False
                Position.BandIndex = 0
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object gvwDailyMktTransEXPRICE: TcxGridDBBandedColumn
                Caption = 'Ex Price'
                DataBinding.FieldName = 'EXPRICE'
                Visible = False
                VisibleForCustomization = False
                Position.BandIndex = 0
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object gvwDailyMktTransQTY: TcxGridDBBandedColumn
                Caption = 'Qty'
                DataBinding.FieldName = 'QTY'
                Visible = False
                VisibleForCustomization = False
                Position.BandIndex = 0
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object gvwDailyMktTransVALUE: TcxGridDBBandedColumn
                DataBinding.FieldName = 'VALUE'
                Visible = False
                VisibleForCustomization = False
                Position.BandIndex = 0
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
              object gvwDailyMktTransBUY_QTY: TcxGridDBBandedColumn
                Caption = 'Buy Qty'
                DataBinding.FieldName = 'BUY_QTY'
                Width = 70
                Position.BandIndex = 1
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gvwDailyMktTransBUY_VALUE: TcxGridDBBandedColumn
                Caption = 'Buy Trd Value'
                DataBinding.FieldName = 'BUY_VALUE'
                Width = 125
                Position.BandIndex = 1
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object gvwDailyMktTransBUY_AVALUE: TcxGridDBBandedColumn
                Caption = 'Buy Alloc Value'
                DataBinding.FieldName = 'BUY_AVALUE'
                Width = 125
                Position.BandIndex = 1
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object gvwDailyMktTransSELL_QTY: TcxGridDBBandedColumn
                Caption = 'Sell Qty'
                DataBinding.FieldName = 'SELL_QTY'
                Width = 70
                Position.BandIndex = 1
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object gvwDailyMktTransSELL_VALUE: TcxGridDBBandedColumn
                Caption = 'Sell Trd Value'
                DataBinding.FieldName = 'SELL_VALUE'
                Width = 125
                Position.BandIndex = 1
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object gvwDailyMktTransSELL_AVALUE: TcxGridDBBandedColumn
                Caption = 'Sell Alloc Value'
                DataBinding.FieldName = 'SELL_AVALUE'
                Width = 125
                Position.BandIndex = 1
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object gvwDailyMktTransBROKERFEE: TcxGridDBBandedColumn
                Caption = 'Broker Fee'
                DataBinding.FieldName = 'BROKERFEE'
                Position.BandIndex = 1
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG1_CHARGE_VAL1: TcxGridDBBandedColumn
                Caption = 'Charges to Clent (Leg1)'
                DataBinding.FieldName = 'CHG1_CHARGE_VAL1'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 4
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG1_CHARGE_VAL2: TcxGridDBBandedColumn
                Caption = 'Charges on Market (Leg2)'
                DataBinding.FieldName = 'CHG1_CHARGE_VAL2'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 130
                Position.BandIndex = 4
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG1_CHARGE_DIFF: TcxGridDBBandedColumn
                Caption = 'Different'
                DataBinding.FieldName = 'CHG1_CHARGE_DIFF'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 4
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG2_CHARGE_VAL1: TcxGridDBBandedColumn
                Caption = 'Charges to Clent (Leg1)'
                DataBinding.FieldName = 'CHG2_CHARGE_VAL1'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 5
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG2_CHARGE_VAL2: TcxGridDBBandedColumn
                Caption = 'Charges on Market (Leg2)'
                DataBinding.FieldName = 'CHG2_CHARGE_VAL2'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 130
                Position.BandIndex = 5
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG2_CHARGE_DIFF: TcxGridDBBandedColumn
                Caption = 'Different'
                DataBinding.FieldName = 'CHG2_CHARGE_DIFF'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 5
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG3_CHARGE_VAL1: TcxGridDBBandedColumn
                Caption = 'Charges to Clent (Leg1)'
                DataBinding.FieldName = 'CHG3_CHARGE_VAL1'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 6
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG3_CHARGE_VAL2: TcxGridDBBandedColumn
                Caption = 'Charges on Market (Leg2)'
                DataBinding.FieldName = 'CHG3_CHARGE_VAL2'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 130
                Position.BandIndex = 6
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG3_CHARGE_DIFF: TcxGridDBBandedColumn
                Caption = 'Different'
                DataBinding.FieldName = 'CHG3_CHARGE_DIFF'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 6
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG4_CHARGE_VAL1: TcxGridDBBandedColumn
                Caption = 'Charges to Clent (Leg1)'
                DataBinding.FieldName = 'CHG4_CHARGE_VAL1'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 7
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG4_CHARGE_VAL2: TcxGridDBBandedColumn
                Caption = 'Charges on Market (Leg2)'
                DataBinding.FieldName = 'CHG4_CHARGE_VAL2'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 130
                Position.BandIndex = 7
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG4_CHARGE_DIFF: TcxGridDBBandedColumn
                Caption = 'Different'
                DataBinding.FieldName = 'CHG4_CHARGE_DIFF'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 7
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG5_CHARGE_VAL1: TcxGridDBBandedColumn
                Caption = 'Charges to Clent (Leg1)'
                DataBinding.FieldName = 'CHG5_CHARGE_VAL1'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 8
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG5_CHARGE_VAL2: TcxGridDBBandedColumn
                Caption = 'Charges on Market (Leg2)'
                DataBinding.FieldName = 'CHG5_CHARGE_VAL2'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 130
                Position.BandIndex = 8
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG5_CHARGE_DIFF: TcxGridDBBandedColumn
                Caption = 'Different'
                DataBinding.FieldName = 'CHG5_CHARGE_DIFF'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 8
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG6_CHARGE_VAL1: TcxGridDBBandedColumn
                Caption = 'Charges to Clent (Leg1)'
                DataBinding.FieldName = 'CHG6_CHARGE_VAL1'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 9
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG6_CHARGE_VAL2: TcxGridDBBandedColumn
                Caption = 'Charges on Market (Leg2)'
                DataBinding.FieldName = 'CHG6_CHARGE_VAL2'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 130
                Position.BandIndex = 9
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG6_CHARGE_DIFF: TcxGridDBBandedColumn
                Caption = 'Different'
                DataBinding.FieldName = 'CHG6_CHARGE_DIFF'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 9
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG7_CHARGE_VAL1: TcxGridDBBandedColumn
                Caption = 'Charges to Clent (Leg1)'
                DataBinding.FieldName = 'CHG7_CHARGE_VAL1'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 10
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG7_CHARGE_VAL2: TcxGridDBBandedColumn
                Caption = 'Charges on Market (Leg2)'
                DataBinding.FieldName = 'CHG7_CHARGE_VAL2'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 130
                Position.BandIndex = 10
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG7_CHARGE_DIFF: TcxGridDBBandedColumn
                Caption = 'Different'
                DataBinding.FieldName = 'CHG7_CHARGE_DIFF'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 10
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG8_CHARGE_VAL1: TcxGridDBBandedColumn
                Caption = 'Charges to Clent (Leg1)'
                DataBinding.FieldName = 'CHG8_CHARGE_VAL1'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 11
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG8_CHARGE_VAL2: TcxGridDBBandedColumn
                Caption = 'Charges on Market (Leg2)'
                DataBinding.FieldName = 'CHG8_CHARGE_VAL2'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 130
                Position.BandIndex = 11
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG8_CHARGE_DIFF: TcxGridDBBandedColumn
                Caption = 'Different'
                DataBinding.FieldName = 'CHG8_CHARGE_DIFF'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 11
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG9_CHARGE_VAL1: TcxGridDBBandedColumn
                Caption = 'Charges to Clent (Leg1)'
                DataBinding.FieldName = 'CHG9_CHARGE_VAL1'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 12
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG9_CHARGE_VAL2: TcxGridDBBandedColumn
                Caption = 'Charges on Market (Leg2)'
                DataBinding.FieldName = 'CHG9_CHARGE_VAL2'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 130
                Position.BandIndex = 12
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gvwDailyMktTransCHG9_CHARGE_DIFF: TcxGridDBBandedColumn
                Caption = 'Different'
                DataBinding.FieldName = 'CHG9_CHARGE_DIFF'
                HeaderAlignmentHorz = taRightJustify
                Options.Moving = False
                Width = 125
                Position.BandIndex = 12
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gvwDailyMktTransACCDESC: TcxGridDBBandedColumn
                Caption = 'Account:'
                DataBinding.FieldName = 'ACCDESC'
                Visible = False
                GroupIndex = 0
                Position.BandIndex = 0
                Position.ColIndex = 18
                Position.RowIndex = 0
              end
            end
            object cxGrid3Level1: TcxGridLevel
              GridView = gvwDailyMktTrans
            end
          end
        end
      end
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 1500
    Height = 188
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 1
    object dxLayoutControl1: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 817
      Height = 188
      Align = alLeft
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 158
        Top = 124
        Width = 183
        Height = 25
        Action = actViewDetail
        TabOrder = 7
      end
      object edAccCode: TcxButtonEdit
        Left = 148
        Top = 28
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = edAccCodePropertiesButtonClick
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        TabOrder = 1
        Width = 121
      end
      object edAccName: TcxTextEdit
        Left = 284
        Top = 28
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Width = 301
      end
      object cxButton2: TcxButton
        Left = 347
        Top = 124
        Width = 154
        Height = 25
        Action = actViewCreditControlParam
        TabOrder = 8
      end
      object chkByAccount: TcxCheckBox
        Left = 10
        Top = 25
        Caption = 'By Account'
        Properties.Alignment = taRightJustify
        Properties.OnChange = chkByAccountPropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 0
      end
      object edEntityCode: TcxButtonEdit
        Left = 126
        Top = 85
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edEntityCodePropertiesButtonClick
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        TabOrder = 4
        Width = 121
      end
      object edEntityName: TcxTextEdit
        Left = 262
        Top = 85
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 5
        Width = 301
      end
      object chkByEntity: TcxCheckBox
        Left = 10
        Top = 82
        Caption = 'By Entity'
        Properties.Alignment = taRightJustify
        Properties.OnChange = chkByEntityPropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 3
      end
      object cxButton4: TcxButton
        Left = 10
        Top = 124
        Width = 142
        Height = 25
        Action = actViewDetailEntity
        TabOrder = 6
      end
      object dxLayoutGroup1: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object lcButtonViewAccpunt: TdxLayoutItem
        Parent = dxLayoutControl1Group6
        AlignHorz = ahLeft
        CaptionOptions.Text = ' '
        CaptionOptions.Visible = False
        Control = cxButton1
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 183
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Item3: TdxLayoutItem
        Parent = lgAccount
        CaptionOptions.Text = 'Account'
        Control = edAccCode
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item4: TdxLayoutItem
        Parent = lgAccount
        CaptionOptions.Text = '-'
        Control = edAccName
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 301
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object lgAccount: TdxLayoutGroup
        Parent = dxLayoutControl1Group4
        CaptionOptions.Text = 'Account Information'
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object lcButtonViewCreditLimit: TdxLayoutItem
        Parent = dxLayoutControl1Group6
        CaptionOptions.Text = 'cxButton2'
        CaptionOptions.Visible = False
        Control = cxButton2
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 154
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl1Item5: TdxLayoutItem
        Parent = dxLayoutControl1Group5
        Offsets.Top = 15
        CaptionOptions.Text = 'cxCheckBox1'
        CaptionOptions.Visible = False
        Control = chkByAccount
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 76
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item6: TdxLayoutItem
        Parent = lgEntity
        CaptionOptions.Text = 'Entity'
        Control = edEntityCode
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item7: TdxLayoutItem
        Parent = lgEntity
        CaptionOptions.Text = '-'
        Control = edEntityName
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 301
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Group4: TdxLayoutGroup
        Parent = dxLayoutControl1Group5
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 1
      end
      object lgEntity: TdxLayoutGroup
        Parent = dxLayoutGroup4
        CaptionOptions.Text = 'Entity Information'
        Visible = False
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object dxLayoutControl1Item8: TdxLayoutItem
        Parent = dxLayoutGroup4
        Offsets.Top = 15
        CaptionOptions.Text = 'cxCheckBox1'
        CaptionOptions.Visible = False
        Control = chkByEntity
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 65
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Group5: TdxLayoutGroup
        Parent = dxLayoutControl1Group1
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup4: TdxLayoutGroup
        Parent = dxLayoutControl1Group1
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object lcViewDetailEntity: TdxLayoutItem
        Parent = dxLayoutControl1Group6
        CaptionOptions.Text = 'cxButton4'
        CaptionOptions.Visible = False
        Control = cxButton4
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 142
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Parent = dxLayoutGroup1
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Group6: TdxLayoutGroup
        Parent = dxLayoutGroup1
        CaptionOptions.Text = 'Hidden Group'
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
    end
    object cxGrid2: TcxGrid
      Left = 817
      Top = 0
      Width = 683
      Height = 188
      Align = alClient
      TabOrder = 1
      object gvwAccountInfo: TcxGridDBBandedTableView
        PopupMenu = frmBrowseData.popMaster
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsClientInfo
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.Indicator = True
        Styles.ContentOdd = frmBrowseData.BlueToggle
        Styles.FilterRowInfoText = dmGlobal.GridFilterBox
        Bands = <
          item
            Caption = 'Account List on Related Entity'
          end>
        object gvwAccountInfoACCCODE: TcxGridDBBandedColumn
          Caption = 'A/C Number'
          DataBinding.FieldName = 'ACCCODE'
          Width = 99
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwAccountInfoACCNAME: TcxGridDBBandedColumn
          Caption = 'A/C Name'
          DataBinding.FieldName = 'ACCNAME'
          Width = 316
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwAccountInfoACCINIT: TcxGridDBBandedColumn
          Caption = 'Alt Code'
          DataBinding.FieldName = 'ACCINIT'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwAccountInfoPRDDESC: TcxGridDBBandedColumn
          Caption = 'Product'
          DataBinding.FieldName = 'PRDDESC'
          Width = 244
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = gvwAccountInfo
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = ActionList1
  end
  object ActionList1: TActionList
    Left = 496
    Top = 64
    object actViewDetail: TNAction
      Category = 'NActions'
      Caption = 'View Detail Account'
      OnExecute = actViewDetailExecute
      CheckPermission = False
    end
    object actViewCreditControlParam: TNAction
      Category = 'NActions'
      Caption = 'View Credit Control Param'
      OnExecute = actViewCreditControlParamExecute
      CheckPermission = False
    end
    object actViewDetailEntity: TNAction
      Category = 'NActions'
      Caption = 'View Detail Entity'
      OnExecute = actViewDetailEntityExecute
      CheckPermission = False
    end
    object actViewBank: TNAction
      Category = 'NActions'
      Caption = 'View Bank Account'
      CheckPermission = False
    end
    object actViewBankCustody: TNAction
      Category = 'NActions'
      Caption = 'View Back Custody'
      CheckPermission = False
    end
  end
  object cdsCashPos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CCY'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCI_CashPos'
    RemoteServer = dmGlobal.dspConnection
    Left = 480
    Top = 120
    object cdsCashPosACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCashPosACCNO: TStringField
      FieldName = 'ACCNO'
      Required = True
      Size = 30
    end
    object cdsCashPosACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCashPosACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsCashPosCASH_ONHAND: TFloatField
      FieldName = 'CASH_ONHAND'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCashPosACCRUED_INTEREST: TFloatField
      FieldName = 'ACCRUED_INTEREST'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCashPosCASH_QQ: TFloatField
      FieldName = 'CASH_QQ'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCashPosCASH_SUBACC: TFloatField
      FieldName = 'CASH_SUBACC'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCashPosCASH_ONHOLD: TFloatField
      FieldName = 'CASH_ONHOLD'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCashPosARAMT: TFloatField
      FieldName = 'ARAMT'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCashPosAPAMT: TFloatField
      FieldName = 'APAMT'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCashPosCASH_OUTS: TFloatField
      FieldName = 'CASH_OUTS'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCashPosBUY_AMT: TFloatField
      FieldName = 'BUY_AMT'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCashPosSELL_AMT: TFloatField
      FieldName = 'SELL_AMT'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCashPosCASH_WDR: TFloatField
      FieldName = 'CASH_WDR'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCashPosCASH_OTHERS: TFloatField
      FieldName = 'CASH_OTHERS'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCashPosCASH_ASEET: TFloatField
      FieldName = 'CASH_ASEET'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCashPosVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      ReadOnly = True
    end
  end
  object dsCashPos: TDataSource
    DataSet = cdsCashPos
    Left = 624
    Top = 80
  end
  object cdsAgingArapDue: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'DUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCY'
        ParamType = ptInput
        Value = ''
      end>
    ProviderName = 'dspN_dmClientManagement_qryCI_AgingARAP'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsAgingArapDueCalcFields
    Left = 368
    Top = 120
    object cdsAgingArapDueIKEY: TIntegerField
      FieldName = 'IKEY'
    end
    object cdsAgingArapDueACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsAgingArapDueDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object cdsAgingArapDuePOS: TStringField
      FieldName = 'POS'
      Size = 3
    end
    object cdsAgingArapDueCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsAgingArapDueAR: TFloatField
      FieldName = 'AR'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsAgingArapDueAP: TFloatField
      FieldName = 'AP'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsAgingArapDueNETARAP: TFloatField
      FieldName = 'NETARAP'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsAgingArapDueARAPDESC: TStringField
      FieldKind = fkCalculated
      FieldName = 'ARAPDESC'
      Calculated = True
    end
    object cdsAgingArapDueTPLUS: TStringField
      FieldName = 'TPLUS'
      Size = 3
    end
  end
  object dsAgingArap: TDataSource
    DataSet = cdsAgingArapDue
    Left = 720
    Top = 72
  end
  object cdsStockPos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SEL1'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SELL2'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'ENTTID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'VALUEDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCI_StockPos'
    RemoteServer = dmGlobal.dspConnection
    Left = 560
    Top = 136
    object cdsStockPosACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsStockPosACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsStockPosSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Required = True
    end
    object cdsStockPosPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsStockPosVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsStockPosHCUT: TFloatField
      FieldName = 'HCUT'
      ReadOnly = True
      Required = True
    end
    object cdsStockPosQTY_ONHAND: TFloatField
      FieldName = 'QTY_ONHAND'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsStockPosQTY_RCV: TFloatField
      FieldName = 'QTY_RCV'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsStockPosQTY_DLV: TFloatField
      FieldName = 'QTY_DLV'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsStockPosQTY_OUTS: TFloatField
      FieldName = 'QTY_OUTS'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsStockPosLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object cdsStockPosHAIRCUT: TFloatField
      FieldName = 'HAIRCUT'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object cdsStockPosAVGPRICE: TFloatField
      FieldName = 'AVGPRICE'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object cdsStockPosBUY_VAL: TFloatField
      FieldName = 'BUY_VAL'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsStockPosSELL_VAL: TFloatField
      FieldName = 'SELL_VAL'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsStockPosQTY_BAL: TFloatField
      FieldName = 'QTY_BAL'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsStockPosBUY_QTY: TFloatField
      FieldName = 'BUY_QTY'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsStockPosSELL_QTY: TFloatField
      FieldName = 'SELL_QTY'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsStockPosCOLLATERAL: TFloatField
      FieldName = 'COLLATERAL'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object cdsStockPosMKTVALUE: TFloatField
      FieldName = 'MKTVALUE'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object cdsStockPosASSETVALUE: TFloatField
      FieldName = 'ASSETVALUE'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
    object cdsStockPosPL: TFloatField
      FieldName = 'PL'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
    object cdsStockPosPRDDESC: TStringField
      FieldName = 'PRDDESC'
      ReadOnly = True
      Size = 50
    end
    object cdsStockPosACCINFO: TStringField
      FieldName = 'ACCINFO'
      ReadOnly = True
      Size = 83
    end
    object cdsStockPosMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      ReadOnly = True
      Required = True
      Size = 10
    end
  end
  object cdsClientInfo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'ENTTID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCI_AccInfo'
    RemoteServer = dmGlobal.dspConnection
    Left = 712
    Top = 144
    object cdsClientInfoACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsClientInfoENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsClientInfoACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsClientInfoACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsClientInfoACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsClientInfoPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cdsClientInfoPRDDESC: TStringField
      FieldName = 'PRDDESC'
      ReadOnly = True
      Size = 50
    end
  end
  object dsClientInfo: TDataSource
    DataSet = cdsClientInfo
    Left = 96
    Top = 136
  end
  object dsStockPos: TDataSource
    DataSet = cdsStockPos
    Left = 160
    Top = 456
  end
  object cdsCCY: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SEL1'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SELL2'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'ENTTID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'VALUEDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCI_CCY'
    RemoteServer = dmGlobal.dspConnection
    Left = 800
    Top = 120
    object cdsCCYCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsCCYCCYNAME: TStringField
      FieldName = 'CCYNAME'
      ReadOnly = True
      Size = 50
    end
  end
  object dsCCY: TDataSource
    DataSet = cdsCCY
    Left = 872
    Top = 144
  end
  object cdsAgingARAPTrading: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'DUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCY'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCI_AgingARAPTrading'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsAgingARAPTradingCalcFields
    Left = 176
    Top = 136
    object cdsAgingARAPTradingIKEY: TIntegerField
      FieldName = 'IKEY'
    end
    object cdsAgingARAPTradingACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsAgingARAPTradingDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object cdsAgingARAPTradingPOS: TStringField
      FieldName = 'POS'
      Size = 3
    end
    object cdsAgingARAPTradingCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsAgingARAPTradingAR: TFloatField
      FieldName = 'AR'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsAgingARAPTradingAP: TFloatField
      FieldName = 'AP'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsAgingARAPTradingNETARAP: TFloatField
      FieldName = 'NETARAP'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsAgingARAPTradingARAPDESC: TStringField
      FieldKind = fkCalculated
      FieldName = 'ARAPDESC'
      Calculated = True
    end
    object cdsAgingARAPTradingTPLUS: TStringField
      FieldName = 'TPLUS'
      Size = 3
    end
  end
  object cdsEntAGingArapDUe: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'DUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'ENTTID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCY'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCI_EntAgingArapDue'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsEntAGingArapDUeCalcFields
    Left = 272
    Top = 136
    object cdsEntAGingArapDUeIKEY: TIntegerField
      FieldName = 'IKEY'
    end
    object cdsEntAGingArapDUeENTTID: TLargeintField
      FieldName = 'ENTTID'
    end
    object cdsEntAGingArapDUeDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object cdsEntAGingArapDUePOS: TStringField
      FieldName = 'POS'
      Size = 3
    end
    object cdsEntAGingArapDUeCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsEntAGingArapDUeAR: TFloatField
      FieldName = 'AR'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsEntAGingArapDUeAP: TFloatField
      FieldName = 'AP'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsEntAGingArapDUeNETARAP: TFloatField
      FieldName = 'NETARAP'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsEntAGingArapDUeARAPDESC: TStringField
      FieldKind = fkCalculated
      FieldName = 'ARAPDESC'
      Calculated = True
    end
    object cdsEntAGingArapDUeTPLUS: TStringField
      FieldName = 'TPLUS'
      Size = 3
    end
  end
  object cdsEntAgingArapTrading: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'DUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'ENTTID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCY'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCI_EntAgingArapTrading'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsEntAgingArapTradingCalcFields
    Left = 488
    Top = 176
    object cdsEntAgingArapTradingIKEY: TIntegerField
      FieldName = 'IKEY'
    end
    object cdsEntAgingArapTradingENTTID: TLargeintField
      FieldName = 'ENTTID'
    end
    object cdsEntAgingArapTradingDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object cdsEntAgingArapTradingPOS: TStringField
      FieldName = 'POS'
      Size = 3
    end
    object cdsEntAgingArapTradingCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsEntAgingArapTradingAR: TFloatField
      FieldName = 'AR'
    end
    object cdsEntAgingArapTradingAP: TFloatField
      FieldName = 'AP'
    end
    object cdsEntAgingArapTradingNETARAP: TFloatField
      FieldName = 'NETARAP'
    end
    object cdsEntAgingArapTradingTPLUS: TStringField
      FieldName = 'TPLUS'
      Size = 3
    end
    object cdsEntAgingArapTradingARAPDESC: TStringField
      FieldKind = fkCalculated
      FieldName = 'ARAPDESC'
      Calculated = True
    end
  end
  object cdsEntCashPos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'ENTTID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCY'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'VALUEDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCI_EntCashPos'
    RemoteServer = dmGlobal.dspConnection
    Left = 160
    Top = 400
    object cdsEntCashPosENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsEntCashPosENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Required = True
    end
    object cdsEntCashPosENTINIT: TStringField
      FieldName = 'ENTINIT'
    end
    object cdsEntCashPosVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      ReadOnly = True
    end
    object cdsEntCashPosCCY: TStringField
      FieldName = 'CCY'
      ReadOnly = True
      Size = 5
    end
    object cdsEntCashPosCASH_ONHAND: TFloatField
      FieldName = 'CASH_ONHAND'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsEntCashPosACCRUED_INTEREST: TFloatField
      FieldName = 'ACCRUED_INTEREST'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsEntCashPosCASH_QQ: TFloatField
      FieldName = 'CASH_QQ'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsEntCashPosCASH_SUBACC: TFloatField
      FieldName = 'CASH_SUBACC'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsEntCashPosCASH_ONHOLD: TFloatField
      FieldName = 'CASH_ONHOLD'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsEntCashPosARAMT: TFloatField
      FieldName = 'ARAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsEntCashPosAPAMT: TFloatField
      FieldName = 'APAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsEntCashPosCASH_OUTS: TFloatField
      FieldName = 'CASH_OUTS'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsEntCashPosBUY_AMT: TFloatField
      FieldName = 'BUY_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsEntCashPosSELL_AMT: TFloatField
      FieldName = 'SELL_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsEntCashPosCASH_WDR: TFloatField
      FieldName = 'CASH_WDR'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsEntCashPosCASH_OTHERS: TFloatField
      FieldName = 'CASH_OTHERS'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsEntCashPosCASH_ASEET: TFloatField
      FieldName = 'CASH_ASEET'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
  end
  object cdsDailyMktTransByAcc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATESTART'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATEEND'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCI_DailyMktTrans'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsDailyMktTransByAccCalcFields
    Left = 264
    Top = 400
    object cdsDailyMktTransByAccCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsDailyMktTransByAccCONCODE: TStringField
      FieldName = 'CONCODE'
      Required = True
      Size = 25
    end
    object cdsDailyMktTransByAccCONDATE: TDateField
      FieldName = 'CONDATE'
    end
    object cdsDailyMktTransByAccCASHSETTLEDATE: TDateField
      FieldName = 'CASHSETTLEDATE'
    end
    object cdsDailyMktTransByAccSTOCKSETTLEDATE: TDateField
      FieldName = 'STOCKSETTLEDATE'
    end
    object cdsDailyMktTransByAccMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsDailyMktTransByAccCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsDailyMktTransByAccNETAMT: TFloatField
      FieldName = 'NETAMT'
    end
    object cdsDailyMktTransByAccFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      Size = 5
    end
    object cdsDailyMktTransByAccFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
    end
    object cdsDailyMktTransByAccFOREIGN_NETAMT: TFloatField
      FieldName = 'FOREIGN_NETAMT'
    end
    object cdsDailyMktTransByAccACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
      Required = True
    end
    object cdsDailyMktTransByAccACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsDailyMktTransByAccACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsDailyMktTransByAccACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsDailyMktTransByAccACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsDailyMktTransByAccPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsDailyMktTransByAccCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      ReadOnly = True
      Size = 1
    end
    object cdsDailyMktTransByAccSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      ReadOnly = True
      Size = 1
    end
    object cdsDailyMktTransByAccENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      ReadOnly = True
      Required = True
    end
    object cdsDailyMktTransByAccENTNAME: TStringField
      FieldName = 'ENTNAME'
      ReadOnly = True
      Size = 200
    end
    object cdsDailyMktTransByAccENTACCTYPE: TStringField
      FieldName = 'ENTACCTYPE'
      ReadOnly = True
      Size = 1
    end
    object cdsDailyMktTransByAccAFFIL: TBooleanField
      FieldName = 'AFFIL'
      ReadOnly = True
      Required = True
    end
    object cdsDailyMktTransByAccSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsDailyMktTransByAccSALESCODE: TStringField
      FieldName = 'SALESCODE'
      ReadOnly = True
    end
    object cdsDailyMktTransByAccSALESNAME: TStringField
      FieldName = 'SALESNAME'
      ReadOnly = True
      Size = 30
    end
    object cdsDailyMktTransByAccSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsDailyMktTransByAccSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsDailyMktTransByAccBOARDID: TLargeintField
      FieldName = 'BOARDID'
      ReadOnly = True
      Required = True
    end
    object cdsDailyMktTransByAccBOARDCODE: TStringField
      FieldName = 'BOARDCODE'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cdsDailyMktTransByAccCPACCID: TIntegerField
      FieldName = 'CPACCID'
      ReadOnly = True
      Required = True
    end
    object cdsDailyMktTransByAccCPACCCODE: TStringField
      FieldName = 'CPACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsDailyMktTransByAccCPACCNAME: TStringField
      FieldName = 'CPACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsDailyMktTransByAccCPACCINIT: TStringField
      FieldName = 'CPACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsDailyMktTransByAccBS: TStringField
      FieldName = 'BS'
      ReadOnly = True
      Size = 1
    end
    object cdsDailyMktTransByAccAPRICE: TFloatField
      FieldName = 'APRICE'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccEXPRICE: TFloatField
      FieldName = 'EXPRICE'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccQTY: TFloatField
      FieldName = 'QTY'
      ReadOnly = True
      Required = True
    end
    object cdsDailyMktTransByAccVALUE: TFloatField
      FieldName = 'VALUE'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccBUY_QTY: TFloatField
      FieldName = 'BUY_QTY'
      ReadOnly = True
      Required = True
    end
    object cdsDailyMktTransByAccBUY_VALUE: TFloatField
      FieldName = 'BUY_VALUE'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccBUY_AVALUE: TFloatField
      FieldName = 'BUY_AVALUE'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccSELL_QTY: TFloatField
      FieldName = 'SELL_QTY'
      ReadOnly = True
      Required = True
    end
    object cdsDailyMktTransByAccSELL_VALUE: TFloatField
      FieldName = 'SELL_VALUE'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccSELL_AVALUE: TFloatField
      FieldName = 'SELL_AVALUE'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccBROKERFEE: TFloatField
      FieldName = 'BROKERFEE'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG1_CHARGE_VAL1: TFloatField
      FieldName = 'CHG1_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG1_CHARGE_VAL2: TFloatField
      FieldName = 'CHG1_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG1_CHARGE_DIFF: TFloatField
      FieldName = 'CHG1_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG2_CHARGE_VAL1: TFloatField
      FieldName = 'CHG2_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG2_CHARGE_VAL2: TFloatField
      FieldName = 'CHG2_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG2_CHARGE_DIFF: TFloatField
      FieldName = 'CHG2_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG3_CHARGE_VAL1: TFloatField
      FieldName = 'CHG3_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG3_CHARGE_VAL2: TFloatField
      FieldName = 'CHG3_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG3_CHARGE_DIFF: TFloatField
      FieldName = 'CHG3_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG4_CHARGE_VAL1: TFloatField
      FieldName = 'CHG4_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG4_CHARGE_VAL2: TFloatField
      FieldName = 'CHG4_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG4_CHARGE_DIFF: TFloatField
      FieldName = 'CHG4_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG5_CHARGE_VAL1: TFloatField
      FieldName = 'CHG5_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG5_CHARGE_VAL2: TFloatField
      FieldName = 'CHG5_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG5_CHARGE_DIFF: TFloatField
      FieldName = 'CHG5_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG6_CHARGE_VAL1: TFloatField
      FieldName = 'CHG6_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG6_CHARGE_VAL2: TFloatField
      FieldName = 'CHG6_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG6_CHARGE_DIFF: TFloatField
      FieldName = 'CHG6_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG7_CHARGE_VAL1: TFloatField
      FieldName = 'CHG7_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG7_CHARGE_VAL2: TFloatField
      FieldName = 'CHG7_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG7_CHARGE_DIFF: TFloatField
      FieldName = 'CHG7_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG8_CHARGE_VAL1: TFloatField
      FieldName = 'CHG8_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG8_CHARGE_VAL2: TFloatField
      FieldName = 'CHG8_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG8_CHARGE_DIFF: TFloatField
      FieldName = 'CHG8_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG9_CHARGE_VAL1: TFloatField
      FieldName = 'CHG9_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG9_CHARGE_VAL2: TFloatField
      FieldName = 'CHG9_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccCHG9_CHARGE_DIFF: TFloatField
      FieldName = 'CHG9_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);'
    end
    object cdsDailyMktTransByAccACCDESC: TStringField
      FieldKind = fkCalculated
      FieldName = 'ACCDESC'
      Size = 80
      Calculated = True
    end
  end
  object dsDailyMarketTrans: TDataSource
    DataSet = cdsDailyMktTransByAcc
    Left = 576
    Top = 368
  end
end
