inherited frmEODProcess: TfrmEODProcess
  Caption = 'EOD Process'
  ClientWidth = 1051
  ExplicitWidth = 1051
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1051
    ExplicitWidth = 1051
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CODE'
        Width = 32
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterDESCRIPTION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DESCRIPTION'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterGROUP_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GROUP_CODE'
        Width = 63
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSEQNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SEQNO'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object gvwHist: TcxGridDBBandedTableView [1]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsBatchConfigHist
      DataController.DetailKeyFieldNames = 'CODE'
      DataController.KeyFieldNames = 'CODE'
      DataController.MasterKeyFieldNames = 'CODE'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwHistPROCESSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCESSDATE'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwHistCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CODE'
        Width = 62
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwHistSEQNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SEQNO'
        SortIndex = 0
        SortOrder = soAscending
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwHistSTARTTIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STARTTIME'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwHistENDTIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENDTIME'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwHistSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        Width = 45
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwHistOUTPUT_MESSAGE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OUTPUT_MESSAGE'
        Width = 133
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwHistPROCESSUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCESSUI'
        Width = 124
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      object grdMasterLevel2: TcxGridLevel
        GridView = gvwHist
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarAdmin
    Actions = <
      item
        ActionName = 'actEODProcess'
        Permission = 'End Of Day Process'
      end>
    Left = 304
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
    DataSet = cdsBatchConfig
  end
  inherited aclEditor: TActionList
    object actEODProcess: TNAction
      Category = 'NActions'
      Caption = 'Process End Of Day'
      ImageIndex = 3
      OnExecute = actEODProcessExecute
      CheckPermission = True
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
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
          ItemName = 'dtTrans'
        end
        item
          Visible = True
          ItemName = 'dtNextTrans'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object dxBarButton1: TdxBarButton
      Action = actEODProcess
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dtTrans: TcxBarEditItem
      Caption = 'Transaction Date'
      Category = 0
      Hint = 'Transaction Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object dtNextTrans: TcxBarEditItem
      Caption = 'Next Transaction Date'
      Category = 0
      Hint = 'Next Transaction Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxTextEditProperties'
      Properties.ReadOnly = True
    end
  end
  object cdsBatchConfig: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmEOD_qryBatchConfig'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 336
    object cdsBatchConfigCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CODE'
      Required = True
      Size = 2
    end
    object cdsBatchConfigDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 100
    end
    object cdsBatchConfigGROUP_CODE: TStringField
      DisplayLabel = 'Group Code'
      FieldName = 'GROUP_CODE'
      Required = True
      Size = 3
    end
    object cdsBatchConfigSEQNO: TIntegerField
      DisplayLabel = 'Seq No.'
      FieldName = 'SEQNO'
      Required = True
    end
  end
  object cdsBatchConfigHist: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'ProcessDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmEOD_qryBatchConfigHist'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 144
    Top = 336
    object cdsBatchConfigHistPROCESSDATE: TDateField
      DisplayLabel = 'Process Date'
      FieldName = 'PROCESSDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBatchConfigHistCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CODE'
      Required = True
      Size = 2
    end
    object cdsBatchConfigHistSEQNO: TIntegerField
      DisplayLabel = 'Seq No.'
      FieldName = 'SEQNO'
      ReadOnly = True
      Required = True
    end
    object cdsBatchConfigHistSTARTTIME: TDateTimeField
      DisplayLabel = 'Start Time'
      FieldName = 'STARTTIME'
      DisplayFormat = 'hh:nn:ss.zzz'
    end
    object cdsBatchConfigHistENDTIME: TDateTimeField
      DisplayLabel = 'End Time'
      FieldName = 'ENDTIME'
      DisplayFormat = 'hh:nn:ss.zzz'
    end
    object cdsBatchConfigHistSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      Size = 1
    end
    object cdsBatchConfigHistOUTPUT_MESSAGE: TStringField
      DisplayLabel = 'Message'
      FieldName = 'OUTPUT_MESSAGE'
      Size = 150
    end
    object cdsBatchConfigHistPROCESSUI: TStringField
      DisplayLabel = 'User Process'
      FieldName = 'PROCESSUI'
      Size = 30
    end
  end
  object dsBatchConfigHist: TDataSource
    DataSet = cdsBatchConfigHist
    Left = 144
    Top = 400
  end
end
