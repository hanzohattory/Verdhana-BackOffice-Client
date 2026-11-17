inherited frmCustomerByStock: TfrmCustomerByStock
  Caption = 'Customer By Stock'
  ClientWidth = 791
  ExplicitWidth = 807
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 791
    Height = 76
    Align = alTop
    ExplicitWidth = 791
    ExplicitHeight = 76
    object cxDBLookupComboBox1: TcxDBLookupComboBox [0]
      Left = 97
      Top = 37
      RepositoryItem = dmGlobal.luInstrumentAll
      DataBinding.DataField = 'STOCKID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 117
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 229
      Top = 37
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 399
    end
    object cxDBDateEdit1: TcxDBDateEdit [2]
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
      Width = 121
    end
    object cmbSettleDate: TcxDBDateEdit [3]
      Left = 283
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
      Width = 121
    end
    object LayoutControlItem1: TdxLayoutItem
      Parent = LayoutControlGroup1
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      Parent = LayoutControlGroup1
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 399
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
      Index = 1
    end
    object LayoutControlItem3: TdxLayoutItem
      Parent = LayoutControlGroup2
      CaptionOptions.Text = 'Transaction Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem4: TdxLayoutItem
      Parent = LayoutControlGroup2
      CaptionOptions.Text = 'Settle Date'
      Control = cmbSettleDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
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
      Index = 0
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Width = 791
    ExplicitWidth = 791
    inherited btnOK: TcxButton
      ModalResult = 1
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 76
    Width = 791
    Height = 239
    Align = alClient
    TabOrder = 2
    object gvwStock: TcxGridDBBandedTableView
      PopupMenu = PopupMenu1
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
      DataController.DataSource = dsCustomer
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
      object gvwStockACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwStockACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = gvwStockACCCODEPropertiesButtonClick
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwStockACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 163
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwStockKSEIACC_TMP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KSEIACC_TMP'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 114
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwStockSTOCK_BAL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCK_BAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwStockAVG_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AVG_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwStockQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwStockPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwStockCBCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CBCODE'
        RepositoryItem = dmGlobal.luCustody
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwStock
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsStock
    Left = 577
    Top = 150
  end
  object cdsCustomer: TNClientDataset
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsCustomerNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 486
    Top = 189
    object cdsCustomerACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCustomerACCCODE: TStringField
      DisplayLabel = 'Account Code'
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
      DisplayLabel = 'KSEI Account'
      FieldKind = fkLookup
      FieldName = 'KSEIACC_TMP'
      LookupDataSet = dmLookup.cdsLuAccountCustody
      LookupKeyFields = 'ACCID'
      LookupResultField = 'CUSTODYACCNO'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsCustomerSTOCK_BAL: TIntegerField
      DisplayLabel = 'Stock Balance'
      FieldName = 'STOCK_BAL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCustomerAVG_PRICE: TFloatField
      DisplayLabel = 'Average Price'
      FieldName = 'AVG_PRICE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCustomerQTY: TIntegerField
      DisplayLabel = 'Input Qty'
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
      EditFormat = '#'
    end
    object cdsCustomerPRICE: TFloatField
      DisplayLabel = 'Price'
      FieldName = 'PRICE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
      EditFormat = '#.##'
    end
    object cdsCustomerCBCODE: TStringField
      DisplayLabel = 'Custodian'
      FieldName = 'CBCODE'
      Size = 9
    end
  end
  object cdsStock: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 486
    Top = 144
    object cdsStockENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsStockTRANSDATE: TDateField
      FieldName = 'TRANSDATE'
    end
    object cdsStockSETTLEDATE: TDateField
      FieldName = 'SETTLEDATE'
      OnChange = cdsStockSETTLEDATEChange
    end
    object cdsStockSTOCKID: TLargeintField
      DisplayLabel = 'Stock ID'
      FieldName = 'STOCKID'
      OnChange = cdsStockSTOCKIDChange
    end
    object cdsStockSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKCODE'
    end
    object cdsStockSTOCKNAME: TStringField
      DisplayLabel = 'Stock Name'
      FieldKind = fkLookup
      FieldName = 'STOCKNAME'
      LookupDataSet = dmLookup.cdsLuInstrumentAll
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'SHORTNAME'
      KeyFields = 'STOCKID'
      Size = 50
      Lookup = True
    end
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
    Left = 487
    Top = 236
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
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cdsStockWdrPosSWQTY: TFloatField
      DisplayLabel = 'Withdraw On Hold'
      FieldName = 'SWQTY'
      ReadOnly = True
      Required = True
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
  object dsCustomer: TDataSource
    DataSet = cdsCustomer
    Left = 579
    Top = 198
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel File|*.xlsx'
    Left = 432
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 432
    Top = 192
    object UploadFromFile1: TMenuItem
      Caption = 'Upload From File'
      Visible = False
      OnClick = UploadFromFile1Click
    end
  end
end
