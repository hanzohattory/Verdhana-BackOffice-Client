inherited frmStockPosition: TfrmStockPosition
  Caption = 'Stock Position'
  ClientHeight = 511
  ClientWidth = 836
  ExplicitLeft = 3
  ExplicitTop = 3
  ExplicitWidth = 836
  ExplicitHeight = 511
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 836
    Height = 153
    Align = alTop
    TabOrder = 0
    object dtTransDate: TcxDateEdit
      Left = 78
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
      Left = 204
      Top = 10
      Width = 75
      Height = 25
      Action = actViewList
      TabOrder = 1
    end
    object chkAccount: TcxCheckBox
      Left = 10
      Top = 41
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '0'
      Properties.ValueUnchecked = '1'
      Properties.OnChange = chkAccountPropertiesChange
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
    end
    object chkSales: TcxCheckBox
      Left = 10
      Top = 95
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '0'
      Properties.ValueUnchecked = '1'
      Properties.OnChange = chkSalesPropertiesChange
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
    end
    object chkStockCode: TcxCheckBox
      Left = 10
      Top = 122
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '0'
      Properties.ValueUnchecked = '1'
      Properties.OnChange = chkStockCodePropertiesChange
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
    end
    object edAccCode: TcxButtonEdit
      Left = 105
      Top = 41
      AutoSize = False
      Enabled = False
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
      TabOrder = 3
      Height = 21
      Width = 121
    end
    object edAccName: TcxTextEdit
      Left = 232
      Top = 41
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 277
    end
    object edSales: TcxLookupComboBox
      Left = 105
      Top = 95
      RepositoryItem = dmGlobal.luSales
      AutoSize = False
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Height = 21
      Width = 145
    end
    object edBranch: TcxLookupComboBox
      Left = 105
      Top = 68
      RepositoryItem = dmGlobal.luBranch
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 145
    end
    object chkBranch: TcxCheckBox
      Left = 10
      Top = 68
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '0'
      Properties.ValueUnchecked = '1'
      Properties.OnChange = cxCheckBox1PropertiesChange
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
    end
    object edStockCode: TcxLookupComboBox
      Left = 105
      Top = 122
      RepositoryItem = dmGlobal.luInstrumentAll
      AutoSize = False
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Height = 21
      Width = 74
    end
    object edStockName: TcxTextEdit
      Left = 185
      Top = 122
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 324
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
      CaptionOptions.Text = 'Balance Date'
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
      ControlOptions.OriginalWidth = 75
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
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkAccount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCheckBox3'
      CaptionOptions.Visible = False
      Control = chkSales
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCheckBox5'
      CaptionOptions.Visible = False
      Control = chkStockCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Account Code'
      Control = edAccCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Control = edAccName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 277
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Sales'
      Control = edSales
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Branch'
      Control = edBranch
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkBranch
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignVert = avClient
      CaptionOptions.Text = 'Stock Code'
      Control = edStockCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 74
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Control = edStockName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 324
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object grdMaster: TcxGrid [1]
    Left = 0
    Top = 153
    Width = 836
    Height = 358
    Align = alClient
    TabOrder = 1
    object gvwMaster: TcxGridDBBandedTableView
      PopupMenu = popMaster
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsStockPosition
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);-'
          Kind = skSum
          Position = spFooter
          FieldName = 'StockBal_Value'
          Column = gvwMasterStockBal_Value
        end
        item
          Format = '#,##0.00;(#,##0.00);-'
          Kind = skSum
          Position = spFooter
          FieldName = 'StockBal_MktValue'
          Column = gvwMasterStockBal_MktValue
        end
        item
          Format = '#,##0.00;(#,##0.00);-'
          Kind = skSum
          Position = spFooter
          FieldName = 'UnReal_LossProfit'
          Column = gvwMasterUnReal_LossProfit
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);-'
          Kind = skSum
          FieldName = 'StockBal_Value'
          Column = gvwMasterStockBal_Value
        end
        item
          Format = '#,##0.00;(#,##0.00);-'
          Kind = skSum
          FieldName = 'StockBal_MktValue'
          Column = gvwMasterStockBal_MktValue
        end
        item
          Format = '#,##0.00;(#,##0.00);-'
          Kind = skSum
          FieldName = 'UnReal_LossProfit'
          Column = gvwMasterUnReal_LossProfit
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
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwMasterBranchID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BranchID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterBranchCode: TcxGridDBBandedColumn
        Caption = 'Branch Code'
        DataBinding.FieldName = 'BranchCode'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterBranchName: TcxGridDBBandedColumn
        Caption = 'Branch Name'
        DataBinding.FieldName = 'BranchName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSalesID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SalesID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSalesCode: TcxGridDBBandedColumn
        Caption = 'Sales Code'
        DataBinding.FieldName = 'SalesCode'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSalesName: TcxGridDBBandedColumn
        Caption = 'Sales Name'
        DataBinding.FieldName = 'SalesName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterAccID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterAccNo: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'AccNo'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterAccName: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'AccName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterStockID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterStockCode: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'StockCode'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterStockName: TcxGridDBBandedColumn
        Caption = 'Stock Name'
        DataBinding.FieldName = 'StockName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterAvgPrice: TcxGridDBBandedColumn
        Caption = 'Avg Price'
        DataBinding.FieldName = 'AvgPrice'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterClosePrice: TcxGridDBBandedColumn
        Caption = 'Close Price'
        DataBinding.FieldName = 'ClosePrice'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterStockOnHand: TcxGridDBBandedColumn
        Caption = 'On Hand Qty'
        DataBinding.FieldName = 'StockOnHand'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterStockOnHold: TcxGridDBBandedColumn
        Caption = 'Pledged Qty'
        DataBinding.FieldName = 'StockOnHold'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterStockOuts: TcxGridDBBandedColumn
        Caption = 'Stock Outs'
        DataBinding.FieldName = 'StockOuts'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterStockBalance: TcxGridDBBandedColumn
        Caption = 'Balance Qty'
        DataBinding.FieldName = 'StockBalance'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterStockBal_Value: TcxGridDBBandedColumn
        Caption = 'Stock Bal Value'
        DataBinding.FieldName = 'StockBal_Value'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterStockBal_MktValue: TcxGridDBBandedColumn
        Caption = 'Stock Bal Mkt Value'
        DataBinding.FieldName = 'StockBal_MktValue'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterUnReal_LossProfit: TcxGridDBBandedColumn
        Caption = 'UnReal Loss Profit'
        DataBinding.FieldName = 'UnReal_LossProfit'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterLastCP: TcxGridDBBandedColumn
        Caption = 'Last CP'
        DataBinding.FieldName = 'LastCP'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterInvType: TcxGridDBBandedColumn
        Caption = 'Inv Type'
        DataBinding.FieldName = 'InvType'
        RepositoryItem = dmGlobal.luLocalForeign
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterMarketCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MarketCode'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKTYPE: TcxGridDBBandedColumn
        Caption = 'Stock Type'
        DataBinding.FieldName = 'STOCKTYPE'
        RepositoryItem = dmGlobal.luInstrumentType
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterStockReceive: TcxGridDBBandedColumn
        Caption = 'Outstanding Sell'
        DataBinding.FieldName = 'StockReceive'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterStockDeliver: TcxGridDBBandedColumn
        Caption = 'Outstanding Buy'
        DataBinding.FieldName = 'StockDeliver'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterSELLQTY: TcxGridDBBandedColumn
        Caption = 'Sell Qty'
        DataBinding.FieldName = 'SELLQTY'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterAV_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AV_QTY'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterQTY_CORPACT: TcxGridDBBandedColumn
        Caption = 'Corpact Qty'
        DataBinding.FieldName = 'QTY_CORPACT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterACCTYPE: TcxGridDBBandedColumn
        Caption = 'Account Type'
        DataBinding.FieldName = 'ACCTYPE'
        RepositoryItem = dmGlobal.luAccType
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterHAIRCUTVAL: TcxGridDBBandedColumn
        Caption = 'Haircut Value'
        DataBinding.FieldName = 'HAIRCUTVAL'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterHCPERCENT: TcxGridDBBandedColumn
        Caption = 'Haircut (%)'
        DataBinding.FieldName = 'HCPERCENT'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterAccInit: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccInit'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterQTY_WARKAT: TcxGridDBBandedColumn
        Caption = 'Warkat'
        DataBinding.FieldName = 'QTY_WARKAT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterSTK_WDR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_WDR'
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  inherited popDocking: TPopupMenu
    Left = 640
    Top = 144
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclStockPosition
    Left = 560
    Top = 144
  end
  object aclStockPosition: TActionList
    Left = 560
    Top = 336
    object actViewList: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewListExecute
      CheckPermission = False
    end
    object actSaveGridExcel: TNAction
      Category = 'NActions'
      Caption = 'Save Grid to Excel'
      OnExecute = actSaveGridExcelExecute
      CheckPermission = False
    end
  end
  object cdsStockPosition: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'tradedate'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'chk_accid'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'accid'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'chk_branch'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'branch_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'chk_sales'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'sales_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'chk_stock'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'stock_id'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockPositionList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 560
    Top = 240
    object cdsStockPositionBranchID: TIntegerField
      FieldName = 'BranchID'
    end
    object cdsStockPositionBranchCode: TStringField
      FieldName = 'BranchCode'
      Size = 10
    end
    object cdsStockPositionBranchName: TStringField
      FieldName = 'BranchName'
      Size = 50
    end
    object cdsStockPositionSalesID: TIntegerField
      FieldName = 'SalesID'
    end
    object cdsStockPositionSalesCode: TStringField
      FieldName = 'SalesCode'
      Size = 10
    end
    object cdsStockPositionSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object cdsStockPositionAccID: TLargeintField
      FieldName = 'AccID'
    end
    object cdsStockPositionAccNo: TStringField
      FieldName = 'AccNo'
      Size = 30
    end
    object cdsStockPositionAccName: TStringField
      FieldName = 'AccName'
      Size = 100
    end
    object cdsStockPositionStockID: TIntegerField
      FieldName = 'StockID'
    end
    object cdsStockPositionStockCode: TStringField
      FieldName = 'StockCode'
    end
    object cdsStockPositionStockName: TStringField
      FieldName = 'StockName'
      Size = 100
    end
    object cdsStockPositionAvgPrice: TFloatField
      FieldName = 'AvgPrice'
      DisplayFormat = '#,##0.00000000;(#,##0.00000000);0.00000000'
    end
    object cdsStockPositionClosePrice: TFloatField
      FieldName = 'ClosePrice'
      DisplayFormat = '#,##0.00000000;(#,##0.00000000);0.00000000'
    end
    object cdsStockPositionStockOnHand: TFloatField
      FieldName = 'StockOnHand'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsStockPositionStockOnHold: TFloatField
      FieldName = 'StockOnHold'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsStockPositionStockOuts: TFloatField
      FieldName = 'StockOuts'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsStockPositionStockBalance: TFloatField
      FieldName = 'StockBalance'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsStockPositionStockBal_Value: TFloatField
      FieldName = 'StockBal_Value'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsStockPositionStockBal_MktValue: TFloatField
      FieldName = 'StockBal_MktValue'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsStockPositionUnReal_LossProfit: TFloatField
      FieldName = 'UnReal_LossProfit'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsStockPositionLastCP: TDateField
      FieldName = 'LastCP'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsStockPositionInvType: TStringField
      FieldName = 'InvType'
      Size = 1
    end
    object cdsStockPositionMarketCode: TStringField
      FieldName = 'MarketCode'
      Size = 10
    end
    object cdsStockPositionSTOCKTYPE: TStringField
      FieldName = 'STOCKTYPE'
      Size = 10
    end
    object cdsStockPositionStockReceive: TFloatField
      FieldName = 'StockReceive'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsStockPositionStockDeliver: TFloatField
      FieldName = 'StockDeliver'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsStockPositionSELLQTY: TFloatField
      FieldName = 'SELLQTY'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsStockPositionAV_QTY: TFloatField
      FieldName = 'AV_QTY'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsStockPositionQTY_CORPACT: TFloatField
      FieldName = 'QTY_CORPACT'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsStockPositionACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 1
    end
    object cdsStockPositionHAIRCUTVAL: TFloatField
      FieldName = 'HAIRCUTVAL'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsStockPositionHCPERCENT: TFloatField
      FieldName = 'HCPERCENT'
      DisplayFormat = '#,##0;(#,##0);-'
    end
    object cdsStockPositionAccInit: TStringField
      FieldName = 'AccInit'
      Size = 30
    end
    object cdsStockPositionQTY_WARKAT: TFloatField
      FieldName = 'QTY_WARKAT'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsStockPositionSTK_WDR: TFloatField
      DisplayLabel = 'Stock Withdraw'
      FieldName = 'STK_WDR'
      DisplayFormat = '#,##0;(#,##0);-'
    end
  end
  object dsStockPosition: TDataSource
    DataSet = cdsStockPosition
    Left = 560
    Top = 288
  end
  object popMaster: TPopupMenu
    OwnerDraw = True
    Left = 640
    Top = 192
    object SaveGridtoExcel1: TMenuItem
      Action = actSaveGridExcel
    end
  end
  object SaveDlg: TSaveDialog
    DefaultExt = '.xlsx'
    Filter = 'Excel File|*.xlsx'
    Left = 640
    Top = 240
  end
end
