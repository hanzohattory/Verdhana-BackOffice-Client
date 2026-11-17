inherited frmTodoList: TfrmTodoList
  Caption = 'Todo List'
  ClientWidth = 930
  ExplicitWidth = 930
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    Width = 930
    ExplicitWidth = 930
    inherited gvwBrowse: TcxGridDBBandedTableView
      object gvwBrowseTransactionTypeCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TransactionTypeCode'
        Width = 117
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBrowseTransactionTypeName: TcxGridDBBandedColumn
        Caption = 'Transaction Type Name'
        DataBinding.FieldName = 'TransactionTypeName'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBrowseOpenStatus: TcxGridDBBandedColumn
        Caption = 'Open Status'
        DataBinding.FieldName = 'OpenStatus'
        OnCustomDrawCell = gvwBrowseOpenStatusCustomDrawCell
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBrowseClosedStatus: TcxGridDBBandedColumn
        Caption = 'Closed Status'
        DataBinding.FieldName = 'ClosedStatus'
        OnCustomDrawCell = gvwBrowseClosedStatusCustomDrawCell
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBrowseCanceledStatus: TcxGridDBBandedColumn
        Caption = 'Canceled Status'
        DataBinding.FieldName = 'CanceledStatus'
        OnCustomDrawCell = gvwBrowseCanceledStatusCustomDrawCell
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBrowseReversedStatus: TcxGridDBBandedColumn
        Caption = 'Reversed Status'
        DataBinding.FieldName = 'ReversedStatus'
        OnCustomDrawCell = gvwBrowseReversedStatusCustomDrawCell
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBrowseActionForm: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ActionForm'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarAdmin
    Actions = <
      item
        ActionName = 'actInsert'
      end
      item
        ActionName = 'actDelete'
      end
      item
        ActionName = 'actEdit'
      end
      item
        ActionName = 'actPost'
      end
      item
        ActionName = 'actcancel'
      end
      item
        ActionName = 'actRefresh'
        Permission = 'Todo List'
      end>
  end
  inherited aclEditor: TActionList
    inherited actInsert: TNDataSetInsert
      Visible = False
    end
    inherited actDelete: TNDataSetDelete
      Visible = False
    end
    inherited actEdit: TNDataSetEdit
      Visible = False
    end
    inherited actRefresh: TNDataSetRefresh [8]
      OnExecute = actRefreshExecute
    end
    inherited actcancel: TNDataSetCancel [9]
    end
    object actRefrez: TNAction
      Category = 'NActions'
      Caption = 'Refresh'
      ImageIndex = 7
      CheckPermission = False
    end
  end
  inherited DatasetContainer: TNSimpleContainer
    Dataset = cdsTodoList
  end
  inherited dsBrowse: TDataSource
    DataSet = cdsTodoList
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
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    object BarMBrowseBar2: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 26
      DockingStyle = dsTop
      FloatLeft = 942
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = False
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Action = actRefrez
      Category = 0
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
  end
  object cdsTodoList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMaster_qryToDoList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 16
    Top = 160
    object cdsTodoListTransactionTypeCode: TStringField
      DisplayLabel = 'Transaction Type Code'
      FieldName = 'TransactionTypeCode'
      Required = True
      Size = 2
    end
    object cdsTodoListTransactionTypeName: TStringField
      FieldName = 'TransactionTypeName'
      Size = 150
    end
    object cdsTodoListOpenStatus: TIntegerField
      FieldName = 'OpenStatus'
      ReadOnly = True
      Required = True
    end
    object cdsTodoListClosedStatus: TIntegerField
      FieldName = 'ClosedStatus'
      ReadOnly = True
      Required = True
    end
    object cdsTodoListCanceledStatus: TIntegerField
      FieldName = 'CanceledStatus'
      ReadOnly = True
      Required = True
    end
    object cdsTodoListReversedStatus: TIntegerField
      FieldName = 'ReversedStatus'
      ReadOnly = True
      Required = True
    end
    object cdsTodoListActionForm: TStringField
      FieldName = 'ActionForm'
      Size = 225
    end
  end
end
