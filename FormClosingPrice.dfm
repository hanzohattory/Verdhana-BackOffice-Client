inherited frmClosingPrice: TfrmClosingPrice
  Caption = 'Closing Price'
  ClientWidth = 676
  ExplicitWidth = 676
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 676
    Height = 76
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
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 1
    end
    object txtSSFile: TcxButtonEdit
      Left = 97
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
      TabOrder = 2
      Width = 400
    end
    object cxButton2: TcxButton
      Left = 503
      Top = 41
      Width = 114
      Height = 25
      Action = actImportSS
      TabOrder = 3
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
  end
  object grdClosingPrice: TcxGrid [1]
    Left = 0
    Top = 76
    Width = 676
    Height = 298
    Align = alClient
    TabOrder = 1
    object gvwClosingPrice: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsClosingPrice
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwClosingPriceSTK_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_DATE'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_NAME'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_PREV: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_PREV'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_HIGH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_HIGH'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_LOW: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_LOW'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_CLOS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_CLOS'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_VOLM: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_VOLM'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_AMNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_AMNT'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_INDX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_INDX'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_PIDX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_PIDX'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_ASKP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_ASKP'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_ASKV: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_ASKV'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_ASKF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_ASKF'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_BIDP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_BIDP'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_BIDV: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_BIDV'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_BIDF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_BIDF'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_FHIG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_FHIG'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_FLOW: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_FLOW'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_FCLO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_FCLO'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwClosingPriceSTK_OPEN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_OPEN'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwClosingPriceMODDA: TcxGridDBBandedColumn
        Caption = 'Modification Date'
        DataBinding.FieldName = 'MODDA'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwClosingPriceMODUI: TcxGridDBBandedColumn
        Caption = 'Modification User'
        DataBinding.FieldName = 'MODUI'
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
    end
    object grdClosingPriceLevel1: TcxGridLevel
      GridView = gvwClosingPrice
    end
  end
  inherited popDocking: TPopupMenu
    Left = 304
    Top = 216
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclClosingPrice
    Left = 304
    Top = 168
  end
  object dbfClosingPrice: TDbf
    FilePath = 'D:\Kalacakra Project\Nayaga\BCI Data\'
    IndexDefs = <>
    TableName = 'SS131111.dbf'
    TableLevel = 3
    Left = 40
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
    object dbfClosingPriceSTK_VOLM: TLargeintField
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
    object dbfClosingPriceSTK_ASKV: TLargeintField
      FieldName = 'STK_ASKV'
    end
    object dbfClosingPriceSTK_ASKF: TStringField
      FieldName = 'STK_ASKF'
      Size = 1
    end
    object dbfClosingPriceSTK_BIDP: TFloatField
      FieldName = 'STK_BIDP'
    end
    object dbfClosingPriceSTK_BIDV: TLargeintField
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
  object cdsClosingPrice: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'STK_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryClosingPrice'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 128
    Top = 168
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
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsClosingPriceMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
  end
  object popDTE: TPopupMenu
    Left = 208
    Top = 168
    object ImportDTE1: TMenuItem
      Action = actImportSS
    end
  end
  object dsClosingPrice: TDataSource
    DataSet = cdsClosingPrice
    Left = 128
    Top = 216
  end
  object OpenDialog: TOpenDialog
    Filter = 'DTE File|*.dbf'
    Left = 40
    Top = 216
  end
  object aclClosingPrice: TActionList
    Left = 208
    Top = 216
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
      OnUpdate = actImportSSUpdate
      CheckPermission = False
    end
  end
end
