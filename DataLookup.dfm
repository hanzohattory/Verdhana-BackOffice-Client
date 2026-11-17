object dmLookup: TdmLookup
  Height = 1439
  Width = 1850
  object cdsLuBank: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBank'
    RemoteServer = dmGlobal.dspConnection
    Left = 40
    Top = 16
    object cdsLuBankBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsLuBankBNNAME: TStringField
      DisplayLabel = 'Bank Name'
      FieldName = 'BNNAME'
      Size = 50
    end
    object cdsLuBankBICODE: TStringField
      DisplayLabel = 'BI Code'
      FieldName = 'BICODE'
      Size = 10
    end
  end
  object cdsLuCcy: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCcy'
    RemoteServer = dmGlobal.dspConnection
    Left = 40
    Top = 64
    object cdsLuCcyCCYCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuCcyCCYNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'CCYNAME'
      Size = 50
    end
    object cdsLuCcySPCONACC: TStringField
      DisplayLabel = 'Spot Control Acc'
      FieldName = 'SPCONACC'
    end
    object cdsLuCcySPPOSACC: TStringField
      DisplayLabel = 'Spot Position Acc'
      FieldName = 'SPPOSACC'
    end
  end
  object cdsLuChannel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuChannel'
    RemoteServer = dmGlobal.dspConnection
    Left = 40
    Top = 112
    object cdsLuChannelCHANNELCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CHANNELCODE'
      Required = True
      Size = 10
    end
    object cdsLuChannelCHANNELDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CHANNELDESC'
      Size = 50
    end
  end
  object cdsLuMarket: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuMarket'
    RemoteServer = dmGlobal.dspConnection
    Left = 40
    Top = 160
    object cdsLuMarketMARKETCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuMarketMARKETDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'MARKETDESC'
      Size = 50
    end
    object cdsLuMarketCCY: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsLuMarketFACILITATION_BOARD: TLargeintField
      FieldName = 'FACILITATION_BOARD'
    end
    object cdsLuMarketWAREHOUSE_BOARD: TLargeintField
      FieldName = 'WAREHOUSE_BOARD'
    end
    object cdsLuMarketCROSSTOM_BOARD: TLargeintField
      FieldName = 'CROSSTOM_BOARD'
    end
    object cdsLuMarketVATPCT: TFloatField
      FieldName = 'VATPCT'
    end
    object cdsLuMarketWHTPCT: TFloatField
      FieldName = 'WHTPCT'
    end
    object cdsLuMarketSELLTAX: TFloatField
      FieldName = 'SELLTAX'
    end
    object cdsLuMarketNEGOTOM_BOARD: TLargeintField
      FieldName = 'NEGOTOM_BOARD'
    end
  end
  object dsLuBank: TDataSource
    DataSet = cdsLuBank
    Left = 136
    Top = 16
  end
  object dsLuCcy: TDataSource
    DataSet = cdsLuCcy
    Left = 136
    Top = 64
  end
  object dsLuChannel: TDataSource
    DataSet = cdsLuChannel
    Left = 136
    Top = 112
  end
  object dsLuMarket: TDataSource
    DataSet = cdsLuMarket
    Left = 136
    Top = 160
  end
  object cdsLuInterestTableH: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuInterestTableH'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 16
    object cdsLuInterestTableHINTERESTTABLECODE: TStringField
      FieldName = 'INTERESTTABLECODE'
      Required = True
      Size = 10
    end
    object cdsLuInterestTableHINTERESTTABLEDESC: TStringField
      FieldName = 'INTERESTTABLEDESC'
      Size = 50
    end
    object cdsLuInterestTableHqryLuInterestTableD: TDataSetField
      FieldName = 'qryLuInterestTableD'
    end
  end
  object cdsLuInterestTableD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsLuInterestTableHqryLuInterestTableD
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 64
    object cdsLuInterestTableDINTERESTTABLECODE: TStringField
      FieldName = 'INTERESTTABLECODE'
      Required = True
      Size = 10
    end
    object cdsLuInterestTableDSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsLuInterestTableDSTARTVALUE: TFloatField
      FieldName = 'STARTVALUE'
    end
    object cdsLuInterestTableDENDVALUE: TFloatField
      FieldName = 'ENDVALUE'
    end
    object cdsLuInterestTableDINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
    end
  end
  object cdsLuBoardByMarket: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'MARKETCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuBoardByMarket'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 208
    object cdsLuBoardByMarketBOARDID: TLargeintField
      DisplayLabel = 'ID'
      FieldName = 'BOARDID'
      Required = True
    end
    object cdsLuBoardByMarketBOARDCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'BOARDCODE'
      Required = True
      Size = 10
    end
    object cdsLuBoardByMarketMARKETCODE: TStringField
      DisplayLabel = 'Market'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuBoardByMarketBOARDDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'BOARDDESC'
      Size = 30
    end
    object cdsLuBoardByMarketCPTYPE: TStringField
      FieldName = 'CPTYPE'
      Size = 5
    end
    object cdsLuBoardByMarketCPVALUE: TIntegerField
      FieldName = 'CPVALUE'
    end
  end
  object cdsLuInstrumentType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuInstrumentType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 256
    object cdsLuInstrumentTypeINSTRUMENT_TYPE_CODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuInstrumentTypeINSTRUMENT_TYPE_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'INSTRUMENT_TYPE_DESC'
      Size = 30
    end
  end
  object cdsLuInstrument: TNClientDataset
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'INSTRUMENT_ID'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'INSTRUMENT_CODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LOCALCODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MARKETCODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'INSTRUMENT_TYPE_CODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SHORTNAME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ISINCODE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CCY'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'MARGIN'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cdsLuInstrumentIndex1'
        Fields = 'MARKETCODE;LOCALCODE'
      end>
    IndexFieldNames = 'MARKETCODE;LOCALCODE'
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuInstrument'
    RemoteServer = dmGlobal.dspConnection
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 304
    object cdsLuInstrumentINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsLuInstrumentINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsLuInstrumentLOCALCODE: TStringField
      DisplayLabel = 'Stock Code'
      DisplayWidth = 15
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsLuInstrumentMARKETCODE: TStringField
      DisplayLabel = 'Market'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuInstrumentINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuInstrumentSHORTNAME: TStringField
      DisplayLabel = 'Stock Name'
      DisplayWidth = 60
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object cdsLuInstrumentISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsLuInstrumentCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsLuInstrumentMARGIN: TIntegerField
      DisplayLabel = 'Margin'
      DisplayWidth = 5
      FieldName = 'MARGIN'
    end
  end
  object dsLuBoardByMarket: TDataSource
    DataSet = cdsLuBoardByMarket
    Left = 136
    Top = 208
  end
  object dsLuInstrumentType: TDataSource
    DataSet = cdsLuInstrumentType
    Left = 136
    Top = 256
  end
  object dsLuInstrument: TDataSource
    DataSet = cdsLuInstrument
    Left = 136
    Top = 304
  end
  object cdsLuBoard: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBoard'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 352
    object cdsLuBoardBOARDID: TLargeintField
      DisplayLabel = 'ID'
      FieldName = 'BOARDID'
      Required = True
    end
    object cdsLuBoardBOARDCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'BOARDCODE'
      Required = True
      Size = 10
    end
    object cdsLuBoardMARKETCODE: TStringField
      DisplayLabel = 'Market'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuBoardBOARDDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'BOARDDESC'
      Size = 30
    end
    object cdsLuBoardCPTYPE: TStringField
      FieldName = 'CPTYPE'
      Size = 5
    end
    object cdsLuBoardCPVALUE: TIntegerField
      FieldName = 'CPVALUE'
    end
    object cdsLuBoardDUEBUYSTOCK: TIntegerField
      FieldName = 'DUEBUYSTOCK'
    end
    object cdsLuBoardDUESELLSTOCK: TIntegerField
      FieldName = 'DUESELLSTOCK'
    end
    object cdsLuBoardDUEBUYCASH: TIntegerField
      FieldName = 'DUEBUYCASH'
    end
    object cdsLuBoardDUESELLCASH: TIntegerField
      FieldName = 'DUESELLCASH'
    end
  end
  object dsLuBoard: TDataSource
    DataSet = cdsLuBoard
    Left = 136
    Top = 352
  end
  object cdsLuBroker: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBroker'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 400
    object cdsLuBrokerBROKERCODE: TStringField
      DisplayLabel = 'Broker Code'
      FieldName = 'BROKERCODE'
      Required = True
      Size = 10
    end
    object cdsLuBrokerBROKERNAME: TStringField
      DisplayLabel = 'Broker Name'
      FieldName = 'BROKERNAME'
      Size = 50
    end
    object cdsLuBrokerINTERFEE: TFloatField
      DisplayLabel = 'Inter Fee'
      FieldName = 'INTERFEE'
    end
  end
  object dsLuBroker: TDataSource
    DataSet = cdsLuBroker
    Left = 136
    Top = 400
  end
  object cdsLuChargeTableH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'MARKETCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuChargeTableH'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 112
    object cdsLuChargeTableHCHARGE_TABLE_ID: TLargeintField
      FieldName = 'CHARGE_TABLE_ID'
      Required = True
    end
    object cdsLuChargeTableHCHARGE_TABLE_CODE: TStringField
      FieldName = 'CHARGE_TABLE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuChargeTableHMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuChargeTableHDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
    object cdsLuChargeTableHqryLuChargeTableD: TDataSetField
      FieldName = 'qryLuChargeTableD'
    end
    object cdsLuChargeTableHCCY: TStringField
      FieldKind = fkLookup
      FieldName = 'CCY'
      LookupDataSet = cdsLuMarket
      LookupKeyFields = 'MARKETCODE'
      LookupResultField = 'CCY'
      KeyFields = 'MARKETCODE'
      Size = 5
      Lookup = True
    end
  end
  object cdsLuChargeTableD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsLuChargeTableHqryLuChargeTableD
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 160
    object cdsLuChargeTableDCHARGE_TABLE_ID: TLargeintField
      FieldName = 'CHARGE_TABLE_ID'
      Required = True
    end
    object cdsLuChargeTableDSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsLuChargeTableDSTART_VALUE: TFloatField
      FieldName = 'START_VALUE'
      Required = True
    end
    object cdsLuChargeTableDEND_VALUE: TFloatField
      FieldName = 'END_VALUE'
      Required = True
    end
    object cdsLuChargeTableDBASIS: TStringField
      FieldName = 'BASIS'
      Size = 1
    end
    object cdsLuChargeTableDRATE: TFloatField
      FieldName = 'RATE'
    end
    object cdsLuChargeTableDAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
  end
  object cdsLuCharge: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCharge'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsLuChargeCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 448
    object cdsLuChargeCHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsLuChargeCHARGE_CODE: TStringField
      DisplayLabel = 'Charge Code'
      FieldName = 'CHARGE_CODE'
      Required = True
    end
    object cdsLuChargeMARKETCODE: TStringField
      DisplayLabel = 'Market'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuChargeCHARGE_TYPE: TStringField
      DisplayLabel = 'Charge Type'
      FieldName = 'CHARGE_TYPE'
    end
    object cdsLuChargeCHARGE_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CHARGE_DESC'
      Size = 50
    end
    object cdsLuChargeBASIS: TStringField
      DisplayLabel = 'Basis'
      FieldName = 'BASIS'
      Size = 1
    end
    object cdsLuChargeRATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'RATE'
    end
    object cdsLuChargeRATE_SOURCE: TStringField
      DisplayLabel = 'Rate Source'
      FieldName = 'RATE_SOURCE'
      Size = 2
    end
    object cdsLuChargeAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
    end
    object cdsLuChargeCHARGE_TABLE_ID: TLargeintField
      DisplayLabel = 'Charge Table'
      FieldName = 'CHARGE_TABLE_ID'
    end
    object cdsLuChargeVALIDBUY: TIntegerField
      DisplayLabel = 'Valid Buy'
      FieldName = 'VALIDBUY'
    end
    object cdsLuChargeVALIDSELL: TIntegerField
      DisplayLabel = 'Valid Sell'
      FieldName = 'VALIDSELL'
    end
    object cdsLuChargeDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsLuChargeGLCD: TStringField
      FieldName = 'GLCD'
      Size = 30
    end
    object cdsLuChargeDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldKind = fkCalculated
      FieldName = 'DESCRIPTION'
      Size = 50
      Calculated = True
    end
  end
  object dsLuCharge: TDataSource
    DataSet = cdsLuCharge
    Left = 136
    Top = 448
  end
  object cdsLuCommTableH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'MARKETCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuCommTableH'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 208
    object cdsLuCommTableHCOMM_TABLE_CODE: TStringField
      FieldName = 'COMM_TABLE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuCommTableHMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsLuCommTableHDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
    object cdsLuCommTableHqryLuCommTableD: TDataSetField
      FieldName = 'qryLuCommTableD'
    end
    object cdsLuCommTableHCCY: TStringField
      FieldKind = fkLookup
      FieldName = 'CCY'
      LookupDataSet = cdsLuMarket
      LookupKeyFields = 'MARKETCODE'
      LookupResultField = 'CCY'
      KeyFields = 'MARKETCODE'
      Size = 5
      Lookup = True
    end
  end
  object cdsLuCommTableD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsLuCommTableHqryLuCommTableD
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 256
    object cdsLuCommTableDCOMM_TABLE_CODE: TStringField
      FieldName = 'COMM_TABLE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuCommTableDSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsLuCommTableDSTART_VALUE: TFloatField
      FieldName = 'START_VALUE'
    end
    object cdsLuCommTableDEND_VALUE: TFloatField
      FieldName = 'END_VALUE'
    end
    object cdsLuCommTableDCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
    end
    object cdsLuCommTableDNET_RATE: TFloatField
      FieldName = 'NET_RATE'
    end
  end
  object cdsLuCommission: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCommission'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsLuCommissionCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 496
    object cdsLuCommissionCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
      Required = True
    end
    object cdsLuCommissionCOMM_CODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'COMM_CODE'
      Required = True
      Size = 10
    end
    object cdsLuCommissionMARKETCODE: TStringField
      DisplayLabel = 'Market'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuCommissionCOMM_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'COMM_DESC'
      Size = 50
    end
    object cdsLuCommissionMIN_COMM: TFloatField
      DisplayLabel = 'Min Comm'
      FieldName = 'MIN_COMM'
    end
    object cdsLuCommissionCALC_METHOD: TStringField
      DisplayLabel = 'Calc Method'
      FieldName = 'CALC_METHOD'
      Size = 1
    end
    object cdsLuCommissionCOMM_RATE: TFloatField
      DisplayLabel = 'Comm Rate'
      FieldName = 'COMM_RATE'
    end
    object cdsLuCommissionNET_RATE: TFloatField
      DisplayLabel = 'Net Rate'
      FieldName = 'NET_RATE'
    end
    object cdsLuCommissionCOMM_TABLE: TStringField
      DisplayLabel = 'Comm Table'
      FieldName = 'COMM_TABLE'
      Size = 10
    end
    object cdsLuCommissionDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldKind = fkCalculated
      FieldName = 'DESCRIPTION'
      Size = 50
      Calculated = True
    end
  end
  object dsLuCommission: TDataSource
    DataSet = cdsLuCommission
    Left = 136
    Top = 496
  end
  object cdsLuBranch: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBranch'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 544
    object cdsLuBranchBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
      Required = True
    end
    object cdsLuBranchBRANCHCODE: TStringField
      DisplayLabel = 'Branch Code'
      FieldName = 'BRANCHCODE'
      Required = True
    end
    object cdsLuBranchBRANCHNAME: TStringField
      DisplayLabel = 'Branch Name'
      FieldName = 'BRANCHNAME'
      Size = 50
    end
  end
  object cdsLuDealer: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuDealer'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 592
    object cdsLuDealerDEALERID: TLargeintField
      FieldName = 'DEALERID'
      Required = True
    end
    object cdsLuDealerDEALERCODE: TStringField
      DisplayLabel = 'Dealer Code'
      DisplayWidth = 20
      FieldName = 'DEALERCODE'
      Required = True
      Size = 30
    end
    object cdsLuDealerDEALERNAME: TStringField
      DisplayLabel = 'Dealer Name'
      DisplayWidth = 50
      FieldName = 'DEALERNAME'
      Size = 150
    end
  end
  object dsLuBranch: TDataSource
    DataSet = cdsLuBranch
    Left = 136
    Top = 544
  end
  object dsLuDealer: TDataSource
    DataSet = cdsLuDealer
    Left = 136
    Top = 592
  end
  object cdsLuSalesAgent: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuSalesAgent'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 640
    object cdsLuSalesAgentAGENTID: TLargeintField
      FieldName = 'AGENTID'
      Required = True
    end
    object cdsLuSalesAgentAGENTCODE: TStringField
      DisplayLabel = 'Agent Code'
      FieldName = 'AGENTCODE'
      Required = True
    end
    object cdsLuSalesAgentAGENTNAME: TStringField
      DisplayLabel = 'Agent Name'
      FieldName = 'AGENTNAME'
      Size = 50
    end
  end
  object cdsLuSales: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuSales'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 688
    object cdsLuSalesSALESID: TLargeintField
      FieldName = 'SALESID'
      Required = True
    end
    object cdsLuSalesSALESCODE: TStringField
      DisplayLabel = 'Sales Code'
      FieldName = 'SALESCODE'
      Required = True
    end
    object cdsLuSalesSALESNAME: TStringField
      DisplayLabel = 'Sales Name'
      FieldName = 'SALESNAME'
      Size = 30
    end
    object cdsLuSalesBRANCHID: TLargeintField
      DisplayLabel = 'Branch ID'
      FieldName = 'BRANCHID'
    end
  end
  object dsLuSalesAgent: TDataSource
    DataSet = cdsLuSalesAgent
    Left = 136
    Top = 640
  end
  object dsLuSales: TDataSource
    DataSet = cdsLuSales
    Left = 136
    Top = 688
  end
  object cdsLuFiscalYear: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuFiscalYear'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 904
    Top = 112
    object cdsLuFiscalYearFISCALYEARID: TLargeintField
      FieldName = 'FISCALYEARID'
      Required = True
    end
    object cdsLuFiscalYearFISCALYEARCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'FISCALYEARCODE'
      Required = True
      Size = 10
    end
    object cdsLuFiscalYearFISCALYEARNAME: TStringField
      DisplayLabel = 'Fiscal Year Name'
      FieldName = 'FISCALYEARNAME'
      Size = 80
    end
  end
  object dsLuFiscalYear: TDataSource
    DataSet = cdsLuFiscalYear
    Left = 904
    Top = 160
  end
  object cdsLuAccount: TNClientDataset
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ACCID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ACCCODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ACCNAME'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'ACCINIT'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'SALESID'
        DataType = ftLargeint
      end
      item
        Name = 'INVTYPE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PRDCODE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACCSUBTYPE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'AUTO_ALLOC'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DT_AUTOAVGPRICE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SIDNO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACCTYPE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'KSEI_SID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FULLFLOW'
        Attributes = [faReadonly, faRequired]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'cdsLuAccountIndex1'
        Fields = 'ACCID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'ACCID'
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAccount'
    RemoteServer = dmGlobal.dspConnection
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 448
    object cdsLuAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountACCCODE: TStringField
      DisplayLabel = 'Account Code'
      DisplayWidth = 15
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuAccountACCNAME: TStringField
      DisplayLabel = 'Account Name'
      DisplayWidth = 60
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuAccountSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsLuAccountINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsLuAccountPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsLuAccountACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsLuAccountAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsLuAccountDT_AUTOAVGPRICE: TStringField
      FieldName = 'DT_AUTOAVGPRICE'
      Size = 1
    end
    object cdsLuAccountSIDNO: TStringField
      FieldName = 'SIDNO'
      ReadOnly = True
    end
    object cdsLuAccountACCTYPE: TStringField
      DisplayLabel = 'Account Type'
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsLuAccountKSEI_SID: TStringField
      FieldName = 'KSEI_SID'
    end
    object cdsLuAccountFULLFLOW: TStringField
      FieldName = 'FULLFLOW'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsLuAccountACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
  end
  object dsLuAccount: TDataSource
    DataSet = cdsLuAccount
    Left = 688
    Top = 448
  end
  object cdsLuCounNation: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCounNation'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 358
    Top = 16
    object cdsLuCounNationCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CODE'
      Size = 5
    end
    object cdsLuCounNationCOUNTNAME: TStringField
      DisplayLabel = 'Country'
      FieldName = 'COUNTNAME'
      Size = 50
    end
    object cdsLuCounNationNATIONALITY: TStringField
      DisplayLabel = 'Nationality'
      FieldName = 'NATIONALITY'
      Size = 50
    end
    object cdsLuCounNationRISK: TStringField
      FieldName = 'RISK'
      Size = 1
    end
    object cdsLuCounNationPHONECODE: TIntegerField
      FieldName = 'PHONECODE'
    end
  end
  object cdsLuProvince: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuProvince'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 358
    Top = 64
    object cdsLuProvinceCOUNTCODE: TStringField
      DisplayLabel = 'Country Code'
      FieldName = 'COUNTCODE'
      Required = True
      Size = 5
    end
    object cdsLuProvincePROVCODE: TStringField
      DisplayLabel = 'Province Code'
      FieldName = 'PROVCODE'
      Required = True
      Size = 10
    end
    object cdsLuProvincePROVNAME: TStringField
      DisplayLabel = 'Province Name'
      FieldName = 'PROVNAME'
      Required = True
      Size = 50
    end
  end
  object cdsLuCity: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCity'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 358
    Top = 112
    object cdsLuCityCITYCODE: TStringField
      DisplayLabel = 'City Code'
      FieldName = 'CITYCODE'
      Required = True
      Size = 10
    end
    object cdsLuCityCITYNAME: TStringField
      DisplayLabel = 'City Name'
      FieldName = 'CITYNAME'
      Size = 50
    end
    object cdsLuCityPROVCODE: TStringField
      DisplayLabel = 'Province Code'
      FieldName = 'PROVCODE'
      Required = True
      Size = 10
    end
  end
  object dsLuCounNation: TDataSource
    DataSet = cdsLuCounNation
    Left = 467
    Top = 16
  end
  object dsLuProvince: TDataSource
    DataSet = cdsLuProvince
    Left = 467
    Top = 64
  end
  object dsLuCity: TDataSource
    DataSet = cdsLuCity
    Left = 467
    Top = 112
  end
  object cdsLuSecAnnualIncome: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuSecAnnualIncome'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 358
    Top = 160
    object cdsLuSecAnnualIncomeSEC_INCCODE: TIntegerField
      DisplayLabel = 'Code'
      FieldName = 'SEC_INCCODE'
      Required = True
    end
    object cdsLuSecAnnualIncomeSEC_INCDESC: TStringField
      DisplayLabel = 'Annual Income'
      FieldName = 'SEC_INCDESC'
      Size = 50
    end
    object cdsLuSecAnnualIncomeKSEI_INCCODE: TIntegerField
      FieldName = 'KSEI_INCCODE'
      Required = True
    end
  end
  object dsSecAnnualIncome: TDataSource
    DataSet = cdsLuSecAnnualIncome
    Left = 467
    Top = 160
  end
  object cdsLuCommByMarket: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'MARKETCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuCommByMarket'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsLuCommByMarketCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 358
    Top = 207
    object cdsLuCommByMarketCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
      Required = True
    end
    object cdsLuCommByMarketCOMM_CODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'COMM_CODE'
      Required = True
      Size = 10
    end
    object cdsLuCommByMarketMARKETCODE: TStringField
      DisplayLabel = 'Market'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuCommByMarketCOMM_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'COMM_DESC'
      Size = 50
    end
    object cdsLuCommByMarketMIN_COMM: TFloatField
      DisplayLabel = 'Min Comm'
      FieldName = 'MIN_COMM'
    end
    object cdsLuCommByMarketCALC_METHOD: TStringField
      DisplayLabel = 'Calc Method'
      FieldName = 'CALC_METHOD'
      Size = 1
    end
    object cdsLuCommByMarketCOMM_RATE: TFloatField
      DisplayLabel = 'Comm Rate'
      FieldName = 'COMM_RATE'
    end
    object cdsLuCommByMarketNET_RATE: TFloatField
      DisplayLabel = 'Net Rate'
      FieldName = 'NET_RATE'
    end
    object cdsLuCommByMarketCOMM_TABLE: TStringField
      DisplayLabel = 'Comm Table'
      FieldName = 'COMM_TABLE'
      Size = 10
    end
    object cdsLuCommByMarketDESCRIPTION: TStringField
      FieldKind = fkCalculated
      FieldName = 'DESCRIPTION'
      Size = 50
      Calculated = True
    end
  end
  object dsLuCommByMarket: TDataSource
    DataSet = cdsLuCommByMarket
    Left = 467
    Top = 207
  end
  object dsCommissionX: TDataSource
    DataSet = cdsLuCommissionX
    Left = 468
    Top = 254
  end
  object cdsLuCommissionX: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCommission'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 358
    Top = 255
    object cdsLuCommissionXCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
      Required = True
    end
    object cdsLuCommissionXCOMM_CODE: TStringField
      FieldName = 'COMM_CODE'
      Required = True
      Size = 10
    end
    object cdsLuCommissionXMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuCommissionXCOMM_DESC: TStringField
      FieldName = 'COMM_DESC'
      Size = 50
    end
    object cdsLuCommissionXMIN_COMM: TFloatField
      FieldName = 'MIN_COMM'
    end
    object cdsLuCommissionXCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 1
    end
    object cdsLuCommissionXCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
    end
    object cdsLuCommissionXNET_RATE: TFloatField
      FieldName = 'NET_RATE'
    end
    object cdsLuCommissionXCOMM_TABLE: TStringField
      FieldName = 'COMM_TABLE'
      Size = 10
    end
  end
  object cdsLuChargeByMarket: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'MARKETCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuChargeByMarket'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsLuChargeByMarketCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 360
    Top = 304
    object cdsLuChargeByMarketCHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsLuChargeByMarketCHARGE_CODE: TStringField
      DisplayLabel = 'Charge Code'
      FieldName = 'CHARGE_CODE'
      Required = True
    end
    object cdsLuChargeByMarketMARKETCODE: TStringField
      DisplayLabel = 'Market'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuChargeByMarketCHARGE_TYPE: TStringField
      DisplayLabel = 'Charge Type'
      FieldName = 'CHARGE_TYPE'
    end
    object cdsLuChargeByMarketCHARGE_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CHARGE_DESC'
      Size = 50
    end
    object cdsLuChargeByMarketBASIS: TStringField
      DisplayLabel = 'Basis'
      FieldName = 'BASIS'
      Size = 1
    end
    object cdsLuChargeByMarketRATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'RATE'
    end
    object cdsLuChargeByMarketRATE_SOURCE: TStringField
      DisplayLabel = 'Rate Source'
      FieldName = 'RATE_SOURCE'
      Size = 2
    end
    object cdsLuChargeByMarketAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
    end
    object cdsLuChargeByMarketCHARGE_TABLE_ID: TLargeintField
      DisplayLabel = 'Charge Table'
      FieldName = 'CHARGE_TABLE_ID'
    end
    object cdsLuChargeByMarketVALIDBUY: TIntegerField
      DisplayLabel = 'Valid Buy'
      FieldName = 'VALIDBUY'
    end
    object cdsLuChargeByMarketVALIDSELL: TIntegerField
      DisplayLabel = 'Valid Sell'
      FieldName = 'VALIDSELL'
    end
    object cdsLuChargeByMarketDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsLuChargeByMarketGLCD: TStringField
      FieldName = 'GLCD'
      Size = 30
    end
    object cdsLuChargeByMarketDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldKind = fkCalculated
      FieldName = 'DESCRIPTION'
      Size = 50
      Calculated = True
    end
  end
  object dsLuChargeByMarket: TDataSource
    DataSet = cdsLuChargeByMarket
    Left = 472
    Top = 304
  end
  object cdsLuProductType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuProductType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 16
    object cdsLuProductTypePRDTYPE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'PRDTYPE'
      Required = True
      Size = 10
    end
    object cdsLuProductTypePRDTYPEDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'PRDTYPEDESC'
      Size = 50
    end
  end
  object cdsLuProduct: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuProduct'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 64
    object cdsLuProductPRDCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'PRDCODE'
      Required = True
      Size = 10
    end
    object cdsLuProductPRDDESC: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 50
      FieldName = 'PRDDESC'
      Size = 50
    end
    object cdsLuProductPRDTYPE: TStringField
      DisplayLabel = 'Product Type'
      FieldName = 'PRDTYPE'
      Required = True
      Size = 10
    end
  end
  object dsLuProductType: TDataSource
    DataSet = cdsLuProductType
    Left = 688
    Top = 16
  end
  object dsLuProduct: TDataSource
    DataSet = cdsLuProduct
    Left = 688
    Top = 64
  end
  object cdsLuActLedgerType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuActLedgerType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 112
    object cdsLuActLedgerTypeALTYPE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsLuActLedgerTypeALDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 50
      FieldName = 'ALDESCRIPTION'
      Size = 80
    end
    object cdsLuActLedgerTypeALSYSTEM: TStringField
      DisplayLabel = 'Interface System'
      DisplayWidth = 30
      FieldName = 'ALSYSTEM'
      Size = 50
    end
    object cdsLuActLedgerTypeGL_SUBGL: TStringField
      DisplayLabel = 'GL / SubGL'
      FieldName = 'GL_SUBGL'
      Size = 1
    end
    object cdsLuActLedgerTypeCASH_STOCK: TStringField
      DisplayLabel = 'Cash / Stock'
      FieldName = 'CASH_STOCK'
      Size = 1
    end
  end
  object dsLuActLedgerType: TDataSource
    DataSet = cdsLuActLedgerType
    Left = 688
    Top = 112
  end
  object cdsLuExtConfSystem: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuExtConfSystem'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 363
    Top = 349
    object cdsLuExtConfSystemEXTCONFCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'EXTCONFCODE'
      Size = 3
    end
    object cdsLuExtConfSystemEXTCONFDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'EXTCONFDESC'
    end
  end
  object dsLuExtConfSystem: TDataSource
    DataSet = cdsLuExtConfSystem
    Left = 468
    Top = 349
  end
  object cdsLuActLedgerClass: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuActLedgerClass'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 160
    object cdsLuActLedgerClassALCLASSID: TIntegerField
      FieldName = 'ALCLASSID'
      Required = True
    end
    object cdsLuActLedgerClassALCLASSCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'ALCLASSCODE'
      Required = True
    end
    object cdsLuActLedgerClassALCLASSDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'ALCLASSDESC'
      Size = 80
    end
  end
  object dsLuActLedgerClass: TDataSource
    DataSet = cdsLuActLedgerClass
    Left = 688
    Top = 160
  end
  object cdsLuTradingLimitClass: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuTradingLimitClass'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 207
    object cdsLuTradingLimitClassTLCLASSID: TIntegerField
      FieldName = 'TLCLASSID'
      Required = True
    end
    object cdsLuTradingLimitClassTLCLASSCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'TLCLASSCODE'
      Required = True
      Size = 10
    end
    object cdsLuTradingLimitClassTLCLASSDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'TLCLASSDESC'
      Size = 50
    end
    object cdsLuTradingLimitClassPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Required = True
      Size = 10
    end
    object cdsLuTradingLimitClassPRDTYPE: TStringField
      FieldName = 'PRDTYPE'
      Required = True
      Size = 10
    end
    object cdsLuTradingLimitClassTLB_CHK: TStringField
      FieldName = 'TLB_CHK'
      Size = 1
    end
    object cdsLuTradingLimitClassTLB_CHK_MODEL: TStringField
      FieldName = 'TLB_CHK_MODEL'
      Size = 10
    end
    object cdsLuTradingLimitClassTLB_CHK_STOCK: TStringField
      FieldName = 'TLB_CHK_STOCK'
      Size = 1
    end
    object cdsLuTradingLimitClassTLB_CHK_OVERLIMIT: TStringField
      FieldName = 'TLB_CHK_OVERLIMIT'
      Size = 1
    end
    object cdsLuTradingLimitClassTLB_CHK_OVERDUE: TStringField
      FieldName = 'TLB_CHK_OVERDUE'
      Size = 1
    end
    object cdsLuTradingLimitClassTLB_CHK_STSNOTVALID: TStringField
      FieldName = 'TLB_CHK_STSNOTVALID'
      Size = 1
    end
    object cdsLuTradingLimitClassTLB_CHK_MRGNONMRG: TStringField
      FieldName = 'TLB_CHK_MRGNONMRG'
      Size = 1
    end
    object cdsLuTradingLimitClassTLS_CHK: TStringField
      FieldName = 'TLS_CHK'
      Size = 1
    end
    object cdsLuTradingLimitClassTLS_CHK_MODEL: TStringField
      FieldName = 'TLS_CHK_MODEL'
      Size = 10
    end
    object cdsLuTradingLimitClassTLS_CHK_SHORTSELL: TStringField
      FieldName = 'TLS_CHK_SHORTSELL'
      Size = 1
    end
    object cdsLuTradingLimitClassTLS_SSNONSS: TStringField
      FieldName = 'TLS_SSNONSS'
      Size = 1
    end
    object cdsLuTradingLimitClassTLS_CHK_OVERDUE: TStringField
      FieldName = 'TLS_CHK_OVERDUE'
      Size = 1
    end
    object cdsLuTradingLimitClassTLS_CHK_STSNOTVALID: TStringField
      FieldName = 'TLS_CHK_STSNOTVALID'
      Size = 1
    end
    object cdsLuTradingLimitClassCASH_VAL: TFloatField
      FieldName = 'CASH_VAL'
    end
    object cdsLuTradingLimitClassSTOCK_VAL: TFloatField
      FieldName = 'STOCK_VAL'
    end
  end
  object dsLuTradingLimitClass: TDataSource
    DataSet = cdsLuTradingLimitClass
    Left = 688
    Top = 207
  end
  object cdsLuInterest: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuInterest'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsLuInterestCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 255
    object cdsLuInterestINTERESTCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'INTERESTCODE'
      Required = True
      Size = 10
    end
    object cdsLuInterestCCY: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCY'
      Size = 5
    end
    object cdsLuInterestINTERESTDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'INTERESTDESC'
      Size = 50
    end
    object cdsLuInterestCALCMETHOD: TStringField
      DisplayLabel = 'Calc Method'
      FieldName = 'CALCMETHOD'
      Size = 1
    end
    object cdsLuInterestINTERESTRATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'INTERESTRATE'
    end
    object cdsLuInterestINTERESTTABLE: TStringField
      DisplayLabel = 'Table'
      FieldName = 'INTERESTTABLE'
      Size = 10
    end
    object cdsLuInterestCALCBASIS: TStringField
      DisplayLabel = 'Calc Basis'
      FieldName = 'CALCBASIS'
      Size = 1
    end
    object cdsLuInterestINTERESTDAY: TIntegerField
      DisplayLabel = 'Interest Day'
      FieldName = 'INTERESTDAY'
    end
    object cdsLuInterestISACCRUE: TSmallintField
      DisplayLabel = 'IsAccrue'
      FieldName = 'ISACCRUE'
    end
    object cdsLuInterestDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldKind = fkCalculated
      FieldName = 'DESCRIPTION'
      Size = 80
      Calculated = True
    end
  end
  object dsLuInterest: TDataSource
    DataSet = cdsLuInterest
    Left = 688
    Top = 256
  end
  object cdsLuGroupAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'GROUPID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuGroupAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 304
    object cdsLuGroupAccountGROUPID: TIntegerField
      FieldName = 'GROUPID'
      Required = True
    end
    object cdsLuGroupAccountGROUPCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'GROUPCODE'
      Required = True
    end
    object cdsLuGroupAccountGROUPNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'GROUPNAME'
      Size = 50
    end
    object cdsLuGroupAccountGROUPDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'GROUPDESC'
      ReadOnly = True
      Size = 73
    end
    object cdsLuGroupAccountGROUPPARENTID: TIntegerField
      FieldName = 'GROUPPARENTID'
    end
  end
  object dsLuGroupAccount: TDataSource
    DataSet = cdsLuGroupAccount
    Left = 688
    Top = 304
  end
  object cdsLuBusinessType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBusinessType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 360
    Top = 400
    object cdsLuBusinessTypeBUSTYPEID: TLargeintField
      FieldName = 'BUSTYPEID'
      Required = True
    end
    object cdsLuBusinessTypeBUSTYPECODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'BUSTYPECODE'
      Required = True
      Size = 10
    end
    object cdsLuBusinessTypeBUSTYPEDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'BUSTYPEDESC'
      Size = 50
    end
  end
  object dsLuBusinessType: TDataSource
    DataSet = cdsLuBusinessType
    Left = 464
    Top = 400
  end
  object cdsLuJrnType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuJrnType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 792
    Top = 16
    object cdsLuJrnTypeJRNTYPE: TStringField
      FieldName = 'JRNTYPE'
      Required = True
    end
    object cdsLuJrnTypeJRNTYPEDESC: TStringField
      FieldName = 'JRNTYPEDESC'
      Size = 50
    end
    object cdsLuJrnTypeJRNMANUAL: TStringField
      FieldName = 'JRNMANUAL'
      Size = 1
    end
  end
  object dsLuJrnType: TDataSource
    DataSet = cdsLuJrnType
    Left = 792
    Top = 64
  end
  object cdsLuCPCenter: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCPCenter'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 792
    Top = 112
    object cdsLuCPCenterCPID: TLargeintField
      FieldName = 'CPID'
    end
    object cdsLuCPCenterCPCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CPCODE'
    end
    object cdsLuCPCenterCPDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CPDESC'
      Size = 50
    end
  end
  object dsLuCPCenter: TDataSource
    DataSet = cdsLuCPCenter
    Left = 792
    Top = 160
  end
  object cdsLuGLAccount: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuGLAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 792
    Top = 208
    object cdsLuGLAccountGLACCOUNTID: TIntegerField
      FieldName = 'GLACCOUNTID'
      Required = True
    end
    object cdsLuGLAccountGLACCOUNTCODE: TStringField
      FieldName = 'GLACCOUNTCODE'
      Required = True
      Size = 30
    end
    object cdsLuGLAccountGLACCOUNTNAME: TStringField
      FieldName = 'GLACCOUNTNAME'
      Size = 100
    end
    object cdsLuGLAccountCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsLuGLAccountPLBS: TStringField
      FieldName = 'PLBS'
      Size = 1
    end
    object cdsLuGLAccountTRXSTATUS: TStringField
      FieldName = 'TRXSTATUS'
      Size = 1
    end
    object cdsLuGLAccountGLACCOUNTSTATUS: TStringField
      FieldName = 'GLACCOUNTSTATUS'
      Size = 1
    end
  end
  object dsLuGLAccount: TDataSource
    DataSet = cdsLuGLAccount
    Left = 792
    Top = 256
  end
  object cdsLuEvent: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuEvent'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 904
    Top = 16
    object cdsLuEventEVID: TIntegerField
      FieldName = 'EVID'
      Required = True
    end
    object cdsLuEventEVNAME: TStringField
      FieldName = 'EVNAME'
      Size = 80
    end
    object cdsLuEventEVSTARTDATE: TDateField
      FieldName = 'EVSTARTDATE'
    end
    object cdsLuEventEVENDDATE: TDateField
      FieldName = 'EVENDDATE'
    end
    object cdsLuEventEVSTATUS: TStringField
      FieldName = 'EVSTATUS'
      Size = 5
    end
    object cdsLuEventPIC: TStringField
      FieldName = 'PIC'
      Size = 30
    end
    object cdsLuEventEVDESCRIPTION: TStringField
      FieldName = 'EVDESCRIPTION'
      Size = 50
    end
  end
  object dsLuEvent: TDataSource
    DataSet = cdsLuEvent
    Left = 904
    Top = 64
  end
  object cdsluGLPeriod: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SEL1'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'FISCALYEARID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEL2'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuGLPeriod'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 904
    Top = 208
    object cdsluGLPeriodPERIODID: TLargeintField
      FieldName = 'PERIODID'
      Required = True
    end
    object cdsluGLPeriodPERIODCODE: TStringField
      FieldName = 'PERIODCODE'
      Required = True
      Size = 10
    end
    object cdsluGLPeriodPERIODNAME: TStringField
      FieldName = 'PERIODNAME'
      Size = 80
    end
    object cdsluGLPeriodSTARTDATE: TDateField
      FieldName = 'STARTDATE'
      Required = True
    end
    object cdsluGLPeriodENDDATE: TDateField
      FieldName = 'ENDDATE'
      Required = True
    end
    object cdsluGLPeriodFISCALYEARID: TLargeintField
      FieldName = 'FISCALYEARID'
      Required = True
    end
    object cdsluGLPeriodSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsluGLPeriodSPECIAL: TStringField
      FieldName = 'SPECIAL'
      Size = 1
    end
  end
  object dsluGLPeriod: TDataSource
    DataSet = cdsluGLPeriod
    Left = 904
    Top = 256
  end
  object cdsGLAccountByID: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'GLACCOUNTID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryGLAccountByID'
    RemoteServer = dmGlobal.dspConnection
    Left = 1032
    Top = 112
    object cdsGLAccountByIDGLACCOUNTID: TIntegerField
      FieldName = 'GLACCOUNTID'
      Required = True
    end
    object cdsGLAccountByIDGLACCOUNTCODE: TStringField
      FieldName = 'GLACCOUNTCODE'
      Required = True
      Size = 30
    end
    object cdsGLAccountByIDGLACCOUNTNAME: TStringField
      FieldName = 'GLACCOUNTNAME'
      Size = 100
    end
    object cdsGLAccountByIDCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsGLAccountByIDPLBS: TStringField
      FieldName = 'PLBS'
      Size = 1
    end
    object cdsGLAccountByIDTRXSTATUS: TStringField
      FieldName = 'TRXSTATUS'
      Size = 1
    end
    object cdsGLAccountByIDGLACCOUNTSTATUS: TStringField
      FieldName = 'GLACCOUNTSTATUS'
      Size = 1
    end
    object cdsGLAccountByIDGROUPID: TIntegerField
      FieldName = 'GROUPID'
      Required = True
    end
  end
  object cdsMaxExRateByCCY: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CCY'
        ParamType = ptInput
        Value = ''
      end>
    ProviderName = 'dspN_dmAccounting_qryMaxExRateByCCY'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1032
    Top = 64
    object cdsMaxExRateByCCYCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsMaxExRateByCCYCONVERSION_VALUE: TFloatField
      FieldName = 'CONVERSION_VALUE'
      ReadOnly = True
      Required = True
    end
    object cdsMaxExRateByCCYINVERSE_CONVERSION_VALUE: TFloatField
      FieldName = 'INVERSE_CONVERSION_VALUE'
      ReadOnly = True
      Required = True
    end
    object cdsMaxExRateByCCYEFFECTIVE_DATE: TDateField
      FieldName = 'EFFECTIVE_DATE'
      ReadOnly = True
      Required = True
    end
    object cdsMaxExRateByCCYSPCONACC: TStringField
      FieldName = 'SPCONACC'
    end
    object cdsMaxExRateByCCYSPCONACCID: TLargeintField
      FieldName = 'SPCONACCID'
    end
    object cdsMaxExRateByCCYSPPOSACC: TStringField
      FieldName = 'SPPOSACC'
    end
    object cdsMaxExRateByCCYSPPOSACCID: TLargeintField
      FieldName = 'SPPOSACCID'
    end
  end
  object cdsGLPeriodByDate: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'STARTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'ENDDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryGLPeriodByDate'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1032
    Top = 16
    object cdsGLPeriodByDatePERIODID: TLargeintField
      FieldName = 'PERIODID'
      Required = True
    end
    object cdsGLPeriodByDatePERIODCODE: TStringField
      FieldName = 'PERIODCODE'
      Required = True
      Size = 10
    end
    object cdsGLPeriodByDatePERIODNAME: TStringField
      FieldName = 'PERIODNAME'
      Size = 80
    end
    object cdsGLPeriodByDateSTARTDATE: TDateField
      FieldName = 'STARTDATE'
      Required = True
    end
    object cdsGLPeriodByDateENDDATE: TDateField
      FieldName = 'ENDDATE'
      Required = True
    end
    object cdsGLPeriodByDateFISCALYEARID: TLargeintField
      FieldName = 'FISCALYEARID'
      Required = True
    end
    object cdsGLPeriodByDateSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsGLPeriodByDateSPECIAL: TStringField
      FieldName = 'SPECIAL'
      Size = 1
    end
  end
  object cdsFiscalYearByDate: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'STARTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'ENDDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryFiscalYearByDate'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1032
    Top = 160
    object cdsFiscalYearByDateFISCALYEARID: TLargeintField
      FieldName = 'FISCALYEARID'
      Required = True
    end
    object cdsFiscalYearByDateFISCALYEARCODE: TStringField
      FieldName = 'FISCALYEARCODE'
      Required = True
      Size = 10
    end
    object cdsFiscalYearByDateFISCALYEARNAME: TStringField
      FieldName = 'FISCALYEARNAME'
      Size = 80
    end
    object cdsFiscalYearByDateSTARTDATE: TDateField
      FieldName = 'STARTDATE'
      Required = True
    end
    object cdsFiscalYearByDateENDDATE: TDateField
      FieldName = 'ENDDATE'
      Required = True
    end
    object cdsFiscalYearByDateSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object cdsGLPeriodByCode: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PERIODCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryGLPeridByCode'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1032
    Top = 216
    object cdsGLPeriodByCodePERIODID: TLargeintField
      FieldName = 'PERIODID'
      Required = True
    end
    object cdsGLPeriodByCodePERIODCODE: TStringField
      FieldName = 'PERIODCODE'
      Required = True
      Size = 10
    end
    object cdsGLPeriodByCodePERIODNAME: TStringField
      FieldName = 'PERIODNAME'
      Size = 80
    end
    object cdsGLPeriodByCodeSTARTDATE: TDateField
      FieldName = 'STARTDATE'
      Required = True
    end
    object cdsGLPeriodByCodeENDDATE: TDateField
      FieldName = 'ENDDATE'
      Required = True
    end
    object cdsGLPeriodByCodeFISCALYEARID: TLargeintField
      FieldName = 'FISCALYEARID'
      Required = True
    end
    object cdsGLPeriodByCodeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsGLPeriodByCodeSPECIAL: TStringField
      FieldName = 'SPECIAL'
      Size = 1
    end
  end
  object cdsLuActLedCashByAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuActLedCashByAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 448
    object cdsLuActLedCashByAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuActLedCashByAccountSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsLuActLedCashByAccountALTYPE: TStringField
      DisplayLabel = 'Ledger Type'
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsLuActLedCashByAccountALCODE: TStringField
      DisplayLabel = 'Ledger Code'
      FieldName = 'ALCODE'
      Size = 30
    end
    object cdsLuActLedCashByAccountALDESC: TStringField
      DisplayLabel = 'Ledger Description'
      DisplayWidth = 60
      FieldName = 'ALDESC'
      Size = 100
    end
  end
  object cdsLuActLedStockByAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuActLedStockByAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 496
    object cdsLuActLedStockByAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuActLedStockByAccountSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsLuActLedStockByAccountALTYPE: TStringField
      DisplayLabel = 'Ledger Type'
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsLuActLedStockByAccountALCODE: TStringField
      DisplayLabel = 'Ledger Code'
      FieldName = 'ALCODE'
      Size = 30
    end
    object cdsLuActLedStockByAccountALDESC: TStringField
      DisplayLabel = 'Ledger Description'
      FieldName = 'ALDESC'
      Size = 100
    end
  end
  object cdsLuBankByAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankByAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 544
    object cdsLuBankByAccountACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuBankByAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuBankByAccountBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      DisplayWidth = 10
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuBankByAccountBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      DisplayWidth = 15
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuBankByAccountBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      DisplayWidth = 30
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuBankByAccountBANKBRANCH: TStringField
      DisplayLabel = 'Bank Branch'
      DisplayWidth = 25
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuBankByAccountACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuBankByAccountCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuBankByAccountBANK_DEFAULT: TStringField
      FieldName = 'BANK_DEFAULT'
      Size = 1
    end
  end
  object dsLuActLedCashByAccount: TDataSource
    DataSet = cdsLuActLedCashByAccount
    Left = 392
    Top = 448
  end
  object dsLuActLedStockByAccount: TDataSource
    DataSet = cdsLuActLedStockByAccount
    Left = 392
    Top = 496
  end
  object dsLuBankByAccount: TDataSource
    DataSet = cdsLuBankByAccount
    Left = 392
    Top = 544
  end
  object dsLuBankRDNByAccount: TDataSource
    DataSet = cdsLuBankRDNByAccount
    Left = 392
    Top = 592
  end
  object cdsLuTradingAccount: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuTradingAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 352
    object cdsLuTradingAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuTradingAccountACCCODE: TStringField
      DisplayLabel = 'Account Code'
      DisplayWidth = 15
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuTradingAccountACCNAME: TStringField
      DisplayLabel = 'Account Name'
      DisplayWidth = 60
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuTradingAccountACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 10
    end
    object cdsLuTradingAccountACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsLuTradingAccountACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsLuTradingAccountENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsLuTradingAccountSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsLuTradingAccountOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsLuTradingAccountAVGPRICEDEC: TSmallintField
      DisplayLabel = 'Average Price Decimal Point'
      FieldName = 'AVGPRICEDEC'
    end
    object cdsLuTradingAccountAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
  end
  object cdsLuAccountByEntity: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ENTTID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuAccountByEntity'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 400
    object cdsLuAccountByEntityACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountByEntityACCCODE: TStringField
      DisplayLabel = 'Account Code'
      DisplayWidth = 15
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuAccountByEntityACCNAME: TStringField
      DisplayLabel = 'Account Name'
      DisplayWidth = 60
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuAccountByEntityACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 10
    end
    object cdsLuAccountByEntityACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsLuAccountByEntityACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsLuAccountByEntityENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
  end
  object dsLuTradingAccount: TDataSource
    DataSet = cdsLuTradingAccount
    Left = 688
    Top = 352
  end
  object cdsLuBatchCategory: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryBatchCategory'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 824
    Top = 336
    object cdsLuBatchCategoryCAT_CODE: TStringField
      FieldName = 'CAT_CODE'
      Required = True
      Size = 5
    end
    object cdsLuBatchCategoryCAT_DESC: TStringField
      FieldName = 'CAT_DESC'
      Size = 100
    end
    object cdsLuBatchCategoryCAT_REPEAT: TStringField
      FieldName = 'CAT_REPEAT'
      Size = 1
    end
    object cdsLuBatchCategoryCAT_PERIOD: TStringField
      FieldName = 'CAT_PERIOD'
      Size = 1
    end
    object cdsLuBatchCategoryDATEPROCESS: TStringField
      FieldName = 'DATEPROCESS'
      Size = 2
    end
  end
  object dsLuBatchCategory: TDataSource
    DataSet = cdsLuBatchCategory
    Left = 824
    Top = 384
  end
  object cdsLuSuspendList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qrySuspendList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 832
    Top = 464
    object cdsLuSuspendListSUSID: TLargeintField
      FieldName = 'SUSID'
      Required = True
    end
    object cdsLuSuspendListSUSDESC: TStringField
      FieldName = 'SUSDESC'
      Size = 50
    end
  end
  object dsLuSuspendList: TDataSource
    DataSet = cdsLuSuspendList
    Left = 832
    Top = 512
  end
  object cdsLuAddressType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAddressType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1040
    Top = 280
    object cdsLuAddressTypeCODE: TStringField
      DisplayLabel = 'Code'
      DisplayWidth = 5
      FieldName = 'CODE'
      Required = True
      Size = 10
    end
    object cdsLuAddressTypeINDIVIDUAL_DESC: TStringField
      DisplayLabel = 'Address Type'
      DisplayWidth = 30
      FieldName = 'INDIVIDUAL_DESC'
      Required = True
      Size = 60
    end
    object cdsLuAddressTypeINSTITUTIONAL_DESC: TStringField
      DisplayLabel = 'Address Type'
      DisplayWidth = 30
      FieldName = 'INSTITUTIONAL_DESC'
      Required = True
      Size = 60
    end
  end
  object dsLuAddressType: TDataSource
    DataSet = cdsLuAddressType
    Left = 1040
    Top = 328
  end
  object cdsLuEntity: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuEntity'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 736
    object cdsLuEntityENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsLuEntityENTTCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'ENTTCODE'
      Required = True
    end
    object cdsLuEntityENTNAME: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 60
      FieldName = 'ENTNAME'
      Size = 100
    end
  end
  object dsLuEntity: TDataSource
    DataSet = cdsLuEntity
    Left = 136
    Top = 736
  end
  object cdsLuAccType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAccType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1040
    Top = 392
    object cdsLuAccTypeACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Required = True
      Size = 5
    end
    object cdsLuAccTypeACCTYPEDESC: TStringField
      FieldName = 'ACCTYPEDESC'
      Size = 30
    end
  end
  object dsLuAccType: TDataSource
    DataSet = cdsLuAccType
    Left = 1040
    Top = 440
  end
  object cdsLuInstrumentBonds: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'MATURITYDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuInterestBonds'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 249
    Top = 640
    object cdsLuInstrumentBondsINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      ReadOnly = True
      Required = True
    end
    object cdsLuInstrumentBondsINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsLuInstrumentBondsLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsLuInstrumentBondsMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuInstrumentBondsINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuInstrumentBondsSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 50
    end
    object cdsLuInstrumentBondsMATURITYDATE: TDateTimeField
      FieldName = 'MATURITYDATE'
    end
  end
  object dsLuInstrumentBonds: TDataSource
    DataSet = cdsLuInstrumentBonds
    Left = 392
    Top = 640
  end
  object cdsLuAssetGroup: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAssetGroup'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 688
    object cdsLuAssetGroupASSET_GROUP_ID: TIntegerField
      FieldName = 'ASSET_GROUP_ID'
      Required = True
    end
    object cdsLuAssetGroupASSET_GROUP_NAME: TStringField
      FieldName = 'ASSET_GROUP_NAME'
      Size = 50
    end
    object cdsLuAssetGroupDEPRECIATION_METHOD: TIntegerField
      FieldName = 'DEPRECIATION_METHOD'
    end
    object cdsLuAssetGroupDEPRECIATION_TABLE: TIntegerField
      FieldName = 'DEPRECIATION_TABLE'
    end
    object cdsLuAssetGroupECONOMIC_LIFE: TIntegerField
      FieldName = 'ECONOMIC_LIFE'
    end
    object cdsLuAssetGroupASSET_GLACC: TIntegerField
      FieldName = 'ASSET_GLACC'
    end
    object cdsLuAssetGroupACCUM_DEPREC_GLACC: TIntegerField
      FieldName = 'ACCUM_DEPREC_GLACC'
    end
    object cdsLuAssetGroupDEPREC_GLACC: TIntegerField
      FieldName = 'DEPREC_GLACC'
    end
  end
  object cdsLuAssetDeprecTable: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAssetDeprecTable'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 736
    object cdsLuAssetDeprecTableASSET_DEPRECIATION_TABLE_ID: TIntegerField
      FieldName = 'ASSET_DEPRECIATION_TABLE_ID'
      Required = True
    end
    object cdsLuAssetDeprecTableASSET_DEPRECIATION_TABLE_DESC: TStringField
      FieldName = 'ASSET_DEPRECIATION_TABLE_DESC'
      Size = 50
    end
    object cdsLuAssetDeprecTableECONOMIC_LIFE: TIntegerField
      FieldName = 'ECONOMIC_LIFE'
    end
    object cdsLuAssetDeprecTableIS_RECALC_ONJANUARY: TStringField
      FieldName = 'IS_RECALC_ONJANUARY'
      Size = 1
    end
    object cdsLuAssetDeprecTableIS_BASEDON_BOOKVALUE: TStringField
      FieldName = 'IS_BASEDON_BOOKVALUE'
      Size = 1
    end
    object cdsLuAssetDeprecTableIS_WRITEOFF_ENDVALUE: TStringField
      FieldName = 'IS_WRITEOFF_ENDVALUE'
      Size = 1
    end
  end
  object dsLuAssetGroup: TDataSource
    DataSet = cdsLuAssetGroup
    Left = 392
    Top = 688
  end
  object dsLuAssetDeprecTable: TDataSource
    DataSet = cdsLuAssetDeprecTable
    Left = 392
    Top = 736
  end
  object cdsLuAssetDeprecTableValue: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ASSET_DEPRECIATION_TABLE_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuAssetDeprecTableValue'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 496
    object cdsLuAssetDeprecTableValueBYYEAR: TIntegerField
      FieldName = 'BYYEAR'
      Required = True
    end
    object cdsLuAssetDeprecTableValueDEPRECIATION_PCT: TFloatField
      FieldName = 'DEPRECIATION_PCT'
    end
  end
  object cdsLuAllocAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'MARKETCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHANNELCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuAllocAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 544
    object cdsLuAllocAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAllocAccountACCCODE: TStringField
      DisplayLabel = 'Account Code'
      DisplayWidth = 15
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuAllocAccountACCNAME: TStringField
      DisplayLabel = 'Account Name'
      DisplayWidth = 60
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuAllocAccountACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 10
    end
    object cdsLuAllocAccountACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsLuAllocAccountACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsLuAllocAccountENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsLuAllocAccountEXTREF_CODE: TStringField
      DisplayLabel = 'Allocation Code'
      FieldName = 'EXTREF_CODE'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAllocAccountCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      ReadOnly = True
      Size = 2
    end
    object cdsLuAllocAccountCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      ReadOnly = True
    end
    object cdsLuAllocAccountCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
      ReadOnly = True
    end
  end
  object dsLuAllocAccount: TDataSource
    DataSet = cdsLuAllocAccount
    Left = 688
    Top = 544
  end
  object cdsLuCompany: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCompany'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 784
    object cdsLuCompanyENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsLuCompanyENTTCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'ENTTCODE'
      Required = True
    end
    object cdsLuCompanyENTNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'ENTNAME'
      Size = 100
    end
  end
  object dsLuCompany: TDataSource
    DataSet = cdsLuCompany
    Left = 136
    Top = 784
  end
  object cdsLuTransType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuTransType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1040
    Top = 488
    object cdsLuTransTypeTRANSTYPE_CODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'TRANSTYPE_CODE'
      Required = True
      Size = 5
    end
    object cdsLuTransTypeTRANSTYPE_NAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'TRANSTYPE_NAME'
      Size = 30
    end
  end
  object dsLuTransType: TDataSource
    DataSet = cdsLuTransType
    Left = 1040
    Top = 536
  end
  object cdsLuExtSystem: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuExtSystem'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 592
    object cdsLuExtSystemEXTSYS_ID: TIntegerField
      FieldName = 'EXTSYS_ID'
      Required = True
    end
    object cdsLuExtSystemEXTSYS_CODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'EXTSYS_CODE'
      Required = True
    end
    object cdsLuExtSystemEXTSYS_DESC: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 60
      FieldName = 'EXTSYS_DESC'
      Size = 100
    end
  end
  object dsLuExtsystem: TDataSource
    DataSet = cdsLuExtSystem
    Left = 688
    Top = 592
  end
  object cdsLuContactUsage: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuContactUsage'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 640
    object cdsLuContactUsageCUSGID: TIntegerField
      FieldName = 'CUSGID'
      Required = True
    end
    object cdsLuContactUsageCUSGCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CUSGCODE'
      Required = True
      Size = 10
    end
    object cdsLuContactUsageCUSGDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CUSGDESC'
      Size = 30
    end
    object cdsLuContactUsageSORTID: TIntegerField
      FieldName = 'SORTID'
    end
  end
  object dsLuContactUsage: TDataSource
    DataSet = cdsLuContactUsage
    Left = 688
    Top = 640
  end
  object cdsLuCompanyAccount: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCompanyAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 784
    object cdsLuCompanyAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCompanyAccountACCCODE: TStringField
      DisplayLabel = 'Account Code'
      DisplayWidth = 15
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuCompanyAccountACCNAME: TStringField
      DisplayLabel = 'Account Name'
      DisplayWidth = 60
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuCompanyAccountACCINIT: TStringField
      DisplayLabel = 'Account Init'
      FieldName = 'ACCINIT'
      Size = 10
    end
  end
  object dsLuCompanyAccount: TDataSource
    DataSet = cdsLuCompanyAccount
    Left = 392
    Top = 784
  end
  object cdsLuLedgerAccByAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuLedgerAccByAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 832
    object cdsLuLedgerAccByAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuLedgerAccByAccountSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsLuLedgerAccByAccountALTYPE: TStringField
      DisplayLabel = 'Ledger Type'
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsLuLedgerAccByAccountALCODE: TStringField
      DisplayLabel = 'Ledger Code'
      DisplayWidth = 20
      FieldName = 'ALCODE'
      Size = 30
    end
    object cdsLuLedgerAccByAccountBANKCODE: TStringField
      DisplayLabel = 'Bank Code'
      DisplayWidth = 10
      FieldName = 'BANKCODE'
      Size = 30
    end
    object cdsLuLedgerAccByAccountBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      DisplayWidth = 20
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuLedgerAccByAccountBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      DisplayWidth = 35
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuLedgerAccByAccountBANKBRANCH: TStringField
      DisplayLabel = 'Bank Branch'
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuLedgerAccByAccountCALCINTEREST: TStringField
      FieldName = 'CALCINTEREST'
      Size = 1
    end
    object cdsLuLedgerAccByAccountINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Size = 10
    end
  end
  object dsLuLedgerAccByAccount: TDataSource
    DataSet = cdsLuLedgerAccByAccount
    Left = 392
    Top = 832
  end
  object cdsLuAccountMultiFilter: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ISALLENTITY'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ENTTID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ISALLBUS_CAT'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'BUS_CAT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ISALLACCSUBTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ACCSUBTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ISALLCUST_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CUST_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ISTRDACCOUNT_ONLY'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ISALLPRDCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRDCODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ISALLBRANCH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BRANCHID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ISALLSALES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SALESID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuAccountMultiFilter'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 680
    Top = 688
    object cdsLuAccountMultiFilterACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountMultiFilterENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsLuAccountMultiFilterACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuAccountMultiFilterACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuAccountMultiFilterACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsLuAccountMultiFilterAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsLuAccountMultiFilterPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsLuAccountMultiFilterACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
  end
  object cdsLuAllJrnType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAccounting_qryJrnTypeList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 736
    object cdsLuAllJrnTypeJRNTYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'JRNTYPE'
      Required = True
    end
    object cdsLuAllJrnTypeJRNTYPEDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'JRNTYPEDESC'
      Size = 50
    end
  end
  object dsLuAllJrnType: TDataSource
    DataSet = cdsLuAllJrnType
    Left = 688
    Top = 736
  end
  object cdsLuUser: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuUser'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 784
    object cdsLuUserUSERID: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'USERID'
      Required = True
    end
    object cdsLuUserUSERNAME: TStringField
      DisplayLabel = 'User Name'
      FieldName = 'USERNAME'
      Size = 50
    end
  end
  object dsLuUser: TDataSource
    DataSet = cdsLuUser
    Left = 688
    Top = 784
  end
  object cdsLuAccountBank: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAccountBank'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 832
    object cdsLuAccountBankACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuAccountBankACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsLuAccountBankACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccountBankACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsLuAccountBankACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsLuAccountBankBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuAccountBankBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuAccountBankBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuAccountBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuAccountBankCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuAccountBankINITIAL_NAME: TStringField
      FieldName = 'INITIAL_NAME'
      ReadOnly = True
      Size = 10
    end
  end
  object cdsLuCustody: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCustody'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 832
    object cdsLuCustodyCUSTODYCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CUSTODYCODE'
      Required = True
      Size = 10
    end
    object cdsLuCustodyCUSTODYNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'CUSTODYNAME'
      Size = 50
    end
    object cdsLuCustodyADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Size = 100
    end
    object cdsLuCustodyADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 100
    end
    object cdsLuCustodyADDRESS3: TStringField
      FieldName = 'ADDRESS3'
      Size = 100
    end
    object cdsLuCustodyTELP: TStringField
      DisplayLabel = 'Phone'
      FieldName = 'TELP'
      Size = 15
    end
    object cdsLuCustodyFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Size = 15
    end
    object cdsLuCustodyCONTACTPERSON: TStringField
      DisplayLabel = 'Contact Person'
      FieldName = 'CONTACTPERSON'
      Size = 50
    end
  end
  object dsLuCustody: TDataSource
    DataSet = cdsLuCustody
    Left = 136
    Top = 832
  end
  object cdsLuBankAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 832
    Top = 560
    object cdsLuBankAccountACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuBankAccountBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      DisplayWidth = 10
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuBankAccountBNNAME: TStringField
      DisplayLabel = 'Bank Name'
      DisplayWidth = 30
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsLuBankAccountBICODE: TStringField
      FieldName = 'BICODE'
      ReadOnly = True
      Size = 10
    end
    object cdsLuBankAccountBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      DisplayWidth = 20
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuBankAccountBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      DisplayWidth = 30
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuBankAccountBANKBRANCH: TStringField
      DisplayLabel = 'Bank Branch'
      DisplayWidth = 20
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuBankAccountACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuBankAccountALTYPE: TStringField
      FieldName = 'ALTYPE'
      ReadOnly = True
      Size = 10
    end
    object cdsLuBankAccountALCODE: TStringField
      FieldName = 'ALCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsLuBankAccountACCBANKCODE: TStringField
      DisplayLabel = 'Account Bank Code'
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsLuBankAccountCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
  end
  object dsLuBankAccount: TDataSource
    DataSet = cdsLuBankAccount
    Left = 928
    Top = 560
  end
  object cdsLuAccLegClass: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAccLegClass'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 906
    Top = 618
    object cdsLuAccLegClassALCID: TIntegerField
      FieldName = 'ALCID'
      ReadOnly = True
      Required = True
    end
    object cdsLuAccLegClassALCNAME: TStringField
      FieldName = 'ALCNAME'
      Required = True
      Size = 50
    end
  end
  object dsLuAccLegClass: TDataSource
    DataSet = cdsLuAccLegClass
    Left = 834
    Top = 633
  end
  object cdsLuBankCustody: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBankCustody'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 618
    object cdsLuBankCustodyCUSTODYCODE: TStringField
      DisplayLabel = 'Custody Code'
      FieldName = 'CUSTODYCODE'
      Required = True
      Size = 10
    end
    object cdsLuBankCustodyCUSTODYNAME: TStringField
      DisplayLabel = 'Custody Name'
      FieldName = 'CUSTODYNAME'
      Size = 50
    end
    object cdsLuBankCustodyADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Size = 100
    end
    object cdsLuBankCustodyADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 100
    end
    object cdsLuBankCustodyADDRESS3: TStringField
      FieldName = 'ADDRESS3'
      Size = 100
    end
    object cdsLuBankCustodyTELP: TStringField
      FieldName = 'TELP'
      Size = 15
    end
    object cdsLuBankCustodyFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsLuBankCustodyCONTACTPERSON: TStringField
      FieldName = 'CONTACTPERSON'
      Size = 50
    end
  end
  object dsLuBankCustody: TDataSource
    DataSet = cdsLuBankCustody
    Left = 621
    Top = 618
  end
  object cdsLuCCType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCCType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1040
    Top = 584
    object cdsLuCCTypeCC_TYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'CC_TYPE'
      Required = True
    end
    object cdsLuCCTypeCC_TYPE_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CC_TYPE_DESC'
      Size = 50
    end
  end
  object dsLuCCType: TDataSource
    DataSet = cdsLuCCType
    Left = 1040
    Top = 632
  end
  object cdsLuSalesType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuSalesType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 928
    Top = 349
    object cdsLuSalesTypeSALESTYPE: TStringField
      FieldName = 'SALESTYPE'
      Required = True
      Size = 10
    end
    object cdsLuSalesTypeSALESTYPEDESC: TStringField
      FieldName = 'SALESTYPEDESC'
      Size = 50
    end
  end
  object dsLuSalesType: TDataSource
    DataSet = cdsLuSalesType
    Left = 961
    Top = 310
  end
  object cdsLuCrdConClass: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCRDCONCLASS'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1122
    Top = 597
    object cdsLuCrdConClassCCCLS_ID: TLargeintField
      DisplayLabel = 'Class ID'
      FieldName = 'CCCLS_ID'
      Required = True
    end
    object cdsLuCrdConClassCCLSSNAME: TStringField
      DisplayLabel = 'Class Name'
      FieldName = 'CCLSSNAME'
      Size = 80
    end
    object cdsLuCrdConClassCC_TYPE: TStringField
      DisplayLabel = 'Class Type'
      FieldName = 'CC_TYPE'
      Size = 40
    end
    object cdsLuCrdConClassTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsLuCrdConClassTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsLuCrdConClassTLB_OVERLIMIT: TStringField
      FieldName = 'TLB_OVERLIMIT'
      Size = 1
    end
    object cdsLuCrdConClassTLB_NOTVALIDSTATUS: TStringField
      FieldName = 'TLB_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsLuCrdConClassTLB_MRG_NONVALSTOCK: TStringField
      FieldName = 'TLB_MRG_NONVALSTOCK'
      Size = 1
    end
    object cdsLuCrdConClassTLB_OVERDUE: TStringField
      FieldName = 'TLB_OVERDUE'
      Size = 1
    end
    object cdsLuCrdConClassTLS_SHORTSELL: TStringField
      FieldName = 'TLS_SHORTSELL'
      Size = 1
    end
    object cdsLuCrdConClassTLS_NOTVALIDSTATUS: TStringField
      FieldName = 'TLS_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsLuCrdConClassTLS_OVERDUE: TStringField
      FieldName = 'TLS_OVERDUE'
      Size = 1
    end
    object cdsLuCrdConClassRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
    end
    object cdsLuCrdConClassRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
    end
    object cdsLuCrdConClassRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
    end
    object cdsLuCrdConClassFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
    end
  end
  object dsluCrdConClass: TDataSource
    DataSet = cdsLuCrdConClass
    Left = 981
    Top = 651
  end
  object cdsLuAccountLedger: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankLedger'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 573
    Top = 699
    object cdsLuAccountLedgerACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountLedgerSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsLuAccountLedgerALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsLuAccountLedgerALCODE: TStringField
      FieldName = 'ALCODE'
      Size = 30
    end
    object cdsLuAccountLedgerUSE_CLIENTACC: TStringField
      FieldName = 'USE_CLIENTACC'
      Size = 1
    end
    object cdsLuAccountLedgerBANKCODE: TStringField
      FieldName = 'BANKCODE'
      Size = 30
    end
    object cdsLuAccountLedgerBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuAccountLedgerBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuAccountLedgerBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuAccountLedgerCALCINTEREST: TStringField
      FieldName = 'CALCINTEREST'
      Size = 1
    end
    object cdsLuAccountLedgerINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Size = 10
    end
    object cdsLuAccountLedgerGLACCOUNTID: TLargeintField
      FieldName = 'GLACCOUNTID'
    end
    object cdsLuAccountLedgerCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsLuAccountLedgerMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuAccountLedgerMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuAccountLedgerAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuAccountLedgerAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuAccountLedgerUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuAccountLedgerUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuAccountLedgerNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuAccountLedgerISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuAccountLedgerID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsLuAccLedger: TDataSource
    DataSet = cdsLuAccountLedger
    Left = 573
    Top = 747
  end
  object cdsLuInstrumentStock: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuInstrumentStock'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 948
    Top = 429
    object cdsLuInstrumentStockINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsLuInstrumentStockINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsLuInstrumentStockLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsLuInstrumentStockMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuInstrumentStockINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuInstrumentStockSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object cdsLuInstrumentStockLONGNAME: TStringField
      FieldName = 'LONGNAME'
      Size = 100
    end
    object cdsLuInstrumentStockISSUERNAME: TStringField
      FieldName = 'ISSUERNAME'
      Size = 100
    end
    object cdsLuInstrumentStockCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsLuInstrumentStockISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsLuInstrumentStockISINDATE: TDateTimeField
      FieldName = 'ISINDATE'
    end
    object cdsLuInstrumentStockMARGIN: TIntegerField
      FieldName = 'MARGIN'
    end
    object cdsLuInstrumentStockSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsLuInstrumentStockDELISTINGDATE: TDateTimeField
      FieldName = 'DELISTINGDATE'
    end
    object cdsLuInstrumentStockLISTINGDATE: TDateTimeField
      FieldName = 'LISTINGDATE'
    end
    object cdsLuInstrumentStockLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
    end
    object cdsLuInstrumentStockLASTCPPRICEDATE: TDateField
      FieldName = 'LASTCPPRICEDATE'
    end
    object cdsLuInstrumentStockSECTOR: TStringField
      FieldName = 'SECTOR'
    end
    object cdsLuInstrumentStockMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuInstrumentStockMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuInstrumentStockAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuInstrumentStockAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuInstrumentStockISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuInstrumentStockID: TLargeintField
      FieldName = 'ID'
    end
    object cdsLuInstrumentStockCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 10
    end
    object cdsLuInstrumentStockMATURITYDATE: TDateTimeField
      FieldName = 'MATURITYDATE'
    end
    object cdsLuInstrumentStockRATING: TStringField
      FieldName = 'RATING'
      Size = 10
    end
    object cdsLuInstrumentStockREMARKS: TStringField
      FieldName = 'REMARKS'
    end
    object cdsLuInstrumentStockEFFECTIVEDATE: TDateTimeField
      FieldName = 'EFFECTIVEDATE'
    end
    object cdsLuInstrumentStockOFFERING_PERIODBEG: TDateTimeField
      FieldName = 'OFFERING_PERIODBEG'
    end
    object cdsLuInstrumentStockOFFERING_PERIODEND: TDateTimeField
      FieldName = 'OFFERING_PERIODEND'
    end
    object cdsLuInstrumentStockISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object cdsLuInstrumentStockNO_OFCERTIFICATES: TStringField
      FieldName = 'NO_OFCERTIFICATES'
      Size = 4
    end
    object cdsLuInstrumentStockLEAD_UNDERWRITER: TStringField
      FieldName = 'LEAD_UNDERWRITER'
      Size = 40
    end
    object cdsLuInstrumentStockSELLING_AGENT: TStringField
      FieldName = 'SELLING_AGENT'
      Size = 40
    end
    object cdsLuInstrumentStockTRUSTEE: TStringField
      FieldName = 'TRUSTEE'
      Size = 40
    end
    object cdsLuInstrumentStockCALCULATE_DAYS_METHOD: TIntegerField
      FieldName = 'CALCULATE_DAYS_METHOD'
    end
    object cdsLuInstrumentStockCOUPON_IN_YEAR: TIntegerField
      FieldName = 'COUPON_IN_YEAR'
    end
    object cdsLuInstrumentStockCOMMONCODE: TStringField
      FieldName = 'COMMONCODE'
      Size = 10
    end
    object cdsLuInstrumentStockDAYSOFYEAR: TIntegerField
      FieldName = 'DAYSOFYEAR'
    end
    object cdsLuInstrumentStockREGIONALBONDS: TIntegerField
      FieldName = 'REGIONALBONDS'
    end
    object cdsLuInstrumentStockCOUNTINGDAYS_METHOD: TIntegerField
      FieldName = 'COUNTINGDAYS_METHOD'
    end
    object cdsLuInstrumentStockACCRUEDDAYS_METHOD: TIntegerField
      FieldName = 'ACCRUEDDAYS_METHOD'
    end
    object cdsLuInstrumentStockDAYSPERYEAR_METHOD: TIntegerField
      FieldName = 'DAYSPERYEAR_METHOD'
    end
    object cdsLuInstrumentStockACCRUEDTYPE: TStringField
      FieldName = 'ACCRUEDTYPE'
      Size = 1
    end
    object cdsLuInstrumentStockDECDIGIT: TIntegerField
      FieldName = 'DECDIGIT'
    end
    object cdsLuInstrumentStockSEDOL: TStringField
      FieldName = 'SEDOL'
      Size = 50
    end
    object cdsLuInstrumentStockHAIRCUT: TFloatField
      FieldName = 'HAIRCUT'
    end
    object cdsLuInstrumentStockLIQUIDITY: TFloatField
      FieldName = 'LIQUIDITY'
    end
    object cdsLuInstrumentStockLASTHAIRCUTDATE: TDateField
      FieldName = 'LASTHAIRCUTDATE'
    end
    object cdsLuInstrumentStockISSUERID: TLargeintField
      FieldName = 'ISSUERID'
    end
  end
  object dsLuInstrumentStock: TDataSource
    DataSet = cdsLuInstrumentStock
    Left = 945
    Top = 492
  end
  object cdsLuSPReason: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuSPReason'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1144
    Top = 484
    object cdsLuSPReasonSPRESID: TLargeintField
      FieldName = 'SPRESID'
    end
    object cdsLuSPReasonSPREASON: TWideStringField
      FieldName = 'SPREASON'
      FixedChar = True
      Size = 100
    end
  end
  object dsLuSPReason: TDataSource
    DataSet = cdsLuSPReason
    Left = 1143
    Top = 645
  end
  object cdsLuAccSuspend: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAccSuspend'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1146
    Top = 18
    object cdsLuAccSuspendACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccSuspendENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsLuAccSuspendACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuAccSuspendACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsLuAccSuspendACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 10
    end
    object cdsLuAccSuspendACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsLuAccSuspendACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsLuAccSuspendBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsLuAccSuspendINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsLuAccSuspendBUSSTYPE: TLargeintField
      FieldName = 'BUSSTYPE'
    end
    object cdsLuAccSuspendTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsLuAccSuspendPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsLuAccSuspendA_CLS_ORDER: TStringField
      FieldName = 'A_CLS_ORDER'
      Size = 1
    end
    object cdsLuAccSuspendAVGPRICEDEC: TSmallintField
      FieldName = 'AVGPRICEDEC'
    end
    object cdsLuAccSuspendOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsLuAccSuspendCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsLuAccSuspendSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsLuAccSuspendISWAPU: TStringField
      FieldName = 'ISWAPU'
      Size = 1
    end
    object cdsLuAccSuspendWAPUVALUE: TFloatField
      FieldName = 'WAPUVALUE'
    end
    object cdsLuAccSuspendISAVGPRICE: TStringField
      FieldName = 'ISAVGPRICE'
      Size = 1
    end
    object cdsLuAccSuspendISDEBETINTEREST: TStringField
      FieldName = 'ISDEBETINTEREST'
      Size = 1
    end
    object cdsLuAccSuspendISCREDITINTEREST: TStringField
      FieldName = 'ISCREDITINTEREST'
      Size = 1
    end
    object cdsLuAccSuspendISPENALTY: TStringField
      FieldName = 'ISPENALTY'
      Size = 1
    end
    object cdsLuAccSuspendISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsLuAccSuspendISUSEOTC: TStringField
      FieldName = 'ISUSEOTC'
      Size = 1
    end
    object cdsLuAccSuspendISOWNCONTACT: TStringField
      FieldName = 'ISOWNCONTACT'
      Size = 1
    end
    object cdsLuAccSuspendISTRDACCOUNT: TStringField
      FieldName = 'ISTRDACCOUNT'
      Size = 1
    end
    object cdsLuAccSuspendSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsLuAccSuspendACC_STS: TStringField
      FieldName = 'ACC_STS'
      Size = 1
    end
    object cdsLuAccSuspendOMGUSE: TStringField
      FieldName = 'OMGUSE'
      Size = 1
    end
    object cdsLuAccSuspendOMGEXREFFCODE: TStringField
      FieldName = 'OMGEXREFFCODE'
    end
    object cdsLuAccSuspendOMGALERT: TStringField
      FieldName = 'OMGALERT'
      Size = 1
    end
    object cdsLuAccSuspendOMGSENDSSI: TStringField
      FieldName = 'OMGSENDSSI'
      Size = 1
    end
    object cdsLuAccSuspendOMGSENDFEEINBLOCK: TStringField
      FieldName = 'OMGSENDFEEINBLOCK'
      Size = 1
    end
    object cdsLuAccSuspendSI_SPLIT: TStringField
      FieldName = 'SI_SPLIT'
      Size = 1
    end
    object cdsLuAccSuspendALCID: TIntegerField
      FieldName = 'ALCID'
    end
    object cdsLuAccSuspendTALCID: TIntegerField
      FieldName = 'TALCID'
    end
    object cdsLuAccSuspendLASTTR_DATE: TDateTimeField
      FieldName = 'LASTTR_DATE'
    end
    object cdsLuAccSuspendMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuAccSuspendMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuAccSuspendAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuAccSuspendAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuAccSuspendUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuAccSuspendUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuAccSuspendNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuAccSuspendISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuAccSuspendID: TLargeintField
      FieldName = 'ID'
    end
    object cdsLuAccSuspendCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
    end
    object cdsLuAccSuspendCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
    end
    object cdsLuAccSuspendCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsLuAccSuspendBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsLuAccSuspendSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
  end
  object dsLuAccSuspend: TDataSource
    DataSet = cdsLuAccSuspend
    Left = 1146
    Top = 66
  end
  object cdsLuGroups: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuGroups'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 832
    Top = 680
    object cdsLuGroupsGROUPID: TStringField
      FieldName = 'GROUPID'
      Required = True
    end
    object cdsLuGroupsGROUPDESC: TStringField
      FieldName = 'GROUPDESC'
      Size = 50
    end
  end
  object cdsLuCustodyAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuCustodyAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 832
    Top = 728
    object cdsLuCustodyAccountACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsLuCustodyAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCustodyAccountCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 30
    end
    object cdsLuCustodyAccountCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsLuCustodyAccountCUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 50
    end
    object cdsLuCustodyAccountCUSTODYBRANCH: TStringField
      FieldName = 'CUSTODYBRANCH'
      Size = 50
    end
    object cdsLuCustodyAccountCUSTODYTYPE: TStringField
      FieldName = 'CUSTODYTYPE'
      Size = 1
    end
    object cdsLuCustodyAccountACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuCustodyAccountMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuCustodyAccountMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuCustodyAccountAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuCustodyAccountAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuCustodyAccountUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuCustodyAccountUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuCustodyAccountNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuCustodyAccountISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuCustodyAccountID: TLargeintField
      FieldName = 'ID'
    end
    object cdsLuCustodyAccountALTYPE: TStringField
      FieldName = 'ALTYPE'
      ReadOnly = True
      Size = 10
    end
    object cdsLuCustodyAccountALCODE: TStringField
      FieldName = 'ALCODE'
      ReadOnly = True
      Size = 30
    end
  end
  object dsLuDefaultParamSetting: TDataSource
    DataSet = cdsLuDefaultParamSetting
    Left = 1155
    Top = 180
  end
  object cdsLuDefaultParamSetting: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuDefaultParamSetting'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1152
    Top = 132
    object cdsLuDefaultParamSettingPARAMETERSETTING: TStringField
      FieldName = 'PARAMETERSETTING'
      Size = 30
    end
    object cdsLuDefaultParamSettingBUSSTYPE: TLargeintField
      FieldName = 'BUSSTYPE'
    end
    object cdsLuDefaultParamSettingTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsLuDefaultParamSettingAVGPRICEDEC: TSmallintField
      FieldName = 'AVGPRICEDEC'
    end
    object cdsLuDefaultParamSettingISWAPU: TStringField
      FieldName = 'ISWAPU'
      Size = 1
    end
    object cdsLuDefaultParamSettingWAPUVALUE: TFloatField
      FieldName = 'WAPUVALUE'
    end
    object cdsLuDefaultParamSettingISAVGPRICE: TStringField
      FieldName = 'ISAVGPRICE'
      Size = 1
    end
    object cdsLuDefaultParamSettingISDEBETINTEREST: TStringField
      FieldName = 'ISDEBETINTEREST'
      Size = 1
    end
    object cdsLuDefaultParamSettingISCREDITINTEREST: TStringField
      FieldName = 'ISCREDITINTEREST'
      Size = 1
    end
    object cdsLuDefaultParamSettingISPENALTY: TStringField
      FieldName = 'ISPENALTY'
      Size = 1
    end
    object cdsLuDefaultParamSettingISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsLuDefaultParamSettingISUSEOTC: TStringField
      FieldName = 'ISUSEOTC'
      Size = 1
    end
    object cdsLuDefaultParamSettingISOWNCONTACT: TStringField
      FieldName = 'ISOWNCONTACT'
      Size = 1
    end
    object cdsLuDefaultParamSettingISTRDACCOUNT: TStringField
      FieldName = 'ISTRDACCOUNT'
      Size = 1
    end
    object cdsLuDefaultParamSettingA_CLS_ORDER: TStringField
      FieldName = 'A_CLS_ORDER'
      Size = 1
    end
    object cdsLuDefaultParamSettingOMGUSE: TStringField
      FieldName = 'OMGUSE'
      Size = 1
    end
    object cdsLuDefaultParamSettingCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
    end
    object cdsLuDefaultParamSettingCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
    end
    object cdsLuDefaultParamSettingCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsLuDefaultParamSettingBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsLuDefaultParamSettingSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
    object cdsLuDefaultParamSettingALCID: TIntegerField
      FieldName = 'ALCID'
    end
    object cdsLuDefaultParamSettingMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuDefaultParamSettingCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Required = True
      Size = 10
    end
    object cdsLuDefaultParamSettingCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
      Required = True
    end
    object cdsLuDefaultParamSettingCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsLuDefaultParamSettingUSE_DAYTRADE: TStringField
      FieldName = 'USE_DAYTRADE'
      Size = 1
    end
    object cdsLuDefaultParamSettingUSE_MINCOMM: TStringField
      FieldName = 'USE_MINCOMM'
      Size = 1
    end
    object cdsLuDefaultParamSettingWITH_SELLTAX: TStringField
      FieldName = 'WITH_SELLTAX'
      Size = 1
    end
    object cdsLuDefaultParamSettingCHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsLuDefaultParamSettingISUSED: TStringField
      FieldName = 'ISUSED'
      Size = 1
    end
    object cdsLuDefaultParamSettingOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
  end
  object cdsLuAccountCash: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAccountCash'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 686
    Top = 397
    object cdsLuAccountCashACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountCashACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuAccountCashACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuAccountCashACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 10
    end
    object cdsLuAccountCashSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsLuAccountCashISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsLuAccountCashINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsLuAccountCashPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
  end
  object dsLuAccountCash: TDataSource
    DataSet = cdsLuAccountCash
    Left = 725
    Top = 397
  end
  object cdsLuCustomerBonds: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAccountBonds'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1140
    Top = 270
    object cdsLuCustomerBondsACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCustomerBondsENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsLuCustomerBondsACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuCustomerBondsACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuCustomerBondsACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 10
    end
    object cdsLuCustomerBondsACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsLuCustomerBondsACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsLuCustomerBondsBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsLuCustomerBondsINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsLuCustomerBondsBUSSTYPE: TLargeintField
      FieldName = 'BUSSTYPE'
    end
    object cdsLuCustomerBondsTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsLuCustomerBondsPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsLuCustomerBondsA_CLS_ORDER: TStringField
      FieldName = 'A_CLS_ORDER'
      Size = 1
    end
    object cdsLuCustomerBondsAVGPRICEDEC: TSmallintField
      FieldName = 'AVGPRICEDEC'
    end
    object cdsLuCustomerBondsOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsLuCustomerBondsCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsLuCustomerBondsSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsLuCustomerBondsISWAPU: TStringField
      FieldName = 'ISWAPU'
      Size = 1
    end
    object cdsLuCustomerBondsISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsLuCustomerBondsISUSEOTC: TStringField
      FieldName = 'ISUSEOTC'
      Size = 1
    end
    object cdsLuCustomerBondsISOWNCONTACT: TStringField
      FieldName = 'ISOWNCONTACT'
      Size = 1
    end
    object cdsLuCustomerBondsISTRDACCOUNT: TStringField
      FieldName = 'ISTRDACCOUNT'
      Size = 1
    end
    object cdsLuCustomerBondsAUTO_SETTLE: TStringField
      FieldName = 'AUTO_SETTLE'
      Size = 1
    end
    object cdsLuCustomerBondsSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsLuCustomerBondsACC_STS: TStringField
      FieldName = 'ACC_STS'
      Size = 1
    end
    object cdsLuCustomerBondsOMGUSE: TStringField
      FieldName = 'OMGUSE'
      Size = 1
    end
    object cdsLuCustomerBondsOMGEXREFFCODE: TStringField
      FieldName = 'OMGEXREFFCODE'
    end
    object cdsLuCustomerBondsOMGALERT: TStringField
      FieldName = 'OMGALERT'
      Size = 1
    end
    object cdsLuCustomerBondsOMGSENDSSI: TStringField
      FieldName = 'OMGSENDSSI'
      Size = 1
    end
    object cdsLuCustomerBondsOMGSENDFEEINBLOCK: TStringField
      FieldName = 'OMGSENDFEEINBLOCK'
      Size = 1
    end
    object cdsLuCustomerBondsSI_SPLIT: TStringField
      FieldName = 'SI_SPLIT'
      Size = 1
    end
    object cdsLuCustomerBondsALCID: TIntegerField
      FieldName = 'ALCID'
    end
    object cdsLuCustomerBondsTALCID: TIntegerField
      FieldName = 'TALCID'
    end
    object cdsLuCustomerBondsLASTTR_DATE: TDateTimeField
      FieldName = 'LASTTR_DATE'
    end
    object cdsLuCustomerBondsTRF_PRVT_BANK: TStringField
      FieldName = 'TRF_PRVT_BANK'
      Size = 1
    end
    object cdsLuCustomerBondsTRF_PRVT_BANK_TARGET: TIntegerField
      FieldName = 'TRF_PRVT_BANK_TARGET'
    end
    object cdsLuCustomerBondsCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
    end
    object cdsLuCustomerBondsCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
    end
    object cdsLuCustomerBondsCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsLuCustomerBondsBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsLuCustomerBondsSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
    object cdsLuCustomerBondsIS_IDX_TRX: TStringField
      FieldName = 'IS_IDX_TRX'
      Size = 1
    end
    object cdsLuCustomerBondsTLCLASSID: TIntegerField
      FieldName = 'TLCLASSID'
    end
    object cdsLuCustomerBondsDEFTRDPARAM: TStringField
      FieldName = 'DEFTRDPARAM'
      Size = 30
    end
    object cdsLuCustomerBondsKSEI_SID: TStringField
      FieldName = 'KSEI_SID'
    end
    object cdsLuCustomerBondsRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
    end
    object cdsLuCustomerBondsRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
    end
    object cdsLuCustomerBondsRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
    end
    object cdsLuCustomerBondsFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
    end
    object cdsLuCustomerBondsTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsLuCustomerBondsTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsLuCustomerBondsACCPASSWORD: TStringField
      FieldName = 'ACCPASSWORD'
      Size = 50
    end
    object cdsLuCustomerBondsCPID: TIntegerField
      FieldName = 'CPID'
    end
    object cdsLuCustomerBondsBUS_CAT: TLargeintField
      FieldName = 'BUS_CAT'
    end
    object cdsLuCustomerBondsINIT_DEPOSIT_FUND: TFloatField
      FieldName = 'INIT_DEPOSIT_FUND'
    end
    object cdsLuCustomerBondsINIT_DEPOSIT_SHARES: TFloatField
      FieldName = 'INIT_DEPOSIT_SHARES'
    end
    object cdsLuCustomerBondsALLOC_TYPE: TStringField
      FieldName = 'ALLOC_TYPE'
      Size = 1
    end
    object cdsLuCustomerBondsTC_BASE: TStringField
      FieldName = 'TC_BASE'
      Size = 1
    end
    object cdsLuCustomerBondsAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsLuCustomerBondsDT_AUTOAVGPRICE: TStringField
      FieldName = 'DT_AUTOAVGPRICE'
      Size = 1
    end
    object cdsLuCustomerBondsSETTLE_MODE: TStringField
      FieldName = 'SETTLE_MODE'
      Size = 10
    end
    object cdsLuCustomerBondsNET_SETTLE: TStringField
      FieldName = 'NET_SETTLE'
      Size = 1
    end
    object cdsLuCustomerBondsSETTLE_TYPE: TStringField
      FieldName = 'SETTLE_TYPE'
      Size = 10
    end
    object cdsLuCustomerBondsDIVIDEN_TAX: TFloatField
      FieldName = 'DIVIDEN_TAX'
    end
    object cdsLuCustomerBondsDORMANT: TStringField
      FieldName = 'DORMANT'
      Size = 1
    end
    object cdsLuCustomerBondsRISK: TStringField
      FieldName = 'RISK'
      Size = 1
    end
    object cdsLuCustomerBondsEXCELL_CLASS: TIntegerField
      FieldName = 'EXCELL_CLASS'
    end
    object cdsLuCustomerBondsSPRESID: TLargeintField
      FieldName = 'SPRESID'
    end
    object cdsLuCustomerBondsMCALLDAY: TIntegerField
      FieldName = 'MCALLDAY'
    end
    object cdsLuCustomerBondsAFFIL: TBooleanField
      FieldName = 'AFFIL'
    end
    object cdsLuCustomerBondsBUSSINESS_NAME: TStringField
      FieldName = 'BUSSINESS_NAME'
      ReadOnly = True
      Size = 50
    end
    object cdsLuCustomerBondsBTAX: TFloatField
      FieldName = 'BTAX'
      ReadOnly = True
    end
    object cdsLuCustomerBondsSTAX: TFloatField
      FieldName = 'STAX'
      ReadOnly = True
    end
    object cdsLuCustomerBondsCUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
      ReadOnly = True
    end
  end
  object dsLuCustomerBonds: TDataSource
    DataSet = cdsLuCustomerBonds
    Left = 1140
    Top = 312
  end
  object cdsLuInstrumentAll: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuInstrumentAll'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 920
    Top = 706
    object cdsLuInstrumentAllINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsLuInstrumentAllINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsLuInstrumentAllLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsLuInstrumentAllMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuInstrumentAllINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuInstrumentAllSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object cdsLuInstrumentAllISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsLuInstrumentAllCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsLuInstrumentAllMARGIN: TIntegerField
      FieldName = 'MARGIN'
    end
    object cdsLuInstrumentAllINSTRUMENT_TYPE_DESC: TStringField
      FieldName = 'INSTRUMENT_TYPE_DESC'
      ReadOnly = True
      Size = 30
    end
    object cdsLuInstrumentAllLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
    end
  end
  object dsLuInstrumentAll: TDataSource
    DataSet = cdsLuInstrumentAll
    Left = 1013
    Top = 704
  end
  object cdsLuAccountCustody: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAccountCustody'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1113
    Top = 714
    object cdsLuAccountCustodyACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountCustodyCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsLuAccountCustodyACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
  end
  object cdsLuAccountStock: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAccountStock'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 702
    Top = 496
    object cdsLuAccountStockACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountStockACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuAccountStockACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuAccountStockACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 10
    end
    object cdsLuAccountStockSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsLuAccountStockISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsLuAccountStockINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsLuAccountStockPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
  end
  object dsLuAccountStock: TDataSource
    DataSet = cdsLuAccountStock
    Left = 749
    Top = 496
  end
  object cdsLuStockInstructionMode: TNClientDataset
    Aggregates = <>
    Filter = 'CASH_STOCK = '#39'S'#39
    Filtered = True
    Params = <>
    ProviderName = 'dspN_dmLookup_qryInstructionMode'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1222
    Top = 744
    object cdsLuStockInstructionModeCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Required = True
      Size = 1
    end
    object cdsLuStockInstructionModeINSTRUCTION_MODE: TStringField
      DisplayLabel = 'InstructionMode'
      FieldName = 'INSTRUCTION_MODE'
      Size = 10
    end
  end
  object dsLuStockInstructionMode: TDataSource
    DataSet = cdsLuStockInstructionMode
    Left = 1261
    Top = 744
  end
  object cdsLuAccountBankSettlement: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBankAccountSettlement'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 651
    Top = 9
    object cdsLuAccountBankSettlementACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuAccountBankSettlementACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountBankSettlementBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuAccountBankSettlementBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuAccountBankSettlementBANKACCNAME: TStringField
      DisplayLabel = 'Bank Name'
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuAccountBankSettlementBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuAccountBankSettlementACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsLuAccountBankSettlementCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsLuAccountBankSettlementISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsLuAccountBankSettlementBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Size = 1
    end
    object cdsLuAccountBankSettlementBN_CHGMODE: TStringField
      FieldName = 'BN_CHGMODE'
      Size = 1
    end
    object cdsLuAccountBankSettlementBNCHGSTYPE: TStringField
      FieldName = 'BNCHGSTYPE'
      Size = 10
    end
  end
  object dsLuAccountBankSettlement: TDataSource
    DataSet = cdsLuAccountBankSettlement
    Left = 651
    Top = 54
  end
  object cdsLuAuthPerson: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAuthPerson'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1140
    Top = 384
    object cdsLuAuthPersonAUTH_ID: TLargeintField
      FieldName = 'AUTH_ID'
      Required = True
    end
    object cdsLuAuthPersonAUTH_NAME: TStringField
      DisplayLabel = 'Authorize Name'
      FieldName = 'AUTH_NAME'
      Size = 100
    end
    object cdsLuAuthPersonJABATAN: TStringField
      FieldName = 'JABATAN'
      Size = 50
    end
  end
  object dsLuAuthPerson: TDataSource
    DataSet = cdsLuAuthPerson
    Left = 1143
    Top = 426
  end
  object cdsLuExchangeRate: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuExhangeRate'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1239
    Top = 18
    object cdsLuExchangeRateCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsLuExchangeRateCCYRATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'CCYRATE'
      DisplayFormat = '#,##0.0000'
    end
  end
  object dsLuExchangeRate: TDataSource
    DataSet = cdsLuExchangeRate
    Left = 1242
    Top = 63
  end
  object dsLuInstructionTypes: TDataSource
    DataSet = cdsLuInstructionTypes
    Left = 1261
    Top = 696
  end
  object cdsLuInstructionTypes: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuInstructionType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1222
    Top = 696
    object StringField6: TStringField
      DisplayLabel = 'Code Type'
      FieldName = 'INSTRUCTION_TYPE_CODE'
      Required = True
      Size = 10
    end
    object StringField7: TStringField
      DisplayLabel = 'Cash/Stock'
      FieldName = 'CASH_STOCK'
      Required = True
      Size = 1
    end
    object StringField8: TStringField
      DisplayLabel = 'Description'
      FieldName = 'INSTRUCTION_TYPE_DESC'
      Size = 50
    end
    object StringField9: TStringField
      DisplayLabel = 'Instruction Mode'
      FieldName = 'INSTRUCTION_MODE'
      Size = 10
    end
    object StringField10: TStringField
      DisplayLabel = 'Extence File'
      FieldName = 'EXT_FILE'
      Size = 10
    end
  end
  object cdsLuCashInstructionMode: TNClientDataset
    Aggregates = <>
    Filter = 'CASH_STOCK = '#39'C'#39
    Filtered = True
    Params = <>
    ProviderName = 'dspN_dmLookup_qryInstructionMode'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1222
    Top = 792
    object cdsLuCashInstructionModeCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Required = True
      Size = 1
    end
    object cdsLuCashInstructionModeINSTRUCTION_MODE: TStringField
      DisplayLabel = 'Instruction Mode'
      FieldName = 'INSTRUCTION_MODE'
      Size = 10
    end
  end
  object dsLuCashInstructionMode: TDataSource
    DataSet = cdsLuCashInstructionMode
    Left = 1261
    Top = 792
  end
  object cdsLuBondsDealTicket: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'FROMDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'UNTILDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuBondsDealTicket'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1266
    Top = 240
    object cdsLuBondsDealTicketTRADEBOND_NO: TStringField
      DisplayLabel = 'Trade No'
      FieldName = 'TRADEBOND_NO'
    end
    object cdsLuBondsDealTicketINSTRUMENT_CODE: TStringField
      DisplayLabel = 'Instrument Code'
      FieldName = 'INSTRUMENT_CODE'
    end
    object cdsLuBondsDealTicketSHORTNAME: TStringField
      DisplayLabel = 'Instrument Name'
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object cdsLuBondsDealTicketFACEVALUE: TFloatField
      DisplayLabel = 'Face Value'
      FieldName = 'FACEVALUE'
      DisplayFormat = '#,##0'
    end
    object cdsLuBondsDealTicketTRADEBOND_ID: TLargeintField
      FieldName = 'TRADEBOND_ID'
      Required = True
    end
    object cdsLuBondsDealTicketTRADEDATE: TDateTimeField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRADEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
  end
  object dsLuBondsDealTicket: TDataSource
    DataSet = cdsLuBondsDealTicket
    Left = 1266
    Top = 282
  end
  object cdsLuMainAccount: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuMainAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1344
    Top = 16
    object cdsLuMainAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuMainAccountACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuMainAccountACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuMainAccountACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 10
    end
    object cdsLuMainAccountSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsLuMainAccountISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsLuMainAccountINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsLuMainAccountPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
  end
  object cdsLuJournalType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuJournaltype'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1347
    Top = 72
    object cdsLuJournalTypeJRNTYPE: TStringField
      DisplayLabel = 'Journal Type'
      FieldName = 'JRNTYPE'
      Required = True
    end
    object cdsLuJournalTypeJRNTYPEDESC: TStringField
      DisplayLabel = 'Desc'
      FieldName = 'JRNTYPEDESC'
      Size = 50
    end
    object cdsLuJournalTypeJRNMANUAL: TStringField
      FieldName = 'JRNMANUAL'
      Size = 1
    end
    object cdsLuJournalTypeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuJournalTypeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuJournalTypeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuJournalTypeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuJournalTypeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuJournalTypeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuJournalTypeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuJournalTypeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuJournalTypeID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsLuJournalType: TDataSource
    DataSet = cdsLuJournalType
    Left = 1347
    Top = 117
  end
  object cdsLuOccupation: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuOccupation'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1266
    Top = 366
    object cdsLuOccupationOC_CODE: TLargeintField
      DisplayLabel = 'Code'
      FieldName = 'OC_CODE'
      Required = True
    end
    object cdsLuOccupationOCCUPATION: TStringField
      DisplayLabel = 'Occupation'
      FieldName = 'OCCUPATION'
      Size = 50
    end
    object cdsLuOccupationOC_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'OC_DESC'
      Size = 200
    end
    object cdsLuOccupationMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuOccupationMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuOccupationAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuOccupationAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuOccupationUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuOccupationUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuOccupationNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuOccupationISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuOccupationID: TLargeintField
      FieldName = 'ID'
    end
    object cdsLuOccupationRISK: TStringField
      DisplayLabel = 'Risk'
      FieldName = 'RISK'
      Size = 1
    end
  end
  object cdsLuBusinessLine: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBusinessLine'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1266
    Top = 468
    object cdsLuBusinessLineBUSSLINE_ID: TIntegerField
      FieldName = 'BUSSLINE_ID'
      Required = True
    end
    object cdsLuBusinessLineBUSSINESS_NAME: TStringField
      DisplayLabel = 'Business Line'
      FieldName = 'BUSSINESS_NAME'
      Size = 50
    end
    object cdsLuBusinessLineBTAX: TFloatField
      FieldName = 'BTAX'
    end
    object cdsLuBusinessLineSTAX: TFloatField
      FieldName = 'STAX'
    end
    object cdsLuBusinessLineMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuBusinessLineMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuBusinessLineAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuBusinessLineAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuBusinessLineUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuBusinessLineUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuBusinessLineNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuBusinessLineISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuBusinessLineID: TLargeintField
      FieldName = 'ID'
    end
    object cdsLuBusinessLineRISK: TStringField
      FieldName = 'RISK'
      Size = 1
    end
  end
  object dsLuOccupation: TDataSource
    DataSet = cdsLuOccupation
    Left = 1267
    Top = 411
  end
  object dsLuBusinessLine: TDataSource
    DataSet = cdsLuBusinessLine
    Left = 1267
    Top = 513
  end
  object cdsLuBussCat: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBussCat'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 784
    Top = 776
    object cdsLuBussCatBUS_CAT_ID: TLargeintField
      FieldName = 'BUS_CAT_ID'
      Required = True
    end
    object cdsLuBussCatBUS_CAT_CODE: TStringField
      FieldName = 'BUS_CAT_CODE'
    end
    object cdsLuBussCatBUS_CAT_DESC: TStringField
      FieldName = 'BUS_CAT_DESC'
      Size = 50
    end
  end
  object dsLuBussCat: TDataSource
    DataSet = cdsLuBussCat
    Left = 784
    Top = 824
  end
  object cdsLuBankRDN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBankRDN'
    RemoteServer = dmGlobal.dspConnection
    Left = 1272
    Top = 328
    object cdsLuBankRDNBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsLuBankRDNBNNAME: TStringField
      DisplayLabel = 'Bank Name'
      FieldName = 'BNNAME'
      Size = 50
    end
    object cdsLuBankRDNBICODE: TStringField
      DisplayLabel = 'BI Code'
      FieldName = 'BICODE'
      Size = 10
    end
    object cdsLuBankRDNINITIAL_NAME: TStringField
      FieldName = 'INITIAL_NAME'
      Size = 10
    end
  end
  object dsLuBankRDN: TDataSource
    DataSet = cdsLuBankRDN
    Left = 1360
    Top = 328
  end
  object cdsLuCustBonds: TNClientDataset
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAccountBonds'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1362
    Top = 507
    object cdsLuCustBondsACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCustBondsENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsLuCustBondsACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuCustBondsACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuCustBondsACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 10
    end
    object cdsLuCustBondsACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsLuCustBondsACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsLuCustBondsBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsLuCustBondsINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsLuCustBondsBUSSTYPE: TLargeintField
      FieldName = 'BUSSTYPE'
    end
    object cdsLuCustBondsTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsLuCustBondsPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsLuCustBondsA_CLS_ORDER: TStringField
      FieldName = 'A_CLS_ORDER'
      Size = 1
    end
    object cdsLuCustBondsAVGPRICEDEC: TSmallintField
      FieldName = 'AVGPRICEDEC'
    end
    object cdsLuCustBondsOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsLuCustBondsCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsLuCustBondsSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsLuCustBondsISWAPU: TStringField
      FieldName = 'ISWAPU'
      Size = 1
    end
    object cdsLuCustBondsISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsLuCustBondsISUSEOTC: TStringField
      FieldName = 'ISUSEOTC'
      Size = 1
    end
    object cdsLuCustBondsISOWNCONTACT: TStringField
      FieldName = 'ISOWNCONTACT'
      Size = 1
    end
    object cdsLuCustBondsISTRDACCOUNT: TStringField
      FieldName = 'ISTRDACCOUNT'
      Size = 1
    end
    object cdsLuCustBondsAUTO_SETTLE: TStringField
      FieldName = 'AUTO_SETTLE'
      Size = 1
    end
    object cdsLuCustBondsSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsLuCustBondsACC_STS: TStringField
      FieldName = 'ACC_STS'
      Size = 1
    end
    object cdsLuCustBondsOMGUSE: TStringField
      FieldName = 'OMGUSE'
      Size = 1
    end
    object cdsLuCustBondsOMGEXREFFCODE: TStringField
      FieldName = 'OMGEXREFFCODE'
    end
    object cdsLuCustBondsOMGALERT: TStringField
      FieldName = 'OMGALERT'
      Size = 1
    end
    object cdsLuCustBondsOMGSENDSSI: TStringField
      FieldName = 'OMGSENDSSI'
      Size = 1
    end
    object cdsLuCustBondsOMGSENDFEEINBLOCK: TStringField
      FieldName = 'OMGSENDFEEINBLOCK'
      Size = 1
    end
    object cdsLuCustBondsSI_SPLIT: TStringField
      FieldName = 'SI_SPLIT'
      Size = 1
    end
    object cdsLuCustBondsALCID: TIntegerField
      FieldName = 'ALCID'
    end
    object cdsLuCustBondsTALCID: TIntegerField
      FieldName = 'TALCID'
    end
    object cdsLuCustBondsLASTTR_DATE: TDateTimeField
      FieldName = 'LASTTR_DATE'
    end
    object cdsLuCustBondsTRF_PRVT_BANK: TStringField
      FieldName = 'TRF_PRVT_BANK'
      Size = 1
    end
    object cdsLuCustBondsTRF_PRVT_BANK_TARGET: TIntegerField
      FieldName = 'TRF_PRVT_BANK_TARGET'
    end
    object cdsLuCustBondsCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
    end
    object cdsLuCustBondsCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
    end
    object cdsLuCustBondsCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsLuCustBondsBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsLuCustBondsSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
    object cdsLuCustBondsIS_IDX_TRX: TStringField
      FieldName = 'IS_IDX_TRX'
      Size = 1
    end
    object cdsLuCustBondsTLCLASSID: TIntegerField
      FieldName = 'TLCLASSID'
    end
    object cdsLuCustBondsDEFTRDPARAM: TStringField
      FieldName = 'DEFTRDPARAM'
      Size = 30
    end
    object cdsLuCustBondsKSEI_SID: TStringField
      FieldName = 'KSEI_SID'
    end
    object cdsLuCustBondsRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
    end
    object cdsLuCustBondsRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
    end
    object cdsLuCustBondsRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
    end
    object cdsLuCustBondsFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
    end
    object cdsLuCustBondsTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsLuCustBondsTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsLuCustBondsACCPASSWORD: TStringField
      FieldName = 'ACCPASSWORD'
      Size = 50
    end
    object cdsLuCustBondsCPID: TIntegerField
      FieldName = 'CPID'
    end
    object cdsLuCustBondsBUS_CAT: TLargeintField
      FieldName = 'BUS_CAT'
    end
    object cdsLuCustBondsINIT_DEPOSIT_FUND: TFloatField
      FieldName = 'INIT_DEPOSIT_FUND'
    end
    object cdsLuCustBondsINIT_DEPOSIT_SHARES: TFloatField
      FieldName = 'INIT_DEPOSIT_SHARES'
    end
    object cdsLuCustBondsALLOC_TYPE: TStringField
      FieldName = 'ALLOC_TYPE'
      Size = 1
    end
    object cdsLuCustBondsTC_BASE: TStringField
      FieldName = 'TC_BASE'
      Size = 1
    end
    object cdsLuCustBondsAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsLuCustBondsDT_AUTOAVGPRICE: TStringField
      FieldName = 'DT_AUTOAVGPRICE'
      Size = 1
    end
    object cdsLuCustBondsSETTLE_MODE: TStringField
      FieldName = 'SETTLE_MODE'
      Size = 10
    end
    object cdsLuCustBondsNET_SETTLE: TStringField
      FieldName = 'NET_SETTLE'
      Size = 1
    end
    object cdsLuCustBondsSETTLE_TYPE: TStringField
      FieldName = 'SETTLE_TYPE'
      Size = 10
    end
    object cdsLuCustBondsDIVIDEN_TAX: TFloatField
      FieldName = 'DIVIDEN_TAX'
    end
    object cdsLuCustBondsDORMANT: TStringField
      FieldName = 'DORMANT'
      Size = 1
    end
    object cdsLuCustBondsMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuCustBondsMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuCustBondsAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuCustBondsAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuCustBondsUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuCustBondsUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuCustBondsNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuCustBondsISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuCustBondsID: TLargeintField
      FieldName = 'ID'
    end
    object cdsLuCustBondsRISK: TStringField
      FieldName = 'RISK'
      Size = 1
    end
    object cdsLuCustBondsEXCELL_CLASS: TIntegerField
      FieldName = 'EXCELL_CLASS'
    end
    object cdsLuCustBondsSPRESID: TLargeintField
      FieldName = 'SPRESID'
    end
    object cdsLuCustBondsMCALLDAY: TIntegerField
      FieldName = 'MCALLDAY'
    end
    object cdsLuCustBondsAFFIL: TBooleanField
      FieldName = 'AFFIL'
    end
    object cdsLuCustBondsCCLSSNAME: TStringField
      FieldName = 'CCLSSNAME'
      ReadOnly = True
      Size = 80
    end
    object cdsLuCustBondsTLB_OVERLIMIT: TStringField
      FieldName = 'TLB_OVERLIMIT'
      ReadOnly = True
      Size = 1
    end
    object cdsLuCustBondsTLB_NOTVALIDSTATUS: TStringField
      FieldName = 'TLB_NOTVALIDSTATUS'
      ReadOnly = True
      Size = 1
    end
    object cdsLuCustBondsTLB_MRG_NONVALSTOCK: TStringField
      FieldName = 'TLB_MRG_NONVALSTOCK'
      ReadOnly = True
      Size = 1
    end
    object cdsLuCustBondsTLB_OVERDUE: TStringField
      FieldName = 'TLB_OVERDUE'
      ReadOnly = True
      Size = 1
    end
    object cdsLuCustBondsTLS_SHORTSELL: TStringField
      FieldName = 'TLS_SHORTSELL'
      ReadOnly = True
      Size = 1
    end
    object cdsLuCustBondsTLS_NOTVALIDSTATUS: TStringField
      FieldName = 'TLS_NOTVALIDSTATUS'
      ReadOnly = True
      Size = 1
    end
    object cdsLuCustBondsTLS_OVERDUE: TStringField
      FieldName = 'TLS_OVERDUE'
      ReadOnly = True
      Size = 1
    end
    object cdsLuCustBondsCREDIT_LIMIT: TFloatField
      FieldName = 'CREDIT_LIMIT'
      ReadOnly = True
    end
    object cdsLuCustBondsBUYAPPROVEMETHODE: TIntegerField
      FieldName = 'BUYAPPROVEMETHODE'
      ReadOnly = True
    end
    object cdsLuCustBondsSELLAPPROVEMETHODE: TIntegerField
      FieldName = 'SELLAPPROVEMETHODE'
      ReadOnly = True
    end
    object cdsLuCustBondsMCALLDAY_1: TIntegerField
      FieldName = 'MCALLDAY_1'
      ReadOnly = True
    end
    object cdsLuCustBondsEMAILID: TLargeintField
      FieldName = 'EMAILID'
      ReadOnly = True
    end
    object cdsLuCustBondsSENDID: TLargeintField
      FieldName = 'SENDID'
      ReadOnly = True
    end
    object cdsLuCustBondsLASTSENDMAIL: TDateField
      FieldName = 'LASTSENDMAIL'
      ReadOnly = True
    end
    object cdsLuCustBondsSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      Size = 10
    end
    object cdsLuCustBondsBUSSINESS_NAME: TStringField
      FieldName = 'BUSSINESS_NAME'
      ReadOnly = True
      Size = 50
    end
    object cdsLuCustBondsBTAX: TFloatField
      FieldName = 'BTAX'
      ReadOnly = True
    end
    object cdsLuCustBondsSTAX: TFloatField
      FieldName = 'STAX'
      ReadOnly = True
    end
    object cdsLuCustBondsCUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
      ReadOnly = True
    end
  end
  object dsLuCustBonds: TDataSource
    DataSet = cdsLuCustBonds
    Left = 1362
    Top = 549
  end
  object cdsLuCustEntity: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCustEntity'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1456
    Top = 16
    object cdsLuCustEntityENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsLuCustEntityENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Required = True
    end
    object cdsLuCustEntityCUST_NAME: TStringField
      FieldName = 'CUST_NAME'
      ReadOnly = True
      Size = 137
    end
    object cdsLuCustEntityCUST_IDCARDTYPE: TStringField
      FieldName = 'CUST_IDCARDTYPE'
      ReadOnly = True
      Size = 10
    end
    object cdsLuCustEntityCUST_IDCARDNO: TStringField
      FieldName = 'CUST_IDCARDNO'
      ReadOnly = True
      Size = 30
    end
    object cdsLuCustEntityCUST_IDCARDEXPIRE: TDateField
      FieldName = 'CUST_IDCARDEXPIRE'
      ReadOnly = True
    end
    object cdsLuCustEntityCUST_ADDRESS: TStringField
      FieldName = 'CUST_ADDRESS'
      ReadOnly = True
      Size = 100
    end
    object cdsLuCustEntityCUST_PHONE: TStringField
      FieldName = 'CUST_PHONE'
      ReadOnly = True
    end
    object cdsLuCustEntityCUST_FAX: TStringField
      FieldName = 'CUST_FAX'
      ReadOnly = True
    end
    object cdsLuCustEntityCUST_MAIL: TStringField
      FieldName = 'CUST_MAIL'
      ReadOnly = True
      Size = 30
    end
  end
  object dsLuCustEntity: TDataSource
    DataSet = cdsLuCustEntity
    Left = 1456
    Top = 64
  end
  object cdsLuCustAccount: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCustAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1456
    Top = 112
    object cdsLuCustAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCustAccountACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuCustAccountCUST_NAME: TStringField
      FieldName = 'CUST_NAME'
      ReadOnly = True
      Size = 200
    end
    object cdsLuCustAccountCUST_IDCARDTYPE: TIntegerField
      FieldName = 'CUST_IDCARDTYPE'
      ReadOnly = True
    end
    object cdsLuCustAccountCUST_IDCARDNO: TStringField
      FieldName = 'CUST_IDCARDNO'
      ReadOnly = True
      Size = 30
    end
    object cdsLuCustAccountCUST_IDCARDEXPIRE: TDateField
      FieldName = 'CUST_IDCARDEXPIRE'
      ReadOnly = True
    end
    object cdsLuCustAccountCUST_ADDRESS: TStringField
      FieldName = 'CUST_ADDRESS'
      ReadOnly = True
      Size = 182
    end
    object cdsLuCustAccountCUST_PHONE: TStringField
      FieldName = 'CUST_PHONE'
      ReadOnly = True
    end
    object cdsLuCustAccountCUST_FAX: TStringField
      FieldName = 'CUST_FAX'
      ReadOnly = True
      Size = 60
    end
    object cdsLuCustAccountCUST_MAIL: TStringField
      FieldName = 'CUST_MAIL'
      ReadOnly = True
      Size = 60
    end
  end
  object dsLuCustAccount: TDataSource
    DataSet = cdsLuCustAccount
    Left = 1456
    Top = 160
  end
  object cdsLuBAE: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBAE'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1456
    Top = 208
    object cdsLuBAEBAEID: TIntegerField
      FieldName = 'BAEID'
      Required = True
    end
    object cdsLuBAEBAECODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'BAECODE'
      Required = True
      Size = 10
    end
    object cdsLuBAEBAENAME: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 50
      FieldName = 'BAENAME'
      Size = 100
    end
    object cdsLuBAEBAEADDRESS: TStringField
      DisplayLabel = 'Address'
      DisplayWidth = 100
      FieldName = 'BAEADDRESS'
      Size = 250
    end
    object cdsLuBAEBAEPHONE: TStringField
      DisplayLabel = 'Phone'
      FieldName = 'BAEPHONE'
    end
    object cdsLuBAEBAEFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'BAEFAX'
    end
    object cdsLuBAEMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuBAEMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuBAEAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuBAEAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuBAEUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuBAEUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuBAENOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuBAEISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuBAEID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsLuBAE: TDataSource
    DataSet = cdsLuBAE
    Left = 1456
    Top = 256
  end
  object cdsLuAccountComm: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuAccountComm'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1312
    Top = 176
    object cdsLuAccountCommACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountCommMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuAccountCommCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Required = True
      Size = 10
    end
    object cdsLuAccountCommCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
      Required = True
    end
    object cdsLuAccountCommNET_COMMID: TLargeintField
      FieldName = 'NET_COMMID'
    end
    object cdsLuAccountCommCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsLuAccountCommUSE_DAYTRADE: TStringField
      FieldName = 'USE_DAYTRADE'
      Size = 1
    end
    object cdsLuAccountCommUSE_MINCOMM: TStringField
      FieldName = 'USE_MINCOMM'
      Size = 1
    end
    object cdsLuAccountCommWITH_SELLTAX: TStringField
      FieldName = 'WITH_SELLTAX'
      Size = 1
    end
    object cdsLuAccountCommCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      ReadOnly = True
    end
  end
  object cdsLuAccDorman: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAccDorman'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1285
    Top = 65535
    object cdsLuAccDormanACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccDormanACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuAccDormanACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuAccDormanENTNAME: TStringField
      FieldName = 'ENTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsLuAccDormanACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsLuAccDormanSIDNO: TStringField
      FieldName = 'SIDNO'
      ReadOnly = True
    end
    object cdsLuAccDormanPRDDESC: TStringField
      FieldName = 'PRDDESC'
      ReadOnly = True
      Size = 50
    end
    object cdsLuAccDormanBRANCHCODE: TStringField
      FieldName = 'BRANCHCODE'
      ReadOnly = True
      Required = True
    end
    object cdsLuAccDormanBRANCHNAME: TStringField
      FieldName = 'BRANCHNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsLuAccDormanSALESCODE: TStringField
      FieldName = 'SALESCODE'
      ReadOnly = True
      Required = True
    end
    object cdsLuAccDormanSALESNAME: TStringField
      FieldName = 'SALESNAME'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccDormanLASTTR_DATE: TDateTimeField
      DisplayLabel = 'Last Trade'
      FieldName = 'LASTTR_DATE'
    end
    object cdsLuAccDormanDORMANDAY: TIntegerField
      DisplayLabel = 'Dorman Days'
      FieldName = 'DORMANDAY'
      ReadOnly = True
    end
    object cdsLuAccDormanACC_STS: TStringField
      FieldName = 'ACC_STS'
      Size = 1
    end
    object cdsLuAccDormanCUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
      ReadOnly = True
    end
    object cdsLuAccDormanAccountType: TStringField
      DisplayLabel = 'Account Type'
      FieldName = 'AccountType'
      ReadOnly = True
      Required = True
      Size = 33
    end
    object cdsLuAccDormanCustomerType: TStringField
      DisplayLabel = 'Customer Type'
      FieldName = 'CustomerType'
      ReadOnly = True
      Size = 16
    end
  end
  object dsLuAccDorman: TDataSource
    DataSet = cdsLuAccDorman
    Left = 1390
    Top = 23
  end
  object cdsLuSettleTypeCash: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'SETTLETYPE_CS'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuSettleType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 888
    Top = 776
    object cdsLuSettleTypeCashSETTLETYPE_CODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'SETTLETYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuSettleTypeCashSETTLETYPE_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'SETTLETYPE_DESC'
      Size = 100
    end
    object cdsLuSettleTypeCashSETTLETYPE_CS: TStringField
      FieldName = 'SETTLETYPE_CS'
      Size = 1
    end
    object cdsLuSettleTypeCashFILTERTYPE: TStringField
      FieldName = 'FILTERTYPE'
      Size = 3
    end
  end
  object cdsLuSettleTypeStock: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'SETTLETYPE_CS'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuSettleType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 888
    Top = 824
    object cdsLuSettleTypeStockSETTLETYPE_CODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'SETTLETYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuSettleTypeStockSETTLETYPE_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'SETTLETYPE_DESC'
      Size = 100
    end
    object cdsLuSettleTypeStockSETTLETYPE_CS: TStringField
      FieldName = 'SETTLETYPE_CS'
      Size = 1
    end
    object cdsLuSettleTypeStockFILTERTYPE: TStringField
      FieldName = 'FILTERTYPE'
      Size = 3
    end
  end
  object dsLuSettleTypeCash: TDataSource
    DataSet = cdsLuSettleTypeCash
    Left = 1000
    Top = 776
  end
  object dsLuSettleTypeStock: TDataSource
    DataSet = cdsLuSettleTypeStock
    Left = 1000
    Top = 824
  end
  object cdsLuAccBankGroupByEntity: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuAccBankGroupByEntity'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1456
    Top = 304
    object cdsLuAccBankGroupByEntityACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuAccBankGroupByEntityACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccBankGroupByEntityBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuAccBankGroupByEntityBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuAccBankGroupByEntityBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuAccBankGroupByEntityBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuAccBankGroupByEntityISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsLuAccBankGroupByEntityBNCHGSTYPE: TStringField
      FieldName = 'BNCHGSTYPE'
      Size = 10
    end
    object cdsLuAccBankGroupByEntityACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuAccBankGroupByEntityMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuAccBankGroupByEntityMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuAccBankGroupByEntityAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuAccBankGroupByEntityAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuAccBankGroupByEntityUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuAccBankGroupByEntityUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuAccBankGroupByEntityNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuAccBankGroupByEntityISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuAccBankGroupByEntityID: TLargeintField
      FieldName = 'ID'
    end
    object cdsLuAccBankGroupByEntityCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsLuAccBankGroupByEntityACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsLuAccBankGroupByEntityACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccBankGroupByEntityACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsLuAccBankGroupByEntityACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsLuAccBankGroupByEntityACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      ReadOnly = True
      Size = 2
    end
  end
  object cdsLuAccCustodyGroupByEntity: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuAccCustodyGroupByEntity'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1456
    Top = 352
    object cdsLuAccCustodyGroupByEntityACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsLuAccCustodyGroupByEntityACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccCustodyGroupByEntityCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 30
    end
    object cdsLuAccCustodyGroupByEntityCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsLuAccCustodyGroupByEntityCUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 50
    end
    object cdsLuAccCustodyGroupByEntityCUSTODYBRANCH: TStringField
      FieldName = 'CUSTODYBRANCH'
      Size = 50
    end
    object cdsLuAccCustodyGroupByEntityCUSTODYTYPE: TStringField
      FieldName = 'CUSTODYTYPE'
      Size = 1
    end
    object cdsLuAccCustodyGroupByEntityACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuAccCustodyGroupByEntityMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuAccCustodyGroupByEntityMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuAccCustodyGroupByEntityAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuAccCustodyGroupByEntityAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuAccCustodyGroupByEntityUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuAccCustodyGroupByEntityUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuAccCustodyGroupByEntityNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuAccCustodyGroupByEntityISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuAccCustodyGroupByEntityID: TLargeintField
      FieldName = 'ID'
    end
    object cdsLuAccCustodyGroupByEntityACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccCustodyGroupByEntityACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsLuAccCustodyGroupByEntityACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsLuAccCustodyGroupByEntityACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      ReadOnly = True
      Size = 2
    end
  end
  object cdsLuSettleTransType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuSettleTransType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1456
    Top = 400
    object cdsLuSettleTransTypeTRANS_TYPE_CODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'TRANS_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuSettleTransTypeTRANS_TYPE_NAME: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 100
      FieldName = 'TRANS_TYPE_NAME'
      Size = 150
    end
  end
  object dsLuSettleTransType: TDataSource
    DataSet = cdsLuSettleTransType
    Left = 1456
    Top = 448
  end
  object cdsLuSettleTypeAll: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuSettleTypeAll'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1456
    Top = 496
    object cdsLuSettleTypeAllSETTLETYPE_CODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'SETTLETYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuSettleTypeAllSETTLETYPE_DESC: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 80
      FieldName = 'SETTLETYPE_DESC'
      Size = 100
    end
    object cdsLuSettleTypeAllSETTLETYPE_CS: TStringField
      DisplayLabel = 'Cash / Stock'
      FieldName = 'SETTLETYPE_CS'
      Size = 1
    end
  end
  object dsLuSettleTypeAll: TDataSource
    DataSet = cdsLuSettleTypeAll
    Left = 1456
    Top = 544
  end
  object cdsLuInstrumentRight: TNClientDataset
    Aggregates = <>
    Filter = 'INSTRUMENT_CODE LIKE '#39'%-R%'#39
    Filtered = True
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuInstrument'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1537
    Top = 16
    object LargeintField1: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object StringField5: TStringField
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object StringField11: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
  end
  object dsLuInstrumentRight: TDataSource
    DataSet = cdsLuInstrumentRight
    Left = 1537
    Top = 64
  end
  object dsLuInstrumentWarrant: TDataSource
    DataSet = cdsLuInstrumentWarrant
    Left = 1540
    Top = 160
  end
  object cdsLuInstrumentWarrant: TNClientDataset
    Aggregates = <>
    Filter = 'INSTRUMENT_CODE LIKE '#39'%-W%'#39
    Filtered = True
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuInstrument'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1540
    Top = 115
    object LargeintField2: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object StringField12: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object StringField13: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object StringField14: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object StringField15: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object StringField16: TStringField
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object StringField17: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
  end
  object cdsLuAccountBySubType: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ACCSUBTYPE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuAccountBySubType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1152
    Top = 536
    object cdsLuAccountBySubTypeACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountBySubTypeACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuAccountBySubTypeACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuAccountBySubTypeACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsLuAccountBySubTypeAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
  end
  object cdsLuBankTrType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBankTRType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 900
    Top = 405
    object cdsLuBankTrTypeTRTYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'TRTYPE'
      Size = 2
    end
    object cdsLuBankTrTypeTRTYPENAME: TStringField
      DisplayLabel = 'Type Name'
      FieldName = 'TRTYPENAME'
      Size = 100
    end
  end
  object dsLuBankTrType: TDataSource
    DataSet = cdsLuBankTrType
    Left = 909
    Top = 447
  end
  object cdsLuAccBankCustFilter: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ENTID1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ENTID2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BT1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BT2'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuAccBankCustFilter'
    RemoteServer = dmGlobal.dspConnection
    Left = 1432
    Top = 736
    object cdsLuAccBankCustFilterACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      ReadOnly = True
      Required = True
    end
    object cdsLuAccBankCustFilterBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      ReadOnly = True
      Required = True
      Size = 2
    end
    object cdsLuAccBankCustFilterACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      ReadOnly = True
      Size = 50
    end
    object cdsLuAccBankCustFilterCCYCODE: TStringField
      FieldName = 'CCYCODE'
      ReadOnly = True
      Size = 5
    end
    object cdsLuAccBankCustFilterACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
    end
    object cdsLuAccBankCustFilterBNCODE: TStringField
      FieldName = 'BNCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccBankCustFilterBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccBankCustFilterBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsLuAccBankCustFilterBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      ReadOnly = True
      Size = 50
    end
    object cdsLuAccBankCustFilterACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuAccBankCustFilterACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuAccBankCustFilterACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsLuAccBankCustFilterPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
  end
  object cdsLuInterestType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuInterestType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1432
    Top = 784
    object cdsLuInterestTypeINTEREST_TYPE: TStringField
      DisplayLabel = 'Type'
      DisplayWidth = 5
      FieldName = 'INTEREST_TYPE'
      Required = True
      Size = 2
    end
    object cdsLuInterestTypeINTEREST_TYPENAME: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 80
      FieldName = 'INTEREST_TYPENAME'
      Size = 150
    end
    object cdsLuInterestTypeALTYPE: TStringField
      FieldName = 'ALTYPE'
      Size = 10
    end
    object cdsLuInterestTypeLOCAL_TAX: TFloatField
      DisplayLabel = 'Local Tax'
      FieldName = 'LOCAL_TAX'
    end
    object cdsLuInterestTypeFOREIGN_TAX: TFloatField
      DisplayLabel = 'Foreign Tax'
      FieldName = 'FOREIGN_TAX'
    end
    object cdsLuInterestTypeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuInterestTypeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuInterestTypeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuInterestTypeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuInterestTypeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuInterestTypeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuInterestTypeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuInterestTypeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuInterestTypeID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsLuInterestType: TDataSource
    DataSet = cdsLuInterestType
    Left = 1440
    Top = 832
  end
  object cdsLuInterestByType: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'INTEREST_TYPE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuInterestByType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1464
    Top = 600
    object cdsLuInterestByTypeINTERESTCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'INTERESTCODE'
      Required = True
      Size = 10
    end
    object cdsLuInterestByTypeCCY: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCY'
      Size = 5
    end
    object cdsLuInterestByTypeINTERESTDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'INTERESTDESC'
      Size = 50
    end
    object cdsLuInterestByTypeCALCMETHOD: TStringField
      DisplayLabel = 'Calc Method'
      FieldName = 'CALCMETHOD'
      Size = 1
    end
    object cdsLuInterestByTypeINTERESTRATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'INTERESTRATE'
    end
    object cdsLuInterestByTypeINTERESTTABLE: TStringField
      DisplayLabel = 'Table'
      FieldName = 'INTERESTTABLE'
      Size = 10
    end
    object cdsLuInterestByTypeCALCBASIS: TStringField
      DisplayLabel = 'Calc Basis'
      FieldName = 'CALCBASIS'
      Size = 1
    end
    object cdsLuInterestByTypeINTERESTDAY: TIntegerField
      DisplayLabel = 'Interest Day'
      FieldName = 'INTERESTDAY'
    end
    object cdsLuInterestByTypeISACCRUE: TSmallintField
      FieldName = 'ISACCRUE'
    end
    object cdsLuInterestByTypeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuInterestByTypeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuInterestByTypeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuInterestByTypeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuInterestByTypeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuInterestByTypeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuInterestByTypeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuInterestByTypeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuInterestByTypeID: TLargeintField
      FieldName = 'ID'
    end
    object cdsLuInterestByTypeINTEREST_TYPE: TStringField
      FieldName = 'INTEREST_TYPE'
      Size = 2
    end
  end
  object dsLuInterestByType: TDataSource
    DataSet = cdsLuInterestByType
    Left = 1464
    Top = 648
  end
  object cdsLuCBestInstrReason: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCBestInstrReason'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1542
    Top = 210
    object cdsLuCBestInstrReasonCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CODE'
    end
    object cdsLuCBestInstrReasonCODE_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CODE_DESC'
      Size = 200
    end
    object cdsLuCBestInstrReasonLINK_CODE: TStringField
      DisplayLabel = 'Link Code'
      FieldName = 'LINK_CODE'
    end
    object cdsLuCBestInstrReasonTYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'TYPE'
      Size = 2
    end
  end
  object cdsLuCBestInstrPurpose: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCBestInstrPurpose'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1542
    Top = 285
    object cdsLuCBestInstrPurposeCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CODE'
    end
    object cdsLuCBestInstrPurposeCODE_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CODE_DESC'
      Size = 200
    end
    object cdsLuCBestInstrPurposeLINK_CODE: TStringField
      DisplayLabel = 'Link Code'
      FieldName = 'LINK_CODE'
    end
    object cdsLuCBestInstrPurposeTYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'TYPE'
      Size = 2
    end
  end
  object dsLuCBestInstrReason: TDataSource
    DataSet = cdsLuCBestInstrReason
    Left = 1542
    Top = 240
  end
  object dsLuCBestInstrPurpose: TDataSource
    DataSet = cdsLuCBestInstrPurpose
    Left = 1542
    Top = 318
  end
  object cdsLuCBestAcc01: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCBestAcc01'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1542
    Top = 396
    object cdsLuCBestAcc01ACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsLuCBestAcc01ACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCBestAcc01CUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 30
    end
    object cdsLuCBestAcc01CUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsLuCBestAcc01CUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 50
    end
    object cdsLuCBestAcc01CUSTODYBRANCH: TStringField
      FieldName = 'CUSTODYBRANCH'
      Size = 50
    end
    object cdsLuCBestAcc01CUSTODYTYPE: TStringField
      FieldName = 'CUSTODYTYPE'
      Size = 1
    end
    object cdsLuCBestAcc01ACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuCBestAcc01CBEST_ACCBANKID: TLargeintField
      FieldName = 'CBEST_ACCBANKID'
    end
  end
  object cdsLuCBestAcc04: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCBestAcc04'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1542
    Top = 471
    object cdsLuCBestAcc04ACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsLuCBestAcc04ACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCBestAcc04CUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 30
    end
    object cdsLuCBestAcc04CUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsLuCBestAcc04CUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 50
    end
    object cdsLuCBestAcc04CUSTODYBRANCH: TStringField
      FieldName = 'CUSTODYBRANCH'
      Size = 50
    end
    object cdsLuCBestAcc04CUSTODYTYPE: TStringField
      FieldName = 'CUSTODYTYPE'
      Size = 1
    end
    object cdsLuCBestAcc04ACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuCBestAcc04CBEST_ACCBANKID: TLargeintField
      FieldName = 'CBEST_ACCBANKID'
    end
  end
  object dsLuCBestAcc01: TDataSource
    DataSet = cdsLuCBestAcc01
    Left = 1542
    Top = 435
  end
  object dsLuCBestAcc04: TDataSource
    DataSet = cdsLuCBestAcc04
    Left = 1542
    Top = 507
  end
  object cdsJrnType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryJournalType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1256
    Top = 560
    object cdsJrnTypeJTYPE: TStringField
      FieldName = 'JTYPE'
      Required = True
    end
    object cdsJrnTypeDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
    object cdsJrnTypeGLCDDBID: TIntegerField
      FieldName = 'GLCDDBID'
    end
    object cdsJrnTypeGLCDDB: TStringField
      FieldName = 'GLCDDB'
      Size = 30
    end
    object cdsJrnTypeGLCDCR: TStringField
      FieldName = 'GLCDCR'
      Size = 30
    end
    object cdsJrnTypeCREATECOS: TStringField
      FieldName = 'CREATECOS'
      Size = 1
    end
    object cdsJrnTypeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsJrnTypeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsJrnTypeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsJrnTypeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsJrnTypeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsJrnTypeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsJrnTypeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsJrnTypeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsJrnTypeID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsJrnType: TDataSource
    DataSet = cdsJrnType
    Left = 1256
    Top = 608
  end
  object cdsLuInstrumentGroupType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuInstrumentGroupType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 483
    Top = 552
    object cdsLuInstrumentGroupTypeGROUP_TYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'GROUP_TYPE'
      Size = 10
    end
    object cdsLuInstrumentGroupTypeGROUP_TYPE_NAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'GROUP_TYPE_NAME'
      Size = 30
    end
  end
  object dsLuInstrumentGroupType: TDataSource
    DataSet = cdsLuInstrumentGroupType
    Left = 486
    Top = 600
  end
  object cdsLuStockPosByAcc: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockPosByAcc'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 480
    Top = 664
    object cdsLuStockPosByAccSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsLuStockPosByAccMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsLuStockPosByAccLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      ReadOnly = True
    end
    object cdsLuStockPosByAccISSUERNAME: TStringField
      FieldName = 'ISSUERNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsLuStockPosByAccISINCODE: TStringField
      FieldName = 'ISINCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsLuStockPosByAccISINDATE: TDateTimeField
      FieldName = 'ISINDATE'
      ReadOnly = True
    end
    object cdsLuStockPosByAccQTY_ONHAND: TFloatField
      FieldName = 'QTY_ONHAND'
      DisplayFormat = '#,##0'
    end
    object cdsLuStockPosByAccQTY_OUTS: TFloatField
      FieldName = 'QTY_OUTS'
      DisplayFormat = '#,##0'
    end
    object cdsLuStockPosByAccQTY_ONHOLD: TFloatField
      FieldName = 'QTY_ONHOLD'
      DisplayFormat = '#,##0'
    end
    object cdsLuStockPosByAccQTY_BAL: TFloatField
      FieldName = 'QTY_BAL'
      DisplayFormat = '#,##0'
    end
    object cdsLuStockPosByAccQTY_OVERDUE: TFloatField
      FieldName = 'QTY_OVERDUE'
      DisplayFormat = '#,##0'
    end
    object cdsLuStockPosByAccQTY_DLV: TFloatField
      FieldName = 'QTY_DLV'
      DisplayFormat = '#,##0'
    end
    object cdsLuStockPosByAccQTY_RCV: TFloatField
      FieldName = 'QTY_RCV'
      DisplayFormat = '#,##0'
    end
  end
  object cdsLuEmailType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuEmailType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1572
    Top = 654
    object cdsLuEmailTypeEMAILTYPE: TStringField
      DisplayLabel = 'Email Type'
      FieldName = 'EMAILTYPE'
      Required = True
      Size = 10
    end
    object cdsLuEmailTypeEMAIL_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'EMAIL_DESC'
      Size = 100
    end
  end
  object dsLuEmailType: TDataSource
    DataSet = cdsLuEmailType
    Left = 1572
    Top = 699
  end
  object cdsLuMTITrans: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuMTITrans'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1664
    Top = 16
    object cdsLuMTITransTRANSID: TIntegerField
      FieldName = 'TRANSID'
      Required = True
    end
    object cdsLuMTITransTRANSCODE: TStringField
      FieldName = 'TRANSCODE'
      Required = True
      Size = 50
    end
    object cdsLuMTITransDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object cdsLuMTITransTRANSTYPE: TStringField
      FieldName = 'TRANSTYPE'
      Required = True
      Size = 1
    end
    object cdsLuMTITransSOURCEDATA: TMemoField
      FieldName = 'SOURCEDATA'
      BlobType = ftMemo
    end
    object cdsLuMTITransMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuMTITransMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuMTITransAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuMTITransAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuMTITransUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuMTITransUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuMTITransNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuMTITransISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuMTITransID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsLuMTIRecord: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuMTIRecord'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1664
    Top = 64
    object cdsLuMTIRecordRECORDID: TIntegerField
      FieldName = 'RECORDID'
      Required = True
    end
    object cdsLuMTIRecordRECORDNAME: TStringField
      DisplayLabel = 'Record Name'
      FieldName = 'RECORDNAME'
      Required = True
      Size = 50
    end
    object cdsLuMTIRecordDECSRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'DECSRIPTION'
      Size = 250
    end
    object cdsLuMTIRecordMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuMTIRecordMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuMTIRecordAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuMTIRecordAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuMTIRecordUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuMTIRecordUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuMTIRecordNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuMTIRecordISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuMTIRecordID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsLuMTIRecord: TDataSource
    DataSet = cdsLuMTIRecord
    Left = 1760
    Top = 64
  end
  object cdsLuMTIField: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuMTIField'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1664
    Top = 112
    object cdsLuMTIFieldFIELDID: TIntegerField
      FieldName = 'FIELDID'
      Required = True
    end
    object cdsLuMTIFieldRECORDID: TIntegerField
      FieldName = 'RECORDID'
      Required = True
    end
    object cdsLuMTIFieldSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsLuMTIFieldFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Required = True
      Size = 50
    end
    object cdsLuMTIFieldXMLFIELDNAME: TStringField
      FieldName = 'XMLFIELDNAME'
      Size = 100
    end
    object cdsLuMTIFieldSYNTAX: TStringField
      FieldName = 'SYNTAX'
    end
    object cdsLuMTIFieldMOC: TStringField
      FieldName = 'MOC'
      Required = True
      Size = 1
    end
    object cdsLuMTIFieldNOTES: TStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsLuMTIFieldMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuMTIFieldMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuMTIFieldAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuMTIFieldAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuMTIFieldUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuMTIFieldUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuMTIFieldNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuMTIFieldISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuMTIFieldID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsLuMTITransRecord: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TRANSID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuMTITransRecord'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1664
    Top = 160
    object cdsLuMTITransRecordTRANS_RECORD_ID: TIntegerField
      FieldName = 'TRANS_RECORD_ID'
      Required = True
    end
    object cdsLuMTITransRecordTRANSID: TIntegerField
      FieldName = 'TRANSID'
      Required = True
    end
    object cdsLuMTITransRecordRECORDID: TIntegerField
      FieldName = 'RECORDID'
      Required = True
    end
    object cdsLuMTITransRecordSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsLuMTITransRecordMINREC: TIntegerField
      FieldName = 'MINREC'
      Required = True
    end
    object cdsLuMTITransRecordMAXREC: TIntegerField
      FieldName = 'MAXREC'
      Required = True
    end
    object cdsLuMTITransRecordNUM_FIELDS: TIntegerField
      FieldName = 'NUM_FIELDS'
    end
    object cdsLuMTITransRecordREQ_FIELDS: TIntegerField
      FieldName = 'REQ_FIELDS'
    end
    object cdsLuMTITransRecordMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuMTITransRecordMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuMTITransRecordAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuMTITransRecordAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuMTITransRecordUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuMTITransRecordUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuMTITransRecordNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuMTITransRecordISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuMTITransRecordID: TLargeintField
      FieldName = 'ID'
    end
    object cdsLuMTITransRecordRECORDNAME: TStringField
      FieldName = 'RECORDNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsLuMTITransRecordDECSRIPTION: TStringField
      FieldName = 'DECSRIPTION'
      ReadOnly = True
      Size = 250
    end
  end
  object cdsLuMTIFieldByRecord: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'RECORDID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuMTIFieldByRecord'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1664
    Top = 208
    object cdsLuMTIFieldByRecordFIELDID: TIntegerField
      FieldName = 'FIELDID'
      Required = True
    end
    object cdsLuMTIFieldByRecordRECORDID: TIntegerField
      FieldName = 'RECORDID'
      Required = True
    end
    object cdsLuMTIFieldByRecordSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsLuMTIFieldByRecordFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Required = True
      Size = 50
    end
    object cdsLuMTIFieldByRecordXMLFIELDNAME: TStringField
      FieldName = 'XMLFIELDNAME'
      Size = 100
    end
    object cdsLuMTIFieldByRecordSYNTAX: TStringField
      FieldName = 'SYNTAX'
    end
    object cdsLuMTIFieldByRecordMOC: TStringField
      FieldName = 'MOC'
      Required = True
      Size = 1
    end
    object cdsLuMTIFieldByRecordNOTES: TStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsLuMTIFieldByRecordMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuMTIFieldByRecordMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuMTIFieldByRecordAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuMTIFieldByRecordAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuMTIFieldByRecordUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuMTIFieldByRecordUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuMTIFieldByRecordNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuMTIFieldByRecordISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuMTIFieldByRecordID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsLuMTITrans: TDataSource
    DataSet = cdsLuMTITrans
    Left = 1760
    Top = 16
  end
  object dsLuMTITransRecord: TDataSource
    DataSet = cdsLuMTITransRecord
    Left = 1768
    Top = 160
  end
  object dsLuMTIField: TDataSource
    DataSet = cdsLuMTIField
    Left = 1752
    Top = 112
  end
  object cdsLuMTIDatasetField: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1664
    Top = 256
    object cdsLuMTIDatasetFieldFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      Size = 100
    end
  end
  object dsLuMTIDatasetField: TDataSource
    DataSet = cdsLuMTIDatasetField
    Left = 1768
    Top = 256
  end
  object cdsLuMTIConfig: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmOmgeo_qryMTIConfigList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1664
    Top = 304
    object cdsLuMTIConfigCONFIGID: TIntegerField
      FieldName = 'CONFIGID'
      Required = True
    end
    object cdsLuMTIConfigCONFIGCODE: TStringField
      FieldName = 'CONFIGCODE'
      Required = True
      Size = 50
    end
    object cdsLuMTIConfigTRANSID: TIntegerField
      FieldName = 'TRANSID'
      Required = True
    end
    object cdsLuMTIConfigDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object cdsLuMTIConfigMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuMTIConfigMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuMTIConfigAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuMTIConfigAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuMTIConfigUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuMTIConfigUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuMTIConfigNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuMTIConfigISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuMTIConfigID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsLuMTIConfig: TDataSource
    DataSet = cdsLuMTIConfig
    Left = 1768
    Top = 304
  end
  object cdsLuSIType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuSIType'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsLuSITypeCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 483
    Top = 447
    object cdsLuSITypeSITYPE: TStringField
      DisplayLabel = 'SI Type'
      FieldName = 'SITYPE'
      Required = True
      Size = 2
    end
    object cdsLuSITypeSITYPENAME: TStringField
      DisplayLabel = 'SI Name'
      FieldName = 'SITYPENAME'
      Size = 100
    end
    object cdsLuSITypeSIDESC: TStringField
      FieldKind = fkCalculated
      FieldName = 'SIDESC'
      Size = 150
      Calculated = True
    end
  end
  object dsLuSIType: TDataSource
    DataSet = cdsLuSIType
    Left = 489
    Top = 495
  end
  object cdsluExternalReff: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuExternalReff'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1665
    Top = 354
    object cdsluExternalReffACCID: TIntegerField
      DisplayLabel = 'Account ID'
      FieldName = 'ACCID'
      Required = True
    end
    object cdsluExternalReffEXTREF_CODE: TStringField
      DisplayLabel = 'External Refference'
      FieldName = 'EXTREF_CODE'
      Required = True
      Size = 30
    end
    object cdsluExternalReffACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsluExternalReffACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsluExternalReffACCINIT: TStringField
      DisplayLabel = 'Account Initial'
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsluExternalReffACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsluExternalReffACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      ReadOnly = True
      Size = 2
    end
    object cdsluExternalReffENTTID: TIntegerField
      FieldName = 'ENTTID'
      ReadOnly = True
      Required = True
    end
  end
  object dsLuExternalReff: TDataSource
    DataSet = cdsluExternalReff
    Left = 1767
    Top = 354
  end
  object cdsLuBankRDNByAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BROKERACCID'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankRDNByAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 249
    Top = 591
    object cdsLuBankRDNByAccountACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuBankRDNByAccountACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsLuBankRDNByAccountBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuBankRDNByAccountBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuBankRDNByAccountBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuBankRDNByAccountBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuBankRDNByAccountACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuBankRDNByAccountCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsLuBankRDNByAccountBANK_DEFAULT: TStringField
      FieldName = 'BANK_DEFAULT'
      Size = 1
    end
    object cdsLuBankRDNByAccountISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsLuBankRDNByAccountBANK_INITIAL: TStringField
      FieldName = 'BANK_INITIAL'
      ReadOnly = True
      Size = 10
    end
  end
  object cdsLuAccountRDN: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryAccountRDN'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1239
    Top = 123
    object cdsLuAccountRDNACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountRDNACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuAccountRDNACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuAccountRDNACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsLuAccountRDNSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsLuAccountRDNISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsLuAccountRDNINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsLuAccountRDNPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsLuAccountRDNACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsLuAccountRDNAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsLuAccountRDNSIDNO: TStringField
      FieldName = 'SIDNO'
      ReadOnly = True
    end
  end
  object dsLuAccountRDN: TDataSource
    DataSet = cdsLuAccountRDN
    Left = 1239
    Top = 168
  end
  object cdsLuReportCategory: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmReport_qryReportCategoryList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 480
    Top = 712
    object cdsLuReportCategoryCATEGORY_ID: TIntegerField
      FieldName = 'CATEGORY_ID'
      Required = True
    end
    object cdsLuReportCategoryCATEGORY_CODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CATEGORY_CODE'
      Required = True
      Size = 10
    end
    object cdsLuReportCategoryDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 100
    end
  end
  object dsLuReportCategory: TDataSource
    DataSet = cdsLuReportCategory
    Left = 480
    Top = 760
  end
  object cdsLuTaxID: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuTaxID'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1664
    Top = 400
    object cdsLuTaxIDTAXID: TStringField
      DisplayLabel = 'Tax ID'
      DisplayWidth = 8
      FieldName = 'TAXID'
      Required = True
      Size = 4
    end
    object cdsLuTaxIDSHORTDESC: TStringField
      DisplayLabel = 'Short Desc'
      FieldName = 'SHORTDESC'
      Required = True
    end
    object cdsLuTaxIDLONGDESC: TStringField
      DisplayLabel = 'Long Desc'
      DisplayWidth = 60
      FieldName = 'LONGDESC'
      Required = True
      Size = 100
    end
  end
  object dsLuTaxID: TDataSource
    DataSet = cdsLuTaxID
    Left = 1768
    Top = 400
  end
  object cdsLuAccBankSOP: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCSOPID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuAccBankSOP'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1683
    Top = 438
    object cdsLuAccBankSOPACCSOPID: TIntegerField
      FieldName = 'ACCSOPID'
      Required = True
    end
    object cdsLuAccBankSOPMSOP_BANKID: TLargeintField
      DisplayLabel = 'MSOP Bank ID'
      FieldName = 'MSOP_BANKID'
      Required = True
    end
    object cdsLuAccBankSOPACCBANKCODE: TStringField
      DisplayLabel = 'Acc Bank Code'
      FieldName = 'ACCBANKCODE'
      Size = 30
    end
    object cdsLuAccBankSOPBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuAccBankSOPBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No'
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuAccBankSOPBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      FieldName = 'BANKACCNAME'
      Size = 150
    end
    object cdsLuAccBankSOPBANKBRANCH: TStringField
      DisplayLabel = 'Bank Branch'
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuAccBankSOPREMARKS: TStringField
      DisplayLabel = 'Remark'
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsLuAccBankSOPASDEFAULT: TStringField
      DisplayLabel = 'As Default'
      FieldName = 'ASDEFAULT'
      Size = 1
    end
  end
  object dsLuAccBankSOP: TDataSource
    DataSet = cdsLuAccBankSOP
    Left = 1734
    Top = 438
  end
  object cdsluAccSOPByAccID: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryAccSOPByACCID'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1680
    Top = 495
    object cdsluAccSOPByAccIDSOPID: TIntegerField
      FieldName = 'SOPID'
      Required = True
    end
    object cdsluAccSOPByAccIDSOPCODE: TStringField
      FieldName = 'SOPCODE'
      Required = True
    end
    object cdsluAccSOPByAccIDSOPTYPE: TStringField
      FieldName = 'SOPTYPE'
      Size = 1
    end
    object cdsluAccSOPByAccIDSOPDESC: TStringField
      FieldName = 'SOPDESC'
      Size = 250
    end
    object cdsluAccSOPByAccIDSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsluAccSOPByAccIDACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsluAccSOPByAccIDREGDATE: TDateField
      FieldName = 'REGDATE'
    end
    object cdsluAccSOPByAccIDSTARTDATE: TDateField
      FieldName = 'STARTDATE'
    end
    object cdsluAccSOPByAccIDENDDATE: TDateField
      FieldName = 'ENDDATE'
    end
    object cdsluAccSOPByAccIDUSE_BANKPAY: TStringField
      FieldName = 'USE_BANKPAY'
      Size = 1
    end
    object cdsluAccSOPByAccIDACCBANKID: TLargeintField
      FieldName = 'ACCBANKID'
    end
    object cdsluAccSOPByAccIDBANK_TRF_TYPE: TStringField
      FieldName = 'BANK_TRF_TYPE'
      Size = 1
    end
    object cdsluAccSOPByAccIDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsluAccSOPByAccIDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsluAccSOPByAccIDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsluAccSOPByAccIDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsluAccSOPByAccIDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsluAccSOPByAccIDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsluAccSOPByAccIDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsluAccSOPByAccIDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsluAccSOPByAccIDID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsluAccSOPByAccID: TDataSource
    DataSet = cdsluAccSOPByAccID
    Left = 1737
    Top = 495
  end
  object cdsLuActLedByCATCODE: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuActLedCashByCATCODE'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 249
    Top = 315
    object cdsLuActLedByCATCODEACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuActLedByCATCODESEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsLuActLedByCATCODEALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsLuActLedByCATCODEALCODE: TStringField
      FieldName = 'ALCODE'
      Size = 30
    end
    object cdsLuActLedByCATCODEALDESC: TStringField
      FieldName = 'ALDESC'
      Size = 100
    end
  end
  object dsLuActLedByCATCODE: TDataSource
    DataSet = cdsLuActLedByCATCODE
    Left = 252
    Top = 360
  end
  object cdsLuRptGrpType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMKBD_qryLuRptGrpType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 880
    object cdsLuRptGrpTypeRPTTYPEGRP: TStringField
      DisplayLabel = 'Type'
      FieldName = 'RPTTYPEGRP'
      Required = True
      Size = 10
    end
    object cdsLuRptGrpTypeRPTDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'RPTDESC'
      Size = 50
    end
    object cdsLuRptGrpTypeEXTFILE: TStringField
      DisplayLabel = 'Ext.'
      FieldName = 'EXTFILE'
      Size = 5
    end
  end
  object dsLuRptGrpType: TDataSource
    DataSet = cdsLuRptGrpType
    Left = 136
    Top = 880
  end
  object dsLuAccBankGroupByEntity: TDataSource
    DataSet = cdsLuAccBankGroupByEntity
    Left = 1380
    Top = 265
  end
  object cdsluCustStock: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'ACQDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryluCustStock'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 750
    Top = 315
    object cdsluCustStockStockID: TIntegerField
      FieldName = 'StockID'
    end
    object cdsluCustStockStockCode: TStringField
      FieldName = 'StockCode'
      ReadOnly = True
      Required = True
    end
    object cdsluCustStockStockName: TStringField
      FieldName = 'StockName'
      ReadOnly = True
      Size = 100
    end
    object cdsluCustStockAvgPrice: TFloatField
      FieldName = 'AvgPrice'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsluCustStockStockOnHand: TFloatField
      FieldName = 'StockOnHand'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsluCustStockStockBalance: TFloatField
      FieldName = 'StockBalance'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsluCustStockStockType: TStringField
      FieldName = 'StockType'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cdsluCustStockSWQTY: TFloatField
      FieldName = 'SWQTY'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsluCustStockBondsTrans: TFloatField
      FieldName = 'BondsTrans'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsluCustStockAV_QTY: TFloatField
      FieldName = 'AV_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsluCustStockINSTRUMENT_TYPE_DESC: TStringField
      FieldName = 'INSTRUMENT_TYPE_DESC'
      ReadOnly = True
      Size = 30
    end
    object cdsluCustStockStockWtihdraw: TFloatField
      DisplayLabel = 'Stock Withdraw'
      FieldName = 'StockWtihdraw'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object dsluCustStock: TDataSource
    DataSet = cdsluCustStock
    Left = 750
    Top = 360
  end
  object cdsLuRptType: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'RPTTYPEGRP'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryLuRptType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1104
    Top = 776
    object cdsLuRptTypeRPTTYPE: TStringField
      FieldName = 'RPTTYPE'
      Required = True
      Size = 10
    end
    object cdsLuRptTypeRTPTYPEDESC: TStringField
      FieldName = 'RTPTYPEDESC'
      Size = 150
    end
  end
  object cdsLuSelectDataReport: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'RPTTYPE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryLuSelectDataReport'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1104
    Top = 832
    object cdsLuSelectDataReportRPTTYPE: TStringField
      FieldName = 'RPTTYPE'
      Size = 10
    end
    object cdsLuSelectDataReportROWNO: TStringField
      FieldName = 'ROWNO'
      Size = 10
    end
    object cdsLuSelectDataReportTEXTITEM: TStringField
      FieldName = 'TEXTITEM'
      Size = 1000
    end
  end
  object dsLuRptType: TDataSource
    DataSet = cdsLuRptType
    Left = 1104
    Top = 888
  end
  object dsLuSelectDataReport: TDataSource
    DataSet = cdsLuSelectDataReport
    Left = 1104
    Top = 936
  end
  object cdsLuActLedTypeCash: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuActLegTypeCash'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 205
    Top = 400
    object cdsLuActLedTypeCashALTYPE: TStringField
      DisplayLabel = 'ALType'
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsLuActLedTypeCashALDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'ALDESCRIPTION'
      Size = 150
    end
    object cdsLuActLedTypeCashALSYSTEM: TStringField
      DisplayLabel = 'ALSystem'
      FieldName = 'ALSYSTEM'
      Size = 50
    end
    object cdsLuActLedTypeCashGL_SUBGL: TStringField
      FieldName = 'GL_SUBGL'
      Size = 1
    end
    object cdsLuActLedTypeCashCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Size = 1
    end
  end
  object dsLuActLedTypeCash: TDataSource
    DataSet = cdsLuActLedTypeCash
    Left = 290
    Top = 400
  end
  object cdsLuContRepo: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuContRepo'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1672
    Top = 564
    object cdsLuContRepoCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsLuContRepoCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsLuContRepoENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsLuContRepoENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Size = 30
    end
    object cdsLuContRepoENTTNAME: TStringField
      FieldName = 'ENTTNAME'
      Size = 150
    end
    object cdsLuContRepoACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsLuContRepoACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsLuContRepoACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuContRepoRACCID: TIntegerField
      FieldName = 'RACCID'
    end
    object cdsLuContRepoRACCCODE: TStringField
      FieldName = 'RACCCODE'
      Size = 30
    end
    object cdsLuContRepoRACCNAME: TStringField
      FieldName = 'RACCNAME'
      Size = 150
    end
    object cdsLuContRepoTRXDATE: TDateTimeField
      FieldName = 'TRXDATE'
      DisplayFormat = 'dd-mmm-yy'
    end
    object cdsLuContRepoTRXTYPE: TStringField
      FieldName = 'TRXTYPE'
      Size = 5
    end
    object cdsLuContRepoSETTDATE: TDateTimeField
      FieldName = 'SETTDATE'
      DisplayFormat = 'dd-mmm-yy'
    end
    object cdsLuContRepoSETTDAY: TIntegerField
      FieldName = 'SETTDAY'
    end
    object cdsLuContRepoMATURDATE: TDateTimeField
      FieldName = 'MATURDATE'
      DisplayFormat = 'dd-mmm-yy'
    end
    object cdsLuContRepoCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsLuContRepoLOAN_AMT: TFloatField
      FieldName = 'LOAN_AMT'
    end
    object cdsLuContRepoORG_AMT: TFloatField
      FieldName = 'ORG_AMT'
    end
    object cdsLuContRepoINTEREST_AMT: TFloatField
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsLuContRepoREPO_AMT: TFloatField
      FieldName = 'REPO_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsLuContRepoDUE_AMT: TFloatField
      FieldName = 'DUE_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsLuContRepoDISCOUNT: TSmallintField
      FieldName = 'DISCOUNT'
    end
    object cdsLuContRepoINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Size = 10
    end
    object cdsLuContRepoINTERESTDESC: TStringField
      FieldName = 'INTERESTDESC'
      Size = 50
    end
    object cdsLuContRepoINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
    end
    object cdsLuContRepoINTERESTTABLE: TStringField
      FieldName = 'INTERESTTABLE'
      Size = 10
    end
    object cdsLuContRepoINTERESTDAY: TIntegerField
      FieldName = 'INTERESTDAY'
    end
    object cdsLuContRepoCALCMETHOD: TStringField
      FieldName = 'CALCMETHOD'
      Size = 1
    end
    object cdsLuContRepoCALCBASIS: TStringField
      FieldName = 'CALCBASIS'
      Size = 1
    end
    object cdsLuContRepoAPR_COLL: TFloatField
      FieldName = 'APR_COLL'
    end
    object cdsLuContRepoFORCESELL: TFloatField
      FieldName = 'FORCESELL'
    end
    object cdsLuContRepoCOLL_CALL: TFloatField
      FieldName = 'COLL_CALL'
    end
    object cdsLuContRepoCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
    object cdsLuContRepoCORPACT: TSmallintField
      FieldName = 'CORPACT'
    end
    object cdsLuContRepoISACCRUE: TSmallintField
      FieldName = 'ISACCRUE'
    end
    object cdsLuContRepoISMONTHBASIS: TSmallintField
      FieldName = 'ISMONTHBASIS'
    end
    object cdsLuContRepoCON_DATE: TDateTimeField
      FieldName = 'CON_DATE'
    end
    object cdsLuContRepoTOPUP: TFloatField
      FieldName = 'TOPUP'
    end
    object cdsLuContRepoDUE_DATE: TDateTimeField
      FieldName = 'DUE_DATE'
    end
  end
  object cdsLuChargeConfig: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuChargeConfig'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 880
    object cdsLuChargeConfigMARKETCODE: TStringField
      DisplayLabel = 'Market'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuChargeConfigCHARGE: TStringField
      DisplayLabel = 'Charge'
      FieldName = 'CHARGE'
      Required = True
      Size = 10
    end
    object cdsLuChargeConfigRATE_SOURCE: TStringField
      FieldName = 'RATE_SOURCE'
      Required = True
      Size = 1
    end
    object cdsLuChargeConfigCHARGE_SOURCE: TStringField
      FieldName = 'CHARGE_SOURCE'
      Size = 10
    end
    object cdsLuChargeConfigALLIN: TStringField
      FieldName = 'ALLIN'
      Required = True
      Size = 1
    end
    object cdsLuChargeConfigPOSITION: TStringField
      FieldName = 'POSITION'
      Required = True
      Size = 1
    end
    object cdsLuChargeConfigGL_SOURCE: TStringField
      FieldName = 'GL_SOURCE'
      Required = True
      Size = 1
    end
    object cdsLuChargeConfigWAPU: TStringField
      FieldName = 'WAPU'
      Required = True
      Size = 1
    end
  end
  object dsLuChargeConfig: TDataSource
    DataSet = cdsLuChargeConfig
    Left = 392
    Top = 880
  end
  object cdsLuRptTypeAll: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMKBD_qryLuRptTypeAll'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1216
    Top = 840
    object StringField18: TStringField
      FieldName = 'RPTTYPE'
      Required = True
      Size = 10
    end
    object StringField19: TStringField
      FieldName = 'RTPTYPEDESC'
      Size = 150
    end
  end
  object dsLuRptTypeAll: TDataSource
    DataSet = cdsLuRptTypeAll
    Left = 1216
    Top = 888
  end
  object cdsLuAccountUnderWriter: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAccountUniderwriter'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 890
    Top = 310
    object cdsLuAccountUnderWriterACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountUnderWriterENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsLuAccountUnderWriterACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuAccountUnderWriterACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuAccountUnderWriterACCINIT: TStringField
      DisplayLabel = 'Initial'
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsLuAccountUnderWriterACCTYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsLuAccountUnderWriterACCSUBTYPE: TStringField
      DisplayLabel = 'Sub Type'
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
  end
  object cdsLuCompanyPaymentBank: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'SETTLESIDE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuCompanyBank'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 64
    Top = 928
    object cdsLuCompanyPaymentBankACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuCompanyPaymentBankACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsLuCompanyPaymentBankCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuCompanyPaymentBankACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCompanyPaymentBankBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      DisplayWidth = 10
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsLuCompanyPaymentBankBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      DisplayWidth = 15
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsLuCompanyPaymentBankBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuCompanyPaymentBankBANKBRANCH: TStringField
      DisplayLabel = 'Bank Branch'
      DisplayWidth = 30
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuCompanyPaymentBankISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsLuCompanyPaymentBankBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Size = 1
    end
    object cdsLuCompanyPaymentBankBNCHGSTYPE: TStringField
      FieldName = 'BNCHGSTYPE'
      Size = 10
    end
    object cdsLuCompanyPaymentBankACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuCompanyPaymentBankCBEST_CODE: TStringField
      FieldName = 'CBEST_CODE'
      Size = 10
    end
    object cdsLuCompanyPaymentBankBANK_DEFAULT: TStringField
      FieldName = 'BANK_DEFAULT'
      Size = 1
    end
    object cdsLuCompanyPaymentBankSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsLuCompanyPaymentBankMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuCompanyPaymentBankMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuCompanyPaymentBankAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuCompanyPaymentBankAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuCompanyPaymentBankUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuCompanyPaymentBankUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuCompanyPaymentBankNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuCompanyPaymentBankISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuCompanyPaymentBankID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsLuCompanyReceiveBank: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'SETTLESIDE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuCompanyBank'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 64
    Top = 976
    object cdsLuCompanyReceiveBankACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuCompanyReceiveBankACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsLuCompanyReceiveBankCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuCompanyReceiveBankACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCompanyReceiveBankBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      DisplayWidth = 10
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsLuCompanyReceiveBankBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      DisplayWidth = 15
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsLuCompanyReceiveBankBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuCompanyReceiveBankBANKBRANCH: TStringField
      DisplayLabel = 'Bank Branch'
      DisplayWidth = 30
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuCompanyReceiveBankISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsLuCompanyReceiveBankBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Size = 1
    end
    object cdsLuCompanyReceiveBankBNCHGSTYPE: TStringField
      FieldName = 'BNCHGSTYPE'
      Size = 10
    end
    object cdsLuCompanyReceiveBankACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuCompanyReceiveBankCBEST_CODE: TStringField
      FieldName = 'CBEST_CODE'
      Size = 10
    end
    object cdsLuCompanyReceiveBankBANK_DEFAULT: TStringField
      FieldName = 'BANK_DEFAULT'
      Size = 1
    end
    object cdsLuCompanyReceiveBankSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsLuCompanyReceiveBankMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuCompanyReceiveBankMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuCompanyReceiveBankAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuCompanyReceiveBankAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLuCompanyReceiveBankUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLuCompanyReceiveBankUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLuCompanyReceiveBankNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLuCompanyReceiveBankISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLuCompanyReceiveBankID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsLuCompanyPaymentBank: TDataSource
    DataSet = cdsLuCompanyPaymentBank
    Left = 224
    Top = 928
  end
  object dsLuCompanyReceiveBank: TDataSource
    DataSet = cdsLuCompanyReceiveBank
    Left = 224
    Top = 976
  end
  object cdsluCashVoucher: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryluCashVoucher'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 408
    Top = 105
  end
  object dsluCashVoucher: TDataSource
    DataSet = cdsluCashVoucher
    Left = 408
    Top = 153
  end
  object cdsLuCompanyBanks: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCompanyBanks'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsLuCompanyBanksCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 64
    Top = 1024
    object cdsLuCompanyBanksBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
    object cdsLuCompanyBanksCCYCODE: TStringField
      DisplayLabel = 'Ccy'
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuCompanyBanksBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      DisplayWidth = 15
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsLuCompanyBanksBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      DisplayWidth = 20
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsLuCompanyBanksBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      DisplayWidth = 50
      FieldName = 'BANKACCNAME'
      Required = True
      Size = 100
    end
    object cdsLuCompanyBanksBANKBRANCH: TStringField
      DisplayWidth = 40
      FieldName = 'BANKBRANCH'
      Required = True
      Size = 100
    end
    object cdsLuCompanyBanksBNNAME: TStringField
      DisplayLabel = 'Bank Name'
      DisplayWidth = 30
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsLuCompanyBanksBANKTYPE: TStringField
      DisplayLabel = 'Bank Type'
      FieldName = 'BANKTYPE'
      Required = True
      Size = 1
    end
    object cdsLuCompanyBanksDEFAULT_BANK: TIntegerField
      DisplayLabel = 'Default'
      FieldName = 'DEFAULT_BANK'
      ReadOnly = True
      Required = True
    end
    object cdsLuCompanyBanksBANKDESC: TStringField
      DisplayLabel = 'Bank Description'
      FieldKind = fkCalculated
      FieldName = 'BANKDESC'
      Size = 50
      Calculated = True
    end
  end
  object dsLuCompanyBanks: TDataSource
    DataSet = cdsLuCompanyBanks
    Left = 224
    Top = 1024
  end
  object dsLuPrivateBankAcc: TDataSource
    DataSet = cdsLuPrivateBankAcc
    Left = 363
    Top = 1020
  end
  object cdsLuPrivateBankAcc: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE2'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuPrivateBankAcc'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 363
    Top = 972
    object cdsLuPrivateBankAccACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuPrivateBankAccACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsLuPrivateBankAccACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuPrivateBankAccBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      DisplayWidth = 20
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsLuPrivateBankAccBNNAME: TStringField
      DisplayLabel = 'Bank Name'
      DisplayWidth = 30
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsLuPrivateBankAccBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsLuPrivateBankAccBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuPrivateBankAccBANKBRANCH: TStringField
      DisplayLabel = 'Bank Branch'
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuPrivateBankAccISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsLuPrivateBankAccCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuPrivateBankAccPRIVATEBANK_DEFAULT: TStringField
      FieldName = 'PRIVATEBANK_DEFAULT'
      ReadOnly = True
      Required = True
      Size = 1
    end
  end
  object dsLuRDNBankAcc: TDataSource
    DataSet = cdsLuRDNBankAcc
    Left = 475
    Top = 1020
  end
  object cdsLuRDNBankAcc: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE2'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuRDNBankAcc'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 475
    Top = 972
    object cdsLuRDNBankAccACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuRDNBankAccACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsLuRDNBankAccACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuRDNBankAccBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      DisplayWidth = 20
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsLuRDNBankAccBNNAME: TStringField
      DisplayLabel = 'Bank Name'
      DisplayWidth = 30
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsLuRDNBankAccBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsLuRDNBankAccBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuRDNBankAccBANKBRANCH: TStringField
      DisplayLabel = 'Bank Branch'
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuRDNBankAccISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsLuRDNBankAccCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuRDNBankAccRDNBANK_DEFAULT: TStringField
      FieldName = 'RDNBANK_DEFAULT'
      ReadOnly = True
      Required = True
      Size = 1
    end
  end
  object cdsLuIPOInstrumentType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuIPOIntrumentType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1674
    Top = 624
    object cdsLuIPOInstrumentTypeGROUP_TYPE: TStringField
      DisplayLabel = 'Group Type'
      FieldName = 'GROUP_TYPE'
      Size = 10
    end
    object cdsLuIPOInstrumentTypeGROUP_TYPE_NAME: TStringField
      DisplayLabel = 'Group Name'
      FieldName = 'GROUP_TYPE_NAME'
      Size = 30
    end
  end
  object dsLuIPOInstrumentType: TDataSource
    DataSet = cdsLuIPOInstrumentType
    Left = 1674
    Top = 675
  end
  object cdsLuIPOAllotmentGroup: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IPOID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuIPOAllotmentGroup'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 681
    Top = 939
    object cdsLuIPOAllotmentGroupALLOTMENT_GROUPID: TLargeintField
      FieldName = 'ALLOTMENT_GROUPID'
      Required = True
    end
    object cdsLuIPOAllotmentGroupALLOTMENT_GROUPNAME: TStringField
      DisplayLabel = 'Group Name'
      FieldName = 'ALLOTMENT_GROUPNAME'
      Size = 200
    end
    object cdsLuIPOAllotmentGroupNETFEE: TFloatField
      DisplayLabel = 'Net Fee'
      FieldName = 'NETFEE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsLuIPOAllotmentGroupVAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsLuIPOAllotmentGroupWHT: TFloatField
      FieldName = 'WHT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsLuIPOAllotmentGroupIPOID: TLargeintField
      FieldName = 'IPOID'
      Required = True
    end
  end
  object dsLuIPOAllotmentGroup: TDataSource
    DataSet = cdsLuIPOAllotmentGroup
    Left = 720
    Top = 939
  end
  object cdsLuIPOPoolingGroup: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IPOID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuIPOPoolingGroup'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 681
    Top = 984
    object cdsLuIPOPoolingGroupPOOLING_GROUPID: TLargeintField
      FieldName = 'POOLING_GROUPID'
      Required = True
    end
    object cdsLuIPOPoolingGroupPOOLING_GROUPNAME: TStringField
      DisplayLabel = 'Group Name'
      FieldName = 'POOLING_GROUPNAME'
      Size = 200
    end
    object cdsLuIPOPoolingGroupNETFEE: TFloatField
      DisplayLabel = 'Net Fee'
      FieldName = 'NETFEE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsLuIPOPoolingGroupVAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsLuIPOPoolingGroupWHT: TFloatField
      FieldName = 'WHT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsLuIPOPoolingGroupIPOID: TLargeintField
      FieldName = 'IPOID'
      Required = True
    end
  end
  object dsLuIPOPoolingGroup: TDataSource
    DataSet = cdsLuIPOPoolingGroup
    Left = 720
    Top = 984
  end
  object dsLuBankReff: TDataSource
    DataSet = cdsLuBankReff
    Left = 576
    Top = 936
  end
  object cdsLuBankReff: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TRANS_TYPE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankReff'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 888
    object cdsLuBankReffBANK_REF: TStringField
      FieldName = 'BANK_REF'
      Size = 30
    end
  end
  object cdsLuAccountCustodian: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAccountCustodian'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1672
    Top = 720
    object cdsLuAccountCustodianACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountCustodianACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsLuAccountCustodianCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsLuAccountCustodianCUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 50
    end
  end
  object dsLuAccountCustodian: TDataSource
    DataSet = cdsLuAccountCustodian
    Left = 1752
    Top = 720
  end
  object cdsLuCashBook: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCashBook'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 568
    Top = 984
    object cdsLuCashBookCBID: TIntegerField
      FieldName = 'CBID'
      Required = True
    end
    object cdsLuCashBookCBCODE: TStringField
      DisplayLabel = 'Code'
      DisplayWidth = 15
      FieldName = 'CBCODE'
      Required = True
    end
    object cdsLuCashBookCBDESC: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 80
      FieldName = 'CBDESC'
      Required = True
      Size = 150
    end
    object cdsLuCashBookCCYCODE: TStringField
      DisplayLabel = 'Ccy'
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuCashBookSTAT: TStringField
      DisplayLabel = 'Active'
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
  end
  object dsLuCashBook: TDataSource
    DataSet = cdsLuCashBook
    Left = 568
    Top = 1032
  end
  object cdsLuGLType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuGLType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 888
    Top = 872
    object cdsLuGLTypeGLTYPE_ID: TIntegerField
      FieldName = 'GLTYPE_ID'
      Required = True
    end
    object cdsLuGLTypeGLTYPE_CODE: TStringField
      DisplayLabel = 'GL Type Code'
      DisplayWidth = 20
      FieldName = 'GLTYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuGLTypeGLTYPE_DESC: TStringField
      DisplayLabel = 'GL Type Description'
      DisplayWidth = 80
      FieldName = 'GLTYPE_DESC'
      Required = True
      Size = 100
    end
  end
  object cdsLuLedgerType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuLedgerType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 888
    Top = 920
    object cdsLuLedgerTypeMARKETCODE: TStringField
      DisplayLabel = 'Market Code'
      DisplayWidth = 15
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuLedgerTypeLEDGERTYPE: TStringField
      DisplayLabel = 'Ledger Type'
      DisplayWidth = 15
      FieldName = 'LEDGERTYPE'
      Required = True
      Size = 10
    end
    object cdsLuLedgerTypeLEDGERNAME: TStringField
      DisplayLabel = 'Ledger Name'
      DisplayWidth = 80
      FieldName = 'LEDGERNAME'
      Required = True
      Size = 100
    end
  end
  object dsLuGLType: TDataSource
    DataSet = cdsLuGLType
    Left = 992
    Top = 872
  end
  object dsLuLedgerType: TDataSource
    DataSet = cdsLuLedgerType
    Left = 992
    Top = 920
  end
  object cdsLuReferralType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuReferralType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1576
    Top = 784
    object cdsLuReferralTypeREFERRAL_TYPE_ID: TIntegerField
      DisplayLabel = 'Referral Type ID'
      DisplayWidth = 15
      FieldName = 'REFERRAL_TYPE_ID'
      Required = True
    end
    object cdsLuReferralTypeREFERRAL_TYPE: TStringField
      DisplayLabel = 'Referral Type'
      DisplayWidth = 15
      FieldName = 'REFERRAL_TYPE'
      Required = True
      Size = 10
    end
    object cdsLuReferralTypeREFERRAL_TYPE_DESC: TStringField
      DisplayLabel = 'Referral Type Description'
      DisplayWidth = 80
      FieldName = 'REFERRAL_TYPE_DESC'
      Required = True
      Size = 100
    end
  end
  object dsLuReferralType: TDataSource
    DataSet = cdsLuReferralType
    Left = 1576
    Top = 832
  end
  object cdsLuReferral: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuReferral'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1688
    Top = 784
    object cdsLuReferralREFERRAL_ID: TIntegerField
      DisplayLabel = 'Referral ID'
      FieldName = 'REFERRAL_ID'
      Required = True
    end
    object cdsLuReferralREFERRAL_CODE: TStringField
      DisplayLabel = 'Referral Code'
      DisplayWidth = 15
      FieldName = 'REFERRAL_CODE'
      Required = True
      Size = 10
    end
    object cdsLuReferralREFERRAL_DESC: TStringField
      DisplayLabel = 'Referral Description'
      DisplayWidth = 80
      FieldName = 'REFERRAL_DESC'
      Required = True
      Size = 100
    end
    object cdsLuReferralREFERRAL_TYPE_ID: TIntegerField
      DisplayLabel = 'Referral Type'
      DisplayWidth = 15
      FieldName = 'REFERRAL_TYPE_ID'
      Required = True
    end
    object cdsLuReferralREFERRAL_GROUP: TStringField
      DisplayLabel = 'Type'
      FieldName = 'REFERRAL_GROUP'
      ReadOnly = True
      Required = True
      Size = 1
    end
  end
  object dsLuReferral: TDataSource
    DataSet = cdsLuReferral
    Left = 1688
    Top = 832
  end
  object cdsLuSalesByBranch: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SELBRANCH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BRANCHID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuSalesByBranch'
    RemoteServer = dmGlobal.dspConnection
    Left = 880
    Top = 936
    object cdsLuSalesByBranchSALESID: TLargeintField
      FieldName = 'SALESID'
      Required = True
    end
    object cdsLuSalesByBranchSALESCODE: TStringField
      FieldName = 'SALESCODE'
      Required = True
    end
    object cdsLuSalesByBranchSALESNAME: TStringField
      FieldName = 'SALESNAME'
      Size = 30
    end
    object cdsLuSalesByBranchBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsLuSalesByBranchBRANCHCODE: TStringField
      FieldName = 'BRANCHCODE'
      ReadOnly = True
      Required = True
    end
    object cdsLuSalesByBranchBRANCHNAME: TStringField
      FieldName = 'BRANCHNAME'
      ReadOnly = True
      Size = 50
    end
  end
  object dsLuSalesByBranch: TDataSource
    DataSet = cdsLuSalesByBranch
    Left = 880
    Top = 984
  end
  object cdsLuBranch2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBranch2'
    RemoteServer = dmGlobal.dspConnection
    Left = 976
    Top = 936
    object cdsLuBranch2BRANCHID: TLargeintField
      FieldName = 'BRANCHID'
      Required = True
    end
    object cdsLuBranch2BRANCHCODE: TStringField
      FieldName = 'BRANCHCODE'
      Required = True
    end
    object cdsLuBranch2BRANCHNAME: TStringField
      FieldName = 'BRANCHNAME'
      Size = 50
    end
    object cdsLuBranch2BRANCHDESC: TStringField
      FieldName = 'BRANCHDESC'
      ReadOnly = True
      Size = 74
    end
  end
  object dsLuBranch2: TDataSource
    DataSet = cdsLuBranch2
    Left = 976
    Top = 984
  end
  object cdsLuCIF: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCIF'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 880
    Top = 1048
    object cdsLuCIFENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsLuCIFENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Required = True
    end
    object cdsLuCIFENTNAME: TStringField
      FieldName = 'ENTNAME'
      Size = 200
    end
    object cdsLuCIFSIDNO: TStringField
      FieldName = 'SIDNO'
    end
    object cdsLuCIFCOMPANY: TStringField
      FieldName = 'COMPANY'
      Size = 50
    end
    object cdsLuCIFCOMPANY_ADDRESS: TStringField
      FieldName = 'COMPANY_ADDRESS'
      Size = 255
    end
    object cdsLuCIFANNUAL_INCOME_SOURCE: TLargeintField
      FieldName = 'ANNUAL_INCOME_SOURCE'
    end
    object cdsLuCIFKTP: TStringField
      FieldName = 'KTP'
      Size = 30
    end
    object cdsLuCIFKTP_EXPDATE: TDateField
      FieldName = 'KTP_EXPDATE'
    end
    object cdsLuCIFBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsLuCIFCREATEDATE: TDateTimeField
      FieldName = 'CREATEDATE'
    end
    object cdsLuCIFENTSTATUS: TStringField
      FieldName = 'ENTSTATUS'
      Size = 5
    end
    object cdsLuCIFENTTYPE: TStringField
      FieldName = 'ENTTYPE'
      Size = 10
    end
    object cdsLuCIFAFFIL: TBooleanField
      FieldName = 'AFFIL'
      Required = True
    end
    object cdsLuCIFSOURCEFUND: TStringField
      FieldName = 'SOURCEFUND'
      Size = 50
    end
    object cdsLuCIFINVESTOBJECTIVE: TStringField
      FieldName = 'INVESTOBJECTIVE'
      Size = 50
    end
    object cdsLuCIFSIDNO_1: TStringField
      FieldName = 'SIDNO_1'
    end
    object cdsLuCIFTAXID: TStringField
      FieldName = 'TAXID'
    end
    object cdsLuCIFCUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
    end
  end
  object cdsLuCommShare: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCommShare'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 64
    Top = 1072
    object cdsLuCommShareCOMM_SHARE_ID: TIntegerField
      FieldName = 'COMM_SHARE_ID'
      Required = True
    end
    object cdsLuCommShareCOMM_SHARE_CODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'COMM_SHARE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuCommShareCOMM_SHARE_DESC: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 60
      FieldName = 'COMM_SHARE_DESC'
      Required = True
      Size = 100
    end
    object cdsLuCommShareMONTH_PERIOD1: TIntegerField
      FieldName = 'MONTH_PERIOD1'
      Required = True
    end
    object cdsLuCommShareSALES_COMM_PERIOD1: TFloatField
      FieldName = 'SALES_COMM_PERIOD1'
      Required = True
    end
    object cdsLuCommShareCOMP_COMM_PERIOD1: TFloatField
      FieldName = 'COMP_COMM_PERIOD1'
      Required = True
    end
    object cdsLuCommShareEXT_REFERRAL_COMM_PERIOD1: TFloatField
      FieldName = 'EXT_REFERRAL_COMM_PERIOD1'
      Required = True
    end
    object cdsLuCommShareINT_REFERRAL_COMM_PERIOD1: TFloatField
      FieldName = 'INT_REFERRAL_COMM_PERIOD1'
      Required = True
    end
    object cdsLuCommShareEXPIRED_PERIOD1: TStringField
      FieldName = 'EXPIRED_PERIOD1'
      Required = True
      Size = 1
    end
    object cdsLuCommShareMONTH_PERIOD2: TIntegerField
      FieldName = 'MONTH_PERIOD2'
    end
    object cdsLuCommShareSALES_COMM_PERIOD2: TFloatField
      FieldName = 'SALES_COMM_PERIOD2'
    end
    object cdsLuCommShareCOMP_COMM_PERIOD2: TFloatField
      FieldName = 'COMP_COMM_PERIOD2'
    end
    object cdsLuCommShareEXT_REFERRAL_COMM_PERIOD2: TFloatField
      FieldName = 'EXT_REFERRAL_COMM_PERIOD2'
    end
    object cdsLuCommShareINT_REFERRAL_COMM_PERIOD2: TFloatField
      FieldName = 'INT_REFERRAL_COMM_PERIOD2'
    end
    object cdsLuCommShareEXPIRED_PERIOD2: TStringField
      FieldName = 'EXPIRED_PERIOD2'
      Size = 1
    end
    object cdsLuCommShareMONTH_PERIOD3: TIntegerField
      FieldName = 'MONTH_PERIOD3'
    end
    object cdsLuCommShareSALES_COMM_PERIOD3: TFloatField
      FieldName = 'SALES_COMM_PERIOD3'
    end
    object cdsLuCommShareCOMP_COMM_PERIOD3: TFloatField
      FieldName = 'COMP_COMM_PERIOD3'
    end
    object cdsLuCommShareEXT_REFERRAL_COMM_PERIOD3: TFloatField
      FieldName = 'EXT_REFERRAL_COMM_PERIOD3'
    end
    object cdsLuCommShareINT_REFERRAL_COMM_PERIOD3: TFloatField
      FieldName = 'INT_REFERRAL_COMM_PERIOD3'
    end
    object cdsLuCommShareEXPIRED_PERIOD3: TStringField
      FieldName = 'EXPIRED_PERIOD3'
      Size = 1
    end
    object cdsLuCommShareMONTH_PERIOD4: TIntegerField
      FieldName = 'MONTH_PERIOD4'
    end
    object cdsLuCommShareSALES_COMM_PERIOD4: TFloatField
      FieldName = 'SALES_COMM_PERIOD4'
    end
    object cdsLuCommShareCOMP_COMM_PERIOD4: TFloatField
      FieldName = 'COMP_COMM_PERIOD4'
    end
    object cdsLuCommShareEXT_REFERRAL_COMM_PERIOD4: TFloatField
      FieldName = 'EXT_REFERRAL_COMM_PERIOD4'
    end
    object cdsLuCommShareINT_REFERRAL_COMM_PERIOD4: TFloatField
      FieldName = 'INT_REFERRAL_COMM_PERIOD4'
    end
    object cdsLuCommShareEXPIRED_PERIOD4: TStringField
      FieldName = 'EXPIRED_PERIOD4'
      Size = 1
    end
    object cdsLuCommShareMONTH_PERIOD5: TIntegerField
      FieldName = 'MONTH_PERIOD5'
    end
    object cdsLuCommShareSALES_COMM_PERIOD5: TFloatField
      FieldName = 'SALES_COMM_PERIOD5'
    end
    object cdsLuCommShareCOMP_COMM_PERIOD5: TFloatField
      FieldName = 'COMP_COMM_PERIOD5'
    end
    object cdsLuCommShareEXT_REFERRAL_COMM_PERIOD5: TFloatField
      FieldName = 'EXT_REFERRAL_COMM_PERIOD5'
    end
    object cdsLuCommShareINT_REFERRAL_COMM_PERIOD5: TFloatField
      FieldName = 'INT_REFERRAL_COMM_PERIOD5'
    end
    object cdsLuCommShareEXPIRED_PERIOD5: TStringField
      FieldName = 'EXPIRED_PERIOD5'
      Size = 1
    end
  end
  object dsLuCommShare: TDataSource
    DataSet = cdsLuCommShare
    Left = 184
    Top = 1072
  end
  object cdsLuGLAccountTrx: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuGLAccountTrx'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1096
    Top = 992
    object cdsLuGLAccountTrxGLACCOUNTID: TIntegerField
      FieldName = 'GLACCOUNTID'
      Required = True
    end
    object cdsLuGLAccountTrxGLACCOUNTCODE: TStringField
      FieldName = 'GLACCOUNTCODE'
      Required = True
      Size = 30
    end
    object cdsLuGLAccountTrxGLACCOUNTNAME: TStringField
      FieldName = 'GLACCOUNTNAME'
      Size = 100
    end
    object cdsLuGLAccountTrxCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsLuGLAccountTrxPLBS: TStringField
      FieldName = 'PLBS'
      Size = 1
    end
    object cdsLuGLAccountTrxTRXSTATUS: TStringField
      FieldName = 'TRXSTATUS'
      Size = 1
    end
    object cdsLuGLAccountTrxGLACCOUNTSTATUS: TStringField
      FieldName = 'GLACCOUNTSTATUS'
      Size = 1
    end
  end
  object dsLuGLAccountTrx: TDataSource
    DataSet = cdsLuGLAccountTrx
    Left = 1192
    Top = 992
  end
  object cdsLuEmployee: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuEmployee'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1440
    Top = 912
    object cdsLuEmployeeEMPLOYEEID: TIntegerField
      FieldName = 'EMPLOYEEID'
      Required = True
    end
    object cdsLuEmployeeEMPLOYEECODE: TStringField
      FieldName = 'EMPLOYEECODE'
      Size = 50
    end
    object cdsLuEmployeeEMPLOYEENAME: TStringField
      FieldName = 'EMPLOYEENAME'
      Size = 100
    end
    object cdsLuEmployeeISDEL: TBooleanField
      FieldName = 'ISDEL'
    end
  end
  object cdsLuProject: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuProject'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1440
    Top = 968
    object cdsLuProjectPROJECTID: TIntegerField
      FieldName = 'PROJECTID'
      Required = True
    end
    object cdsLuProjectPROJECTCODE: TStringField
      FieldName = 'PROJECTCODE'
      Size = 50
    end
    object cdsLuProjectPROJECTNAME: TStringField
      FieldName = 'PROJECTNAME'
      Size = 100
    end
    object cdsLuProjectPROJECTDESC: TStringField
      FieldName = 'PROJECTDESC'
      Size = 300
    end
    object cdsLuProjectISDEL: TBooleanField
      FieldName = 'ISDEL'
    end
  end
  object dsLuEmployee: TDataSource
    DataSet = cdsLuEmployee
    Left = 1528
    Top = 912
  end
  object dsLuProject: TDataSource
    DataSet = cdsLuProject
    Left = 1528
    Top = 968
  end
  object cdsLuGroupInstrumentType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuGroupInstrumentType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1696
    Top = 896
    object cdsLuGroupInstrumentTypeGROUP_TYPE: TStringField
      DisplayLabel = 'Group Type'
      FieldName = 'GROUP_TYPE'
      Size = 10
    end
    object cdsLuGroupInstrumentTypeGROUP_TYPE_NAME: TStringField
      DisplayLabel = 'Group Name'
      FieldName = 'GROUP_TYPE_NAME'
      Size = 30
    end
  end
  object dsLuGroupInstrumentType: TDataSource
    DataSet = cdsLuGroupInstrumentType
    Left = 1696
    Top = 944
  end
  object cdsLuReligion: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuReligions'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1336
    Top = 912
    object cdsLuReligionRELIGION_ID: TLargeintField
      FieldName = 'RELIGION_ID'
      Required = True
    end
    object cdsLuReligionRELIGION_NAME: TStringField
      DisplayLabel = 'Religion'
      FieldName = 'RELIGION_NAME'
      Size = 150
    end
    object cdsLuReligionMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuReligionMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuReligionAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLuReligionAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
  end
  object dsLuReligion: TDataSource
    DataSet = cdsLuReligion
    Left = 1336
    Top = 960
  end
  object cdsLuBankAccountMutation: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ISCBEST'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankAccountMutation'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 688
    Top = 1064
    object cdsLuBankAccountMutationACCBANKID: TIntegerField
      DisplayLabel = 'Bank Account ID'
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuBankAccountMutationACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuBankAccountMutationBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsLuBankAccountMutationBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No'
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsLuBankAccountMutationBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuBankAccountMutationBANKBRANCH: TStringField
      DisplayLabel = 'Bank Branch'
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuBankAccountMutationACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuBankAccountMutationCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuBankAccountMutationBANK_DEFAULT: TStringField
      FieldName = 'BANK_DEFAULT'
      Size = 1
    end
    object cdsLuBankAccountMutationISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsLuBankAccountMutationBANK_INITIAL: TStringField
      DisplayLabel = 'Bank Initial'
      FieldName = 'BANK_INITIAL'
      ReadOnly = True
      Size = 10
    end
  end
  object dsLuBankAccountMutation: TDataSource
    DataSet = cdsLuBankAccountMutation
    Left = 728
    Top = 1064
  end
  object cdsluActLedTypeStock: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuActLedTypeStockLed'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1312
    Top = 1024
    object cdsluActLedTypeStockALTYPE: TStringField
      DisplayLabel = 'Ledger Type'
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsluActLedTypeStockALDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'ALDESCRIPTION'
      Size = 150
    end
    object cdsluActLedTypeStockALSYSTEM: TStringField
      FieldName = 'ALSYSTEM'
      Size = 50
    end
    object cdsluActLedTypeStockGL_SUBGL: TStringField
      FieldName = 'GL_SUBGL'
      Size = 1
    end
    object cdsluActLedTypeStockCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Size = 1
    end
  end
  object dsluActLedTypeStock: TDataSource
    DataSet = cdsluActLedTypeStock
    Left = 1312
    Top = 1072
  end
  object cdsluActLedTypeFund: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'GL_SUBGL'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuActLedTypeFundLed'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1384
    Top = 1024
    object cdsluActLedTypeFundALTYPE: TStringField
      DisplayLabel = 'Ledger Type'
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsluActLedTypeFundALDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'ALDESCRIPTION'
      Size = 150
    end
    object cdsluActLedTypeFundALSYSTEM: TStringField
      FieldName = 'ALSYSTEM'
      Size = 50
    end
    object cdsluActLedTypeFundGL_SUBGL: TStringField
      FieldName = 'GL_SUBGL'
      Size = 1
    end
    object cdsluActLedTypeFundCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Size = 1
    end
  end
  object dsluActLedTypeFund: TDataSource
    DataSet = cdsluActLedTypeFund
    Left = 1384
    Top = 1072
  end
  object cdsLuMovementProgram: TNClientDataset
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuMovementProgram'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1362
    Top = 611
    object cdsLuMovementProgramprog_id: TLargeintField
      FieldName = 'prog_id'
      Required = True
    end
    object cdsLuMovementProgramprogName: TStringField
      DisplayLabel = 'Program Name'
      FieldName = 'progName'
      Required = True
      Size = 200
    end
    object cdsLuMovementProgramprogDesc: TStringField
      DisplayLabel = 'Description'
      FieldName = 'progDesc'
      Size = 250
    end
  end
  object dsLuMovementProgram: TDataSource
    DataSet = cdsLuMovementProgram
    Left = 1362
    Top = 653
  end
  object cdsluAccountByCode: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ACCCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuAccountByCode'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1096
    Top = 1056
    object cdsluAccountByCodeACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsluAccountByCodeACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsluAccountByCodeACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsluAccountByCodeACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsluAccountByCodeSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsluAccountByCodeINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsluAccountByCodePRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsluAccountByCodeACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsluAccountByCodeAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsluAccountByCodeDT_AUTOAVGPRICE: TStringField
      FieldName = 'DT_AUTOAVGPRICE'
      Size = 1
    end
    object cdsluAccountByCodeSIDNO: TStringField
      FieldName = 'SIDNO'
      ReadOnly = True
    end
    object cdsluAccountByCodeACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsluAccountByCodeKSEI_SID: TStringField
      FieldName = 'KSEI_SID'
    end
    object cdsluAccountByCodeFULLFLOW: TStringField
      FieldName = 'FULLFLOW'
      ReadOnly = True
      Required = True
      Size = 1
    end
  end
  object dsLuJournalBank: TDataSource
    DataSet = cdsLuJournalBank
    Left = 680
    Top = 856
  end
  object cdsLuJournalBank: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuJournalBank'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 744
    Top = 872
    object StringField28: TStringField
      FieldName = 'JRNTYPE'
      Required = True
    end
    object StringField29: TStringField
      FieldName = 'JRNTYPEDESC'
      Size = 50
    end
    object StringField30: TStringField
      FieldName = 'JRNMANUAL'
      Size = 1
    end
  end
  object dsluJournalBankList: TDataSource
    DataSet = cdsluJournalBankList
    Left = 688
    Top = 1192
  end
  object cdsluJournalBankList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuJournalBankList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 688
    Top = 1136
    object cdsluJournalBankListGLACCOUNTID: TIntegerField
      FieldName = 'GLACCOUNTID'
      Required = True
    end
    object cdsluJournalBankListGLACCOUNTCODE: TStringField
      FieldName = 'GLACCOUNTCODE'
      Required = True
      Size = 30
    end
    object cdsluJournalBankListGLACCOUNTNAME: TStringField
      FieldName = 'GLACCOUNTNAME'
      Size = 100
    end
    object cdsluJournalBankListGROUPID: TIntegerField
      FieldName = 'GROUPID'
      Required = True
    end
  end
  object dsLuAccountBankFund: TDataSource
    DataSet = cdsLuAccountBankFund
    Left = 315
    Top = 1084
  end
  object cdsLuAccountBankFund: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryAccountBankFund'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 411
    Top = 1092
    object cdsLuAccountBankFundACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsLuAccountBankFundBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 10
    end
    object cdsLuAccountBankFundBANKNAME: TStringField
      FieldName = 'BANKNAME'
      Size = 50
    end
    object cdsLuAccountBankFundBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
    end
  end
  object cdsLuIPOInstrument: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuIPOInstrument'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 984
    Top = 1048
    object cdsLuIPOInstrumentINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsLuIPOInstrumentINSTRUMENT_CODE: TStringField
      DisplayLabel = 'Ticker Code'
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsLuIPOInstrumentLOCALCODE: TStringField
      DisplayLabel = 'Ticker Code'
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsLuIPOInstrumentMARKETCODE: TStringField
      DisplayLabel = 'Market Code'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuIPOInstrumentINSTRUMENT_TYPE_CODE: TStringField
      DisplayLabel = 'Ticker Type'
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuIPOInstrumentSHORTNAME: TStringField
      DisplayLabel = 'Ticker Name'
      FieldName = 'SHORTNAME'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsLuIPOInstrument
    Left = 912
    Top = 552
  end
  object dsluIPOInstrument: TDataSource
    DataSet = cdsLuIPOInstrument
    Left = 984
    Top = 1096
  end
  object cdsLuIPOSector: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuIPOSector'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 880
    Top = 1104
    object cdsLuIPOSectorSECTOR: TStringField
      DisplayLabel = 'Sector'
      FieldName = 'SECTOR'
      Size = 250
    end
  end
  object dsLuIPOSector: TDataSource
    DataSet = cdsLuIPOSector
    Left = 880
    Top = 1152
  end
  object cdsluEIPOInstrType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuEIPOInstrType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1200
    Top = 1120
    object cdsluEIPOInstrTypeINSTRUCTION_TYPE_CODE: TStringField
      DisplayLabel = 'Type Code'
      FieldName = 'INSTRUCTION_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsluEIPOInstrTypeCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Required = True
      Size = 1
    end
    object cdsluEIPOInstrTypeINSTRUCTION_TYPE_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'INSTRUCTION_TYPE_DESC'
      Size = 50
    end
    object cdsluEIPOInstrTypeINSTRUCTION_MODE: TStringField
      FieldName = 'INSTRUCTION_MODE'
      Size = 10
    end
    object cdsluEIPOInstrTypeEXT_FILE: TStringField
      FieldName = 'EXT_FILE'
      Size = 10
    end
    object cdsluEIPOInstrTypeIS_MULTI_TRANS: TStringField
      FieldName = 'IS_MULTI_TRANS'
      Size = 1
    end
  end
  object dsluEIPOInstrType: TDataSource
    DataSet = cdsluEIPOInstrType
    Left = 1200
    Top = 1168
  end
  object cdsLuEIPOTikcerList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuEIPOStockList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1288
    Top = 1160
    object cdsLuEIPOTikcerListID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsLuEIPOTikcerListTICKER_ID: TLargeintField
      FieldName = 'TICKER_ID'
      Required = True
    end
    object cdsLuEIPOTikcerListTICKER_CODE: TStringField
      DisplayLabel = 'Ticker Code'
      FieldName = 'TICKER_CODE'
      Required = True
      Size = 10
    end
    object cdsLuEIPOTikcerListCOMPANY: TStringField
      DisplayLabel = 'Company'
      FieldName = 'COMPANY'
      Size = 250
    end
    object cdsLuEIPOTikcerListSECTOR: TStringField
      DisplayLabel = 'Sector'
      FieldName = 'SECTOR'
      Size = 150
    end
    object cdsLuEIPOTikcerListSUBSECTOR: TStringField
      DisplayLabel = 'Sub Sector'
      FieldName = 'SUBSECTOR'
      Size = 250
    end
    object cdsLuEIPOTikcerListLINE_OF_BUSINESS: TStringField
      DisplayLabel = 'Line Of Business'
      FieldName = 'LINE_OF_BUSINESS'
      Size = 500
    end
    object cdsLuEIPOTikcerListTICKERNAME: TStringField
      DisplayLabel = 'Ticker Name'
      FieldName = 'TICKERNAME'
      ReadOnly = True
      Size = 100
    end
  end
  object dsLuEIPOTikcerList: TDataSource
    DataSet = cdsLuEIPOTikcerList
    Left = 1288
    Top = 1208
  end
  object dsLuCPBroker: TDataSource
    DataSet = cdsLuCP_Broker
    Left = 520
    Top = 1208
  end
  object cdsLuCP_Broker: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuCP_Broker'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 520
    Top = 1152
    object cdsLuCP_BrokerACCID: TIntegerField
      DisplayLabel = 'Account ID'
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCP_BrokerACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuCP_BrokerACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuCP_BrokerACCINIT: TStringField
      DisplayLabel = 'Account Initial'
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsLuCP_BrokerACCTYPE_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'ACCTYPE_DESC'
      ReadOnly = True
      Size = 150
    end
  end
  object cdsLuBoardMarket: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBoardMarket'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 408
    Top = 1152
    object cdsLuBoardMarketBOARDID: TLargeintField
      DisplayLabel = 'Board ID'
      FieldName = 'BOARDID'
      Required = True
    end
    object cdsLuBoardMarketBOARDCODE: TStringField
      DisplayLabel = 'Board Code'
      FieldName = 'BOARDCODE'
      Required = True
      Size = 10
    end
    object cdsLuBoardMarketMARKETCODE: TStringField
      DisplayLabel = 'Market Code'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuBoardMarketBOARDDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'BOARDDESC'
      Size = 30
    end
    object cdsLuBoardMarketCPTYPE: TStringField
      DisplayLabel = 'CP Type'
      FieldName = 'CPTYPE'
      Size = 5
    end
    object cdsLuBoardMarketCPVALUE: TIntegerField
      DisplayLabel = 'CP Value'
      FieldName = 'CPVALUE'
    end
  end
  object dsLuBoardMarket: TDataSource
    DataSet = cdsLuBoardMarket
    Left = 408
    Top = 1208
  end
  object cdsLuReportTC: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuReportTC'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 64
    Top = 1168
    object cdsLuReportTCREPORTID: TIntegerField
      DisplayLabel = 'Report ID'
      FieldName = 'REPORTID'
      Required = True
    end
    object cdsLuReportTCREPORTCODE: TStringField
      DisplayLabel = 'Report Code'
      FieldName = 'REPORTCODE'
      Size = 10
    end
    object cdsLuReportTCREPORT_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'REPORT_DESC'
      Size = 150
    end
    object cdsLuReportTCREPORT_CAPTION: TStringField
      DisplayLabel = 'Report Name'
      FieldName = 'REPORT_CAPTION'
      Size = 100
    end
    object cdsLuReportTCREPORTFOLDER: TStringField
      FieldName = 'REPORTFOLDER'
      Size = 150
    end
    object cdsLuReportTCREPORT_FILENAME: TStringField
      FieldName = 'REPORT_FILENAME'
      Size = 150
    end
    object cdsLuReportTCMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuReportTCMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
  end
  object dsLuReportTC: TDataSource
    DataSet = cdsLuReportTC
    Left = 64
    Top = 1224
  end
  object cdsLuOpeningAccountFilter: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CHKACCTYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCTYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CHKACCSTS'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ACC_STS'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuOpeningAccountFilter'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 184
    Top = 1144
    object cdsLuOpeningAccountFilterACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuOpeningAccountFilterENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsLuOpeningAccountFilterACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuOpeningAccountFilterACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuOpeningAccountFilterACCINIT: TStringField
      DisplayLabel = 'Initial'
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsLuOpeningAccountFilterACCTYPE: TStringField
      DisplayLabel = 'Account Type'
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsLuOpeningAccountFilterACC_STS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'ACC_STS'
      Size = 1
    end
  end
  object cdsLuAccountList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAccountList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 632
    Top = 480
    object cdsLuAccountListACCID: TIntegerField
      DisplayLabel = 'AccountID'
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountListACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuAccountListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsLuAccountListACCTYPE: TStringField
      DisplayLabel = 'Account Type'
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsLuAccountListPRDCODE: TStringField
      DisplayLabel = 'Product Code'
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsLuAccountListcheck: TStringField
      DisplayLabel = 'Check'
      FieldKind = fkInternalCalc
      FieldName = 'check'
    end
  end
  object cdsLuAccountKSEI: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuAccountKSEI'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 760
    Top = 600
    object cdsLuAccountKSEIACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountKSEIACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsLuAccountKSEIACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
  end
  object dsLuAccountKSEI: TDataSource
    DataSet = cdsLuAccountKSEI
    Left = 760
    Top = 648
  end
  object cdsLuBankCompany: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBankCompany'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 880
    Top = 1216
    object cdsLuBankCompanyBANKID: TIntegerField
      DisplayLabel = 'Bank ID'
      FieldName = 'BANKID'
      Required = True
    end
    object cdsLuBankCompanyBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
      Required = True
      Size = 10
    end
    object cdsLuBankCompanyBANKACCOUNTNO: TStringField
      DisplayLabel = 'Bank Account No'
      FieldName = 'BANKACCOUNTNO'
      Size = 30
    end
    object cdsLuBankCompanyBANKACCOUNTNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      FieldName = 'BANKACCOUNTNAME'
      Size = 150
    end
    object cdsLuBankCompanyBANKACCOUNTBRANCH: TStringField
      DisplayLabel = 'Bank Account Branch'
      FieldName = 'BANKACCOUNTBRANCH'
      Size = 50
    end
    object cdsLuBankCompanyCCYCODE: TStringField
      DisplayLabel = 'Ccy Code'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsLuBankCompanySTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      Size = 1
    end
    object cdsLuBankCompanyAS_RDNBANK: TStringField
      DisplayLabel = 'As RDN'
      FieldName = 'AS_RDNBANK'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsLuBankCompanyAS_PRIVATEBANK: TStringField
      DisplayLabel = 'As Private'
      FieldName = 'AS_PRIVATEBANK'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsLuBankCompanyAS_PAYMENTBANK: TStringField
      DisplayLabel = 'As Payment'
      FieldName = 'AS_PAYMENTBANK'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsLuBankCompanyCOA: TStringField
      FieldName = 'COA'
    end
    object cdsLuBankCompanyACTIVED_DATE: TDateTimeField
      DisplayLabel = 'Activated Date'
      FieldName = 'ACTIVED_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLuBankCompanyACTIVED_SYSDATE: TDateTimeField
      FieldName = 'ACTIVED_SYSDATE'
    end
    object cdsLuBankCompanyACTIVED_UI: TStringField
      FieldName = 'ACTIVED_UI'
      Size = 30
    end
    object cdsLuBankCompanyCLOSED_DATE: TDateTimeField
      FieldName = 'CLOSED_DATE'
    end
    object cdsLuBankCompanyCLOSED_SYSDATE: TDateTimeField
      FieldName = 'CLOSED_SYSDATE'
    end
    object cdsLuBankCompanyCLOSED_UI: TStringField
      FieldName = 'CLOSED_UI'
      Size = 30
    end
    object cdsLuBankCompanyMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLuBankCompanyMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLuBankCompanyBNNAME: TStringField
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
  end
  object dsLuBankCompany: TDataSource
    DataSet = cdsLuBankCompany
    Left = 880
    Top = 1272
  end
  object cdsLuBankCompanyDefaultByBankID: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'BANKID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankCompanyDefaultByBankID'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1776
    Top = 576
    object cdsLuBankCompanyDefaultByBankIDBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
    object cdsLuBankCompanyDefaultByBankIDBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 10
    end
    object cdsLuBankCompanyDefaultByBankIDBANKACCOUNTNO: TStringField
      FieldName = 'BANKACCOUNTNO'
      Required = True
      Size = 30
    end
    object cdsLuBankCompanyDefaultByBankIDBANKACCOUNTNAME: TStringField
      FieldName = 'BANKACCOUNTNAME'
      Required = True
      Size = 150
    end
    object cdsLuBankCompanyDefaultByBankIDBANKACCOUNTBRANCH: TStringField
      FieldName = 'BANKACCOUNTBRANCH'
      Size = 50
    end
    object cdsLuBankCompanyDefaultByBankIDCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuBankCompanyDefaultByBankIDSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsLuBankCompanyDefaultByBankIDAS_RDNBANK: TStringField
      FieldName = 'AS_RDNBANK'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsLuBankCompanyDefaultByBankIDAS_PRIVATEBANK: TStringField
      FieldName = 'AS_PRIVATEBANK'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsLuBankCompanyDefaultByBankIDAS_PAYMENTBANK: TStringField
      FieldName = 'AS_PAYMENTBANK'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsLuBankCompanyDefaultByBankIDBNNAME: TStringField
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
  end
  object dsLuBankCompanyDefaultByBankID: TDataSource
    DataSet = cdsLuBankCompanyDefaultByBankID
    Left = 1776
    Top = 632
  end
  object dsLuMainAccount: TDataSource
    DataSet = cdsLuMainAccount
    Left = 1328
    Top = 72
  end
  object cdsLuBankTransferType: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuBankTransferType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 200
    Top = 1240
    object cdsLuBankTransferTypeTRANSFER_MODE: TStringField
      DisplayLabel = 'Transfer Mode'
      FieldName = 'TRANSFER_MODE'
      Required = True
    end
    object cdsLuBankTransferTypeDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'DESCRIPTION'
      Size = 100
    end
  end
  object dsLuBankTransferType: TDataSource
    DataSet = cdsLuBankTransferType
    Left = 200
    Top = 1296
  end
  object cdsCcy: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryCcy'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 352
    Top = 1272
    object cdsCcyCCYCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsCcyCCYNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'CCYNAME'
      Size = 50
    end
  end
  object dsCcy: TDataSource
    DataSet = cdsCcy
    Left = 352
    Top = 1328
  end
  object cdsLuInstrumentNotStock: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmLookup_qryLuInstrumentsNotStock'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1016
    Top = 1224
    object cdsLuInstrumentNotStockINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsLuInstrumentNotStockLOCALCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsLuInstrumentNotStockSHORTNAME: TStringField
      DisplayLabel = 'Stock Name'
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object cdsLuInstrumentNotStockINSTRUMENT_TYPE_CODE: TStringField
      DisplayLabel = 'Stock Type Index'
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuInstrumentNotStockINSTRUMENT_TYPE_DESC: TStringField
      DisplayLabel = 'Stock Type Description'
      FieldName = 'INSTRUMENT_TYPE_DESC'
      ReadOnly = True
      Size = 30
    end
    object cdsLuInstrumentNotStockLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
    end
  end
end
