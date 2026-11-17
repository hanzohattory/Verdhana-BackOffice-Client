inherited frmDTE: TfrmDTE
  Caption = 'DTE'
  ClientHeight = 467
  ClientWidth = 1217
  ExplicitWidth = 1217
  ExplicitHeight = 467
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 1217
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
    object txtDTEFile: TcxButtonEdit
      Left = 97
      Top = 41
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
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
      Width = 75
      Height = 25
      Action = actImportDTE
      TabOrder = 3
    end
    object btnGenerateDealTocket: TcxButton
      Left = 584
      Top = 41
      Width = 209
      Height = 25
      Action = actUpdateDealTicketExecutionManual
      TabOrder = 4
    end
    object cxButton3: TcxButton
      Left = 799
      Top = 41
      Width = 130
      Height = 25
      Action = actGenerateDealTicket
      TabOrder = 5
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Transaction Date'
      Control = dtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
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
      CaptionOptions.Text = 'DTE File'
      Control = txtDTEFile
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
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      Visible = False
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = btnGenerateDealTocket
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 209
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      Visible = False
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object grdDTE: TcxGrid [1]
    Left = 0
    Top = 76
    Width = 1217
    Height = 220
    Align = alClient
    TabOrder = 1
    object gvwDTE: TcxGridDBBandedTableView
      PopupMenu = popDTE
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsDTE
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
      object gvwDTETRX_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDTETRX_POST: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_POST'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwDTETRX_NOTE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_NOTE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwDTETRX_SESS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_SESS'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwDTETRX_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_TYPE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwDTEBRK_COD2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BRK_COD2'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwDTEINV_TYP2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INV_TYP2'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwDTEBRK_COD1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BRK_COD1'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwDTEINV_TYP1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INV_TYP1'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwDTESTK_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwDTESTK_VOLM: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_VOLM'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwDTESTK_PRIC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_PRIC'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwDTETRX_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_DATE'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwDTETRX_ORD2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_ORD2'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwDTETRX_ORD1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_ORD1'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwDTETRX_REF2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_REF2'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwDTETRX_REF1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_REF1'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwDTETRX_KOPUR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_KOPUR'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwDTETRX_TIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_TIME'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwDTETRX_USER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_USER'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwDTETRADING_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADING_ID'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwDTEMODDA: TcxGridDBBandedColumn
        Caption = 'Modification Date'
        DataBinding.FieldName = 'MODDA'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwDTEMODUI: TcxGridDBBandedColumn
        Caption = 'Modification User'
        DataBinding.FieldName = 'MODUI'
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
    end
    object grdDTELevel1: TcxGridLevel
      GridView = gvwDTE
    end
  end
  object grdDTENonDeal: TcxGrid [2]
    Left = 0
    Top = 304
    Width = 1217
    Height = 163
    Align = alBottom
    TabOrder = 2
    object gvwDTENonDeal: TcxGridDBBandedTableView
      PopupMenu = popDTE
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsDTENonDealTicket
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
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
          Caption = 'DTE Non Generated'
        end>
      object gvwDTENonDealTRX_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDTENonDealTRX_POST: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_POST'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwDTENonDealTRX_NOTE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_NOTE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwDTENonDealTRX_SESS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_SESS'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwDTENonDealTRX_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_TYPE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwDTENonDealBRK_COD2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BRK_COD2'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwDTENonDealINV_TYP2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INV_TYP2'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwDTENonDealBRK_COD1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BRK_COD1'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwDTENonDealINV_TYP1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INV_TYP1'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwDTENonDealSTK_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwDTENonDealSTK_VOLM: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_VOLM'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwDTENonDealSTK_PRIC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STK_PRIC'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwDTENonDealTRX_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_DATE'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwDTENonDealTRX_ORD2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_ORD2'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwDTENonDealTRX_ORD1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_ORD1'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwDTENonDealTRX_REF2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_REF2'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwDTENonDealTRX_REF1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_REF1'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwDTENonDealTRX_KOPUR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_KOPUR'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwDTENonDealTRX_TIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_TIME'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwDTENonDealTRX_USER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRX_USER'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwDTENonDealTRADING_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADING_ID'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwDTENonDealMODDA: TcxGridDBBandedColumn
        Caption = 'Modification Date'
        DataBinding.FieldName = 'MODDA'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwDTENonDealMODUI: TcxGridDBBandedColumn
        Caption = 'Modification User'
        DataBinding.FieldName = 'MODUI'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gvwDTENonDeal
    end
  end
  object spMain: TcxSplitter [3]
    Left = 0
    Top = 296
    Width = 1217
    Height = 8
    HotZoneClassName = 'TcxSimpleStyle'
    AlignSplitter = salBottom
    Control = grdDTENonDeal
  end
  inherited popDocking: TPopupMenu
    Left = 328
    Top = 336
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclDTE
    Left = 328
    Top = 272
  end
  object aclDTE: TActionList
    Left = 416
    Top = 216
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actImportDTE: TNAction
      Category = 'NActions'
      Caption = 'Import DTE'
      OnExecute = actImportDTEExecute
      OnUpdate = actImportDTEUpdate
      CheckPermission = False
    end
    object actGenerateDealTicket: TNAction
      Category = 'NActions'
      Caption = 'Generate Deal Ticket'
      OnExecute = actGenerateDealTicketExecute
      OnUpdate = actGenerateDealTicketUpdate
      CheckPermission = False
    end
    object actImportDTE2: TNAction
      Category = 'NActions'
      Caption = 'Import DTE'
      OnExecute = actImportDTE2Execute
      CheckPermission = False
    end
    object actUpdateDealTicketExecutionManual: TNAction
      Category = 'NActions'
      Caption = 'Update Deal Ticket Execution Manual'
      OnExecute = actUpdateDealTicketExecutionManualExecute
      CheckPermission = False
    end
  end
  object cdsDTE: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRX_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDTE'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 128
    Top = 160
    object cdsDTEDTEID: TLargeintField
      FieldName = 'DTEID'
      ReadOnly = True
    end
    object cdsDTETRX_CODE: TIntegerField
      FieldName = 'TRX_CODE'
    end
    object cdsDTETRX_POST: TSmallintField
      FieldName = 'TRX_POST'
    end
    object cdsDTETRX_NOTE: TStringField
      FieldName = 'TRX_NOTE'
      Size = 30
    end
    object cdsDTETRX_SESS: TLargeintField
      FieldName = 'TRX_SESS'
    end
    object cdsDTETRX_TYPE: TStringField
      FieldName = 'TRX_TYPE'
      Size = 2
    end
    object cdsDTEBRK_COD2: TStringField
      FieldName = 'BRK_COD2'
      Size = 5
    end
    object cdsDTEINV_TYP2: TStringField
      FieldName = 'INV_TYP2'
      Size = 1
    end
    object cdsDTEBRK_COD1: TStringField
      FieldName = 'BRK_COD1'
      Size = 5
    end
    object cdsDTEINV_TYP1: TStringField
      FieldName = 'INV_TYP1'
      Size = 1
    end
    object cdsDTESTK_CODE: TStringField
      FieldName = 'STK_CODE'
      Size = 15
    end
    object cdsDTESTK_VOLM: TLargeintField
      FieldName = 'STK_VOLM'
    end
    object cdsDTESTK_PRIC: TFloatField
      FieldName = 'STK_PRIC'
    end
    object cdsDTETRX_DATE: TDateField
      FieldName = 'TRX_DATE'
    end
    object cdsDTETRX_ORD2: TIntegerField
      FieldName = 'TRX_ORD2'
    end
    object cdsDTETRX_ORD1: TIntegerField
      FieldName = 'TRX_ORD1'
    end
    object cdsDTETRX_REF2: TStringField
      FieldName = 'TRX_REF2'
    end
    object cdsDTETRX_REF1: TStringField
      FieldName = 'TRX_REF1'
    end
    object cdsDTETRX_KOPUR: TFloatField
      FieldName = 'TRX_KOPUR'
    end
    object cdsDTETRX_TIME: TStringField
      FieldName = 'TRX_TIME'
      Size = 8
    end
    object cdsDTETRX_USER: TStringField
      FieldName = 'TRX_USER'
      Size = 10
    end
    object cdsDTETRADING_ID: TStringField
      FieldName = 'TRADING_ID'
      Size = 10
    end
    object cdsDTEMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDTEMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
  end
  object dsDTE: TDataSource
    DataSet = cdsDTE
    Left = 128
    Top = 216
  end
  object popDTE: TPopupMenu
    Left = 208
    Top = 160
    object ImportDTE1: TMenuItem
      Action = actImportDTE2
    end
    object GenerateDealTicket1: TMenuItem
      Action = actUpdateDealTicketExecutionManual
      Visible = False
    end
  end
  object dbfDTE: TDbf
    FilePath = 'D:\Works\BackOffice\Upload Files - testing\DTE\'
    IndexDefs = <>
    TableName = 'DTBBB260714.DBF'
    TableLevel = 3
    Left = 72
    Top = 160
    object dbfDTETRX_CODE: TIntegerField
      FieldName = 'TRX_CODE'
    end
    object dbfDTETRX_POST: TSmallintField
      FieldName = 'TRX_POST'
    end
    object dbfDTETRX_NOTE: TStringField
      FieldName = 'TRX_NOTE'
      Size = 40
    end
    object dbfDTETRX_SESS: TFloatField
      FieldName = 'TRX_SESS'
    end
    object dbfDTETRX_TYPE: TStringField
      FieldName = 'TRX_TYPE'
      Size = 2
    end
    object dbfDTEBRK_COD2: TStringField
      FieldName = 'BRK_COD2'
      Size = 5
    end
    object dbfDTEINV_TYP2: TStringField
      FieldName = 'INV_TYP2'
      Size = 1
    end
    object dbfDTEBRK_COD1: TStringField
      FieldName = 'BRK_COD1'
      Size = 5
    end
    object dbfDTEINV_TYP1: TStringField
      FieldName = 'INV_TYP1'
      Size = 1
    end
    object dbfDTESTK_CODE: TStringField
      FieldName = 'STK_CODE'
      Size = 15
    end
    object dbfDTESTK_VOLM: TFloatField
      FieldName = 'STK_VOLM'
    end
    object dbfDTESTK_PRIC: TFloatField
      FieldName = 'STK_PRIC'
    end
    object dbfDTETRX_DATE: TDateField
      FieldName = 'TRX_DATE'
    end
    object dbfDTETRX_ORD2: TFloatField
      FieldName = 'TRX_ORD2'
    end
    object dbfDTETRX_ORD1: TFloatField
      FieldName = 'TRX_ORD1'
    end
    object dbfDTETRX_REF2: TStringField
      FieldName = 'TRX_REF2'
    end
    object dbfDTETRX_REF1: TStringField
      FieldName = 'TRX_REF1'
    end
    object dbfDTETRX_KOPUR: TFloatField
      FieldName = 'TRX_KOPUR'
    end
    object dbfDTETRX_TIME: TStringField
      FieldName = 'TRX_TIME'
      Size = 8
    end
    object dbfDTETRX_USER: TStringField
      FieldName = 'TRX_USER'
      Size = 10
    end
    object dbfDTETRADING_ID: TStringField
      FieldName = 'TRADING_ID'
      Size = 6
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'DTE File|*.dbf'
    Left = 72
    Top = 216
  end
  object cdsDTENonDealTicket: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRX_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDTENonDealTicket'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 296
    Top = 160
    object cdsDTENonDealTicketDTEID: TLargeintField
      FieldName = 'DTEID'
      ReadOnly = True
      Required = True
    end
    object cdsDTENonDealTicketTRX_CODE: TIntegerField
      FieldName = 'TRX_CODE'
    end
    object cdsDTENonDealTicketTRX_POST: TSmallintField
      FieldName = 'TRX_POST'
    end
    object cdsDTENonDealTicketTRX_NOTE: TStringField
      FieldName = 'TRX_NOTE'
      Size = 30
    end
    object cdsDTENonDealTicketTRX_SESS: TLargeintField
      FieldName = 'TRX_SESS'
    end
    object cdsDTENonDealTicketTRX_TYPE: TStringField
      FieldName = 'TRX_TYPE'
      Size = 2
    end
    object cdsDTENonDealTicketBRK_COD2: TStringField
      FieldName = 'BRK_COD2'
      Size = 5
    end
    object cdsDTENonDealTicketINV_TYP2: TStringField
      FieldName = 'INV_TYP2'
      Size = 1
    end
    object cdsDTENonDealTicketBRK_COD1: TStringField
      FieldName = 'BRK_COD1'
      Size = 5
    end
    object cdsDTENonDealTicketINV_TYP1: TStringField
      FieldName = 'INV_TYP1'
      Size = 1
    end
    object cdsDTENonDealTicketSTK_CODE: TStringField
      FieldName = 'STK_CODE'
      Size = 7
    end
    object cdsDTENonDealTicketSTK_VOLM: TLargeintField
      FieldName = 'STK_VOLM'
    end
    object cdsDTENonDealTicketSTK_PRIC: TFloatField
      FieldName = 'STK_PRIC'
    end
    object cdsDTENonDealTicketTRX_DATE: TDateField
      FieldName = 'TRX_DATE'
    end
    object cdsDTENonDealTicketTRX_ORD2: TIntegerField
      FieldName = 'TRX_ORD2'
    end
    object cdsDTENonDealTicketTRX_ORD1: TIntegerField
      FieldName = 'TRX_ORD1'
    end
    object cdsDTENonDealTicketTRX_REF2: TStringField
      FieldName = 'TRX_REF2'
    end
    object cdsDTENonDealTicketTRX_REF1: TStringField
      FieldName = 'TRX_REF1'
    end
    object cdsDTENonDealTicketTRX_KOPUR: TFloatField
      FieldName = 'TRX_KOPUR'
    end
    object cdsDTENonDealTicketTRX_TIME: TStringField
      FieldName = 'TRX_TIME'
      Size = 8
    end
    object cdsDTENonDealTicketTRX_USER: TStringField
      FieldName = 'TRX_USER'
      Size = 10
    end
    object cdsDTENonDealTicketTRADING_ID: TStringField
      FieldName = 'TRADING_ID'
      Size = 10
    end
    object cdsDTENonDealTicketMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDTENonDealTicketMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
  end
  object dsDTENonDealTicket: TDataSource
    DataSet = cdsDTENonDealTicket
    Left = 296
    Top = 208
  end
  object cdsUploadDTE: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRX_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryUploadDTE'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 144
    Top = 368
    object cdsUploadDTEROWNO: TIntegerField
      FieldName = 'ROWNO'
    end
    object cdsUploadDTETRX_CODE: TIntegerField
      FieldName = 'TRX_CODE'
    end
    object cdsUploadDTETRX_POST: TSmallintField
      FieldName = 'TRX_POST'
    end
    object cdsUploadDTETRX_NOTE: TStringField
      FieldName = 'TRX_NOTE'
      Size = 30
    end
    object cdsUploadDTETRX_SESS: TLargeintField
      FieldName = 'TRX_SESS'
    end
    object cdsUploadDTETRX_TYPE: TStringField
      FieldName = 'TRX_TYPE'
      Size = 2
    end
    object cdsUploadDTEBRK_COD2: TStringField
      FieldName = 'BRK_COD2'
      Size = 5
    end
    object cdsUploadDTEINV_TYP2: TStringField
      FieldName = 'INV_TYP2'
      Size = 1
    end
    object cdsUploadDTEBRK_COD1: TStringField
      FieldName = 'BRK_COD1'
      Size = 5
    end
    object cdsUploadDTEINV_TYP1: TStringField
      FieldName = 'INV_TYP1'
      Size = 1
    end
    object cdsUploadDTESTK_CODE: TStringField
      FieldName = 'STK_CODE'
      Size = 7
    end
    object cdsUploadDTESTK_VOLM: TLargeintField
      FieldName = 'STK_VOLM'
    end
    object cdsUploadDTESTK_PRIC: TFloatField
      FieldName = 'STK_PRIC'
    end
    object cdsUploadDTETRX_DATE: TDateField
      FieldName = 'TRX_DATE'
    end
    object cdsUploadDTETRX_ORD2: TIntegerField
      FieldName = 'TRX_ORD2'
    end
    object cdsUploadDTETRX_ORD1: TIntegerField
      FieldName = 'TRX_ORD1'
    end
    object cdsUploadDTETRX_REF2: TStringField
      FieldName = 'TRX_REF2'
    end
    object cdsUploadDTETRX_REF1: TStringField
      FieldName = 'TRX_REF1'
    end
    object cdsUploadDTETRX_KOPUR: TFloatField
      FieldName = 'TRX_KOPUR'
    end
    object cdsUploadDTETRX_TIME: TStringField
      FieldName = 'TRX_TIME'
      Size = 8
    end
    object cdsUploadDTETRX_USER: TStringField
      FieldName = 'TRX_USER'
      Size = 10
    end
    object cdsUploadDTETRADING_ID: TStringField
      FieldName = 'TRADING_ID'
      Size = 10
    end
  end
end
