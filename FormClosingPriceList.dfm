inherited frmClosingPriceList: TfrmClosingPriceList
  Caption = 'Closing Price'
  ClientWidth = 923
  ExplicitWidth = 923
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 102
    Width = 923
    Height = 366
    ExplicitTop = 102
    ExplicitWidth = 923
    ExplicitHeight = 366
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterSTK_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_DATE'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterMARKETCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARKETCODE'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterSTK_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSTK_NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_NAME'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSTK_PREV: TcxGridDBBandedColumn
        Caption = 'Prev'
        DataBinding.FieldName = 'STK_PREV'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSTK_HIGH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_HIGH'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterSTK_LOW: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_LOW'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterSTK_CLOS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_CLOS'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterSTK_VOLM: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_VOLM'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterSTK_AMNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_AMNT'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterSTK_INDX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_INDX'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterSTK_PIDX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_PIDX'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterSTK_ASKP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_ASKP'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterSTK_ASKV: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_ASKV'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterSTK_ASKF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_ASKF'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterSTK_BIDP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_BIDP'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterSTK_BIDV: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_BIDV'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterSTK_BIDF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_BIDF'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterSTK_FHIG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_FHIG'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterSTK_FLOW: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_FLOW'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterSTK_FCLO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_FCLO'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterSTK_OPEN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_OPEN'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 26
    Width = 923
    Height = 76
    Align = alTop
    TabOrder = 5
    object dtTransDate: TcxDateEdit
      Left = 307
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 120
    end
    object cxButton1: TcxButton
      Left = 433
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 2
    end
    object txtSSFile: TcxButtonEdit
      Left = 94
      Top = 41
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = txtSSFilePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 400
    end
    object cxButton2: TcxButton
      Left = 500
      Top = 41
      Width = 114
      Height = 25
      Action = actImportSS
      TabOrder = 4
    end
    object cbMarket: TcxLookupComboBox
      Left = 94
      Top = 10
      RepositoryItem = dmGlobal.luMarket
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
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
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Transaction Date'
      Control = dtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
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
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Closing Price File'
      Control = txtSSFile
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market'
      Control = cbMarket
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actEdit'
        Permission = 'Closing Price Editor'
      end
      item
        ActionName = 'actNew'
        Permission = 'Closing Price Editor'
      end>
    Left = 288
  end
  inherited PrintComp: TdxComponentPrinter
    PixelsPerInch = 96
    inherited PrintCompMainGrid: TdxGridReportLink
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsClosingPrice
  end
  inherited aclEditor: TActionList
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actImportSS: TNAction
      Category = 'NActions'
      Caption = 'Import Closing Price'
      OnExecute = actImportSSExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsClosingPrice: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'STK_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MARKETCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryClosingPrice'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsClosingPriceSTK_DATE: TDateField
      FieldName = 'STK_DATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsClosingPriceSTK_CODE: TStringField
      FieldName = 'STK_CODE'
      Required = True
      Size = 10
    end
    object cdsClosingPriceSTK_NAME: TStringField
      FieldName = 'STK_NAME'
      Size = 50
    end
    object cdsClosingPriceSTK_PREV: TFloatField
      FieldName = 'STK_PREV'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceSTK_HIGH: TFloatField
      FieldName = 'STK_HIGH'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceSTK_LOW: TFloatField
      DisplayWidth = 10
      FieldName = 'STK_LOW'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceSTK_CLOS: TFloatField
      FieldName = 'STK_CLOS'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceSTK_VOLM: TFloatField
      FieldName = 'STK_VOLM'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceSTK_AMNT: TFloatField
      FieldName = 'STK_AMNT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceSTK_INDX: TFloatField
      FieldName = 'STK_INDX'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceSTK_PIDX: TFloatField
      FieldName = 'STK_PIDX'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceSTK_ASKP: TFloatField
      FieldName = 'STK_ASKP'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceSTK_ASKV: TFloatField
      FieldName = 'STK_ASKV'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceSTK_ASKF: TStringField
      FieldName = 'STK_ASKF'
      Size = 5
    end
    object cdsClosingPriceSTK_BIDP: TFloatField
      FieldName = 'STK_BIDP'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceSTK_BIDV: TFloatField
      FieldName = 'STK_BIDV'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceSTK_BIDF: TStringField
      FieldName = 'STK_BIDF'
      Size = 5
    end
    object cdsClosingPriceSTK_FHIG: TFloatField
      FieldName = 'STK_FHIG'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceSTK_FLOW: TFloatField
      FieldName = 'STK_FLOW'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceSTK_FCLO: TFloatField
      FieldName = 'STK_FCLO'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceSTK_OPEN: TFloatField
      FieldName = 'STK_OPEN'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsClosingPriceMODDA: TDateTimeField
      FieldName = 'MODDA'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss'
    end
    object cdsClosingPriceMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsClosingPriceMARKETCODE: TStringField
      DisplayWidth = 10
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
  end
  object dbfClosingPrice: TDbf
    FilePath = 'D:\Kalacakra Project\Nayaga\BCI Data\'
    IndexDefs = <>
    TableName = 'SS131111.dbf'
    TableLevel = 3
    Left = 32
    Top = 168
    object dbfClosingPriceSTK_DATE: TDateField
      FieldName = 'STK_DATE'
    end
    object dbfClosingPriceSTK_CODE: TStringField
      FieldName = 'STK_CODE'
      Size = 7
    end
    object dbfClosingPriceSTK_NAME: TStringField
      FieldName = 'STK_NAME'
      Size = 40
    end
    object dbfClosingPriceSTK_PREV: TFloatField
      FieldName = 'STK_PREV'
    end
    object dbfClosingPriceSTK_HIGH: TFloatField
      FieldName = 'STK_HIGH'
    end
    object dbfClosingPriceSTK_LOW: TFloatField
      FieldName = 'STK_LOW'
    end
    object dbfClosingPriceSTK_CLOS: TFloatField
      FieldName = 'STK_CLOS'
    end
    object dbfClosingPriceSTK_VOLM: TFloatField
      FieldName = 'STK_VOLM'
    end
    object dbfClosingPriceSTK_AMNT: TFloatField
      FieldName = 'STK_AMNT'
    end
    object dbfClosingPriceSTK_INDX: TFloatField
      FieldName = 'STK_INDX'
    end
    object dbfClosingPriceSTK_PIDX: TFloatField
      FieldName = 'STK_PIDX'
    end
    object dbfClosingPriceSTK_ASKP: TFloatField
      FieldName = 'STK_ASKP'
    end
    object dbfClosingPriceSTK_ASKV: TFloatField
      FieldName = 'STK_ASKV'
    end
    object dbfClosingPriceSTK_ASKF: TStringField
      FieldName = 'STK_ASKF'
      Size = 1
    end
    object dbfClosingPriceSTK_BIDP: TFloatField
      FieldName = 'STK_BIDP'
    end
    object dbfClosingPriceSTK_BIDV: TFloatField
      FieldName = 'STK_BIDV'
    end
    object dbfClosingPriceSTK_BIDF: TStringField
      FieldName = 'STK_BIDF'
      Size = 1
    end
    object dbfClosingPriceSTK_FHIG: TFloatField
      FieldName = 'STK_FHIG'
    end
    object dbfClosingPriceSTK_FLOW: TFloatField
      FieldName = 'STK_FLOW'
    end
    object dbfClosingPriceSTK_FCLO: TFloatField
      FieldName = 'STK_FCLO'
    end
    object dbfClosingPriceSTK_OPEN: TFloatField
      FieldName = 'STK_OPEN'
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'DTE File|*.dbf|Excel File|*.xls'
    Left = 112
    Top = 168
  end
  object cdsClosePrice: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'STK_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MARKETCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STK_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryClosePrice'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 192
    Top = 168
    object cdsClosePriceSTK_DATE: TDateField
      FieldName = 'STK_DATE'
      Required = True
    end
    object cdsClosePriceMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsClosePriceSTK_CODE: TStringField
      FieldName = 'STK_CODE'
      Required = True
      Size = 10
    end
    object cdsClosePriceSTK_NAME: TStringField
      FieldName = 'STK_NAME'
      Size = 50
    end
    object cdsClosePriceSTK_PREV: TFloatField
      FieldName = 'STK_PREV'
    end
    object cdsClosePriceSTK_HIGH: TFloatField
      FieldName = 'STK_HIGH'
    end
    object cdsClosePriceSTK_LOW: TFloatField
      FieldName = 'STK_LOW'
    end
    object cdsClosePriceSTK_CLOS: TFloatField
      FieldName = 'STK_CLOS'
    end
    object cdsClosePriceSTK_VOLM: TFloatField
      FieldName = 'STK_VOLM'
    end
    object cdsClosePriceSTK_AMNT: TFloatField
      FieldName = 'STK_AMNT'
    end
    object cdsClosePriceSTK_INDX: TFloatField
      FieldName = 'STK_INDX'
    end
    object cdsClosePriceSTK_PIDX: TFloatField
      FieldName = 'STK_PIDX'
    end
    object cdsClosePriceSTK_ASKP: TFloatField
      FieldName = 'STK_ASKP'
    end
    object cdsClosePriceSTK_ASKV: TFloatField
      FieldName = 'STK_ASKV'
    end
    object cdsClosePriceSTK_ASKF: TStringField
      FieldName = 'STK_ASKF'
      Size = 5
    end
    object cdsClosePriceSTK_BIDP: TFloatField
      FieldName = 'STK_BIDP'
    end
    object cdsClosePriceSTK_BIDV: TFloatField
      FieldName = 'STK_BIDV'
    end
    object cdsClosePriceSTK_BIDF: TStringField
      FieldName = 'STK_BIDF'
      Size = 5
    end
    object cdsClosePriceSTK_FHIG: TFloatField
      FieldName = 'STK_FHIG'
    end
    object cdsClosePriceSTK_FLOW: TFloatField
      FieldName = 'STK_FLOW'
    end
    object cdsClosePriceSTK_FCLO: TFloatField
      FieldName = 'STK_FCLO'
    end
    object cdsClosePriceSTK_OPEN: TFloatField
      FieldName = 'STK_OPEN'
    end
    object cdsClosePriceMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsClosePriceMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
  end
  object cdsInstrumentByLocalCode: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'LOCALCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryIntrumentByLocalCode'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 296
    Top = 168
    object cdsInstrumentByLocalCodeINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsInstrumentByLocalCodeINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsInstrumentByLocalCodeLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsInstrumentByLocalCodeMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsInstrumentByLocalCodeINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsInstrumentByLocalCodeSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object cdsInstrumentByLocalCodeLONGNAME: TStringField
      FieldName = 'LONGNAME'
      Size = 100
    end
    object cdsInstrumentByLocalCodeISSUERNAME: TStringField
      FieldName = 'ISSUERNAME'
      Size = 100
    end
    object cdsInstrumentByLocalCodeCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsInstrumentByLocalCodeISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsInstrumentByLocalCodeISINDATE: TDateTimeField
      FieldName = 'ISINDATE'
    end
    object cdsInstrumentByLocalCodeMARGIN: TIntegerField
      FieldName = 'MARGIN'
    end
    object cdsInstrumentByLocalCodeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsInstrumentByLocalCodeDELISTINGDATE: TDateTimeField
      FieldName = 'DELISTINGDATE'
    end
    object cdsInstrumentByLocalCodeLISTINGDATE: TDateTimeField
      FieldName = 'LISTINGDATE'
    end
    object cdsInstrumentByLocalCodeLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
    end
    object cdsInstrumentByLocalCodeLASTCPPRICEDATE: TDateField
      FieldName = 'LASTCPPRICEDATE'
    end
    object cdsInstrumentByLocalCodeSECTOR: TStringField
      FieldName = 'SECTOR'
    end
    object cdsInstrumentByLocalCodeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsInstrumentByLocalCodeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsInstrumentByLocalCodeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsInstrumentByLocalCodeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsInstrumentByLocalCodeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsInstrumentByLocalCodeID: TLargeintField
      FieldName = 'ID'
    end
    object cdsInstrumentByLocalCodeCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 10
    end
    object cdsInstrumentByLocalCodeMATURITYDATE: TDateTimeField
      FieldName = 'MATURITYDATE'
    end
    object cdsInstrumentByLocalCodeRATING: TStringField
      FieldName = 'RATING'
      Size = 10
    end
    object cdsInstrumentByLocalCodeREMARKS: TStringField
      FieldName = 'REMARKS'
    end
    object cdsInstrumentByLocalCodeEFFECTIVEDATE: TDateTimeField
      FieldName = 'EFFECTIVEDATE'
    end
    object cdsInstrumentByLocalCodeOFFERING_PERIODBEG: TDateTimeField
      FieldName = 'OFFERING_PERIODBEG'
    end
    object cdsInstrumentByLocalCodeOFFERING_PERIODEND: TDateTimeField
      FieldName = 'OFFERING_PERIODEND'
    end
    object cdsInstrumentByLocalCodeISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object cdsInstrumentByLocalCodeNO_OFCERTIFICATES: TStringField
      FieldName = 'NO_OFCERTIFICATES'
      Size = 4
    end
    object cdsInstrumentByLocalCodeLEAD_UNDERWRITER: TStringField
      FieldName = 'LEAD_UNDERWRITER'
      Size = 40
    end
    object cdsInstrumentByLocalCodeSELLING_AGENT: TStringField
      FieldName = 'SELLING_AGENT'
      Size = 40
    end
    object cdsInstrumentByLocalCodeTRUSTEE: TStringField
      FieldName = 'TRUSTEE'
      Size = 40
    end
    object cdsInstrumentByLocalCodeCALCULATE_DAYS_METHOD: TIntegerField
      FieldName = 'CALCULATE_DAYS_METHOD'
    end
    object cdsInstrumentByLocalCodeCOUPON_IN_YEAR: TIntegerField
      FieldName = 'COUPON_IN_YEAR'
    end
    object cdsInstrumentByLocalCodeCOMMONCODE: TStringField
      FieldName = 'COMMONCODE'
      Size = 10
    end
    object cdsInstrumentByLocalCodeDAYSOFYEAR: TIntegerField
      FieldName = 'DAYSOFYEAR'
    end
    object cdsInstrumentByLocalCodeREGIONALBONDS: TIntegerField
      FieldName = 'REGIONALBONDS'
    end
    object cdsInstrumentByLocalCodeCOUNTINGDAYS_METHOD: TIntegerField
      FieldName = 'COUNTINGDAYS_METHOD'
    end
    object cdsInstrumentByLocalCodeACCRUEDDAYS_METHOD: TIntegerField
      FieldName = 'ACCRUEDDAYS_METHOD'
    end
    object cdsInstrumentByLocalCodeDAYSPERYEAR_METHOD: TIntegerField
      FieldName = 'DAYSPERYEAR_METHOD'
    end
    object cdsInstrumentByLocalCodeACCRUEDTYPE: TStringField
      FieldName = 'ACCRUEDTYPE'
      Size = 1
    end
    object cdsInstrumentByLocalCodeDECDIGIT: TIntegerField
      FieldName = 'DECDIGIT'
    end
    object cdsInstrumentByLocalCodeSEDOL: TStringField
      FieldName = 'SEDOL'
      Size = 50
    end
    object cdsInstrumentByLocalCodeHAIRCUT: TFloatField
      FieldName = 'HAIRCUT'
    end
    object cdsInstrumentByLocalCodeLIQUIDITY: TFloatField
      FieldName = 'LIQUIDITY'
    end
    object cdsInstrumentByLocalCodeLASTHAIRCUTDATE: TDateField
      FieldName = 'LASTHAIRCUTDATE'
    end
    object cdsInstrumentByLocalCodeISSUERID: TLargeintField
      FieldName = 'ISSUERID'
    end
    object cdsInstrumentByLocalCodeHCUT_REPO: TFloatField
      FieldName = 'HCUT_REPO'
    end
    object cdsInstrumentByLocalCodeHCUT_MARGIN: TFloatField
      FieldName = 'HCUT_MARGIN'
    end
    object cdsInstrumentByLocalCodeHCUT_REG: TFloatField
      FieldName = 'HCUT_REG'
    end
    object cdsInstrumentByLocalCodeAFFIL: TBooleanField
      FieldName = 'AFFIL'
    end
  end
  object cdsInstrumentNoStock: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmStockManagement_qryInstrumentNoStock'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 344
    object cdsInstrumentNoStockINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsInstrumentNoStockINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsInstrumentNoStockLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsInstrumentNoStockMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsInstrumentNoStockINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsInstrumentNoStockSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object cdsInstrumentNoStockLONGNAME: TStringField
      FieldName = 'LONGNAME'
      Size = 100
    end
    object cdsInstrumentNoStockASPARENT: TStringField
      FieldName = 'ASPARENT'
      Size = 1
    end
    object cdsInstrumentNoStockINSTRUMENTGROUPID: TLargeintField
      FieldName = 'INSTRUMENTGROUPID'
    end
    object cdsInstrumentNoStockISSUERID: TLargeintField
      FieldName = 'ISSUERID'
    end
    object cdsInstrumentNoStockISSUERNAME: TStringField
      FieldName = 'ISSUERNAME'
      Size = 100
    end
    object cdsInstrumentNoStockCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsInstrumentNoStockISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsInstrumentNoStockISINDATE: TDateTimeField
      FieldName = 'ISINDATE'
    end
    object cdsInstrumentNoStockMARGIN: TIntegerField
      FieldName = 'MARGIN'
    end
    object cdsInstrumentNoStockSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsInstrumentNoStockDELISTINGDATE: TDateTimeField
      FieldName = 'DELISTINGDATE'
    end
    object cdsInstrumentNoStockLISTINGDATE: TDateTimeField
      FieldName = 'LISTINGDATE'
    end
    object cdsInstrumentNoStockLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
    end
    object cdsInstrumentNoStockLASTCPPRICEDATE: TDateField
      FieldName = 'LASTCPPRICEDATE'
    end
    object cdsInstrumentNoStockSECTOR: TStringField
      FieldName = 'SECTOR'
    end
    object cdsInstrumentNoStockCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 10
    end
    object cdsInstrumentNoStockMATURITYDATE: TDateTimeField
      FieldName = 'MATURITYDATE'
    end
    object cdsInstrumentNoStockRATING: TStringField
      FieldName = 'RATING'
      Size = 10
    end
    object cdsInstrumentNoStockREMARKS: TStringField
      FieldName = 'REMARKS'
    end
    object cdsInstrumentNoStockEFFECTIVEDATE: TDateTimeField
      FieldName = 'EFFECTIVEDATE'
    end
    object cdsInstrumentNoStockOFFERING_PERIODBEG: TDateTimeField
      FieldName = 'OFFERING_PERIODBEG'
    end
    object cdsInstrumentNoStockOFFERING_PERIODEND: TDateTimeField
      FieldName = 'OFFERING_PERIODEND'
    end
    object cdsInstrumentNoStockISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object cdsInstrumentNoStockNO_OFCERTIFICATES: TStringField
      FieldName = 'NO_OFCERTIFICATES'
      Size = 4
    end
    object cdsInstrumentNoStockLEAD_UNDERWRITER: TStringField
      FieldName = 'LEAD_UNDERWRITER'
      Size = 40
    end
    object cdsInstrumentNoStockSELLING_AGENT: TStringField
      FieldName = 'SELLING_AGENT'
      Size = 40
    end
    object cdsInstrumentNoStockTRUSTEE: TStringField
      FieldName = 'TRUSTEE'
      Size = 40
    end
    object cdsInstrumentNoStockCALCULATE_DAYS_METHOD: TIntegerField
      FieldName = 'CALCULATE_DAYS_METHOD'
    end
    object cdsInstrumentNoStockCOUPON_IN_YEAR: TIntegerField
      FieldName = 'COUPON_IN_YEAR'
    end
    object cdsInstrumentNoStockCOMMONCODE: TStringField
      FieldName = 'COMMONCODE'
      Size = 10
    end
    object cdsInstrumentNoStockDAYSOFYEAR: TIntegerField
      FieldName = 'DAYSOFYEAR'
    end
    object cdsInstrumentNoStockREGIONALBONDS: TIntegerField
      FieldName = 'REGIONALBONDS'
    end
    object cdsInstrumentNoStockCOUNTINGDAYS_METHOD: TIntegerField
      FieldName = 'COUNTINGDAYS_METHOD'
    end
    object cdsInstrumentNoStockACCRUEDDAYS_METHOD: TIntegerField
      FieldName = 'ACCRUEDDAYS_METHOD'
    end
    object cdsInstrumentNoStockDAYSPERYEAR_METHOD: TIntegerField
      FieldName = 'DAYSPERYEAR_METHOD'
    end
    object cdsInstrumentNoStockACCRUEDTYPE: TStringField
      FieldName = 'ACCRUEDTYPE'
      Size = 1
    end
    object cdsInstrumentNoStockDECDIGIT: TIntegerField
      FieldName = 'DECDIGIT'
    end
    object cdsInstrumentNoStockSEDOL: TStringField
      FieldName = 'SEDOL'
      Size = 50
    end
    object cdsInstrumentNoStockHAIRCUT: TFloatField
      FieldName = 'HAIRCUT'
    end
    object cdsInstrumentNoStockLIQUIDITY: TFloatField
      FieldName = 'LIQUIDITY'
    end
    object cdsInstrumentNoStockLASTHAIRCUTDATE: TDateField
      FieldName = 'LASTHAIRCUTDATE'
    end
    object cdsInstrumentNoStockHCUT_REPO: TFloatField
      FieldName = 'HCUT_REPO'
    end
    object cdsInstrumentNoStockHCUT_MARGIN: TFloatField
      FieldName = 'HCUT_MARGIN'
    end
    object cdsInstrumentNoStockHCUT_REG: TFloatField
      FieldName = 'HCUT_REG'
    end
    object cdsInstrumentNoStockAFFIL: TBooleanField
      FieldName = 'AFFIL'
    end
    object cdsInstrumentNoStockLASTHCUT_REPODATE: TDateField
      FieldName = 'LASTHCUT_REPODATE'
    end
    object cdsInstrumentNoStockLASTHCUT_MARGINDATE: TDateField
      FieldName = 'LASTHCUT_MARGINDATE'
    end
    object cdsInstrumentNoStockLASTHCUT_REGDATE: TDateField
      FieldName = 'LASTHCUT_REGDATE'
    end
    object cdsInstrumentNoStockMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsInstrumentNoStockMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsInstrumentNoStockAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsInstrumentNoStockAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsInstrumentNoStockISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsInstrumentNoStockID: TLargeintField
      FieldName = 'ID'
    end
  end
end
