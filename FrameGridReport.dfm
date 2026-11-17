object frGridReport: TfrGridReport
  Left = 0
  Top = 0
  Width = 859
  Height = 564
  TabOrder = 0
  object gridReport: TcxGrid
    Left = 0
    Top = 100
    Width = 859
    Height = 464
    Align = alClient
    PopupMenu = popGrid
    TabOrder = 0
    object gvwReport: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSubject
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
    end
    object gridReportLevel1: TcxGridLevel
      GridView = gvwReport
    end
  end
  object lcFilter: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 859
    Height = 100
    Align = alTop
    TabOrder = 1
    AutoSize = True
    object dt1: TcxDateEdit
      Tag = -1
      Left = 97
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    object dt2: TcxDateEdit
      Tag = -1
      Left = 232
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 120
    end
    object btnView: TcxButton
      Left = 358
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 2
    end
    object edAccCode1: TcxButtonEdit
      Tag = -1
      Left = 97
      Top = 41
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
      TextHint = '-1'
      Width = 120
    end
    object edAccName1: TcxTextEdit
      Tag = -1
      Left = 232
      Top = 41
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 301
    end
    object edAccCode2: TcxButtonEdit
      Tag = -1
      Left = 10000
      Top = 10000
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edAccCode2PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      TextHint = '-1'
      Visible = False
      Width = 120
    end
    object edAccName2: TcxTextEdit
      Tag = -1
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Width = 301
    end
    object cbSales1: TcxLookupComboBox
      Tag = -1
      Left = 97
      Top = 68
      RepositoryItem = dmGlobal.luSales
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 275
    end
    object cbSales2: TcxLookupComboBox
      Tag = -1
      Left = 408
      Top = 68
      RepositoryItem = dmGlobal.luSales
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 275
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lcDate1: TdxLayoutItem
      Parent = lcFilterGroup0
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Transaction Date'
      Control = dt1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcDate2: TdxLayoutItem
      Parent = lcFilterGroup0
      CaptionOptions.Text = '-'
      Control = dt2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcFilterGroup0: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcViewData: TdxLayoutItem
      Parent = lcFilterGroup0
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = btnView
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcAccCode1: TdxLayoutItem
      Parent = lcFilterGroup1
      CaptionOptions.Text = 'Account'
      Control = edAccCode1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcAccName1: TdxLayoutItem
      Parent = lcFilterGroup1
      CaptionOptions.Text = '-'
      Control = edAccName1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 301
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcFilterGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcAccCode2: TdxLayoutItem
      Parent = lcFilterGroup2
      CaptionOptions.Text = 'Account'
      Control = edAccCode2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcAccName2: TdxLayoutItem
      Parent = lcFilterGroup2
      CaptionOptions.Text = '-'
      Control = edAccName2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 301
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcFilterGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object lcSales1: TdxLayoutItem
      Parent = lcFilterGroup3
      CaptionOptions.Text = 'Sales'
      Control = cbSales1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 275
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcSales2: TdxLayoutItem
      Parent = lcFilterGroup3
      CaptionOptions.Text = 'Sales'
      Control = cbSales2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 275
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcFilterGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
  end
  object cdsSubject: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGlobal'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsSubjectAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 448
    Top = 176
  end
  object dsSubject: TDataSource
    DataSet = cdsSubject
    Left = 360
    Top = 176
  end
  object aclReport: TActionList
    Left = 360
    Top = 128
    object actCustomizeColumn: TNAction
      Category = 'NActions'
      Caption = 'Customize Column'
      OnExecute = actCustomizeColumnExecute
      CheckPermission = False
    end
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actExportToExcel: TNAction
      Category = 'NActions'
      Caption = 'Export To Excel'
      OnExecute = actExportToExcelExecute
      CheckPermission = False
    end
    object NAction3: TNAction
      Category = 'NActions'
      Caption = 'NAction3'
      CheckPermission = False
    end
    object NAction4: TNAction
      Category = 'NActions'
      Caption = 'NAction4'
      CheckPermission = False
    end
    object NAction5: TNAction
      Category = 'NActions'
      Caption = 'NAction5'
      CheckPermission = False
    end
  end
  object popGrid: TPopupMenu
    Left = 448
    Top = 128
    object ViewData1: TMenuItem
      Action = actViewData
    end
    object CustomizeColumn1: TMenuItem
      Action = actCustomizeColumn
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExportToExcel1: TMenuItem
      Action = actExportToExcel
    end
  end
  object PropStore: TcxPropertiesStore
    Active = False
    Components = <
      item
        Component = cdsSubject
        Properties.Strings = (
          'Aggregates'
          'AggregatesActive'
          'AutoCalcFields'
          'AutoSequence'
          'AutoSequenceField'
          'AutoUserAuditTrail'
          'CommandText'
          'ConnectionBroker'
          'Constraints'
          'Control4Eyes'
          'DataSetField'
          'DisableStringTrim'
          'FetchOnDemand'
          'FieldDefs'
          'FileName'
          'Filter'
          'Filtered'
          'FilterOptions'
          'IndexDefs'
          'IndexFieldNames'
          'IndexName'
          'MasterFields'
          'MasterSource'
          'Name'
          'ObjectView'
          'PacketRecords'
          'Params'
          'PrimaryKeyFields'
          'StoreDefs'
          'TableName'
          'Tag')
      end
      item
        Component = dt1
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'BiDiMode'
          'Constraints'
          'Cursor'
          'CustomHint'
          'DragCursor'
          'DragKind'
          'DragMode'
          'EditValue'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Margins'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCustomHint'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'TextHint'
          'Top'
          'Touch'
          'Visible'
          'Width')
      end
      item
        Component = dt2
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'BiDiMode'
          'Constraints'
          'Cursor'
          'CustomHint'
          'DragCursor'
          'DragKind'
          'DragMode'
          'EditValue'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Margins'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCustomHint'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'TextHint'
          'Top'
          'Touch'
          'Visible'
          'Width')
      end
      item
        Component = gvwReport
        Properties.Strings = (
          'BackgroundBitmaps'
          'Bands'
          'DataController'
          'DateTimeHandling'
          'DragMode'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FilterBox'
          'Filtering'
          'FilterRow'
          'Images'
          'Name'
          'Navigator'
          'NavigatorButtons'
          'NewItemRow'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsData'
          'OptionsSelection'
          'OptionsView'
          'PopupMenu'
          'Preview'
          'Styles'
          'Synchronization'
          'Tag')
      end
      item
        Component = lcFilter
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'Anchors'
          'AutoContentSizes'
          'AutoControlAlignment'
          'AutoControlTabOrders'
          'AutoSize'
          'BevelEdges'
          'BevelInner'
          'BevelKind'
          'BevelOuter'
          'BevelWidth'
          'BorderWidth'
          'Constraints'
          'Cursor'
          'CustomHint'
          'CustomizeFormTabbedView'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FocusOnClick'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HighlightRoot'
          'Hint'
          'IniFileName'
          'LayoutLookAndFeel'
          'Left'
          'LookAndFeel'
          'Margins'
          'MenuItems'
          'Name'
          'OptionsImage'
          'OptionsItem'
          'OptionsStoring'
          'ParentBackground'
          'ParentCustomHint'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'RedrawOnResize'
          'RegistryPath'
          'ShowDesignSelectors'
          'ShowHint'
          'StoreInIniFile'
          'StoreInRegistry'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Touch'
          'Visible'
          'Width')
      end>
    StorageName = 'PropStore'
    StorageType = stStream
    Left = 528
    Top = 128
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'Excel File|*.xls'
    Left = 528
    Top = 176
  end
  object cdsReportGrid: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORT_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryReportGrid'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 448
    Top = 224
    object cdsReportGridREPORT_ID: TIntegerField
      FieldName = 'REPORT_ID'
      Required = True
    end
    object cdsReportGridREPORT_CODE: TStringField
      FieldName = 'REPORT_CODE'
      Required = True
      Size = 10
    end
    object cdsReportGridDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 100
    end
    object cdsReportGridCATEGORY_ID: TIntegerField
      FieldName = 'CATEGORY_ID'
      Required = True
    end
    object cdsReportGridSQL: TWideMemoField
      FieldName = 'SQL'
      Required = True
      BlobType = ftWideMemo
    end
    object cdsReportGridREPORT_CONFIG: TWideMemoField
      FieldName = 'REPORT_CONFIG'
      Required = True
      BlobType = ftWideMemo
    end
    object cdsReportGridFILTER_CONFIG: TWideMemoField
      FieldName = 'FILTER_CONFIG'
      BlobType = ftWideMemo
    end
    object cdsReportGridMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsReportGridMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsReportGridAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsReportGridAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsReportGridUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsReportGridUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsReportGridNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsReportGridISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsReportGridID: TLargeintField
      FieldName = 'ID'
    end
  end
end
