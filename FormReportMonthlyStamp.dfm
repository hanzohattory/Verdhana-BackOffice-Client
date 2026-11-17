inherited frmReportMonthlyStamp: TfrmReportMonthlyStamp
  Caption = 'Monthly Stamp'
  ClientWidth = 1305
  ExplicitWidth = 1305
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1305
    ExplicitWidth = 1305
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxgrdbndclmnMasterStampingAmount
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxgrdbndclmnMasterStampedAmount
        end>
      object cxgrdbndclmnMasterStampStat: TcxGridDBBandedColumn
        Caption = 'Stamp Status'
        DataBinding.FieldName = 'StampStat'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxgrdbndclmnMasterAccountCode: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'AccountCode'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxgrdbndclmnMasterAccountName: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'AccountName'
        Width = 170
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxgrdbndclmnMasterDocType: TcxGridDBBandedColumn
        Caption = 'Document Type'
        DataBinding.FieldName = 'DocType'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxgrdbndclmnMasterDocNo: TcxGridDBBandedColumn
        Caption = 'Document No'
        DataBinding.FieldName = 'DocNo'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxgrdbndclmnMasterDocDate: TcxGridDBBandedColumn
        Caption = 'Document Date'
        DataBinding.FieldName = 'DocDate'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxgrdbndclmnMasterDocAmount: TcxGridDBBandedColumn
        Caption = 'Document Amount'
        DataBinding.FieldName = 'DocAmount'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxgrdbndclmnMasterIdentityType: TcxGridDBBandedColumn
        Caption = 'Identity Type'
        DataBinding.FieldName = 'IdentityType'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxgrdbndclmnMasterIdentityNo: TcxGridDBBandedColumn
        Caption = 'Identity No'
        DataBinding.FieldName = 'IdentityNo'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxgrdbndclmnMasterAccountType: TcxGridDBBandedColumn
        Caption = 'Account Type'
        DataBinding.FieldName = 'AccountType'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxgrdbndclmnMasterCollection_Desc: TcxGridDBBandedColumn
        Caption = 'Collection Description'
        DataBinding.FieldName = 'Collection_Desc'
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxgrdbndclmnMasterStampingAmount: TcxGridDBBandedColumn
        Caption = 'On Progress Amount'
        DataBinding.FieldName = 'StampingAmount'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxgrdbndclmnMasterStampedAmount: TcxGridDBBandedColumn
        Caption = 'Stamped Amount'
        DataBinding.FieldName = 'StampedAmount'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarReport
    AssignedPermission = <
      item
        Name = 'Monthly Stamp'
        Description = 'Monthly Stamp'
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
  inherited popMaster: TPopupMenu
    object GenerateToExcel: TMenuItem [3]
      Caption = 'Generate To Excel'
      OnClick = actGenerateExcelExecute
    end
    inherited Insert2: TMenuItem
      Enabled = False
      Visible = False
    end
    inherited Edit1: TMenuItem
      Enabled = False
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsMonthlyStampList
  end
  inherited aclEditor: TActionList
    inherited actNew: TNAction
      Visible = False
      CheckPermission = False
    end
    inherited actEdit: TNAction
      Visible = False
      CheckPermission = False
    end
    object actGenerateExcel: TNAction
      Category = 'Reports'
      Caption = 'Generate to Excel'
      OnExecute = actGenerateExcelExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    inherited BarMBrowseBar1: TdxBar
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 110
          Visible = True
          ItemName = 'dtPeriod'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 160
          Visible = True
          ItemName = 'cmbFilterStatus'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 190
          Visible = True
          ItemName = 'cmbCollectBroker'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuPrint'
        end
        item
          Visible = True
          ItemName = 'mnuGenerateExcel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuCustomFilter'
        end>
    end
    object dtPeriod: TcxBarEditItem
      Caption = 'Periode'
      Category = 0
      Hint = 'Period (Month/Year)'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'MMM yyyy'
      Properties.EditFormat = 'MMM yyyy'
    end
    object cmbFilterStatus: TcxBarEditItem
      Caption = 'Filter Status'
      Category = 0
      Hint = 'Filter Status'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <
        item
          Description = 'Belum Distamp'
          Value = '1'
        end
        item
          Description = 'Sudah Distamp'
          Value = '2'
        end
        item
          Description = 'Semua'
          Value = '3'
        end>
    end
    object cmbCollectBroker: TcxBarEditItem
      Caption = 'Collect by Broker'
      Category = 0
      Hint = 'Collect by Broker'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <
        item
          Description = 'Dibayar Nasabah Saat Transaksi'
          Value = '1'
        end
        item
          Description = 'Ditagih Bulanan'
          Value = '2'
        end
        item
          Description = 'Semua'
          Value = '3'
        end>
    end
    object mnuGenerateExcel: TdxBarButton
      Action = actGenerateExcel
      Category = 0
    end
  end
  inherited ReportContainer: TNClientReportContainer
    ReportName = 'Accounting\Monthly_Stamp.fr3'
    Params = <
      item
        DataType = ftString
        Name = 'PERIOD'
        ParamType = ptInput
        Value = ' '
      end
      item
        DataType = ftString
        Name = 'FilterStat'
        ParamType = ptInput
        Value = '3'
      end
      item
        DataType = ftString
        Name = 'Collection'
        ParamType = ptInput
        Value = '3'
      end>
  end
  object cdsMonthlyStampList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PERIOD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FilterStat'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Collection'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryMonthlyStampReport'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 99
    Top = 159
    object strngfldMonthlyStampListStampStat: TStringField
      FieldName = 'StampStat'
      Size = 15
    end
    object strngfldMonthlyStampListAccountCode: TStringField
      FieldName = 'AccountCode'
      Size = 30
    end
    object strngfldMonthlyStampListAccountName: TStringField
      FieldName = 'AccountName'
      Size = 150
    end
    object strngfldMonthlyStampListDocType: TStringField
      FieldName = 'DocType'
      Size = 5
    end
    object strngfldMonthlyStampListDocNo: TStringField
      FieldName = 'DocNo'
    end
    object dtfldMonthlyStampListDocDate: TDateField
      FieldName = 'DocDate'
      DisplayFormat = 'yyyy-mm-dd'
    end
    object fltfldMonthlyStampListDocAmount: TFloatField
      FieldName = 'DocAmount'
      DisplayFormat = '#,###.00'
    end
    object strngfldMonthlyStampListIdentityType: TStringField
      FieldName = 'IdentityType'
      Size = 10
    end
    object strngfldMonthlyStampListIdentityNo: TStringField
      FieldName = 'IdentityNo'
    end
    object strngfldMonthlyStampListAccountType: TStringField
      FieldName = 'AccountType'
    end
    object strngfldMonthlyStampListCollection: TStringField
      FieldName = 'Collection'
      Size = 1
    end
    object strngfldMonthlyStampListCollection_Desc: TStringField
      FieldName = 'Collection_Desc'
      Size = 50
    end
    object fltfldMonthlyStampListStampingAmount: TFloatField
      FieldName = 'StampingAmount'
      DisplayFormat = '#,###.00'
    end
    object fltfldMonthlyStampListStampedAmount: TFloatField
      FieldName = 'StampedAmount'
      DisplayFormat = '#,###.00'
    end
  end
end
