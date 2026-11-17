object frmReportSupportMBKDVD57Detail: TfrmReportSupportMBKDVD57Detail
  Left = 0
  Top = 0
  Caption = 'Report Support VD57 Detail'
  ClientHeight = 424
  ClientWidth = 1101
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object grdVD57Detail: TcxGrid
    Left = 0
    Top = 0
    Width = 1101
    Height = 424
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1088
    object gvwVD57Detail: TcxGridDBBandedTableView
      PopupMenu = frmReportSupportMBKDVD5.popMaster
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = frmReportSupportMBKDVD5.dsSupportVD57
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Record Count: #,##0'
          Kind = skCount
          FieldName = 'VALUEDATE'
          Column = gvwVD57DetailVALUEDATE
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'MARKETVALUE'
          Column = gvwVD57DetailMARKETVALUE
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = frmReportSupportMBKDVD5.BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwVD57DetailVALUEDATE: TcxGridDBBandedColumn
        Caption = 'Value Date'
        DataBinding.FieldName = 'VALUEDATE'
        Width = 156
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwVD57DetailROWNO: TcxGridDBBandedColumn
        Caption = 'Row No'
        DataBinding.FieldName = 'ROWNO'
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwVD57DetailACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwVD57DetailACCCODE: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCCODE'
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwVD57DetailACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 313
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwVD57DetailSTOCKCODE: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'STOCKCODE'
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwVD57DetailCLOSEPRICE: TcxGridDBBandedColumn
        Caption = 'Close Price'
        DataBinding.FieldName = 'CLOSEPRICE'
        HeaderAlignmentHorz = taRightJustify
        Width = 93
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwVD57DetailQUANTITY: TcxGridDBBandedColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'QUANTITY'
        HeaderAlignmentHorz = taRightJustify
        Width = 89
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwVD57DetailMARKETVALUE: TcxGridDBBandedColumn
        Caption = 'Market Value'
        DataBinding.FieldName = 'MARKETVALUE'
        HeaderAlignmentHorz = taRightJustify
        Width = 180
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
    object grdVD57DetailLevel1: TcxGridLevel
      GridView = gvwVD57Detail
    end
  end
  object dsVD57Detail: TDataSource
    DataSet = frmReportSupportMBKDVD5.cdsSupportVD57
    Left = 80
    Top = 136
  end
end
