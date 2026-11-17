inherited frmCustHaircutList: TfrmCustHaircutList
  Caption = 'Stock Haircut Import'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 78
    Height = 390
    ExplicitTop = 78
    ExplicitHeight = 390
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUMENT_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUMENT_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterLOCALCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LOCALCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterMARKETCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARKETCODE'
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterINSTRUMENT_TYPE_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUMENT_TYPE_CODE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Stock'
            ImageIndex = 0
            Value = 'S'
          end
          item
            Description = 'Warrant'
            Value = 'W'
          end
          item
            Description = 'Right'
            Value = 'R'
          end
          item
            Description = 'Bonds'
            Value = 'B'
          end>
        RepositoryItem = dmGlobal.luInstrumentType
        Width = 87
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterHCUTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HCUTDATE'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterHCUTTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HCUTTYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'KPEI'
            ImageIndex = 0
            Value = 'K'
          end
          item
            Description = 'MKDB'
            Value = 'M'
          end>
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterHCUTPRICE: TcxGridDBBandedColumn
        Caption = 'Haircut (%)'
        DataBinding.FieldName = 'HCUTPRICE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actView'
        Permission = '[Customer Haircut].View Approval Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Customer Haircut].View'
      end
      item
        ActionName = 'actNew'
        Permission = '[Customer Haircut].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Customer Haircut].Edit'
      end
      item
        ActionName = 'actDelete'
        Permission = '[Customer Haircut].Delete'
      end
      item
        ActionName = 'actRefresh'
        Permission = '[Customer Haircut].Refresh'
      end
      item
        ActionName = 'actCancel'
        Permission = '[Customer Haircut].Cancel'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Customer Haircut].Copy From Selected Data'
      end
      item
        ActionName = 'actApprove'
        Permission = '[Customer Haircut].Approve'
      end
      item
        ActionName = 'actReject'
        Permission = '[Customer Haircut].Reject'
      end>
    AssignedPermission = <
      item
        Name = '[Customer Haircut].View'
        Description = 'View Customer Haircut'
      end
      item
        Name = '[Customer Haircut].New'
        Description = 'New Customer Haircut'
      end
      item
        Name = '[Customer Haircut].Edit'
        Description = 'Edit Customer Haircut'
      end
      item
        Name = '[Customer Haircut].Refresh'
        Description = 'Refresh Customer Haircut'
      end
      item
        Name = '[Customer Haircut].Cancel'
        Description = 'Cancel Customer Haircut'
      end>
    Left = 293
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
  inherited popMaster: TPopupMenu
    object N5: TMenuItem
      Caption = '-'
    end
    object Uploadfromfile1: TMenuItem
      Action = actUploadFile
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsCustomerHaircustList
  end
  inherited aclEditor: TActionList
    object actUploadFile: TNAction
      Category = 'NActions'
      Caption = 'Upload from file'
      OnExecute = actUploadFileExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      78
      0)
    inherited BarMBrowseBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuInsert'
        end
        item
          Visible = True
          ItemName = 'mnuEdit'
        end
        item
          Visible = True
          ItemName = 'mnuDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuCustomFilter'
        end>
    end
    object BarMBrowseBar2: TdxBar [2]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Upload'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 52
      DockingStyle = dsTop
      FloatLeft = 933
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 313
          Visible = True
          ItemName = 'edFileNam'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 2
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object BarMBrowseBar4: TdxBar [3]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Search'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 26
      DockingStyle = dsTop
      FloatLeft = 933
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edMarket'
        end
        item
          Visible = True
          ItemName = 'dtTransDate'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    inherited mnuRefresh: TdxBarButton
      Caption = 'Load Data'
    end
    object edMarket: TcxBarEditItem
      Caption = 'Market Code'
      Category = 0
      Hint = 'Market Code'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      RepositoryItem = dmGlobal.luMarket
    end
    object dtTransDate: TcxBarEditItem
      Caption = 'Transaction Date'
      Category = 0
      Hint = 'Transaction Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object edFileNam: TcxBarEditItem
      Caption = 'File Name'
      Category = 0
      Hint = 'File Name'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edFileNamPropertiesButtonClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Upload File'
      Category = 0
      Hint = 'Upload File'
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
  end
  inherited DataContainer: TNMasterDetailData
    ListDataset = cdsCustomerHaircustList
    Keys = <
      item
        FieldName = 'INSTRUMENT_ID'
        FieldIndex = 0
      end>
    OnGetEditorClass = DataContainerGetEditorClass
    Left = 210
  end
  object cdsCustomerHaircustList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'HCUTDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'MARKETCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryHaircutList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 132
    Top = 99
    object cdsCustomerHaircustListINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsCustomerHaircustListINSTRUMENT_CODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsCustomerHaircustListLOCALCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsCustomerHaircustListMARKETCODE: TStringField
      DisplayLabel = 'Market Code'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsCustomerHaircustListINSTRUMENT_TYPE_CODE: TStringField
      DisplayLabel = 'Type Code'
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsCustomerHaircustListHCUTDATE: TDateTimeField
      DisplayLabel = 'Haircut Date'
      FieldName = 'HCUTDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCustomerHaircustListHCUTTYPE: TStringField
      DisplayLabel = 'Haircut Type'
      FieldName = 'HCUTTYPE'
    end
    object cdsCustomerHaircustListHCUTPRICE: TFloatField
      DisplayLabel = 'Haircut Price'
      FieldName = 'HCUTPRICE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCustomerHaircustListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCustomerHaircustListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCustomerHaircustListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCustomerHaircustListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCustomerHaircustListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCustomerHaircustListID: TLargeintField
      FieldName = 'ID'
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Text File|*.txt|Excel File|*.xls;*.xlsx'
    Left = 330
    Top = 129
  end
  object cdsHaircut: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'HCUTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'INSTRUMENT_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryHaircut'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 128
    Top = 152
    object cdsHaircutINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsHaircutINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsHaircutLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsHaircutMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsHaircutINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsHaircutHCUTDATE: TDateTimeField
      FieldName = 'HCUTDATE'
      Required = True
    end
    object cdsHaircutHCUTTYPE: TStringField
      FieldName = 'HCUTTYPE'
    end
    object cdsHaircutHCUTPRICE: TFloatField
      FieldName = 'HCUTPRICE'
    end
    object cdsHaircutMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsHaircutMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsHaircutAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsHaircutAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsHaircutISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsHaircutID: TLargeintField
      FieldName = 'ID'
    end
  end
end
