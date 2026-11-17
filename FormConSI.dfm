object frmConSI: TfrmConSI
  Left = 0
  Top = 0
  Caption = 'Contract Settlement Instruction'
  ClientHeight = 369
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdMaster: TcxGrid
    Left = 0
    Top = 0
    Width = 792
    Height = 369
    Align = alClient
    TabOrder = 0
    object gvwMaster: TcxGridDBBandedTableView
      PopupMenu = popConSI
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsConSI
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
          Caption = 'Settlement Instruction'
        end>
      object gvwMasterSIID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSINO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SINO'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRYDATE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterVALUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSITYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SITYPE'
        RepositoryItem = dmGlobal.luSIType
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterCASH_STOCK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_STOCK'
        RepositoryItem = dmGlobal.luCashStock
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_SIDE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_SIDE'
        RepositoryItem = dmGlobal.LuPaymentReceiveDeliver
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterINSTRUCTION_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUCTION_TYPE'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterNETTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NETTYPE'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterTRANSFER_MODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSFER_MODE'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterBASE_CCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_CCYCODE'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterBASE_NETAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_NETAMT'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterBANK_CHARGES: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANK_CHARGES'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_CCYCODE'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_EXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_EXRATE'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_NETAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_NETAMT'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterSETTLED_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_AMT'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterTRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDDATE'
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterSETTLEDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLEDDATE'
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterSI_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SI_DESC'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterOLD_SIID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OLD_SIID'
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERAMT'
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERQTY'
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterNO_INTRC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NO_INTRC'
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object gvwMasterSETTLED_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_QTY'
        Position.BandIndex = 0
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object gvwMasterTRF_PRVT_BANK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRF_PRVT_BANK'
        Position.BandIndex = 0
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
      object gvwMasterBANKACCBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCBRANCH'
        Position.BandIndex = 0
        Position.ColIndex = 43
        Position.RowIndex = 0
      end
      object gvwMasterCP_BANKACCBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CP_BANKACCBRANCH'
        Position.BandIndex = 0
        Position.ColIndex = 44
        Position.RowIndex = 0
      end
      object gvwMasterACCSOPID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCSOPID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 45
        Position.RowIndex = 0
      end
      object gvwMasterUSE_ACS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'USE_ACS'
        Position.BandIndex = 0
        Position.ColIndex = 46
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ACCBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_ACCBANKID'
        Position.BandIndex = 0
        Position.ColIndex = 47
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ACCBANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_ACCBANKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 48
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ACCBANKNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_ACCBANKNO'
        Position.BandIndex = 0
        Position.ColIndex = 49
        Position.RowIndex = 0
      end
      object gvwMasterSOURCE_ACCBANKNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOURCE_ACCBANKNAME'
        Position.BandIndex = 0
        Position.ColIndex = 50
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ACCBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TARGET_ACCBANKID'
        Position.BandIndex = 0
        Position.ColIndex = 51
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ACCBANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TARGET_ACCBANKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 52
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ACCBANKNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TARGET_ACCBANKNO'
        Position.BandIndex = 0
        Position.ColIndex = 53
        Position.RowIndex = 0
      end
      object gvwMasterTARGET_ACCBANKNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TARGET_ACCBANKNAME'
        Position.BandIndex = 0
        Position.ColIndex = 54
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  object dsConSI: TDataSource
    DataSet = frmContracts.cdsConSI
    Left = 512
    Top = 184
  end
  object aclConSI: TActionList
    Left = 512
    Top = 232
    object actSplit: TNAction
      Category = 'NActions'
      Caption = 'Split'
      OnExecute = actSplitExecute
      CheckPermission = False
    end
  end
  object cdsSettlementInstruction: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'SIID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qrySettlementInstruction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 168
    object cdsSettlementInstructionSIID: TLargeintField
      FieldName = 'SIID'
      Required = True
    end
    object cdsSettlementInstructionSINO: TStringField
      FieldName = 'SINO'
    end
    object cdsSettlementInstructionVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSettlementInstructionSITYPE: TStringField
      FieldName = 'SITYPE'
      Size = 2
    end
    object cdsSettlementInstructionCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Size = 1
    end
    object cdsSettlementInstructionSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsSettlementInstructionINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsSettlementInstructionNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsSettlementInstructionACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsSettlementInstructionACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsSettlementInstructionACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsSettlementInstructionTRANSFER_MODE: TStringField
      FieldName = 'TRANSFER_MODE'
      Size = 5
    end
    object cdsSettlementInstructionBASE_CCYCODE: TStringField
      FieldName = 'BASE_CCYCODE'
      Size = 5
    end
    object cdsSettlementInstructionBASE_NETAMT: TFloatField
      FieldName = 'BASE_NETAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsSettlementInstructionBANK_CHARGES: TFloatField
      FieldName = 'BANK_CHARGES'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsSettlementInstructionSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsSettlementInstructionSETTLE_EXRATE: TFloatField
      FieldName = 'SETTLE_EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsSettlementInstructionSETTLE_NETAMT: TFloatField
      FieldName = 'SETTLE_NETAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsSettlementInstructionSETTLED_AMT: TFloatField
      FieldName = 'SETTLED_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsSettlementInstructionSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsSettlementInstructionSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsSettlementInstructionQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0'
    end
    object cdsSettlementInstructionTRDDATE: TDateField
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSettlementInstructionDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSettlementInstructionSETTLEDDATE: TDateField
      FieldName = 'SETTLEDDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSettlementInstructionSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsSettlementInstructionOLD_SIID: TLargeintField
      FieldName = 'OLD_SIID'
    end
    object cdsSettlementInstructionMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSettlementInstructionMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSettlementInstructionAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSettlementInstructionAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSettlementInstructionUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsSettlementInstructionUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsSettlementInstructionNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsSettlementInstructionISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSettlementInstructionID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSettlementInstructionVOUCHERAMT: TFloatField
      FieldName = 'VOUCHERAMT'
    end
    object cdsSettlementInstructionVOUCHERQTY: TFloatField
      FieldName = 'VOUCHERQTY'
    end
    object cdsSettlementInstructionCCYRATE_TMP: TFloatField
      FieldKind = fkLookup
      FieldName = 'CCYRATE_TMP'
      LookupDataSet = dmLookup.cdsLuExchangeRate
      LookupKeyFields = 'CCYCODE'
      LookupResultField = 'CCYRATE'
      KeyFields = 'SETTLE_CCYCODE'
      Lookup = True
    end
    object cdsSettlementInstructionENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsSettlementInstructionSI_DESC: TStringField
      FieldName = 'SI_DESC'
      Size = 150
    end
    object cdsSettlementInstructionNO_INTRC: TStringField
      FieldName = 'NO_INTRC'
      Size = 1
    end
    object cdsSettlementInstructionSETTLED_QTY: TFloatField
      FieldName = 'SETTLED_QTY'
    end
    object cdsSettlementInstructionTRF_PRVT_BANK: TStringField
      FieldName = 'TRF_PRVT_BANK'
      Size = 1
    end
    object cdsSettlementInstructionBANKACCBRANCH: TStringField
      FieldName = 'BANKACCBRANCH'
      Size = 150
    end
    object cdsSettlementInstructionCP_BANKACCBRANCH: TStringField
      FieldName = 'CP_BANKACCBRANCH'
      Size = 150
    end
    object cdsSettlementInstructionACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsSettlementInstructionUSE_ACS: TStringField
      FieldName = 'USE_ACS'
      Size = 1
    end
    object cdsSettlementInstructionSOURCE_ACCBANKID: TLargeintField
      FieldName = 'SOURCE_ACCBANKID'
    end
    object cdsSettlementInstructionSOURCE_ACCBANKCODE: TStringField
      FieldName = 'SOURCE_ACCBANKCODE'
      Size = 10
    end
    object cdsSettlementInstructionSOURCE_ACCBANKNO: TStringField
      FieldName = 'SOURCE_ACCBANKNO'
    end
    object cdsSettlementInstructionSOURCE_ACCBANKNAME: TStringField
      FieldName = 'SOURCE_ACCBANKNAME'
      Size = 150
    end
    object cdsSettlementInstructionTARGET_ACCBANKID: TLargeintField
      FieldName = 'TARGET_ACCBANKID'
    end
    object cdsSettlementInstructionTARGET_ACCBANKCODE: TStringField
      FieldName = 'TARGET_ACCBANKCODE'
      Size = 10
    end
    object cdsSettlementInstructionTARGET_ACCBANKNO: TStringField
      FieldName = 'TARGET_ACCBANKNO'
    end
    object cdsSettlementInstructionTARGET_ACCBANKNAME: TStringField
      FieldName = 'TARGET_ACCBANKNAME'
      Size = 150
    end
  end
  object cdsSettleInstrSplit: TNClientDataset
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsSettleInstrSplitNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 224
    Top = 168
    object cdsSettleInstrSplitSIID: TLargeintField
      FieldName = 'SIID'
      Required = True
    end
    object cdsSettleInstrSplitSINO: TStringField
      DisplayLabel = 'SI No.'
      FieldName = 'SINO'
    end
    object cdsSettleInstrSplitVALUEDATE: TDateField
      DisplayLabel = 'Value Date'
      FieldName = 'VALUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSettleInstrSplitSITYPE: TStringField
      DisplayLabel = 'SI Type'
      FieldName = 'SITYPE'
      Size = 2
    end
    object cdsSettleInstrSplitCASH_STOCK: TStringField
      DisplayLabel = 'Cash/Stock'
      FieldName = 'CASH_STOCK'
      Size = 1
    end
    object cdsSettleInstrSplitSETTLE_SIDE: TStringField
      DisplayLabel = 'Settle Side'
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsSettleInstrSplitINSTRUCTION_TYPE: TStringField
      DisplayLabel = 'Instruction Type'
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsSettleInstrSplitNETTYPE: TStringField
      DisplayLabel = 'Net Type'
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsSettleInstrSplitACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsSettleInstrSplitACCNO: TStringField
      DisplayLabel = 'Account No.'
      FieldName = 'ACCNO'
    end
    object cdsSettleInstrSplitACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsSettleInstrSplitTRANSFER_MODE: TStringField
      DisplayLabel = 'Transfer Mode'
      FieldName = 'TRANSFER_MODE'
      Size = 5
    end
    object cdsSettleInstrSplitBASE_CCYCODE: TStringField
      DisplayLabel = 'Base Currency'
      FieldName = 'BASE_CCYCODE'
      Size = 5
    end
    object cdsSettleInstrSplitBASE_NETAMT: TFloatField
      DisplayLabel = 'Base Net Amount'
      FieldName = 'BASE_NETAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsSettleInstrSplitBANK_CHARGES: TFloatField
      DisplayLabel = 'Bank Charges'
      FieldName = 'BANK_CHARGES'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsSettleInstrSplitSETTLE_CCYCODE: TStringField
      DisplayLabel = 'Settle Currency'
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsSettleInstrSplitSETTLE_EXRATE: TFloatField
      DisplayLabel = 'Settle Ex. Rate'
      FieldName = 'SETTLE_EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsSettleInstrSplitSETTLE_NETAMT: TFloatField
      DisplayLabel = 'Settle Net Amount'
      FieldName = 'SETTLE_NETAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsSettleInstrSplitSETTLED_AMT: TFloatField
      DisplayLabel = 'Settle Amount'
      FieldName = 'SETTLED_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsSettleInstrSplitSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsSettleInstrSplitSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKCODE'
    end
    object cdsSettleInstrSplitQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      DisplayFormat = '#,##0'
    end
    object cdsSettleInstrSplitTRDDATE: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSettleInstrSplitDUEDATE: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSettleInstrSplitSETTLEDDATE: TDateField
      DisplayLabel = 'Settle Date'
      FieldName = 'SETTLEDDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSettleInstrSplitSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      Size = 1
    end
    object cdsSettleInstrSplitOLD_SIID: TLargeintField
      FieldName = 'OLD_SIID'
    end
    object cdsSettleInstrSplitMODDA: TDateTimeField
      DisplayLabel = 'Modification Date'
      FieldName = 'MODDA'
    end
    object cdsSettleInstrSplitMODUI: TStringField
      DisplayLabel = 'Modification User'
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSettleInstrSplitAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSettleInstrSplitAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSettleInstrSplitUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsSettleInstrSplitUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsSettleInstrSplitNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsSettleInstrSplitISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSettleInstrSplitID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSettleInstrSplitVOUCHERAMT: TFloatField
      FieldName = 'VOUCHERAMT'
    end
    object cdsSettleInstrSplitVOUCHERQTY: TFloatField
      FieldName = 'VOUCHERQTY'
    end
    object cdsSettleInstrSplitCCYRATE_TMP: TFloatField
      FieldKind = fkLookup
      FieldName = 'CCYRATE_TMP'
      LookupDataSet = dmLookup.cdsLuExchangeRate
      LookupKeyFields = 'CCYCODE'
      LookupResultField = 'CCYRATE'
      KeyFields = 'SETTLE_CCYCODE'
      Lookup = True
    end
    object cdsSettleInstrSplitENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsSettleInstrSplitSI_DESC: TStringField
      FieldName = 'SI_DESC'
      Size = 150
    end
    object cdsSettleInstrSplitNO_INTRC: TStringField
      FieldName = 'NO_INTRC'
      Size = 1
    end
    object cdsSettleInstrSplitSETTLED_QTY: TFloatField
      FieldName = 'SETTLED_QTY'
    end
    object cdsSettleInstrSplitTRF_PRVT_BANK: TStringField
      FieldName = 'TRF_PRVT_BANK'
      Size = 1
    end
    object cdsSettleInstrSplitBANKACCBRANCH: TStringField
      FieldName = 'BANKACCBRANCH'
      Size = 150
    end
    object cdsSettleInstrSplitCP_BANKACCBRANCH: TStringField
      FieldName = 'CP_BANKACCBRANCH'
      Size = 150
    end
    object cdsSettleInstrSplitACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsSettleInstrSplitUSE_ACS: TStringField
      FieldName = 'USE_ACS'
      Size = 1
    end
    object cdsSettleInstrSplitSOURCE_ACCBANKID: TLargeintField
      FieldName = 'SOURCE_ACCBANKID'
      OnChange = cdsSettleInstrSplitSOURCE_ACCBANKIDChange
    end
    object cdsSettleInstrSplitSOURCE_ACCBANKCODE: TStringField
      FieldName = 'SOURCE_ACCBANKCODE'
      Size = 10
    end
    object cdsSettleInstrSplitSOURCE_ACCBANKNO: TStringField
      FieldName = 'SOURCE_ACCBANKNO'
    end
    object cdsSettleInstrSplitSOURCE_ACCBANKNAME: TStringField
      FieldName = 'SOURCE_ACCBANKNAME'
      Size = 150
    end
    object cdsSettleInstrSplitTARGET_ACCBANKID: TLargeintField
      FieldName = 'TARGET_ACCBANKID'
      OnChange = cdsSettleInstrSplitTARGET_ACCBANKIDChange
    end
    object cdsSettleInstrSplitTARGET_ACCBANKCODE: TStringField
      FieldName = 'TARGET_ACCBANKCODE'
      Size = 10
    end
    object cdsSettleInstrSplitTARGET_ACCBANKNO: TStringField
      FieldName = 'TARGET_ACCBANKNO'
    end
    object cdsSettleInstrSplitTARGET_ACCBANKNAME: TStringField
      FieldName = 'TARGET_ACCBANKNAME'
      Size = 150
    end
  end
  object popConSI: TPopupMenu
    Left = 592
    Top = 232
    object Split1: TMenuItem
      Action = actSplit
    end
  end
  object cdsConSettleLink: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryConSettleLink'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 216
    object cdsConSettleLinkSIID: TLargeintField
      FieldName = 'SIID'
      Required = True
    end
    object cdsConSettleLinkLINKID: TLargeintField
      FieldName = 'LINKID'
      Required = True
    end
    object cdsConSettleLinkLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsConSettleLinkLINKSEQID: TIntegerField
      FieldName = 'LINKSEQID'
    end
    object cdsConSettleLinkLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
    end
    object cdsConSettleLinkSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsConSettleLinkMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsConSettleLinkMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsConSettleLinkAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsConSettleLinkAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsConSettleLinkUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsConSettleLinkUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsConSettleLinkNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsConSettleLinkISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsConSettleLinkID: TLargeintField
      FieldName = 'ID'
    end
  end
end
