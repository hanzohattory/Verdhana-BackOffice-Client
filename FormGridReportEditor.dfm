inherited frmGridReportEditor: TfrmGridReportEditor
  BorderStyle = bsSizeable
  Caption = 'Grid Report Editor'
  ClientHeight = 575
  ClientWidth = 1059
  KeyPreview = True
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  ExplicitWidth = 1067
  ExplicitHeight = 606
  PixelsPerInch = 96
  TextHeight = 13
  object nbReportDesigner: TdxNavBar [0]
    Left = 0
    Top = 96
    Width = 300
    Height = 479
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 0
    View = 17
    ViewStyle.ColorSchemeName = 'Blue'
    OptionsBehavior.NavigationPane.AdjustWidthByPopup = True
    OptionsBehavior.NavigationPane.AllowCustomizing = False
    OptionsBehavior.NavigationPane.Collapsible = True
    OptionsBehavior.NavigationPane.ShowOverflowPanelHints = False
    OptionsView.Common.ShowGroupCaptions = False
    OptionsView.NavigationPane.ShowOverflowPanel = False
    object nbObjectInspector: TdxNavBarGroup
      Caption = 'Object Inspector'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsGroupControl.ShowControl = True
      OptionsGroupControl.UseControl = True
      Links = <>
    end
    object nbObjectInspectorControl: TdxNavBarGroupControl
      Left = 1
      Top = 28
      Width = 298
      Height = 450
      Caption = 'nbObjectInspectorControl'
      TabOrder = 1
      GroupIndex = 0
      OriginalHeight = 41
      object cxRTTIInspector: TcxRTTIInspector
        Left = 0
        Top = 0
        Width = 298
        Height = 450
        HelpType = htKeyword
        Align = alClient
        OptionsView.RowHeaderMinWidth = 120
        OptionsView.RowHeaderWidth = 120
        TabOrder = 0
        Version = 1
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 25
    Width = 1059
    Height = 71
    Align = alTop
    TabOrder = 1
    AutoSize = True
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 76
      Top = 10
      DataBinding.DataField = 'REPORT_CODE'
      DataBinding.DataSource = dsReportGrid
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 76
      Top = 37
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = dsReportGrid
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 253
      Top = 10
      RepositoryItem = dmGlobal.luReportCategory
      DataBinding.DataField = 'CATEGORY_ID'
      DataBinding.DataSource = dsReportGrid
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 200
    end
    object cxButton3: TcxButton
      Left = 739
      Top = 10
      Width = 75
      Height = 25
      Action = actSaveReport
      TabOrder = 4
    end
    object cxDBMemo1: TcxDBMemo
      Left = 483
      Top = 10
      DataBinding.DataField = 'SQL'
      DataBinding.DataSource = dsReportGrid
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Height = 48
      Width = 250
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Report Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Category'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      Control = cxButton3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'SQL'
      Parent = dxLayoutControl1Group_Root
      Control = cxDBMemo1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inline frGridReport: TfrGridReport [2]
    Left = 300
    Top = 96
    Width = 759
    Height = 479
    Align = alClient
    TabOrder = 6
    ExplicitLeft = 300
    ExplicitTop = 96
    ExplicitWidth = 759
    ExplicitHeight = 479
    inherited gridReport: TcxGrid
      Width = 759
      Height = 379
      ExplicitWidth = 759
      ExplicitHeight = 379
    end
    inherited lcFilter: TdxLayoutControl
      Width = 759
      ExplicitWidth = 759
      inherited dxLayoutGroup1: TdxLayoutGroup
        Index = -1
      end
      inherited lcDate1: TdxLayoutItem
        Index = 0
      end
      inherited lcDate2: TdxLayoutItem
        Index = 1
      end
      inherited lcFilterGroup0: TdxLayoutGroup
        Index = 0
      end
      inherited lcViewData: TdxLayoutItem
        Index = 2
      end
      inherited lcAccCode1: TdxLayoutItem
        Index = 0
      end
      inherited lcAccName1: TdxLayoutItem
        Index = 1
      end
      inherited lcFilterGroup1: TdxLayoutGroup
        Index = 1
      end
      inherited lcAccCode2: TdxLayoutItem
        Index = 0
      end
      inherited lcAccName2: TdxLayoutItem
        Index = 1
      end
      inherited lcFilterGroup2: TdxLayoutGroup
        Index = -1
      end
      inherited lcSales1: TdxLayoutItem
        Index = 0
      end
      inherited lcSales2: TdxLayoutItem
        Index = 1
      end
      inherited lcFilterGroup3: TdxLayoutGroup
        Index = 2
      end
    end
    inherited aclReport: TActionList
      inherited actViewData: TNAction
        OnExecute = frGridReportactViewDataExecute
      end
    end
    inherited PropStore: TcxPropertiesStore
      Components = <
        item
          Component = frGridReport.cdsSubject
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
          Component = frGridReport.dt1
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
          Component = frGridReport.dt2
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
          Component = frGridReport.gvwReport
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
          Component = frGridReport.lcFilter
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
    end
    inherited cdsReportGrid: TNClientDataset
      inherited cdsReportGridSQL: TWideMemoField
        OnChange = frGridReportcdsReportGridSQLChange
      end
    end
  end
  inherited popDocking: TPopupMenu [3]
    Left = 240
    Top = 104
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclReport
    Left = 136
    Top = 104
  end
  object aclReport: TActionList
    Left = 136
    Top = 152
    object actSetDataSetProperty: TNAction
      Category = 'NActions'
      Caption = 'DataSet'
      OnExecute = actSetDataSetPropertyExecute
      CheckPermission = False
    end
    object actFetchDataSet: TNAction
      Category = 'NActions'
      Caption = 'Fetch DataSet'
      OnExecute = actFetchDataSetExecute
      CheckPermission = False
    end
    object actSetGridProperty: TNAction
      Category = 'NActions'
      Caption = 'Grid'
      OnExecute = actSetGridPropertyExecute
      CheckPermission = False
    end
    object actSetDatasetFieldsProperty: TNAction
      Category = 'NActions'
      Caption = 'Dataset Field'
      OnExecute = actSetDatasetFieldsPropertyExecute
      CheckPermission = False
    end
    object actCustomizeColumn: TNAction
      Category = 'NActions'
      Caption = 'Customize Column'
      OnExecute = actCustomizeColumnExecute
      CheckPermission = False
    end
    object actSetGridColumnProperty: TNAction
      Category = 'NActions'
      Caption = 'Grid Column'
      OnExecute = actSetGridColumnPropertyExecute
      CheckPermission = False
    end
    object actFilterCustomization: TNAction
      Category = 'NActions'
      Caption = 'Filter Customization'
      OnExecute = actFilterCustomizationExecute
      CheckPermission = False
    end
    object actSaveReport: TNAction
      Category = 'NActions'
      Caption = 'Save Report'
      OnExecute = actSaveReportExecute
      CheckPermission = False
    end
    object actFilterLayout: TNAction
      Category = 'NActions'
      Caption = 'Filter Layout'
      OnExecute = actFilterLayoutExecute
      CheckPermission = False
    end
    object actNewReport: TNAction
      Category = 'NActions'
      Caption = 'New Report'
      CheckPermission = False
    end
    object actDuplicateReport: TNAction
      Category = 'NActions'
      Caption = 'Duplicate Report'
      CheckPermission = False
    end
    object actExit: TNAction
      Category = 'NActions'
      Caption = 'Exit'
      OnExecute = actExitExecute
      CheckPermission = False
    end
    object NAction4: TNAction
      Category = 'NActions'
      Caption = 'NAction4'
      CheckPermission = False
    end
  end
  object dsReportGrid: TDataSource
    DataSet = frGridReport.cdsReportGrid
    Left = 32
    Top = 152
  end
  object imlBrowse: TImageList
    Left = 240
    Top = 200
    Bitmap = {
      494C010103002700BC0210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000387D99FF347A
      98FF317896FF2E7694FF2C7492FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F2A36FF0F2A36FF0F2A
      36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A
      36FF0F2A36FF0F2A36FF0F2A36FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003E809CFF6BBFDEFF68BF
      DCFF67BFDBFF6BC1DDFF2D7593FF286681FF286882FF2E7694FF2D7694FF2D76
      93FF2C7593FF2C7593FF0000000000000000000000000F2A36FFA8FFFFFF2475
      ABFF2475ABFF9CFFFFFF9CFFFFFF9CFFFFFF9CFEFEFF9CE6E9FF9CBFC7FF9CE6
      E9FF9CFFFFFF9CFFFFFF0F2A36FF000000000000000000000000000000000000
      0000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
      3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000040819DFF7DCEE5FF79CC
      E4FF78CAE3FF73C7E1FF2E7694FF3C8199FF4B98B1FF67C0DFFF67C0DFFF67C0
      DFFF66BEDEFF62B5D8FF357B98FF00000000000000000F2A36FFB1FFFFFFABFF
      FFFFA5FFFFFFA1FFFFFF9DFFFFFF9CFEFEFF9CEFF1FF9CA9B4FF9C9DA9FF9CC5
      CCFF9CF3F4FF9CFFFFFF0F2A36FF000000000000000000000000000000000000
      000000000000B3783EFFB3783EFFB3783EFFFFFFFFFFFFFFFFFFFFFFFFFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000041829EFF81D1E6FF7DCE
      E6FF7BCDE4FF77C9E2FF2F7694FF41829AFF4B97B0FF6FBFDFFF72BFDFFF67C0
      DFFFED9F6AFF63B6D8FF357B98FF00000000000000000F2A36FFBBFFFFFF2475
      ABFF2475ABFF2475ABFF2475ABFF2475ABFF9CDDE1FF9CA0ACFF9CCED4FF9C9E
      AAFF9CADB7FF9CFFFFFF0F2A36FF000000000000000000000000000000000000
      000000000000B3783EFFB3783EFFB3783EFFFFFFFFFFFFFFFFFFFFFFFFFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042839EFF85D3E8FF80CE
      E7FF7DCEE6FF79CAE3FF307795FF43839AFF4F99B1FF6FBFDFFF73BFDFFF67C0
      DFFFED9F6AFF63B6D8FF357B98FF00000000000000000F2A36FFC5FFFFFFBEFF
      FFFFB7FFFFFFB0FFFFFFA9FFFFFFA4FFFFFFA0F5F6FF9CC7CEFF9C99A6FF9CC1
      C9FF9BF3F5FF9CFDFDFF0F2A36FF000000000000000000000000000000000000
      000000000000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000044849FFF8BD9EBFF87D7
      EAFF84D4E8FF7DCDE6FF317896FF46849BFF539BB2FF71C0DFFF74BFDFFF68C0
      DFFFFFFFFFFF64B6D9FF357B98FF00000000000000000F2A36FFD0FFFFFF2475
      ABFF2475ABFF2475ABFF2475ABFF2475ABFF2475ABFF2475ABFF2475ABFF9CF2
      F4FF9CFAFBFF9CFFFFFF0F2A36FF000000000000000000000000000000000000
      000000000000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004585A0FF91E0F3FF8BDB
      EEFF86D4EAFF81D1E8FF337996FF49859CFF599DB3FF72C1E0FF74C1E1FF71C0
      DFFFFFFFFFFF65B7D9FF357B98FF00000000000000000F2A36FFDAFFFFFFD3FF
      FFFFCBFFFFFFC4FFFFFFBCFFFFFFB6FFFFFFAFFFFFFFA8FFFFFFA3FFFFFF9FFF
      FFFF9CFFFFFF9CFFFFFF0F2A36FF0000000000000000000000000000000084AC
      4AFF84AC4AFFFCFAF808FFFFFFFFFFFFFFFFB47A41FFFFFFFFFFFFFFFFFFB378
      3EFFFFFFFFFFFFFFFFFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004686A0FF98E5F3FF94E8
      F9FF8DDEF2FF8AD7EAFF347997FF4C879DFF5EA0B5FF76C5E5FF76C6E6FF6FC4
      E1FF65B6D8FF65B7D9FF357B98FF00000000000000000F2A36FFE4FFFFFFDDFF
      FFFFD6FFFFFFCFFFFFFFC7FFFFFFBFFFFFFFB8FFFFFFB1FFFFFFABFFFFFFA5FF
      FFFFA0FFFFFF9DFFFFFF0F2A36FF000000000000000000000000000000000000
      000085AD4BFF85AD4BFFFCFAF808B3783EFFB3783EFFB3783EFFB3783EFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004786A0FF98E7FAFF98EC
      FCFF93E5F8FF8EDCF0FF347A98FF5492A9FF68ABC3FF80CEEBFF83CEEBFF87CF
      EBFF7CC7E7FF337996FF0000000000000000000000000F2A36FFEBFFFFFF2475
      ABFF2475ABFF2475ABFF2475ABFF2475ABFF2475ABFF2475ABFF2475ABFF2475
      ABFF2475ABFFA3FFFFFF0F2A36FF0000000084AC4AFF84AC4AFF84AC4AFF85AD
      4BFF85AD4BFF85AD4BFF83AA4AFFFFFFFF5DB47A41FFFFFFFFFFFFFFFFFFB378
      3EFFFFFFFFFFFFFFFFFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004887A1FF99EDFDFF93E6
      FBFF92E6FBFF93E4F6FF367B98FF5492A9FF68ABC3FF80CEEBFF83CEEBFF88D4
      F0FF357B98FF000000000000000000000000000000000F2A36FFF3FFFFFFEDFF
      FFFFE8FFFFFFE2FFFFFFDCFFFFFFD4FFFFFFCDFFFFFFC6FFFFFFBFFFFFFFB7FF
      FFFFB0FFFFFFA9FFFFFF0F2A36FF000000000000000000000000000000000000
      000085AD4BFF85AD4BFFFFFFFF0AFFFFFFFFB47A41FFFFFFFFFFFFFFFFFFB378
      3EFFFFFFFFFFFFFFFFFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004987A2FF9CF2FEFF9DF1
      FDFF97EDFEFF95E6FBFF387C99FF5792AAFF6EAEC3FF85D6F5FF88D7F2FF88D8
      F4FF3B7D99FF000000000000000000000000000000000F2A36FFF5FFFFFFF4FF
      FFFFF0FFFFFFEAFFFFFFE5FFFFFFDEFFFFFFD7FFFFFFD0FFFFFFC8FFFFFFC1FF
      FFFFBAFFFFFFB3FFFFFF0F2A36FF0000000000000000000000000000000085AD
      4BFF85AD4BFFFCFAF809B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A88A2FF9DF3FDFF9AF2
      FEFF99F1FEFF9DF1FCFF397D9AFF5893AAFF72B0C3FF92E2FAFF93E0F8FF8EE0
      F9FF357B98FF000000000000000000000000000000000F2A36FFF5FFFFFF1A8C
      FFFF1A8CFFFF1A8CFFFF1A8CFFFF1A8CFFFF1A8CFFFF1A8CFFFF1A8CFFFF1A8C
      FFFF1A8CFFFFBDFFFFFF0F2A36FF000000000000000000000000000000000000
      000000000000B3783EFFFFFFFFFFFFFFFFFFB47A41FFFFFFFFFFFFFFFFFFB378
      3EFFFFFFFFFFFFFFFFFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A88A2FF9AF3FEFF9BF2
      FEFF9DF2FDFF9EF2FCFF3B7E9BFF5994AAFF78B5C6FF96E3FBFF98E3FAFF92E2
      FAFF377C99FF000000000000000000000000000000000F2A36FFF5FFFFFFF5FF
      FFFFF5FFFFFFF5FFFFFFF3FFFFFFEFFFFFFFE9FFFFFFE4FFFFFF0F2A36FF0F2A
      36FF0F2A36FF0F2A36FF0F2A36FF000000000000000000000000000000000000
      000000000000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A88A2FF99F3FEFFA0F3
      FDFFA3EFF9FF4E8DA2FF3C7F9BFF629DB2FF99E0F6FF9FE6FBFF97E4FBFF8CDC
      FBFF387D99FF000000000000000000000000000000000F2A36FFF5FFFFFFF5FF
      FFFFF5FFFFFFF5FFFFFF1A8CFFFF1A8CFFFF1A8CFFFFECFFFFFF0F2A36FF98FA
      FEFFE5FBFFFF0F2A36FF00000000000000000000000000000000000000000000
      000000000000B3783EFFFFFFFFFFFFFFFFFFB47A41FFFFFFFFFFFFFFFFFFB378
      3EFFFFFFFFFFFFFFFFFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A88A2FF98EEFBFF4B89
      A2FF4A88A1FF95E2FAFF94E1F9FF98E4FBFF99E5FCFF99E5FCFF95E4FCFF92E2
      FBFF397E9AFF000000000000000000000000000000000F2A36FFF5FFFFFFF5FF
      FFFFF5FFFFFFF5FFFFFFF5FFFFFFF5FFFFFFF5FFFFFFF2FFFFFF0F2A36FFF4FE
      FEFF0F2A36FF0000000000000000000000000000000000000000000000000000
      000000000000B3783EFFFFFFFFFFFFFFFFFFB47A41FFFFFFFFFFFFFFFFFFB378
      3EFFFFFFFFFFFFFFFFFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A88A2FF357B98FF4887
      A1FF4786A0FF4585A0FF44849FFF43839EFF41829EFF40819DFF3E809CFF3C7F
      9BFF3B7E9BFF000000000000000000000000000000000F2A36FF0F2A36FF0F2A
      36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A
      36FF000000000000000000000000000000000000000000000000000000000000
      000000000000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00C1FF8001FFFF000080038001F0000000
      80018001F801000080018001F801000080018001F801000080018001F8010000
      80018001E001000080018001F0010000800380010001000080078001F0010000
      80078001E001000080078001F801000080078001F801000080078003F8010000
      80078007F80100008007800FF801000000000000000000000000000000000000
      000000000000}
  end
  object BarMBrowse: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = imlBrowse
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 240
    Top = 152
    DockControlHeights = (
      0
      0
      25
      0)
    object BarMBrowseBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Browser'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 364
      FloatTop = 288
      FloatClientWidth = 92
      FloatClientHeight = 78
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuFile'
        end
        item
          Visible = True
          ItemName = 'mnuEdit'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Browser'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object mnuFile: TdxBarSubItem
      Caption = 'File'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end>
    end
    object mnuEdit: TdxBarSubItem
      Caption = 'Edit'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnDataSet'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end>
    end
    object btnDataSet: TdxBarButton
      Action = actSetDataSetProperty
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = actSetDatasetFieldsProperty
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actSetGridProperty
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actSetGridColumnProperty
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actFilterLayout
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actFilterCustomization
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actNewReport
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actDuplicateReport
      Category = 0
    end
    object dxBarSeparator1: TdxBarSeparator
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton8: TdxBarButton
      Action = actExit
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actSaveReport
      Category = 0
    end
  end
end
