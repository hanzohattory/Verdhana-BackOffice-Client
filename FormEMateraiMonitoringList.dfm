inherited frmEMateraiMonitoringList: TfrmEMateraiMonitoringList
  Caption = 'E-Materai Monitoring'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterstatus: TcxGridDBBandedColumn
        DataBinding.FieldName = 'status'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterworker_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'worker_id'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterclaimed_at: TcxGridDBBandedColumn
        DataBinding.FieldName = 'claimed_at'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterretry_count: TcxGridDBBandedColumn
        DataBinding.FieldName = 'retry_count'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMastercreated_at: TcxGridDBBandedColumn
        DataBinding.FieldName = 'created_at'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterupdated_at: TcxGridDBBandedColumn
        DataBinding.FieldName = 'updated_at'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterfile_name: TcxGridDBBandedColumn
        DataBinding.FieldName = 'file_name'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMastersource_path: TcxGridDBBandedColumn
        DataBinding.FieldName = 'source_path'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterdoc_type: TcxGridDBBandedColumn
        DataBinding.FieldName = 'doc_type'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterdoc_number: TcxGridDBBandedColumn
        DataBinding.FieldName = 'doc_number'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterdoc_date: TcxGridDBBandedColumn
        DataBinding.FieldName = 'doc_date'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterdoc_password: TcxGridDBBandedColumn
        DataBinding.FieldName = 'doc_password'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.EchoMode = eemPassword
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterstamp_nominal: TcxGridDBBandedColumn
        DataBinding.FieldName = 'stamp_nominal'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasteridentity_type: TcxGridDBBandedColumn
        DataBinding.FieldName = 'identity_type'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasteridentity_number: TcxGridDBBandedColumn
        DataBinding.FieldName = 'identity_number'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterpayer_name: TcxGridDBBandedColumn
        DataBinding.FieldName = 'payer_name'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMastertrans_location: TcxGridDBBandedColumn
        DataBinding.FieldName = 'trans_location'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterreason: TcxGridDBBandedColumn
        DataBinding.FieldName = 'reason'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterstamp_llx: TcxGridDBBandedColumn
        DataBinding.FieldName = 'stamp_llx'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterstamp_lly: TcxGridDBBandedColumn
        DataBinding.FieldName = 'stamp_lly'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterstamp_urx: TcxGridDBBandedColumn
        DataBinding.FieldName = 'stamp_urx'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterstamp_ury: TcxGridDBBandedColumn
        DataBinding.FieldName = 'stamp_ury'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterstamp_page: TcxGridDBBandedColumn
        DataBinding.FieldName = 'stamp_page'
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterstorage_path: TcxGridDBBandedColumn
        DataBinding.FieldName = 'storage_path'
        Width = 1200
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterqr_storage_path: TcxGridDBBandedColumn
        DataBinding.FieldName = 'qr_storage_path'
        Width = 1200
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterfinal_file_path: TcxGridDBBandedColumn
        DataBinding.FieldName = 'final_file_path'
        Width = 1200
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterserial_number: TcxGridDBBandedColumn
        AlternateCaption = '200'
        DataBinding.FieldName = 'serial_number'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterstamp_status: TcxGridDBBandedColumn
        DataBinding.FieldName = 'stamp_status'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMastererror_code: TcxGridDBBandedColumn
        DataBinding.FieldName = 'error_code'
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMastererror_message: TcxGridDBBandedColumn
        DataBinding.FieldName = 'error_message'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterstamped_at: TcxGridDBBandedColumn
        DataBinding.FieldName = 'stamped_at'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'E Materai Monitoring Viewer'
        Description = 'E Materai Monitoring Viewer'
      end>
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
    DataSet = cdsEMateraiList
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
          ItemName = 'edDocDate'
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
    object edDocDate: TcxBarEditItem
      Caption = 'Document Date'
      Category = 0
      Hint = 'Document Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
  end
  object cdsEMateraiList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'docDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmEMaterai_qryEMateraiMonitoringList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsEMateraiListid: TLargeintField
      FieldName = 'id'
      ReadOnly = True
      Required = True
    end
    object cdsEMateraiListstatus: TStringField
      FieldName = 'status'
      Required = True
    end
    object cdsEMateraiListworker_id: TStringField
      FieldName = 'worker_id'
      Size = 50
    end
    object cdsEMateraiListclaimed_at: TDateTimeField
      FieldName = 'claimed_at'
    end
    object cdsEMateraiListretry_count: TIntegerField
      FieldName = 'retry_count'
      Required = True
    end
    object cdsEMateraiListcreated_at: TDateTimeField
      FieldName = 'created_at'
      Required = True
    end
    object cdsEMateraiListupdated_at: TDateTimeField
      FieldName = 'updated_at'
      Required = True
    end
    object cdsEMateraiListfile_name: TWideStringField
      FieldName = 'file_name'
      Required = True
      Size = 500
    end
    object cdsEMateraiListsource_path: TWideStringField
      FieldName = 'source_path'
      Required = True
      Size = 1000
    end
    object cdsEMateraiListdoc_type: TWideStringField
      FieldName = 'doc_type'
      Required = True
      Size = 200
    end
    object cdsEMateraiListdoc_number: TWideStringField
      FieldName = 'doc_number'
      Required = True
      Size = 100
    end
    object cdsEMateraiListdoc_date: TDateField
      FieldName = 'doc_date'
      Required = True
    end
    object cdsEMateraiListdoc_password: TWideStringField
      FieldName = 'doc_password'
      Required = True
      Size = 50
    end
    object cdsEMateraiListstamp_nominal: TWideStringField
      FieldName = 'stamp_nominal'
      Required = True
      Size = 50
    end
    object cdsEMateraiListidentity_type: TWideStringField
      FieldName = 'identity_type'
      Required = True
      Size = 100
    end
    object cdsEMateraiListidentity_number: TWideStringField
      FieldName = 'identity_number'
      Required = True
      Size = 100
    end
    object cdsEMateraiListpayer_name: TWideStringField
      FieldName = 'payer_name'
      Required = True
      Size = 200
    end
    object cdsEMateraiListtrans_location: TWideStringField
      FieldName = 'trans_location'
      Required = True
      Size = 50
    end
    object cdsEMateraiListreason: TWideStringField
      FieldName = 'reason'
      Required = True
      Size = 200
    end
    object cdsEMateraiListstamp_llx: TFloatField
      FieldName = 'stamp_llx'
      Required = True
    end
    object cdsEMateraiListstamp_lly: TFloatField
      FieldName = 'stamp_lly'
      Required = True
    end
    object cdsEMateraiListstamp_urx: TFloatField
      FieldName = 'stamp_urx'
      Required = True
    end
    object cdsEMateraiListstamp_ury: TFloatField
      FieldName = 'stamp_ury'
      Required = True
    end
    object cdsEMateraiListstamp_page: TIntegerField
      FieldName = 'stamp_page'
      Required = True
    end
    object cdsEMateraiListstorage_path: TWideStringField
      FieldName = 'storage_path'
      Size = 1000
    end
    object cdsEMateraiListqr_storage_path: TWideStringField
      FieldName = 'qr_storage_path'
      Size = 1000
    end
    object cdsEMateraiListfinal_file_path: TWideStringField
      FieldName = 'final_file_path'
      Size = 1000
    end
    object cdsEMateraiListserial_number: TWideStringField
      FieldName = 'serial_number'
      Size = 100
    end
    object cdsEMateraiListstamp_status: TStringField
      FieldName = 'stamp_status'
    end
    object cdsEMateraiListerror_code: TStringField
      FieldName = 'error_code'
      Size = 10
    end
    object cdsEMateraiListerror_message: TWideStringField
      FieldName = 'error_message'
      Size = 500
    end
    object cdsEMateraiListstamped_at: TDateTimeField
      FieldName = 'stamped_at'
    end
  end
end
