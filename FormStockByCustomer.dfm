inherited frmStockByCustomer: TfrmStockByCustomer
  Caption = 'Stock By Customer'
  ClientHeight = 396
  ClientWidth = 850
  ExplicitWidth = 866
  ExplicitHeight = 435
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 850
    Height = 129
    Align = alTop
    ExplicitWidth = 850
    ExplicitHeight = 129
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 97
      Top = 10
      TabStop = False
      DataBinding.DataField = 'TRANSDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 114
    end
    object cmbSettleDate: TcxDBDateEdit [1]
      Left = 276
      Top = 10
      TabStop = False
      DataBinding.DataField = 'SETTLEDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 112
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [2]
      Left = 97
      Top = 37
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit [3]
      Left = 233
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 332
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [4]
      Left = 97
      Top = 64
      RepositoryItem = dmGlobal.luCustody
      DataBinding.DataField = 'CBCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [5]
      Left = 97
      Top = 91
      DataBinding.DataField = 'DEP_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 468
    end
    object LayoutControlItem1: TdxLayoutItem
      Parent = LayoutControlGroup1
      CaptionOptions.Text = 'Transaction Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      Parent = LayoutControlGroup1
      CaptionOptions.Text = 'Settle Date'
      Control = cmbSettleDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup1: TdxLayoutGroup
      Parent = LayoutControlGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem3: TdxLayoutItem
      Parent = LayoutControlGroup2
      CaptionOptions.Text = 'Customer Code'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem4: TdxLayoutItem
      Parent = LayoutControlGroup2
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 332
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup2: TdxLayoutGroup
      Parent = LayoutControlGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlItem5: TdxLayoutItem
      Parent = LayoutControlGroup_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Custody'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = LayoutControlGroup_Root
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 347
    Width = 850
    ExplicitTop = 347
    ExplicitWidth = 850
    inherited btnOK: TcxButton
      ModalResult = 1
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 129
    Width = 850
    Height = 218
    Align = alClient
    TabOrder = 2
    object gvwStock: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsDetailedStock
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.cxStyle1
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwStockSTOCKID: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'STOCKID'
        RepositoryItem = dmGlobal.luInstrumentAll
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwStockSTOCK_BAL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCK_BAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwStockAVG_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AVG_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwStockQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwStockPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE'
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwStockSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Visible = False
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwStockSTOCKNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKNAME'
        Width = 182
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwStockAVAIL_QTY: TcxGridDBBandedColumn
        Caption = 'Available Quantity'
        DataBinding.FieldName = 'AVAIL_QTY'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0;(#,##0);0'
        Properties.ReadOnly = True
        Width = 102
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwStock
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCustomer
    Left = 472
    Top = 195
  end
  object dsDetailedStock: TDataSource
    DataSet = cdsDetailedStock
    Left = 474
    Top = 243
  end
  object cdsStockWdrPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'ACQDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STOCKID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockWdrPos'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 415
    Top = 293
    object cdsStockWdrPosStockID: TIntegerField
      FieldName = 'StockID'
    end
    object cdsStockWdrPosAccID: TLargeintField
      FieldName = 'AccID'
    end
    object cdsStockWdrPosAcqDate: TDateField
      DisplayLabel = 'Acquisition Date'
      FieldName = 'AcqDate'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsStockWdrPosAvgPrice: TFloatField
      DisplayLabel = 'Avg Price'
      FieldName = 'AvgPrice'
      DisplayFormat = '#,##0.####'
    end
    object cdsStockWdrPosStockOnHand: TFloatField
      DisplayLabel = 'Stock On Hand'
      FieldName = 'StockOnHand'
      DisplayFormat = '#,##0'
    end
    object cdsStockWdrPosStockBalance: TFloatField
      DisplayLabel = 'Stock Balance'
      FieldName = 'StockBalance'
      DisplayFormat = '#,##0'
    end
    object cdsStockWdrPosStockType: TStringField
      FieldName = 'StockType'
      Size = 10
    end
    object cdsStockWdrPosSWQTY: TFloatField
      DisplayLabel = 'Withdraw On Hold'
      FieldName = 'SWQTY'
      DisplayFormat = '#,##0'
    end
    object cdsStockWdrPosBondsTrans: TFloatField
      FieldName = 'BondsTrans'
      DisplayFormat = '#,##0'
    end
    object cdsStockWdrPosAV_QTY: TFloatField
      FieldName = 'AV_QTY'
      DisplayFormat = '#,##0'
    end
  end
  object cdsCustomer: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsCustomerNewRecord
    Left = 393
    Top = 195
    object cdsCustomerENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsCustomerTRANSDATE: TDateField
      FieldName = 'TRANSDATE'
    end
    object cdsCustomerSETTLEDATE: TDateField
      FieldName = 'SETTLEDATE'
      OnChange = cdsCustomerSETTLEDATEChange
    end
    object cdsCustomerACCID: TLargeintField
      FieldName = 'ACCID'
      OnChange = cdsCustomerACCIDChange
    end
    object cdsCustomerACCCODE: TStringField
      FieldName = 'ACCCODE'
    end
    object cdsCustomerACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 100
      Lookup = True
    end
    object cdsCustomerKSEIACC_TMP: TStringField
      FieldKind = fkLookup
      FieldName = 'KSEIACC_TMP'
      LookupDataSet = dmLookup.cdsLuAccountCustody
      LookupKeyFields = 'ACCID'
      LookupResultField = 'CUSTODYACCNO'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsCustomerCBCODE: TStringField
      DisplayLabel = 'Custodian'
      FieldName = 'CBCODE'
      Size = 9
    end
    object cdsCustomerDEP_DESC: TStringField
      FieldName = 'DEP_DESC'
      Size = 100
    end
  end
  object cdsDetailedStock: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = cdsDetailedStockBeforePost
    Left = 372
    Top = 243
    object cdsDetailedStockSTOCKID: TLargeintField
      DisplayLabel = 'Stock ID'
      FieldName = 'STOCKID'
      OnChange = cdsDetailedStockSTOCKIDChange
    end
    object cdsDetailedStockSTOCK_BAL: TIntegerField
      DisplayLabel = 'Stock Balance'
      FieldName = 'STOCK_BAL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDetailedStockAVG_PRICE: TFloatField
      DisplayLabel = 'Average Price'
      FieldName = 'AVG_PRICE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDetailedStockQTY: TIntegerField
      DisplayLabel = 'Input Qty'
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDetailedStockPRICE: TFloatField
      DisplayLabel = 'Price'
      FieldName = 'PRICE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDetailedStockSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldKind = fkLookup
      FieldName = 'STOCKCODE'
      LookupDataSet = dmLookup.cdsluCustStock
      LookupKeyFields = 'StockID'
      LookupResultField = 'StockCode'
      KeyFields = 'STOCKID'
      Size = 30
      Lookup = True
    end
    object cdsDetailedStockSTOCKNAME: TStringField
      DisplayLabel = 'Stock Name'
      FieldKind = fkLookup
      FieldName = 'STOCKNAME'
      LookupDataSet = dmLookup.cdsLuInstrumentStock
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'SHORTNAME'
      KeyFields = 'STOCKID'
      Size = 300
      Lookup = True
    end
    object cdsDetailedStockAVAIL_QTY: TFloatField
      FieldName = 'AVAIL_QTY'
    end
  end
end
