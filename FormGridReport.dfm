inherited frmGridReport: TfrmGridReport
  Caption = 'Grid Report'
  ClientHeight = 537
  ClientWidth = 796
  ExplicitWidth = 796
  ExplicitHeight = 537
  PixelsPerInch = 96
  TextHeight = 13
  inline frGridReport: TfrGridReport [0]
    Left = 0
    Top = 0
    Width = 796
    Height = 537
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 796
    ExplicitHeight = 537
    inherited gridReport: TcxGrid
      Width = 796
      Height = 437
      ExplicitWidth = 796
      ExplicitHeight = 437
    end
    inherited lcFilter: TdxLayoutControl
      Width = 796
      ExplicitWidth = 796
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
  end
  inherited popDocking: TPopupMenu [1]
  end
  inherited ActionPermission: TNActionPermission
    ActionList = frGridReport.aclReport
  end
end
