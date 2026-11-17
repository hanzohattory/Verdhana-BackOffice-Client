inherited frmReportExceptionalList: TfrmReportExceptionalList
  Caption = 'Exceptional List'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterAccName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccName'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterRATIO_MRGCALL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RATIO_MRGCALL'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCurrentMOF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CurrentMOF'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCREDIT_LIMIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREDIT_LIMIT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterAvailable: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Available'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterTOTALLOAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTALLOAN'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterTOTALSHAREPORTO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTALSHAREPORTO'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
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
    DataSet = cdsExceptionalReport
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
    inherited actInsertFromCurrentData: TNAction
      Visible = False
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited ReportContainer: TNClientReportContainer
    ReportName = 'Credit Control\R-CC-2-5_ExceptionalReport.fr3'
  end
  object cdsExceptionalReport: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmReport_qryExceptionalReport'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 42
    Top = 171
    object cdsExceptionalReportAccName: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'AccName'
      Size = 150
    end
    object cdsExceptionalReportRATIO_MRGCALL: TFloatField
      DisplayLabel = 'Ratio Margin Call'
      FieldName = 'RATIO_MRGCALL'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsExceptionalReportCurrentMOF: TFloatField
      DisplayLabel = 'Current MOF'
      FieldName = 'CurrentMOF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsExceptionalReportCREDIT_LIMIT: TFloatField
      DisplayLabel = 'Credit Limit'
      FieldName = 'CREDIT_LIMIT'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsExceptionalReportAvailable: TFloatField
      FieldName = 'Available'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsExceptionalReportTOTALLOAN: TFloatField
      DisplayLabel = 'Total Loan'
      FieldName = 'TOTALLOAN'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsExceptionalReportTOTALSHAREPORTO: TFloatField
      DisplayLabel = 'Total Share Report'
      FieldName = 'TOTALSHAREPORTO'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
end
