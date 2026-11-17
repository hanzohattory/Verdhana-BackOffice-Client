inherited frmReportARAPNetting: TfrmReportARAPNetting
  Caption = 'AR / AP Netting'
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdMaster: TcxGrid
    RootLevelOptions.DetailTabsPosition = dtpTop
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'APT0'
          Column = gvwMasterAPT0
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'APT1'
          Column = gvwMasterAPT1
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'APT2'
          Column = gvwMasterAPT2
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'APTOTAL'
          Column = gvwMasterAPTOTAL
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'ART0'
          Column = gvwMasterART0
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'ART1'
          Column = gvwMasterART1
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'ART2'
          Column = gvwMasterART2
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'ARTOTAL'
          Column = gvwMasterARTOTAL
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'APT0'
          Column = gvwMasterAPT0
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'APT1'
          Column = gvwMasterAPT1
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'APT2'
          Column = gvwMasterAPT2
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'APTOTAL'
          Column = gvwMasterAPTOTAL
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'ART0'
          Column = gvwMasterART0
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'ART1'
          Column = gvwMasterART1
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'ART2'
          Column = gvwMasterART2
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'ARTOTAL'
          Column = gvwMasterARTOTAL
        end>
      OptionsView.BandHeaders = True
      Bands = <
        item
        end
        item
          Caption = 'Account Receivable'
        end
        item
          Caption = 'Account Payable'
        end>
      object gvwMasterACCTYPE: TcxGridDBBandedColumn
        Caption = 'Account Type'
        DataBinding.FieldName = 'ACCTYPE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterART0: TcxGridDBBandedColumn
        Caption = 'T + 0'
        DataBinding.FieldName = 'ART0'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterART1: TcxGridDBBandedColumn
        Caption = 'T + 1'
        DataBinding.FieldName = 'ART1'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterART2: TcxGridDBBandedColumn
        Caption = 'T + 2'
        DataBinding.FieldName = 'ART2'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterARTOTAL: TcxGridDBBandedColumn
        Caption = 'Total'
        DataBinding.FieldName = 'ARTOTAL'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterAPT0: TcxGridDBBandedColumn
        Caption = 'T + 0'
        DataBinding.FieldName = 'APT0'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAPT1: TcxGridDBBandedColumn
        Caption = 'T + 1'
        DataBinding.FieldName = 'APT1'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAPT2: TcxGridDBBandedColumn
        Caption = 'T + 2'
        DataBinding.FieldName = 'APT2'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterAPTOTAL: TcxGridDBBandedColumn
        Caption = 'Total'
        DataBinding.FieldName = 'APTOTAL'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSIDE_ACC: TcxGridDBBandedColumn
        Caption = 'Account Side'
        DataBinding.FieldName = 'SIDE_ACC'
        Visible = False
        GroupIndex = 0
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object gvwMaster2: TcxGridDBBandedTableView [1]
      PopupMenu = popMaster
      OnKeyDown = gvwMasterKeyDown
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCustomDrawCell = gvwMasterCustomDrawCell
      DataController.DataSource = dsARAPNetingDetail
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'APT0'
          Column = gvwMaster2APT0
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'APT1'
          Column = gvwMaster2APT1
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'APT2'
          Column = gvwMaster2APT2
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'APTOTAL'
          Column = gvwMaster2APTOTAL
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'ART0'
          Column = gvwMaster2ART0
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'ART1'
          Column = gvwMaster2ART1
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'ART2'
          Column = gvwMaster2ART2
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'ARTOTAL'
          Column = gvwMaster2ARTOTAL
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'APT0'
          Column = gvwMaster2APT0
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'APT1'
          Column = gvwMaster2APT1
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'APT2'
          Column = gvwMaster2APT2
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'APTOTAL'
          Column = gvwMaster2APTOTAL
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'ART0'
          Column = gvwMaster2ART0
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'ART1'
          Column = gvwMaster2ART1
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'ART2'
          Column = gvwMaster2ART2
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'ARTOTAL'
          Column = gvwMaster2ARTOTAL
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end
        item
          Caption = 'Account Receivable'
        end
        item
          Caption = 'Account Payable'
        end>
      object gvwMaster2ACCTYPE: TcxGridDBBandedColumn
        Caption = 'Account Type'
        DataBinding.FieldName = 'ACCTYPE'
        Visible = False
        GroupIndex = 2
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMaster2SIDE_ACC: TcxGridDBBandedColumn
        Caption = 'Side Account'
        DataBinding.FieldName = 'SIDE_ACC'
        Visible = False
        GroupIndex = 1
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMaster2ACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMaster2ART0: TcxGridDBBandedColumn
        Caption = 'T - 0'
        DataBinding.FieldName = 'ART0'
        HeaderAlignmentHorz = taRightJustify
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMaster2ART1: TcxGridDBBandedColumn
        Caption = 'T - 1'
        DataBinding.FieldName = 'ART1'
        HeaderAlignmentHorz = taRightJustify
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMaster2ART2: TcxGridDBBandedColumn
        Caption = 'T - 2'
        DataBinding.FieldName = 'ART2'
        HeaderAlignmentHorz = taRightJustify
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMaster2ARTOTAL: TcxGridDBBandedColumn
        Caption = 'Total'
        DataBinding.FieldName = 'ARTOTAL'
        HeaderAlignmentHorz = taRightJustify
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMaster2APT0: TcxGridDBBandedColumn
        Caption = 'T - 0'
        DataBinding.FieldName = 'APT0'
        HeaderAlignmentHorz = taRightJustify
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMaster2APT1: TcxGridDBBandedColumn
        Caption = 'T - 1'
        DataBinding.FieldName = 'APT1'
        HeaderAlignmentHorz = taRightJustify
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMaster2APT2: TcxGridDBBandedColumn
        Caption = 'T - 2'
        DataBinding.FieldName = 'APT2'
        HeaderAlignmentHorz = taRightJustify
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMaster2APTOTAL: TcxGridDBBandedColumn
        Caption = 'Total'
        DataBinding.FieldName = 'APTOTAL'
        HeaderAlignmentHorz = taRightJustify
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMaster2BOARDID: TcxGridDBBandedColumn
        Caption = 'Board'
        DataBinding.FieldName = 'BOARDID'
        RepositoryItem = dmGlobal.luBoard
        Visible = False
        GroupIndex = 0
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMaster2ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMaster2ACCCODE: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCCODE'
        VisibleForCustomization = False
        Width = 133
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMaster2SETTLE_CCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_CCYCODE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMaster2AFFILIATED: TcxGridDBBandedColumn
        Caption = 'Affiliated'
        DataBinding.FieldName = 'AFFILIATED'
        Width = 125
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      Caption = 'Summary'
    end
    object grdMasterLevel2: TcxGridLevel
      Caption = 'Detail'
      GridView = gvwMaster2
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
  inherited popMaster: TPopupMenu
    object ViewDetailARAPNetting1: TMenuItem [2]
      Action = actViewDetailARAPNetting
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsARAPNetting
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
    inherited actOpen: TNAction
      Visible = False
      CheckPermission = False
    end
    inherited actSaveView: TNAction
      Visible = False
    end
    inherited actSaveGridView: TNAction
      Visible = False
    end
    inherited actPrint: TNAction
      Visible = False
    end
    object actViewDetailARAPNetting: TNAction
      Category = 'NActions'
      Caption = 'View Detail AR/AP Netting'
      OnExecute = actViewDetailARAPNettingExecute
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
  end
  object cdsARAPNetting: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryARAPNetting'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsARAPNettingCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 512
    Top = 280
    object cdsARAPNettingACCTYPE: TStringField
      FieldName = 'ACCTYPE'
    end
    object cdsARAPNettingSIDE_ACC: TStringField
      FieldName = 'SIDE_ACC'
    end
    object cdsARAPNettingART0: TFloatField
      FieldName = 'ART0'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsARAPNettingART1: TFloatField
      FieldName = 'ART1'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsARAPNettingART2: TFloatField
      FieldName = 'ART2'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsARAPNettingAPT0: TFloatField
      FieldName = 'APT0'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsARAPNettingAPT1: TFloatField
      FieldName = 'APT1'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsARAPNettingAPT2: TFloatField
      FieldName = 'APT2'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsARAPNettingARTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ARTOTAL'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Calculated = True
    end
    object cdsARAPNettingAPTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'APTOTAL'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Calculated = True
    end
  end
  object dsARAPNetingDetail: TDataSource
    DataSet = cdsARAPNettingDetail
    Left = 32
    Top = 336
  end
  object cdsARAPNettingDetail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryARAPNettingDetail'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsARAPNettingDetailCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 512
    Top = 328
    object cdsARAPNettingDetailACCTYPE: TStringField
      FieldName = 'ACCTYPE'
    end
    object cdsARAPNettingDetailSIDE_ACC: TStringField
      FieldName = 'SIDE_ACC'
    end
    object cdsARAPNettingDetailACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 200
    end
    object cdsARAPNettingDetailART0: TFloatField
      FieldName = 'ART0'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsARAPNettingDetailART1: TFloatField
      FieldName = 'ART1'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsARAPNettingDetailART2: TFloatField
      FieldName = 'ART2'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsARAPNettingDetailAPT0: TFloatField
      FieldName = 'APT0'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsARAPNettingDetailAPT1: TFloatField
      FieldName = 'APT1'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsARAPNettingDetailAPT2: TFloatField
      FieldName = 'APT2'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsARAPNettingDetailARTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ARTOTAL'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Calculated = True
    end
    object cdsARAPNettingDetailAPTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'APTOTAL'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Calculated = True
    end
    object cdsARAPNettingDetailBOARDID: TIntegerField
      FieldName = 'BOARDID'
    end
    object cdsARAPNettingDetailACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsARAPNettingDetailACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 50
    end
    object cdsARAPNettingDetailSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsARAPNettingDetailAFFILIATED: TStringField
      FieldName = 'AFFILIATED'
      Size = 1
    end
  end
  object cdsCashOutstanding: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CCY'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BOARDID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SIDEACC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACCTYPE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmReport_qryARAPNettingDetails'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsCashOutstandingCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 568
    Top = 224
    object cdsCashOutstandingSIID: TLargeintField
      FieldName = 'SIID'
      Required = True
    end
    object cdsCashOutstandingSINO: TStringField
      FieldName = 'SINO'
    end
    object cdsCashOutstandingENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashOutstandingTRDDATE: TDateField
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashOutstandingDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashOutstandingSITYPE: TStringField
      FieldName = 'SITYPE'
      Size = 2
    end
    object cdsCashOutstandingSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsCashOutstandingBASE_CCYCODE: TStringField
      FieldName = 'BASE_CCYCODE'
      Size = 5
    end
    object cdsCashOutstandingBASE_NETAMT: TFloatField
      FieldName = 'BASE_NETAMT'
    end
    object cdsCashOutstandingSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsCashOutstandingSETTLE_EXRATE: TFloatField
      FieldName = 'SETTLE_EXRATE'
    end
    object cdsCashOutstandingSETTLE_NETAMT: TFloatField
      FieldName = 'SETTLE_NETAMT'
    end
    object cdsCashOutstandingSETTLED_AMT: TFloatField
      FieldName = 'SETTLED_AMT'
    end
    object cdsCashOutstandingVOUCHERAMT: TFloatField
      FieldName = 'VOUCHERAMT'
    end
    object cdsCashOutstandingSI_DESC: TStringField
      FieldName = 'SI_DESC'
      Size = 150
    end
    object cdsCashOutstandingMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashOutstandingMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashOutstandingSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCashOutstandingPROCESSAMT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PROCESSAMT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashOutstandingOUTSTANDAMT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OUTSTANDAMT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Calculated = True
    end
    object cdsCashOutstandingPROCESSAMT_X: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PROCESSAMT_X'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Calculated = True
    end
    object cdsCashOutstandingOUTSTANDAMT_X: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OUTSTANDAMT_X'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
      Calculated = True
    end
    object cdsCashOutstandingBOARDID: TIntegerField
      FieldName = 'BOARDID'
    end
    object cdsCashOutstandingAR: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AR'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Calculated = True
    end
    object cdsCashOutstandingAP: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AP'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Calculated = True
    end
    object cdsCashOutstandingACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
      Required = True
    end
    object cdsCashOutstandingACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsCashOutstandingACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsCashOutstandingACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsCashOutstandingACC_TYPE: TStringField
      FieldKind = fkCalculated
      FieldName = 'ACC_TYPE'
      Calculated = True
    end
  end
end
