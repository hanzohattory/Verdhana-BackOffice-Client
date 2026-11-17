inherited frmStaticDataLog: TfrmStaticDataLog
  Caption = 'Static Data Log'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterSEQID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SEQID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterTABLENAME: TcxGridDBBandedColumn
        Caption = 'Table Name'
        DataBinding.FieldName = 'TABLENAME'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterFIELDNAME: TcxGridDBBandedColumn
        Caption = 'Field Name'
        DataBinding.FieldName = 'FIELDNAME'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterFIELDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FIELDID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        Caption = 'Primary Field Value'
        DataBinding.FieldName = 'ID'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS: TcxGridDBBandedColumn
        Caption = 'State'
        DataBinding.FieldName = 'STATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Insert'
            ImageIndex = 0
            Value = 'I'
          end
          item
            Description = 'Update'
            Value = 'U'
          end
          item
            Description = 'Delete'
            Value = 'D'
          end>
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterOLDVALUE: TcxGridDBBandedColumn
        Caption = 'Old Value'
        DataBinding.FieldName = 'OLDVALUE'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterNEWVALUE: TcxGridDBBandedColumn
        Caption = 'New Value'
        DataBinding.FieldName = 'NEWVALUE'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterMODULE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODULE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterKEYID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KEYID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterWRITEDATE: TcxGridDBBandedColumn
        Caption = 'Write Date'
        DataBinding.FieldName = 'WRITEDATE'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterWRITEUID: TcxGridDBBandedColumn
        Caption = 'Write User'
        DataBinding.FieldName = 'WRITEUID'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterACCESSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCESSID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterPROTOCOL: TcxGridDBBandedColumn
        Caption = 'Protocol'
        DataBinding.FieldName = 'PROTOCOL'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterIPADDRESS: TcxGridDBBandedColumn
        Caption = 'IP Address'
        DataBinding.FieldName = 'IPADDRESS'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterCOMPNAME: TcxGridDBBandedColumn
        Caption = 'Computer Name'
        DataBinding.FieldName = 'COMPNAME'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterMACADDRESS: TcxGridDBBandedColumn
        Caption = 'Mac Address'
        DataBinding.FieldName = 'MACADDRESS'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterCHECKDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHECKDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterCHECKUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHECKUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
    end
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
    DataSet = cdsStaticDataLog
  end
  inherited aclEditor: TActionList
    object actLoadData: TNAction
      Category = 'NActions'
      Caption = 'Load Data'
      ImageIndex = 7
      CheckPermission = False
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
          ItemName = 'dtStart'
        end
        item
          Visible = True
          ItemName = 'dtEnd'
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
        end>
    end
    inherited mnuRefresh: TdxBarButton
      Caption = 'Load Data'
    end
    object dtStart: TcxBarEditItem
      Caption = 'Write Date'
      Category = 0
      Hint = 'Write Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object dtEnd: TcxBarEditItem
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
  end
  object cdsStaticDataLog: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'STARTDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAdministrator_qryStaticDataLog'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsStaticDataLogID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsStaticDataLogSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsStaticDataLogTABLENAME: TStringField
      FieldName = 'TABLENAME'
      Required = True
      Size = 150
    end
    object cdsStaticDataLogFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Required = True
      Size = 150
    end
    object cdsStaticDataLogFIELDID: TStringField
      FieldName = 'FIELDID'
      Required = True
      Size = 150
    end
    object cdsStaticDataLogSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 1
    end
    object cdsStaticDataLogOLDVALUE: TMemoField
      FieldName = 'OLDVALUE'
      BlobType = ftMemo
    end
    object cdsStaticDataLogNEWVALUE: TMemoField
      FieldName = 'NEWVALUE'
      BlobType = ftMemo
    end
    object cdsStaticDataLogMODULE: TStringField
      FieldName = 'MODULE'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsStaticDataLogKEYID: TStringField
      FieldName = 'KEYID'
      ReadOnly = True
      Size = 150
    end
    object cdsStaticDataLogWRITEDATE: TDateTimeField
      FieldName = 'WRITEDATE'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd MMM yyy h:m:s'
    end
    object cdsStaticDataLogWRITEUID: TStringField
      FieldName = 'WRITEUID'
      ReadOnly = True
      Size = 30
    end
    object cdsStaticDataLogACCESSID: TLargeintField
      FieldName = 'ACCESSID'
      ReadOnly = True
    end
    object cdsStaticDataLogPROTOCOL: TStringField
      FieldName = 'PROTOCOL'
      ReadOnly = True
    end
    object cdsStaticDataLogIPADDRESS: TStringField
      FieldName = 'IPADDRESS'
      ReadOnly = True
    end
    object cdsStaticDataLogCOMPNAME: TStringField
      FieldName = 'COMPNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsStaticDataLogMACADDRESS: TStringField
      FieldName = 'MACADDRESS'
      ReadOnly = True
    end
    object cdsStaticDataLogMODDA: TStringField
      FieldName = 'MODDA'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsStaticDataLogMODUI: TStringField
      FieldName = 'MODUI'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsStaticDataLogCHECKDA: TStringField
      FieldName = 'CHECKDA'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsStaticDataLogCHECKUI: TStringField
      FieldName = 'CHECKUI'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsStaticDataLogAPPDA: TStringField
      FieldName = 'APPDA'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsStaticDataLogAPPUI: TStringField
      FieldName = 'APPUI'
      ReadOnly = True
      Required = True
      Size = 1
    end
  end
end
