object frmMarginMonitorDetail: TfrmMarginMonitorDetail
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Detail Margin Monitoring'
  ClientHeight = 736
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 13
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 665
    Width = 983
    Height = 51
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 716
    Width = 983
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
  end
  object dxLayoutControl3: TdxLayoutControl
    Left = 0
    Top = 81
    Width = 983
    Height = 352
    Align = alTop
    BevelKind = bkTile
    TabOrder = 2
    object cxDBLabel5: TcxDBLabel
      Left = 113
      Top = 38
      DataBinding.DataField = 'CASH_ONHAND'
      DataBinding.DataSource = dsMarginDetail
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
      Top = 92
      DataBinding.DataField = 'ARAMT'
      DataBinding.DataSource = dsMarginDetail
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Height = 21
      Width = 178
    end
    object cxDBLabel7: TcxDBLabel
      Left = 136
      Top = 119
      DataBinding.DataField = 'APAMT'
      DataBinding.DataSource = dsMarginDetail
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Height = 21
      Width = 178
    end
    object cxDBLabel11: TcxDBLabel
      Left = 344
      Top = 46
      DataBinding.DataField = 'BUY_AMT'
      DataBinding.DataSource = dsMarginDetail
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
      Width = 177
    end
    object cxDBLabel14: TcxDBLabel
      Left = 344
      Top = 91
      DataBinding.DataField = 'SELL_AMT'
      DataBinding.DataSource = dsMarginDetail
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
      Width = 177
    end
    object cxDBLabel16: TcxDBLabel
      Left = 113
      Top = 220
      DataBinding.DataField = 'CASHASSET'
      DataBinding.DataSource = dsMarginDetail
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
    object cxDBLabel18: TcxDBLabel
      Left = 113
      Top = 301
      DataBinding.DataField = 'ASSETVALUE'
      DataBinding.DataSource = dsMarginDetail
      Enabled = False
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
    object cxDBLabel19: TcxDBLabel
      Left = 113
      Top = 247
      DataBinding.DataField = 'COLLATERAL'
      DataBinding.DataSource = dsMarginDetail
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
    object cxDBLabel20: TcxDBLabel
      Left = 636
      Top = 28
      DataBinding.DataField = 'RATIO'
      DataBinding.DataSource = dsMarginDetail
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8404992
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 28
      Width = 227
    end
    object cxDBLabel13: TcxDBLabel
      Left = 636
      Top = 96
      DataBinding.DataField = 'CASH_SHORTFALL'
      DataBinding.DataSource = dsMarginDetail
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 28
      Width = 227
    end
    object cxDBLabel10: TcxDBLabel
      Left = 636
      Top = 62
      DataBinding.DataField = 'BUYINGPOWER'
      DataBinding.DataSource = dsMarginDetail
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clNavy
      Style.IsFontAssigned = True
      Height = 28
      Width = 227
    end
    object cxDBLabel8: TcxDBLabel
      Left = 113
      Top = 146
      DataBinding.DataField = 'CASH_OUTS'
      DataBinding.DataSource = dsMarginDetail
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Height = 21
      Width = 201
    end
    object cxDBLabel15: TcxDBLabel
      Left = 113
      Top = 173
      DataBinding.DataField = 'ACCRUED_INTEREST'
      DataBinding.DataSource = dsMarginDetail
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Height = 21
      Width = 201
    end
    object cxDBLabel17: TcxDBLabel
      Left = 636
      Top = 130
      DataBinding.DataField = 'STOCK_SHORTFALL'
      DataBinding.DataSource = dsMarginDetail
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 27
      Width = 227
    end
    object cxDBLabel21: TcxDBLabel
      Left = 636
      Top = 163
      DataBinding.DataField = 'CASH_DRAWDOWN'
      DataBinding.DataSource = dsMarginDetail
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 26
      Width = 227
    end
    object cxDBLabel22: TcxDBLabel
      Left = 636
      Top = 195
      DataBinding.DataField = 'STOCK_DRAWDOWN'
      DataBinding.DataSource = dsMarginDetail
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 27
      Width = 227
    end
    object cxDBLabel23: TcxDBLabel
      Left = 344
      Top = 136
      DataBinding.DataField = 'RATIO_MRGCALL'
      DataBinding.DataSource = dsMarginDetail
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
      Width = 177
    end
    object cxDBLabel12: TcxDBLabel
      Left = 113
      Top = 274
      DataBinding.DataField = 'MKTVALUE'
      DataBinding.DataSource = dsMarginDetail
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
    object cxDBLabel24: TcxDBLabel
      Left = 113
      Top = 65
      DataBinding.DataSource = dsMarginDetail
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Height = 21
      Width = 201
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl2Item1: TdxLayoutItem
      Parent = dxLayoutControl3Group3
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
      Index = 2
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
      Index = 3
    end
    object dxLayoutControl2Item7: TdxLayoutItem
      Parent = dxLayoutControl2Group2
      CaptionOptions.Text = 'Buy Value'
      CaptionOptions.Layout = clTop
      Control = cxDBLabel11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 177
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Group1: TdxLayoutGroup
      Parent = dxLayoutControl3Group5
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
      CaptionOptions.Layout = clTop
      Control = cxDBLabel14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
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
      Index = 6
    end
    object dxLayoutControl2Item14: TdxLayoutItem
      Parent = dxLayoutControl2Group1
      AlignHorz = ahClient
      Visible = False
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Total Asset'
      Control = cxDBLabel18
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 9
    end
    object dxLayoutControl2Item15: TdxLayoutItem
      Parent = dxLayoutControl2Group1
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Collateral '
      Control = cxDBLabel19
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl3Group2: TdxLayoutGroup
      Parent = dxLayoutControl3Group6
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl2Item16: TdxLayoutItem
      Parent = dxLayoutControl3Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Current Ratio'
      Control = cxDBLabel20
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 227
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item9: TdxLayoutItem
      Parent = dxLayoutControl3Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.ShowAccelChar = False
      CaptionOptions.Text = 'Cash Shortfall'
      Control = cxDBLabel13
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 227
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl3Item1: TdxLayoutItem
      Parent = dxLayoutControl3Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trading Line'
      Control = cxDBLabel10
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 227
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object TdxLayoutGroup
      ButtonOptions.Buttons = <>
      Index = -1
    end
    object dxLayoutControl3Group5: TdxLayoutGroup
      Parent = dxLayoutControl3Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl3Group6: TdxLayoutGroup
      Parent = dxLayoutControl3Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl3Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl3Item3: TdxLayoutItem
      Parent = dxLayoutControl2Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cash Outstanding'
      Control = cxDBLabel8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl3Item4: TdxLayoutItem
      Parent = dxLayoutControl2Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Accrued Interest'
      Control = cxDBLabel15
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl3Item5: TdxLayoutItem
      Parent = dxLayoutControl3Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock Shortfall'
      Control = cxDBLabel17
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 227
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl3Item6: TdxLayoutItem
      Parent = dxLayoutControl3Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cash Drawdown'
      Control = cxDBLabel21
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 227
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl3Item7: TdxLayoutItem
      Parent = dxLayoutControl3Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock Drawdown'
      Control = cxDBLabel22
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 227
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl3Item8: TdxLayoutItem
      Parent = dxLayoutControl2Group2
      CaptionOptions.Text = 'Approved M.Call Ratio'
      CaptionOptions.Layout = clTop
      Control = cxDBLabel23
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl3Item2: TdxLayoutItem
      Parent = dxLayoutControl2Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market Value'
      Control = cxDBLabel12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 201
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutControl3Item9: TdxLayoutItem
      Parent = dxLayoutControl2Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cash QQ'
      Control = cxDBLabel24
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl3Group3: TdxLayoutGroup
      Parent = dxLayoutControl2Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object grdMaster: TcxGrid
    Left = 0
    Top = 433
    Width = 983
    Height = 232
    Align = alClient
    TabOrder = 3
    object gvwMaster: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCustomDrawCell = gvwMasterCustomDrawCell
      DataController.DataSource = dsCollateral
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
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwMasterRPTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RPTDATE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAcqDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AcqDate'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterBranchID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BranchID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterBRANCHCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BRANCHCODE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterBRANCHNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BRANCHNAME'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSalesID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SalesID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterSALESCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALESCODE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterSALESNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALESNAME'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterAccNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccNo'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterAccName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccName'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterAccInit: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccInit'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterMARKETCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARKETCODE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterStockCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockCode'
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterStockName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterAvgPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AvgPrice'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterClosePrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ClosePrice'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterStockOnHand: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockOnHand'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterStockOnHold: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockOnHold'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterStockOuts: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockOuts'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterStockBalance: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockBalance'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterStockBal_Value: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockBal_Value'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterStockBal_MktValue: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockBal_MktValue'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterUnReal_LossProfit: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UnReal_LossProfit'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterLastCP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LastCP'
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterInvType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InvType'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterStockReceive: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockReceive'
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterStockDeliver: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockDeliver'
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterSELLQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SELLQTY'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterAV_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AV_QTY'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterQTY_CORPACT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY_CORPACT'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterQTY_WARKAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY_WARKAT'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterENTTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTTID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterACCTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCTYPE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterHAIRCUTVAL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HAIRCUTVAL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterACCSOPID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCSOPID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwMasterHCPERCENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HCPERCENT'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKTYPE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKKEEP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKKEEP'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object gvwMasterCCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCY'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object gvwMasterRATING: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RATING'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object gvwMasterSTK_WDR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_WDR'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 983
    Height = 81
    Align = alTop
    BevelKind = bkTile
    TabOrder = 4
    object cxDBLabel1: TcxDBLabel
      Left = 73
      Top = 10
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsMarginDetail
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
      Width = 128
    end
    object cxDBLabel2: TcxDBLabel
      Left = 73
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsMarginDetail
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
      Width = 301
    end
    object cxDBLabel3: TcxDBLabel
      Left = 253
      Top = 10
      DataBinding.DataField = 'ACCINIT'
      DataBinding.DataSource = dsMarginDetail
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
      Width = 121
    end
    object lblStatus: TcxLabel
      Left = 380
      Top = 10
      AutoSize = False
      Caption = 'lblStatus'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clOlive
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 48
      Width = 220
      AnchorX = 490
      AnchorY = 34
    end
    object cxDBLabel4: TcxDBLabel
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ACCTYPEDESC'
      DataBinding.DataSource = dsMarginDetail
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = 17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Visible = False
      Height = 21
      Width = 121
    end
    object cxDBLabel9: TcxDBLabel
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PRDDESC'
      DataBinding.DataSource = dsMarginDetail
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = 17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Visible = False
      Height = 21
      Width = 121
    end
    object dxLayoutControl1Group_Root1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object lcACNo: TdxLayoutItem
      Parent = lgAccount2
      CaptionOptions.Text = 'A/C Number'
      Control = cxDBLabel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 128
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcACName: TdxLayoutItem
      Parent = lgTop
      AlignHorz = ahClient
      CaptionOptions.Text = 'A/C Name'
      Control = cxDBLabel2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcInit: TdxLayoutItem
      Parent = lgAccount2
      CaptionOptions.Text = 'Alt Code'
      Control = cxDBLabel3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgTop: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcStatus: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root1
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxLabel3'
      CaptionOptions.Visible = False
      Control = lblStatus
      ControlOptions.OriginalHeight = 48
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgAccount2: TdxLayoutGroup
      Parent = lgTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Type'
      Control = cxDBLabel4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Product'
      Control = cxDBLabel9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = -1
    end
  end
  object cdsMarginDetail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'VALUEDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMargin_qryMarginDetail'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsMarginDetailCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 352
    Top = 368
    object cdsMarginDetailACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsMarginDetailACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsMarginDetailCASH_ONHAND: TFloatField
      FieldName = 'CASH_ONHAND'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailARAMT: TFloatField
      FieldName = 'ARAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailAPAMT: TFloatField
      FieldName = 'APAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailBUY_AMT: TFloatField
      FieldName = 'BUY_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailSELL_AMT: TFloatField
      FieldName = 'SELL_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailCASH_OUTS: TFloatField
      FieldName = 'CASH_OUTS'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailCOLLATERAL: TFloatField
      FieldName = 'COLLATERAL'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailMKTVALUE: TFloatField
      FieldName = 'MKTVALUE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailASSETVALUE: TFloatField
      FieldName = 'ASSETVALUE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailPL: TFloatField
      FieldName = 'PL'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailMCALLDAY: TIntegerField
      FieldName = 'MCALLDAY'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailCASHASSET: TFloatField
      FieldName = 'CASHASSET'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailBUYINGPOWER: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BUYINGPOWER'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsMarginDetailRATIO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RATIO'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsMarginDetailTOPUP: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOPUP'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsMarginDetailACCRUED_INTEREST: TFloatField
      FieldName = 'ACCRUED_INTEREST'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsMarginDetailACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsMarginDetailACCTYPEDESC: TStringField
      FieldName = 'ACCTYPEDESC'
      Size = 30
    end
    object cdsMarginDetailPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsMarginDetailPRDDESC: TStringField
      FieldName = 'PRDDESC'
      Size = 50
    end
    object cdsMarginDetailACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsMarginDetailACC_STS: TStringField
      FieldName = 'ACC_STS'
      Size = 1
    end
    object cdsMarginDetailSTOCK_SHORTFALL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'STOCK_SHORTFALL'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsMarginDetailCASH_SHORTFALL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CASH_SHORTFALL'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsMarginDetailCASH_DRAWDOWN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CASH_DRAWDOWN'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsMarginDetailSTOCK_DRAWDOWN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'STOCK_DRAWDOWN'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
    object cdsMarginDetailEMAILID: TLargeintField
      FieldName = 'EMAILID'
    end
    object cdsMarginDetailSENDID: TLargeintField
      FieldName = 'SENDID'
    end
    object cdsMarginDetailLASTSENDMAIL: TDateField
      FieldName = 'LASTSENDMAIL'
    end
    object cdsMarginDetailACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsMarginDetailMRG_STATUS: TStringField
      FieldName = 'MRG_STATUS'
      Size = 2
    end
    object cdsMarginDetailCASH_QQ: TFloatField
      FieldName = 'CASH_QQ'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
  end
  object dsMarginDetail: TDataSource
    DataSet = cdsMarginDetail
    Left = 440
    Top = 360
  end
  object cdsCollateral: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'VALUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMargin_qryMarginPortfolio'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 528
    Top = 368
    object cdsCollateralRPTDATE: TDateField
      FieldName = 'RPTDATE'
    end
    object cdsCollateralAcqDate: TDateField
      FieldName = 'AcqDate'
    end
    object cdsCollateralBranchID: TIntegerField
      FieldName = 'BranchID'
    end
    object cdsCollateralBRANCHCODE: TStringField
      FieldName = 'BRANCHCODE'
      Size = 10
    end
    object cdsCollateralBRANCHNAME: TStringField
      FieldName = 'BRANCHNAME'
      Size = 50
    end
    object cdsCollateralSalesID: TIntegerField
      FieldName = 'SalesID'
    end
    object cdsCollateralSALESCODE: TStringField
      FieldName = 'SALESCODE'
      Size = 10
    end
    object cdsCollateralSALESNAME: TStringField
      FieldName = 'SALESNAME'
      Size = 50
    end
    object cdsCollateralACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCollateralAccNo: TStringField
      FieldName = 'AccNo'
    end
    object cdsCollateralAccName: TStringField
      FieldName = 'AccName'
      Size = 150
    end
    object cdsCollateralAccInit: TStringField
      FieldName = 'AccInit'
    end
    object cdsCollateralSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsCollateralMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsCollateralStockCode: TStringField
      FieldName = 'StockCode'
    end
    object cdsCollateralStockName: TStringField
      FieldName = 'StockName'
      Size = 100
    end
    object cdsCollateralAvgPrice: TFloatField
      FieldName = 'AvgPrice'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCollateralClosePrice: TFloatField
      FieldName = 'ClosePrice'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCollateralStockOnHand: TFloatField
      FieldName = 'StockOnHand'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCollateralStockOnHold: TFloatField
      FieldName = 'StockOnHold'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCollateralStockOuts: TFloatField
      FieldName = 'StockOuts'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCollateralStockBalance: TFloatField
      FieldName = 'StockBalance'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCollateralStockBal_Value: TFloatField
      FieldName = 'StockBal_Value'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCollateralStockBal_MktValue: TFloatField
      FieldName = 'StockBal_MktValue'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCollateralUnReal_LossProfit: TFloatField
      FieldName = 'UnReal_LossProfit'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCollateralLastCP: TDateField
      FieldName = 'LastCP'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCollateralInvType: TStringField
      FieldName = 'InvType'
      Size = 1
    end
    object cdsCollateralStockReceive: TFloatField
      FieldName = 'StockReceive'
    end
    object cdsCollateralStockDeliver: TFloatField
      FieldName = 'StockDeliver'
    end
    object cdsCollateralSELLQTY: TFloatField
      FieldName = 'SELLQTY'
    end
    object cdsCollateralAV_QTY: TFloatField
      FieldName = 'AV_QTY'
    end
    object cdsCollateralQTY_CORPACT: TFloatField
      FieldName = 'QTY_CORPACT'
    end
    object cdsCollateralQTY_WARKAT: TFloatField
      FieldName = 'QTY_WARKAT'
    end
    object cdsCollateralENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsCollateralACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 1
    end
    object cdsCollateralHAIRCUTVAL: TFloatField
      FieldName = 'HAIRCUTVAL'
    end
    object cdsCollateralACCSOPID: TIntegerField
      FieldName = 'ACCSOPID'
    end
    object cdsCollateralHCPERCENT: TFloatField
      FieldName = 'HCPERCENT'
    end
    object cdsCollateralSTOCKTYPE: TStringField
      FieldName = 'STOCKTYPE'
      Size = 1
    end
    object cdsCollateralSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsCollateralCCY: TStringField
      FieldName = 'CCY'
    end
    object cdsCollateralRATING: TFloatField
      FieldName = 'RATING'
    end
    object cdsCollateralSTK_WDR: TFloatField
      FieldName = 'STK_WDR'
    end
  end
  object dsCollateral: TDataSource
    DataSet = cdsCollateral
    Left = 632
    Top = 360
  end
end
