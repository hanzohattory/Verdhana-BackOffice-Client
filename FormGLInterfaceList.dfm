inherited frmGLInterfaceList: TfrmGLInterfaceList
  Caption = 'GL Interface'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    RootLevelOptions.DetailTabsPosition = dtpTop
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'TOTALCREDIT'
          Column = gvwMasterTOTALCREDIT
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'TOTALDEBET'
          Column = gvwMasterTOTALDEBET
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'DIFFERENT'
          Column = gvwMasterDIFFERENT
        end>
      object gvwMasterJRNTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JRNTYPE'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterJRNTYPEDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JRNTYPEDESC'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterTRTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRTYPE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterTRANSTYPE_NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSTYPE_NAME'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterCURRENCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CURRENCYCODE'
        Width = 49
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterTOTALDEBET: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTALDEBET'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterTOTALCREDIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTALCREDIT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterDIFFERENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DIFFERENT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterGL_POSTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL_POSTED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
    object gvwDetails: TcxGridDBBandedTableView [1]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsDetails
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'DEBET'
          Column = gvwDetailsDEBET
        end
        item
          Format = '#,##0.00;(#,##0.00);0.00'
          Kind = skSum
          FieldName = 'CREDIT'
          Column = gvwDetailsCREDIT
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      FilterRow.Visible = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Posted'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Reversed'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwDetailsJRNTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JRNTYPE'
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDetailsJRNTYPEDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JRNTYPEDESC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwDetailsTRTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRTYPE'
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwDetailsTRANSTYPE_NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSTYPE_NAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwDetailsHTRANSDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HTRANSDESC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwDetailsTRANSDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSDESC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwDetailsACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Width = 91
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwDetailsACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwDetailsLEDGERCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEDGERCODE'
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwDetailsLEDGERDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEDGERDESC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwDetailsCOA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COA'
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwDetailsCASHID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASHID'
        Width = 43
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwDetailsBNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNCODE'
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwDetailsBANKACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNO'
        Width = 166
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwDetailsEXCHRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXCHRATE'
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwDetailsCURRENCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CURRENCYCODE'
        Width = 49
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwDetailsDEBET: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEBET'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwDetailsCREDIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREDIT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwDetailsLINKTRTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKTRTYPE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwDetailsLINKNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKNO'
        Width = 39
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwDetailsLINKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKID'
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwDetailsREVERSED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Width = 51
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDetailsREVERSED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_DATE'
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwDetailsREVERSED_SYSTEMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_SYSTEMDATE'
        Width = 115
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwDetailsREVERSED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_UI'
        Width = 76
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwDetailsREVERSED_JRNID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_JRNID'
        Width = 103
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwDetailsGL_POSTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL_POSTED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Width = 38
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDetailsGL_POSTED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL_POSTED_DATE'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwDetailsGL_POSTED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL_POSTED_SYSDATE'
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwDetailsGL_POST_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL_POST_UI'
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwDetailsJRNID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JRNID'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwDetailsJRNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JRNCODE'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwDetailsJRNID_REVERSED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JRNID_REVERSED'
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwDetailsJRNCODE_REVERSED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JRNCODE_REVERSED'
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwDetailsLEDGERTRANSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEDGERTRANSID'
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwDetailsSOURCE_LEDGERTRANSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_LEDGERTRANSID'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      Caption = 'GL Interface Summary'
    end
    object grdMasterLevel2: TcxGridLevel
      Caption = 'GL Interface Details'
      GridView = gvwDetails
    end
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'GL Interface'
        Description = 'GL Interface'
      end>
    Left = 288
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
    DataSet = cdsSummary
  end
  inherited aclEditor: TActionList
    object actGLInterfacePost: TNAction
      Category = 'NActions'
      Caption = 'GL Interface Post'
      ImageIndex = 1
      OnExecute = actGLInterfacePostExecute
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object dxBarButton1: TdxBarButton
      Action = actGLInterfacePost
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object cdsDetails: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAccounting_qryGLInterfaceDetails'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 256
    Top = 112
    object cdsDetailsJRNTYPE: TStringField
      DisplayLabel = 'Journal Type'
      FieldName = 'JRNTYPE'
      Size = 3
    end
    object cdsDetailsJRNTYPEDESC: TStringField
      DisplayLabel = 'Journal Type Name'
      FieldName = 'JRNTYPEDESC'
      Size = 50
    end
    object cdsDetailsTRTYPE: TStringField
      DisplayLabel = 'Transaction Type'
      FieldName = 'TRTYPE'
      Size = 4
    end
    object cdsDetailsTRANSTYPE_NAME: TStringField
      DisplayLabel = 'Transaction Name'
      FieldName = 'TRANSTYPE_NAME'
      Size = 50
    end
    object cdsDetailsHTRANSDESC: TStringField
      DisplayLabel = 'Header Description'
      FieldName = 'HTRANSDESC'
      Size = 250
    end
    object cdsDetailsTRANSDESC: TStringField
      DisplayLabel = 'Detail Description'
      FieldName = 'TRANSDESC'
      Size = 250
    end
    object cdsDetailsACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
    end
    object cdsDetailsACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDetailsLEDGERCODE: TStringField
      DisplayLabel = 'Ledger Code'
      FieldName = 'LEDGERCODE'
      Size = 5
    end
    object cdsDetailsLEDGERDESC: TStringField
      DisplayLabel = 'Ledger Description'
      FieldName = 'LEDGERDESC'
      Size = 50
    end
    object cdsDetailsCOA: TStringField
      FieldName = 'COA'
    end
    object cdsDetailsCASHID: TLargeintField
      DisplayLabel = 'Cash ID'
      FieldName = 'CASHID'
    end
    object cdsDetailsBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
    end
    object cdsDetailsBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No'
      FieldName = 'BANKACCNO'
      Size = 50
    end
    object cdsDetailsEXCHRATE: TFloatField
      DisplayLabel = 'Exchange Rate'
      FieldName = 'EXCHRATE'
    end
    object cdsDetailsCURRENCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CURRENCYCODE'
      Size = 5
    end
    object cdsDetailsDEBET: TFloatField
      DisplayLabel = 'Debet'
      FieldName = 'DEBET'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDetailsCREDIT: TFloatField
      DisplayLabel = 'Credit'
      FieldName = 'CREDIT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDetailsLINKTRTYPE: TStringField
      DisplayLabel = 'Link Trans Type'
      FieldName = 'LINKTRTYPE'
    end
    object cdsDetailsLINKNO: TStringField
      DisplayLabel = 'Link No'
      FieldName = 'LINKNO'
    end
    object cdsDetailsLINKID: TLargeintField
      DisplayLabel = 'Link ID'
      FieldName = 'LINKID'
    end
    object cdsDetailsREVERSED: TBooleanField
      DisplayLabel = 'Reversed'
      FieldName = 'REVERSED'
    end
    object cdsDetailsREVERSED_DATE: TDateTimeField
      DisplayLabel = 'Reversed Date'
      FieldName = 'REVERSED_DATE'
      DisplayFormat = 'dd mm yyyy hh:nn:ss'
    end
    object cdsDetailsREVERSED_SYSTEMDATE: TDateField
      DisplayLabel = 'Reversed System Date'
      FieldName = 'REVERSED_SYSTEMDATE'
      DisplayFormat = 'dd mm yyyy'
    end
    object cdsDetailsREVERSED_UI: TStringField
      DisplayLabel = 'Reversed User'
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsDetailsREVERSED_JRNID: TLargeintField
      DisplayLabel = 'Reversed Journal ID'
      FieldName = 'REVERSED_JRNID'
    end
    object cdsDetailsGL_POSTED: TBooleanField
      DisplayLabel = 'Posted'
      FieldName = 'GL_POSTED'
    end
    object cdsDetailsGL_POSTED_DATE: TDateTimeField
      DisplayLabel = 'Posted Date'
      FieldName = 'GL_POSTED_DATE'
      DisplayFormat = 'dd mm yyyy hh:nn:ss'
    end
    object cdsDetailsGL_POSTED_SYSDATE: TDateTimeField
      DisplayLabel = 'Posted System Date'
      FieldName = 'GL_POSTED_SYSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDetailsGL_POST_UI: TStringField
      DisplayLabel = 'Posted User'
      FieldName = 'GL_POST_UI'
      Size = 30
    end
    object cdsDetailsJRNID: TLargeintField
      DisplayLabel = 'Journal ID'
      FieldName = 'JRNID'
    end
    object cdsDetailsJRNCODE: TStringField
      DisplayLabel = 'Journal Code'
      FieldName = 'JRNCODE'
    end
    object cdsDetailsJRNID_REVERSED: TLargeintField
      DisplayLabel = 'Journal Id Reversed'
      FieldName = 'JRNID_REVERSED'
    end
    object cdsDetailsJRNCODE_REVERSED: TStringField
      DisplayLabel = 'Journal Code Reversed'
      FieldName = 'JRNCODE_REVERSED'
    end
    object cdsDetailsLEDGERTRANSID: TLargeintField
      DisplayLabel = 'Ledger Trans Id'
      FieldName = 'LEDGERTRANSID'
    end
    object cdsDetailsSOURCE_LEDGERTRANSID: TLargeintField
      DisplayLabel = 'Source Ledger Trans Id'
      FieldName = 'SOURCE_LEDGERTRANSID'
    end
  end
  object cdsSummary: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAccounting_qryGLInterfaceSummary'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 168
    Top = 112
    object cdsSummaryJRNTYPE: TStringField
      DisplayLabel = 'Journal Type'
      FieldName = 'JRNTYPE'
      Size = 3
    end
    object cdsSummaryJRNTYPEDESC: TStringField
      DisplayLabel = 'Journal Type Name'
      FieldName = 'JRNTYPEDESC'
      Size = 50
    end
    object cdsSummaryTRTYPE: TStringField
      DisplayLabel = 'Transaction Type'
      FieldName = 'TRTYPE'
      Size = 4
    end
    object cdsSummaryTRANSTYPE_NAME: TStringField
      DisplayLabel = 'Transaction Name'
      FieldName = 'TRANSTYPE_NAME'
      Size = 50
    end
    object cdsSummaryCURRENCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CURRENCYCODE'
      Size = 5
    end
    object cdsSummaryTOTALDEBET: TFloatField
      DisplayLabel = 'Total Debet'
      FieldName = 'TOTALDEBET'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSummaryTOTALCREDIT: TFloatField
      DisplayLabel = 'Total Credit'
      FieldName = 'TOTALCREDIT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSummaryDIFFERENT: TFloatField
      DisplayLabel = 'Different'
      FieldName = 'DIFFERENT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSummaryGL_POSTED: TBooleanField
      DisplayLabel = 'Posted'
      FieldName = 'GL_POSTED'
    end
  end
  object dsDetails: TDataSource
    DataSet = cdsDetails
    Left = 336
    Top = 112
  end
end
