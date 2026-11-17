object dmSInvest: TdmSInvest
  Height = 266
  Width = 515
  object cdsSInvGenerateFormat: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SIP_ID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSInvest_qrySInvGenerateFormat'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 64
    Top = 10
    object cdsSInvGenerateFormatSIP_ID: TLargeintField
      FieldName = 'SIP_ID'
      Required = True
    end
    object cdsSInvGenerateFormatGENERATEFOLDER: TStringField
      FieldName = 'GENERATEFOLDER'
      Size = 150
    end
    object cdsSInvGenerateFormatDELIMITERCHAR: TStringField
      FieldName = 'DELIMITERCHAR'
      Size = 1
    end
    object cdsSInvGenerateFormatFORMAT1: TStringField
      FieldName = 'FORMAT1'
      Size = 30
    end
    object cdsSInvGenerateFormatFORMAT2: TStringField
      FieldName = 'FORMAT2'
      Size = 30
    end
    object cdsSInvGenerateFormatFORMAT3: TStringField
      FieldName = 'FORMAT3'
      Size = 30
    end
    object cdsSInvGenerateFormatSEQ: TIntegerField
      FieldName = 'SEQ'
      ReadOnly = True
    end
    object cdsSInvGenerateFormatFIELDNAME: TStringField
      FieldName = 'FIELDNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsSInvGenerateFormatFORMATFIELD: TStringField
      FieldName = 'FORMATFIELD'
      ReadOnly = True
    end
    object cdsSInvGenerateFormatMOC: TStringField
      FieldName = 'MOC'
      ReadOnly = True
      Size = 1
    end
  end
  object cdsTradeDetailUpload: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRADEDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TRANSSTAT'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSInvest_qryTradeDetailUpload'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 64
    Top = 80
  end
  object cdsTradeConfirmationUpload: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRADEDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TRANSSTAT'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSInvest_qryTradeConfirmationUpload'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 64
    Top = 128
  end
  object cdsSInvestConfirm: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ConID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DealticketID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSInvest_qrySInvestTradeConfirmSelected'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 272
    Top = 8
    object cdsSInvestConfirmTransactionStatus: TStringField
      FieldName = 'Transaction Status'
      Size = 5
    end
    object cdsSInvestConfirmTCReferenceID: TStringField
      FieldName = 'TC Reference ID'
    end
    object cdsSInvestConfirmTradeDate: TDateField
      FieldName = 'Trade Date'
    end
    object cdsSInvestConfirmSettlementDate: TDateField
      FieldName = 'Settlement Date'
    end
    object cdsSInvestConfirmBRCode: TStringField
      FieldName = 'BR Code'
      Size = 5
    end
    object cdsSInvestConfirmIMCode: TStringField
      FieldName = 'IM Code'
      Size = 10
    end
    object cdsSInvestConfirmFundCode: TStringField
      FieldName = 'Fund Code'
    end
    object cdsSInvestConfirmSecurityCode: TStringField
      FieldName = 'Security Code'
    end
    object cdsSInvestConfirmBuySell: TIntegerField
      FieldName = 'Buy/Sell'
    end
    object cdsSInvestConfirmPrice: TFloatField
      FieldName = 'Price'
    end
    object cdsSInvestConfirmQuantity: TFloatField
      FieldName = 'Quantity'
    end
    object cdsSInvestConfirmTradeAmount: TFloatField
      FieldName = 'Trade Amount'
    end
    object cdsSInvestConfirmCommission: TFloatField
      FieldName = 'Commission'
    end
    object cdsSInvestConfirmSalesTax: TFloatField
      FieldName = 'Sales Tax'
    end
    object cdsSInvestConfirmLevy: TFloatField
      FieldName = 'Levy'
    end
    object cdsSInvestConfirmVAT: TFloatField
      FieldName = 'VAT'
    end
    object cdsSInvestConfirmOtherCharges: TFloatField
      FieldName = 'Other Charges'
    end
    object cdsSInvestConfirmGrossSettlementAmount: TFloatField
      FieldName = 'Gross Settlement Amount'
    end
    object cdsSInvestConfirmWHTonCommission: TFloatField
      FieldName = 'WHT on Commission'
    end
    object cdsSInvestConfirmNetSettlementAmount: TFloatField
      FieldName = 'Net Settlement Amount'
    end
    object cdsSInvestConfirmTCReferenceNo: TStringField
      FieldName = 'TC Reference No'
    end
    object cdsSInvestConfirmSecuritiesAccountNo: TStringField
      FieldName = 'Securities Account No'
    end
    object cdsSInvestConfirmAdditionalInformationifany: TStringField
      FieldName = 'Additional Information (if any)'
      Size = 50
    end
    object cdsSInvestConfirmAuthorizedPersonName: TStringField
      FieldName = 'Authorized Person Name'
      Size = 100
    end
    object cdsSInvestConfirmAuthorizedPersonPosition: TStringField
      FieldName = 'Authorized Person Position'
    end
    object cdsSInvestConfirmPlaceofTradeType: TStringField
      FieldName = 'Place of Trade Type'
      Size = 1
    end
    object cdsSInvestConfirmRepoTriPartyAgent: TStringField
      FieldName = 'Repo Tri-Party Agent'
    end
    object cdsSInvestConfirmCalculationAgent: TStringField
      FieldName = 'Calculation Agent'
    end
    object cdsSInvestConfirmRepoRate: TStringField
      FieldName = 'Repo Rate'
    end
    object cdsSInvestConfirmPurchaseLendingBorrowingDate: TStringField
      FieldName = 'Purchase/Lending-Borrowing Date'
    end
    object cdsSInvestConfirmRePurchaseReturnDate: TStringField
      FieldName = 'Re-Purchase/Return Date'
    end
  end
  object cdsSInvestDetail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ConID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DealticketID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSInvest_qrySInvTradeDetailSelected'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 272
    Top = 64
    object cdsSInvestDetailCONID: TLargeintField
      FieldName = 'CONID'
    end
    object cdsSInvestDetailDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
    end
    object cdsSInvestDetailDealticketNo: TStringField
      FieldName = 'Dealticket No'
    end
    object cdsSInvestDetailTransactionStatus: TStringField
      FieldName = 'Transaction Status'
      Size = 5
    end
    object cdsSInvestDetailTDReferenceID: TStringField
      FieldName = 'TD Reference ID'
    end
    object cdsSInvestDetailTradeDate: TDateField
      FieldName = 'Trade Date'
    end
    object cdsSInvestDetailSettlementDate: TDateField
      FieldName = 'Settlement Date'
    end
    object cdsSInvestDetailBRCode: TStringField
      FieldName = 'BR Code'
      Size = 5
    end
    object cdsSInvestDetailBRName: TStringField
      FieldName = 'BR Name'
      Size = 100
    end
    object cdsSInvestDetailIMCode: TStringField
      FieldName = 'IM Code'
      Size = 10
    end
    object cdsSInvestDetailIMName: TStringField
      FieldName = 'IM Name'
      Size = 100
    end
    object cdsSInvestDetailSecurityCode: TStringField
      FieldName = 'Security Code'
    end
    object cdsSInvestDetailSecurityName: TStringField
      FieldName = 'Security Name'
      Size = 150
    end
    object cdsSInvestDetailBuySell: TIntegerField
      FieldName = 'Buy/Sell'
    end
    object cdsSInvestDetailPrice: TFloatField
      FieldName = 'Price'
    end
    object cdsSInvestDetailQuantity: TFloatField
      FieldName = 'Quantity'
    end
    object cdsSInvestDetailTDReferenceNo: TStringField
      FieldName = 'TD Reference No'
    end
  end
end
