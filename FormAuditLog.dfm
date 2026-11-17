object frmAuditLog: TfrmAuditLog
  Left = 0
  Top = 0
  Caption = 'Audit Log'
  ClientHeight = 369
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 320
    Width = 792
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    Visible = False
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
    end
    object btnCancel: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object grdAudit: TcxGrid
    Left = 0
    Top = 0
    Width = 792
    Height = 320
    Align = alClient
    TabOrder = 1
    object gvwAudit: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAudit
      DataController.Filter.Options = [fcoCaseInsensitive]
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
      OptionsSelection.MultiSelect = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwAuditID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwAuditMODULE: TcxGridDBBandedColumn
        Caption = 'Module'
        DataBinding.FieldName = 'MODULE'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwAuditNOTES: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'NOTES'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwAuditKEYID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KEYID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwAuditWRITEDATE: TcxGridDBBandedColumn
        Caption = 'Modification Date'
        DataBinding.FieldName = 'WRITEDATE'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwAuditWRITEUID: TcxGridDBBandedColumn
        Caption = 'Modification User'
        DataBinding.FieldName = 'WRITEUID'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwAuditPROTOCOL: TcxGridDBBandedColumn
        Caption = 'Protocol'
        DataBinding.FieldName = 'PROTOCOL'
        Width = 45
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwAuditIPADDRESS: TcxGridDBBandedColumn
        Caption = 'IP Address'
        DataBinding.FieldName = 'IPADDRESS'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwAuditCOMPNAME: TcxGridDBBandedColumn
        Caption = 'Computer Name'
        DataBinding.FieldName = 'COMPNAME'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwAuditMACADDRESS: TcxGridDBBandedColumn
        Caption = 'Mac Address'
        DataBinding.FieldName = 'MACADDRESS'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
    end
    object gvwAuditLog: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAuditLog
      DataController.DetailKeyFieldNames = 'ID'
      DataController.KeyFieldNames = 'ID;SEQID;TABLENAME;FIELDNAME'
      DataController.MasterKeyFieldNames = 'ID'
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
      OptionsSelection.MultiSelect = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwAuditLogID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwAuditLogSEQID: TcxGridDBBandedColumn
        Caption = 'Seq ID'
        DataBinding.FieldName = 'SEQID'
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwAuditLogTABLENAME: TcxGridDBBandedColumn
        Caption = 'Table Name'
        DataBinding.FieldName = 'TABLENAME'
        Width = 160
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwAuditLogFIELDNAME: TcxGridDBBandedColumn
        Caption = 'Field Name'
        DataBinding.FieldName = 'FIELDNAME'
        Width = 140
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwAuditLogFIELDID: TcxGridDBBandedColumn
        Caption = 'Primary Field Value'
        DataBinding.FieldName = 'FIELDID'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwAuditLogSTATUS: TcxGridDBBandedColumn
        Caption = 'State'
        DataBinding.FieldName = 'STATUS'
        RepositoryItem = dmGlobal.luInsertUpdateDelete
        SortIndex = 0
        SortOrder = soDescending
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwAuditLogOLDVALUE: TcxGridDBBandedColumn
        Caption = 'Old Value'
        DataBinding.FieldName = 'OLDVALUE'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwAuditLogNEWVALUE: TcxGridDBBandedColumn
        Caption = 'New Value'
        DataBinding.FieldName = 'NEWVALUE'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
    object grdAuditLevel1: TcxGridLevel
      GridView = gvwAudit
      object grdAuditLevel2: TcxGridLevel
        GridView = gvwAuditLog
      end
    end
  end
  object cdsAudit: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGlobal'
    RemoteServer = dmGlobal.dspConnection
    Left = 32
    Top = 200
  end
  object dsAudit: TDataSource
    DataSet = cdsAuditByModule
    Left = 280
    Top = 32
  end
  object cdsAuditByModule: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'MODULE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'KEYID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryAuditByModule'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 280
    Top = 80
    object cdsAuditByModuleID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsAuditByModuleMODULE: TStringField
      FieldName = 'MODULE'
      Required = True
      Size = 50
    end
    object cdsAuditByModuleNOTES: TMemoField
      FieldName = 'NOTES'
      Required = True
      BlobType = ftMemo
    end
    object cdsAuditByModuleKEYID: TStringField
      FieldName = 'KEYID'
      Size = 150
    end
    object cdsAuditByModuleWRITEDATE: TDateTimeField
      FieldName = 'WRITEDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy hh:nn:ss.zzz'
    end
    object cdsAuditByModuleWRITEUID: TStringField
      FieldName = 'WRITEUID'
      Size = 30
    end
    object cdsAuditByModulePROTOCOL: TStringField
      FieldName = 'PROTOCOL'
      ReadOnly = True
    end
    object cdsAuditByModuleIPADDRESS: TStringField
      FieldName = 'IPADDRESS'
      ReadOnly = True
    end
    object cdsAuditByModuleCOMPNAME: TStringField
      FieldName = 'COMPNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsAuditByModuleMACADDRESS: TStringField
      FieldName = 'MACADDRESS'
      ReadOnly = True
    end
  end
  object cdsAuditByTable: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TABLENAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIELDID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryAuditByTable'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 280
    Top = 128
    object cdsAuditByTableID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsAuditByTableMODULE: TStringField
      FieldName = 'MODULE'
      Required = True
      Size = 50
    end
    object cdsAuditByTableNOTES: TMemoField
      FieldName = 'NOTES'
      Required = True
      BlobType = ftMemo
    end
    object cdsAuditByTableKEYID: TStringField
      FieldName = 'KEYID'
      Size = 150
    end
    object cdsAuditByTableWRITEDATE: TDateTimeField
      FieldName = 'WRITEDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy hh:nn:ss.zzz'
    end
    object cdsAuditByTableWRITEUID: TStringField
      FieldName = 'WRITEUID'
      Size = 30
    end
    object cdsAuditByTablePROTOCOL: TStringField
      FieldName = 'PROTOCOL'
      ReadOnly = True
    end
    object cdsAuditByTableIPADDRESS: TStringField
      FieldName = 'IPADDRESS'
      ReadOnly = True
    end
    object cdsAuditByTableCOMPNAME: TStringField
      FieldName = 'COMPNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsAuditByTableMACADDRESS: TStringField
      FieldName = 'MACADDRESS'
      ReadOnly = True
    end
  end
  object cdsAuditByField: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TABLENAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIELDNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIELDID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryAuditByField'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 280
    Top = 176
    object cdsAuditByFieldID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsAuditByFieldMODULE: TStringField
      FieldName = 'MODULE'
      Required = True
      Size = 50
    end
    object cdsAuditByFieldNOTES: TMemoField
      FieldName = 'NOTES'
      Required = True
      BlobType = ftMemo
    end
    object cdsAuditByFieldKEYID: TStringField
      FieldName = 'KEYID'
      Size = 150
    end
    object cdsAuditByFieldWRITEDATE: TDateTimeField
      FieldName = 'WRITEDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy hh:nn:ss.zzz'
    end
    object cdsAuditByFieldWRITEUID: TStringField
      FieldName = 'WRITEUID'
      Size = 30
    end
    object cdsAuditByFieldPROTOCOL: TStringField
      FieldName = 'PROTOCOL'
      ReadOnly = True
    end
    object cdsAuditByFieldIPADDRESS: TStringField
      FieldName = 'IPADDRESS'
      ReadOnly = True
    end
    object cdsAuditByFieldCOMPNAME: TStringField
      FieldName = 'COMPNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsAuditByFieldMACADDRESS: TStringField
      FieldName = 'MACADDRESS'
      ReadOnly = True
    end
  end
  object cdsAuditLogByModule: TNClientDataset
    Aggregates = <>
    ObjectView = False
    Params = <
      item
        DataType = ftString
        Name = 'MODULE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'KEYID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryAuditLogByModule'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 384
    Top = 80
    object cdsAuditLogByModuleID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsAuditLogByModuleSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsAuditLogByModuleTABLENAME: TStringField
      FieldName = 'TABLENAME'
      Required = True
      Size = 150
    end
    object cdsAuditLogByModuleFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Required = True
      Size = 150
    end
    object cdsAuditLogByModuleFIELDID: TStringField
      FieldName = 'FIELDID'
      Required = True
      Size = 150
    end
    object cdsAuditLogByModuleSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 1
    end
    object cdsAuditLogByModuleOLDVALUE: TMemoField
      FieldName = 'OLDVALUE'
      BlobType = ftMemo
    end
    object cdsAuditLogByModuleNEWVALUE: TMemoField
      FieldName = 'NEWVALUE'
      BlobType = ftMemo
    end
  end
  object cdsAuditLogByTable: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TABLENAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIELDID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryAuditLogByTable'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 384
    Top = 128
    object cdsAuditLogByTableID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsAuditLogByTableSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsAuditLogByTableTABLENAME: TStringField
      FieldName = 'TABLENAME'
      Required = True
      Size = 150
    end
    object cdsAuditLogByTableFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Required = True
      Size = 150
    end
    object cdsAuditLogByTableFIELDID: TStringField
      FieldName = 'FIELDID'
      Required = True
      Size = 150
    end
    object cdsAuditLogByTableSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 1
    end
    object cdsAuditLogByTableOLDVALUE: TMemoField
      FieldName = 'OLDVALUE'
      BlobType = ftMemo
    end
    object cdsAuditLogByTableNEWVALUE: TMemoField
      FieldName = 'NEWVALUE'
      BlobType = ftMemo
    end
  end
  object cdsAuditLogByField: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TABLENAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIELDNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIELDID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryAuditLogByField'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 384
    Top = 176
    object cdsAuditLogByFieldID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsAuditLogByFieldSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsAuditLogByFieldTABLENAME: TStringField
      FieldName = 'TABLENAME'
      Required = True
      Size = 150
    end
    object cdsAuditLogByFieldFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Required = True
      Size = 150
    end
    object cdsAuditLogByFieldFIELDID: TStringField
      FieldName = 'FIELDID'
      Required = True
      Size = 150
    end
    object cdsAuditLogByFieldSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 1
    end
    object cdsAuditLogByFieldOLDVALUE: TMemoField
      FieldName = 'OLDVALUE'
      BlobType = ftMemo
    end
    object cdsAuditLogByFieldNEWVALUE: TMemoField
      FieldName = 'NEWVALUE'
      BlobType = ftMemo
    end
  end
  object dsAuditLog: TDataSource
    DataSet = cdsAuditLogByModule
    Left = 384
    Top = 32
  end
end
