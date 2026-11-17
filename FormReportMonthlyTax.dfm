inherited frmReportMonthlyTax: TfrmReportMonthlyTax
  Caption = 'Monthly Tax Report'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'BRKFEE'
          Column = gvwMasterBRKFEE
        end
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'VAT'
          Column = gvwMasterVAT
        end>
      object gvwMasterNPWPNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NPWP NO'
        Width = 111
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCOUNTNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCOUNT NAME'
        Width = 328
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterFAKTURPAJAK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FAKTUR PAJAK'
        Width = 118
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterMONTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MONTH'
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterYEAR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'YEAR'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterDATETO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DATE TO'
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterBRKFEE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BRKFEE'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterVAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarReport
    AssignedPermission = <
      item
        Name = 'Report Accounting'
        Description = 'Report Accounting'
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
  inherited popMaster: TPopupMenu
    object GeneratetoExcel1: TMenuItem
      Action = actGenerateToExcel
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsReportMonthlyTax
  end
  inherited aclEditor: TActionList
    inherited actNew: TNAction
      Enabled = False
      Visible = False
      CheckPermission = False
    end
    inherited actEdit: TNAction
      Enabled = False
      Visible = False
      CheckPermission = False
    end
    inherited actDelete: TNAction
      CheckPermission = False
    end
    inherited actPrint: TNAction
      Enabled = False
      Visible = False
    end
    object actGenerateToExcel: TNAction
      Category = 'NActions'
      Caption = 'Generate to Excel'
      OnExecute = actGenerateToExcelExecute
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
          ItemName = 'dtReport'
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
      Caption = 'Reload Data'
    end
    inherited mnuInsert: TdxBarSubItem
      Enabled = False
      Visible = ivNever
    end
    object dtReport: TcxBarEditItem
      Caption = 'Report Date'
      Category = 0
      Hint = 'Report Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
  end
  object cdsReportMonthlyTax: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'TRDDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmReport_qryMonthlyTaxReport'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsReportMonthlyTaxNPWPNO: TStringField
      DisplayLabel = 'NPWP No'
      FieldName = 'NPWP NO'
      Size = 30
    end
    object cdsReportMonthlyTaxACCOUNTNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCOUNT NAME'
      ReadOnly = True
      Size = 150
    end
    object cdsReportMonthlyTaxFAKTURPAJAK: TIntegerField
      DisplayLabel = 'Faktur Pajak'
      FieldName = 'FAKTUR PAJAK'
      ReadOnly = True
      Required = True
    end
    object cdsReportMonthlyTaxMONTH: TStringField
      DisplayLabel = 'Month'
      FieldName = 'MONTH'
      ReadOnly = True
      Size = 6
    end
    object cdsReportMonthlyTaxYEAR: TStringField
      DisplayLabel = 'Year'
      FieldName = 'YEAR'
      ReadOnly = True
      Size = 6
    end
    object cdsReportMonthlyTaxDATETO: TDateTimeField
      DisplayLabel = 'Date To'
      FieldName = 'DATE TO'
      ReadOnly = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsReportMonthlyTaxBRKFEE: TFloatField
      DisplayLabel = 'Fee'
      FieldName = 'BRKFEE'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
    object cdsReportMonthlyTaxVAT: TFloatField
      FieldName = 'VAT'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
  end
  object SaveDialog: TSaveDialog
    Filter = 'Excel File|*.xlsx'
    Left = 435
    Top = 156
  end
end
