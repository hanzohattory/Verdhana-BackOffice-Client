inherited frmACTReconcile: TfrmACTReconcile
  Caption = 'ACT Reconcile'
  ClientWidth = 1045
  ExplicitWidth = 1045
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1045
    ExplicitWidth = 1045
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
        end
        item
          Caption = 'BOFIS'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'KSEI'
          Options.HoldOwnColumnsOnly = True
        end
        item
        end>
      object gvwMasterMemberCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MemberCode'
        Width = 105
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterMemberName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MemberName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAccountCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccountCode'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterInvestorName_BO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InvestorName_BO'
        Width = 300
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSID_BO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SID_BO'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterSRE01_BO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SRE01_BO'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSRE04_BO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SRE04_BO'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterInvestorName_KSEI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InvestorName_KSEI'
        Width = 300
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSID_KSEI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SID_KSEI'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterSRE01_KSEI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SRE01_KSEI'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSRE04_KSEI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SRE04_KSEI'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterRecon: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Recon'
        RepositoryItem = dmGlobal.chkStandard
        Width = 36
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterReCon_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ReCon_UI'
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterRecon_Date: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Recon_Date'
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 2
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
    DataSet = cdsACTReconList
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
          ItemName = 'dtRecon'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkDiff'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 295
          Visible = True
          ItemName = 'edUploadFIle'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
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
    object dtRecon: TcxBarEditItem
      Caption = 'Date Reconcile'
      Category = 0
      Hint = 'Date Reconcile'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object chkDiff: TcxBarEditItem
      Caption = 'Different Only'
      Category = 0
      Hint = 'Different Only'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnEditValueChanged = cxBarEditItem2PropertiesEditValueChanged
    end
    object edUploadFIle: TcxBarEditItem
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
      Properties.OnButtonClick = edUploadFIlePropertiesButtonClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Upload'
      Category = 0
      Hint = 'Upload'
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
  end
  object cdsACTReconList: TNClientDataset
    Aggregates = <>
    Filter = '(Recon <> '#39'1'#39')'
    Params = <
      item
        DataType = ftDate
        Name = 'reconDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'UserID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryACTReconcileList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsACTReconListMemberCode: TStringField
      DisplayLabel = 'Member Code'
      FieldName = 'MemberCode'
      Size = 5
    end
    object cdsACTReconListMemberName: TStringField
      DisplayLabel = 'Member Name'
      FieldName = 'MemberName'
      Size = 150
    end
    object cdsACTReconListAccountCode: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'AccountCode'
    end
    object cdsACTReconListInvestorName_BO: TStringField
      DisplayLabel = 'Investor Name'
      FieldName = 'InvestorName_BO'
      Size = 150
    end
    object cdsACTReconListSID_BO: TStringField
      DisplayLabel = 'SID No'
      FieldName = 'SID_BO'
    end
    object cdsACTReconListSRE01_BO: TStringField
      DisplayLabel = 'SRE 01'
      FieldName = 'SRE01_BO'
    end
    object cdsACTReconListSRE04_BO: TStringField
      DisplayLabel = 'SRE 04'
      FieldName = 'SRE04_BO'
    end
    object cdsACTReconListInvestorName_KSEI: TStringField
      DisplayLabel = 'Investor Name'
      FieldName = 'InvestorName_KSEI'
      Size = 150
    end
    object cdsACTReconListSID_KSEI: TStringField
      DisplayLabel = 'SID No'
      FieldName = 'SID_KSEI'
    end
    object cdsACTReconListSRE01_KSEI: TStringField
      DisplayLabel = 'SRE 01'
      FieldName = 'SRE01_KSEI'
    end
    object cdsACTReconListSRE04_KSEI: TStringField
      DisplayLabel = 'SRE 04'
      FieldName = 'SRE04_KSEI'
    end
    object cdsACTReconListRecon: TStringField
      FieldName = 'Recon'
      Size = 1
    end
    object cdsACTReconListReCon_UI: TStringField
      DisplayLabel = 'Recon User ID'
      FieldName = 'ReCon_UI'
      Size = 30
    end
    object cdsACTReconListRecon_Date: TDateTimeField
      DisplayLabel = 'Recon Date'
      FieldName = 'Recon_Date'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
  end
  object cdsUpload: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryActReconUpload'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 168
    object cdsUploadRekonDate: TDateField
      FieldName = 'RekonDate'
    end
    object cdsUploadMemberCode: TStringField
      FieldName = 'MemberCode'
      Size = 5
    end
    object cdsUploadMemberName: TStringField
      FieldName = 'MemberName'
      Size = 200
    end
    object cdsUploadSRE_Account: TStringField
      FieldName = 'SRE_Account'
    end
    object cdsUploadinvestorType1: TStringField
      FieldName = 'investorType1'
      Size = 50
    end
    object cdsUploadInvestorName: TStringField
      FieldName = 'InvestorName'
      Size = 200
    end
    object cdsUploadTax1: TFloatField
      FieldName = 'Tax1'
    end
    object cdsUploadTax2: TFloatField
      FieldName = 'Tax2'
    end
    object cdsUploadStatus: TStringField
      FieldName = 'Status'
    end
    object cdsUploadNPWP: TStringField
      FieldName = 'NPWP'
    end
    object cdsUploadAddress: TStringField
      FieldName = 'Address'
      Size = 500
    end
    object cdsUploadCreateDate: TStringField
      FieldName = 'CreateDate'
      Size = 8
    end
    object cdsUploadinvestorType2: TStringField
      FieldName = 'investorType2'
      Size = 50
    end
    object cdsUploadSID: TStringField
      FieldName = 'SID'
    end
    object cdsUploadTradingID: TStringField
      FieldName = 'TradingID'
      Size = 10
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Text FIle|*.txt'
    Left = 440
    Top = 328
  end
end
