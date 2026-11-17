inherited frmLendBorrowFeeHis: TfrmLendBorrowFeeHis
  Caption = 'Lending / Borrowing Fee History'
  ClientHeight = 433
  ClientWidth = 369
  ExplicitWidth = 375
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 369
    Height = 41
    Align = alTop
    ExplicitWidth = 369
    ExplicitHeight = 41
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 46
      Top = 10
      DataBinding.DataField = 'LBNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'LB No.'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 364
    Width = 369
    ExplicitTop = 364
    ExplicitWidth = 369
    inherited dbNavLog: TDBNavigator
      Left = 255
      Hints.Strings = ()
      ExplicitLeft = 255
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      Index = -1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl2Item2: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      Index = 0
    end
    inherited lcNavLog: TdxLayoutItem
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 413
    Width = 369
    ExplicitTop = 413
    ExplicitWidth = 369
  end
  inherited tabEditorData: TTabSet
    Top = 343
    Width = 369
    ExplicitTop = 343
    ExplicitWidth = 369
  end
  object grdMaster: TcxGrid [4]
    Left = 0
    Top = 41
    Width = 369
    Height = 302
    Align = alClient
    TabOrder = 4
    ExplicitTop = 0
    ExplicitWidth = 691
    ExplicitHeight = 377
    object gvwMaster: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsLBFeeHis
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0;(#,##0)'
          Kind = skSum
          Column = gvwMasterAMOUNT
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwMasterLBID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LBID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterVALUEDATE: TcxGridDBBandedColumn
        Caption = 'Value Date'
        DataBinding.FieldName = 'VALUEDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd mmm yyyy'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCLOSERICE: TcxGridDBBandedColumn
        Caption = 'Close Price'
        DataBinding.FieldName = 'CLOSERICE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        Caption = 'Fee Amount'
        DataBinding.FieldName = 'AMOUNT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsLendBorrow
    Left = 208
    Top = 272
  end
  object cdsLBFeeHis: TNClientDataset
    Aggregates = <>
    DataSetField = cdsLendBorrowqryLBFeeHis
    Params = <
      item
        DataType = ftLargeint
        Name = 'LBID'
        ParamType = ptInput
      end>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 128
    Top = 216
    object cdsLBFeeHisLBID: TLargeintField
      FieldName = 'LBID'
      Required = True
    end
    object cdsLBFeeHisVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsLBFeeHisCLOSERICE: TFloatField
      FieldName = 'CLOSERICE'
      DisplayFormat = '#,##0;(#,##0)'
    end
    object cdsLBFeeHisAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0;(#,##0)'
    end
  end
  object dsLBFeeHis: TDataSource
    DataSet = cdsLBFeeHis
    Left = 128
    Top = 272
  end
  object cdsLendBorrow: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'LBID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryLendBorrow'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 204
    Top = 217
    object cdsLendBorrowLBID: TLargeintField
      FieldName = 'LBID'
      Required = True
    end
    object cdsLendBorrowLBNO: TStringField
      FieldName = 'LBNO'
    end
    object cdsLendBorrowENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLendBorrowLBDATE: TDateField
      FieldName = 'LBDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLendBorrowDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLendBorrowSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsLendBorrowSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsLendBorrowACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsLendBorrowACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsLendBorrowACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsLendBorrowCP_ACCID: TLargeintField
      FieldName = 'CP_ACCID'
    end
    object cdsLendBorrowCP_ACCNO: TStringField
      FieldName = 'CP_ACCNO'
    end
    object cdsLendBorrowCP_ACCNAME: TStringField
      FieldName = 'CP_ACCNAME'
      Size = 100
    end
    object cdsLendBorrowLBTYPE: TStringField
      FieldName = 'LBTYPE'
      Size = 1
    end
    object cdsLendBorrowLB_QTY: TFloatField
      FieldName = 'LB_QTY'
      DisplayFormat = '#,##0;(#,##0)'
    end
    object cdsLendBorrowLB_PRICE: TFloatField
      FieldName = 'LB_PRICE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsLendBorrowLB_CHARGESRATE: TFloatField
      FieldName = 'LB_CHARGESRATE'
      DisplayFormat = '#,##0;(#,##0)'
    end
    object cdsLendBorrowLB_DAY: TIntegerField
      FieldName = 'LB_DAY'
    end
    object cdsLendBorrowLB_TIMEMODE: TStringField
      FieldName = 'LB_TIMEMODE'
      Size = 1
    end
    object cdsLendBorrowARO: TStringField
      FieldName = 'ARO'
      Size = 1
    end
    object cdsLendBorrowCHARGE_PAYDATE: TDateField
      FieldName = 'CHARGE_PAYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLendBorrowPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsLendBorrowPAID: TStringField
      FieldName = 'PAID'
      Size = 1
    end
    object cdsLendBorrowCASH_VOUCHERID: TLargeintField
      FieldName = 'CASH_VOUCHERID'
    end
    object cdsLendBorrowSET2SIDE: TStringField
      FieldName = 'SET2SIDE'
      Size = 1
    end
    object cdsLendBorrowLINK2SIDEID: TLargeintField
      FieldName = 'LINK2SIDEID'
    end
    object cdsLendBorrowMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLendBorrowMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLendBorrowAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLendBorrowAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLendBorrowUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLendBorrowUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLendBorrowNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLendBorrowISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLendBorrowID: TLargeintField
      FieldName = 'ID'
    end
    object cdsLendBorrowOVERDUEDATE: TDateField
      FieldName = 'OVERDUEDATE'
    end
    object cdsLendBorrowOVERDAY: TIntegerField
      FieldName = 'OVERDAY'
    end
    object cdsLendBorrowACCCODETEMP: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCCODETEMP'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsLendBorrowACCNAMETMP: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAMETMP'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 100
      Lookup = True
    end
    object cdsLendBorrowCPACCCODETMP: TStringField
      FieldKind = fkLookup
      FieldName = 'CPACCCODETMP'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'CP_ACCID'
      Size = 30
      Lookup = True
    end
    object cdsLendBorrowCPACCNAMETMP: TStringField
      FieldKind = fkLookup
      FieldName = 'CPACCNAMETMP'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'CP_ACCID'
      Size = 100
      Lookup = True
    end
    object cdsLendBorrowSTOCKCODETMP: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCKCODETMP'
      LookupDataSet = dmLookup.cdsLuInstrumentAll
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'LOCALCODE'
      KeyFields = 'STOCKID'
      Size = 30
      Lookup = True
    end
    object cdsLendBorrowSTOCKNAMETMP: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCKNAMETMP'
      LookupDataSet = dmLookup.cdsLuInstrumentAll
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'SHORTNAME'
      KeyFields = 'STOCKID'
      Size = 150
      Lookup = True
    end
    object cdsLendBorrowPROCESSED: TStringField
      FieldName = 'PROCESSED'
      Size = 1
    end
    object cdsLendBorrowLB_FEEAMT: TFloatField
      FieldName = 'LB_FEEAMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsLendBorrowJRNID: TLargeintField
      FieldName = 'JRNID'
    end
    object cdsLendBorrowRECALL: TStringField
      FieldName = 'RECALL'
      Size = 1
    end
    object cdsLendBorrowRECALL_DATE: TDateField
      FieldName = 'RECALL_DATE'
    end
    object cdsLendBorrowSETTLED: TStringField
      FieldName = 'SETTLED'
      Size = 1
    end
    object cdsLendBorrowCOL_AMT: TFloatField
      FieldName = 'COL_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsLendBorrowLB_DAY_ACTUAL: TIntegerField
      FieldName = 'LB_DAY_ACTUAL'
    end
    object cdsLendBorrowSETTLED_RECALL: TStringField
      FieldName = 'SETTLED_RECALL'
      Size = 1
    end
    object cdsLendBorrowqryLBFeeHis: TDataSetField
      FieldName = 'qryLBFeeHis'
    end
  end
end
