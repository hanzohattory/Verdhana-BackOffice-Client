inherited frmCorpactEntitlementList: TfrmCorpactEntitlementList
  Caption = 'Corporate Action Entitlement'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
          Options.Moving = False
        end
        item
          Caption = 'Insert'
          Options.HoldOwnColumnsOnly = True
          Options.Moving = False
          Styles.Background = dmGlobal.DisableColor
        end
        item
          Caption = 'Generate Wire Transfer'
          Options.HoldOwnColumnsOnly = True
          Options.Moving = False
        end
        item
          Caption = 'Posted'
          Options.HoldOwnColumnsOnly = True
          Options.Moving = False
          Styles.Background = dmGlobal.DisableColor
        end>
      object gvwMasterCAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CAID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCANO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANO'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCATYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CATYPE'
        RepositoryItem = dmGlobal.luCAType
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterRATIO_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RATIO_QTY'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterRATIO_CASH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RATIO_CASH'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterENT_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENT_QTY'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterCA_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CA_QTY'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterCA_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CA_AMT'
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterTAXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TAXRATE'
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterCA_NETAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CA_NETAMT'
        Width = 130
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterINSERT_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSERT_DATE'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterINSERT_SYSTEMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSERT_SYSTEMDATE'
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterINSERT_USER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSERT_USER'
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_SYSTEMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_SYSTEMDATE'
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_DATE'
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED_USER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED_USER'
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterGENERATE_WT_SYSTEMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GENERATE_WT_SYSTEMDATE'
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterGENERATE_WT_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GENERATE_WT_DATE'
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterGENERATE_WT_USER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GENERATE_WT_USER'
        Width = 80
        Position.BandIndex = 2
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
    DataSet = cdsCorpactEntitlementList
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
          ItemName = 'dtExer'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'edPosted'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'edGenerateWT'
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
        end>
    end
    object dtExer: TcxBarEditItem
      Caption = 'Distribution Date'
      Category = 0
      Hint = 'Distribution Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object edPosted: TcxBarEditItem
      Caption = 'Posted'
      Category = 0
      Hint = 'Posted'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Not Posted'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'Posted'
          Value = '1'
        end
        item
          Description = 'All'
          Value = '2'
        end>
    end
    object edGenerateWT: TcxBarEditItem
      Caption = 'Generate Wire Transfer'
      Category = 0
      Hint = 'Generate Wire Transfer'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Not Generated'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'Generated'
          Value = '1'
        end
        item
          Description = 'All'
          Value = '2'
        end>
    end
  end
  object cdsCorpactEntitlementList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DIST_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ALL_POSTED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'POSTED'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ALL_GENERATE_WT'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'GENERATE_WT'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCorpact_Entitlement_List'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsCorpactEntitlementListCAID: TLargeintField
      FieldName = 'CAID'
      Required = True
    end
    object cdsCorpactEntitlementListCANO: TStringField
      DisplayLabel = 'Corpact No'
      FieldName = 'CANO'
      ReadOnly = True
    end
    object cdsCorpactEntitlementListCATYPE: TStringField
      DisplayLabel = 'Corpact Type'
      FieldName = 'CATYPE'
      ReadOnly = True
      Size = 1
    end
    object cdsCorpactEntitlementListSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      ReadOnly = True
    end
    object cdsCorpactEntitlementListSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKCODE'
      ReadOnly = True
    end
    object cdsCorpactEntitlementListSTOCKNAME: TStringField
      DisplayLabel = 'Stock Name'
      FieldName = 'STOCKNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsCorpactEntitlementListACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCorpactEntitlementListACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
    end
    object cdsCorpactEntitlementListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCorpactEntitlementListRATIO_QTY: TStringField
      DisplayLabel = 'Ratio Qty'
      FieldName = 'RATIO_QTY'
      ReadOnly = True
      Size = 11
    end
    object cdsCorpactEntitlementListRATIO_CASH: TStringField
      DisplayLabel = 'Ratio Cash'
      FieldName = 'RATIO_CASH'
      ReadOnly = True
      Size = 11
    end
    object cdsCorpactEntitlementListENT_QTY: TFloatField
      DisplayLabel = 'Entitlement Qty'
      FieldName = 'ENT_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpactEntitlementListCA_QTY: TFloatField
      DisplayLabel = 'Corporate Action Qty'
      FieldName = 'CA_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCorpactEntitlementListCA_AMT: TFloatField
      DisplayLabel = 'Corporate Action Amount'
      FieldName = 'CA_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCorpactEntitlementListTAXRATE: TFloatField
      DisplayLabel = 'Tax Rate'
      FieldName = 'TAXRATE'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCorpactEntitlementListCA_NETAMT: TFloatField
      DisplayLabel = 'CA Net Amount'
      FieldName = 'CA_NETAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCorpactEntitlementListINSERT_SYSTEMDATE: TDateField
      DisplayLabel = 'System Date'
      FieldName = 'INSERT_SYSTEMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactEntitlementListINSERT_DATE: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'INSERT_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss'
    end
    object cdsCorpactEntitlementListINSERT_USER: TStringField
      DisplayLabel = 'User'
      FieldName = 'INSERT_USER'
      Size = 30
    end
    object cdsCorpactEntitlementListPOSTED_SYSTEMDATE: TDateField
      DisplayLabel = 'System Date'
      FieldName = 'POSTED_SYSTEMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactEntitlementListPOSTED_DATE: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'POSTED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss'
    end
    object cdsCorpactEntitlementListPOSTED_USER: TStringField
      DisplayLabel = 'User'
      FieldName = 'POSTED_USER'
      Size = 30
    end
    object cdsCorpactEntitlementListGENERATE_WT_SYSTEMDATE: TDateField
      DisplayLabel = 'System Date'
      FieldName = 'GENERATE_WT_SYSTEMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactEntitlementListGENERATE_WT_DATE: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'GENERATE_WT_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss'
    end
    object cdsCorpactEntitlementListGENERATE_WT_USER: TStringField
      DisplayLabel = 'User'
      FieldName = 'GENERATE_WT_USER'
      Size = 30
    end
  end
end
