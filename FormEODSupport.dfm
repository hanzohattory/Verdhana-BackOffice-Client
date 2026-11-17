inherited frmEODSupport: TfrmEODSupport
  Caption = 'EOD Support'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterNO: TcxGridDBBandedColumn
        Caption = 'ID'
        DataBinding.FieldName = 'NO'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterDESCRIPTION: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS_EXPORT_PDF: TcxGridDBBandedColumn
        Caption = 'Status Export To Pdf'
        DataBinding.FieldName = 'STATUS_EXPORT_PDF'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnGetDisplayText = gvwMasterSTATUS_EXPORT_PDFGetDisplayText
        HeaderAlignmentHorz = taCenter
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS_EXPORT_EXCEL: TcxGridDBBandedColumn
        Caption = 'Status Export To Excel'
        DataBinding.FieldName = 'STATUS_EXPORT_EXCEL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnGetDisplayText = gvwMasterSTATUS_EXPORT_PDFGetDisplayText
        HeaderAlignmentHorz = taCenter
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterProcessDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Process Date'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd-mmm-yyyy hh:nn:ss'
        Width = 140
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterProcessUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Process UI'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterProcessMessage: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Message'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object gvwDetail: TcxGridDBBandedTableView [1]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsEODSupportDetail
      DataController.DetailKeyFieldNames = 'NO'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'NO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwDetailID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        SortIndex = 0
        SortOrder = soDescending
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDetailPROCESS_DATE: TcxGridDBBandedColumn
        Caption = 'Report Date'
        DataBinding.FieldName = 'PROCESS_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd-mmm-yyyy'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwDetailPROCESS_TIME: TcxGridDBBandedColumn
        Caption = 'Process Time'
        DataBinding.FieldName = 'PROCESS_TIME'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd-mmm-yyyy hh:nn:ss'
        Width = 140
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwDetailSTATUS_EXPORT_PDF: TcxGridDBBandedColumn
        Caption = 'Status Export To Pdf'
        DataBinding.FieldName = 'STATUS_EXPORT_PDF'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnGetDisplayText = gvwMasterSTATUS_EXPORT_PDFGetDisplayText
        HeaderAlignmentHorz = taCenter
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwDetailSTATUS_EXPORT_EXCEL: TcxGridDBBandedColumn
        Caption = 'Status Export To Excel'
        DataBinding.FieldName = 'STATUS_EXPORT_EXCEL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnGetDisplayText = gvwMasterSTATUS_EXPORT_PDFGetDisplayText
        HeaderAlignmentHorz = taCenter
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwDetailPROCESS_MESSAGE: TcxGridDBBandedColumn
        Caption = 'Message'
        DataBinding.FieldName = 'PROCESS_MESSAGE'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwDetailPROCESS_UI: TcxGridDBBandedColumn
        Caption = 'Process UI'
        DataBinding.FieldName = 'PROCESS_UI'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      object grdMasterLevel2: TcxGridLevel
        GridView = gvwDetail
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
    DataSet = cdsEODSupport
    Top = 200
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    inherited BarMBrowseBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edReportDate'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnGenerate'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuCustomFilter'
        end>
    end
    object edReportDate: TcxBarEditItem
      Caption = 'Report Date'
      Category = 0
      Hint = 'Report Date'
      Visible = ivAlways
      ShowCaption = True
      Width = 120
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object btnGenerate: TdxBarButton
      Caption = 'Generate Report'
      Category = 0
      Hint = 'Generate Report'
      Visible = ivAlways
      PaintStyle = psCaptionGlyph
      OnClick = btnGenerateClick
    end
  end
  object cdsEODSupport: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryEODSupport'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 128
  end
  object cdsEODSupportDetail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryEODSupportDetail'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 208
    Top = 128
  end
  object dsEODSupportDetail: TDataSource
    DataSet = cdsEODSupportDetail
    Left = 96
    Top = 344
  end
  object ReportClient: TfrxReportClient
    Version = '2022.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46315.472589768520000000
    ReportOptions.LastChange = 46315.472589768520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Connection = dmGlobal.ReportServerConnection
    Left = 384
    Top = 136
    Datasets = <>
    Variables = <>
    Style = <>
    object TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Typ = []
      MirrorMode = []
    end
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Typ = []
      MirrorMode = []
    end
  end
end
