object dmGlobal: TdmGlobal
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 569
  Width = 721
  object cnnMain: TSQLConnection
    ConnectionName = 'DATASNAPCONNECTION'
    DriverName = 'DataSnap'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=16.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'drivername=DataSnap'
      'HostName=172.16.0.137'
      'Port=8299'
      'CommunicationProtocol=tcp/ip'
      'dsauthenticationuser=admin'
      'dsauthenticationpassword=admin'
      'Filters={"ZLibCompression":{"CompressMoreThan":"1024"}}'
      'DatasnapContext=Datasnap/')
    ValidatePeerCertificate = cnnMainValidatePeerCertificate
    Left = 40
    Top = 16
    UniqueId = '{8FB1863B-23B2-403D-B067-0C5519D4C0D0}'
  end
  object dspConnection: TDSProviderConnection
    ServerClassName = 'TSessionServerModule'
    SQLConnection = cnnMain
    Left = 40
    Top = 64
  end
  object cdsGroups: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'APPID'
        ParamType = ptInput
        Value = 'Nayaga'
      end>
    ProviderName = 'dspGroups'
    RemoteServer = dspConnection
    Left = 40
    Top = 160
    object cdsGroupsGROUPID: TStringField
      FieldName = 'GROUPID'
      Required = True
    end
    object cdsGroupsAPPID: TStringField
      FieldName = 'APPID'
      Required = True
      Size = 30
    end
    object cdsGroupsGROUPDESC: TStringField
      FieldName = 'GROUPDESC'
      Size = 50
    end
    object cdsGroupsMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsGroupsMODUI: TStringField
      FieldName = 'MODUI'
    end
    object cdsGroupsINSDA: TDateTimeField
      FieldName = 'INSDA'
    end
    object cdsGroupsINSUI: TStringField
      FieldName = 'INSUI'
    end
  end
  object cdsGroupPermission: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'APPID'
        ParamType = ptInput
        Value = 'Nayaga'
      end>
    ProviderName = 'dspGroupPermission'
    RemoteServer = dspConnection
    Left = 40
    Top = 208
    object cdsGroupPermissionGROUPID: TStringField
      FieldName = 'GROUPID'
      Required = True
    end
    object cdsGroupPermissionAPPID: TStringField
      FieldName = 'APPID'
      Required = True
      Size = 30
    end
    object cdsGroupPermissionPERMISSION: TStringField
      FieldName = 'PERMISSION'
      Size = 200
    end
    object cdsGroupPermissionMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsGroupPermissionMODUI: TStringField
      FieldName = 'MODUI'
      Size = 10
    end
    object cdsGroupPermissionINSDA: TDateTimeField
      FieldName = 'INSDA'
    end
    object cdsGroupPermissionINSUI: TStringField
      FieldName = 'INSUI'
    end
  end
  object aclMenu: TActionList
    Images = frmMain.ilSmall
    Left = 168
    Top = 16
    object actCAType: TNAction
      Category = 'Corporate Action'
      Caption = 'Corporate Action Type'
      ImageIndex = 46
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCorpAction: TNAction
      Category = 'Corporate Action'
      Caption = 'Corporate Action'
      OnExecute = actCorpActionExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCurrency: TNAction
      Category = 'Static Data'
      Caption = 'Currency'
      ImageIndex = 46
      OnExecute = actCurrencyExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBank: TNAction
      Category = 'Static Data'
      Caption = 'Bank'
      ImageIndex = 46
      OnExecute = actBankExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actJournalType: TNAction
      Category = 'Accounting'
      Caption = 'Journal Type'
      ImageIndex = 46
      OnExecute = actJournalTypeExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actReportIdxClearingResult: TNAction
      Category = 'Reports'
      Caption = 'IDX Clearing Result'
      OnExecute = actReportIdxClearingResultExecute
      CheckPermission = False
    end
    object actCustody: TNAction
      Category = 'Static Data'
      Caption = 'Custodian Bank'
      ImageIndex = 46
      OnExecute = actCustodyExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actUserAdmin: TNAction
      Category = 'Static Data'
      Caption = 'User Administration'
      ImageIndex = 46
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actReport: TNAction
      Category = 'Static Data'
      Caption = 'Report'
      ImageIndex = 46
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actAccountParamClass: TNAction
      Category = 'Static Data'
      Caption = 'Account Parameter Class'
      OnExecute = actAccountParamClassExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actUserActivity: TNAction
      Category = 'Administrator'
      Caption = 'User Activity'
      OnExecute = actUserActivityExecute
      CheckPermission = False
    end
    object actAccount: TNAction
      Category = 'Static Data'
      Caption = 'Account'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actAssignGroupAccount: TNAction
      Category = 'Static Data'
      Caption = 'Assign Account to Sales Group'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actOMSGroup: TNAction
      Category = 'Static Data'
      Caption = 'OMS Group'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actReportEODSupport: TNAction
      Category = 'Reports'
      Caption = 'Report EOD Support'
      OnExecute = actReportEODSupportExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actExtReff: TNAction
      Category = 'Static Data'
      Caption = 'External Reff'
      ImageIndex = 4
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCountry: TNAction
      Category = 'Static Data'
      Caption = 'Country'
      OnExecute = actCountryExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actMarket: TNAction
      Category = 'Static Data'
      Caption = 'Market'
      OnExecute = actMarketExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actInstrumentType: TNAction
      Category = 'Static Data'
      Caption = 'Instrument Type'
      ImageIndex = 13
      OnExecute = actInstrumentTypeExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actInstrument: TNAction
      Category = 'Static Data'
      Caption = 'Instrument Data'
      ImageIndex = 13
      OnExecute = actInstrumentExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actHoliday: TNAction
      Category = 'Static Data'
      Caption = 'List of Holiday'
      OnExecute = actHolidayExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actProduct: TNAction
      Category = 'Static Data'
      Caption = 'Product'
      ImageIndex = 16
      OnExecute = actProductExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actProductype: TNAction
      Category = 'Static Data'
      Caption = 'Product Type'
      ImageIndex = 16
      OnExecute = actProductypeExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBoard: TNAction
      Category = 'Static Data'
      Caption = 'Board'
      OnExecute = actBoardExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBranch: TNAction
      Category = 'Static Data'
      Caption = 'Branch'
      ImageIndex = 2
      OnExecute = actBranchExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBroker: TNAction
      Category = 'Static Data'
      Caption = 'Broker'
      OnExecute = actBrokerExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBrokerBank: TNAction
      Category = 'Static Data'
      Caption = 'Broker Bank Account'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actTIF: TNAction
      Category = 'Static Data'
      Caption = 'Time In Force'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actContactUsage: TNAction
      Category = 'Static Data'
      Caption = 'Contact Usage'
      ImageIndex = 17
      OnExecute = actContactUsageExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actEmp: TNAction
      Category = 'Static Data'
      Caption = 'Employee'
      ImageIndex = 9
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCPCenter: TNAction
      Category = 'Accounting'
      Caption = 'Cost/Profit Center'
      ImageIndex = 43
      OnExecute = actCPCenterExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCOA: TNAction
      Category = 'Accounting'
      Caption = 'Chart of Account'
      ImageIndex = 42
      OnExecute = actCOAExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actProvince: TNAction
      Category = 'Static Data'
      Caption = 'Province'
      ImageIndex = 17
      OnExecute = actProvinceExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actGLFiscalYear: TNAction
      Category = 'Accounting'
      Caption = 'Fiscal Year Configuration'
      ImageIndex = 40
      OnExecute = actGLFiscalYearExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actFeeType: TNAction
      Category = 'Static Data'
      Caption = 'Fee Type'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCity: TNAction
      Category = 'Static Data'
      Caption = 'City'
      ImageIndex = 5
      OnExecute = actCityExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actGLInput: TNAction
      Category = 'Accounting'
      Caption = 'Journal Input'
      ImageIndex = 35
      OnExecute = actGLInputExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actGLListReport: TNAction
      Category = 'Accounting'
      Caption = 'Journal List Report'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBalanceSheet: TNAction
      Category = 'Accounting'
      Caption = 'Balance Sheet'
      OnExecute = actBalanceSheetExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actProfitLost: TNAction
      Category = 'Accounting'
      Caption = 'Profit && Lost'
      OnExecute = actProfitLostExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actConsolidatedTrialBalance: TNAction
      Category = 'Accounting'
      Caption = 'Consolidated Trial Balance'
      ImageIndex = 33
      OnExecute = actConsolidatedTrialBalanceExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actTrialBalanceByCcy: TNAction
      Category = 'Accounting'
      Caption = 'Trial Balance By Currency'
      ImageIndex = 21
      OnExecute = actTrialBalanceByCcyExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actAccActivity: TNAction
      Category = 'Accounting'
      Caption = 'Account Activity'
      ImageIndex = 31
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actEntityInformation: TNAction
      Category = 'Client Management'
      Caption = 'Entity Information'
      OnExecute = actEntityInformationExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actAccountManagement: TNAction
      Category = 'Client Management'
      Caption = 'Account Information'
      ImageIndex = 44
      OnExecute = actAccountManagementExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCustomerProfile: TNAction
      Category = 'Client Management'
      Caption = 'Customer Profile'
      ImageIndex = 46
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCashStockOutstanding: TNAction
      Category = 'Client Management'
      Caption = 'Cash/Stock Outstanding'
      ImageIndex = 45
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actDailyTradeInput: TNAction
      Category = 'Middle Office'
      Caption = 'Daily Trade Input'
      ImageIndex = 61
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actDailyExchangeRate: TNAction
      Category = 'Accounting'
      Caption = 'Daily Exchange Rate'
      ImageIndex = 41
      OnExecute = actDailyExchangeRateExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actDealTickets: TNAction
      Category = 'Middle Office'
      Caption = 'Deal Tickets'
      ImageIndex = 63
      OnExecute = actDealTicketsExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actContracts: TNAction
      Category = 'Middle Office'
      Caption = 'Contract Trade'
      ImageIndex = 68
      OnExecute = actContractsExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actTransactionLegs: TNAction
      Category = 'Middle Office'
      Caption = 'Transaction Legs'
      ImageIndex = 69
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actConfirmationList: TNAction
      Category = 'Middle Office'
      Caption = 'Confirmation List'
      ImageIndex = 58
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actImportDTE: TNAction
      Category = 'Middle Office'
      Caption = 'Import DTE'
      ImageIndex = 70
      OnExecute = actImportDTEExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actOrderList: TNAction
      Category = 'Middle Office'
      Caption = 'Order List'
      ImageIndex = 64
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actContractHeaderList: TNAction
      Category = 'Middle Office'
      Caption = 'Contract Header List'
      ImageIndex = 59
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actDailyTransaction: TNAction
      Category = 'Middle Office'
      Caption = 'Daily Transaction'
      ImageIndex = 62
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actProcessNextTradingDate: TNAction
      Category = 'Middle Office'
      Caption = 'Process Next Trading Date'
      ImageIndex = 66
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actSettlementInstruction: TNAction
      Category = 'Middle Office'
      Caption = 'Settlement Instruction'
      ImageIndex = 67
      OnExecute = actSettlementInstructionExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actClosingPrice: TNAction
      Category = 'Middle Office'
      Caption = 'Closing Price (Stock Summary)'
      ImageIndex = 57
      OnExecute = actClosingPriceExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCashDeposit: TNAction
      Category = 'Cash Management'
      Caption = 'Cash Deposit Company Bank'
      ImageIndex = 40
      OnExecute = actCashDepositExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCashWithdraw: TNAction
      Category = 'Cash Management'
      Caption = 'Cash Withdraw RDN / Company Bank'
      ImageIndex = 43
      OnExecute = actCashWithdrawExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actAgingARAP: TNAction
      Category = 'Cash Management'
      Caption = 'Aging ARAP'
      ImageIndex = 39
      OnExecute = actAgingARAPExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCashPosition: TNAction
      Category = 'Cash Management'
      Caption = 'Cash Position'
      ImageIndex = 41
      OnExecute = actCashPositionExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actStockDeposit: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Deposit'
      ImageIndex = 71
      OnExecute = actStockDepositExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actStockWithdraw: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Withdraw'
      ImageIndex = 75
      OnExecute = actStockWithdrawExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actStockPortofolio: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Portofolio'
      ImageIndex = 73
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actStockSettlement: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Settlement'
      ImageIndex = 74
      OnExecute = actStockSettlementExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actFRColDef: TNAction
      Category = 'Finacial Report'
      Caption = 'Column Definition'
      ImageIndex = 53
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actFRRowDef: TNAction
      Category = 'Finacial Report'
      Caption = 'Row Definition'
      ImageIndex = 56
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actFRReportDef: TNAction
      Category = 'Finacial Report'
      Caption = 'Report Definition'
      ImageIndex = 54
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actReportGenerator: TNAction
      Category = 'Finacial Report'
      Caption = 'Report Generator'
      ImageIndex = 55
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actOrderValidationClass: TNAction
      Category = 'Client Management'
      Caption = 'Order Validation Class'
      ImageIndex = 50
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actFeeClass: TNAction
      Category = 'Client Management'
      Caption = 'Transaction Fee Class'
      ImageIndex = 52
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actSettlClass: TNAction
      Category = 'Client Management'
      Caption = 'Settlement Day Class'
      ImageIndex = 51
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actGLMapClass: TNAction
      Category = 'Client Management'
      Caption = 'Client A/C GL Mapping Class'
      ImageIndex = 48
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actOpeningAccounts: TNAction
      Category = 'Client Management'
      Caption = 'Opening Account'
      ImageIndex = 49
      OnExecute = actOpeningAccountsExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actStockHaircut: TNAction
      Category = 'Accounting'
      Caption = 'Stock Haircut Import'
      ImageIndex = 72
      OnExecute = actStockHaircutExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actPayBankTrans: TNAction
      Category = 'Bank Payment'
      Caption = 'Payment Bank Transfer'
      ImageIndex = 65
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBankCharges: TNAction
      Category = 'Static Data'
      Caption = 'Bank Charges'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBankChargesType: TNAction
      Category = 'Static Data'
      Caption = 'Bank Charges Type'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actClearingTrans: TNAction
      Category = 'Bank Payment'
      Caption = 'Clearing Transaction'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actStockRecImport: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Reconcile'
      OnExecute = actStockRecImportExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBankRec: TNAction
      Category = 'Bank Payment'
      Caption = 'Bank Reconsile'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCcyRevaluation: TNAction
      Category = 'Accounting'
      Caption = 'Currency Revaluation'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actPortoRevaluation: TNAction
      Category = 'Accounting'
      Caption = 'Portofolio Revaluation'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actStockIPO: TNAction
      Category = 'Stock Management'
      Caption = 'Stock IPO'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actImportClearingResult: TNAction
      Category = 'Middle Office'
      Caption = 'Import Clearing Result'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actMargin: TNAction
      Category = 'Static Data'
      Caption = 'Margin'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actIntrsClasses: TNAction
      Category = 'Static Data'
      Caption = 'Interest - Interest Class'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actIntrsBal: TNAction
      Category = 'Static Data'
      Caption = 'Interest - Interest Balance'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actSQLExecutor: TNAction
      Category = 'Administrator'
      Caption = 'SQL Executor'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBusAlert: TNAction
      Category = 'Administrator'
      Caption = 'Bussiness Alert'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actFSLAcc: TNAction
      Category = 'Cash Management'
      Caption = 'Fund Sub Ledger Account'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actSecLedgerAcc: TNAction
      Category = 'Stock Management'
      Caption = 'Securities Ledger Account'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actRepoClass: TNAction
      Category = 'Repo Management'
      Caption = 'Re-Purchase Order Class'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actRepoContract: TNAction
      Category = 'Repo Management'
      Caption = 'Re-Purchase Order Contract'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actRepoIntrsBal: TNAction
      Category = 'Repo Management'
      Caption = 'Re-Purchase Order Interest Balance'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actOmgeoMonitor: TNAction
      Category = 'Omgeo'
      Caption = 'Omgeo Monitor'
      ImageIndex = 66
      OnExecute = actOmgeoMonitorExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBatchProcess: TNAction
      Category = 'Administrator'
      Caption = 'Batch Process Monitoring'
      ImageIndex = 66
      OnExecute = actBatchProcessExecute
      CheckPermission = True
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actReportShareBalanceWithShareValue: TNAction
      Category = 'Reports'
      Caption = 'Shares Balance With Share Value'
      OnExecute = actReportShareBalanceWithShareValueExecute
      CheckPermission = False
    end
    object actUserAccounts: TNAction
      Category = 'Administrator'
      Caption = 'User Accounts'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actSecLedger: TNAction
      Category = 'Stock Management'
      Caption = 'Securities Ledger'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actFSLTrans: TNAction
      Category = 'Cash Management'
      Caption = 'FSL Transaction'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actReportMaintenance: TNAction
      Category = 'Administrator'
      Caption = 'Report Maintenance'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCSOA: TNAction
      Category = 'Cash Management'
      Caption = 'Client Statement'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actSecLedgerBal: TNAction
      Category = 'Stock Management'
      Caption = 'Securities Ledger Balance'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCSOACashOnly: TNAction
      Category = 'Cash Management'
      Caption = 'Client Statement Cash Only'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCSOAByTrans: TNAction
      Category = 'Cash Management'
      Caption = 'Client Statement By Transaction'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actStockMovement: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Movement'
      OnExecute = actStockMovementExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBrkStockSett: TNAction
      Category = 'Stock Management'
      Caption = 'Broker Stock Settlement'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCStockSettle: TNAction
      Category = 'Client Management'
      Caption = 'Client Stock Settle'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actUserMonitoring: TNAction
      Category = 'Administrator'
      Caption = 'User Monitoring'
      OnExecute = actUserMonitoringExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCashSettlement: TNAction
      Category = 'Cash Management'
      Caption = 'Cash Settlement'
      OnExecute = actCashSettlementExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBrokerCashSettle: TNAction
      Category = 'Cash Management'
      Caption = 'Broker Cash Settlement'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actClientCashSettle: TNAction
      Category = 'Cash Management'
      Caption = 'Client Cash Settlement'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actMarketInfo: TNAction
      Category = 'Static Data'
      Caption = 'Market Information'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCharge: TNAction
      Category = 'Static Data'
      Caption = 'Charge'
      OnExecute = actChargeExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actChargeTable: TNAction
      Category = 'Static Data'
      Caption = 'Charge Table'
      OnExecute = actChargeTableExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actChannel: TNAction
      Category = 'Static Data'
      Caption = 'Channel'
      OnExecute = actChannelExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCommission: TNAction
      Category = 'Static Data'
      Caption = 'Commission'
      OnExecute = actCommissionExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCommTable: TNAction
      Category = 'Static Data'
      Caption = 'Commission Table'
      OnExecute = actCommTableExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actSales: TNAction
      Category = 'Static Data'
      Caption = 'Sales'
      OnExecute = actSalesExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actNetARAP: TNAction
      Category = 'Cash Management'
      Caption = 'Netting ARAP'
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actInterest: TNAction
      Category = 'Static Data'
      Caption = 'Interest'
      OnExecute = actInterestExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actInterestTable: TNAction
      Category = 'Static Data'
      Caption = 'Interest Table'
      OnExecute = actInterestTableExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actDealer: TNAction
      Category = 'Static Data'
      Caption = 'Dealer'
      OnExecute = actDealerExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actSalesAgent: TNAction
      Category = 'Static Data'
      Caption = 'Sales Agent'
      OnExecute = actSalesAgentExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actGLPeriod: TNAction
      Category = 'Accounting'
      Caption = 'Period Configuration'
      OnExecute = actGLPeriodExecute
      CheckPermission = True
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actAccountLedgerType: TNAction
      Category = 'Client Management'
      Caption = 'Account Ledger Type'
      OnExecute = actAccountLedgerTypeExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actAccountLedgerClass: TNAction
      Category = 'Client Management'
      Caption = 'Account Ledger Class'
      OnExecute = actAccountLedgerClassExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actTradingLimitClass: TNAction
      Category = 'Client Management'
      Caption = 'Trading Limit Class'
      OnExecute = actTradingLimitClassExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actProcessMonthlyStatement: TNAction
      Category = 'Cash Management'
      Caption = 'Generate Monthly Account Statement'
      OnExecute = actProcessMonthlyStatementExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actEvent: TNAction
      Category = 'Client Management'
      Caption = 'Event Information'
      ImageIndex = 20
      OnExecute = actEventExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actKSEIRequest: TNAction
      Category = 'Client Management'
      Caption = 'KSEI Request'
      ImageIndex = 37
      OnExecute = actKSEIRequestExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBankRecon: TNAction
      Category = 'Cash Management'
      Caption = 'RDN Bank Reconcile'
      OnExecute = actBankReconExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actStockSettleInstruction: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Settle Instruction'
      OnExecute = actStockSettleInstructionExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actClientInquiry: TNAction
      Category = 'Client Management'
      Caption = 'Client Inquiry'
      OnExecute = actClientInquiryExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actStockPosition: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Position'
      OnExecute = actStockPositionExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actStockAging: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Aging'
      OnExecute = actStockAgingExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actFacilitationTrade: TNAction
      Category = 'Middle Office'
      Caption = 'Facilitation Trade'
      OnExecute = actFacilitationTradeExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actWarehouseTrade: TNAction
      Category = 'Middle Office'
      Caption = 'Warehouse Trade'
      OnExecute = actWarehouseTradeExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCrossTomTrade: TNAction
      Category = 'Middle Office'
      Caption = 'Crossing / Nego Tomorrow'
      OnExecute = actCrossTomTradeExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBatchConfig: TNAction
      Category = 'Administrator'
      Caption = 'Batch Process Configuration'
      OnExecute = actBatchConfigExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object ackBankReceive: TNAction
      Category = 'Cash Management'
      Caption = 'Bank (RDN) Receive Monitor'
      OnExecute = ackBankReceiveExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actDailyTradeSum: TNAction
      Category = 'Middle Office'
      Caption = 'Daily Trade Summary'
      OnExecute = actDailyTradeSumExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCompany: TNAction
      Category = 'Client Management'
      Caption = 'Company Maintenance'
      OnExecute = actCompanyExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCompanyAccount: TNAction
      Category = 'Client Management'
      Caption = 'Company Account'
      OnExecute = actCompanyAccountExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actAccLedgerTemplate: TNAction
      Category = 'NActions'
      Caption = 'Ledger Account Template'
      OnExecute = actAccLedgerTemplateExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCashFlow: TNAction
      Category = 'NActions'
      Caption = 'Cash Flow'
      OnExecute = actCashFlowExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCBestInstruction: TNAction
      Category = 'NActions'
      Caption = 'CBest Instruction'
      OnExecute = actCBestInstructionExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actIPO: TNAction
      Category = 'Corporate Action'
      Caption = 'Initial Public Offering (IPO)'
      OnExecute = actIPOExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actInstrumentBonds: TNAction
      Category = 'FiTS'
      Caption = 'Instrument'
      ImageIndex = 13
      OnExecute = actInstrumentBondsExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBondsDealTicket: TNAction
      Category = 'FiTS'
      Caption = 'Dealticket'
      ImageIndex = 73
      OnExecute = actBondsDealTicketExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actBondsClosingPrice: TNAction
      Category = 'FiTS'
      Caption = 'Close Price'
      ImageIndex = 50
      OnExecute = actBondsClosingPriceExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actLetterOfConfirm: TNAction
      Category = 'FiTS'
      Caption = 'Letter Of Confirmation'
      ImageIndex = 58
      OnExecute = actLetterOfConfirmExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actFixedAssetGroup: TNAction
      Category = 'Accounting'
      Caption = 'Fixed Asset Group'
      OnExecute = actFixedAssetGroupExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actFixedAsset: TNAction
      Category = 'Accounting'
      Caption = 'Fixed Asset'
      OnExecute = actFixedAssetExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actDepreciationTable: TNAction
      Category = 'Accounting'
      Caption = 'Fixed Asset - Depreciation Table'
      OnExecute = actDepreciationTableExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actAccLedgerBalPosition: TNAction
      Category = 'Client Management'
      Caption = 'Account Ledger Balance Position'
      OnExecute = actAccLedgerBalPositionExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actReconcileDTE: TNAction
      Category = 'Middle Office'
      Caption = 'Reconcile DTE'
      OnExecute = actReconcileDTEExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actEmailConfig: TNAction
      Category = 'Administrator'
      Caption = 'Email Configuration'
      OnExecute = actEmailConfigExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actEmailMonitoring: TNAction
      Category = 'Administrator'
      Caption = 'Email Monitoring'
      OnExecute = actEmailMonitoringExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCashVoucher: TNAction
      Category = 'Cash Management'
      Caption = 'Cash Voucher'
      OnExecute = actCashVoucherExecute
      CheckPermission = False
    end
    object actStockVoucher: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Voucher'
      OnExecute = actStockVoucherExecute
      CheckPermission = False
    end
    object actJournalList: TNAction
      Category = 'Accounting'
      Caption = 'Journal List'
      OnExecute = actJournalListExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actGLActivity: TNAction
      Category = 'Accounting'
      Caption = 'General Ledger'
      OnExecute = actGLActivityExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actReportSalesActivity: TNAction
      Category = 'Reports'
      Caption = 'Sales Trade Activity'
      OnExecute = actReportSalesActivityExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actReportClientActivity: TNAction
      Category = 'Reports'
      Caption = 'Client Activity'
      OnExecute = actReportClientActivityExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actReceiptList: TNAction
      Category = 'Cash Management'
      Caption = 'Receipt List'
      OnExecute = actReceiptListExecute
      CheckPermission = False
      ActionLog = ActionLog
      ActionType = 'Open Form'
    end
    object actCCClass: TNAction
      Category = 'Static Data'
      Caption = 'Credit Limit Class'
      OnExecute = actCCClassExecute
      CheckPermission = False
    end
    object actPermissions: TNAction
      Category = 'Administrator'
      Caption = 'List of Permissions'
      OnExecute = actPermissionsExecute
      CheckPermission = False
    end
    object actRDNRequest: TNAction
      Category = 'Client Management'
      Caption = 'RDN Request'
      OnExecute = actRDNRequestExecute
      CheckPermission = False
    end
    object actAccLegClass: TNAction
      Category = 'NActions'
      Caption = 'Account Ledger Class'
      Hint = 'Account Ledger Class'
      OnExecute = actAccLegClassExecute
      CheckPermission = False
    end
    object actLendBorrow: TNAction
      Category = 'Stock Management'
      Caption = 'Lending && Borrowing Contract'
      OnExecute = actLendBorrowExecute
      CheckPermission = False
    end
    object actCorpAct: TNAction
      Category = 'Corporate Action'
      Caption = 'Corporate Action'
      ImageIndex = 46
      OnExecute = actCorpActExecute
      CheckPermission = False
    end
    object actAccountSuspend: TNAction
      Category = 'Client Management'
      Caption = 'Account Suspend Process'
      OnExecute = actAccountSuspendExecute
      CheckPermission = False
    end
    object actClosingProcess: TNAction
      Category = 'Client Management'
      Caption = 'Closing Account Process'
      OnExecute = actClosingProcessExecute
      CheckPermission = False
    end
    object actAccUnSuspend: TNAction
      Category = 'Client Management'
      Caption = 'Account Suspend Activing'
      OnExecute = actAccUnSuspendExecute
      CheckPermission = False
    end
    object actAccDorman: TNAction
      Category = 'Client Management'
      Caption = 'Account Dorman'
      OnExecute = actAccDormanExecute
      CheckPermission = False
    end
    object actUserDataOwner: TNAction
      Category = 'Administrator'
      Caption = 'User Data Owner'
      OnExecute = actUserDataOwnerExecute
      CheckPermission = False
    end
    object actUserConfiguration: TNAction
      Category = 'Administrator'
      Caption = 'User Configuration'
      OnExecute = actUserConfigurationExecute
      CheckPermission = False
    end
    object actCashMutation: TNAction
      Category = 'Cash Management'
      Caption = 'Cash Mutation'
      OnExecute = actCashMutationExecute
      CheckPermission = False
    end
    object actGLJournal: TNAction
      Category = 'Accounting'
      Caption = 'Journal Trade Posting (Automatic Journal)'
      OnExecute = actGLJournalExecute
      CheckPermission = False
    end
    object actAssignGroupToCOB: TNAction
      Category = 'Administrator'
      Caption = 'Assign Client On Board Activity to Group'
      OnExecute = actAssignGroupToCOBExecute
      CheckPermission = False
    end
    object actGroupAdmin: TNAction
      Category = 'Administrator'
      Caption = 'Group Admin'
      OnExecute = actGroupAdminExecute
      CheckPermission = False
    end
    object actKSEIRDNUpload: TNAction
      Category = 'Client Management'
      Caption = 'Upload KSEI RDN Progress'
      OnExecute = actKSEIRDNUploadExecute
      CheckPermission = False
    end
    object actAccCreditLimit: TNAction
      Category = 'Client Management'
      Caption = 'Account Credit Limit Setup'
      OnExecute = actAccCreditLimitExecute
      CheckPermission = False
    end
    object actReportStatementOfAccount: TNAction
      Category = 'Reports'
      Caption = 'Statement of Account'
      OnExecute = actReportStatementOfAccountExecute
      CheckPermission = False
    end
    object actMonthlyStatement: TNAction
      Category = 'Reports'
      Caption = 'Generate Monthly Statement'
      OnExecute = actMonthlyStatementExecute
      CheckPermission = False
    end
    object actReportVD51_2: TNAction
      Category = 'Reports'
      Caption = 'Report VD5 1-2'
      OnExecute = actReportVD51_2Execute
      CheckPermission = False
    end
    object actExpiredDocList: TNAction
      Category = 'Client Management'
      Caption = 'Expired Document List'
      OnExecute = actExpiredDocListExecute
      CheckPermission = False
    end
    object actCashProjection: TNAction
      Category = 'Cash Management'
      Caption = 'Cash Projection'
      OnExecute = actCashProjectionExecute
      CheckPermission = False
    end
    object actStockDelRev: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Deliver / Receive'
      OnExecute = actStockDelRevExecute
      CheckPermission = False
    end
    object actContractBonds: TNAction
      Category = 'FiTS'
      Caption = 'Contract'
      OnExecute = actContractBondsExecute
      CheckPermission = False
    end
    object actCTPRecon: TNAction
      Category = 'FiTS'
      Caption = 'CTP Reconsile'
      OnExecute = actCTPReconExecute
      CheckPermission = False
    end
    object actBondsDealTicketContract: TNAction
      Category = 'FiTS'
      Caption = 'Generate Contract Bonds'
      OnExecute = actBondsDealTicketContractExecute
      CheckPermission = False
    end
    object actReportSummaryMarketTradeActivity: TNAction
      Category = 'Reports'
      Caption = 'Summary Market Trade Activity '
      OnExecute = actReportSummaryMarketTradeActivityExecute
      CheckPermission = False
      ActionLog = ActionLog
    end
    object actReportCashDepositList: TNAction
      Category = 'Reports'
      Caption = 'Cash Deposit List'
      OnExecute = actReportCashDepositListExecute
      CheckPermission = False
    end
    object actReportCashWitdrawList: TNAction
      Category = 'Reports'
      Caption = 'Cash Withdraw List'
      OnExecute = actReportCashWitdrawListExecute
      CheckPermission = False
    end
    object actReportStockPosBySalesAcc: TNAction
      Category = 'Reports'
      Caption = 'Stock Position By Sales Account'
      OnExecute = actReportStockPosBySalesAccExecute
      CheckPermission = False
    end
    object actReportStockPosBySalesStock: TNAction
      Category = 'Reports'
      Caption = 'Stock Position By Sales Stock'
      OnExecute = actReportStockPosBySalesStockExecute
      CheckPermission = False
    end
    object actAuthPerson: TNAction
      Category = 'Static Data'
      Caption = 'Authorize Person'
      OnExecute = actAuthPersonExecute
      CheckPermission = False
    end
    object actVoucherSummary: TNAction
      Category = 'Reports'
      Caption = 'Journal Voucher'
      OnExecute = actVoucherSummaryExecute
      CheckPermission = False
    end
    object actReportARAPSummary: TNAction
      Category = 'Cash Management'
      Caption = 'AR/AP Summary'
      OnExecute = actReportARAPSummaryExecute
      CheckPermission = False
    end
    object actBusinessLine: TNAction
      Category = 'Static Data'
      Caption = 'Business Line'
      OnExecute = actBusinessLineExecute
      CheckPermission = False
    end
    object actJournalMap: TNAction
      Category = 'Accounting'
      Caption = 'Journal Parameter'
      OnExecute = actJournalMapExecute
      CheckPermission = False
    end
    object actReportCashVoucher: TNAction
      Category = 'Reports'
      Caption = 'Cash Voucher'
      OnExecute = actReportCashVoucherExecute
      CheckPermission = False
    end
    object actReportTest: TNAction
      Category = 'Reports'
      Caption = 'Report Test'
      OnExecute = actReportTestExecute
      CheckPermission = False
    end
    object actGLJournalMap: TNAction
      Category = 'Accounting'
      Caption = 'GL Journal Map'
      OnExecute = actGLJournalMapExecute
      CheckPermission = False
    end
    object actIDXTrade: TNAction
      Category = 'Middle Office'
      Caption = 'FO Daily Trade'
      OnExecute = actIDXTradeExecute
      CheckPermission = False
    end
    object actBatchConfigSetting: TNAction
      Category = 'Administrator'
      Caption = 'Batch Process Configuration'
      OnExecute = actBatchConfigSettingExecute
      CheckPermission = False
    end
    object actIDXOrder: TNAction
      Category = 'Middle Office'
      Caption = 'IDX All Order'
      OnExecute = actIDXOrderExecute
      CheckPermission = False
    end
    object actAccStatList: TNAction
      Category = 'Reports'
      Caption = 'Account Status List'
      OnExecute = actAccStatListExecute
      CheckPermission = False
    end
    object actReportContractBondTrade: TNAction
      Category = 'Reports'
      Caption = 'Daily Bond Trade'
      OnExecute = actReportContractBondTradeExecute
      CheckPermission = False
    end
    object actBussType: TNAction
      Category = 'Static Data'
      Caption = 'Bussiness Type'
      OnExecute = actBussTypeExecute
      CheckPermission = False
    end
    object actBAE: TNAction
      Category = 'Static Data'
      Caption = 'Biro Administrasi Efek (BAE)'
      OnExecute = actBAEExecute
      CheckPermission = False
    end
    object actSOP: TNAction
      Category = 'Corporate Action'
      Caption = 'Stock Option Program'
      OnExecute = actSOPExecute
      CheckPermission = False
    end
    object actDHK: TNAction
      Category = 'Middle Office'
      Caption = 'DHK'
      OnExecute = actDHKExecute
      CheckPermission = False
    end
    object actOpenDorman: TNAction
      Category = 'Client Management'
      Caption = 'Open Account Dorman'
      OnExecute = actOpenDormanExecute
      CheckPermission = False
    end
    object actARAPReport: TNAction
      Category = 'Reports'
      Caption = 'AR/AP Report'
      OnExecute = actARAPReportExecute
      CheckPermission = False
    end
    object actReverseRepo: TNAction
      Category = 'Repo Management'
      Caption = 'Create New Contract REPO'
      OnExecute = actReverseRepoExecute
      CheckPermission = False
    end
    object actBankMutation: TNAction
      Category = 'Cash Management'
      Caption = 'Bank Movement'
      OnExecute = actBankMutationExecute
      CheckPermission = False
    end
    object actOTCInstruction: TNAction
      Category = 'Stock Management'
      Caption = 'Stock CBest Instruction'
      OnExecute = actOTCInstructionExecute
      CheckPermission = False
    end
    object actKSEIAccRecon: TNAction
      Category = 'Client Management'
      Caption = 'KSEI && RDN Account Reconcile'
      OnExecute = actKSEIAccReconExecute
      CheckPermission = False
    end
    object actReportFundLedgerBalance: TNAction
      Category = 'Reports'
      Caption = 'Fund Ledger Balance'
      OnExecute = actReportFundLedgerBalanceExecute
      CheckPermission = False
    end
    object actReportSecuritiesLedgerBalance: TNAction
      Category = 'Reports'
      Caption = 'Securities Ledger Balance'
      OnExecute = actReportSecuritiesLedgerBalanceExecute
      CheckPermission = False
    end
    object actReportFundLedgerJournal: TNAction
      Category = 'NActions'
      Caption = 'Fund Ledger Journal List'
      OnExecute = actReportFundLedgerJournalExecute
      CheckPermission = False
    end
    object actWHT: TNAction
      Category = 'Accounting'
      Caption = 'WH Tax'
      OnExecute = actWHTExecute
      CheckPermission = False
    end
    object actReportSalesCommission: TNAction
      Category = 'Reports'
      Caption = 'Sales Commission'
      OnExecute = actReportSalesCommissionExecute
      CheckPermission = False
    end
    object actReportClientCommission: TNAction
      Category = 'Reports'
      Caption = 'Client Commission'
      OnExecute = actReportClientCommissionExecute
      CheckPermission = False
    end
    object actReportClientCommissionByRange: TNAction
      Category = 'Reports'
      Caption = 'Client Commission By Range'
      OnExecute = actReportClientCommissionByRangeExecute
      CheckPermission = False
    end
    object actBankPaymentList: TNAction
      Category = 'Cash Management'
      Caption = 'Bank Payment'
      OnExecute = actBankPaymentListExecute
      CheckPermission = False
    end
    object actBankReceiveList: TNAction
      Category = 'Cash Management'
      Caption = 'Bank Receive'
      OnExecute = actBankReceiveListExecute
      CheckPermission = False
    end
    object actDHKCash: TNAction
      Category = 'Middle Office'
      Caption = 'DHK Cash'
      OnExecute = actDHKCashExecute
      CheckPermission = False
    end
    object actHandOverExer: TNAction
      Category = 'Corporate Action'
      Caption = 'Cash Hand Over Exercise'
      OnExecute = actHandOverExerExecute
      CheckPermission = False
    end
    object actCashDCNotes: TNAction
      Category = 'Cash Management'
      Caption = 'Cash Debet/Credit Notes'
      OnExecute = actCashDCNotesExecute
      CheckPermission = False
    end
    object actCorpactCashLoanApproval: TNAction
      Category = 'NActions'
      Caption = 'Cash Loan Approval'
      OnExecute = actCorpactCashLoanApprovalExecute
      CheckPermission = False
    end
    object actExerciseMonitoring: TNAction
      Category = 'Corporate Action'
      Caption = 'Exercise Monitoring'
      OnExecute = actExerciseMonitoringExecute
      CheckPermission = False
    end
    object actDOT: TNAction
      Category = 'Client Management'
      Caption = 'Blacklist People && Organization'
      OnExecute = actDOTExecute
      CheckPermission = False
    end
    object actBalanceSheetReport: TNAction
      Category = 'Reports'
      Caption = 'Balance Sheet'
      OnExecute = actBalanceSheetReportExecute
      CheckPermission = False
    end
    object actReportTrialBalance: TNAction
      Category = 'Reports'
      Caption = 'Trial Balance'
      OnExecute = actReportTrialBalanceExecute
      CheckPermission = False
    end
    object actReportProfitLossStatement: TNAction
      Category = 'Reports'
      Caption = 'Profit Loss Statement'
      OnExecute = actReportProfitLossStatementExecute
      CheckPermission = False
    end
    object actAccountInterest: TNAction
      Category = 'Client Management'
      Caption = 'Account Interest'
      OnExecute = actAccountInterestExecute
      CheckPermission = False
    end
    object actProvisionPortFolioM2M: TNAction
      Category = 'Accounting'
      Caption = 'Provision Portfolio Mark To Market'
      OnExecute = actProvisionPortFolioM2MExecute
      CheckPermission = False
    end
    object actInterestTrack: TNAction
      Category = 'Cash Management'
      Caption = 'Interest Transaction'
      OnExecute = actInterestTrackExecute
      CheckPermission = False
    end
    object actReportSecuritiesLedgerJournal: TNAction
      Category = 'NActions'
      Caption = 'Securities Journal'
      OnExecute = actReportSecuritiesLedgerJournalExecute
      CheckPermission = False
    end
    object actUploadDataFeedback: TNAction
      Category = 'Client Management'
      Caption = 'Upload RDN Data Feedback'
      OnExecute = actUploadDataFeedbackExecute
      CheckPermission = False
    end
    object actCashMovement: TNAction
      Category = 'Cash Management'
      Caption = 'Cash Movement RDN / Company Bank'
      OnExecute = actCashMovementExecute
      CheckPermission = False
    end
    object actACSList: TNAction
      Category = 'Stock Management'
      Caption = 'Alternate Cash Settlement (ACS)'
      OnExecute = actACSListExecute
      CheckPermission = False
    end
    object actTenderOffer: TNAction
      Category = 'Corporate Action'
      Caption = 'Tender Offer'
      OnExecute = actTenderOfferExecute
      CheckPermission = False
    end
    object actMTITrans: TNAction
      Category = 'Omgeo'
      Caption = 'Omgeo - MTI Transaction'
      OnExecute = actMTITransExecute
      CheckPermission = False
    end
    object actMTIRecord: TNAction
      Category = 'Omgeo'
      Caption = 'Omgeo - MTI Record'
      OnExecute = actMTIRecordExecute
      CheckPermission = False
    end
    object actMTIConfig: TNAction
      Category = 'Omgeo'
      Caption = 'Omgeo - MTI File Config'
      OnExecute = actMTIConfigExecute
      CheckPermission = False
    end
    object actAccOmgeoConfig: TNAction
      Category = 'Omgeo'
      Caption = 'Omgeo - Account Omgeo Config'
      OnExecute = actAccOmgeoConfigExecute
      CheckPermission = False
    end
    object actReportStockActProfitLoss: TNAction
      Category = 'Reports'
      Caption = 'Report Stock Activity Profit Loss'
      OnExecute = actReportStockActProfitLossExecute
      CheckPermission = False
    end
    object actTaxInvoice: TNAction
      Category = 'Accounting'
      Caption = 'Tax Invoice Number Setup'
      OnExecute = actTaxInvoiceExecute
      CheckPermission = False
    end
    object actTaxOffNo: TNAction
      Category = 'NActions'
      Caption = 'Tax Office Number'
      OnExecute = actTaxOffNoExecute
      CheckPermission = False
    end
    object actGLWithFL: TNAction
      Category = 'NActions'
      Caption = 'GL With FL'
      OnExecute = actGLWithFLExecute
      CheckPermission = False
    end
    object actCompanyBankRecon: TNAction
      Category = 'NActions'
      Caption = 'Company Bank Reconcile'
      OnExecute = actCompanyBankReconExecute
      CheckPermission = False
    end
    object actGLWithBankRecon: TNAction
      Category = 'NActions'
      Caption = 'GL With Bank Recon'
      OnExecute = actGLWithBankReconExecute
      CheckPermission = False
    end
    object actGLWithSLRecon: TNAction
      Category = 'NActions'
      Caption = 'GL With SL Recon'
      OnExecute = actGLWithSLReconExecute
      CheckPermission = False
    end
    object actApprovalRequest: TNAction
      Category = 'Administrator'
      Caption = 'Request of Approval'
      OnExecute = actApprovalRequestExecute
      CheckPermission = False
    end
    object actApprovalHistory: TNAction
      Category = 'Administrator'
      Caption = 'Approval History'
      OnExecute = actApprovalHistoryExecute
      CheckPermission = False
    end
    object actMyApprovalRequestList: TNAction
      Category = 'Administrator'
      Caption = 'My Approval Request'
      OnExecute = actMyApprovalRequestListExecute
      CheckPermission = False
    end
    object actReportList: TNAction
      Category = 'Reports'
      Caption = 'Nayaga Reports'
      OnExecute = actReportListExecute
      CheckPermission = False
    end
    object actGridReportDesigner: TNAction
      Category = 'Reports'
      Caption = 'Grid Report Design'
      OnExecute = actGridReportDesignerExecute
      CheckPermission = False
    end
    object actGLType: TNAction
      Category = 'NActions'
      Caption = 'Ledger of Account Mapping'
      OnExecute = actGLTypeExecute
      CheckPermission = False
    end
    object actCashPositionMovement: TNAction
      Category = 'Cash Management'
      Caption = 'Cash Position Movement'
      OnExecute = actCashPositionMovementExecute
      CheckPermission = False
    end
    object actReportStockPortfolio: TNAction
      Category = 'Reports'
      Caption = 'Stock Portfolio'
      OnExecute = actReportStockPortfolioExecute
      CheckPermission = False
    end
    object actStockOutstanding: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Outstanding'
      CheckPermission = False
    end
    object actInterestBal: TNAction
      Category = 'Cash Management'
      Caption = 'Interest Balance'
      CheckPermission = False
    end
    object actCorpActEnt: TNAction
      Category = 'Corporate Action'
      Caption = 'Corp Action Entitlement'
      ImageIndex = 46
      OnExecute = actCorpActEntExecute
      CheckPermission = False
    end
    object actReportStockPosByClientAcc: TNAction
      Category = 'Reports'
      Caption = 'Stock Position by Client Account'
      OnExecute = actReportStockPosByClientAccExecute
      CheckPermission = False
    end
    object actReportClientPortofolio: TNAction
      Category = 'Reports'
      Caption = 'Client Portofolio'
      OnExecute = actReportClientPortofolioExecute
      CheckPermission = False
    end
    object actReportDormantClientList: TNAction
      Category = 'Reports'
      Caption = 'Dormant Client List'
      OnExecute = actReportDormantClientListExecute
      CheckPermission = False
    end
    object actReportDailyTradeByClientOrClientType: TNAction
      Category = 'Reports'
      Caption = 'Daily Trade Report by Client or Client Type'
      OnExecute = actReportDailyTradeByClientOrClientTypeExecute
      CheckPermission = False
    end
    object actReportDailyTradeByAgent: TNAction
      Category = 'Reports'
      Caption = 'Daily Trade Report by Agent'
      OnExecute = actReportDailyTradeByAgentExecute
      CheckPermission = False
    end
    object actGLInterface: TNAction
      Category = 'Accounting'
      Caption = 'GL Interface'
      OnExecute = actGLInterfaceExecute
      CheckPermission = False
    end
    object actReportClientDetail: TNAction
      Category = 'Reports'
      Caption = 'Client Detail'
      OnExecute = actReportClientDetailExecute
      CheckPermission = False
    end
    object actReportMarginCashAccountBalance: TNAction
      Category = 'Reports'
      Caption = 'Margin Cash Account Balance'
      OnExecute = actReportMarginCashAccountBalanceExecute
      CheckPermission = False
    end
    object actReportTotalShareValue: TNAction
      Category = 'Reports'
      Caption = 'Total Share Value'
      OnExecute = actReportTotalShareValueExecute
      CheckPermission = False
    end
    object actReportTotalDetailShareCollateral: TNAction
      Category = 'Reports'
      Caption = 'Total Detail Share Collateral'
      OnExecute = actReportTotalDetailShareCollateralExecute
      CheckPermission = False
    end
    object actReportMarketCapitalization: TNAction
      Category = 'Reports'
      Caption = 'Market Capitalization'
      OnExecute = actReportMarketCapitalizationExecute
      CheckPermission = False
    end
    object actReportTop15SingleStockCashClient: TNAction
      Category = 'Reports'
      Caption = 'Top 15 Single Stock Cash Client'
      OnExecute = actReportTop15SingleStockCashClientExecute
      CheckPermission = False
    end
    object actReportTotalDetailOutstandingShareValue: TNAction
      Category = 'Reports'
      Caption = 'Total Detail Outstanding Share Value'
      OnExecute = actReportTotalDetailOutstandingShareValueExecute
      CheckPermission = False
    end
    object actReportTotalOutstandingCashClient: TNAction
      Category = 'Reports'
      Caption = 'Total Outstanding Cash Client'
      OnExecute = actReportTotalOutstandingCashClientExecute
      CheckPermission = False
    end
    object actReportTotalLoanMarginClient: TNAction
      Category = 'Reports'
      Caption = 'Total Loan Margin Client'
      OnExecute = actReportTotalLoanMarginClientExecute
      CheckPermission = False
    end
    object actReportAgingMonitoring: TNAction
      Category = 'Reports'
      Caption = 'Aging Monitoring'
      OnExecute = actReportAgingMonitoringExecute
      CheckPermission = False
    end
    object actReportProductList: TNAction
      Category = 'Reports'
      Caption = 'List of Instrument'
      OnExecute = actReportProductListExecute
      CheckPermission = False
    end
    object actReportClientAccountBalanceSummary: TNAction
      Category = 'Reports'
      Caption = 'Client Account Balance Summary'
      OnExecute = actReportClientAccountBalanceSummaryExecute
      CheckPermission = False
    end
    object actReportSummaryActivityByAgentPerClient: TNAction
      Category = 'Reports'
      Caption = 'Summary of Activity by Agent per Client'
      OnExecute = actReportSummaryActivityByAgentPerClientExecute
      CheckPermission = False
    end
    object actReportDetailedPortofolioClient: TNAction
      Category = 'Reports'
      Caption = 'Detailed Portofolio Client'
      OnExecute = actReportDetailedPortofolioClientExecute
      CheckPermission = False
    end
    object actReportMarginAccountSummary: TNAction
      Category = 'Reports'
      Caption = 'Margin Account Summary'
      OnExecute = actReportMarginAccountSummaryExecute
      CheckPermission = False
    end
    object actReportDetailOutstandingCashClient: TNAction
      Category = 'Reports'
      Caption = 'Detail Outstanding Regular Client Retail Individual'
      OnExecute = actReportDetailOutstandingCashClientExecute
      CheckPermission = False
    end
    object actReportExceptionalReport: TNAction
      Category = 'Reports'
      Caption = 'Exceptional Report'
      OnExecute = actReportExceptionalReportExecute
      CheckPermission = False
    end
    object actReportForceSelling: TNAction
      Category = 'Reports'
      Caption = 'Force Selling'
      OnExecute = actReportForceSellingExecute
      CheckPermission = False
    end
    object actReportDetailOutstandingMarginClient: TNAction
      Category = 'Reports'
      Caption = 'Detail Outstanding Nasabah Margin'
      OnExecute = actReportDetailOutstandingMarginClientExecute
      CheckPermission = False
    end
    object actReportTotalDetailOutstandingContraClient: TNAction
      Category = 'NActions'
      Caption = 'Total Detail Outstanding Contra Client'
      OnExecute = actReportTotalDetailOutstandingContraClientExecute
      CheckPermission = False
    end
    object actReportListStockEfek: TNAction
      Category = 'NActions'
      Caption = 'List Stock Efek'
      OnExecute = actReportListStockEfekExecute
      CheckPermission = False
    end
    object actReportMarginYU: TNAction
      Category = 'Reports'
      Caption = 'Margin Report YU'
      OnExecute = actReportMarginYUExecute
      CheckPermission = False
    end
    object actRptGrpType: TNAction
      Category = 'MKBD'
      Caption = 'Report Group Type'
      OnExecute = actRptGrpTypeExecute
      CheckPermission = False
    end
    object actReportType: TNAction
      Category = 'MKBD'
      Caption = 'Report Type'
      OnExecute = actReportTypeExecute
      CheckPermission = False
    end
    object actCreteNewREPO: TNAction
      Category = 'Credit Control'
      Caption = 'REPO - Create New Contract'
      OnExecute = actCreteNewREPOExecute
      CheckPermission = True
    end
    object actMarginMonitoring: TNAction
      Category = 'Credit Control'
      Caption = 'Margin Monitoring'
      OnExecute = actMarginMonitoringExecute
      CheckPermission = False
    end
    object actReportDefinition: TNAction
      Category = 'MKBD'
      Caption = 'Formula Definition'
      OnExecute = actReportDefinitionExecute
      CheckPermission = False
    end
    object actReportSource: TNAction
      Category = 'MKBD'
      Caption = 'Source Dataset'
      OnExecute = actReportSourceExecute
      CheckPermission = False
    end
    object actReportNTransform: TNAction
      Category = 'MKBD'
      Caption = 'NAWC - Daily Report'
      OnExecute = actReportNTransformExecute
      CheckPermission = False
    end
    object actGenerateReport: TNAction
      Category = 'MKBD'
      Caption = 'NAWC - Daily Generate Process'
      OnExecute = actGenerateReportExecute
      CheckPermission = False
    end
    object actCreateReport: TNAction
      Category = 'MKBD'
      Caption = 'NAWC - MKB Create Report'
      OnExecute = actCreateReportExecute
      CheckPermission = False
    end
    object actSetOff: TNAction
      Category = 'NActions'
      Caption = 'Set Off'
      OnExecute = actSetOffExecute
      CheckPermission = False
    end
    object actCashBalanceAccount: TNAction
      Category = 'NActions'
      Caption = 'Cash Balance Account'
      OnExecute = actCashBalanceAccountExecute
      CheckPermission = False
    end
    object actCheckDifferent: TNAction
      Category = 'MKBD'
      Caption = 'NAWC - Check Different Value'
      OnExecute = actCheckDifferentExecute
      CheckPermission = False
    end
    object actSupportingData: TNAction
      Category = 'MKBD'
      Caption = 'Supporting Data'
      OnExecute = actSupportingDataExecute
      CheckPermission = False
    end
    object actLTHReport: TNAction
      Category = 'NActions'
      Caption = 'Laporan Transaksi Harian'
      OnExecute = actLTHReportExecute
      CheckPermission = False
    end
    object actPortofolioDetailReport: TNAction
      Category = 'NActions'
      Caption = 'Portofolio Detail Report'
      OnExecute = actPortofolioDetailReportExecute
      CheckPermission = False
    end
    object actReportSupportingDataMKBD: TNAction
      Category = 'MKBD'
      Caption = 'Supporting Report'
      OnExecute = actReportSupportingDataMKBDExecute
      CheckPermission = False
    end
    object actReportCashAccountStatement: TNAction
      Category = 'Reports'
      Caption = 'Cash Account Statement'
      OnExecute = actReportCashAccountStatementExecute
      CheckPermission = False
    end
    object actReportStatementofAccountCSO: TNAction
      Category = 'Reports'
      Caption = 'Statement of Account'
      OnExecute = actReportStatementofAccountCSOExecute
      CheckPermission = False
    end
    object actReportInvestorOpeningAccount: TNAction
      Category = 'Reports'
      Caption = 'Investor Opening Account'
      OnExecute = actReportInvestorOpeningAccountExecute
      CheckPermission = False
    end
    object actReportNotificationToClient: TNAction
      Category = 'Reports'
      Caption = 'Notification to Client'
      OnExecute = actReportNotificationToClientExecute
      CheckPermission = False
    end
    object actReportAuditLog: TNAction
      Category = 'Reports'
      Caption = 'Audit Log'
      OnExecute = actReportAuditLogExecute
      CheckPermission = False
    end
    object actReportTop15SingleExposureOnMarginAndRepo: TNAction
      Category = 'Reports'
      Caption = 'Top 15 Single Counter Exposure on Margin and Repo'
      OnExecute = actReportTop15SingleExposureOnMarginAndRepoExecute
      CheckPermission = False
    end
    object actReportCombinedAccountReceivablePayable: TNAction
      Category = 'Reports'
      Caption = 'Aging Report'
      OnExecute = actReportCombinedAccountReceivablePayableExecute
      CheckPermission = False
    end
    object actReportMarginAccountSummaryByAgent: TNAction
      Category = 'Reports'
      Caption = 'Margin Account Summary By Agent'
      OnExecute = actReportMarginAccountSummaryByAgentExecute
      CheckPermission = False
    end
    object actReportMarginAccountSummaryByClient: TNAction
      Category = 'Reports'
      Caption = 'Margin Account Summary By Client'
      OnExecute = actReportMarginAccountSummaryByClientExecute
      CheckPermission = False
    end
    object actReportMarginAccountSummaryUSD: TNAction
      Category = 'Reports'
      Caption = 'Margin Account Summary on USD'
      OnExecute = actReportMarginAccountSummaryUSDExecute
      CheckPermission = False
    end
    object actReportExposureReport: TNAction
      Category = 'Reports'
      Caption = 'Exposure Report'
      OnExecute = actReportExposureReportExecute
      CheckPermission = False
    end
    object actReportMarginStatement: TNAction
      Category = 'Reports'
      Caption = 'Margin Ledger Report'
      OnExecute = actReportMarginStatementExecute
      CheckPermission = False
    end
    object actReportSingleCounterMargin: TNAction
      Category = 'Reports'
      Caption = 'Single Counter Exposure'
      OnExecute = actReportSingleCounterMarginExecute
      CheckPermission = False
    end
    object actReportOutstandingRepoDueForSettlement: TNAction
      Category = 'Reports'
      Caption = 'Outstanding Repo Report'
      OnExecute = actReportOutstandingRepoDueForSettlementExecute
      CheckPermission = False
    end
    object actReportRegularAccountSummary: TNAction
      Category = 'Reports'
      Caption = 'Regular Account Summary (By Client)'
      OnExecute = actReportRegularAccountSummaryExecute
      CheckPermission = False
    end
    object actReportForecastCombinedACReceivablePayable: TNAction
      Category = 'Reports'
      Caption = 'Over Due Report'
      OnExecute = actReportForecastCombinedACReceivablePayableExecute
      CheckPermission = False
    end
    object actReportOutstandingTransactionWithSettlementMovement: TNAction
      Category = 'Reports'
      Caption = 'Outstanding Transaction With Settlement Movement'
      OnExecute = actReportOutstandingTransactionWithSettlementMovementExecute
      CheckPermission = False
    end
    object actReportMarginTPlusFinancingCreditRisk: TNAction
      Category = 'Reports'
      Caption = 'TPlus Margin Financing Credit Risk'
      OnExecute = actReportMarginTPlusFinancingCreditRiskExecute
      CheckPermission = False
    end
    object actReportClientActivityAndSharesMovement: TNAction
      Category = 'Reports'
      Caption = 'Client Activity And Shares Movement'
      OnExecute = actReportClientActivityAndSharesMovementExecute
      CheckPermission = False
    end
    object actReportMarginProduct: TNAction
      Category = 'Reports'
      Caption = 'Margin Stock List Report'
      OnExecute = actReportMarginProductExecute
      CheckPermission = False
    end
    object actREPOMonitoring: TNAction
      Category = 'Credit Control'
      Caption = 'REPO - Monitoring'
      OnExecute = actREPOMonitoringExecute
      CheckPermission = False
    end
    object actChangeCollateral: TNAction
      Category = 'Credit Control'
      Caption = 'REPO - Change Collateral'
      OnExecute = actChangeCollateralExecute
      CheckPermission = False
    end
    object actReportListOfNewClient: TNAction
      Category = 'Reports'
      Caption = 'List Of New Client'
      OnExecute = actReportListOfNewClientExecute
      CheckPermission = False
    end
    object actReportRegularSummaryCrossBorderTrades: TNAction
      Category = 'Reports'
      Caption = 'Client Daily Position Monitoring i*trade'
      OnExecute = actReportRegularSummaryCrossBorderTradesExecute
      CheckPermission = False
    end
    object actReportLaporanREPOReverseREPO: TNAction
      Category = 'Reports'
      Caption = 'Laporan REPO / Reverse REPO'
      OnExecute = actReportLaporanREPOReverseREPOExecute
      CheckPermission = False
    end
    object actReportCashStatement: TNAction
      Category = 'Reports'
      Caption = 'Cash Statement'
      OnExecute = actReportCashStatementExecute
      CheckPermission = False
    end
    object actReportAnnouncementWarrant: TAction
      Category = 'Reports'
      Caption = 'Announcement Warrant'
      OnExecute = actReportAnnouncementWarrantExecute
    end
    object actReportBorrowingFeeReportInternalCSI: TAction
      Category = 'Reports'
      Caption = 'Borrowing Fee Report (Internal CSI)'
      OnExecute = actReportBorrowingFeeReportInternalCSIExecute
    end
    object actReportBorrowingFeeReportNasabah: TAction
      Category = 'Reports'
      Caption = 'Borrowing Fee Nasabah'
      OnExecute = actReportBorrowingFeeReportNasabahExecute
    end
    object actReportBukuPembantuEfekAMT: TAction
      Category = 'Reports'
      Caption = 'Buku Pembantu Efek AMT'
      OnExecute = actReportBukuPembantuEfekAMTExecute
    end
    object actReportCBestAndClientCustodyReconciliation: TAction
      Category = 'Reports'
      Caption = 'CBest And Client Custody Reconciliation'
      OnExecute = actReportCBestAndClientCustodyReconciliationExecute
    end
    object actReportCBestDailyTradeList: TAction
      Category = 'Reports'
      Caption = 'CBest Daily Trade List'
      OnExecute = actReportCBestDailyTradeListExecute
    end
    object actReportConfirmationCorpactDetailReverseStock: TAction
      Category = 'Reports'
      Caption = 'Confirmation Corpact Reverse Stock Detail'
      OnExecute = actReportConfirmationCorpactDetailReverseStockExecute
    end
    object actReportDailyCommision: TAction
      Category = 'Reports'
      Caption = 'Daily Commision'
      OnExecute = actReportDailyCommisionExecute
    end
    object actReportDailyReportOddLotPosition: TAction
      Category = 'Reports'
      Caption = 'Daily OddLot Position'
      OnExecute = actReportDailyReportOddLotPositionExecute
    end
    object actReportDailyTransactionReport: TAction
      Category = 'Reports'
      Caption = 'Daily Transaction Report (LTH)'
      OnExecute = actReportDailyTransactionReportExecute
    end
    object actReportLaporanKegiatanPerantaraPedagangEfek: TAction
      Category = 'Reports'
      Caption = 'Laporan Kegiatan Perantara Pedagang Efek'
      OnExecute = actReportLaporanKegiatanPerantaraPedagangEfekExecute
    end
    object actReportLaporanPendukungVD55: TAction
      Category = 'Reports'
      Caption = 'Laporan Pendukung VD 5-5'
    end
    object actReportLaporanPendukungVD57: TAction
      Category = 'Reports'
      Caption = 'Laporan Pendukung VD 5-7'
      OnExecute = actReportLaporanPendukungVD57Execute
    end
    object actReportMonthlySafeCustodyStatementOfAccount: TAction
      Category = 'Reports'
      Caption = 'Monthly Safe Custody Statement Of Account'
      OnExecute = actReportMonthlySafeCustodyStatementOfAccountExecute
    end
    object actReportMovementSafeCustody: TAction
      Category = 'Reports'
      Caption = 'Movement Safe Custody'
      OnExecute = actReportMovementSafeCustodyExecute
    end
    object actReportOutstandingTradesDueForDelivery: TAction
      Category = 'Reports'
      Caption = 'Outstanding Trades Due For Delivery'
      OnExecute = actReportOutstandingTradesDueForDeliveryExecute
    end
    object actReportPembayaranSahamIPO: TAction
      Category = 'Reports'
      Caption = 'Pembayaran Saham IPO'
      OnExecute = actReportPembayaranSahamIPOExecute
    end
    object actReportPendukungDailyTransaction: TAction
      Category = 'Reports'
      Caption = 'Pendukung Daily Transaction'
      OnExecute = actReportPendukungDailyTransactionExecute
    end
    object actReportPortfolioAndCashAccountStatement: TAction
      Category = 'Reports'
      Caption = 'Portfolio And Cash Account Statement'
      OnExecute = actReportPortfolioAndCashAccountStatementExecute
    end
    object actReportReconPortofolioReportUntukIDX: TAction
      Category = 'Reports'
      Caption = 'Recon Portofolio Untuk IDX'
      OnExecute = actReportReconPortofolioReportUntukIDXExecute
    end
    object actReportRekapInstruksiDistribusiIPO: TAction
      Category = 'Reports'
      Caption = 'Rekap Instruksi Distribusi IPO'
      OnExecute = actReportRekapInstruksiDistribusiIPOExecute
    end
    object actReportRekapitulasiTransaksiSaham: TAction
      Category = 'Reports'
      Caption = 'Rekapitulasi Transaksi Saham'
      OnExecute = actReportRekapitulasiTransaksiSahamExecute
    end
    object actReportSafeKeepingFeeStatement: TAction
      Category = 'Reports'
      Caption = 'Monthly Safekeeping Fee'
      OnExecute = actReportSafeKeepingFeeStatementExecute
    end
    object actReportScheduleCorporateAction: TAction
      Category = 'Reports'
      Caption = 'Schedule Corporate Action'
      OnExecute = actReportScheduleCorporateActionExecute
    end
    object actReportSettlementInstructionForBondTransaction: TAction
      Category = 'Reports'
      Caption = 'Settlement Instruction For Bond Transaction'
      OnExecute = actReportSettlementInstructionForBondTransactionExecute
    end
    object actReportShareBalancesByClient: TNAction
      Category = 'Reports'
      Caption = 'Share Balance'
      OnExecute = actReportShareBalancesByClientExecute
      CheckPermission = False
    end
    object actReportShareBalancesByAgent: TAction
      Category = 'Reports'
      Caption = 'Share Balances By Agent'
      OnExecute = actReportShareBalancesByAgentExecute
    end
    object actReportShareBalancesByAgent2: TAction
      Category = 'Reports'
      Caption = 'Share Balances By Agent (Format 2)'
    end
    object actReportShareBalancesByClient1: TAction
      Category = 'Reports'
      Caption = 'Share Balances By Client (Format 1)'
    end
    object actReportShareBalancesByClient2: TAction
      Category = 'Reports'
      Caption = 'Share Balances By Client (Format 2)'
    end
    object actReportShareBalancesByProduct: TAction
      Category = 'Reports'
      Caption = 'Share Balances By Product'
      OnExecute = actReportShareBalancesByProductExecute
    end
    object actReportStockHoldingByClient: TAction
      Category = 'Reports'
      Caption = 'Stock Holding By Client'
      OnExecute = actReportStockHoldingByClientExecute
    end
    object actReportStockHoldingByAgent: TAction
      Category = 'Reports'
      Caption = 'Stock Holding By Agent'
      OnExecute = actReportStockHoldingByAgentExecute
    end
    object actReportStockHoldingByStock: TAction
      Category = 'Reports'
      Caption = 'Stock Holding By Stock'
      OnExecute = actReportStockHoldingByStockExecute
    end
    object actReportSummaryObligasi: TAction
      Category = 'Reports'
      Caption = 'Summary Obligasi'
      OnExecute = actReportSummaryObligasiExecute
    end
    object actReportSummarySuspenseAccount: TAction
      Category = 'Reports'
      Caption = 'Summary Suspense Account'
      OnExecute = actReportSummarySuspenseAccountExecute
    end
    object actReportTCObligasi: TAction
      Category = 'Reports'
      Caption = 'Trade Confirmation Obligasi'
      OnExecute = actReportTCObligasiExecute
    end
    object actReportTradeListWithCustodianBank: TAction
      Category = 'Reports'
      Caption = 'Trade List With Custodian Bank'
      OnExecute = actReportTradeListWithCustodianBankExecute
    end
    object actReportBOFISDHKMatch: TAction
      Category = 'Reports'
      Caption = 'BOFIS - DHK Reconcile'
      OnExecute = actReportBOFISDHKMatchExecute
    end
    object actReportCashDividendEntitlementListing: TAction
      Category = 'Reports'
      Caption = 'Cash Dividend Entitlement Listing'
      OnExecute = actReportCashDividendEntitlementListingExecute
    end
    object actReportCashDividendPayment: TAction
      Category = 'Reports'
      Caption = 'Cash Dividend Payment'
      OnExecute = actReportCashDividendPaymentExecute
    end
    object actReportInterestPrincipalizedForCashAccount: TAction
      Category = 'Reports'
      Caption = 'Interest Principalized For Cash Account'
      OnExecute = actReportInterestPrincipalizedForCashAccountExecute
    end
    object actReportMonthlyLTAB: TAction
      Category = 'Reports'
      Caption = 'Monthly LTAB'
      OnExecute = actReportMonthlyLTABExecute
    end
    object actReportOutstandingTransactionDueForSettlement: TAction
      Category = 'Reports'
      Caption = 'Outstanding Transaction Due For Settlement'
      OnExecute = actReportOutstandingTransactionDueForSettlementExecute
    end
    object actReportOutstandingTradesDueForSettlement: TAction
      Category = 'Reports'
      Caption = 'Outstanding Trades Due For Settlement'
      OnExecute = actReportOutstandingTradesDueForSettlementExecute
    end
    object actReportRecommendedTransactionsForSetoffRollOver: TAction
      Category = 'Reports'
      Caption = 'Recommended Transactions For Setoff RollOver'
      OnExecute = actReportRecommendedTransactionsForSetoffRollOverExecute
    end
    object actReportRepoDailyTrade: TAction
      Category = 'Reports'
      Caption = 'Repo Daily Trade'
      OnExecute = actReportRepoDailyTradeExecute
    end
    object actReportCorpactEntitlementListing: TNAction
      Category = 'Reports'
      Caption = 'Corpact Entitlement Listing'
      OnExecute = actReportCorpactEntitlementListingExecute
      CheckPermission = False
    end
    object actReportClientTradeActivitiesByPurchaseSales: TNAction
      Category = 'Reports'
      Caption = 'Client Trade Activity'
      OnExecute = actReportClientTradeActivitiesByPurchaseSalesExecute
      CheckPermission = False
    end
    object actReportAgentRanking: TNAction
      Category = 'Reports'
      Caption = 'Agent Ranking'
      OnExecute = actReportAgentRankingExecute
      CheckPermission = False
    end
    object actReportMarginMKBD: TNAction
      Category = 'Reports'
      Caption = 'Margin Report'
      OnExecute = actReportMarginMKBDExecute
      CheckPermission = False
    end
    object actReportDailyTradeDetail: TNAction
      Category = 'Reports'
      Caption = 'Daily Trade Detail Report'
      OnExecute = actReportDailyTradeDetailExecute
      CheckPermission = False
    end
    object actReportValueAddedTax: TNAction
      Category = 'Reports'
      Caption = 'Value Added Tax by Client Total'
      OnExecute = actReportValueAddedTaxExecute
      CheckPermission = False
    end
    object actFidessaLimit: TNAction
      Category = 'Middle Office'
      Caption = 'Fidessa Limit'
      OnExecute = actFidessaLimitExecute
      CheckPermission = False
    end
    object actDailyMarketTransaction: TNAction
      Category = 'Middle Office'
      Caption = 'Daily Market Transaction'
      OnExecute = actDailyMarketTransactionExecute
      CheckPermission = False
    end
    object actReportDailyCommisionGrid: TNAction
      Category = 'Reports'
      Caption = 'Daily Commision Report'
      OnExecute = actReportDailyCommisionGridExecute
      CheckPermission = False
    end
    object actReportWashSale: TNAction
      Category = 'Surveilences'
      Caption = 'Wash Sale'
      OnExecute = actReportWashSaleExecute
      CheckPermission = False
    end
    object actReportCreditLimitViolation: TNAction
      Category = 'Reports'
      Caption = 'Credit Limit Violation'
      OnExecute = actReportCreditLimitViolationExecute
      CheckPermission = False
    end
    object actReportValueAddedTaxGrid: TNAction
      Category = 'Reports'
      Caption = 'Value Added Tax Report'
      OnExecute = actReportValueAddedTaxGridExecute
      CheckPermission = False
    end
    object actReportClientCommisionList: TNAction
      Category = 'Reports'
      Caption = 'Client Commision List'
      OnExecute = actReportClientCommisionListExecute
      CheckPermission = False
    end
    object actReportTransactionRecapitulation: TNAction
      Category = 'Reports'
      Caption = 'Transaction Recapitulation'
      OnExecute = actReportTransactionRecapitulationExecute
      CheckPermission = False
    end
    object actReportTradeAccountInterface: TNAction
      Category = 'NActions'
      Caption = 'Trade Account Interface'
      OnExecute = actReportTradeAccountInterfaceExecute
      CheckPermission = False
    end
    object actCashLedgerBalance: TNAction
      Category = 'Cash Management'
      Caption = 'Cash Ledger Balance'
      OnExecute = actCashLedgerBalanceExecute
      CheckPermission = False
    end
    object actStockLedgerBalance: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Ledger Balance'
      OnExecute = actStockLedgerBalanceExecute
      CheckPermission = False
    end
    object actReportDailyPaymentReceive: TNAction
      Category = 'Reports'
      Caption = 'Daily Payment Receive'
      OnExecute = actReportDailyPaymentReceiveExecute
      CheckPermission = False
    end
    object actCashTransaction: TNAction
      Category = 'NActions'
      Caption = 'Cash Transaction'
      OnExecute = actCashTransactionExecute
      CheckPermission = False
    end
    object actCashSettlementVoucher: TNAction
      Category = 'Cash Management'
      Caption = 'Cash Settlement Voucher'
      OnExecute = actCashSettlementVoucherExecute
      CheckPermission = False
    end
    object actREPOSettlement: TNAction
      Category = 'Credit Control'
      Caption = 'REPO - Stock Settlement'
      OnExecute = actREPOSettlementExecute
      CheckPermission = False
    end
    object actRenewalRepoContract: TNAction
      Category = 'Credit Control'
      Caption = 'REPO - Renewal Contract'
      OnExecute = actRenewalRepoContractExecute
      CheckPermission = False
    end
    object actMKBDSupportingReport: TNAction
      Category = 'MKBD'
      Caption = 'MKBD Supporting Report'
      OnExecute = actMKBDSupportingReportExecute
      CheckPermission = False
    end
    object actReportDailyBondsTradeList: TNAction
      Category = 'Reports'
      Caption = 'Daily Bonds Trade List'
      OnExecute = actReportDailyBondsTradeListExecute
      CheckPermission = False
    end
    object actReportStockDepositList: TNAction
      Category = 'Reports'
      Caption = 'Stock Deposit List'
      OnExecute = actReportStockDepositListExecute
      CheckPermission = False
    end
    object actReportStockWithdrawList: TNAction
      Category = 'Reports'
      Caption = 'Stock Withdraw List'
      OnExecute = actReportStockWithdrawListExecute
      CheckPermission = False
    end
    object actReportClientStockActivity: TNAction
      Category = 'Reports'
      Caption = 'Client Stock Activity'
      OnExecute = actReportClientStockActivityExecute
      CheckPermission = False
    end
    object actOpeningAccountHistory: TNAction
      Category = 'Client Management'
      Caption = 'Opening Account History'
      OnExecute = actOpeningAccountHistoryExecute
      CheckPermission = False
    end
    object actStockSettlementVoucher: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Settlement Voucher'
      OnExecute = actStockSettlementVoucherExecute
      CheckPermission = False
    end
    object actCompanyBank: TNAction
      Category = 'Static Data'
      Caption = 'Company Bank'
      OnExecute = actCompanyBankExecute
      CheckPermission = False
    end
    object actDailyCashOutstanding: TNAction
      Category = 'Cash Management'
      Caption = 'Daily Cash Outstanding'
      OnExecute = actDailyCashOutstandingExecute
      CheckPermission = False
    end
    object actDailyBankInstruction: TNAction
      Category = 'Cash Management'
      Caption = 'Daily Bank Instruction'
      OnExecute = actDailyBankInstructionExecute
      CheckPermission = False
    end
    object actCashDepositRDN: TNAction
      Category = 'Cash Management'
      Caption = 'Cash Deposit RDN'
      OnExecute = actCashDepositRDNExecute
      CheckPermission = False
    end
    object actCashBook: TNAction
      Category = 'Static Data'
      Caption = 'Cash Book'
      OnExecute = actCashBookExecute
      CheckPermission = False
    end
    object actDHKReconcile: TNAction
      Category = 'Middle Office'
      Caption = 'DHK Reconcile'
      OnExecute = actDHKReconcileExecute
      CheckPermission = False
    end
    object actVD55MonthlySupport: TNAction
      Category = 'MKBD'
      Caption = 'VD55 Monthly Support'
      OnExecute = actVD55MonthlySupportExecute
      CheckPermission = False
    end
    object actVD55Monthly: TNAction
      Category = 'MKBD'
      Caption = 'Monthly XE13 Report'
      OnExecute = actVD55MonthlyExecute
      CheckPermission = False
    end
    object actReferralType: TNAction
      Category = 'Static Data'
      Caption = 'Referral Group'
      OnExecute = actReferralTypeExecute
      CheckPermission = False
    end
    object actReferral: TNAction
      Category = 'Static Data'
      Caption = 'Referral'
      OnExecute = actReferralExecute
      CheckPermission = False
    end
    object actCommShare: TNAction
      Category = 'Static Data'
      Caption = 'Commission Share'
      OnExecute = actCommShareExecute
      CheckPermission = False
    end
    object actDailyStockSettleVoucher: TNAction
      Category = 'NActions'
      Caption = 'Daily Stock Settlement Voucher'
      OnExecute = actDailyStockSettleVoucherExecute
      CheckPermission = False
    end
    object actMarginAlert: TNAction
      Category = 'NActions'
      Caption = 'Margin Alert'
      OnExecute = actMarginAlertExecute
      CheckPermission = False
    end
    object actVidesaCreditLimit: TNAction
      Category = 'NActions'
      Caption = 'Fidessa - Credit Limit'
      OnExecute = actVidesaCreditLimitExecute
      CheckPermission = False
    end
    object actSInvestMonitor: TNAction
      Category = 'Settlemt Interface'
      Caption = 'S-Invest Monitor'
      CheckPermission = False
    end
    object actFundLedgerJournalEntry: TNAction
      Category = 'Finance'
      Caption = 'Fund Ledger Journal Entry'
      OnExecute = actFundLedgerJournalEntryExecute
      CheckPermission = False
    end
    object actSecuritiesJournalEntry: TNAction
      Category = 'Settlement Custody'
      Caption = 'Securities Journal Entry'
      OnExecute = actSecuritiesJournalEntryExecute
      CheckPermission = False
    end
    object actCouponPayment: TNAction
      Category = 'FiTS'
      Caption = 'Coupon Payment'
      CheckPermission = False
    end
    object actReportDailyVD5Report: TNAction
      Category = 'Reports'
      Caption = 'Daily VD5 Report'
      CheckPermission = False
    end
    object actReportMonthlyVD55Report: TNAction
      Category = 'Reports'
      Caption = 'Monthly XE13 Report'
      OnExecute = actReportMonthlyVD55ReportExecute
      CheckPermission = False
    end
    object actReportDailyVD5Support: TNAction
      Category = 'Reports'
      Caption = 'Daily VD5 Support'
      OnExecute = actReportDailyVD5SupportExecute
      CheckPermission = False
    end
    object actReportMonthlyVD55Support: TNAction
      Category = 'Reports'
      Caption = 'Monthly VD55 Support'
      OnExecute = actReportMonthlyVD55SupportExecute
      CheckPermission = False
    end
    object actReportCashFlowStatement: TNAction
      Category = 'Reports'
      Caption = 'Cash Flow Statement'
      CheckPermission = False
    end
    object actReportDailyCashProjection: TNAction
      Category = 'Reports'
      Caption = 'Daily Cash Projection'
      OnExecute = actReportDailyCashProjectionExecute
      CheckPermission = False
    end
    object actReportMonthlyCommision: TNAction
      Category = 'Reports'
      Caption = 'Monthly Commision'
      CheckPermission = False
    end
    object actReportMonthlyWithholdingTax: TNAction
      Category = 'Reports'
      Caption = 'Monthly Withholding Tax'
      CheckPermission = False
    end
    object actReportEntityList: TNAction
      Category = 'Reports'
      Caption = 'Entity List'
      CheckPermission = False
    end
    object actReportAccountActiveList: TNAction
      Category = 'Reports'
      Caption = 'Account Active List'
      OnExecute = actReportAccountActiveListExecute
      CheckPermission = False
    end
    object actReportAccountSuspendList: TNAction
      Category = 'Reports'
      Caption = 'Account Suspend List'
      OnExecute = actReportAccountSuspendListExecute
      CheckPermission = False
    end
    object actReportAccountDormanList: TNAction
      Category = 'Reports'
      Caption = 'Account Dorman List'
      OnExecute = actReportAccountDormanListExecute
      CheckPermission = False
    end
    object actReportAccountClosedList: TNAction
      Category = 'Reports'
      Caption = 'Account Closed List'
      OnExecute = actReportAccountClosedListExecute
      CheckPermission = False
    end
    object actReportClientTradeSummary: TNAction
      Category = 'Reports'
      Caption = 'Client Trade Summary'
      CheckPermission = False
    end
    object actReportARAPNeting: TNAction
      Category = 'Reports'
      Caption = 'AR / AP Neting (For MKBD)'
      OnExecute = actReportARAPNetingExecute
      CheckPermission = False
    end
    object actReportOutstandingTradeDueForCashSettlement: TNAction
      Category = 'Reports'
      Caption = 'Outstanding Trade Due for Cash Settlement'
      CheckPermission = False
    end
    object actReportCashFlow: TNAction
      Category = 'Reports'
      Caption = 'Cash Flow'
      CheckPermission = False
    end
    object actReportCashProjection: TNAction
      Category = 'Reports'
      Caption = 'Cash Projection'
      CheckPermission = False
    end
    object actReportStockMovementList: TNAction
      Category = 'Reports'
      Caption = 'Stock Movement List'
      CheckPermission = False
    end
    object actReportStockOutstanding: TNAction
      Category = 'Reports'
      Caption = 'Stock Outstanding'
      CheckPermission = False
    end
    object actReportCouponPaymentList: TNAction
      Category = 'Reports'
      Caption = 'Coupon Payment List'
      CheckPermission = False
    end
    object actReportCorpactAnnouncementList: TNAction
      Category = 'Reports'
      Caption = 'Corpact - Announcement List'
      OnExecute = actReportCorpactAnnouncementListExecute
      CheckPermission = False
    end
    object actReportCorpactEntitlementList: TNAction
      Category = 'Reports'
      Caption = 'Corpact - Entitlement List'
      CheckPermission = False
    end
    object actReportCorpactClientConfirmation: TNAction
      Category = 'Reports'
      Caption = 'Corpact - Client Confirmation'
      CheckPermission = False
    end
    object actReportIPOAllocationList: TNAction
      Category = 'Reports'
      Caption = 'IPO - Allocation List'
      CheckPermission = False
    end
    object actReportIPOClientConfirmation: TNAction
      Category = 'Reports'
      Caption = 'IPO - Client Confirmation'
      CheckPermission = False
    end
    object actReportTenderOfferOrderList: TNAction
      Category = 'Reports'
      Caption = 'Tender Offer - Order List'
      CheckPermission = False
    end
    object actReportTenderOfferClientConfirmation: TNAction
      Category = 'Reports'
      Caption = 'Tender Offer - Client Confirmation'
      CheckPermission = False
    end
    object actReportClientCashOutstanding: TNAction
      Category = 'Reports'
      Caption = 'Client Cash Outstanding'
      CheckPermission = False
    end
    object actReportTradeDetailOutstanding: TNAction
      Category = 'Reports'
      Caption = 'Trade Detail Outstanding'
      CheckPermission = False
    end
    object actReportDetailShareCollateral: TNAction
      Category = 'Reports'
      Caption = 'Detail Share Collateral'
      CheckPermission = False
    end
    object actReportLoanMarginRankClient: TNAction
      Category = 'Reports'
      Caption = 'Loan Margin Rank Client'
      CheckPermission = False
    end
    object actReportOutstandingCashRankClient: TNAction
      Category = 'Reports'
      Caption = 'Outstanding Cash Rank Client'
      CheckPermission = False
    end
    object actReportBlacklistPeopleOrganizationReport: TNAction
      Category = 'Reports'
      Caption = 'Blacklist People && Organization Report'
      OnExecute = actReportBlacklistPeopleOrganizationReportExecute
      CheckPermission = False
    end
    object actReportTradeSummaryActivity: TNAction
      Category = 'Reports'
      Caption = 'Trade Summary Activity'
      CheckPermission = False
    end
    object actReportTop15SingleCounterExposure: TNAction
      Category = 'Reports'
      Caption = 'Top 15 Single Counter Exposure'
      CheckPermission = False
    end
    object actReportMKBDCompare2Date: TNAction
      Category = 'NActions'
      Caption = 'MKBD Compare 2 Date'
      OnExecute = actReportMKBDCompare2DateExecute
      CheckPermission = False
    end
    object actVD57Qty: TNAction
      Category = 'MKBD'
      Caption = 'Daily VD57 Quantity'
      OnExecute = actVD57QtyExecute
      CheckPermission = False
    end
    object actOTCSettlementList: TNAction
      Category = 'NActions'
      Caption = 'OTC Settlement List'
      OnExecute = actOTCSettlementListExecute
      CheckPermission = False
    end
    object actStaticDatalog: TNAction
      Category = 'NActions'
      Caption = 'Static Data Log'
      OnExecute = actStaticDatalogExecute
      CheckPermission = False
    end
    object actStaticEmployee: TNAction
      Category = 'Static Data'
      Caption = 'Employee'
      OnExecute = actStaticEmployeeExecute
      CheckPermission = False
    end
    object actStaticProject: TNAction
      Category = 'Static Data'
      Caption = 'Project'
      OnExecute = actStaticProjectExecute
      CheckPermission = False
    end
    object actGlobalParam: TNAction
      Category = 'Administrator'
      Caption = 'Global Parameter'
      OnExecute = actGlobalParamExecute
      CheckPermission = False
    end
    object actAccSInvestConf: TNAction
      Category = 'Settlemt Interface'
      Caption = 'S-Invest - Account Config'
      OnExecute = actAccSInvestConfExecute
      CheckPermission = False
    end
    object actSInvProcessConfig: TNAction
      Category = 'Settlemt Interface'
      Caption = 'S-Invest - Process Config'
      OnExecute = actSInvProcessConfigExecute
      CheckPermission = False
    end
    object actSInvGenerateFile: TNAction
      Category = 'S-Invest'
      Caption = 'S-Invest - Generate File Upload'
      OnExecute = actSInvGenerateFileExecute
      CheckPermission = False
    end
    object actSInvTradeAlloc: TNAction
      Category = 'S-Invest'
      Caption = 'S-Invest - Trade Allocation'
      OnExecute = actSInvTradeAllocExecute
      CheckPermission = False
    end
    object actPortfolioRevaluationList: TNAction
      Category = 'Finance'
      Caption = 'Portfolio Revaluation'
      OnExecute = actPortfolioRevaluationListExecute
      CheckPermission = False
    end
    object actGenerateDailyTransReport: TNAction
      Category = 'NActions'
      Caption = 'Generate Daily Transaction Report'
      OnExecute = actGenerateDailyTransReportExecute
      CheckPermission = False
    end
    object actNextOfYearProcess: TNAction
      Category = 'Accounting'
      Caption = 'Next Of Year Process'
      OnExecute = actNextOfYearProcessExecute
      CheckPermission = False
    end
    object actReportMonthlyTransaction: TNAction
      Category = 'Reports'
      Caption = 'Monthly Transaction Report (X.E.1-3)'
      OnExecute = actReportMonthlyTransactionExecute
      CheckPermission = False
    end
    object actReportInterestTractList: TNAction
      Category = 'Reports'
      Caption = 'Interest Track'
      OnExecute = actReportInterestTractListExecute
      CheckPermission = False
    end
    object actReportMonthlyTax: TNAction
      Category = 'Reports'
      Caption = 'Monthly Tax Report'
      OnExecute = actReportMonthlyTaxExecute
      CheckPermission = False
    end
    object actReportMonthlyTaxSummary: TNAction
      Category = 'Reports'
      Caption = 'Monthly Trade Summary'
      OnExecute = actReportMonthlyTaxSummaryExecute
      CheckPermission = False
    end
    object actReportTotalTransaction: TNAction
      Category = 'Reports'
      Caption = 'Total Transaction RDN && DMA'
      OnExecute = actReportTotalTransactionExecute
      CheckPermission = False
    end
    object actReportOpeningAccountByDate: TNAction
      Category = 'Reports'
      Caption = 'Opening Account By Date'
      OnExecute = actReportOpeningAccountByDateExecute
      CheckPermission = False
    end
    object actReportStockPosByAccount: TNAction
      Category = 'Reports'
      Caption = 'Stock Position By Account'
      OnExecute = actReportStockPosByAccountExecute
      CheckPermission = False
    end
    object actReportAccountPosByStock: TNAction
      Category = 'Reports'
      Caption = 'Account Position By Stock'
      OnExecute = actReportAccountPosByStockExecute
      CheckPermission = False
    end
    object actReportClientActivityOLNonOL: TNAction
      Category = 'Reports'
      Caption = 'Client Activity Online / Non Online'
      OnExecute = actReportClientActivityOLNonOLExecute
      CheckPermission = False
    end
    object actReportClientActivityInsReg: TNAction
      Category = 'Reports'
      Caption = 'Client Activity Institution / Reguler'
      OnExecute = actReportClientActivityInsRegExecute
      CheckPermission = False
    end
    object actReportCustomersAging: TNAction
      Category = 'Reports'
      Caption = 'Customers Aging'
      OnExecute = actReportCustomersAgingExecute
      CheckPermission = False
    end
    object actRDNBankReconList: TNAction
      Category = 'Finance'
      Caption = 'RDN Bank Reconcile'
      OnExecute = actRDNBankReconListExecute
      CheckPermission = False
    end
    object actReportTradeTransaction: TNAction
      Category = 'NActions'
      Caption = 'Trade Transaction'
      OnExecute = actReportTradeTransactionExecute
      CheckPermission = False
    end
    object actVD510Config: TNAction
      Category = 'MKBD'
      Caption = 'VD 5.10 Config'
      OnExecute = actVD510ConfigExecute
      CheckPermission = False
    end
    object actReportCustomersData: TNAction
      Category = 'Reports'
      Caption = 'Customers Data'
      OnExecute = actReportCustomersDataExecute
      CheckPermission = False
    end
    object actReportFundStatement: TNAction
      Category = 'Reports'
      Caption = 'Account Fund Statement'
      OnExecute = actReportFundStatementExecute
      CheckPermission = False
    end
    object actAccountDorman: TNAction
      Category = 'Client Management'
      Caption = 'Account Dorman'
      OnExecute = actAccountDormanExecute
      CheckPermission = False
    end
    object actOccupation: TNAction
      Category = 'Static Data'
      Caption = 'Occupation'
      OnExecute = actOccupationExecute
      CheckPermission = False
    end
    object actBlastConfig: TNAction
      Category = 'Administrator'
      Caption = 'Email Blast Config'
      OnExecute = actBlastConfigExecute
      CheckPermission = False
    end
    object actEBlastCustList: TNAction
      Category = 'Client Management'
      Caption = 'Email Blast Customers'
      OnExecute = actEBlastCustListExecute
      CheckPermission = False
    end
    object actCorpactExerciseLIst: TNAction
      Category = 'Corporate Action'
      Caption = 'Corporate Action Exercise'
      OnExecute = actCorpactExerciseLIstExecute
      CheckPermission = False
    end
    object actCorpactEntitlementList: TNAction
      Category = 'Corporate Action'
      Caption = 'Corporate Action Entitlement'
      OnExecute = actCorpactEntitlementListExecute
      CheckPermission = False
    end
    object actCOAConfig: TNAction
      Category = 'NActions'
      Caption = 'COA Configuration'
      OnExecute = actCOAConfigExecute
      CheckPermission = False
    end
    object actStockMoveProgram: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Movement Program'
      OnExecute = actStockMoveProgramExecute
      CheckPermission = False
    end
    object actCompareCashBalancePosition: TNAction
      Category = 'NActions'
      Caption = 'Compare Cash Balance Position'
      OnExecute = actCompareCashBalancePositionExecute
      CheckPermission = False
    end
    object actReportTrialBalanceStock: TNAction
      Category = 'Reports'
      Caption = 'Trial Balance Stock'
      OnExecute = actReportTrialBalanceStockExecute
      CheckPermission = False
    end
    object actGLClient: TNAction
      Category = 'Accounting'
      Caption = 'General Ledger Client'
      OnExecute = actGLClientExecute
      CheckPermission = False
    end
    object actReportTrialBalanceClient: TNAction
      Category = 'Reports'
      Caption = 'Trial Balance Client'
      OnExecute = actReportTrialBalanceClientExecute
      CheckPermission = False
    end
    object actReportARAPNetHistory: TNAction
      Category = 'Reports'
      Caption = 'AR / AP Neting (For MKDB) History'
      OnExecute = actReportARAPNetHistoryExecute
      CheckPermission = False
    end
    object actReportStockShortSell: TNAction
      Category = 'Reports'
      Caption = 'Stock Short Sell'
      OnExecute = actReportStockShortSellExecute
      CheckPermission = False
    end
    object actBOFISRecon: TNAction
      Category = 'Settlement Custody'
      Caption = 'Generate Reconcile ACT && Bal'
      OnExecute = actBOFISReconExecute
      CheckPermission = False
    end
    object actReceiveEmail: TNAction
      Category = 'NActions'
      Caption = 'Receive Email'
      OnExecute = actReceiveEmailExecute
      CheckPermission = False
    end
    object actReportTradeConfirmation: TNAction
      Category = 'Reports'
      Caption = 'Trade Confirmation'
      OnExecute = actReportTradeConfirmationExecute
      CheckPermission = False
    end
    object actEIPO: TNAction
      Category = 'eIPO'
      Caption = 'e-IPO'
      OnExecute = actEIPOExecute
      CheckPermission = False
    end
    object actReportTradeTransactionNew: TNAction
      Category = 'Reports'
      Caption = 'Trade Transaction'
      OnExecute = actReportTradeTransactionNewExecute
      CheckPermission = False
      ActionLog = ActionLog
    end
    object actEIPOAllotment: TNAction
      Category = 'eIPO'
      Caption = 'e-IPO Allotment'
      OnExecute = actEIPOAllotmentExecute
      CheckPermission = False
    end
    object actInputJurnalBankList: TAction
      Category = 'Accounting'
      Caption = 'Input Jurnal Bank'
      OnExecute = actInputJurnalBankListExecute
    end
    object actInputBank: TAction
      Category = 'Accounting'
      Caption = 'Input Bank'
      ImageIndex = 35
      OnExecute = actInputBankExecute
    end
    object actJournalBankList: TNAction
      Category = 'NActions'
      Caption = 'Journal Bank Manual'
      OnExecute = actJournalBankListExecute
      CheckPermission = False
    end
    object actSInvestRecon: TNAction
      Category = 'Middle Office'
      Caption = 'S-Invest Recon'
      OnExecute = actSInvestReconExecute
      CheckPermission = False
    end
    object actSInvestReconTC: TNAction
      Category = 'Middle Office'
      Caption = 'S-Invest Recon TC'
      OnExecute = actSInvestReconTCExecute
      CheckPermission = False
    end
    object actSInvestMonitoring: TNAction
      Category = 'S-Invest'
      Caption = 'SInvest Monitoring'
      OnExecute = actSInvestMonitoringExecute
      CheckPermission = False
    end
    object actSlikInterface: TNAction
      Category = 'OJK'
      Caption = 'SLIK Inteface'
      OnExecute = actSlikInterfaceExecute
      CheckPermission = True
    end
    object actEODProcess: TNAction
      Category = 'NActions'
      Caption = 'End Of Day Process'
      OnExecute = actEODProcessExecute
      CheckPermission = False
    end
    object actSInvestAutoSplit: TNAction
      Category = 'S-Invest'
      Caption = 'S-Invest AutoSplit'
      OnExecute = actSInvestAutoSplitExecute
      CheckPermission = False
    end
    object actVD5Configs: TNAction
      Category = 'NActions'
      Caption = 'VD5 Configs'
      OnExecute = actVD5ConfigsExecute
      CheckPermission = False
    end
    object actDailyInterestOuts: TNAction
      Category = 'Finance'
      Caption = 'Daily Interest Outstanding'
      OnExecute = actDailyInterestOutsExecute
      CheckPermission = False
    end
    object actInvoiceInterest: TNAction
      Category = 'Finance'
      Caption = 'Invoice Interest'
      OnExecute = actInvoiceInterestExecute
      CheckPermission = False
    end
    object actWaveInterestPenalty: TNAction
      Category = 'Finance'
      Caption = 'Wave Interest & Penalty'
      OnExecute = actWaveInterestPenaltyExecute
      CheckPermission = False
    end
    object actReportFakeDemand: TNAction
      Category = 'Surveilences'
      Caption = 'Fake Demand Suply'
      OnExecute = actReportFakeDemandExecute
      CheckPermission = False
    end
    object actReportFrontRunning: TNAction
      Category = 'Surveilences'
      Caption = 'Front Running'
      OnExecute = actReportFrontRunningExecute
      CheckPermission = False
    end
    object actReportMarkingTheClose: TNAction
      Category = 'Surveilences'
      Caption = 'Marking The Close'
      OnExecute = actReportMarkingTheCloseExecute
      CheckPermission = False
    end
    object actReportUnusualMarketVol: TNAction
      Category = 'Surveilences'
      Caption = 'Unusual Market Volume'
      OnExecute = actReportUnusualMarketVolExecute
      CheckPermission = False
    end
    object actSurvailanceSetting: TNAction
      Category = 'Surveilences'
      Caption = 'Survailance Setting'
      OnExecute = actSurvailanceSettingExecute
      CheckPermission = False
    end
    object actDailyInterestActivity: TNAction
      Category = 'NActions'
      Caption = 'Daily Interest Activity'
      OnExecute = actDailyInterestActivityExecute
      CheckPermission = False
    end
    object actDailyInstructionList: TNAction
      Category = 'NActions'
      Caption = 'Daily Instruction'
      OnExecute = actDailyInstructionListExecute
      CheckPermission = False
    end
    object actAlternateCashSettlement: TNAction
      Category = 'NActions'
      Caption = 'Alternate Cash Settlement'
      OnExecute = actAlternateCashSettlementExecute
      CheckPermission = False
    end
    object actTodoList: TNAction
      Category = 'NActions'
      Caption = 'Todo List'
      OnExecute = actTodoListExecute
      CheckPermission = False
    end
    object actAMLConditionParameter: TNAction
      Category = 'AML'
      Caption = 'Condition Parameter'
      OnExecute = actAMLConditionParameterExecute
      CheckPermission = True
    end
    object actBankCompany: TNAction
      Category = 'Master'
      Caption = 'Bank Company'
      OnExecute = actBankCompanyExecute
      CheckPermission = False
    end
    object actVerdhanaOMSInstitution: TNAction
      Category = 'Middle Office'
      Caption = 'Data OMS Institution Verdhana'
      OnExecute = actVerdhanaOMSInstitutionExecute
      CheckPermission = True
    end
    object actAMLGenerateReportMonitoring: TNAction
      Category = 'AML'
      Caption = 'Report Generator Monitoring'
      OnExecute = actAMLGenerateReportMonitoringExecute
      CheckPermission = True
    end
    object actAMLGenerateReportMonitoringHis: TNAction
      Category = 'AML'
      Caption = 'Report Generate History'
      OnExecute = actAMLGenerateReportMonitoringHisExecute
      CheckPermission = True
    end
    object actAmlSummary: TNAction
      Category = 'AML'
      Caption = 'Anti Money Laundring Summary'
      OnExecute = actAmlSummaryExecute
      CheckPermission = False
    end
    object actAMLList: TNAction
      Category = 'AML'
      Caption = 'Anti Money Laundring List'
      OnExecute = actAMLListExecute
      CheckPermission = False
    end
    object actEmateraiMonitortingList: TNAction
      Category = 'eMaterai'
      Caption = 'E-Materai Monitoring'
      OnExecute = actEmateraiMonitortingListExecute
      CheckPermission = False
    end
    object actEMateraiConfig: TNAction
      Category = 'eMaterai'
      Caption = 'E-Materai Config'
      OnExecute = actEMateraiConfigExecute
      CheckPermission = False
    end
    object actCompanyCustody: TNAction
      Category = 'NActions'
      Caption = 'Company Custody'
      OnExecute = actCompanyCustodyExecute
      CheckPermission = False
    end
    object actStockWithdrawApprove: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Withdraw Approve'
      CheckPermission = False
    end
    object actStockWithdrawPosting: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Withdraw Posting'
      CheckPermission = False
    end
    object actStockWithdrawCancel: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Withdraw Cancel'
      CheckPermission = False
    end
    object actStockWithdrawReverse: TNAction
      Category = 'Stock Management'
      Caption = 'Stock Withdraw Reverse'
      CheckPermission = False
    end
    object actDepositoBank: TNAction
      Category = 'NActions'
      Caption = 'Deposito Bank'
      OnExecute = actDepositoBankExecute
      CheckPermission = False
    end
    object actACTReconcile: TNAction
      Category = 'NActions'
      Caption = 'ACT Reconcile'
      OnExecute = actACTReconcileExecute
      CheckPermission = False
    end
    object actDeposito: TNAction
      Category = 'MKBD'
      Caption = 'Deposito'
      OnExecute = actDepositoExecute
      CheckPermission = False
    end
    object actIDXMonthlyTransReport: TNAction
      Category = 'Reports'
      Caption = 'IDX Monthly Transaction Report'
      OnExecute = actIDXMonthlyTransReportExecute
      CheckPermission = False
    end
    object actReportMonthlyStamp: TNAction
      Category = 'Reports'
      Caption = 'Monthly Stamp'
      OnExecute = actReportMonthlyStampExecute
      CheckPermission = False
    end
    object actReksadanaDeposito: TNAction
      Category = 'Middle Office'
      Caption = 'Reksadana Deposito'
      OnExecute = actReksadanaDepositoExecute
      CheckPermission = False
    end
  end
  object menuBar: TNMenuBar
    AppID = 'Nayaga'
    ActionList = aclMenu
    MainMenuNavBar = frmMain.nbMainMenu
    DrawOnValidAction = False
    Permissions = <
      item
        Permission = 'Financial Report Data'
        Description = 'Financial Report Data Permission'
        PermissionMenus = <>
      end
      item
        Permission = 'Corp Action Data'
        Description = 'Corp Action Data Permission'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'IPO Information'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Opening Account'
          end>
      end
      item
        Permission = 'Bank Payment Data'
        Description = 'Bank Payment Data Permission'
        PermissionMenus = <>
      end
      item
        Permission = 'RePurchase Order Management Data'
        Description = 'RePurchase Order Data Permission'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Create New Contract REPO'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Margin Monitoring'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'REPO Monitoring'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Change Collateral'
          end>
      end
      item
        Permission = 'Fixed Income'
        Description = 'Fixed Income'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Dealticket'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Close Price'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Coupon Payment'
          end>
      end
      item
        Permission = 'Reports'
        Description = 'View Reports'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Sales Activity'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Client Activity'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Statement Of Account'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Withdraw List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Position By Sales Stock'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Position By Sales Account'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Voucher'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'AR/AP Summary'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Voucher'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Test'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Status List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Bond Trade'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'AR/AP Report'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Fund Ledger Balance'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Securities Ledger Balance'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Fund Ledger Journal'
          end>
      end
      item
        Permission = 'Corporate Action'
        Description = 'Corporate Action'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Corporate Action'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Initial Public Offering (IPO)'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Tender Offer'
          end>
      end
      item
        Permission = '[Entity Information].View Approval Data'
        Description = 'View Approval Data Entity Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Entity Information'
          end>
      end
      item
        Permission = '[Entity Information].View'
        Description = 'View Entity Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Entity Information'
          end>
      end
      item
        Permission = '[Entity Information].New'
        Description = 'New Entity Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Entity Information'
          end>
      end
      item
        Permission = '[Entity Information].Edit'
        Description = 'Edit Entity Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Entity Information'
          end>
      end
      item
        Permission = '[Entity Information].Delete'
        Description = 'Delete Entity Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Entity Information'
          end>
      end
      item
        Permission = '[Entity Information].Refresh'
        Description = 'Refresh Entity Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Entity Information'
          end>
      end
      item
        Permission = '[Entity Information].Cancel'
        Description = 'Cancel Entity Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Entity Information'
          end>
      end
      item
        Permission = '[Entity Information].Copy From Selected Data'
        Description = 'Copy From Selected Data Entity Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Entity Information'
          end>
      end
      item
        Permission = '[Entity Information].Approve'
        Description = 'Approve Entity Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Entity Information'
          end>
      end
      item
        Permission = '[Entity Information].Reject'
        Description = 'Reject Entity Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Entity Information'
          end>
      end
      item
        Permission = '[Account Information].View'
        Description = 'View Account Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Information'
          end>
      end
      item
        Permission = '[Account Information].New'
        Description = 'New Account Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Information'
          end>
      end
      item
        Permission = '[Account Information].Refresh'
        Description = 'Refresh Account Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Information'
          end>
      end
      item
        Permission = '[Account Information].Edit'
        Description = 'Edit Account Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Information'
          end>
      end
      item
        Permission = '[Account Information].Delete'
        Description = 'Delete Account Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Information'
          end>
      end
      item
        Permission = '[Account Information].Cancel'
        Description = 'Cancel Account Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Information'
          end>
      end
      item
        Permission = '[Account Information].Copy From Selected Data'
        Description = 'Copy From Selected Data Account Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Information'
          end>
      end
      item
        Permission = '[Account Information].Reject'
        Description = 'Reject Account Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Information'
          end>
      end
      item
        Permission = '[Account Credit Limit].View Approval Data'
        Description = 'View Approval Data Account Credit Limit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Credit Limit'
          end>
      end
      item
        Permission = '[Account Credit Limit].View'
        Description = 'View Account Credit Limit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Credit Limit'
          end>
      end
      item
        Permission = '[Account Credit Limit].New'
        Description = 'New Account Credit Limit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Credit Limit'
          end>
      end
      item
        Permission = '[Account Credit Limit].Edit'
        Description = 'Edit Account Credit Limit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Credit Limit'
          end>
      end
      item
        Permission = '[Account Credit Limit].Delete'
        Description = 'Delete Account Credit Limit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Credit Limit'
          end>
      end
      item
        Permission = '[Account Credit Limit].Refresh'
        Description = 'Refresh Account Credit Limit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Credit Limit'
          end>
      end
      item
        Permission = '[Account Credit Limit].Cancel'
        Description = 'Cancel Account Credit Limit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Credit Limit'
          end>
      end
      item
        Permission = '[Account Credit Limit].Copy From Selected Data'
        Description = 'Copy From Selected Data Account Credit Limit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Credit Limit'
          end>
      end
      item
        Permission = '[Account Credit Limit].Approve'
        Description = 'Approve Account Credit Limit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Credit Limit'
          end>
      end
      item
        Permission = '[Account Credit Limit].Reject'
        Description = 'Reject Account Credit Limit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Credit Limit'
          end>
      end
      item
        Permission = '[Account Credit Limit].Set Account Credit Limit'
        Description = 'Set Account Credit Limit Account Credit Limit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Credit Limit'
          end>
      end
      item
        Permission = '[KSEI Account Opening Monitoring ].Update KSEI Sub Rek 001'
        Description = 'Update KSEI Sub Rek 001 KSEI Account Opening Monitoring '
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'KSEI Request'
          end>
      end
      item
        Permission = '[KSEI Account Opening Monitoring ].Update KSEI Sub Rek 004'
        Description = 'Update KSEI Sub Rek 004 KSEI Account Opening Monitoring '
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'KSEI Request'
          end>
      end
      item
        Permission = '[KSEI Account Opening Monitoring ].Update KSEI SID'
        Description = 'Update KSEI SID KSEI Account Opening Monitoring '
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'KSEI Request'
          end>
      end
      item
        Permission = '[KSEI Account Opening Monitoring ].Generate To Excel File'
        Description = 'Generate To Excel File KSEI Account Opening Monitoring '
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'KSEI Request'
          end>
      end
      item
        Permission = '[KSEI Account Opening Monitoring ].View Generate Excel File'
        Description = 'View Generate Excel File KSEI Account Opening Monitoring '
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'KSEI Request'
          end>
      end
      item
        Permission = '[KSEI Account Opening Monitoring ].Update From KSEI Data Upload'
        Description = 'Update From KSEI Data Upload KSEI Account Opening Monitoring '
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'KSEI Request'
          end>
      end
      item
        Permission = '[KSEI Account Opening Monitoring ].Complete'
        Description = 'Complete KSEI Account Opening Monitoring '
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'KSEI Request'
          end>
      end
      item
        Permission = '[RDN Request].Update RDN Account'
        Description = 'Update RDN Account RDN Request'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'RDN Request'
          end>
      end
      item
        Permission = '[RDN Request].Generate Report To PDF File'
        Description = 'Generate Report To PDF File RDN Request'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'RDN Request'
          end>
      end
      item
        Permission = '[RDN Request].View Report'
        Description = 'View Report RDN Request'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'RDN Request'
          end>
      end
      item
        Permission = '[RDN Request].Update From KSEI Data Upload'
        Description = 'Update From KSEI Data Upload RDN Request'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'RDN Request'
          end>
      end
      item
        Permission = '[RDN Request].Complete'
        Description = 'Complete RDN Request'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'RDN Request'
          end>
      end
      item
        Permission = '[KSEI RDN Upload].Reload Data'
        Description = 'Reload Data KSEI RDN Upload'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Upload KSEI RDN Progress'
          end>
      end
      item
        Permission = '[KSEI RDN Upload].Upload Data'
        Description = 'Upload Data KSEI RDN Upload'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Upload KSEI RDN Progress'
          end>
      end
      item
        Permission = '[Events].View Approval Data'
        Description = 'View Approval Data Events'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Event Information'
          end>
      end
      item
        Permission = '[Events].View'
        Description = 'View Events'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Event Information'
          end>
      end
      item
        Permission = '[Events].New'
        Description = 'New Events'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Event Information'
          end>
      end
      item
        Permission = '[Events].Edit'
        Description = 'Edit Events'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Event Information'
          end>
      end
      item
        Permission = '[Events].Delete'
        Description = 'Delete Events'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Event Information'
          end>
      end
      item
        Permission = '[Events].Refresh'
        Description = 'Refresh Events'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Event Information'
          end>
      end
      item
        Permission = '[Events].Cancel'
        Description = 'Cancel Events'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Event Information'
          end>
      end
      item
        Permission = '[Events].Copy From Selected Data'
        Description = 'Copy From Selected Data Events'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Event Information'
          end>
      end
      item
        Permission = '[Events].Approve'
        Description = 'Approve Events'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Event Information'
          end>
      end
      item
        Permission = '[Events].Reject'
        Description = 'Reject Events'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Event Information'
          end>
      end
      item
        Permission = '[Deal Ticket].View Approval Data'
        Description = 'View Approval Data Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].New'
        Description = 'New Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Edit'
        Description = 'Edit Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Delete'
        Description = 'Delete Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Refresh'
        Description = 'Refresh Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Cancel'
        Description = 'Cancel Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Copy From Selected Data'
        Description = 'Copy From Selected Data Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Approve'
        Description = 'Approve Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Reject'
        Description = 'Reject Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Split'
        Description = 'Split Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Close Deal Ticket'
        Description = 'Close Deal Ticket Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Contract].View Approval Data'
        Description = 'View Approval Data Contract'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end>
      end
      item
        Permission = '[Contract].View'
        Description = 'View Contract'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end>
      end
      item
        Permission = '[Contract].New'
        Description = 'New Contract'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end>
      end
      item
        Permission = '[Contract].Edit'
        Description = 'Edit Contract'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end>
      end
      item
        Permission = '[Contract].Delete'
        Description = 'Delete Contract'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end>
      end
      item
        Permission = '[Contract].Refresh'
        Description = 'Refresh Contract'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end>
      end
      item
        Permission = '[Contract].Cancel'
        Description = 'Cancel Contract'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end>
      end
      item
        Permission = '[Contract].Copy From Selected Data'
        Description = 'Copy From Selected Data Contract'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end>
      end
      item
        Permission = '[Contract].Approve'
        Description = 'Approve Contract'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end>
      end
      item
        Permission = '[Contract].Reject'
        Description = 'Reject Contract'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end>
      end
      item
        Permission = '[Contract].Generate Contract File'
        Description = 'Generate Contract File Contract'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end>
      end
      item
        Permission = '[Contract].View Contract File'
        Description = 'View Contract File Contract'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end>
      end
      item
        Permission = '[Contract].Close Contract'
        Description = 'Close Contract Contract'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end>
      end
      item
        Permission = '[Contract].Cancel Contract'
        Description = 'Cancel Contract Contract'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end>
      end
      item
        Permission = '[Contract].Reverse Contract'
        Description = 'Reverse Contract Contract'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract'
          end>
      end
      item
        Permission = '[Cash Deposit].View Approval Data'
        Description = 'View Approval Data Cash Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit'
          end>
      end
      item
        Permission = '[Cash Deposit].Edit'
        Description = 'Edit Cash Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit'
          end>
      end
      item
        Permission = '[Cash Deposit].Delete'
        Description = 'Delete Cash Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit'
          end>
      end
      item
        Permission = '[Cash Deposit].Refresh'
        Description = 'Refresh Cash Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit'
          end>
      end
      item
        Permission = '[Cash Deposit].Cancel'
        Description = 'Cancel Cash Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit'
          end>
      end
      item
        Permission = '[Cash Deposit].Copy From Selected Data'
        Description = 'Copy From Selected Data Cash Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit'
          end>
      end
      item
        Permission = '[Cash Deposit].Approve'
        Description = 'Approve Cash Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit'
          end>
      end
      item
        Permission = '[Cash Deposit].Reject'
        Description = 'Reject Cash Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit'
          end>
      end
      item
        Permission = '[Cash Deposit].Posting'
        Description = 'Posting Cash Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit'
          end>
      end
      item
        Permission = '[Cash Deposit].Posting All'
        Description = 'Posting All Cash Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit'
          end>
      end
      item
        Permission = '[Cash Withdraw].Refresh'
        Description = 'Refresh Cash Withdraw'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Withdraw'
          end>
      end
      item
        Permission = '[Cash Withdraw].Copy From Selected Data'
        Description = 'Copy From Selected Data Cash Withdraw'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Withdraw'
          end>
      end
      item
        Permission = '[Cash Withdraw].Posting All'
        Description = 'Posting All Cash Withdraw'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Withdraw'
          end>
      end
      item
        Permission = '[Cash Mutation].Edit'
        Description = 'Edit Cash Mutation'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Mutation'
          end>
      end
      item
        Permission = '[Cash Mutation].Delete'
        Description = 'Delete Cash Mutation'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Mutation'
          end>
      end
      item
        Permission = '[Cash Mutation].Refresh'
        Description = 'Refresh Cash Mutation'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Mutation'
          end>
      end
      item
        Permission = '[Cash Mutation].Approve'
        Description = 'Approve Cash Mutation'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Mutation'
          end>
      end
      item
        Permission = '[Cash Mutation].Reject'
        Description = 'Reject Cash Mutation'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Mutation'
          end>
      end
      item
        Permission = '[Cash Mutation].Posting Cash Mutation'
        Description = 'Posting Cash Mutation Cash Mutation'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Mutation'
          end>
      end
      item
        Permission = '[Cash Mutation].Posting All Cash Mutation'
        Description = 'Posting All Cash Mutation Cash Mutation'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Mutation'
          end>
      end
      item
        Permission = '[Stock Deposit].View Approval Data'
        Description = 'View Approval Data Stock Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Deposit'
          end>
      end
      item
        Permission = '[Stock Deposit].View'
        Description = 'View Stock Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Deposit'
          end>
      end
      item
        Permission = '[Stock Deposit].New'
        Description = 'New Stock Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Deposit'
          end>
      end
      item
        Permission = '[Stock Deposit].Edit'
        Description = 'Edit Stock Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Deposit'
          end>
      end
      item
        Permission = '[Stock Deposit].Delete'
        Description = 'Delete Stock Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Deposit'
          end>
      end
      item
        Permission = '[Stock Deposit].Refresh'
        Description = 'Refresh Stock Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Deposit'
          end>
      end
      item
        Permission = '[Stock Deposit].Cancel'
        Description = 'Cancel Stock Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Deposit'
          end>
      end
      item
        Permission = '[Stock Deposit].Copy From Selected Data'
        Description = 'Copy From Selected Data Stock Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Deposit'
          end>
      end
      item
        Permission = '[Stock Deposit].Approve'
        Description = 'Approve Stock Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Deposit'
          end>
      end
      item
        Permission = '[Stock Deposit].Reject'
        Description = 'Reject Stock Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Deposit'
          end>
      end
      item
        Permission = '[Stock Deposit].Posting'
        Description = 'Posting Stock Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Deposit'
          end>
      end
      item
        Permission = '[Stock Deposit].Posting All'
        Description = 'Posting All Stock Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Deposit'
          end>
      end
      item
        Permission = '[Stock Withdraw].View Approval Data'
        Description = 'View Approval Data Stock Withdraw'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = '[Stock Withdraw].View'
        Description = 'View Stock Withdraw'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = '[Stock Withdraw].New'
        Description = 'New Stock Withdraw'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = '[Stock Withdraw].Edit'
        Description = 'Edit Stock Withdraw'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = '[Stock Withdraw].Delete'
        Description = 'Delete Stock Withdraw'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = '[Stock Withdraw].Refresh'
        Description = 'Refresh Stock Withdraw'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = '[Stock Withdraw].Cancel'
        Description = 'Cancel Stock Withdraw'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = '[Stock Withdraw].Copy From Selected Data'
        Description = 'Copy From Selected Data Stock Withdraw'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = '[Stock Withdraw].Approve'
        Description = 'Approve Stock Withdraw'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = '[Stock Withdraw].Reject'
        Description = 'Reject Stock Withdraw'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = '[Stock Withdraw].Posting'
        Description = 'Posting Stock Withdraw'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = '[Stock Withdraw].Posting All'
        Description = 'Posting All Stock Withdraw'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = 'Stock Settlement'
        Description = 'Stock Settlement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Settlement'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Settlement Voucher'
          end>
      end
      item
        Permission = '[Journal Type].New'
        Description = 'New Journal Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Type'
          end>
      end
      item
        Permission = '[Journal Type].Edit'
        Description = 'Edit Journal Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Type'
          end>
      end
      item
        Permission = '[Journal Type].Refresh'
        Description = 'Refresh Journal Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Type'
          end>
      end
      item
        Permission = '[Journal Type].Cancel'
        Description = 'Cancel Journal Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Type'
          end>
      end
      item
        Permission = '[Journal Type].Copy From Selected Data'
        Description = 'Copy From Selected Data Journal Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Type'
          end>
      end
      item
        Permission = '[Journal Type].Approve'
        Description = 'Approve Journal Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Type'
          end>
      end
      item
        Permission = '[Journal Type].Reject'
        Description = 'Reject Journal Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Type'
          end>
      end
      item
        Permission = '[Period Configuration].View Approval Data'
        Description = 'View Approval Data Period Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Period Configuration'
          end>
      end
      item
        Permission = '[Period Configuration].View'
        Description = 'View Period Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Period Configuration'
          end>
      end
      item
        Permission = '[Period Configuration].New'
        Description = 'New Period Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Period Configuration'
          end>
      end
      item
        Permission = '[Period Configuration].Edit'
        Description = 'Edit Period Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Period Configuration'
          end>
      end
      item
        Permission = '[Period Configuration].Delete'
        Description = 'Delete Period Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Period Configuration'
          end>
      end
      item
        Permission = '[Period Configuration].Refresh'
        Description = 'Refresh Period Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Period Configuration'
          end>
      end
      item
        Permission = '[Period Configuration].Cancel'
        Description = 'Cancel Period Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Period Configuration'
          end>
      end
      item
        Permission = '[Period Configuration].Copy From Selected Data'
        Description = 'Copy From Selected Data Period Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Period Configuration'
          end>
      end
      item
        Permission = '[Period Configuration].Approve'
        Description = 'Approve Period Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Period Configuration'
          end>
      end
      item
        Permission = '[Period Configuration].Reject'
        Description = 'Reject Period Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Period Configuration'
          end>
      end
      item
        Permission = '[Chart Of Account].View Approval Data'
        Description = 'View Approval Data Chart Of Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Chart of Account'
          end>
      end
      item
        Permission = '[Chart Of Account].View'
        Description = 'View Chart Of Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Chart of Account'
          end>
      end
      item
        Permission = '[Chart Of Account].New'
        Description = 'New Chart Of Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Chart of Account'
          end>
      end
      item
        Permission = '[Chart Of Account].Edit'
        Description = 'Edit Chart Of Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Chart of Account'
          end>
      end
      item
        Permission = '[Chart Of Account].Delete'
        Description = 'Delete Chart Of Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Chart of Account'
          end>
      end
      item
        Permission = '[Chart Of Account].Refresh'
        Description = 'Refresh Chart Of Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Chart of Account'
          end>
      end
      item
        Permission = '[Chart Of Account].Cancel'
        Description = 'Cancel Chart Of Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Chart of Account'
          end>
      end
      item
        Permission = '[Chart Of Account].Copy From Selected Data'
        Description = 'Copy From Selected Data Chart Of Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Chart of Account'
          end>
      end
      item
        Permission = '[Chart Of Account].Approve'
        Description = 'Approve Chart Of Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Chart of Account'
          end>
      end
      item
        Permission = '[Chart Of Account].Reject'
        Description = 'Reject Chart Of Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Chart of Account'
          end>
      end
      item
        Permission = '[Cost/Profit Center].View Approval Data'
        Description = 'View Approval Data Cost/Profit Center'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cost/Profit Center'
          end>
      end
      item
        Permission = '[Cost/Profit Center].View'
        Description = 'View Cost/Profit Center'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cost/Profit Center'
          end>
      end
      item
        Permission = '[Cost/Profit Center].New'
        Description = 'New Cost/Profit Center'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cost/Profit Center'
          end>
      end
      item
        Permission = '[Cost/Profit Center].Edit'
        Description = 'Edit Cost/Profit Center'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cost/Profit Center'
          end>
      end
      item
        Permission = '[Cost/Profit Center].Delete'
        Description = 'Delete Cost/Profit Center'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cost/Profit Center'
          end>
      end
      item
        Permission = '[Cost/Profit Center].Refresh'
        Description = 'Refresh Cost/Profit Center'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cost/Profit Center'
          end>
      end
      item
        Permission = '[Cost/Profit Center].Cancel'
        Description = 'Cancel Cost/Profit Center'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cost/Profit Center'
          end>
      end
      item
        Permission = '[Cost/Profit Center].Copy From Selected Data'
        Description = 'Copy From Selected Data Cost/Profit Center'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cost/Profit Center'
          end>
      end
      item
        Permission = '[Cost/Profit Center].Approve'
        Description = 'Approve Cost/Profit Center'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cost/Profit Center'
          end>
      end
      item
        Permission = '[Cost/Profit Center].Reject'
        Description = 'Reject Cost/Profit Center'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cost/Profit Center'
          end>
      end
      item
        Permission = '[Exchange Rate].View Approval Data'
        Description = 'View Approval Data Exchange Rate'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Exchange Rate'
          end>
      end
      item
        Permission = '[Exchange Rate].View'
        Description = 'View Exchange Rate'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Exchange Rate'
          end>
      end
      item
        Permission = '[Exchange Rate].New'
        Description = 'New Exchange Rate'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Exchange Rate'
          end>
      end
      item
        Permission = '[Exchange Rate].Edit'
        Description = 'Edit Exchange Rate'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Exchange Rate'
          end>
      end
      item
        Permission = '[Exchange Rate].Delete'
        Description = 'Delete Exchange Rate'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Exchange Rate'
          end>
      end
      item
        Permission = '[Exchange Rate].Refresh'
        Description = 'Refresh Exchange Rate'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Exchange Rate'
          end>
      end
      item
        Permission = '[Exchange Rate].Cancel'
        Description = 'Cancel Exchange Rate'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Exchange Rate'
          end>
      end
      item
        Permission = '[Exchange Rate].Copy From Selected Data'
        Description = 'Copy From Selected Data Exchange Rate'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Exchange Rate'
          end>
      end
      item
        Permission = '[Exchange Rate].Approve'
        Description = 'Approve Exchange Rate'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Exchange Rate'
          end>
      end
      item
        Permission = '[Exchange Rate].Reject'
        Description = 'Reject Exchange Rate'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Exchange Rate'
          end>
      end
      item
        Permission = '[Input Journal].View Approval Data'
        Description = 'View Approval Data Input Journal'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Input'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Input Jurnal Bank'
          end>
      end
      item
        Permission = '[Input Journal].View'
        Description = 'View Input Journal'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Input'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Input Jurnal Bank'
          end>
      end
      item
        Permission = '[Input Journal].New'
        Description = 'New Input Journal'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Input'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Input Jurnal Bank'
          end>
      end
      item
        Permission = '[Input Journal].Edit'
        Description = 'Edit Input Journal'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Input'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Input Jurnal Bank'
          end>
      end
      item
        Permission = '[Input Journal].Delete'
        Description = 'Delete Input Journal'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Input'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Input Jurnal Bank'
          end>
      end
      item
        Permission = '[Input Journal].Refresh'
        Description = 'Refresh Input Journal'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Input'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Input Jurnal Bank'
          end>
      end
      item
        Permission = '[Input Journal].Cancel'
        Description = 'Cancel Input Journal'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Input'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Input Jurnal Bank'
          end>
      end
      item
        Permission = '[Input Journal].Copy From Selected Data'
        Description = 'Copy From Selected Data Input Journal'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Input'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Input Jurnal Bank'
          end>
      end
      item
        Permission = '[Input Journal].Approve'
        Description = 'Approve Input Journal'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Input'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Input Jurnal Bank'
          end>
      end
      item
        Permission = '[Input Journal].Reject'
        Description = 'Reject Input Journal'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Input'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Input Jurnal Bank'
          end>
      end
      item
        Permission = '[Input Journal].Posting'
        Description = 'Posting Input Journal'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Input'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Input Jurnal Bank'
          end>
      end
      item
        Permission = 'Journal List'
        Description = 'Journal List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal List'
          end>
      end
      item
        Permission = 'Journal Posting'
        Description = 'Journal Posting'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Trade Posting (Automatic Journal)'
          end>
      end
      item
        Permission = 'General Ledger'
        Description = 'General Ledger'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'General Ledger'
          end>
      end
      item
        Permission = 'Trial Balance By Currency'
        Description = 'Trial Balance By Currency'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Trial Balance By Currency'
          end>
      end
      item
        Permission = 'Consolidated Trial Balance'
        Description = 'Consolidated Trial Balance'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Consolidated Trial Balance'
          end>
      end
      item
        Permission = 'Balance Sheet'
        Description = 'Balance Sheet'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Balance Sheet'
          end>
      end
      item
        Permission = 'Profit & Lost'
        Description = 'Profit & Lost'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Profit && Lost'
          end>
      end
      item
        Permission = 'Fixed Asset Group'
        Description = 'Fixed Asset Group'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Fixed Asset Group'
          end>
      end
      item
        Permission = 'Depreciation Table'
        Description = 'Depreciation Table'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Fixed Asset - Depreciation Table'
          end>
      end
      item
        Permission = 'Fixed Asset'
        Description = 'Fixed Asset'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Fixed Asset'
          end>
      end
      item
        Permission = 'Journal Map'
        Description = 'Journal Map'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Parameter'
          end>
      end
      item
        Permission = 'GL Journal Map'
        Description = 'GL Journal Map'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'GL Journal Map'
          end>
      end
      item
        Permission = '[Account Ledger Type].View Approval Data'
        Description = 'View Approval Data Account Ledger Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Type'
          end>
      end
      item
        Permission = '[Account Ledger Type].View'
        Description = 'View Account Ledger Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Type'
          end>
      end
      item
        Permission = '[Account Ledger Type].New'
        Description = 'New Account Ledger Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Type'
          end>
      end
      item
        Permission = '[Account Ledger Type].Edit'
        Description = 'Edit Account Ledger Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Type'
          end>
      end
      item
        Permission = '[Account Ledger Type].Delete'
        Description = 'Delete Account Ledger Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Type'
          end>
      end
      item
        Permission = '[Account Ledger Type].Refresh'
        Description = 'Refresh Account Ledger Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Type'
          end>
      end
      item
        Permission = '[Account Ledger Type].Cancel'
        Description = 'Cancel Account Ledger Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Type'
          end>
      end
      item
        Permission = '[Account Ledger Type].Copy From Selected Data'
        Description = 'Copy From Selected Data Account Ledger Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Type'
          end>
      end
      item
        Permission = '[Account Ledger Type].Approve'
        Description = 'Approve Account Ledger Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Type'
          end>
      end
      item
        Permission = '[Account Ledger Type].Reject'
        Description = 'Reject Account Ledger Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Type'
          end>
      end
      item
        Permission = '[Account Ledger Class].View Approval Data'
        Description = 'View Approval Data Account Ledger Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Class'
          end>
      end
      item
        Permission = '[Account Ledger Class].View'
        Description = 'View Account Ledger Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Class'
          end>
      end
      item
        Permission = '[Account Ledger Class].New'
        Description = 'New Account Ledger Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Class'
          end>
      end
      item
        Permission = '[Account Ledger Class].Edit'
        Description = 'Edit Account Ledger Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Class'
          end>
      end
      item
        Permission = '[Account Ledger Class].Delete'
        Description = 'Delete Account Ledger Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Class'
          end>
      end
      item
        Permission = '[Account Ledger Class].Refresh'
        Description = 'Refresh Account Ledger Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Class'
          end>
      end
      item
        Permission = '[Account Ledger Class].Cancel'
        Description = 'Cancel Account Ledger Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Class'
          end>
      end
      item
        Permission = '[Account Ledger Class].Copy From Selected Data'
        Description = 'Copy From Selected Data Account Ledger Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Class'
          end>
      end
      item
        Permission = '[Account Ledger Class].Approve'
        Description = 'Approve Account Ledger Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Class'
          end>
      end
      item
        Permission = '[Account Ledger Class].Reject'
        Description = 'Reject Account Ledger Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Ledger Class'
          end>
      end
      item
        Permission = 'Client Inquiry'
        Description = 'Client Inquiry'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Client Inquiry'
          end>
      end
      item
        Permission = '[Suspend Account].View Approval Data'
        Description = 'View Approval Data Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Suspend'
          end>
      end
      item
        Permission = '[Suspend Account].View'
        Description = 'View Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Suspend'
          end>
      end
      item
        Permission = '[Suspend Account].New'
        Description = 'New Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Suspend'
          end>
      end
      item
        Permission = '[Suspend Account].Edit'
        Description = 'Edit Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Suspend'
          end>
      end
      item
        Permission = '[Suspend Account].Delete'
        Description = 'Delete Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Suspend'
          end>
      end
      item
        Permission = '[Suspend Account].Refresh'
        Description = 'Refresh Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Suspend'
          end>
      end
      item
        Permission = '[Suspend Account].Cancel'
        Description = 'Cancel Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Suspend'
          end>
      end
      item
        Permission = '[Suspend Account].Copy From Selected Data'
        Description = 'Copy From Selected Data Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Suspend'
          end>
      end
      item
        Permission = '[Suspend Account].Approve'
        Description = 'Approve Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Suspend'
          end>
      end
      item
        Permission = '[Suspend Account].Reject'
        Description = 'Reject Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Suspend'
          end>
      end
      item
        Permission = '[Open Suspend Account].View Approval Data'
        Description = 'View Approval Data Open Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Activing Account Suspend'
          end>
      end
      item
        Permission = '[Open Suspend Account].View'
        Description = 'View Open Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Activing Account Suspend'
          end>
      end
      item
        Permission = '[Open Suspend Account].New'
        Description = 'New Open Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Activing Account Suspend'
          end>
      end
      item
        Permission = '[Open Suspend Account].Edit'
        Description = 'Edit Open Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Activing Account Suspend'
          end>
      end
      item
        Permission = '[Open Suspend Account].Delete'
        Description = 'Delete Open Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Activing Account Suspend'
          end>
      end
      item
        Permission = '[Open Suspend Account].Refresh'
        Description = 'Refresh Open Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Activing Account Suspend'
          end>
      end
      item
        Permission = '[Open Suspend Account].Cancel'
        Description = 'Cancel Open Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Activing Account Suspend'
          end>
      end
      item
        Permission = '[Open Suspend Account].Copy From Selected Data'
        Description = 'Copy From Selected Data Open Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Activing Account Suspend'
          end>
      end
      item
        Permission = '[Open Suspend Account].Approve'
        Description = 'Approve Open Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Activing Account Suspend'
          end>
      end
      item
        Permission = '[Open Suspend Account].Reject'
        Description = 'Reject Open Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Activing Account Suspend'
          end>
      end
      item
        Permission = '[Open Suspend Account].Open Suspend'
        Description = 'Open Suspend Open Suspend Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Activing Account Suspend'
          end>
      end
      item
        Permission = '[Closing Account Process].View Approval Data'
        Description = 'View Approval Data Closing Account Process'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Closing Account Process'
          end>
      end
      item
        Permission = '[Closing Account Process].View'
        Description = 'View Closing Account Process'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Closing Account Process'
          end>
      end
      item
        Permission = '[Closing Account Process].New'
        Description = 'New Closing Account Process'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Closing Account Process'
          end>
      end
      item
        Permission = '[Closing Account Process].Edit'
        Description = 'Edit Closing Account Process'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Closing Account Process'
          end>
      end
      item
        Permission = '[Closing Account Process].Delete'
        Description = 'Delete Closing Account Process'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Closing Account Process'
          end>
      end
      item
        Permission = '[Closing Account Process].Refresh'
        Description = 'Refresh Closing Account Process'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Closing Account Process'
          end>
      end
      item
        Permission = '[Closing Account Process].Cancel'
        Description = 'Cancel Closing Account Process'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Closing Account Process'
          end>
      end
      item
        Permission = '[Closing Account Process].Copy From Selected Data'
        Description = 'Copy From Selected Data Closing Account Process'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Closing Account Process'
          end>
      end
      item
        Permission = '[Closing Account Process].Approve'
        Description = 'Approve Closing Account Process'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Closing Account Process'
          end>
      end
      item
        Permission = '[Closing Account Process].Reject'
        Description = 'Reject Closing Account Process'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Closing Account Process'
          end>
      end
      item
        Permission = 'Batch Process Monitoring'
        Description = 'Batch Process Monitoring'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Batch Process Monitoring'
          end>
      end
      item
        Permission = 'Daily Trade Summary'
        Description = 'Daily Trade Summary'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Trade Summary'
          end>
      end
      item
        Permission = '[Stock Option Program].View Approval Data'
        Description = 'View Approval Data Stock Option Program'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Option Program'
          end>
      end
      item
        Permission = '[Stock Option Program].View'
        Description = 'View Stock Option Program'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Option Program'
          end>
      end
      item
        Permission = '[Stock Option Program].New'
        Description = 'New Stock Option Program'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Option Program'
          end>
      end
      item
        Permission = '[Stock Option Program].Edit'
        Description = 'Edit Stock Option Program'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Option Program'
          end>
      end
      item
        Permission = '[Stock Option Program].Delete'
        Description = 'Delete Stock Option Program'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Option Program'
          end>
      end
      item
        Permission = '[Stock Option Program].Refresh'
        Description = 'Refresh Stock Option Program'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Option Program'
          end>
      end
      item
        Permission = '[Stock Option Program].Cancel'
        Description = 'Cancel Stock Option Program'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Option Program'
          end>
      end
      item
        Permission = '[Stock Option Program].Copy From Selected Data'
        Description = 'Copy From Selected Data Stock Option Program'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Option Program'
          end>
      end
      item
        Permission = '[Stock Option Program].Approve'
        Description = 'Approve Stock Option Program'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Option Program'
          end>
      end
      item
        Permission = '[Stock Option Program].Reject'
        Description = 'Reject Stock Option Program'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Option Program'
          end>
      end
      item
        Permission = '[Bonds Deal Ticket].View Approval Data'
        Description = 'View Approval Data Bonds Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bonds Deal Ticket'
          end>
      end
      item
        Permission = '[Bonds Deal Ticket].View'
        Description = 'View Bonds Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bonds Deal Ticket'
          end>
      end
      item
        Permission = '[Bonds Deal Ticket].New'
        Description = 'New Bonds Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bonds Deal Ticket'
          end>
      end
      item
        Permission = '[Bonds Deal Ticket].Edit'
        Description = 'Edit Bonds Deal Ticket'
        PermissionMenus = <>
      end
      item
        Permission = '[Bonds Deal Ticket].Delete'
        Description = 'Delete Bonds Deal Ticket'
        PermissionMenus = <>
      end
      item
        Permission = '[Bonds Deal Ticket].Refresh'
        Description = 'Refresh Bonds Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bonds Deal Ticket'
          end>
      end
      item
        Permission = '[Bonds Deal Ticket].Cancel'
        Description = 'Cancel Bonds Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bonds Deal Ticket'
          end>
      end
      item
        Permission = '[Bonds Deal Ticket].Copy From Selected Data'
        Description = 'Copy From Selected Data Bonds Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bonds Deal Ticket'
          end>
      end
      item
        Permission = '[Bonds Deal Ticket].Approve'
        Description = 'Approve Bonds Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bonds Deal Ticket'
          end>
      end
      item
        Permission = '[Bonds Deal Ticket].Reject'
        Description = 'Reject Bonds Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bonds Deal Ticket'
          end>
      end
      item
        Permission = 'Report Letter Of Confirmation'
        Description = 'Report Letter Of Confirmation'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Letter Of Confirmation'
          end>
      end
      item
        Permission = '[Contract Bonds].View Approval Data'
        Description = 'View Approval Data Contract Bonds'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract Bonds'
          end>
      end
      item
        Permission = '[Contract Bonds].View'
        Description = 'View Contract Bonds'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract Bonds'
          end>
      end
      item
        Permission = '[Contract Bonds].New'
        Description = 'New Contract Bonds'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract Bonds'
          end>
      end
      item
        Permission = '[Contract Bonds].Edit'
        Description = 'Edit Contract Bonds'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract Bonds'
          end>
      end
      item
        Permission = '[Contract Bonds].Delete'
        Description = 'Delete Contract Bonds'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract Bonds'
          end>
      end
      item
        Permission = '[Contract Bonds].Refresh'
        Description = 'Refresh Contract Bonds'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract Bonds'
          end>
      end
      item
        Permission = '[Contract Bonds].Cancel'
        Description = 'Cancel Contract Bonds'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract Bonds'
          end>
      end
      item
        Permission = '[Contract Bonds].Copy From Selected Data'
        Description = 'Copy From Selected Data Contract Bonds'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract Bonds'
          end>
      end
      item
        Permission = '[Contract Bonds].Approve'
        Description = 'Approve Contract Bonds'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract Bonds'
          end>
      end
      item
        Permission = '[Contract Bonds].Reject'
        Description = 'Reject Contract Bonds'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract Bonds'
          end>
      end
      item
        Permission = 'DHK'
        Description = 'DHK'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'DHK'
          end>
      end
      item
        Permission = 'Company Entity'
        Description = 'Company Entity'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Company Maintenance'
          end>
      end
      item
        Permission = 'Fiscal Year Configuration'
        Description = 'Fiscal Year Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Fiscal Year Configuration'
          end>
      end
      item
        Permission = 'Settlement Interface'
        Description = 'Settlement Interface'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Omgeo Monitor'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'S-Invest Monitor'
          end>
      end
      item
        Permission = '[Opening Dorman].View Approval Data'
        Description = 'View Approval Data Opening Dorman'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Open Account Dorman'
          end>
      end
      item
        Permission = '[Opening Dorman].View'
        Description = 'View Opening Dorman'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Open Account Dorman'
          end>
      end
      item
        Permission = '[Opening Dorman].New'
        Description = 'New Opening Dorman'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Open Account Dorman'
          end>
      end
      item
        Permission = '[Opening Dorman].Edit'
        Description = 'Edit Opening Dorman'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Open Account Dorman'
          end>
      end
      item
        Permission = '[Opening Dorman].Delete'
        Description = 'Delete Opening Dorman'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Open Account Dorman'
          end>
      end
      item
        Permission = '[Opening Dorman].Refresh'
        Description = 'Refresh Opening Dorman'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Open Account Dorman'
          end>
      end
      item
        Permission = '[Opening Dorman].Cancel'
        Description = 'Cancel Opening Dorman'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Open Account Dorman'
          end>
      end
      item
        Permission = '[Opening Dorman].Copy From Selected Data'
        Description = 'Copy From Selected Data Opening Dorman'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Open Account Dorman'
          end>
      end
      item
        Permission = '[Opening Dorman].Approve'
        Description = 'Approve Opening Dorman'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Open Account Dorman'
          end>
      end
      item
        Permission = '[Opening Dorman].Reject'
        Description = 'Reject Opening Dorman'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Open Account Dorman'
          end>
      end
      item
        Permission = '[Contract Repo].View Approval Data'
        Description = 'View Approval Data Contract Repo'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reverse Repo'
          end>
      end
      item
        Permission = '[Contract Repo].View'
        Description = 'View Contract Repo'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reverse Repo'
          end>
      end
      item
        Permission = '[Contract Repo].New'
        Description = 'New Contract Repo'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reverse Repo'
          end>
      end
      item
        Permission = '[Contract Repo].Edit'
        Description = 'Edit Contract Repo'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reverse Repo'
          end>
      end
      item
        Permission = '[Contract Repo].Delete'
        Description = 'Delete Contract Repo'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reverse Repo'
          end>
      end
      item
        Permission = '[Contract Repo].Refresh'
        Description = 'Refresh Contract Repo'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reverse Repo'
          end>
      end
      item
        Permission = '[Contract Repo].Cancel'
        Description = 'Cancel Contract Repo'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reverse Repo'
          end>
      end
      item
        Permission = '[Contract Repo].Copy From Selected Data'
        Description = 'Copy From Selected Data Contract Repo'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reverse Repo'
          end>
      end
      item
        Permission = '[Contract Repo].Approve'
        Description = 'Approve Contract Repo'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reverse Repo'
          end>
      end
      item
        Permission = '[Contract Repo].Reject'
        Description = 'Reject Contract Repo'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reverse Repo'
          end>
      end
      item
        Permission = '[OTC Instruction].View Approval Data'
        Description = 'View Approval Data OTC Instruction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'OTC Instruction'
          end>
      end
      item
        Permission = '[OTC Instruction].Refresh'
        Description = 'Refresh OTC Instruction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'OTC Instruction'
          end>
      end
      item
        Permission = '[OTC Instruction].Copy From Selected Data'
        Description = 'Copy From Selected Data OTC Instruction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'OTC Instruction'
          end>
      end
      item
        Permission = '[OTC Instruction].Approve'
        Description = 'Approve OTC Instruction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'OTC Instruction'
          end>
      end
      item
        Permission = '[OTC Instruction].Reject'
        Description = 'Reject OTC Instruction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'OTC Instruction'
          end>
      end
      item
        Permission = 'KSEI Account Reconcile'
        Description = 'KSEI Account Reconcile'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'KSEI && RDN Account Reconcile'
          end>
      end
      item
        Permission = 'WH Tax'
        Description = 'WH Tax'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'WH Tax'
          end>
      end
      item
        Permission = 'Report Sales Commission'
        Description = 'Report Sales Commission'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Sales Commission'
          end>
      end
      item
        Permission = 'Report Client Commission'
        Description = 'Report Client Commission'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Client Commission'
          end>
      end
      item
        Permission = 'Report Client Commission By Range'
        Description = 'Report Client Commission By Range'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Client Commission By Range'
          end>
      end
      item
        Permission = '[Bank Receive List].View Approval Data'
        Description = 'View Approval Data Bank Receive List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Receive'
          end>
      end
      item
        Permission = '[Bank Receive List].View'
        Description = 'View Bank Receive List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Receive'
          end>
      end
      item
        Permission = '[Bank Receive List].New'
        Description = 'New Bank Receive List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Receive'
          end>
      end
      item
        Permission = '[Bank Receive List].Edit'
        Description = 'Edit Bank Receive List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Receive'
          end>
      end
      item
        Permission = '[Bank Receive List].Delete'
        Description = 'Delete Bank Receive List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Receive'
          end>
      end
      item
        Permission = '[Bank Receive List].Refresh'
        Description = 'Refresh Bank Receive List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Receive'
          end>
      end
      item
        Permission = '[Bank Receive List].Cancel'
        Description = 'Cancel Bank Receive List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Receive'
          end>
      end
      item
        Permission = '[Bank Receive List].Copy From Selected Data'
        Description = 'Copy From Selected Data Bank Receive List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Receive'
          end>
      end
      item
        Permission = '[Bank Receive List].Approve'
        Description = 'Approve Bank Receive List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Receive'
          end>
      end
      item
        Permission = '[Bank Receive List].Reject'
        Description = 'Reject Bank Receive List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Receive'
          end>
      end
      item
        Permission = '[Bank Payment List].View Approval Data'
        Description = 'View Approval Data Bank Payment List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Payment'
          end>
      end
      item
        Permission = '[Bank Payment List].View'
        Description = 'View Bank Payment List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Payment'
          end>
      end
      item
        Permission = '[Bank Payment List].New'
        Description = 'New Bank Payment List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Payment'
          end>
      end
      item
        Permission = '[Bank Payment List].Edit'
        Description = 'Edit Bank Payment List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Payment'
          end>
      end
      item
        Permission = '[Bank Payment List].Delete'
        Description = 'Delete Bank Payment List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Payment'
          end>
      end
      item
        Permission = '[Bank Payment List].Refresh'
        Description = 'Refresh Bank Payment List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Payment'
          end>
      end
      item
        Permission = '[Bank Payment List].Cancel'
        Description = 'Cancel Bank Payment List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Payment'
          end>
      end
      item
        Permission = '[Bank Payment List].Copy From Selected Data'
        Description = 'Copy From Selected Data Bank Payment List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Payment'
          end>
      end
      item
        Permission = '[Bank Payment List].Approve'
        Description = 'Approve Bank Payment List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Payment'
          end>
      end
      item
        Permission = '[Bank Payment List].Reject'
        Description = 'Reject Bank Payment List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Payment'
          end>
      end
      item
        Permission = 'DHK Cash'
        Description = 'DHK Cash'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'DHK Cash'
          end>
      end
      item
        Permission = '[Hand Over Exercise].View Approval Data'
        Description = 'View Approval Data Hand Over Exercise'
        PermissionMenus = <>
      end
      item
        Permission = '[Hand Over Exercise].View'
        Description = 'View Hand Over Exercise'
        PermissionMenus = <>
      end
      item
        Permission = '[Hand Over Exercise].New'
        Description = 'New Hand Over Exercise'
        PermissionMenus = <>
      end
      item
        Permission = '[Hand Over Exercise].Delete'
        Description = 'Delete Hand Over Exercise'
        PermissionMenus = <>
      end
      item
        Permission = '[Hand Over Exercise].Refresh'
        Description = 'Refresh Hand Over Exercise'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Hand Over Exercise'
          end>
      end
      item
        Permission = '[Hand Over Exercise].Cancel'
        Description = 'Cancel Hand Over Exercise'
        PermissionMenus = <>
      end
      item
        Permission = '[Hand Over Exercise].Copy From Selected Data'
        Description = 'Copy From Selected Data Hand Over Exercise'
        PermissionMenus = <>
      end
      item
        Permission = '[Hand Over Exercise].Approve'
        Description = 'Approve Hand Over Exercise'
        PermissionMenus = <>
      end
      item
        Permission = '[Hand Over Exercise].Reject'
        Description = 'Reject Hand Over Exercise'
        PermissionMenus = <>
      end
      item
        Permission = '[Corporate Action Cash Loan Approval].View Approval Data'
        Description = 'View Approval Data Corporate Action Cash Loan Approval'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Loan Approval'
          end>
      end
      item
        Permission = '[Corporate Action Cash Loan Approval].View'
        Description = 'View Corporate Action Cash Loan Approval'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Loan Approval'
          end>
      end
      item
        Permission = '[Corporate Action Cash Loan Approval].New'
        Description = 'New Corporate Action Cash Loan Approval'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Loan Approval'
          end>
      end
      item
        Permission = '[Corporate Action Cash Loan Approval].Edit'
        Description = 'Edit Corporate Action Cash Loan Approval'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Loan Approval'
          end>
      end
      item
        Permission = '[Corporate Action Cash Loan Approval].Delete'
        Description = 'Delete Corporate Action Cash Loan Approval'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Loan Approval'
          end>
      end
      item
        Permission = '[Corporate Action Cash Loan Approval].Refresh'
        Description = 'Refresh Corporate Action Cash Loan Approval'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Loan Approval'
          end>
      end
      item
        Permission = '[Corporate Action Cash Loan Approval].Cancel'
        Description = 'Cancel Corporate Action Cash Loan Approval'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Loan Approval'
          end>
      end
      item
        Permission = '[Corporate Action Cash Loan Approval].Copy From Selected Data'
        Description = 'Copy From Selected Data Corporate Action Cash Loan Approval'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Loan Approval'
          end>
      end
      item
        Permission = '[Corporate Action Cash Loan Approval].Approve'
        Description = 'Approve Corporate Action Cash Loan Approval'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Loan Approval'
          end>
      end
      item
        Permission = '[Corporate Action Cash Loan Approval].Reject'
        Description = 'Reject Corporate Action Cash Loan Approval'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Loan Approval'
          end>
      end
      item
        Permission = '[Exercise Monitoring].Insert'
        Description = 'Insert Exercise Monitoring'
        PermissionMenus = <>
      end
      item
        Permission = '[Exercise Monitoring].Delete'
        Description = 'Delete Exercise Monitoring'
        PermissionMenus = <>
      end
      item
        Permission = '[Exercise Monitoring].Edit'
        Description = 'Edit Exercise Monitoring'
        PermissionMenus = <>
      end
      item
        Permission = '[Exercise Monitoring].Post'
        Description = 'Post Exercise Monitoring'
        PermissionMenus = <>
      end
      item
        Permission = '[Exercise Monitoring].Cancel'
        Description = 'Cancel Exercise Monitoring'
        PermissionMenus = <>
      end
      item
        Permission = 'DOT'
        Description = 'Blacklist People & Organization'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Blacklist People && Organization'
          end>
      end
      item
        Permission = 'Balance Sheet Report'
        Description = 'Balance Sheet Report'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Balance Sheet'
          end>
      end
      item
        Permission = 'Report Trial Balance'
        Description = 'Report Trial Balance'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Trial Balance Report'
          end>
      end
      item
        Permission = 'Report Frofit Loss Statement'
        Description = 'Report Frofit Loss Statement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Profit Loss Statement'
          end>
      end
      item
        Permission = '[OMGEO Monitor].Insert'
        Description = 'Insert OMGEO Monitor'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Omgeo Monitor'
          end>
      end
      item
        Permission = '[OMGEO Monitor].Delete'
        Description = 'Delete OMGEO Monitor'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Omgeo Monitor'
          end>
      end
      item
        Permission = '[OMGEO Monitor].Edit'
        Description = 'Edit OMGEO Monitor'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Omgeo Monitor'
          end>
      end
      item
        Permission = '[OMGEO Monitor].Post'
        Description = 'Post OMGEO Monitor'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Omgeo Monitor'
          end>
      end
      item
        Permission = '[OMGEO Monitor].Cancel'
        Description = 'Cancel OMGEO Monitor'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Omgeo Monitor'
          end>
      end
      item
        Permission = 'Provision Portfolio Mark To Market'
        Description = 'Provision Portfolio Mark To Market'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Provision Portfolio Mark To Market'
          end>
      end
      item
        Permission = '[Account Interest List].View Approval Data'
        Description = 'View Approval Data Account Interest List'
        PermissionMenus = <>
      end
      item
        Permission = '[Account Interest List].View'
        Description = 'View Account Interest List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Interest'
          end>
      end
      item
        Permission = '[Account Interest List].New'
        Description = 'New Account Interest List'
        PermissionMenus = <>
      end
      item
        Permission = '[Account Interest List].Edit'
        Description = 'Edit Account Interest List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Interest'
          end>
      end
      item
        Permission = '[Account Interest List].Delete'
        Description = 'Delete Account Interest List'
        PermissionMenus = <>
      end
      item
        Permission = '[Account Interest List].Refresh'
        Description = 'Refresh Account Interest List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Interest'
          end>
      end
      item
        Permission = '[Account Interest List].Cancel'
        Description = 'Cancel Account Interest List'
        PermissionMenus = <>
      end
      item
        Permission = '[Account Interest List].Copy From Selected Data'
        Description = 'Copy From Selected Data Account Interest List'
        PermissionMenus = <>
      end
      item
        Permission = '[Account Interest List].Approve'
        Description = 'Approve Account Interest List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Interest'
          end>
      end
      item
        Permission = '[Account Interest List].Reject'
        Description = 'Reject Account Interest List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Interest'
          end>
      end
      item
        Permission = '[Interest Track List].View Approval Data'
        Description = 'View Approval Data Interest Track List'
        PermissionMenus = <>
      end
      item
        Permission = '[Interest Track List].View'
        Description = 'View Interest Track List'
        PermissionMenus = <>
      end
      item
        Permission = '[Interest Track List].New'
        Description = 'New Interest Track List'
        PermissionMenus = <>
      end
      item
        Permission = '[Interest Track List].Edit'
        Description = 'Edit Interest Track List'
        PermissionMenus = <>
      end
      item
        Permission = '[Interest Track List].Delete'
        Description = 'Delete Interest Track List'
        PermissionMenus = <>
      end
      item
        Permission = '[Interest Track List].Refresh'
        Description = 'Refresh Interest Track List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Interest Track'
          end>
      end
      item
        Permission = '[Interest Track List].Cancel'
        Description = 'Cancel Interest Track List'
        PermissionMenus = <>
      end
      item
        Permission = '[Interest Track List].Copy From Selected Data'
        Description = 'Copy From Selected Data Interest Track List'
        PermissionMenus = <>
      end
      item
        Permission = '[Interest Track List].Approve'
        Description = 'Approve Interest Track List'
        PermissionMenus = <>
      end
      item
        Permission = '[Interest Track List].Reject'
        Description = 'Reject Interest Track List'
        PermissionMenus = <>
      end
      item
        Permission = 'Securities Ledger Journal'
        Description = 'Securities Ledger Journal'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Securities Ledger Journal'
          end>
      end
      item
        Permission = '[Stock Movement].View'
        Description = 'View Stock Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Movement'
          end>
      end
      item
        Permission = '[Stock Movement].New'
        Description = 'New Stock Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Movement'
          end>
      end
      item
        Permission = '[Stock Movement].Edit'
        Description = 'Edit Stock Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Movement'
          end>
      end
      item
        Permission = '[Stock Movement].Refresh'
        Description = 'Refresh Stock Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Movement'
          end>
      end
      item
        Permission = '[Stock Movement].Cancel'
        Description = 'Cancel Stock Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Movement'
          end>
      end
      item
        Permission = '[Stock Movement].Copy From Selected Data'
        Description = 'Copy From Selected Data Stock Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Movement'
          end>
      end
      item
        Permission = '[Stock Movement].Approve'
        Description = 'Approve Stock Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Movement'
          end>
      end
      item
        Permission = '[Stock Movement].Reject'
        Description = 'Reject Stock Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Movement'
          end>
      end
      item
        Permission = '[Cash Movement].View'
        Description = 'View Cash Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Movement'
          end>
      end
      item
        Permission = '[Cash Movement].Edit'
        Description = 'Edit Cash Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Movement'
          end>
      end
      item
        Permission = '[Cash Movement].Refresh'
        Description = 'Refresh Cash Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Movement'
          end>
      end
      item
        Permission = '[Cash Movement].Copy From Selected Data'
        Description = 'Copy From Selected Data Cash Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Movement'
          end>
      end
      item
        Permission = '[Cash Movement].Reject'
        Description = 'Reject Cash Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Movement'
          end>
      end
      item
        Permission = '[Customer Haircut].View'
        Description = 'View Customer Haircut'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Haircut'
          end>
      end
      item
        Permission = '[Customer Haircut].Edit'
        Description = 'Edit Customer Haircut'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Haircut'
          end>
      end
      item
        Permission = '[Customer Haircut].Refresh'
        Description = 'Refresh Customer Haircut'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Haircut'
          end>
      end
      item
        Permission = '[Customer Haircut].Copy From Selected Data'
        Description = 'Copy From Selected Data Customer Haircut'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Haircut'
          end>
      end
      item
        Permission = '[Customer Haircut].Reject'
        Description = 'Reject Customer Haircut'
        PermissionMenus = <>
      end
      item
        Permission = '[ACS].View Approval Data'
        Description = 'View Approval Data ACS'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'ACS List'
          end>
      end
      item
        Permission = '[ACS].View'
        Description = 'View ACS'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'ACS List'
          end>
      end
      item
        Permission = '[ACS].New'
        Description = 'New ACS'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'ACS List'
          end>
      end
      item
        Permission = '[ACS].Edit'
        Description = 'Edit ACS'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'ACS List'
          end>
      end
      item
        Permission = '[ACS].Delete'
        Description = 'Delete ACS'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'ACS List'
          end>
      end
      item
        Permission = '[ACS].Refresh'
        Description = 'Refresh ACS'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'ACS List'
          end>
      end
      item
        Permission = '[ACS].Cancel'
        Description = 'Cancel ACS'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'ACS List'
          end>
      end
      item
        Permission = '[ACS].Copy From Selected Data'
        Description = 'Copy From Selected Data ACS'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'ACS List'
          end>
      end
      item
        Permission = '[ACS].Approve'
        Description = 'Approve ACS'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'ACS List'
          end>
      end
      item
        Permission = '[ACS].Reject'
        Description = 'Reject ACS'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'ACS List'
          end>
      end
      item
        Permission = '[Tender Offer].View Approval Data'
        Description = 'View Approval Data Tender Offer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tender Offer'
          end>
      end
      item
        Permission = '[Tender Offer].View'
        Description = 'View Tender Offer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tender Offer'
          end>
      end
      item
        Permission = '[Tender Offer].New'
        Description = 'New Tender Offer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tender Offer'
          end>
      end
      item
        Permission = '[Tender Offer].Edit'
        Description = 'Edit Tender Offer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tender Offer'
          end>
      end
      item
        Permission = '[Tender Offer].Delete'
        Description = 'Delete Tender Offer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tender Offer'
          end>
      end
      item
        Permission = '[Tender Offer].Refresh'
        Description = 'Refresh Tender Offer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tender Offer'
          end>
      end
      item
        Permission = '[Tender Offer].Cancel'
        Description = 'Cancel Tender Offer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tender Offer'
          end>
      end
      item
        Permission = '[Tender Offer].Copy From Selected Data'
        Description = 'Copy From Selected Data Tender Offer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tender Offer'
          end>
      end
      item
        Permission = '[Tender Offer].Approve'
        Description = 'Approve Tender Offer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tender Offer'
          end>
      end
      item
        Permission = '[Tender Offer].Reject'
        Description = 'Reject Tender Offer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tender Offer'
          end>
      end
      item
        Permission = 'Aging ARAP'
        Description = 'Aging ARAP'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Aging ARAP'
          end>
      end
      item
        Permission = 'Account Omgeo Configuration'
        Description = 'Account Omgeo Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Omgeo Configuration'
          end>
      end
      item
        Permission = '[Tax Invoice].View Approval Data'
        Description = 'View Approval Data Tax Invoice'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Invoice'
          end>
      end
      item
        Permission = '[Tax Invoice].View'
        Description = 'View Tax Invoice'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Invoice'
          end>
      end
      item
        Permission = '[Tax Invoice].Edit'
        Description = 'Edit Tax Invoice'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Invoice'
          end>
      end
      item
        Permission = '[Tax Invoice].Delete'
        Description = 'Delete Tax Invoice'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Invoice'
          end>
      end
      item
        Permission = '[Tax Invoice].Refresh'
        Description = 'Refresh Tax Invoice'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Invoice'
          end>
      end
      item
        Permission = '[Tax Invoice].Cancel'
        Description = 'Cancel Tax Invoice'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Invoice'
          end>
      end
      item
        Permission = '[Tax Invoice].Copy From Selected Data'
        Description = 'Copy From Selected Data Tax Invoice'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Invoice'
          end>
      end
      item
        Permission = '[Tax Invoice].Approve'
        Description = 'Approve Tax Invoice'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Invoice'
          end>
      end
      item
        Permission = '[Tax Invoice].Reject'
        Description = 'Reject Tax Invoice'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Office Number'
          end>
      end
      item
        Permission = '[Tax Number List].Insert'
        Description = 'Insert Tax Number List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Office Number'
          end>
      end
      item
        Permission = '[Tax Number List].Delete'
        Description = 'Delete Tax Number List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Office Number'
          end>
      end
      item
        Permission = '[Tax Number List].Edit'
        Description = 'Edit Tax Number List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Office Number'
          end>
      end
      item
        Permission = '[Tax Number List].Post'
        Description = 'Post Tax Number List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Office Number'
          end>
      end
      item
        Permission = '[Tax Number List].Cancel'
        Description = 'Cancel Tax Number List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Office Number'
          end>
      end
      item
        Permission = 'GL With FL'
        Description = 'GLWith FL'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'GL With FL'
          end>
      end
      item
        Permission = 'Company Bank Reconcile'
        Description = 'Company Bank Reconcile'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'RDN Bank Reconcile'
          end>
      end
      item
        Permission = 'GL With Bank Recon'
        Description = 'GL With Bank Recon'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'GL With Bank Recon'
          end>
      end
      item
        Permission = 'GL With SL Recon'
        Description = 'GL With SL Recon'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'GL With SL Recon'
          end>
      end
      item
        Permission = 'Approval'
        Description = 'Approval'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Request of Approval'
          end>
      end
      item
        Permission = 'My Approval Request'
        Description = 'My Approval Request'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'My Approval Request'
          end>
      end
      item
        Permission = 'Nayaga Reports'
        Description = 'Nayaga Reports'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Nayaga Reports'
          end>
      end
      item
        Permission = 'Grid Report Design'
        Description = 'Grid Report Design'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Grid Report Design'
          end>
      end
      item
        Permission = 'Opening Account'
        Description = 'Opening Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Opening Account'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Opening Account History'
          end>
      end
      item
        Permission = 'GL Type'
        Description = 'GL Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'GL Type'
          end>
      end
      item
        Permission = '[Cash Position Movement].New'
        Description = 'New Cash Position Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Position Movement'
          end>
      end
      item
        Permission = '[Cash Position Movement].Edit'
        Description = 'Edit Cash Position Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Position Movement'
          end>
      end
      item
        Permission = 'Opening Account Flow'
        Description = 'Opening Account Flow'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Opening Account'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Upload KSEI RDN Progress'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Upload RDN Data Feedback'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'KSEI && RDN Account Reconcile'
          end>
      end
      item
        Permission = '[Cash Position Movement].Cancel'
        Description = 'Cancel Cash Position Movement'
        PermissionMenus = <>
      end
      item
        Permission = '[Cash Position Movement].Copy From Selected Data'
        Description = 'Copy From Selected Data Cash Position Movement'
        PermissionMenus = <>
      end
      item
        Permission = '[Cash Position Movement].View'
        Description = 'View Cash Position Movement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Position Movement'
          end>
      end
      item
        Permission = '[Cash Position Movement].View Approval Data'
        Description = 'View Approval Data Cash Position Movement'
        PermissionMenus = <>
      end
      item
        Permission = '[Cash Position Movement].Approve'
        Description = 'Approve Cash Position Movement'
        PermissionMenus = <>
      end
      item
        Permission = '[Cash Position Movement].Reject'
        Description = 'Reject Cash Position Movement'
        PermissionMenus = <>
      end
      item
        Permission = '[Stock CBest Instruction].New'
        Description = 'New Stock CBest Instruction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock CBest Instruction'
          end>
      end
      item
        Permission = '[Stock CBest Instruction].Edit'
        Description = 'Edit Stock CBest Instruction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock CBest Instruction'
          end>
      end
      item
        Permission = '[Stock CBest Instruction].Delete'
        Description = 'Delete Stock CBest Instruction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock CBest Instruction'
          end>
      end
      item
        Permission = '[Stock CBest Instruction].Cancel'
        Description = 'Cancel Stock CBest Instruction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock CBest Instruction'
          end>
      end
      item
        Permission = '[Stock CBest Instruction].Copy From Selected Data'
        Description = 'Copy From Selected Data Stock CBest Instruction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock CBest Instruction'
          end>
      end
      item
        Permission = '[Stock CBest Instruction].View'
        Description = 'View Stock CBest Instruction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock CBest Instruction'
          end>
      end
      item
        Permission = '[Stock CBest Instruction].View Approval Data'
        Description = 'View Approval Data Stock CBest Instruction'
        PermissionMenus = <>
      end
      item
        Permission = '[Stock CBest Instruction].Approve'
        Description = 'Approve Stock CBest Instruction'
        PermissionMenus = <>
      end
      item
        Permission = '[Stock CBest Instruction].Reject'
        Description = 'Reject Stock CBest Instruction'
        PermissionMenus = <>
      end
      item
        Permission = 'GLInterface'
        Description = 'GLInterface'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'GL Interface'
          end>
      end
      item
        Permission = '[Report Group Type].New'
        Description = 'New Report Group Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Group Type'
          end>
      end
      item
        Permission = '[Report Group Type].Edit'
        Description = 'Edit Report Group Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Group Type'
          end>
      end
      item
        Permission = '[Report Group Type].Delete'
        Description = 'Delete Report Group Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Group Type'
          end>
      end
      item
        Permission = '[Report Group Type].Cancel'
        Description = 'Cancel Report Group Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Group Type'
          end>
      end
      item
        Permission = '[Report Group Type].Copy From Selected Data'
        Description = 'Copy From Selected Data Report Group Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Group Type'
          end>
      end
      item
        Permission = '[Report Group Type].View'
        Description = 'View Report Group Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Group Type'
          end>
      end
      item
        Permission = '[Report Group Type].View Approval Data'
        Description = 'View Approval Data Report Group Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Group Type'
          end>
      end
      item
        Permission = '[Report Group Type].Approve'
        Description = 'Approve Report Group Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Group Type'
          end>
      end
      item
        Permission = '[Report Group Type].Reject'
        Description = 'Reject Report Group Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Group Type'
          end>
      end
      item
        Permission = '[Report Type].New'
        Description = 'New Report Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Type'
          end>
      end
      item
        Permission = '[Report Type].Edit'
        Description = 'Edit Report Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Type'
          end>
      end
      item
        Permission = '[Report Type].Delete'
        Description = 'Delete Report Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Type'
          end>
      end
      item
        Permission = '[Report Type].Cancel'
        Description = 'Cancel Report Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Type'
          end>
      end
      item
        Permission = '[Report Type].Copy From Selected Data'
        Description = 'Copy From Selected Data Report Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Type'
          end>
      end
      item
        Permission = '[Report Type].View'
        Description = 'View Report Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Type'
          end>
      end
      item
        Permission = '[Report Type].View Approval Data'
        Description = 'View Approval Data Report Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Type'
          end>
      end
      item
        Permission = '[Report Type].Approve'
        Description = 'Approve Report Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Type'
          end>
      end
      item
        Permission = '[Report Type].Reject'
        Description = 'Reject Report Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Type'
          end>
      end
      item
        Permission = '[Formula Definition].New'
        Description = 'New Formula Definition'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Formula Definition'
          end>
      end
      item
        Permission = '[Formula Definition].Edit'
        Description = 'Edit Formula Definition'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Formula Definition'
          end>
      end
      item
        Permission = '[Formula Definition].Delete'
        Description = 'Delete Formula Definition'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Formula Definition'
          end>
      end
      item
        Permission = '[Formula Definition].Cancel'
        Description = 'Cancel Formula Definition'
        PermissionMenus = <>
      end
      item
        Permission = '[Formula Definition].Copy From Selected Data'
        Description = 'Copy From Selected Data Formula Definition'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Formula Definition'
          end>
      end
      item
        Permission = '[Formula Definition].View'
        Description = 'View Formula Definition'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Formula Definition'
          end>
      end
      item
        Permission = '[Formula Definition].View Approval Data'
        Description = 'View Approval Data Formula Definition'
        PermissionMenus = <>
      end
      item
        Permission = '[Formula Definition].Approve'
        Description = 'Approve Formula Definition'
        PermissionMenus = <>
      end
      item
        Permission = '[Formula Definition].Reject'
        Description = 'Reject Formula Definition'
        PermissionMenus = <>
      end
      item
        Permission = 'Source Dataset'
        Description = 'Source Dataset'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Source Dataset'
          end>
      end
      item
        Permission = 'Result Dataset'
        Description = 'Result Dataset'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'NAWC - Daily Report'
          end>
      end
      item
        Permission = 'Data Generator'
        Description = 'Data Generator'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'NAWC - Daily Generate Process'
          end>
      end
      item
        Permission = 'Create Report'
        Description = 'Create Report'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'NAWC - MKB Create Report'
          end>
      end
      item
        Permission = 'SetOff'
        Description = 'SetOff'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Set Off'
          end>
      end
      item
        Permission = 'CashBalanceAccount'
        Description = 'CashBalanceAccount'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Balance Account'
          end>
      end
      item
        Permission = 'MKBD Check Value Data'
        Description = 'MKBD Check Value Data'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'NAWC - Check Different Value'
          end>
      end
      item
        Permission = 'MKBD Supporting Data'
        Description = 'MKBD Supporting Data'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Supporting Data'
          end>
      end
      item
        Permission = 'MKBD Supporting Report'
        Description = 'MKBD Supporting Report'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Supporting Report'
          end>
      end
      item
        Permission = 'Laporan Report Harian'
        Description = 'Laporan Report Harian'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Laporan Transaksi Harian'
          end>
      end
      item
        Permission = 'Portofolio Detail Report'
        Description = 'Portofolio Detail Report'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Portofolio Detail Report'
          end>
      end
      item
        Permission = 'Exercise Monitoring'
        Description = 'Exercise Monitoring'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Exercise Monitoring'
          end>
      end
      item
        Permission = 'Monthly Statement of Account'
        Description = 'Monthly Statement of Account'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Process Monthly Statement'
          end>
      end
      item
        Permission = '[Change Collateral List].Refresh'
        Description = 'Refresh Change Collareral List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Change Collateral'
          end>
      end
      item
        Permission = '[Change Collateral List].New'
        Description = 'New Change Collateral List'
        PermissionMenus = <>
      end
      item
        Permission = '[Change Collateral List].Edit'
        Description = 'Edit Change Collateral List'
        PermissionMenus = <>
      end
      item
        Permission = '[Change Collateral List].Delete'
        Description = 'Delete Change Collateral List'
        PermissionMenus = <>
      end
      item
        Permission = '[Change Collateral List].Cancel'
        Description = 'Cancel Change Collateral List'
        PermissionMenus = <>
      end
      item
        Permission = '[Change Collateral List].Copy From Selected Data'
        Description = 'Copy From Selected Data Change Collateral List'
        PermissionMenus = <>
      end
      item
        Permission = '[Change Collateral List].View'
        Description = 'View Change Collateral List'
        PermissionMenus = <>
      end
      item
        Permission = '[Change Collateral List].View Approval Data'
        Description = 'View Approval Data Change Collateral List'
        PermissionMenus = <>
      end
      item
        Permission = '[Change Collateral List].Approve'
        Description = 'Approve Change Collateral List'
        PermissionMenus = <>
      end
      item
        Permission = '[Change Collateral List].Reject'
        Description = 'Reject Change Collateral List'
        PermissionMenus = <>
      end
      item
        Permission = 'ReportMarginMKBD'
        Description = 'ReportMarginMKBD'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Margin Report'
          end>
      end
      item
        Permission = 'Fidessa Limit'
        Description = 'Fidessa Limit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Fidessa Limit'
          end>
      end
      item
        Permission = 'Cash Ledger Balance'
        Description = 'Cash Ledger Balance'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Ledger Balance'
          end>
      end
      item
        Permission = 'Stock Ledger Balance'
        Description = 'Stock Ledger Balance'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Ledger Balance'
          end>
      end
      item
        Permission = 'Cash Transaction'
        Description = 'Cash Transaction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Transaction'
          end>
      end
      item
        Permission = 'REPO Settlement'
        Description = 'REPO Settlement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'REPO - Stock Settlement'
          end>
      end
      item
        Permission = 'Renewal Contract Repo'
        Description = 'Renewal Contract Repo'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'REPO - Renewal Contract'
          end>
      end
      item
        Permission = 'BondClosingPrice'
        Description = 'BondClosingPrice'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Close Price'
          end>
      end
      item
        Permission = '[Report Bonds Daily Trade].Edit'
        Description = 'Edit Report Bonds Daily Trade'
        PermissionMenus = <>
      end
      item
        Permission = '[Report Bonds Daily Trade].Cancel'
        Description = 'Cancel Report Bonds Daily Trade'
        PermissionMenus = <>
      end
      item
        Permission = '[Report Bonds Daily Trade].View'
        Description = 'View Report Bonds Daily Trade'
        PermissionMenus = <>
      end
      item
        Permission = '[Instrument].New'
        Description = 'New Instrument'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Instrument'
          end>
      end
      item
        Permission = '[Instrument].Edit'
        Description = 'Edit Instrument'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Instrument'
          end>
      end
      item
        Permission = '[Instrument].Copy From Selected Data'
        Description = 'Copy From Selected Data Instrument'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Instrument'
          end>
      end
      item
        Permission = '[Instrument].View'
        Description = 'View Instrument'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Instrument'
          end>
      end
      item
        Permission = '[Currency].New'
        Description = 'New Currency'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Currency'
          end>
      end
      item
        Permission = '[Currency].Edit'
        Description = 'Edit Currency'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Currency'
          end>
      end
      item
        Permission = '[Currency].Copy From Selected Data'
        Description = 'Copy From Selected Data Currency'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Currency'
          end>
      end
      item
        Permission = '[Currency].View'
        Description = 'View Currency'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Currency'
          end>
      end
      item
        Permission = '[Bussiness Type].New'
        Description = 'New Bussiness Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bussiness Type'
          end>
      end
      item
        Permission = '[Bussiness Type].Edit'
        Description = 'Edit Bussiness Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bussiness Type'
          end>
      end
      item
        Permission = '[Bussiness Type].Copy From Selected Data'
        Description = 'Copy From Selected Data Bussiness Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bussiness Type'
          end>
      end
      item
        Permission = '[Bussiness Type].View'
        Description = 'View Bussiness Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bussiness Type'
          end>
      end
      item
        Permission = '[Account Parameter Class].New'
        Description = 'New Account Parameter Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Param Class'
          end>
      end
      item
        Permission = '[Account Parameter Class].Edit'
        Description = 'Edit Account Parameter Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Param Class'
          end>
      end
      item
        Permission = '[Account Parameter Class].Copy From Selected Data'
        Description = 'Copy From Selected Data Account Parameter Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Param Class'
          end>
      end
      item
        Permission = '[Account Parameter Class].View'
        Description = 'View Account Parameter Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Param Class'
          end>
      end
      item
        Permission = '[Auth Person].New'
        Description = 'New Auth Person'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Authorize Person'
          end>
      end
      item
        Permission = '[Auth Person].Edit'
        Description = 'Edit Auth Person'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Authorize Person'
          end>
      end
      item
        Permission = '[Auth Person].Copy From Selected Data'
        Description = 'Copy From Selected Data Auth Person'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Authorize Person'
          end>
      end
      item
        Permission = '[Auth Person].View'
        Description = 'View Auth Person'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Authorize Person'
          end>
      end
      item
        Permission = '[Bank].New'
        Description = 'New Bank'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank'
          end>
      end
      item
        Permission = '[Bank].Edit'
        Description = 'Edit Bank'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank'
          end>
      end
      item
        Permission = '[Bank].Copy From Selected Data'
        Description = 'Copy From Selected Data Bank'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank'
          end>
      end
      item
        Permission = '[Bank].View'
        Description = 'View Bank'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank'
          end>
      end
      item
        Permission = '[Biro Administrasi Efek].New'
        Description = 'New Biro Administrasi Efek'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Biro Administrasi Efek'
          end>
      end
      item
        Permission = '[Biro Administrasi Efek].Edit'
        Description = 'Edit Biro Administrasi Efek'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Biro Administrasi Efek'
          end>
      end
      item
        Permission = '[Biro Administrasi Efek].Copy From Selected Data'
        Description = 'Copy From Selected Data Biro Administrasi Efek'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Biro Administrasi Efek'
          end>
      end
      item
        Permission = '[Biro Administrasi Efek].View'
        Description = 'View Biro Administrasi Efek'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Biro Administrasi Efek'
          end>
      end
      item
        Permission = '[Board].New'
        Description = 'New Board'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Board'
          end>
      end
      item
        Permission = '[Board].Edit'
        Description = 'Edit Board'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Board'
          end>
      end
      item
        Permission = '[Board].Copy From Selected Data'
        Description = 'Copy From Selected Data Board'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Board'
          end>
      end
      item
        Permission = '[Board].View'
        Description = 'View Board'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Board'
          end>
      end
      item
        Permission = '[Branch].New'
        Description = 'New Branch'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Branch'
          end>
      end
      item
        Permission = '[Branch].Edit'
        Description = 'Edit Branch'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Branch'
          end>
      end
      item
        Permission = '[Branch].Copy From Selected Data'
        Description = 'Copy From Selected Data Branch'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Branch'
          end>
      end
      item
        Permission = '[Branch].View'
        Description = 'View Branch'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Branch'
          end>
      end
      item
        Permission = '[Broker].New'
        Description = 'New Broker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Broker'
          end>
      end
      item
        Permission = '[Broker].Edit'
        Description = 'Edit Broker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Broker'
          end>
      end
      item
        Permission = '[Broker].Copy From Selected Data'
        Description = 'Copy From Selected Data Broker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Broker'
          end>
      end
      item
        Permission = '[Broker].View'
        Description = 'View Broker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Broker'
          end>
      end
      item
        Permission = '[Business Line].New'
        Description = 'New Business Line'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Business Line'
          end>
      end
      item
        Permission = '[Business Line].Edit'
        Description = 'Edit Business Line'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Business Line'
          end>
      end
      item
        Permission = '[Business Line].Copy From Selected Data'
        Description = 'Copy From Selected Data Business Line'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Business Line'
          end>
      end
      item
        Permission = '[Business Line].View'
        Description = 'View Business Line'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Business Line'
          end>
      end
      item
        Permission = '[Channel].New'
        Description = 'New Channel'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Channel'
          end>
      end
      item
        Permission = '[Channel].Edit'
        Description = 'Edit Channel'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Channel'
          end>
      end
      item
        Permission = '[Channel].Copy From Selected Data'
        Description = 'Copy From Selected Data Channel'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Channel'
          end>
      end
      item
        Permission = '[Channel].View'
        Description = 'View Channel'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Channel'
          end>
      end
      item
        Permission = '[Charge].New'
        Description = 'New Charge'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Charge'
          end>
      end
      item
        Permission = '[Charge].Edit'
        Description = 'Edit Charge'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Charge'
          end>
      end
      item
        Permission = '[Charge].Copy From Selected Data'
        Description = 'Copy From Selected Data Charge'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Charge'
          end>
      end
      item
        Permission = '[Charge].View'
        Description = 'View Charge'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Charge'
          end>
      end
      item
        Permission = '[Charge Table].New'
        Description = 'New Charge Table'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Charge Table'
          end>
      end
      item
        Permission = '[Charge Table].Edit'
        Description = 'Edit Charge Table'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Charge Table'
          end>
      end
      item
        Permission = '[Charge Table].Copy From Selected Data'
        Description = 'Copy From Selected Data Charge Table'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Charge Table'
          end>
      end
      item
        Permission = '[Charge Table].View'
        Description = 'View Charge Table'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Charge Table'
          end>
      end
      item
        Permission = '[City].New'
        Description = 'New City'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'City'
          end>
      end
      item
        Permission = '[City].Edit'
        Description = 'Edit City'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'City'
          end>
      end
      item
        Permission = '[City].Copy From Selected Data'
        Description = 'Copy From Selected Data City'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'City'
          end>
      end
      item
        Permission = '[City].View'
        Description = 'View City'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'City'
          end>
      end
      item
        Permission = '[Commission].New'
        Description = 'New Commission'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Commission'
          end>
      end
      item
        Permission = '[Commission].Edit'
        Description = 'Edit Commission'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Commission'
          end>
      end
      item
        Permission = '[Commission].Copy From Selected Data'
        Description = 'Copy From Selected Data Commission'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Commission'
          end>
      end
      item
        Permission = '[Commission].View'
        Description = 'View Commission'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Commission'
          end>
      end
      item
        Permission = '[Commission Table].New'
        Description = 'New Commission Table'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Commission Table'
          end>
      end
      item
        Permission = '[Commission Table].Edit'
        Description = 'Edit Commission Table'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Commission Table'
          end>
      end
      item
        Permission = '[Commission Table].Copy From Selected Data'
        Description = 'Copy From Selected Data Commission Table'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Commission Table'
          end>
      end
      item
        Permission = '[Commission Table].View'
        Description = 'View Commission Table'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Commission Table'
          end>
      end
      item
        Permission = '[Country].New'
        Description = 'New Country'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Country'
          end>
      end
      item
        Permission = '[Country].Edit'
        Description = 'Edit Country'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Country'
          end>
      end
      item
        Permission = '[Country].Copy From Selected Data'
        Description = 'Copy From Selected Data Country'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Country'
          end>
      end
      item
        Permission = '[Country].View'
        Description = 'View Country'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Country'
          end>
      end
      item
        Permission = '[Credit Limit Class].New'
        Description = 'New Credit Limit Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Credit Limit Class'
          end>
      end
      item
        Permission = '[Credit Limit Class].Edit'
        Description = 'Edit Credit Limit Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Credit Limit Class'
          end>
      end
      item
        Permission = '[Credit Limit Class].Copy From Selected Data'
        Description = 'Copy From Selected Data Credit Limit Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Credit Limit Class'
          end>
      end
      item
        Permission = '[Credit Limit Class].View'
        Description = 'View Credit Limit Class'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Credit Limit Class'
          end>
      end
      item
        Permission = '[Custody].New'
        Description = 'New Custody'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Custody'
          end>
      end
      item
        Permission = '[Custody].Edit'
        Description = 'Edit Custody'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Custody'
          end>
      end
      item
        Permission = '[Custody].Copy From Selected Data'
        Description = 'Copy From Selected Data Custody'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Custody'
          end>
      end
      item
        Permission = '[Custody].View'
        Description = 'View Custody'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Custody'
          end>
      end
      item
        Permission = '[Dealer].New'
        Description = 'New Dealer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Dealer'
          end>
      end
      item
        Permission = '[Dealer].Edit'
        Description = 'Edit Dealer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Dealer'
          end>
      end
      item
        Permission = '[Dealer].Copy From Selected Data'
        Description = 'Copy From Selected Data Dealer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Dealer'
          end>
      end
      item
        Permission = '[Dealer].View'
        Description = 'View Dealer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Dealer'
          end>
      end
      item
        Permission = '[Instrument Type].New'
        Description = 'New Instrument Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Instrument Type'
          end>
      end
      item
        Permission = '[Instrument Type].Edit'
        Description = 'Edit Instrument Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Instrument Type'
          end>
      end
      item
        Permission = '[Instrument Type].Copy From Selected Data'
        Description = 'Copy From Selected Data Instrument Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Instrument Type'
          end>
      end
      item
        Permission = '[Instrument Type].View'
        Description = 'View Instrument Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Instrument Type'
          end>
      end
      item
        Permission = '[Interest].New'
        Description = 'New Interest'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Interest'
          end>
      end
      item
        Permission = '[Interest].Edit'
        Description = 'Edit Interest'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Interest'
          end>
      end
      item
        Permission = '[Interest].Copy From Selected Data'
        Description = 'Copy From Selected Data Interest'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Interest'
          end>
      end
      item
        Permission = '[Interest].View'
        Description = 'View Interest'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Interest'
          end>
      end
      item
        Permission = '[Interest Table].New'
        Description = 'New Interest Table'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Interest Table'
          end>
      end
      item
        Permission = '[Interest Table].Edit'
        Description = 'Edit Interest Table'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Interest Table'
          end>
      end
      item
        Permission = '[Interest Table].Copy From Selected Data'
        Description = 'Copy From Selected Data Interest Table'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Interest Table'
          end>
      end
      item
        Permission = '[Interest Table].View'
        Description = 'View Interest Table'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Interest Table'
          end>
      end
      item
        Permission = '[Holiday].New'
        Description = 'New Holiday'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'List of Holiday'
          end>
      end
      item
        Permission = '[Holiday].Edit'
        Description = 'Edit Holiday'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'List of Holiday'
          end>
      end
      item
        Permission = '[Holiday].Copy From Selected Data'
        Description = 'Copy From Selected Data Holiday'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'List of Holiday'
          end>
      end
      item
        Permission = '[Holiday].View'
        Description = 'View Holiday'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'List of Holiday'
          end>
      end
      item
        Permission = '[Market].New'
        Description = 'New Market'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Market'
          end>
      end
      item
        Permission = '[Market].Edit'
        Description = 'Edit Market'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Market'
          end>
      end
      item
        Permission = '[Market].Copy From Selected Data'
        Description = 'Copy From Selected Data Market'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Market'
          end>
      end
      item
        Permission = '[Market].View'
        Description = 'View Market'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Market'
          end>
      end
      item
        Permission = '[Product].New'
        Description = 'New Product'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Product'
          end>
      end
      item
        Permission = '[Product].Edit'
        Description = 'Edit Product'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Product'
          end>
      end
      item
        Permission = '[Product].Copy From Selected Data'
        Description = 'Copy From Selected Data Product'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Product'
          end>
      end
      item
        Permission = '[Product].View'
        Description = 'View Product'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Product'
          end>
      end
      item
        Permission = '[Product Type].New'
        Description = 'New Product Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Product Type'
          end>
      end
      item
        Permission = '[Product Type].Edit'
        Description = 'Edit Product Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Product Type'
          end>
      end
      item
        Permission = '[Product Type].Copy From Selected Data'
        Description = 'Copy From Selected Data Product Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Product Type'
          end>
      end
      item
        Permission = '[Product Type].View'
        Description = 'View Product Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Product Type'
          end>
      end
      item
        Permission = '[Province].New'
        Description = 'New Province'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Province'
          end>
      end
      item
        Permission = '[Province].Edit'
        Description = 'Edit Province'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Province'
          end>
      end
      item
        Permission = '[Province].Copy From Selected Data'
        Description = 'Copy From Selected Data Province'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Province'
          end>
      end
      item
        Permission = '[Province].View'
        Description = 'View Province'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Province'
          end>
      end
      item
        Permission = '[Sales].New'
        Description = 'New Sales'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Sales'
          end>
      end
      item
        Permission = '[Sales].Edit'
        Description = 'Edit Sales'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Sales'
          end>
      end
      item
        Permission = '[Sales].Copy From Selected Data'
        Description = 'Copy From Selected Data Sales'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Sales'
          end>
      end
      item
        Permission = '[Sales].View'
        Description = 'View Sales'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Sales'
          end>
      end
      item
        Permission = '[Sales Agent].New'
        Description = 'New Sales Agent'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Sales Agent'
          end>
      end
      item
        Permission = '[Sales Agent].Edit'
        Description = 'Edit Sales Agent'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Sales Agent'
          end>
      end
      item
        Permission = '[Sales Agent].Copy From Selected Data'
        Description = 'Copy From Selected Data Sales Agent'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Sales Agent'
          end>
      end
      item
        Permission = '[Sales Agent].View'
        Description = 'View Sales Agent'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Sales Agent'
          end>
      end
      item
        Permission = '[Tax Invoice Office].New'
        Description = 'New Tax Invoice Office'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Office Number'
          end>
      end
      item
        Permission = '[Tax Invoice Office].Edit'
        Description = 'Edit Tax Invoice Office'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Office Number'
          end>
      end
      item
        Permission = '[Tax Invoice Office].Copy From Selected Data'
        Description = 'Copy From Selected Data Tax Invoice Office'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Office Number'
          end>
      end
      item
        Permission = '[Tax Invoice Office].View'
        Description = 'View Tax Invoice Office'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Office Number'
          end>
      end
      item
        Permission = 'User Configuration'
        Description = 'User Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'User Configuration'
          end>
      end
      item
        Permission = 'Approval History'
        Description = 'Approval History'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Approval History'
          end>
      end
      item
        Permission = 'Batch Process Configuration'
        Description = 'Batch Process Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Batch Process Configuration'
          end>
      end
      item
        Permission = 'Group Admin'
        Description = 'Group Admin'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Group Admin'
          end>
      end
      item
        Permission = 'User Activity'
        Description = 'User Activity'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'User Activity'
          end>
      end
      item
        Permission = 'User Data Owner'
        Description = 'User Data Owner'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'User Data Owner'
          end>
      end
      item
        Permission = 'User Monitoring'
        Description = 'User Monitoring'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'User Monitoring'
          end>
      end
      item
        Permission = '[Company Bank].New'
        Description = 'New Company Bank'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Company Bank'
          end>
      end
      item
        Permission = '[Company Bank].Edit'
        Description = 'Edit Company Bank'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Company Bank'
          end>
      end
      item
        Permission = '[Company Bank].Copy From Selected Data'
        Description = 'Copy From Selected Data Company Bank'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Company Bank'
          end>
      end
      item
        Permission = '[Company Bank].View'
        Description = 'View Company Bank'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Company Bank'
          end>
      end
      item
        Permission = 'Daily Bank Instruction'
        Description = 'Daily Bank Instruction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Bank Instruction'
          end>
      end
      item
        Permission = '[Cash Deposit RDN].Edit'
        Description = 'Edit Cash Deposit RDN'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit RDN'
          end>
      end
      item
        Permission = '[Cash Deposit RDN].Copy From Selected Data'
        Description = 'Copy From Selected Data Cash Deposit RDN'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit RDN'
          end>
      end
      item
        Permission = '[Cash Deposit RDN].View'
        Description = 'View Cash Deposit RDN'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit RDN'
          end>
      end
      item
        Permission = '[Cash Book].Edit'
        Description = 'Edit Cash Book'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Book'
          end>
      end
      item
        Permission = '[Cash Book].Copy From Selected Data'
        Description = 'Copy From Selected Data Cash Book'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Book'
          end>
      end
      item
        Permission = '[Cash Book].View'
        Description = 'View Cash Book'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Book'
          end>
      end
      item
        Permission = 'DHK Reconcile'
        Description = 'DHK Reconcile'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'DHK Reconcile'
          end>
      end
      item
        Permission = '[Cash Debet/Credit Notes].New'
        Description = 'New Cash Debet/Credit Notes'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Debet/Credit Notes'
          end>
      end
      item
        Permission = '[Cash Debet/Credit Notes].View'
        Description = 'View Cash Debet/Credit Notes'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Debet/Credit Notes'
          end>
      end
      item
        Permission = '[GL Type].New'
        Description = 'New GL Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'GL Type'
          end>
      end
      item
        Permission = '[GL Type].Copy From Selected Data'
        Description = 'Copy From Selected Data GL Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'GL Type'
          end>
      end
      item
        Permission = '[GL Type].View'
        Description = 'View GL Type'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'GL Type'
          end>
      end
      item
        Permission = '[Referral].New'
        Description = 'New Referral'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Referral'
          end>
      end
      item
        Permission = '[Referral].Edit'
        Description = 'Edit Referral'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Referral'
          end>
      end
      item
        Permission = '[Referral].Copy From Selected Data'
        Description = 'Copy From Selected Data Referral'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Referral'
          end>
      end
      item
        Permission = '[Referral].View'
        Description = 'View Referral'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Referral'
          end>
      end
      item
        Permission = '[Commission Share].New'
        Description = 'New Commission Share'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Commission Share'
          end>
      end
      item
        Permission = '[Commission Share].Edit'
        Description = 'Edit Commission Share'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Commission Share'
          end>
      end
      item
        Permission = '[Commission Share].Copy From Selected Data'
        Description = 'Copy From Selected Data Commission Share'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Commission Share'
          end>
      end
      item
        Permission = '[Commission Share].View'
        Description = 'View Commission Share'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Commission Share'
          end>
      end
      item
        Permission = '[Daily Stock Settlement Voucher].Create Cash Voucher'
        Description = 'Create Cash Voucher Daily Stock Settlement Voucher'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Stock Settlement Voucher'
          end>
      end
      item
        Permission = '[Referral Group].New'
        Description = 'New Referral Group'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Referral Group'
          end>
      end
      item
        Permission = '[Referral Group].Edit'
        Description = 'Edit Referral Group'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Referral Group'
          end>
      end
      item
        Permission = '[Referral Group].Copy From Selected Data'
        Description = 'Copy From Selected Data Referral Group'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Referral Group'
          end>
      end
      item
        Permission = '[Referral Group].View'
        Description = 'View Referral Group'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Referral Group'
          end>
      end
      item
        Permission = '[MTI Transaction].New'
        Description = 'New MTI Transaction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'MTI Transaction'
          end>
      end
      item
        Permission = '[MTI Transaction].Edit'
        Description = 'Edit MTI Transaction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'MTI Transaction'
          end>
      end
      item
        Permission = '[MTI Transaction].Copy From Selected Data'
        Description = 'Copy From Selected Data MTI Transaction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'MTI Transaction'
          end>
      end
      item
        Permission = '[MTI Transaction].View'
        Description = 'View MTI Transaction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'MTI Transaction'
          end>
      end
      item
        Permission = '[MTI Records].New'
        Description = 'New MTI Records'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'MTI Record'
          end>
      end
      item
        Permission = '[MTI Records].Edit'
        Description = 'Edit MTI Records'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'MTI Record'
          end>
      end
      item
        Permission = '[MTI Records].Copy From Selected Data'
        Description = 'Copy From Selected Data MTI Records'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'MTI Record'
          end>
      end
      item
        Permission = '[MTI Records].View'
        Description = 'View MTI Records'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'MTI Record'
          end>
      end
      item
        Permission = '[MTI File Configuration].New'
        Description = 'New MTI File Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'MTI File Configuration'
          end>
      end
      item
        Permission = '[MTI File Configuration].Edit'
        Description = 'Edit MTI File Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'MTI File Configuration'
          end>
      end
      item
        Permission = '[MTI File Configuration].Copy From Selected Data'
        Description = 'Copy From Selected Data MTI File Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'MTI File Configuration'
          end>
      end
      item
        Permission = '[MTI File Configuration].View'
        Description = 'View MTI File Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'MTI File Configuration'
          end>
      end
      item
        Permission = '[Account Omgeo Configuration].Set Omgeo Configuration'
        Description = 'Set Omgeo Configuration Account Omgeo Configuration'
        PermissionMenus = <>
      end
      item
        Permission = 'MarginAlert'
        Description = 'MarginAlert'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Margin Alert'
          end>
      end
      item
        Permission = 'FidessaCreditLimit'
        Description = 'FidessaCreditLimit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Fidessa  Credit Limit'
          end>
      end
      item
        Permission = 'Stock Haircut Import'
        Description = 'Stock Haircut Import'
        PermissionMenus = <>
      end
      item
        Permission = 'Contract Trade'
        Description = 'Contract Trade'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Contract Trade'
          end>
      end
      item
        Permission = 'Credit Control'
        Description = 'Credit Control'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'REPO - Create New Contract'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'REPO - Change Collateral'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'REPO - Renewal Contract'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'REPO - Stock Settlement'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'REPO - Monitoring'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Margin Alert'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Margin Monitoring'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Fidessa - Credit Limit'
          end>
      end
      item
        Permission = 'Accounting'
        Description = 'Accounting'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Exchange Rate'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Input'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Trade Posting (Automatic Journal)'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Haircut Import'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Fixed Asset Group'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Fixed Asset'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Fixed Asset - Depreciation Table'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Invoice'
          end>
      end
      item
        Permission = 'Regulator Report Process'
        Description = 'Regulator Report Process'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'NAWC - Check Different Value'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'NAWC - Daily Generate Process'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'NAWC - Daily Report'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'NAWC - MKB Create Report'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Monthly Report (VD55)'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Margin Report'
          end>
      end
      item
        Permission = 'Finance'
        Description = 'Finance'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'RDN Bank Reconcile'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit Company Bank'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Withdraw RDN / Company Bank'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Debet/Credit Notes'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Movement RDN / Company Bank'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Settlement Voucher'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Settlement'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Interest Transaction'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Fund Ledger Journal Entry'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit RDN'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Bank Instruction'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'OTC Settlement List'
          end>
      end
      item
        Permission = 'Account Management'
        Description = 'Account Management'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Entity Information'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Information'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Dorman'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Suspend Process'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Closing Account Process'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Suspend Activing'
          end>
      end
      item
        Permission = 'Settlement & Custody'
        Description = 'Settlement & Custody'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'DHK Reconcile'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Reconcile'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Settlement'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Settlement Voucher'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'CBest Instruction'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Deposit'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Movement'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Lending && Borrowing Contract'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Alternate Cash Settlement (ACS)'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Securities Journal Entry'
          end>
      end
      item
        Permission = '[Employee].New'
        Description = 'New Employee'
        PermissionMenus = <>
      end
      item
        Permission = '[Employee].Edit'
        Description = 'Edit Employee'
        PermissionMenus = <>
      end
      item
        Permission = '[Employee].Copy From Selected Data'
        Description = 'Copy From Selected Data Employee'
        PermissionMenus = <>
      end
      item
        Permission = '[Employee].View'
        Description = 'View Employee'
        PermissionMenus = <>
      end
      item
        Permission = '[Project].Edit'
        Description = 'Edit Project'
        PermissionMenus = <>
      end
      item
        Permission = '[Project].Copy From Selected Data'
        Description = 'Copy From Selected Data Project'
        PermissionMenus = <>
      end
      item
        Permission = '[Project].View'
        Description = 'View Project'
        PermissionMenus = <>
      end
      item
        Permission = '[Project].New'
        Description = 'New Project'
        PermissionMenus = <>
      end
      item
        Permission = '[Deal Ticket].View'
        Description = 'View Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Posting All'
        Description = 'Posting All Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Merge'
        Description = 'Merge Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Make Facilitation Trade'
        Description = 'Make Facilitation Trade Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Make Warehouse Trade'
        Description = 'Make Warehouse Trade Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Make Crossing Tomorrow Trade'
        Description = 'Make Crossing Tomorrow Trade Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Selected Process'
        Description = 'Selected Process Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = '[Deal Ticket].Book Out Warehouse Trade'
        Description = 'Book Out Warehouse Trade Deal Ticket'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = 'Global Param Editor'
        Description = 'Global Param Editor'
        PermissionMenus = <>
      end
      item
        Permission = 'Omgeo Account Config'
        Description = 'Omgeo Account Config'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Omgeo - Account Omgeo Config'
          end>
      end
      item
        Permission = 'S-Invest Process Upload'
        Description = 'S-Invest Process Upload'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'S-Invest - Generate File Upload'
          end>
      end
      item
        Permission = 'S-Invest Trade Allocation'
        Description = 'S-Invest Trade Allocation'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'S-Invest - Trade Allocation'
          end>
      end
      item
        Permission = 'Portfoio Revaluation'
        Description = 'Portfoio Revaluation'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Portfolio Revaluation'
          end>
      end
      item
        Permission = 'Generate Daily Transaction Report'
        Description = 'Generate Daily Transaction Report'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Generate Daily Transaction Report'
          end>
      end
      item
        Permission = 'Next Of Year Process'
        Description = 'Next Of Year Process'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Next Of Year Process'
          end>
      end
      item
        Permission = 'RDN Bank Reconcile'
        Description = 'RDN Bank Reconcile'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'RDN Bank Reconcile'
          end>
      end
      item
        Permission = 'Account Dorman'
        Description = 'Account Dorman'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Dorman'
          end>
      end
      item
        Permission = 'Email Blast Customer'
        Description = 'Email Blast Customer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Email Blast Customers'
          end>
      end
      item
        Permission = 'Stock Position'
        Description = 'Stock Position'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Position'
          end>
      end
      item
        Permission = 'Cash Position'
        Description = 'Cash Position'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Position'
          end>
      end
      item
        Permission = 'Corporate Action Exercise'
        Description = 'Corporate Action Exercise'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Corporate Action Exercise'
          end>
      end
      item
        Permission = 'Corporate Action Entitlement'
        Description = 'Corporate Action Entitlement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Corporate Action Entitlement'
          end>
      end
      item
        Permission = 'Compare Cash Balance Position'
        Description = 'Compare Cash Balance Position'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Compare Cash Balance Position'
          end>
      end
      item
        Permission = 'Generate Reconcile ACT'
        Description = 'Generate Reconcile ACT'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Generate Reconcile ACT && Bal'
          end>
      end
      item
        Permission = 'E-IPO Data'
        Description = 'E-IPO Data'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'E-IPO'
          end>
      end
      item
        Permission = 'e-IPO Allotment'
        Description = 'e-IPO Allotment'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'e-IPO Allotment'
          end>
      end
      item
        Permission = 'Journal Bank Manual Add'
        Description = 'Journal Bank Manual Add'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Bank Manual'
          end>
      end
      item
        Permission = 'Journal Bank Manual Edit'
        Description = 'Journal Bank Manual Edit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Bank Manual'
          end>
      end
      item
        Permission = 'Journal Bank Manual Open'
        Description = 'Journal Bank Manual Open'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Bank Manual'
          end>
      end
      item
        Permission = 'S-Invest Recon'
        Description = 'S-Invest Recon'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'S-Invest Recon'
          end>
      end
      item
        Permission = 'Dealticket Cancell All'
        Description = 'Dealticket Cancell All'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = 'Dealticket Cancell Selected'
        Description = 'Dealticket Cancell Selected'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deal Tickets'
          end>
      end
      item
        Permission = 'S-Invest Recon TC'
        Description = 'S-Invest Recon TC'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'S-Invest Recon TC'
          end>
      end
      item
        Permission = 'Facilitation Trade'
        Description = 'Facilitation Trade'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Facilitation Trade'
          end>
      end
      item
        Permission = 'Closing Price'
        Description = 'Closing Price'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Closing Price (Stock Summary)'
          end>
      end
      item
        Permission = 'Crossing / Nego Tomorrow'
        Description = 'Crossing / Nego Tomorrow'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Crossing / Nego Tomorrow'
          end>
      end
      item
        Permission = 'FO Daily Trade'
        Description = 'FO Daily Trade'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'FO Daily Trade'
          end>
      end
      item
        Permission = 'Import DTE'
        Description = 'Import DTE'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Import DTE'
          end>
      end
      item
        Permission = 'Reconcile DTE'
        Description = 'Reconcile DTE'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reconcile DTE'
          end>
      end
      item
        Permission = 'Ware House Trade'
        Description = 'Ware House Trade'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Warehouse Trade'
          end>
      end
      item
        Permission = 'Change Board Facilitation'
        Description = 'Change Board Facilitation'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Facilitation Trade'
          end>
      end
      item
        Permission = 'MO Contract Trade View'
        Description = 'MO Contract Trade View'
        PermissionMenus = <>
      end
      item
        Permission = 'MO Contract Trade Edit'
        Description = 'MO Contract Trade Edit'
        PermissionMenus = <>
      end
      item
        Permission = 'MO Contract Trade Generate File'
        Description = 'MO Contract Trade Generate File'
        PermissionMenus = <>
      end
      item
        Permission = 'MO Contract Trade Close'
        Description = 'MO Contract Trade Close'
        PermissionMenus = <>
      end
      item
        Permission = 'MO Contract Trade Cancel Contract'
        Description = 'MO Contract Trade Cancel Contract'
        PermissionMenus = <>
      end
      item
        Permission = 'MO Contract Trade Reverse Contract'
        Description = 'MO Contract Trade Reverse Contract'
        PermissionMenus = <>
      end
      item
        Permission = 'MO Contract Trade Send Email'
        Description = 'MO Contract Trade Send Email'
        PermissionMenus = <>
      end
      item
        Permission = 'MO Contract Trade View Contract File'
        Description = 'MO Contract Trade View Contract File'
        PermissionMenus = <>
      end
      item
        Permission = 'MO Contract Trade Send Mail Contract'
        Description = 'MO Contract Trade Send Mail Contract'
        PermissionMenus = <>
      end
      item
        Permission = 'MO Contract Trade Send TC For Stamping'
        Description = 'MO Contract Trade Send TC For Stamping'
        PermissionMenus = <>
      end
      item
        Permission = 'MO Contract Trade Recalculate Min Fee'
        Description = 'MO Contract Trade Recalculate Min Fee'
        PermissionMenus = <>
      end
      item
        Permission = 'MO Contract Trade Settlement Instruction'
        Description = 'MO Contract Trade Settlement Instruction'
        PermissionMenus = <>
      end
      item
        Permission = 'MO Contract Trade Delete'
        Description = 'MO Contract Trade Delete'
        PermissionMenus = <>
      end
      item
        Permission = 'MO Contract Trade Gen SInv Trade Detail'
        Description = 'MO Contract Trade Gen SInv Trade Detail'
        PermissionMenus = <>
      end
      item
        Permission = 'MO Contract Trade Gen SInv Trade Conf'
        Description = 'MO Contract Trade Gen SInv Trade Conf'
        PermissionMenus = <>
      end
      item
        Permission = 'SInvest Monitoring Generate Confirm txt'
        Description = 'SInvest Monitoring Generate Confirm txt'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'SInvest Monitoring'
          end>
      end
      item
        Permission = 'SInvest Monitoring Generate Confirm csv'
        Description = 'SInvest Monitoring Generate Confirm csv'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'SInvest Monitoring'
          end>
      end
      item
        Permission = 'SInvest Monitoring Generate Detail txt'
        Description = 'SInvest Monitoring Generate Detail txt'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'SInvest Monitoring'
          end>
      end
      item
        Permission = 'SInvest Monitoring Generate Detail csv'
        Description = 'SInvest Monitoring Generate Detail csv'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'SInvest Monitoring'
          end>
      end
      item
        Permission = 'SLIK Interface'
        Description = 'SLIK Interface'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'SLIK Inteface'
          end>
      end
      item
        Permission = 'SLIK Interface Generate Data'
        Description = 'SLIK Interface Generate Data'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'SLIK Inteface'
          end>
      end
      item
        Permission = 'SLIK Interface Save Data'
        Description = 'SLIK Interface Save Data'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'SLIK Inteface'
          end>
      end
      item
        Permission = 'GL Interface'
        Description = 'GL Interface'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'GL Interface'
          end>
      end
      item
        Permission = 'S-Invest AutoSplit'
        Description = 'S-Invest AutoSplit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'S-Invest AutoSplit'
          end>
      end
      item
        Permission = 'S-Invest AutoSplit Generate'
        Description = 'S-Invest AutoSplit Generate'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'S-Invest AutoSplit'
          end>
      end
      item
        Permission = 'Cash Deposit Cancel'
        Description = 'Cash Deposit Cancel'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit Company Bank'
          end>
      end
      item
        Permission = 'Cash Deposit Post'
        Description = 'Cash Deposit Post'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit Company Bank'
          end>
      end
      item
        Permission = 'Cash Deposit Reverse'
        Description = 'Cash Deposit Reverse'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit Company Bank'
          end>
      end
      item
        Permission = 'Daily Interest Outstanding Viewer'
        Description = 'Daily Interest Outstanding Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Interest Outstanding'
          end>
      end
      item
        Permission = 'Daily Interest Outstanding Change Interest Rate'
        Description = 'Daily Interest Outstanding Change Interest Rate'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Interest Outstanding'
          end>
      end
      item
        Permission = 'Daily Interest Outstanding Principalize Interest'
        Description = 'Daily Interest Outstanding Principalize Interest'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Interest Outstanding'
          end>
      end
      item
        Permission = 'Daily Interest Outstanding Principalize Penalty'
        Description = 'Daily Interest Outstanding Principalize Penalty'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Interest Outstanding'
          end>
      end
      item
        Permission = 'Daily Interest Outstanding Wave Interest'
        Description = 'Daily Interest Outstanding Wave Interest'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Interest Outstanding'
          end>
      end
      item
        Permission = 'Daily Interest Outstanding Wave Penalty'
        Description = 'Daily Interest Outstanding Wave Penalty'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Interest Outstanding'
          end>
      end
      item
        Permission = 'Invoice Interest Viewer'
        Description = 'Invoice Interest Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Invoice Interest'
          end>
      end
      item
        Permission = 'Invoice Interest Canceler'
        Description = 'Invoice Interest Canceler'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Invoice Interest'
          end>
      end
      item
        Permission = 'Wave Interest Interest Penalty Viewer'
        Description = 'Wave Interest Interest Penalty Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Wave Interest & Penalty'
          end>
      end
      item
        Permission = 'Wave Interest Interest Penalty Canceler'
        Description = 'Wave Interest Interest Penalty Canceler'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Wave Interest & Penalty'
          end>
      end
      item
        Permission = 'Cash Withdraw Maker'
        Description = 'Cash Withdraw Maker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Withdraw RDN / Company Bank'
          end>
      end
      item
        Permission = 'Cash Withdraw Viewer'
        Description = 'Cash Withdraw Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Withdraw RDN / Company Bank'
          end>
      end
      item
        Permission = 'Cash Withdraw Approve'
        Description = 'Cash Withdraw Approve'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Withdraw RDN / Company Bank'
          end>
      end
      item
        Permission = 'Cash Withdraw Post'
        Description = 'Cash Withdraw Post'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Withdraw RDN / Company Bank'
          end>
      end
      item
        Permission = 'Cash Withdraw Cancel'
        Description = 'Cash Withdraw Cancel'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Withdraw RDN / Company Bank'
          end>
      end
      item
        Permission = 'Cash Withdraw Reverse'
        Description = 'Cash Withdraw Reverse'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Withdraw RDN / Company Bank'
          end>
      end
      item
        Permission = 'Daily Instruction Viewer'
        Description = 'Daily Instruction Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Instruction'
          end>
      end
      item
        Permission = 'Daily Instruction Maker'
        Description = 'Daily Instruction Maker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Instruction'
          end>
      end
      item
        Permission = 'Daily Instruction Generate XML'
        Description = 'Daily Instruction Generate XML'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Instruction'
          end>
      end
      item
        Permission = 'Daily Instruction Generate XLS'
        Description = 'Daily Instruction Generate XLS'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Instruction'
          end>
      end
      item
        Permission = 'Daily Instruction Cancel Instruction'
        Description = 'Daily Instruction Cancel Instruction'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Instruction'
          end>
      end
      item
        Permission = 'Cash Movement Viewer'
        Description = 'Cash Movement Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Movement RDN / Company Bank'
          end>
      end
      item
        Permission = 'Cash Movement Maker'
        Description = 'Cash Movement Maker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Movement RDN / Company Bank'
          end>
      end
      item
        Permission = 'Cash Movement Approver'
        Description = 'Cash Movement Approver'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Movement RDN / Company Bank'
          end>
      end
      item
        Permission = 'Cash Movement Poster'
        Description = 'Cash Movement Poster'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Movement RDN / Company Bank'
          end>
      end
      item
        Permission = 'Cash Movement Canceler'
        Description = 'Cash Movement Canceler'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Movement RDN / Company Bank'
          end>
      end
      item
        Permission = 'Cash Movement Reverser'
        Description = 'Cash Movement Reverser'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Movement RDN / Company Bank'
          end>
      end
      item
        Permission = 'Corporate Action Exercise Viewer'
        Description = 'Corporate Action Exercise Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Corporate Action Exercise'
          end>
      end
      item
        Permission = 'Corporate Action Exercise Processor'
        Description = 'Corporate Action Exercise Processor'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Corporate Action Exercise'
          end>
      end
      item
        Permission = 'Corporate Action Exercise Distributor'
        Description = 'Corporate Action Exercise Distributor'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Corporate Action Exercise'
          end>
      end
      item
        Permission = 'Corporate Action Exercise Canceler'
        Description = 'Corporate Action Exercise Canceler'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Corporate Action Exercise'
          end>
      end
      item
        Permission = 'Corporate Action Exercise Reverser'
        Description = 'Corporate Action Exercise Reverser'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Corporate Action Exercise'
          end>
      end
      item
        Permission = 'Corporate Action Exercise Upload'
        Description = 'Corporate Action Exercise Upload'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Corporate Action Exercise'
          end>
      end
      item
        Permission = 'Alternate Cash Settlement Viewer'
        Description = 'Alternate Cash Settlement Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Alternate Cash Settlement'
          end>
      end
      item
        Permission = 'Alternate Cash Settlement Creator'
        Description = 'Alternate Cash Settlement Creator'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Alternate Cash Settlement'
          end>
      end
      item
        Permission = 'Alternate Cash Settlement Poster'
        Description = 'Alternate Cash Settlement Poster'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Alternate Cash Settlement'
          end>
      end
      item
        Permission = 'Alternate Cash Settlement Canceler'
        Description = 'Alternate Cash Settlement Canceler'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Alternate Cash Settlement'
          end>
      end
      item
        Permission = 'Alternate Cash Settlement Reverser'
        Description = 'Alternate Cash Settlement Reverser'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Alternate Cash Settlement'
          end>
      end
      item
        Permission = 'AML Condition Parameter'
        Description = 'AML Condition Parameter'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Condition Parameter'
          end>
      end
      item
        Permission = 'Verdhana OMS Institution Viewer'
        Description = 'Verdhana OMS Institution Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Data OMS Institution Verdhana'
          end>
      end
      item
        Permission = 'Verdhana OMS Institution Uploader'
        Description = 'Verdhana OMS Institution Uploader'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Data OMS Institution Verdhana'
          end>
      end
      item
        Permission = 'Report Geneator Monitoring Viewer'
        Description = 'Report Geneator Monitoring Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Generator Monitoring'
          end>
      end
      item
        Permission = 'Report Geneator Monitoring Validator'
        Description = 'Report Geneator Monitoring Validator'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Generator Monitoring'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Generate History'
          end>
      end
      item
        Permission = 'Report Geneator Monitoring History'
        Description = 'Report Geneator Monitoring History'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Generate History'
          end>
      end
      item
        Permission = 'Report Geneator Monitoring Generator'
        Description = 'Report Geneator Monitoring Generator'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report Generator Monitoring'
          end>
      end
      item
        Permission = 'Anti Money Laundring Summary'
        Description = 'Anti Money Laundring Summary'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Anti Money Laundring Summary'
          end>
      end
      item
        Permission = 'Anti Money Laundring List'
        Description = 'Anti Money Laundring List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Anti Money Laundring List'
          end>
      end
      item
        Permission = 'E Materai Monitoring Viewer'
        Description = 'E Materai Monitoring Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'E-Materai Monitoring'
          end>
      end
      item
        Permission = 'EMaterai Config'
        Description = 'EMaterai Config'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'E-Materai Config'
          end>
      end
      item
        Permission = 'Stock Withdraw Viewer'
        Description = 'Stock Withdraw Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = 'Stock Withdraw Maker'
        Description = 'Stock Withdraw Maker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = 'Stock Withdraw Approver'
        Description = 'Stock Withdraw Approver'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = 'Stock Withdraw Poster'
        Description = 'Stock Withdraw Poster'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = 'Stock Withdraw Reverser'
        Description = 'Stock Withdraw Reverser'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw'
          end>
      end
      item
        Permission = 'Monthly XE13 Report'
        Description = 'Monthly XE13 Report'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Monthly XE13 Report'
          end>
      end
      item
        Permission = 'Monthly XE13 Report Editor'
        Description = 'Monthly XE13 Report Editor'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Monthly XE13 Report'
          end>
      end
      item
        Permission = 'Deposito Bank Viewer'
        Description = 'Deposito Bank Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deposito Bank'
          end>
      end
      item
        Permission = 'Deposito Bank Maker'
        Description = 'Deposito Bank Maker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deposito Bank'
          end>
      end
      item
        Permission = 'ACT Reconcile'
        Description = 'ACT Reconcile'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'ACT Reconcile'
          end>
      end
      item
        Permission = 'Daily Instruction Generate Cash Settle Deposit'
        Description = 'Daily Instruction Generate Cash Settle Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Instruction'
          end>
      end
      item
        Permission = 'Daily Instruction Generate TXT'
        Description = 'Daily Instruction Generate TXT'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Instruction'
          end>
      end
      item
        Permission = 'Daily Instruction Generate SDS Cash XLS'
        Description = 'Daily Instruction Generate SDS Cash XLS'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Instruction'
          end>
      end
      item
        Permission = 'Daily Instruction Generate SDS Cash XML'
        Description = 'Daily Instruction Generate SDS Cash XML'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Instruction'
          end>
      end
      item
        Permission = 'Daily Instruction Generate SDS Cash TXT'
        Description = 'Daily Instruction Generate SDS Cash TXT'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Instruction'
          end>
      end
      item
        Permission = 'Deposito Viewer'
        Description = 'Deposito Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deposito'
          end>
      end
      item
        Permission = 'Deposito Approver'
        Description = 'Deposito Approver'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deposito'
          end>
      end
      item
        Permission = 'Deposito Cancel'
        Description = 'Deposito Cancel'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deposito'
          end>
      end
      item
        Permission = 'Deposito Close'
        Description = 'Deposito Close'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deposito'
          end>
      end
      item
        Permission = 'Desposito Maker'
        Description = 'Desposito Maker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Deposito'
          end>
      end
      item
        Permission = 'IDX Monthly Transaction Report'
        Description = 'IDX Monthly Transaction Report'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'IDX Monthly Transaction Report'
          end>
      end
      item
        Permission = 'Closing Price Editor'
        Description = 'Closing Price Editor'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Closing Price (Stock Summary)'
          end>
      end
      item
        Permission = 'Reksadana Deposito Viewer'
        Description = 'Reksadana Deposito Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reksadana Deposito'
          end>
      end
      item
        Permission = 'Reksadana Deposito Maker'
        Description = 'Reksadana Deposito Maker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reksadana Deposito'
          end>
      end
      item
        Permission = 'Reksadana Deposito Approver'
        Description = 'Reksadana Deposito Approver'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reksadana Deposito'
          end>
      end
      item
        Permission = 'Reksadana Deposito Closer'
        Description = 'Reksadana Deposito Closer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reksadana Deposito'
          end>
      end
      item
        Permission = 'Reksadana Deposito Canceler'
        Description = 'Reksadana Deposito Canceler'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Reksadana Deposito'
          end>
      end
      item
        Permission = 'Cash Settlement Viewer'
        Description = 'Cash Settlement Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Settlement'
          end>
      end
      item
        Permission = 'Cash Settlement Create Voucher'
        Description = 'Cash Settlement Create Voucher'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Settlement'
          end>
      end
      item
        Permission = 'Cash Settlement Create All Voucher'
        Description = 'Cash Settlement Create All Voucher'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Settlement'
          end>
      end
      item
        Permission = 'Cash Settlement Process Auto Roll Over Cash'
        Description = 'Cash Settlement Process Auto Roll Over Cash'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Settlement'
          end>
      end
      item
        Permission = 'Cash Settlement Create Selected Payment Voucher'
        Description = 'Cash Settlement Create Selected Payment Voucher'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Settlement'
          end>
      end
      item
        Permission = 'Cash Settlement Create Selected Receive Voucher'
        Description = 'Cash Settlement Create Selected Receive Voucher'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Settlement'
          end>
      end
      item
        Permission = 'Cash Settlement Cash Deposit'
        Description = 'Cash Settlement Cash Deposit'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Settlement'
          end>
      end
      item
        Permission = 'Cash Settlement Voucher Viewer'
        Description = 'Cash Settlement Voucher Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Settlement Voucher'
          end>
      end
      item
        Permission = 'Cash Settlement Voucher Settle'
        Description = 'Cash Settlement Voucher Settle'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Settlement Voucher'
          end>
      end
      item
        Permission = 'Cash Settlement Voucher Reverse'
        Description = 'Cash Settlement Voucher Reverse'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Settlement Voucher'
          end>
      end
      item
        Permission = 'Cash Settlement Voucher Cancel'
        Description = 'Cash Settlement Voucher Cancel'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Settlement Voucher'
          end>
      end
      item
        Permission = 'Deal Ticket Update Data Execution Prorate'
        Description = 'Deal Ticket Update Data Execution Prorate'
        PermissionMenus = <>
      end
      item
        Permission = '[Lending & Borrowing Contract].Posting'
        Description = '[Lending & Borrowing Contract].Posting'
        PermissionMenus = <>
      end
      item
        Permission = '[Lending & Borrowing Contract].Reverse'
        Description = '[Lending & Borrowing Contract].Reverse'
        PermissionMenus = <>
      end
      item
        Permission = '[Lending & Borrowing Contract].Change Due Date'
        Description = '[Lending & Borrowing Contract].Change Due Date'
        PermissionMenus = <>
      end
      item
        Permission = '[Lending & Borrowing Contract].Recall'
        Description = '[Lending & Borrowing Contract].Recall'
        PermissionMenus = <>
      end
      item
        Permission = '[Lending & Borrowing Contract].Settlement Fee'
        Description = '[Lending & Borrowing Contract].Settlement Fee'
        PermissionMenus = <>
      end>
    GroupDataSet = cdsGroups
    GroupItemDataSet = cdsGroupPermission
    ApplicationIDField = 'APPID'
    PermissionField = 'PERMISSION'
    GroupIDField = 'GROUPID'
    GroupDescField = 'GROUPDESC'
    UserGroupDataSet = cdsUserGroup
    UsersDataSet = cdsUsers
    UserIDField = 'USERID'
    UserNameField = 'USERNAME'
    UserGroupIDField = 'GROUPID'
    UserPasswordField = 'USERPWD'
    OpenPermissionDataSet = cdsOpenPermission
    OpenPermissionField = 'PERMISSION'
    Left = 43
    Top = 113
  end
  object cdsUsers: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'APPID'
        ParamType = ptInput
        Value = 'Nayaga'
      end>
    ProviderName = 'dspUsers'
    RemoteServer = dspConnection
    Left = 40
    Top = 256
    object cdsUsersUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsUsersAPPID: TStringField
      FieldName = 'APPID'
      Required = True
      Size = 30
    end
    object cdsUsersUSERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 50
    end
    object cdsUsersCRETEDATE: TDateTimeField
      FieldName = 'CRETEDATE'
    end
    object cdsUsersUSERSTATE: TStringField
      FieldName = 'USERSTATE'
      Size = 10
    end
    object cdsUsersUSERPWD: TStringField
      DisplayWidth = 100
      FieldName = 'USERPWD'
      Size = 100
    end
    object cdsUsersLASTCHANGEPWD: TDateTimeField
      FieldName = 'LASTCHANGEPWD'
    end
    object cdsUsersLOCKED: TStringField
      FieldName = 'LOCKED'
      Size = 1
    end
    object cdsUsersWRONGPWDCOUNT: TIntegerField
      FieldName = 'WRONGPWDCOUNT'
    end
    object cdsUsersHARDLIMIT: TFloatField
      FieldName = 'HARDLIMIT'
    end
    object cdsUsersSOFTLIMIT: TFloatField
      FieldName = 'SOFTLIMIT'
    end
    object cdsUsersTEMPLIMIT: TFloatField
      FieldName = 'TEMPLIMIT'
    end
    object cdsUsersMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsUsersMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsUsersAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsUsersAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsUsersUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsUsersUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsUsersNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsUsersISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsUsersID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsUserGroup: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'AppID'
        ParamType = ptInput
        Value = 'Nayaga'
      end>
    ProviderName = 'dspUserGroup'
    RemoteServer = dspConnection
    Left = 40
    Top = 304
    object cdsUserGroupUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsUserGroupAPPID: TStringField
      FieldName = 'APPID'
      Required = True
      Size = 30
    end
    object cdsUserGroupGROUPID: TStringField
      FieldName = 'GROUPID'
      Required = True
    end
    object cdsUserGroupMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsUserGroupMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsUserGroupAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsUserGroupAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsUserGroupUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsUserGroupUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsUserGroupNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsUserGroupISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsUserGroupID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsOpenPermission: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'APPID'
        ParamType = ptUnknown
        Value = ' '
      end
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end>
    ProviderName = 'dspOpenPermission'
    RemoteServer = dspConnection
    Left = 40
    Top = 352
    object cdsOpenPermissionPERMISSION: TStringField
      FieldName = 'PERMISSION'
      Size = 200
    end
  end
  object saGlobal: TcxStyleRepository
    Left = 448
    Top = 16
    PixelsPerInch = 96
    object BlueToggle: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
    object BlueToggle2: TcxStyle
      AssignedValues = [svColor]
      Color = 16777194
    end
    object DisableColor: TcxStyle
      AssignedValues = [svColor]
      Color = 15066597
    end
    object BackGrid: TcxStyle
      AssignedValues = [svColor]
      Color = clWindow
    end
    object BuyColor: TcxStyle
      AssignedValues = [svColor]
      Color = clGreen
    end
    object SellColor: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
    object rowSelected: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14145495
      TextColor = clBlack
    end
    object colSelected: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clGray
      TextColor = clWhite
    end
    object backColor: TcxStyle
    end
    object GreenToggle: TcxStyle
      AssignedValues = [svColor]
      Color = 14811097
    end
    object ChangedData: TcxStyle
      AssignedValues = [svColor]
      Color = clAqua
    end
    object ncDisableCOB: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsStrikeOut]
      TextColor = clRed
    end
    object GridFilterBox: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16511971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object Repository: TcxEditRepository
    Left = 456
    Top = 67
    PixelsPerInch = 96
    object luValidationMode: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Credit Limit Calculation'
          ImageIndex = 0
          Value = 'CL'
        end
        item
          Description = 'Client Position Valuation'
          Value = 'CPOS'
        end>
    end
    object luValidationType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Reguler'
          ImageIndex = 0
          Value = 'R'
        end
        item
          Description = 'Margin'
          Value = 'M'
        end>
    end
    object chkStandard: TcxEditRepositoryCheckBoxItem
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
    object luChargeType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Broker Fee'
          ImageIndex = 0
          Value = 'BFEE'
        end
        item
          Description = 'Exchange Fee'
          Value = 'EXFEE'
        end
        item
          Description = 'Custodian Fee'
          Value = 'CFEE'
        end
        item
          Description = 'VAT'
          Value = 'VAT'
        end
        item
          Description = 'Selling TAX'
          Value = 'TAX'
        end
        item
          Description = 'Other Fee'
          Value = 'OTR'
        end>
    end
    object luDebetCredit: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Debet'
          ImageIndex = 0
          Value = 'D'
        end
        item
          Description = 'Credit'
          Value = 'C'
        end>
    end
    object luLocalForeign: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Local'
          ImageIndex = 0
          Value = 'L'
        end
        item
          Description = 'Foreign'
          Value = 'F'
        end>
    end
    object luCustTYpe: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'Company'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Retail'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Institution'
          Value = 2
        end>
    end
    object luCustSubType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Client'
          ImageIndex = 0
          Value = 'C'
        end
        item
          Description = 'Affiliation'
          Value = 'A'
        end
        item
          Description = 'Broker'
          Value = 'B'
        end
        item
          Description = 'Company Purpose'
          Value = 'H'
        end>
    end
    object luGLPeriodStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Open'
          ImageIndex = 0
          Value = 'O'
        end
        item
          Description = 'Closed'
          Value = 'C'
        end>
      Properties.ReadOnly = True
    end
    object luMonth: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'January'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'February'
          Value = 2
        end
        item
          Description = 'March'
          Value = 3
        end
        item
          Description = 'April'
          Value = 4
        end
        item
          Description = 'May'
          Value = 5
        end
        item
          Description = 'June'
          Value = 6
        end
        item
          Description = 'July'
          Value = 7
        end
        item
          Description = 'August'
          Value = 8
        end
        item
          Description = 'September'
          Value = 9
        end
        item
          Description = 'October'
          Value = 10
        end
        item
          Description = 'November'
          Value = 11
        end
        item
          Description = 'December'
          Value = 12
        end>
    end
    object luUpdateStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'New'
          ImageIndex = 34
          Value = 'N'
        end
        item
          Description = 'Update'
          ImageIndex = 33
          Value = 'U'
        end
        item
          Description = 'Delete'
          ImageIndex = 35
          Value = 'D'
        end>
    end
    object luAgency: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Agency Broker'
          ImageIndex = 0
          Value = 'B'
        end
        item
          Description = 'Agency Client'
          Value = 'C'
        end>
    end
    object luCheckIsManager: TcxEditRepositoryCheckBoxItem
      Properties.ValueChecked = 'Y'
      Properties.ValueUnchecked = 'N'
    end
    object luInterestBalType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Penalty'
          ImageIndex = 0
          Value = 'P'
        end
        item
          Description = 'Interest'
          Value = 'I'
        end>
    end
    object luCalcType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Accrual'
          ImageIndex = 0
          Value = 'A'
        end
        item
          Description = 'Cash Basis'
          Value = 'C'
        end>
    end
    object luChargeBasis: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Rate'
          ImageIndex = 0
          Value = 'R'
        end
        item
          Description = 'Amount'
          Value = 'A'
        end
        item
          Description = 'Table'
          Value = 'T'
        end>
      Properties.PostPopupValueOnTab = True
    end
    object luCommCalcMethod: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'All In'
          ImageIndex = 0
          Value = 'AI'
        end
        item
          Description = 'Commission Only'
          Value = 'CO'
        end>
    end
    object luChargeRateSource: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Total Value'
          ImageIndex = 0
          Value = 'TV'
        end
        item
          Description = 'Gross Commission'
          Value = 'GC'
        end
        item
          Description = 'Net Commission'
          Value = 'NC'
        end>
      Properties.PostPopupValueOnTab = True
    end
    object luCurrency: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CCYCODE'
      Properties.ListColumns = <
        item
          FieldName = 'CCYCODE'
        end
        item
          FieldName = 'CCYNAME'
        end>
      Properties.ListSource = dmLookup.dsLuCcy
    end
    object luMarket: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'MARKETCODE'
      Properties.ListColumns = <
        item
          FieldName = 'MARKETCODE'
        end
        item
          FieldName = 'MARKETDESC'
        end>
      Properties.ListSource = dmLookup.dsLuMarket
    end
    object luInstrumentType: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INSTRUMENT_TYPE_CODE'
      Properties.ListColumns = <
        item
          FieldName = 'INSTRUMENT_TYPE_CODE'
        end
        item
          FieldName = 'INSTRUMENT_TYPE_DESC'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuInstrumentType
    end
    object luBroker: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'BROKERCODE'
      Properties.ListColumns = <
        item
          FieldName = 'BROKERCODE'
        end
        item
          FieldName = 'BROKERNAME'
        end
        item
          FieldName = 'INTERFEE'
        end>
      Properties.ListSource = dmLookup.dsLuBroker
    end
    object luBoard: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'BOARDID'
      Properties.ListColumns = <
        item
          FieldName = 'BOARDCODE'
        end
        item
          FieldName = 'MARKETCODE'
        end
        item
          FieldName = 'BOARDDESC'
        end>
      Properties.ListSource = dmLookup.dsLuBoard
    end
    object luInstrument: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INSTRUMENT_ID'
      Properties.ListColumns = <
        item
          FieldName = 'LOCALCODE'
        end
        item
          FieldName = 'MARKETCODE'
        end
        item
          FieldName = 'SHORTNAME'
        end
        item
          FieldName = 'MARGIN'
        end>
      Properties.ListSource = dmLookup.dsLuInstrument
    end
    object luChannel: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CHANNELCODE'
      Properties.ListColumns = <
        item
          FieldName = 'CHANNELCODE'
        end
        item
          FieldName = 'CHANNELDESC'
        end>
      Properties.ListSource = dmLookup.dsLuChannel
    end
    object luChargeTableBasis: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Rate'
          ImageIndex = 0
          Value = 'R'
        end
        item
          Description = 'Amount'
          Value = 'A'
        end>
      Properties.PostPopupValueOnTab = True
    end
    object rgChargeBasis: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Rate'
          Value = 'R'
        end
        item
          Caption = 'Amount'
          Value = 'A'
        end
        item
          Caption = 'Table'
          Value = 'T'
        end>
    end
    object luCommissionCalcMethod: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Rate'
          ImageIndex = 0
          Value = 'R'
        end
        item
          Description = 'Table'
          Value = 'T'
        end>
    end
    object rgCommissionCalcMethod: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Rate'
          Value = 'R'
        end
        item
          Caption = 'Table'
          Value = 'T'
        end>
    end
    object luBranch: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'BRANCHID'
      Properties.ListColumns = <
        item
          FieldName = 'BRANCHCODE'
        end
        item
          FieldName = 'BRANCHNAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuBranch
    end
    object luDealer: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'DEALERID'
      Properties.ListColumns = <
        item
          FieldName = 'DEALERCODE'
        end
        item
          FieldName = 'DEALERNAME'
        end>
      Properties.ListSource = dmLookup.dsLuDealer
    end
    object luSalesAgent: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'AGENTID'
      Properties.ListColumns = <
        item
          FieldName = 'AGENTCODE'
        end
        item
          FieldName = 'AGENTNAME'
        end>
      Properties.ListSource = dmLookup.dsLuSalesAgent
    end
    object luSales: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'SALESID'
      Properties.ListColumns = <
        item
          FieldName = 'SALESCODE'
        end
        item
          FieldName = 'SALESNAME'
        end
        item
          FieldName = 'BRANCHID'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuSales
    end
    object luBuySell: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Buy'
          ImageIndex = 0
          Value = 'B'
        end
        item
          Description = 'Sell'
          Value = 'S'
        end>
    end
    object luFiscalYear: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'FISCALYEARID'
      Properties.ListColumns = <
        item
          FieldName = 'FISCALYEARCODE'
        end
        item
          FieldName = 'FISCALYEARNAME'
        end>
      Properties.ListSource = dmLookup.dsLuFiscalYear
    end
    object luAccount: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCCODE'
        end
        item
          FieldName = 'ACCNAME'
        end>
      Properties.ListSource = dmLookup.dsLuAccount
    end
    object luCharge: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CHARGE_ID'
      Properties.ListColumns = <
        item
          FieldName = 'CHARGE_CODE'
        end
        item
          FieldName = 'DESCRIPTION'
        end
        item
          FieldName = 'MARKETCODE'
        end>
      Properties.ListSource = dmLookup.dsLuCharge
    end
    object luChargeByMarket: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CHARGE_ID'
      Properties.ListColumns = <
        item
          FieldName = 'CHARGE_CODE'
        end
        item
          FieldName = 'DESCRIPTION'
        end>
      Properties.ListSource = dmLookup.dsLuChargeByMarket
    end
    object luCommission: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'COMM_ID'
      Properties.ListColumns = <
        item
          FieldName = 'COMM_CODE'
        end
        item
          FieldName = 'MIN_COMM'
        end
        item
          FieldName = 'DESCRIPTION'
        end
        item
          FieldName = 'MARKETCODE'
        end>
      Properties.ListSource = dmLookup.dsLuCommission
    end
    object luCommissionByMarket: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'COMM_ID'
      Properties.ListColumns = <
        item
          FieldName = 'COMM_CODE'
        end
        item
          FieldName = 'MIN_COMM'
        end
        item
          FieldName = 'DESCRIPTION'
        end>
      Properties.ListSource = dmLookup.dsLuCommByMarket
    end
    object luProductType: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'PRDTYPE'
      Properties.ListColumns = <
        item
          FieldName = 'PRDTYPE'
        end
        item
          FieldName = 'PRDTYPEDESC'
        end>
      Properties.ListSource = dmLookup.dsLuProductType
    end
    object luProduct: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'PRDCODE'
      Properties.ListColumns = <
        item
          FieldName = 'PRDCODE'
        end
        item
          FieldName = 'PRDDESC'
        end>
      Properties.ListSource = dmLookup.dsLuProduct
    end
    object luActLedgerTypeSystem: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Payment Bank BCA'
          ImageIndex = 0
          Value = 'PB-BCA'
        end
        item
          Description = 'Payment Bank CIMB'
          Value = 'PB-CIMB'
        end
        item
          Description = 'C-Best'
          Value = 'C-Best'
        end
        item
          Description = 'e-Clears'
          Value = 'E-Clears'
        end
        item
          Description = 'Back Office System'
          Value = 'BOFIS'
        end>
    end
    object luActLedgerTypeGL_SGL: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Both (General Ledger + Sub General Ledger)'
          ImageIndex = 0
          Value = 'B'
        end
        item
          Description = 'General Ledger'
          Value = 'G'
        end
        item
          Description = 'Sub General Ledger'
          Value = 'S'
        end>
    end
    object luActLedgerTypeCashStock: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Both (Cash + Stock)'
          ImageIndex = 0
          Value = 'B'
        end
        item
          Description = 'Cash'
          Value = 'C'
        end
        item
          Description = 'Stock'
          Value = 'S'
        end>
    end
    object luCashStock: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Cash'
          ImageIndex = 0
          Value = 'C'
        end
        item
          Description = 'Stock'
          Value = 'S'
        end>
    end
    object luActLedgerType: TcxEditRepositoryLookupComboBoxItem
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ALTYPE'
      Properties.ListColumns = <
        item
          FieldName = 'ALTYPE'
        end
        item
          FieldName = 'ALDESCRIPTION'
        end
        item
          FieldName = 'ALSYSTEM'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuActLedgerType
    end
    object luTradingLimitValidationModel: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Position Calculation'
          ImageIndex = 0
          Value = 'CP'
        end
        item
          Description = 'Credit Limit Calculation'
          Value = 'CL'
        end>
    end
    object rgAcceptRejectApproval: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Accept'
          Value = 'A'
        end
        item
          Caption = 'Reject'
          Value = 'R'
        end
        item
          Caption = 'Approval'
          Value = 'P'
        end>
    end
    object luNationality: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'CODE'
        end
        item
          FieldName = 'NATIONALITY'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuCounNation
    end
    object luCountry: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'CODE'
        end
        item
          FieldName = 'COUNTNAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuCounNation
    end
    object luBank: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'BNCODE'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BNNAME'
        end>
      Properties.ListSource = dmLookup.dsLuBank
    end
    object luProvince: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'PROVCODE'
      Properties.ListColumns = <
        item
          FieldName = 'PROVCODE'
        end
        item
          FieldName = 'PROVNAME'
        end
        item
          FieldName = 'COUNTCODE'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuProvince
    end
    object luSecAnnualIncome: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'SEC_INCCODE'
      Properties.ListColumns = <
        item
          FieldName = 'SEC_INCCODE'
        end
        item
          FieldName = 'SEC_INCDESC'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsSecAnnualIncome
    end
    object luCity: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CITYCODE'
      Properties.ListColumns = <
        item
          FieldName = 'CITYCODE'
        end
        item
          FieldName = 'CITYNAME'
        end
        item
          FieldName = 'PROVCODE'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuCity
    end
    object luExtConfSystem: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'EXTCONFCODE'
      Properties.ListColumns = <
        item
          FieldName = 'EXTCONFCODE'
        end
        item
          FieldName = 'EXTCONFDESC'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuExtConfSystem
    end
    object luActLedgerClass: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ALCLASSID'
      Properties.ListColumns = <
        item
          FieldName = 'ALCLASSCODE'
        end
        item
          FieldName = 'ALCLASSDESC'
        end>
      Properties.ListSource = dmLookup.dsLuActLedgerClass
    end
    object luTradingLimitClass: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'TLCLASSID'
      Properties.ListColumns = <
        item
          FieldName = 'TLCLASSCODE'
        end
        item
          FieldName = 'TLCLASSDESC'
        end>
      Properties.ListSource = dmLookup.dsLuTradingLimitClass
    end
    object luInterest: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INTERESTCODE'
      Properties.ListColumns = <
        item
          FieldName = 'INTERESTCODE'
        end
        item
          FieldName = 'DESCRIPTION'
        end>
      Properties.ListSource = dmLookup.dsLuInterest
    end
    object luGroupAccount: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'GROUPID'
      Properties.ListColumns = <
        item
          FieldName = 'GROUPCODE'
        end
        item
          FieldName = 'GROUPNAME'
        end>
      Properties.ListSource = dmLookup.dsLuGroupAccount
    end
    object rgPLBS: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Profit Loss'
          Value = 'P'
        end
        item
          Caption = 'Balance Sheet'
          Value = 'B'
        end>
    end
    object rgYesNo: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Yes'
          Value = 'Y'
        end
        item
          Caption = 'No'
          Value = 'N'
        end>
    end
    object luBusinessType: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'BUSTYPEID'
      Properties.ListColumns = <
        item
          FieldName = 'BUSTYPECODE'
        end
        item
          FieldName = 'BUSTYPEDESC'
        end>
      Properties.ListSource = dmLookup.dsLuBusinessType
    end
    object luEducationalBackground: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'OTH: Others'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'SD: Elementary School'
          Value = '2'
        end
        item
          Description = 'SMP: Junior High School'
          Value = '3'
        end
        item
          Description = 'SMA: Senior High School (D1/D2)'
          Value = '4'
        end
        item
          Description = 'D3: Academy'
          Value = '5'
        end
        item
          Description = 'S1: Degree (Strata 1)'
          Value = '6'
        end
        item
          Description = 'S2: Master Degree (Strata 2)'
          Value = '7'
        end
        item
          Description = 'S3: Doctoral Degree (Strata 3)'
          Value = '8'
        end>
    end
    object luMaritalStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Single (Belum menikah)'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Married (Menikah)'
          Value = '2'
        end
        item
          Description = 'Widower (Duda)'
          Value = '3'
        end
        item
          Description = 'Widow (Janda)'
          Value = '4'
        end>
    end
    object rgSex: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Male'
          Value = '1'
        end
        item
          Caption = 'Female'
          Value = '2'
        end>
    end
    object luOccupation: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Others'
          ImageIndex = 0
        end>
    end
    object rgSourceFundRet: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Salary'
          Value = '2'
        end
        item
          Caption = 'Business Profit'
          Value = '3'
        end
        item
          Caption = 'Interest'
          Value = '4'
        end
        item
          Caption = 'Heritage'
          Value = '5'
        end
        item
          Caption = 'Grant from parent or kids'
          Value = '6'
        end
        item
          Caption = 'Grant from spouse'
          Value = '7'
        end
        item
          Caption = 'Pension Funds'
          Value = '8'
        end
        item
          Caption = 'Others'
          Value = '1'
        end
        item
          Caption = 'Lottery'
          Value = '9'
        end
        item
          Caption = 'Proceed from investment'
          Value = '10'
        end
        item
          Caption = 'Deposit'
          Value = '11'
        end>
    end
    object rgAnnualIncome: TcxEditRepositoryRadioGroupItem
      Properties.Items = <
        item
          Caption = 'Below Rp 10 Million'
          Value = '1'
        end
        item
          Caption = 'Above Rp 10 Million and Below Rp 50 Million'
          Value = '2'
        end
        item
          Caption = 'Above Rp 50 Million and Below Rp 100 Million'
          Value = '3'
        end
        item
          Caption = 'Above Rp 100 Million and Below Rp 500 Million'
          Value = '4'
        end
        item
          Caption = 'Above Rp 500 Million and Below Rp 1 Billion'
          Value = '5'
        end
        item
          Caption = 'Above 1 Billion'
          Value = '6'
        end>
    end
    object rgInvestmentObjectives: TcxEditRepositoryRadioGroupItem
      Properties.Items = <
        item
          Caption = 'Others'
          Value = '1'
        end
        item
          Caption = 'Price Appreciation'
          Value = '2'
        end
        item
          Caption = 'Investment'
          Value = '3'
        end
        item
          Caption = 'Speculation'
          Value = '4'
        end
        item
          Caption = 'Income'
          Value = '5'
        end>
    end
    object luIDType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'ID Card'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Passport'
          Value = '2'
        end
        item
          Description = 'Driving License'
          Value = '3'
        end
        item
          Description = 'KITAS'
          Value = '4'
        end
        item
          Description = 'Others'
          Value = '5'
        end>
    end
    object rgEstDailyTrading: TcxEditRepositoryRadioGroupItem
      Properties.Items = <
        item
          Caption = '< Rp 50 Million'
          Value = '1'
        end
        item
          Caption = 'Rp 50 Million - Rp 500 Million'
          Value = '2'
        end
        item
          Caption = 'Rp 500 Million - Rp 1 Billion'
          Value = '3'
        end
        item
          Caption = 'Rp 1 Billion - Rp 50 Billion'
          Value = '4'
        end
        item
          Caption = 'Rp 50 Billion - Rp 100 Billion'
          Value = '5'
        end
        item
          Caption = '> Rp 100 Billion'
          Value = '6'
        end>
    end
    object rgInvestExperience: TcxEditRepositoryRadioGroupItem
      Properties.Items = <
        item
          Caption = 'Equity'
          Value = 'E'
        end
        item
          Caption = 'Fix Income'
          Value = 'F'
        end
        item
          Caption = 'Reksa Dana'
          Value = 'R'
        end
        item
          Caption = 'Conventional'
          Value = 'C'
        end>
    end
    object luCompanyType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Others'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'BUMN (State Own Company)'
          Value = '2'
        end
        item
          Description = 'Local Investment Company'
          Value = '3'
        end
        item
          Description = 'Social'
          Value = '4'
        end
        item
          Description = 'Joint Venture'
          Value = '5'
        end
        item
          Description = 'Foreign Investment Company (PMA)'
          Value = '6'
        end
        item
          Description = 'Family Corporation'
          Value = '7'
        end
        item
          Description = 'Afiliated'
          Value = '8'
        end>
    end
    object rgSourceFundIns: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Business Profit'
          Value = '3'
        end
        item
          Caption = 'Interest'
          Value = '4'
        end
        item
          Caption = 'Pension Funds'
          Value = '8'
        end
        item
          Caption = 'Proceed from investment'
          Value = '10'
        end
        item
          Caption = 'Deposit'
          Value = '11'
        end
        item
          Caption = 'Others'
          Value = '1'
        end
        item
          Caption = 'Capital'
          Value = '12'
        end>
    end
    object luInsBusType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'OT: Others (Lainnya)'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'CP: Corporate (Perusahaan Terbatas)'
          Value = '2'
        end
        item
          Description = 'FD: Foundation (Yayasan)'
          Value = '3'
        end
        item
          Description = 'IB: Financial Institution (Institusi Keuangan)'
          Value = '4'
        end
        item
          Description = 'IS: Insurance (Asuransi)'
          Value = '5'
        end
        item
          Description = 'MF: Mutual Fund (Reksa Dana)'
          Value = '6'
        end
        item
          Description = 'PF: Pension Fund (Pengelola Dana Pensiun)'
          Value = '7'
        end
        item
          Description = 'SC: Securities Company (Perusahaan Sekuritas)'
          Value = '8'
        end
        item
          Description = 'SV: Sovereign (Pemerintahan)'
          Value = '9'
        end>
    end
    object luTrackInfoType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Alert'
          ImageIndex = 0
          Value = 'A'
        end
        item
          Description = 'Info'
          Value = 'I'
        end
        item
          Description = 'Urgent'
          Value = 'U'
        end
        item
          Description = 'Control'
          Value = 'C'
        end>
    end
    object luTrackInfoLevel: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Management'
          ImageIndex = 0
          Value = 'MG'
        end
        item
          Description = 'Operation'
          Value = 'OP'
        end
        item
          Description = 'Others'
          Value = 'OT'
        end>
    end
    object luEntityStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Active'
          ImageIndex = 0
          Value = 'A'
        end
        item
          Description = 'Suspend Trade'
          Value = 'T'
        end
        item
          Description = 'Suspend Buy'
          Value = 'B'
        end
        item
          Description = 'Suspend Sell'
          Value = 'S'
        end
        item
          Description = 'Closed'
          Value = 'C'
        end
        item
          Description = 'Dorman'
          Value = 'D'
        end>
    end
    object luEntityType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Fund Management'
          ImageIndex = 0
          Value = 'FM'
        end
        item
          Description = 'House Account'
          Value = 'HA'
        end
        item
          Description = 'Broker'
          Value = 'BR'
        end
        item
          Description = 'Clearing House'
          Value = 'CH'
        end>
    end
    object luSourceFund: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Others'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Salary'
          Value = '2'
        end
        item
          Description = 'Business Profit'
          Value = '3'
        end
        item
          Description = 'Interest'
          Value = '4'
        end
        item
          Description = 'Heritage'
          Value = '5'
        end
        item
          Description = 'Grant from parents or kids'
          Value = '6'
        end
        item
          Description = 'Grant from spouse'
          Value = '7'
        end
        item
          Description = 'Pension Funds'
          Value = '8'
        end
        item
          Description = 'Lottery'
          Value = '9'
        end
        item
          Description = 'Proceed from investment'
          Value = '10'
        end
        item
          Description = 'Deposit'
          Value = '11'
        end
        item
          Description = 'Capital'
          Value = '12'
        end>
    end
    object luInvestmentObjectives: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Others'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Price appreciation'
          Value = '2'
        end
        item
          Description = 'Investment'
          Value = '3'
        end
        item
          Description = 'Speculation'
          Value = '4'
        end
        item
          Description = 'Income'
          Value = '5'
        end>
    end
    object luAccountStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Active'
          Value = 'A'
        end
        item
          Description = 'Suspend Trade'
          Value = 'T'
        end
        item
          Description = 'Suspend Buy'
          Value = 'B'
        end
        item
          Description = 'Suspend Sell'
          Value = 'S'
        end
        item
          Description = 'Closed'
          Value = 'C'
        end
        item
          Description = 'Dorman'
          Value = 'D'
        end>
    end
    object luTCModel: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Per Order'
          ImageIndex = 0
          Value = 'PO'
        end
        item
          Description = 'Net Summary'
          Value = 'NS'
        end
        item
          Description = 'Side Summary'
          Value = 'SS'
        end
        item
          Description = 'Order Summary'
          Value = 'OS'
        end>
    end
    object rgTCSendBy: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Email'
          Value = 'E'
        end
        item
          Caption = 'Fax'
          Value = 'F'
        end>
    end
    object luCashSettleBy: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'RDN'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Bank Payment Broker'
          Value = '2'
        end
        item
          Description = 'Custody'
          Value = '3'
        end>
    end
    object luStockSettleBy: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'C-Best Sub Rek'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'C-Best Broker MA'
          Value = '2'
        end
        item
          Description = 'Bank Custody'
          Value = '3'
        end>
    end
    object luBankChargeType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Local'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'LLG'
          Value = '2'
        end
        item
          Description = 'RTGS'
          Value = '3'
        end>
    end
    object luIPOStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Open'
          ImageIndex = 0
          Value = 'O'
        end
        item
          Description = 'Close'
          Value = 'C'
        end>
    end
    object luBoardCounterPartType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Account'
          ImageIndex = 0
          Value = 'ACT'
        end
        item
          Description = 'Sub Account'
          Value = 'S-ACT'
        end
        item
          Description = 'Broker'
          Value = 'BRK'
        end>
    end
    object luGLAccountNo: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'GLACCOUNTID'
      Properties.ListColumns = <
        item
          Caption = 'GL A/C No'
          Width = 70
          FieldName = 'GLACCOUNTCODE'
        end
        item
          FieldName = 'CCY'
        end
        item
          Caption = 'GL A/C Name'
          Width = 200
          FieldName = 'GLACCOUNTNAME'
        end>
      Properties.ListSource = dmLookup.dsLuGLAccount
    end
    object luGLAccountName: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'GLACCOUNTID'
      Properties.ListColumns = <
        item
          Caption = 'GL A/C Name'
          Width = 20
          FieldName = 'GLACCOUNTNAME'
        end
        item
          Caption = 'GL A/C No'
          MinWidth = 10
          Width = 15
          FieldName = 'GLACCOUNTCODE'
        end
        item
          MinWidth = 5
          Width = 5
          FieldName = 'CCY'
        end>
      Properties.ListSource = dmLookup.dsLuGLAccount
    end
    object luCPCenter: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CPID'
      Properties.ListColumns = <
        item
          FieldName = 'CPCODE'
        end
        item
          FieldName = 'CPDESC'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuCPCenter
      Properties.PostPopupValueOnTab = True
    end
    object luGLPeriod: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'PERIODID'
      Properties.ListColumns = <
        item
          Caption = 'Period Name'
          FieldName = 'PERIODNAME'
        end
        item
          Caption = 'Code'
          FieldName = 'PERIODCODE'
        end>
      Properties.ListSource = dmLookup.dsluGLPeriod
    end
    object luActLedCashByAccount: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ALTYPE'
      Properties.ListColumns = <
        item
          FieldName = 'ALTYPE'
        end
        item
          FieldName = 'ALCODE'
        end
        item
          FieldName = 'ALDESC'
        end>
      Properties.ListSource = dmLookup.dsLuActLedCashByAccount
    end
    object luActLedStockByAccount: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ALTYPE'
      Properties.ListColumns = <
        item
          FieldName = 'ALTYPE'
        end
        item
          FieldName = 'ALCODE'
        end
        item
          FieldName = 'ALDESC'
        end>
      Properties.ListSource = dmLookup.dsLuActLedStockByAccount
    end
    object luBankByAccount: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end
        item
          FieldName = 'BANKBRANCH'
        end>
      Properties.ListSource = dmLookup.dsLuBankByAccount
    end
    object luBankRDNByAccount: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          Caption = 'Bank Code'
          Width = 80
          FieldName = 'BNCODE'
        end
        item
          Caption = 'Bank Account No'
          Width = 100
          FieldName = 'BANKACCNO'
        end
        item
          Caption = 'Bank Account Name'
          Width = 200
          FieldName = 'BANKACCNAME'
        end
        item
          Caption = 'Bank Branch'
          Width = 100
          FieldName = 'BANKBRANCH'
        end>
      Properties.ListSource = dmLookup.dsLuBankRDNByAccount
    end
    object luBatchProcessStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Waiting for Process'
          ImageIndex = 0
          Value = 'W'
        end
        item
          Description = 'Processing on Application Server'
          Value = 'P'
        end
        item
          Description = 'Process Completed'
          Value = 'D'
        end
        item
          Description = 'Process Failed'
          Value = 'F'
        end>
    end
    object luTradingAccount: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCCODE'
        end
        item
          FieldName = 'ACCNAME'
        end>
      Properties.ListSource = dmLookup.dsLuTradingAccount
    end
    object luAccountSubType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Main Account'
          ImageIndex = 0
          Value = 'M'
        end
        item
          Description = 'Sub Allocation Account'
          Value = 'A'
        end
        item
          Description = 'Facilitation Account'
          Value = 'F'
        end
        item
          Description = 'Warehouse Account'
          Value = 'W'
        end
        item
          Description = 'Cross Tom Account'
          Value = 'X'
        end
        item
          Description = 'Nego Tom Account'
          Value = 'N'
        end
        item
          Description = 'Settle Account Only'
          Value = 'S'
        end
        item
          Description = 'Trading Error'
          Value = 'E'
        end>
    end
    object luBatchCategory: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CAT_CODE'
      Properties.ListColumns = <
        item
          Caption = 'Code'
          FieldName = 'CAT_CODE'
        end
        item
          Caption = 'Description'
          Width = 200
          FieldName = 'CAT_DESC'
        end>
      Properties.ListSource = dmLookup.dsLuBatchCategory
    end
    object luBatchPeriod: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Daily'
          ImageIndex = 0
          Value = 'D'
        end
        item
          Description = 'Monthly'
          Value = 'M'
        end
        item
          Description = 'Yearly'
          Value = 'Y'
        end>
    end
    object luBatchDayType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Begining of the Month'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'End of Month'
          Value = '2'
        end
        item
          Description = 'Begening of the Year'
          Value = '3'
        end
        item
          Description = 'End of Year'
          Value = '4'
        end
        item
          Description = 'Specific Date'
          Value = '5'
        end>
    end
    object luSuspendList: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'SUSID'
      Properties.ListColumns = <
        item
          Caption = 'Suspend Desc'
          Width = 200
          FieldName = 'SUSDESC'
        end>
      Properties.ListSource = dmLookup.dsLuSuspendList
    end
    object luAddressTypeIndividual: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'INDIVIDUAL_DESC'
        end
        item
          FieldName = 'CODE'
        end>
      Properties.ListSource = dmLookup.dsLuAddressType
    end
    object luAccType: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCTYPE'
      Properties.ListColumns = <
        item
          Caption = 'Acc Type'
          Width = 130
          FieldName = 'ACCTYPEDESC'
        end>
      Properties.ListSource = dmLookup.dsLuAccType
    end
    object luEntity: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'ENTTID'
      Properties.ListColumns = <
        item
          FieldName = 'ENTTCODE'
        end
        item
          FieldName = 'ENTNAME'
        end>
      Properties.ListSource = dmLookup.dsLuEntity
    end
    object luClientBroker: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Broker'
          ImageIndex = 0
          Value = 'B'
        end
        item
          Description = 'Client'
          Value = 'C'
        end>
    end
    object luReceiveDeliver: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Receive'
          ImageIndex = 0
          Value = 'R'
        end
        item
          Description = 'Deliver'
          Value = 'D'
        end>
    end
    object luReceivementPayment: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Receive'
          ImageIndex = 0
          Value = 'R'
        end
        item
          Description = 'Payment'
          Value = 'P'
        end
        item
          Description = 'Netting'
          Value = '0'
        end
        item
          Description = 'All'
          Value = 'A'
        end>
    end
    object luInstrumentBonds: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INSTRUMENT_ID'
      Properties.ListColumns = <
        item
          FieldName = 'INSTRUMENT_CODE'
        end
        item
          FieldName = 'SHORTNAME'
        end>
      Properties.ListSource = dmLookup.dsLuInstrumentBonds
    end
    object luAssetDepreciationMethod: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'No Depreciation'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Straight Line Method'
          Value = 2
        end
        item
          Description = 'Sum of the Years Digits Method'
          Value = 3
        end
        item
          Description = 'Declining Balance Method'
          Value = 4
        end
        item
          Description = 'Double Declining Balance Method'
          Value = 5
        end
        item
          Description = 'From Depreciation Table'
          Value = 6
        end>
    end
    object luAssetGroup: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ASSET_GROUP_ID'
      Properties.ListColumns = <
        item
          FieldName = 'ASSET_GROUP_NAME'
        end
        item
          FieldName = 'DEPRECIATION_METHOD'
        end
        item
          FieldName = 'ECONOMIC_LIFE'
        end>
      Properties.ListSource = dmLookup.dsLuAssetGroup
    end
    object luAssetDeprecTable: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ASSET_DEPRECIATION_TABLE_ID'
      Properties.ListColumns = <
        item
          FieldName = 'ASSET_DEPRECIATION_TABLE_DESC'
        end
        item
          FieldName = 'ECONOMIC_LIFE'
        end>
      Properties.ListSource = dmLookup.dsLuAssetDeprecTable
    end
    object luAllocationAccount: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownRows = 20
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCCODE'
        end
        item
          FieldName = 'ACCNAME'
        end>
      Properties.ListSource = dmLookup.dsLuAllocAccount
    end
    object luCompany: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ENTTID'
      Properties.ListColumns = <
        item
          FieldName = 'ENTTCODE'
        end
        item
          FieldName = 'ENTNAME'
        end>
      Properties.ListSource = dmLookup.dsLuCompany
    end
    object luInstructionType: TcxEditRepositoryImageComboBoxItem
      Properties.ClearKey = 46
      Properties.Items = <
        item
          Description = 'VP'
          ImageIndex = 0
          Value = 'VP'
        end
        item
          Description = 'FOP'
          Value = 'FOP'
        end
        item
          Description = 'C-Best'
          Value = 'C-Best'
        end
        item
          Description = 'Bank'
          Value = 'Bank'
        end>
    end
    object luTransType: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'TRANSTYPE_CODE'
      Properties.ListColumns = <
        item
          FieldName = 'TRANSTYPE_CODE'
        end
        item
          FieldName = 'TRANSTYPE_NAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuTransType
    end
    object luDealTicketStat: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Open'
          ImageIndex = 0
          Value = 'O'
        end
        item
          Description = 'Close'
          Value = 'S'
        end
        item
          Description = 'Cancel'
          Value = 'C'
        end
        item
          Description = 'Reverse'
          Value = 'R'
        end>
    end
    object luDealTicketSTATUS: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Cancel Manual'
          ImageIndex = 0
          Value = 'C'
        end
        item
          Description = 'Merge'
          Value = 'M'
        end
        item
          Description = 'Split'
          Value = 'S'
        end>
    end
    object luExternalSystem: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'EXTSYS_ID'
      Properties.ListColumns = <
        item
          FieldName = 'EXTSYS_CODE'
        end
        item
          FieldName = 'EXTSYS_DESC'
        end>
      Properties.ListSource = dmLookup.dsLuExtsystem
    end
    object luContactUsage: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CUSGID'
      Properties.ListColumns = <
        item
          FieldName = 'CUSGCODE'
        end
        item
          FieldName = 'CUSGDESC'
        end>
      Properties.ListSource = dmLookup.dsLuContactUsage
    end
    object luCompanyAccount: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCCODE'
        end
        item
          FieldName = 'ACCNAME'
        end
        item
          FieldName = 'ACCINIT'
        end>
      Properties.ListSource = dmLookup.dsLuCompanyAccount
    end
    object luLedgerAccByAccount: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'SEQID'
      Properties.ListColumns = <
        item
          FieldName = 'ALCODE'
        end
        item
          FieldName = 'ALTYPE'
        end
        item
          FieldName = 'BANKCODE'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end>
      Properties.ListSource = dmLookup.dsLuLedgerAccByAccount
    end
    object luCompanyAccountSubType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Operation Account'
          ImageIndex = 0
          Value = 'O'
        end
        item
          Description = 'Counter Part Account'
          Value = 'C'
        end
        item
          Description = 'Main Account'
          Value = 'M'
        end
        item
          Description = 'Sub Allocation Account'
          Value = 'A'
        end
        item
          Description = 'Facilitation Account'
          Value = 'F'
        end
        item
          Description = 'Warehouse Account'
          Value = 'W'
        end
        item
          Description = 'Cross Tom Account'
          Value = 'X'
        end
        item
          Description = 'Trading Error'
          Value = 'E'
        end>
    end
    object luEmailType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'General Purpose'
          ImageIndex = 0
          Value = 'GP'
        end
        item
          Description = 'Trade Confirmation'
          ImageIndex = 0
          Value = 'TC'
        end
        item
          Description = 'Statement Of Account'
          Value = 'SOA'
        end
        item
          Description = 'Expired Document'
          Value = 'EXPDOC'
        end
        item
          Description = 'Opening Account Completed'
          Value = 'OAC'
        end
        item
          Description = 'Opening Account Approved'
          Value = 'OAP'
        end
        item
          Description = 'Opening Account Activated'
          Value = 'OAA'
        end
        item
          Description = 'Corporate Action'
          Value = 'CA'
        end
        item
          Description = 'Batch Processing Notification'
          Value = 'BPN'
        end>
    end
    object luEmailStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Not Send'
          ImageIndex = 0
          Value = 'N'
        end
        item
          Description = 'Draft'
          ImageIndex = 0
          Value = 'D'
        end
        item
          Description = 'Send'
          Value = 'S'
        end
        item
          Description = 'Failed'
          Value = 'F'
        end>
    end
    object luCashVoucherType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Broker Bank To Customer Bank (Payment)'
          ImageIndex = 0
          Value = 'P'
        end
        item
          Description = 'Customer Bank To Broker Bank (Receivement)'
          Value = 'R'
        end>
    end
    object luJournalTypeManual: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'JRNTYPE'
      Properties.ListColumns = <
        item
          FieldName = 'JRNTYPE'
        end
        item
          FieldName = 'JRNTYPEDESC'
        end>
      Properties.ListSource = dmLookup.dsLuJrnType
    end
    object luUser: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'USERID'
      Properties.ListColumns = <
        item
          FieldName = 'USERID'
        end
        item
          FieldName = 'USERNAME'
        end>
      Properties.ListSource = dmLookup.dsLuUser
    end
    object luCustody: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'CUSTODYCODE'
      Properties.ListColumns = <
        item
          FieldName = 'CUSTODYCODE'
        end
        item
          FieldName = 'CUSTODYNAME'
        end
        item
          FieldName = 'TELP'
        end
        item
          FieldName = 'FAX'
        end
        item
          FieldName = 'CONTACTPERSON'
        end>
      Properties.ListSource = dmLookup.dsLuCustody
    end
    object luSettleReason: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'TRAD -> Jual Beli'
          ImageIndex = 0
          Value = 'TRAD'
        end
        item
          Description = 'GRAN -> Hibah'
          Value = 'GRAN'
        end
        item
          Description = 'HERI -> Waris'
          Value = 'HERI'
        end
        item
          Description = 'BART -> Inbreng'
          Value = 'BART'
        end
        item
          Description = 'SUBS -> ETF: Subscription'
          Value = 'SUBS'
        end
        item
          Description = 'REDM -> ETF: Redemption'
          Value = 'REDM'
        end
        item
          Description = 'SELB -> Pinjam meminjam Efek'
          Value = 'SELB'
        end
        item
          Description = 'GIFT -> Hadiah, gratifikasi, sumbangan'
          Value = 'GIFT'
        end
        item
          Description = 'VERD -> Putusan Peradilan'
          Value = 'VERD'
        end
        item
          Description = 'COLL -> Agunan Efek'
          Value = 'COLL'
        end
        item
          Description = 'MSOP -> Management Stock Option'
          Value = 'MSOP'
        end
        item
          Description = 'IPO -> Initial Public Offering'
          Value = 'IPO'
        end
        item
          Description = 
            'OWNE -> Pemindahan Efek antar Sub Rekening Efek milik nasabah ya' +
            'ng sama'
          Value = 'OWNE'
        end
        item
          Description = 'Lainnya'
          Value = 'OTHR'
        end>
    end
    object luStockPurpose: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Exchange Transaction'
          ImageIndex = 0
          Value = 'EXCHG'
        end
        item
          Description = 'Non Exchange Transaction'
          Value = 'NONEXCHG'
        end>
    end
    object luBankAccount: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BNNAME'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end
        item
          FieldName = 'BANKBRANCH'
        end>
      Properties.ListSource = dmLookup.dsLuBankAccount
    end
    object luAccLegClass: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ALCID'
      Properties.ListColumns = <
        item
          Caption = 'ID'
          FieldName = 'ALCID'
        end
        item
          Caption = 'Account Ledger Class'
          FieldName = 'ALCNAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuAccLegClass
    end
    object luBankCustody: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CUSTODYCODE'
      Properties.ListColumns = <
        item
          FieldName = 'CUSTODYCODE'
        end
        item
          FieldName = 'CUSTODYNAME'
        end>
      Properties.ListSource = dmLookup.dsLuBankCustody
    end
    object luCCType: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'CC_TYPE'
      Properties.ListColumns = <
        item
          Caption = 'Credit Limit Type'
          Width = 200
          FieldName = 'CC_TYPE_DESC'
        end
        item
          Caption = 'Type'
          Width = 80
          FieldName = 'CC_TYPE'
        end>
      Properties.ListSource = dmLookup.dsLuCCType
    end
    object luSalesType: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'SALESTYPE'
      Properties.ListColumns = <
        item
          Caption = 'Sales Type'
          Width = 200
          FieldName = 'SALESTYPEDESC'
        end
        item
          Caption = 'Code'
          Width = 50
          FieldName = 'SALESTYPE'
        end>
      Properties.ListSource = dmLookup.dsLuSalesType
    end
    object luCRDCONCLASS: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CCCLS_ID'
      Properties.ListColumns = <
        item
          FieldName = 'CCCLS_ID'
        end
        item
          FieldName = 'CCLSSNAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsluCrdConClass
    end
    object luCustudyType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Deposit Account'
          ImageIndex = 0
          Value = 'D'
        end
        item
          Description = 'Collateral Account'
          Value = 'C'
        end
        item
          Description = 'Custodian Bank Account'
          Value = 'B'
        end>
    end
    object luCashInstr: TcxEditRepositoryImageComboBoxItem
      Properties.ClearKey = 46
      Properties.Items = <
        item
          Description = 'LOCAL'
          ImageIndex = 0
          Value = 'LOCAL'
        end
        item
          Description = 'LLG'
          Value = 'LLG'
        end
        item
          Description = 'RTGS'
          Value = 'RTGS'
        end>
    end
    object luStockDelInstr: TcxEditRepositoryImageComboBoxItem
      Properties.ClearKey = 46
      Properties.Items = <
        item
          Description = 'DVP'
          ImageIndex = 0
          Value = 'DVP'
        end
        item
          Description = 'DFOP'
          Value = 'DFOP'
        end>
    end
    object luStockRecInstr: TcxEditRepositoryImageComboBoxItem
      Properties.ClearKey = 46
      Properties.Items = <
        item
          Description = 'RVP'
          ImageIndex = 0
          Value = 'RVP'
        end
        item
          Description = 'RFOP'
          Value = 'RFOP'
        end>
    end
    object luAuthPerson: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'AUTH_NAME'
      Properties.ListColumns = <
        item
          FieldName = 'AUTH_NAME'
        end
        item
          Caption = 'Position'
          FieldName = 'JABATAN'
        end>
      Properties.ListSource = dmLookup.dsLuAuthPerson
    end
    object luDocType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'ID Card'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Passport'
          Value = '4'
        end
        item
          Description = 'Driving License'
          Value = '5'
        end
        item
          Description = 'SIUP'
          Value = '3'
        end
        item
          Description = 'Photo'
          Value = '6'
        end
        item
          Description = 'Taxpayer Reg No.'
          Value = '2'
        end
        item
          Description = 'Speciment'
          Value = '8'
        end
        item
          Description = 'Other'
          Value = '0'
        end
        item
          Description = 'Front Cover Saving Book'
          Value = '7'
        end>
    end
    object luBusinessLine: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'BUSSLINE_ID'
      Properties.ListColumns = <
        item
          FieldName = 'BUSSINESS_NAME'
        end>
      Properties.ListSource = dmLookup.dsLuBusinessLine
    end
    object ludbOccupation: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'OC_CODE'
      Properties.ListColumns = <
        item
          FieldName = 'OCCUPATION'
        end>
    end
    object luInstrumentAll: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INSTRUMENT_ID'
      Properties.ListColumns = <
        item
          Caption = 'Code'
          FieldName = 'INSTRUMENT_CODE'
        end
        item
          Caption = 'Instrument Name'
          FieldName = 'SHORTNAME'
        end>
      Properties.ListSource = dmLookup.dsLuInstrumentAll
    end
    object luBussCat: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'BUS_CAT_ID'
      Properties.ListColumns = <
        item
          Caption = 'Description'
          FieldName = 'BUS_CAT_DESC'
        end
        item
          Caption = 'Buss Type Code'
          FieldName = 'BUS_CAT_CODE'
        end>
      Properties.ListSource = dmLookup.dsLuBussCat
    end
    object luBankRDN: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'BNCODE'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BNNAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuBankRDN
    end
    object luRisk: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Low'
          ImageIndex = 0
          Value = 'L'
        end
        item
          Description = 'Medium'
          Value = 'M'
        end
        item
          Description = 'High'
          Value = 'H'
        end>
    end
    object luFamilyRelationship: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Sister'
          ImageIndex = 0
          Value = '100'
        end
        item
          Description = 'Mother'
          Value = '102'
        end
        item
          Description = 'Father'
          Value = '103'
        end
        item
          Description = 'Child'
          Value = '105'
        end
        item
          Description = 'Brother'
          Value = '110'
        end
        item
          Description = 'Husband'
          Value = '120'
        end
        item
          Description = 'Wife'
          Value = '121'
        end
        item
          Description = 'Cousin'
          Value = '122'
        end>
    end
    object luCustEntity: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ENTTID'
      Properties.ListColumns = <
        item
          FieldName = 'ENTTCODE'
        end
        item
          FieldName = 'CUST_NAME'
        end>
      Properties.ListSource = dmLookup.dsLuCustEntity
    end
    object luIPOBookOrderType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Open All Price'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Limit or Better Price'
          Value = '2'
        end>
    end
    object luIPOBookType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Customer'
          ImageIndex = 0
          Value = 'C'
        end
        item
          Description = 'Non Customer'
          Value = 'N'
        end>
    end
    object luCustAccount: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCCODE'
        end
        item
          FieldName = 'CUST_NAME'
        end>
      Properties.ListSource = dmLookup.dsLuCustAccount
    end
    object luIPODistType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Fixed Allotment'
          ImageIndex = 0
          Value = 'F'
        end
        item
          Description = 'Pooling'
          Value = 'P'
        end>
    end
    object luBAE: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'BAEID'
      Properties.ListColumns = <
        item
          FieldName = 'BAECODE'
        end
        item
          FieldName = 'BAENAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuBAE
    end
    object LuPaymentReceiveDeliver: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Payment'
          ImageIndex = 0
          Value = 'P'
        end
        item
          Description = 'Receive'
          Value = 'R'
        end
        item
          Description = 'Deliver'
          Value = 'D'
        end>
    end
    object luSettleTypeCash: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'SETTLETYPE_CODE'
      Properties.ListColumns = <
        item
          FieldName = 'SETTLETYPE_DESC'
        end>
      Properties.ListSource = dmLookup.dsLuSettleTypeCash
    end
    object luSettleTypeStock: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'SETTLETYPE_CODE'
      Properties.ListColumns = <
        item
          FieldName = 'SETTLETYPE_DESC'
        end>
      Properties.ListSource = dmLookup.dsLuSettleTypeStock
    end
    object luSettleTransType: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'TRANS_TYPE_CODE'
      Properties.ListColumns = <
        item
          FieldName = 'TRANS_TYPE_NAME'
        end>
      Properties.ListSource = dmLookup.dsLuSettleTransType
    end
    object luSettleTypeAll: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'SETTLETYPE_CODE'
      Properties.ListColumns = <
        item
          FieldName = 'SETTLETYPE_DESC'
        end
        item
          RepositoryItem = luCashStock
          FieldName = 'SETTLETYPE_CS'
        end>
      Properties.ListSource = dmLookup.dsLuSettleTypeAll
    end
    object luInstrumentStock: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INSTRUMENT_ID'
      Properties.ListColumns = <
        item
          Caption = 'Stock Code'
          Width = 80
          FieldName = 'INSTRUMENT_CODE'
        end
        item
          Caption = 'Stock Name'
          Width = 250
          FieldName = 'SHORTNAME'
        end
        item
          Caption = 'ISIN Code'
          Width = 90
          FieldName = 'ISINCODE'
        end>
      Properties.ListSource = dmLookup.dsLuInstrumentStock
    end
    object SettleSide: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Receive'
          ImageIndex = 0
          Value = 'R'
        end
        item
          Description = 'Deliver'
          Value = 'D'
        end
        item
          Description = 'Payment'
          Value = 'P'
        end>
    end
    object luInterestType: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INTEREST_TYPE'
      Properties.ListColumns = <
        item
          FieldName = 'INTEREST_TYPE'
        end
        item
          FieldName = 'INTEREST_TYPENAME'
        end
        item
          FieldName = 'LOCAL_TAX'
        end
        item
          FieldName = 'FOREIGN_TAX'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuInterestType
    end
    object luInterestByType: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INTERESTCODE'
      Properties.ListColumns = <
        item
          FieldName = 'INTERESTCODE'
        end
        item
          FieldName = 'INTERESTDESC'
        end>
      Properties.ListSource = dmLookup.dsLuInterestByType
    end
    object luCashMutationType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Bank Mutation'
          ImageIndex = 0
          Value = 'B'
        end
        item
          Description = 'Cash Deposit'
          Value = 'C'
        end
        item
          Description = 'Overbooking'
          Value = 'O'
        end
        item
          Description = 'RTGS'
          Value = 'R'
        end
        item
          Description = 'Bank Transfer'
          Value = 'T'
        end
        item
          Description = 'Interest'
          Value = 'I'
        end
        item
          Description = 'Interest - (Admin Fee + Tax)'
          Value = 'X'
        end
        item
          Description = 'Admin Fee'
          Value = 'A'
        end
        item
          Description = 'Misc'
          Value = 'M'
        end>
    end
    object luAccountName: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCCODE'
        end
        item
          FieldName = 'ACCNAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuAccount
    end
    object luJrnType: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'JTYPE'
      Properties.ListColumns = <
        item
          FieldName = 'JTYPE'
        end
        item
          FieldName = 'DESCRIPTION'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsJrnType
    end
    object luTaxPayerStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Own'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Guarantor'
          Value = 2
        end>
    end
    object luSOPType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'MSOP'
          ImageIndex = 0
          Value = 'M'
        end
        item
          Description = 'ESOP'
          Value = 'E'
        end>
    end
    object luInstrumentGroupType: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'GROUP_TYPE'
      Properties.ListColumns = <
        item
          FieldName = 'GROUP_TYPE'
        end
        item
          FieldName = 'GROUP_TYPE_NAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuInstrumentGroupType
    end
    object luEmailTypes: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'EMAILTYPE'
      Properties.ListColumns = <
        item
          FieldName = 'EMAILTYPE'
        end
        item
          Width = 250
          FieldName = 'EMAIL_DESC'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuEmailType
    end
    object luMTITransType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Import'
          ImageIndex = 0
          Value = 'I'
        end
        item
          Description = 'Export'
          Value = 'E'
        end>
    end
    object luMTIMOC: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Mandatory'
          ImageIndex = 0
          Value = 'M'
        end
        item
          Description = 'Optional'
          Value = 'O'
        end
        item
          Description = 'Conditional'
          Value = 'C'
        end>
    end
    object luMTIEOC: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Expected'
          ImageIndex = 0
          Value = 'E'
        end
        item
          Description = 'Optional'
          Value = 'O'
        end
        item
          Description = 'Conditional'
          Value = 'C'
        end>
    end
    object luMTIRecord: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'RECORDID'
      Properties.ListColumns = <
        item
          FieldName = 'RECORDNAME'
        end>
      Properties.ListSource = dmLookup.dsLuMTIRecord
    end
    object luMTITrans: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'TRANSID'
      Properties.ListColumns = <
        item
          FieldName = 'TRANSCODE'
        end>
      Properties.ListSource = dmLookup.dsLuMTITrans
    end
    object luMTITransRecord: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'RECORDID'
      Properties.ListColumns = <
        item
          FieldName = 'RECORDNAME'
        end>
      Properties.ListSource = dmLookup.dsLuMTITransRecord
    end
    object luMTISourceData: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'DataSet'
          ImageIndex = 0
          Value = 'D'
        end
        item
          Description = 'Empty'
          ImageIndex = 0
          Value = 'E'
        end
        item
          Description = 'Fixed Value'
          Value = 'F'
        end>
    end
    object luMTIField: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'FIELDID'
      Properties.ListColumns = <
        item
          FieldName = 'FIELDNAME'
        end>
      Properties.ListSource = dmLookup.dsLuMTIField
    end
    object luMTIDatasetField: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'FIELDNAME'
      Properties.ListColumns = <
        item
          FieldName = 'FIELDNAME'
        end>
      Properties.ListSource = dmLookup.dsLuMTIDatasetField
    end
    object luMTIConfig: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CONFIGID'
      Properties.ListColumns = <
        item
          FieldName = 'CONFIGCODE'
        end>
      Properties.ListSource = dmLookup.dsLuMTIConfig
    end
    object luBankCode: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'BNCODE'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BNNAME'
        end>
      Properties.ListSource = dmLookup.dsLuBank
    end
    object luAccountRDN: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          Caption = 'Account Code'
          Width = 100
          FieldName = 'ACCCODE'
        end
        item
          Caption = 'Account Name'
          Width = 250
          FieldName = 'ACCNAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuAccountRDN
    end
    object luInsertUpdateDelete: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Insert'
          ImageIndex = 0
          Value = 'I'
        end
        item
          Description = 'Update'
          Value = 'U'
        end
        item
          Description = 'Delete'
          Value = 'D'
        end>
    end
    object luApprovalState: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Approve'
          ImageIndex = 0
          Value = 'A'
        end
        item
          Description = 'Reject'
          Value = 'R'
        end
        item
          Description = 'Cancel'
          Value = 'C'
        end
        item
          Description = 'ReModify'
          Value = 'M'
        end>
    end
    object luReportCategory: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CATEGORY_ID'
      Properties.ListColumns = <
        item
          FieldName = 'CATEGORY_CODE'
        end
        item
          FieldName = 'DESCRIPTION'
        end>
      Properties.ListSource = dmLookup.dsLuReportCategory
    end
    object luActLedgerTypeOwner: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Both (Client & Company)'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Client Only'
          Value = '2'
        end
        item
          Description = 'Company Only'
          Value = '3'
        end>
    end
    object luTaxID: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'TAXID'
      Properties.ListColumns = <
        item
          FieldName = 'TAXID'
        end
        item
          FieldName = 'SHORTDESC'
        end
        item
          FieldName = 'LONGDESC'
        end>
      Properties.ListSource = dmLookup.dsLuTaxID
      Properties.Revertable = True
    end
    object luAllClientRetailInstitution: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'All Client'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Retail Client'
          Value = 1
        end
        item
          Description = 'Institution Client'
          Value = 2
        end>
    end
    object luInvestorAsset: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = '< Rp 100 billion'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Rp 100 billion - Rp 500 billion'
          Value = '2'
        end
        item
          Description = 'Rp 500 billion - Rp 1 trillion'
          Value = '3'
        end
        item
          Description = 'Rp 1 trillion - Rp 5 trillion'
          Value = '4'
        end
        item
          Description = '> Rp 5 trillion'
          Value = '5'
        end>
    end
    object luInvestorOperatingProfit: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = '< Rp 1 Billion'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Rp 1 Billion - Rp 5 Billion'
          Value = '2'
        end
        item
          Description = 'Rp 5 Billion - Rp 10 Billion'
          Value = '3'
        end
        item
          Description = 'Rp 10 Billion - Rp 50 Billion'
          Value = '4'
        end
        item
          Description = '> Rp 50 Billion'
          Value = '5'
        end>
    end
    object luInvestorCategory: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'DIRECT'
          ImageIndex = 0
          Value = 'D'
        end
        item
          Description = 'INDIRECT'
          Value = 'I'
        end>
    end
    object luClientAssetOwner: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'My Self'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Representing Other Party'
          Value = '2'
        end>
    end
    object luSupplementaryDocType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Kosong'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'Copy AD/ART'
          Value = '1'
        end
        item
          Description = 'SKMK (Surat Keputusan Menteri Keuangan)'
          Value = '2'
        end
        item
          Description = 'Surat Ketetapan Pemerintah RI'
          Value = '3'
        end
        item
          Description = 'Surat Pernyataan Efektif dari OJK'
          Value = '4'
        end
        item
          Description = 'Keputusan Dirjen Pajak'
          Value = '5'
        end
        item
          Description = 'Surat Keputusan dari OJK'
          Value = '6'
        end>
    end
    object luWorkflowStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = '-'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'On Progress'
          Value = '1'
        end
        item
          Description = 'Done'
          Value = '2'
        end
        item
          Description = 'Canceled'
          Value = '3'
        end>
    end
    object luKSEIAccType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = '001'
          ImageIndex = 0
          Value = '001'
        end
        item
          Description = '002'
          Value = '002'
        end
        item
          Description = '003'
          Value = '003'
        end
        item
          Description = '004'
          Value = '004'
        end
        item
          Description = '005'
          Value = '005'
        end
        item
          Description = '006'
          Value = '006'
        end
        item
          Description = '007'
          Value = '007'
        end
        item
          Description = '008'
          Value = '008'
        end
        item
          Description = '009'
          Value = '009'
        end>
    end
    object luAddressTypeInstitution: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'INSTITUTIONAL_DESC'
        end
        item
          FieldName = 'CODE'
        end>
      Properties.ListSource = dmLookup.dsLuAddressType
    end
    object luYesNo: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Ya / Yes'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Tidak / No'
          Value = '0'
        end>
    end
    object luGL_FL_SL: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'General Ledger'
          ImageIndex = 0
          Value = 'GL'
        end
        item
          Description = 'Fund Sub Ledger'
          Value = 'FL'
        end
        item
          Description = 'Securities Sub Ledger'
          Value = 'SL'
        end>
    end
    object luJournalType: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'JRNTYPE'
      Properties.ListColumns = <
        item
          FieldName = 'JRNTYPE'
        end
        item
          FieldName = 'JRNTYPEDESC'
        end>
      Properties.ListSource = dmLookup.dsLuJournalType
    end
    object luSIType: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'SITYPE'
      Properties.ListColumns = <
        item
          FieldName = 'SIDESC'
        end>
      Properties.ListSource = dmLookup.dsLuSIType
    end
    object luLedgerTypeByCatCode: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'ALTYPE'
      Properties.ListColumns = <
        item
          Width = 50
          FieldName = 'ALTYPE'
        end
        item
          Width = 150
          FieldName = 'ALSYSTEM'
        end
        item
          Width = 300
          FieldName = 'ALDESCRIPTION'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuActLedByCATCODE
    end
    object luAccountInit: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCINIT'
        end
        item
          FieldName = 'ACCNAME'
        end
        item
          FieldName = 'ACCCODE'
        end
        item
          FieldName = 'ACCTYPE'
        end>
      Properties.ListSource = dmLookup.dsLuAccount
    end
    object luRptGrpType: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'RPTTYPEGRP'
      Properties.ListColumns = <
        item
          FieldName = 'RPTTYPEGRP'
        end
        item
          FieldName = 'RPTDESC'
        end
        item
          FieldName = 'EXTFILE'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuRptGrpType
    end
    object luRptType: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'RPTTYPE'
      Properties.ListColumns = <
        item
          FieldName = 'RPTTYPE'
        end
        item
          FieldName = 'RTPTYPEDESC'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuRptType
    end
    object luSelectDataReport: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'ROWNO'
      Properties.ListColumns = <
        item
          FieldName = 'ROWNO'
        end
        item
          FieldName = 'TEXTITEM'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuSelectDataReport
    end
    object luOrderSource: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Desktop App'
          ImageIndex = 0
          Value = 'APP'
        end
        item
          Description = 'Sales / Dealer'
          Value = 'INP'
        end
        item
          Description = 'Web'
          Value = 'WEB'
        end
        item
          Description = 'IOS'
          Value = 'IOS'
        end
        item
          Description = 'BBM'
          Value = 'BBM'
        end
        item
          Description = 'Android'
          Value = 'AND'
        end
        item
          Description = 'Online Trading'
          Value = 'OLT'
        end
        item
          Description = 'Nayaga Manual'
          Value = 'INM'
        end>
    end
    object luApproveMethod: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Allow Order'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Full Approve'
          Value = 1
        end
        item
          Description = 'Partial Approve'
          Value = 2
        end
        item
          Description = 'Full Reject'
          Value = 3
        end
        item
          Description = 'Partial Reject'
          Value = 4
        end>
    end
    object luChargeConfig: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CHARGE'
      Properties.ListColumns = <
        item
          FieldName = 'CHARGE'
        end
        item
          FieldName = 'MARKETCODE'
        end>
      Properties.ListSource = dmLookup.dsLuChargeConfig
    end
    object luExtMarket: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.View = gvwLuMarket
      Properties.KeyFieldNames = 'MARKETCODE'
      Properties.ListFieldItem = gvwLuMarketMARKETCODE
    end
    object luRptTypeAll: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'RPTTYPE'
      Properties.ListColumns = <
        item
          FieldName = 'RPTTYPE'
        end
        item
          FieldName = 'RTPTYPEDESC'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuRptTypeAll
    end
    object luFilterDateBy: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Entry Date'
          ImageIndex = 0
          Value = 'E'
        end
        item
          Description = 'Transaction Date'
          Value = 'T'
        end>
    end
    object luCAType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'HMETD'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Cash Deviden'
          Value = '2'
        end
        item
          Description = 'Stock Deviden'
          Value = '3'
        end
        item
          Description = 'Mix Deviden'
          Value = '4'
        end
        item
          Description = 'Stock Bonus'
          Value = '5'
        end
        item
          Description = 'Stock Split'
          Value = '6'
        end
        item
          Description = 'Stock Reverse'
          Value = '7'
        end
        item
          Description = 'Stock Merge'
          Value = '8'
        end
        item
          Description = 'Coupon Payment'
          Value = '9'
        end>
    end
    object luCashSettleStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Open'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Settle'
          Value = '2'
        end
        item
          Description = 'Reverse'
          Value = '3'
        end
        item
          Description = 'Cancel'
          Value = '4'
        end>
    end
    object luCompanyPaymentBank: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end
        item
          FieldName = 'BANKBRANCH'
        end>
      Properties.ListSource = dmLookup.dsLuCompanyPaymentBank
    end
    object luCompanyReceiveBank: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end
        item
          FieldName = 'BANKBRANCH'
        end>
      Properties.ListSource = dmLookup.dsLuCompanyReceiveBank
    end
    object luCompanyBankType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'C-Best Bank'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'Payment Bank'
          Value = '1'
        end
        item
          Description = 'QQ Bank'
          Value = '2'
        end
        item
          Description = 'Corpact Bank'
          Value = '3'
        end>
    end
    object luCompanyBank: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'BANKID'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BNNAME'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end
        item
          FieldName = 'CCYCODE'
        end
        item
          FieldName = 'BANKDESC'
        end>
      Properties.ListSource = dmLookup.dsLuCompanyBanks
    end
    object luPrivateBankAcc: TcxEditRepositoryLookupComboBoxItem
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BNNAME'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end>
      Properties.ListSource = dmLookup.dsLuPrivateBankAcc
    end
    object luRDNBankAcc: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BNNAME'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end>
      Properties.ListSource = dmLookup.dsLuRDNBankAcc
    end
    object luBankType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Company Payment Bank'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Company QQ Bank'
          Value = '2'
        end
        item
          Description = 'Client RDN Bank'
          Value = '3'
        end
        item
          Description = 'Client Private Bank'
          Value = '4'
        end>
    end
    object luAccountCustodian: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCCUSTODYID'
        end
        item
          FieldName = 'CUSTODYACCNO'
        end>
      Properties.ListSource = dmLookup.dsLuAccountCustodian
    end
    object luCashSettleWith: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Credit Balance'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'RDN'
          Value = '2'
        end
        item
          Description = 'Company Bank'
          Value = '3'
        end
        item
          Description = 'Cash Book'
          Value = '4'
        end
        item
          Description = 'Debit Balance'
          Value = '0'
        end>
    end
    object luCashBook: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CBID'
      Properties.ListColumns = <
        item
          FieldName = 'CBCODE'
        end
        item
          FieldName = 'CBDESC'
        end
        item
          FieldName = 'CCYCODE'
        end
        item
          FieldName = 'STAT'
        end>
      Properties.ListSource = dmLookup.dsLuCashBook
    end
    object luDCNotesStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Open'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Posted'
          Value = '2'
        end
        item
          Description = 'Reversed'
          Value = '3'
        end
        item
          Description = 'Canceled'
          Value = '4'
        end>
    end
    object luLedgerType: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'LEDGERTYPE'
      Properties.ListColumns = <
        item
          FieldName = 'LEDGERTYPE'
        end
        item
          FieldName = 'LEDGERNAME'
        end
        item
          FieldName = 'MARKETCODE'
        end>
      Properties.ListSource = dmLookup.dsLuLedgerType
    end
    object luGLType: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'GLTYPE_ID'
      Properties.ListColumns = <
        item
          FieldName = 'GLTYPE_CODE'
        end
        item
          FieldName = 'GLTYPE_DESC'
        end>
      Properties.ListSource = dmLookup.dsLuGLType
    end
    object luReferral: TcxEditRepositoryLookupComboBoxItem
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'REFERRAL_ID'
      Properties.ListColumns = <
        item
          FieldName = 'REFERRAL_CODE'
        end
        item
          FieldName = 'REFERRAL_DESC'
        end
        item
          FieldName = 'REFERRAL_GROUP'
        end>
      Properties.ListSource = dmLookup.dsLuReferral
    end
    object luReferralType: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'REFERRAL_TYPE_ID'
      Properties.ListColumns = <
        item
          FieldName = 'REFERRAL_TYPE'
        end
        item
          FieldName = 'REFERRAL_TYPE_DESC'
        end>
      Properties.ListSource = dmLookup.dsLuReferralType
    end
    object luStockSettleStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Open'
          ImageIndex = 0
          Value = 'O'
        end
        item
          Description = 'Settle'
          Value = 'S'
        end
        item
          Description = 'Reverse'
          Value = 'R'
        end
        item
          Description = 'Cancel'
          Value = 'C'
        end>
    end
    object luSalesByBranch: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'SALESID'
      Properties.ListColumns = <
        item
          Caption = 'Sales Name'
          Width = 150
          FieldName = 'SALESNAME'
        end
        item
          Caption = 'Sales Code'
          Width = 70
          FieldName = 'SALESCODE'
        end
        item
          Caption = 'Branch Name'
          Width = 260
          FieldName = 'BRANCHNAME'
        end>
      Properties.ListSource = dmLookup.dsLuSalesByBranch
      Properties.PostPopupValueOnTab = True
    end
    object luBranch2: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'BRANCHID'
      Properties.ListColumns = <
        item
          Caption = 'Branch Name'
          Width = 180
          FieldName = 'BRANCHDESC'
        end
        item
          Caption = 'Branch Code'
          Width = 80
          FieldName = 'BRANCHCODE'
        end>
      Properties.ListSource = dmLookup.dsLuBranch2
    end
    object luCommShare: TcxEditRepositoryLookupComboBoxItem
      Properties.ClearKey = 46
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'COMM_SHARE_ID'
      Properties.ListColumns = <
        item
          FieldName = 'COMM_SHARE_CODE'
        end
        item
          FieldName = 'COMM_SHARE_DESC'
        end>
      Properties.ListSource = dmLookup.dsLuCommShare
    end
    object luGLAccountTrxNo: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'GLACCOUNTID'
      Properties.ListColumns = <
        item
          FieldName = 'GLACCOUNTCODE'
        end
        item
          FieldName = 'CCY'
        end
        item
          FieldName = 'GLACCOUNTNAME'
        end>
      Properties.ListSource = dmLookup.dsLuGLAccountTrx
    end
    object LuGLAccountTrxName: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'GLACCOUNTID'
      Properties.ListColumns = <
        item
          FieldName = 'GLACCOUNTNAME'
        end
        item
          FieldName = 'GLACCOUNTCODE'
        end
        item
          FieldName = 'CCY'
        end>
      Properties.ListSource = dmLookup.dsLuGLAccountTrx
    end
    object LuEmployee: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'EMPLOYEEID'
      Properties.ListColumns = <
        item
          Width = 80
          FieldName = 'EMPLOYEECODE'
        end
        item
          Width = 200
          FieldName = 'EMPLOYEENAME'
        end>
      Properties.ListSource = dmLookup.dsLuEmployee
    end
    object LuProject: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'PROJECTID'
      Properties.ListColumns = <
        item
          Width = 80
          FieldName = 'PROJECTCODE'
        end
        item
          Width = 200
          FieldName = 'PROJECTNAME'
        end>
      Properties.ListSource = dmLookup.dsLuProject
    end
    object luJenisRumah: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'House'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Dormitory'
          Value = '2'
        end
        item
          Description = 'Apartement'
          Value = '3'
        end
        item
          Description = 'Other'
          Value = '4'
        end>
    end
    object luJenisKepemilikan: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Own'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Family'
          Value = '2'
        end
        item
          Description = 'Company'
          Value = '3'
        end
        item
          Description = 'Rent'
          Value = '4'
        end
        item
          Description = 'Other'
          Value = '5'
        end>
    end
    object luGLCategory: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Asset'
          ImageIndex = 0
          Value = 'A'
        end
        item
          Description = 'Libilities'
          Value = 'L'
        end
        item
          Description = 'Capital'
          Value = 'R'
        end
        item
          Description = 'Expense'
          Value = 'E'
        end
        item
          Description = 'Income'
          Value = 'I'
        end>
    end
    object luReligions: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Islam'
          ImageIndex = 0
          Value = 'ISLAM'
        end
        item
          Description = 'Kristen'
          Value = 'KRISTEN'
        end
        item
          Description = 'Katolik'
          Value = 'KATOLIK'
        end
        item
          Description = 'Hindu'
          Value = 'HINDU'
        end
        item
          Description = 'Budha'
          Value = 'BUDHA'
        end
        item
          Description = 'Other'
          Value = 'OTHER'
        end>
    end
    object luBankAccountMutation: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end
        item
          FieldName = 'BANKBRANCH'
        end>
      Properties.ListSource = dmLookup.dsLuBankAccountMutation
    end
    object luCustomerStock: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'StockID'
      Properties.ListColumns = <
        item
          Width = 100
          FieldName = 'StockCode'
        end
        item
          Width = 300
          FieldName = 'StockName'
        end
        item
          Caption = 'Stock Balance'
          FieldName = 'StockBalance'
        end>
      Properties.ListSource = dmLookup.dsluCustStock
    end
    object luOccupations: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'OC_CODE'
      Properties.ListColumns = <
        item
          FieldName = 'OCCUPATION'
        end>
      Properties.ListSource = dmLookup.dsLuOccupation
    end
    object luStockMovProgram: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'prog_id'
      Properties.ListColumns = <
        item
          Width = 200
          FieldName = 'progName'
        end
        item
          Width = 300
          FieldName = 'progDesc'
        end>
      Properties.ListSource = dmLookup.dsLuMovementProgram
    end
    object luStockSettlementVoucherSettleModel: TcxEditRepositoryImageComboBoxItem
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Normal'
          ImageIndex = 0
          Value = 'N'
        end
        item
          Description = 'ACS'
          Value = 'A'
        end>
    end
    object luEIPOStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Open'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Book Building'
          Value = '2'
        end
        item
          Description = 'Offering'
          Value = '3'
        end
        item
          Description = 'Allotment'
          Value = '4'
        end
        item
          Description = 'Distributed'
          Value = '5'
        end
        item
          Description = 'Closed'
          Value = '6'
        end>
    end
    object luInstrumentStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Active'
          ImageIndex = 0
          Value = 'A'
        end
        item
          Description = 'Closed'
          Value = 'C'
        end
        item
          Description = 'IPO'
          Value = 'I'
        end>
    end
    object luJournalBankList: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'GLACCOUNTID'
      Properties.ListColumns = <
        item
          Caption = 'Group ID'
          FieldName = 'GROUPID'
        end
        item
          Caption = 'GL Account Code'
          Width = 80
          FieldName = 'GLACCOUNTCODE'
        end
        item
          Caption = 'GL Account Name'
          Width = 250
          FieldName = 'GLACCOUNTNAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsluJournalBankList
    end
    object luAllAccountType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Company'
          ImageIndex = 0
          Value = 'C'
        end
        item
          Description = 'Broker'
          Value = 'B'
        end
        item
          Description = 'Facilition'
          Value = 'F'
        end
        item
          Description = 'Institution'
          Value = 'I'
        end
        item
          Description = 'Clearing House'
          Value = 'K'
        end
        item
          Description = 'Market'
          Value = 'M'
        end
        item
          Description = 'Individual'
          Value = 'N'
        end
        item
          Description = 'CBEST Account'
          Value = 'O'
        end
        item
          Description = 'Portfolio'
          Value = 'P'
        end
        item
          Description = 'Underwriter'
          Value = 'U'
        end
        item
          Description = 'Crossing Tomorrow'
          Value = 'X'
        end>
    end
    object luCPAccount: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          Width = 100
          FieldName = 'ACCCODE'
        end
        item
          Width = 250
          FieldName = 'ACCNAME'
        end
        item
          Width = 300
          FieldName = 'ACCTYPE_DESC'
        end>
      Properties.ListSource = dmLookup.dsLuCPBroker
    end
    object luBoardMarket: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'BOARDID'
      Properties.ListColumns = <
        item
          Width = 70
          FieldName = 'BOARDCODE'
        end
        item
          FieldName = 'BOARDDESC'
        end
        item
          Width = 80
          FieldName = 'MARKETCODE'
        end>
      Properties.ListSource = dmLookup.dsLuBoardMarket
    end
    object luReportTC: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'REPORTID'
      Properties.ListColumns = <
        item
          Width = 250
          FieldName = 'REPORT_CAPTION'
        end>
      Properties.ListSource = dmLookup.dsLuReportTC
    end
    object edCurrency: TcxEditRepositoryCurrencyItem
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.00;(#,##0.00);0.00'
      Properties.EditFormat = '#,##0.00'
      Properties.UseThousandSeparator = True
      Properties.ValidationOptions = [evoShowErrorIcon]
    end
    object luStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Created'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Posted'
          Value = '2'
        end
        item
          Description = 'Reversed'
          Value = '3'
        end
        item
          Description = 'Canceled'
          Value = '4'
        end
        item
          Description = 'Approved'
          Value = '5'
        end>
    end
    object luAccountKSEI: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          Width = 100
          FieldName = 'ACCCODE'
        end
        item
          Width = 250
          FieldName = 'ACCNAME'
        end>
      Properties.ListSource = dmLookup.dsLuAccountKSEI
    end
    object luBankCompany: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'BANKID'
      Properties.ListColumns = <
        item
          Width = 80
          FieldName = 'BNCODE'
        end
        item
          Caption = 'Bank Name'
          Width = 200
          FieldName = 'BNNAME'
        end
        item
          Width = 120
          FieldName = 'BANKACCOUNTNO'
        end
        item
          Width = 250
          FieldName = 'BANKACCOUNTNAME'
        end
        item
          Width = 60
          FieldName = 'CCYCODE'
        end>
      Properties.ListSource = dmLookup.dsLuBankCompany
    end
    object luACSType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Fail Receive'
          ImageIndex = 0
          Value = 'FR'
        end
        item
          Description = 'Fail Deliver'
          Value = 'FD'
        end>
    end
    object luBankTransferType: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'TRANSFER_MODE'
      Properties.ListColumns = <
        item
          FieldName = 'TRANSFER_MODE'
        end>
      Properties.ListSource = dmLookup.dsLuBankTransferType
    end
    object luCcy: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'CCYCODE'
      Properties.ListColumns = <
        item
          FieldName = 'CCYCODE'
        end>
      Properties.ListSource = dmLookup.dsCcy
    end
    object edPercentage4Digit: TcxEditRepositoryCurrencyItem
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.DisplayFormat = '#,##0.0000%;(#,##0.0000)%;0.0000%'
      Properties.EditFormat = '#,##0.0000'
      Properties.UseThousandSeparator = True
      Properties.ValidationOptions = [evoShowErrorIcon]
    end
  end
  object propsAppSetting: TcxPropertiesStore
    Components = <>
    StorageName = 'propsAppSetting'
    Left = 448
    Top = 112
  end
  object saStandard: TcxStyleRepository
    Left = 448
    Top = 256
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 16777190
    end
  end
  object cdsUserLayout: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'APPID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FORMNAME'
        ParamType = ptInput
      end>
    ProviderName = 'dspUserLayout'
    RemoteServer = dspConnection
    BeforePost = cdsUserLayoutBeforePost
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 400
    object cdsUserLayoutUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsUserLayoutAPPID: TStringField
      FieldName = 'APPID'
      Required = True
      Size = 30
    end
    object cdsUserLayoutFORMNAME: TStringField
      FieldName = 'FORMNAME'
      Required = True
      Size = 100
    end
    object cdsUserLayoutLAYOUTSETTING: TWideMemoField
      FieldName = 'LAYOUTSETTING'
      BlobType = ftWideMemo
    end
    object cdsUserLayoutMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsUserLayoutMODUI: TStringField
      FieldName = 'MODUI'
    end
  end
  object skinController: TdxSkinController
    SkinName = 'Lilian'
    Left = 448
    Top = 304
  end
  object GlobalCallbackManager: TDSClientCallbackChannelManager
    DSHostname = '127.0.0.1'
    DSPort = '8299'
    CommunicationProtocol = 'tcp/ip'
    ChannelName = 'GlobalChannel'
    ManagerId = '537254.276234.955152'
    UserName = 'admin'
    Left = 168
    Top = 64
  end
  object cdsMainTableList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMainTableList'
    RemoteServer = dspConnection
    Left = 320
    Top = 480
    object cdsMainTableListTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      Size = 100
    end
  end
  object cdsUpdateTableList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUpdateTableList'
    RemoteServer = dspConnection
    Left = 168
    Top = 160
    object cdsUpdateTableListTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      Size = 100
    end
  end
  object CommandUpdate: TNCommandUpdateControl
    MainTableDataset = cdsMainTableList
    UpdateTableDataset = cdsUpdateTableList
    LogTableDataset = cdsLogTableList
    OnAddCommand = CommandUpdateAddCommand
    Left = 168
    Top = 256
  end
  object cdsLogTableList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLogTableList'
    RemoteServer = dspConnection
    Left = 168
    Top = 208
    object cdsLogTableListTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      Size = 100
    end
  end
  object rptDesigner: TfrxReport
    Version = '2022.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40666.530401192100000000
    ReportOptions.LastChange = 41544.701763611100000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 168
    Top = 304
  end
  object ActionLog: TNDatasetActionLog
    OnGetActionLog = ActionLogGetActionLog
    Left = 168
    Top = 352
  end
  object ApplicationEvents: TApplicationEvents
    OnException = ApplicationEventsException
    OnMessage = ApplicationEventsMessage
    Left = 448
    Top = 352
  end
  object TimerGlobal: TTimer
    Enabled = False
    OnTimer = TimerGlobalTimer
    Left = 448
    Top = 408
  end
  object cdsUserFavorites: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'APPID'
        ParamType = ptInput
      end>
    ProviderName = 'dspUserFavorites'
    RemoteServer = dspConnection
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 448
    object cdsUserFavoritesUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsUserFavoritesAPPID: TStringField
      FieldName = 'APPID'
      Required = True
      Size = 30
    end
    object cdsUserFavoritesACTIONNAME: TStringField
      FieldName = 'ACTIONNAME'
      Required = True
      Size = 100
    end
  end
  object ReportServerConnection: TfrxServerConnection
    Compression = True
    Host = '127.0.0.1'
    MIC = True
    Port = 8081
    ProxyPort = 8080
    RetryCount = 3
    RetryTimeout = 10
    Timeout = 300
    Left = 304
    Top = 16
  end
  object ReportClient: TfrxReportClient
    Version = '2022.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42684.639336215280000000
    ReportOptions.LastChange = 42684.639336215280000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Connection = ReportServerConnection
    Left = 304
    Top = 64
  end
  object cdsPermission: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAdministrator_qryPermission'
    RemoteServer = dspConnection
    Left = 600
    Top = 16
    object cdsPermissionPERMISSIONNAME: TStringField
      FieldName = 'PERMISSIONNAME'
      Required = True
      Size = 50
    end
    object cdsPermissionPERMISSIONDESC: TStringField
      FieldName = 'PERMISSIONDESC'
      Size = 100
    end
  end
  object cdsPermissionForm: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAdministrator_qryPermissionForm'
    RemoteServer = dspConnection
    Left = 600
    Top = 64
    object cdsPermissionFormPERMISSIONNAME: TStringField
      FieldName = 'PERMISSIONNAME'
      Required = True
      Size = 50
    end
    object cdsPermissionFormFORMNAME: TStringField
      FieldName = 'FORMNAME'
      Required = True
      Size = 50
    end
  end
  object cdsPermissionFormAction: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAdministrator_qryPermissionFormAction'
    RemoteServer = dspConnection
    Left = 600
    Top = 112
    object cdsPermissionFormActionPERMISSIONNAME: TStringField
      FieldName = 'PERMISSIONNAME'
      Required = True
      Size = 50
    end
    object cdsPermissionFormActionFORMNAME: TStringField
      FieldName = 'FORMNAME'
      Required = True
      Size = 50
    end
    object cdsPermissionFormActionACTIONNAME: TStringField
      FieldName = 'ACTIONNAME'
      Required = True
      Size = 50
    end
  end
  object cdsGlobal: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGlobal'
    RemoteServer = dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 496
  end
  object cdsCorpactMessage: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRADEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCorpactMessage'
    RemoteServer = dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 600
    Top = 163
    object cdsCorpactMessageNGRG_CUMDATE: TDateField
      FieldName = 'NGRG_CUMDATE'
    end
    object cdsCorpactMessageDISTDATE: TDateField
      FieldName = 'DISTDATE'
    end
    object cdsCorpactMessagePAYDATE: TDateField
      FieldName = 'PAYDATE'
    end
    object cdsCorpactMessageSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsCorpactMessageCATYPE: TStringField
      FieldName = 'CATYPE'
      Size = 1
    end
    object cdsCorpactMessageRI_STR_EXERDATE: TDateField
      FieldName = 'RI_STR_EXERDATE'
    end
    object cdsCorpactMessageRI_END_EXERDATE: TDateField
      FieldName = 'RI_END_EXERDATE'
    end
  end
  object cdsHelpConfig: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'PK_HelpConfig'
        Fields = 'Class'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'Class'
    Params = <>
    StoreDefs = True
    Left = 304
    Top = 112
    object cdsHelpConfigClass: TStringField
      FieldName = 'Class'
      Size = 50
    end
    object cdsHelpConfigCaption: TStringField
      FieldName = 'Caption'
      Size = 150
    end
    object cdsHelpConfigHelpContext: TIntegerField
      FieldName = 'HelpContext'
    end
  end
  object SqlServerMethod1: TSqlServerMethod
    Params = <>
    SQLConnection = cnnMain
    Left = 168
    Top = 400
  end
  object cdsDatasetInformation: TNClientDataset
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DATAMODULE'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'DATASET'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'TABLENAME'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'PRIMARYKEY'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 'cdsDatasetInformationIndex1'
        Fields = 'DATAMODULE;DATASET'
      end>
    IndexFieldNames = 'DATAMODULE;DATASET'
    Params = <>
    ProviderName = 'dspDatasetInformation'
    RemoteServer = dspConnection
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 168
    Top = 448
    object cdsDatasetInformationDATAMODULE: TStringField
      FieldName = 'DATAMODULE'
      Size = 255
    end
    object cdsDatasetInformationDATASET: TStringField
      FieldName = 'DATASET'
      Size = 255
    end
    object cdsDatasetInformationTABLENAME: TStringField
      FieldName = 'TABLENAME'
      Size = 255
    end
    object cdsDatasetInformationPRIMARYKEY: TStringField
      FieldName = 'PRIMARYKEY'
      Size = 255
    end
  end
  object cdsLastModuleParam: TNClientDataset
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsLastModuleParamIndex1'
        Fields = 'MODULENAME'
      end>
    IndexFieldNames = 'MODULENAME'
    Params = <>
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 168
    Top = 496
    object cdsLastModuleParamMODULENAME: TStringField
      FieldName = 'MODULENAME'
      Size = 150
    end
    object cdsLastModuleParamPARAMVALUE: TStringField
      FieldName = 'PARAMVALUE'
      Size = 150
    end
  end
  object cdsApproveRequest: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'MODULE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'KEYID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryApproveRequest'
    RemoteServer = dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 304
    Top = 160
    object cdsApproveRequestMODULE: TStringField
      FieldName = 'MODULE'
      Required = True
      Size = 50
    end
    object cdsApproveRequestKEYID: TStringField
      FieldName = 'KEYID'
      Required = True
      Size = 150
    end
    object cdsApproveRequestSTATE: TStringField
      FieldName = 'STATE'
      Required = True
      Size = 1
    end
    object cdsApproveRequestNOTES: TMemoField
      FieldName = 'NOTES'
      Required = True
      BlobType = ftMemo
    end
    object cdsApproveRequestXMLDATA: TMemoField
      FieldName = 'XMLDATA'
      Required = True
      BlobType = ftMemo
    end
    object cdsApproveRequestREQDA: TDateTimeField
      FieldName = 'REQDA'
      Required = True
    end
    object cdsApproveRequestREQUI: TStringField
      FieldName = 'REQUI'
      Required = True
      Size = 30
    end
    object cdsApproveRequestAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsApproveRequestAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsApproveRequestAPPSTATE: TStringField
      FieldName = 'APPSTATE'
      Size = 1
    end
  end
  object cdsModule: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmReport_qryModule'
    RemoteServer = dspConnection
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 304
    Top = 208
    object cdsModuleMODULE: TStringField
      FieldName = 'MODULE'
      Required = True
      Size = 150
    end
    object cdsModuleDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 150
    end
    object cdsModuleDEFAULTFORM: TStringField
      FieldName = 'DEFAULTFORM'
      Size = 150
    end
    object cdsModuleCONTROL4EYES: TStringField
      FieldName = 'CONTROL4EYES'
      Size = 1
    end
  end
  object menuBarReport: TNMenuBar
    AppID = 'Nayaga'
    ActionList = aclMenu
    MainMenuNavBar = frmMain.nbReportMenu
    DrawOnValidAction = False
    Permissions = <
      item
        Permission = 'Report Account Information'
        Description = 'Report Account Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Entity List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Active List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Client Inquiry'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Statement of Account'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Opening Account History'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Client Portofolio'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Expired Document List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Suspend List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Dorman List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Closed List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Generate Monthly Statement'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Opening Account By Date'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Status List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Client Activity Online / Non Online'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Client Activity Institution / Reguler'
          end>
      end
      item
        Permission = 'Report Middle Office'
        Description = 'Report Middle Office'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Market Transaction'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Client Trade Summary'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Sales Trade Activity'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Client Trade Activity'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Trade Transaction'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Trade Confirmation'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Trade Transaction New'
          end>
      end
      item
        Permission = 'Report Finance'
        Description = 'Report Finance'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Aging ARAP'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Deposit List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Withdraw List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Payment Receive'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Fund Ledger Balance'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Fund Ledger Journal List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Flow'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Projection'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Outstanding Trade Due for Cash Settlement'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Interest Track'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Customers Aging'
          end>
      end
      item
        Permission = 'Report Settlement and Custody'
        Description = 'Report Settlement and Custody'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Client Stock Activity'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Transaction Report (LTH)'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Portofolio Detail Report'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Deposit List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Withdraw List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Movement List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Portfolio'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Outstanding'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Securities Journal'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'List of Instrument'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Share Balance'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Monthly Safekeeping Fee'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Aging'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Securities Ledger Balance'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Monthly Transaction Report (X.E.1-3)'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Position By Account'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Position By Stock'
          end>
      end
      item
        Permission = 'Report Fixed Income'
        Description = 'Report Fixed Income'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Bond Trade'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Letter Of Confirmation'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Coupon Payment List'
          end>
      end
      item
        Permission = 'Report Credit Control'
        Description = 'Report Credit Control'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Force Selling'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Aging Monitoring'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Client Cash Outstanding'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Exceptional Report'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Margin Account Summary'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Market Capitalization'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Trade Summary Activity'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Trade Detail Outstanding'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Detail Share Collateral'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Loan Margin Rank Client'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Outstanding Cash Rank Client'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Total Share Value'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Blacklist People && Organization Report'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Share Balance'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Top 15 Single Counter Exposure'
          end>
      end
      item
        Permission = 'Report Accounting'
        Description = 'Report Accounting'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Balance Sheet'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Profit Loss Statement'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Flow Statement'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Cash Projection'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Trial Balance'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'General Ledger'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Monthly Commision'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Monthly LTAB'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Monthly Withholding Tax'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Journal Voucher'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'AR / AP Neting (For MKBD)'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Monthly Tax Report'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Monthly Trade Summary'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Summary market trade activity '
          end>
      end
      item
        Permission = 'Report Regulator Report'
        Description = 'Report Regulator Report'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily VD5 Report'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily VD5 Support'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'MKBD Compare 2 Date'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily VD57 Quantity'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Monthly VD55 Report'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Monthly VD55 Support'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Total Transaction RDN && DMA'
          end>
      end
      item
        Permission = 'Report Administrator'
        Description = 'Report Administrator'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Audit Log'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Approval History'
          end>
      end
      item
        Permission = 'Report Corporate Action, IPO, & Tender Offer'
        Description = 'Report Corporate Action, IPO, & Tender Offer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Corpact - Announcement List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Corpact - Entitlement List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Corpact - Client Confirmation'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'IPO - Allocation List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'IPO - Client Confirmation'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Tender Offer - Order List'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Tender Offer - Client Confirmation'
          end>
      end
      item
        Permission = 'Report Customers Data'
        Description = 'Report Customers Data'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Customers Data'
          end>
      end
      item
        Permission = 'Report Account Fund Statement'
        Description = 'Report Account Fund Statement'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Fund Statement'
          end>
      end
      item
        Permission = 'Report Trial Balance Stock'
        Description = 'Report Trial Balance Stock'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Trial Balance Stock'
          end>
      end
      item
        Permission = 'Report General Ledger Client'
        Description = 'Report General Ledger Client'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'General Ledger Client'
          end>
      end
      item
        Permission = 'Report Trial Balance Client'
        Description = 'Report Trial Balance Client'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Trial Balance Client'
          end>
      end
      item
        Permission = 'Report ARAP Netting History'
        Description = 'Report ARAP Netting History'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'AR / AP Neting (For MKDB) History'
          end>
      end
      item
        Permission = 'Report Stock Short Sell'
        Description = 'Report Stock Short Sell'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Short Sell'
          end>
      end
      item
        Permission = 'Report Laporan Kegiatan Perantara Perdagangan Efek'
        Description = 'Report Laporan Kegiatan Perantara Perdagangan Efek'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Laporan Kegiatan Perantara Pedagang Efek'
          end>
      end
      item
        Permission = 'Report AR/AP'
        Description = 'Report AR/AP'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'AR/AP Report'
          end>
      end
      item
        Permission = 'Report Trade Confirmation'
        Description = 'Report Trade Confirmation'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Trade Confirmation'
          end>
      end
      item
        Permission = 'Report Trade Transaction New'
        Description = 'Report Trade Transaction New'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Trade Transaction New'
          end>
      end
      item
        Permission = 'Report Wash Sale'
        Description = 'Report Wash Sale'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Wash Sale'
          end>
      end
      item
        Permission = 'Report Front Running'
        Description = 'Report Front Running'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Front Running'
          end>
      end
      item
        Permission = 'Report Marking The Close'
        Description = 'Report Marking The Close'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Marking The Close'
          end>
      end
      item
        Permission = 'Report Fake Demand Supply'
        Description = 'Report Fake Demand Supply'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Fake Demand Suply'
          end>
      end
      item
        Permission = 'Report Unusual Market Volume'
        Description = 'Report Unusual Market Volume'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Unusual Market Volume'
          end>
      end
      item
        Permission = 'Report Daily Interest Activity'
        Description = 'Report Daily Interest Activity'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Daily Interest Activity'
          end>
      end
      item
        Permission = 'Report VD5 1-2'
        Description = 'Report VD5 1-2'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report VD5 1-2'
          end>
      end
      item
        Permission = 'IDX Clearing Result'
        Description = 'IDX Clearing Result'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'IDX Clearing Result'
          end>
      end
      item
        Permission = 'Monthly Stamp'
        Description = 'Monthly Stamp'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Monthly Stamp'
          end>
      end
      item
        Permission = 'Report EOD Support'
        Description = 'Report EOD Support'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Report EOD Support'
          end>
      end>
    GroupDataSet = cdsGroups
    GroupItemDataSet = cdsGroupPermission
    ApplicationIDField = 'APPID'
    PermissionField = 'PERMISSION'
    GroupIDField = 'GROUPID'
    GroupDescField = 'GROUPDESC'
    UserGroupDataSet = cdsUserGroup
    UsersDataSet = cdsUsers
    UserIDField = 'USERID'
    UserNameField = 'USERNAME'
    UserGroupIDField = 'GROUPID'
    UserPasswordField = 'USERPWD'
    OpenPermissionDataSet = cdsOpenPermission
    OpenPermissionField = 'PERMISSION'
    Left = 301
    Top = 256
  end
  object GridRepository: TcxGridViewRepository
    Left = 448
    Top = 160
    object gvwLuMarket: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataModeController.GridMode = True
      DataController.DataSource = dmLookup.dsLuMarket
      DataController.KeyFieldNames = 'MARKETCODE'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = GridFilterBox
      Styles.Selection = rowSelected
      Bands = <
        item
        end>
      object gvwLuMarketMARKETCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARKETCODE'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwLuMarketMARKETDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARKETDESC'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
  end
  object LocalizerSetting: TcxLocalizer
    Left = 304
    Top = 304
  end
  object menuBarAdmin: TNMenuBar
    AppID = 'Nayaga'
    ActionList = aclMenu
    MainMenuNavBar = frmMain.nbAdmin
    DrawOnValidAction = False
    Permissions = <
      item
        Permission = 'Administrator'
        Description = 'Administrator'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'User Configuration'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'User Monitoring'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'User Activity'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Email Configuration'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Email Monitoring'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'List of Permissions'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'User Data Owner'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Group Admin'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Batch Process Monitoring'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Batch Process Configuration'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'My Approval Request'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Request of Approval'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Approval History'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Static Data Log'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Global Parameter'
          end>
      end
      item
        Permission = 'Company Setup'
        Description = 'Company Setup'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Company Maintenance'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Company Account'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Company Bank'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Cash Book'
          end>
      end
      item
        Permission = 'Email Monitoring'
        Description = 'Email Monitoring'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Email Monitoring'
          end>
      end
      item
        Permission = 'Email Configuration'
        Description = 'Email Configuration'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Email Configuration'
          end>
      end
      item
        Permission = 'Receive Email'
        Description = 'Receive Email'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Receive Email'
          end>
      end
      item
        Permission = 'End Of Day Process'
        Description = 'End Of Day Process'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'End Of Day Process'
          end>
      end
      item
        Permission = 'Todo List'
        Description = 'Todo List'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Todo List'
          end>
      end
      item
        Permission = 'Bank Company Viewer'
        Description = 'Bank Company Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Company'
          end>
      end
      item
        Permission = 'Bank Company Maker'
        Description = 'Bank Company Maker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Company'
          end>
      end
      item
        Permission = 'Bank Company Activator'
        Description = 'Bank Company Activator'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Company'
          end>
      end
      item
        Permission = 'Bank Company Closed'
        Description = 'Bank Company Closed'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank Company'
          end>
      end
      item
        Permission = 'Company Custody'
        Description = 'Company Custody'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Company Custody'
          end>
      end>
    GroupDataSet = cdsGroups
    GroupItemDataSet = cdsGroupPermission
    ApplicationIDField = 'APPID'
    PermissionField = 'PERMISSION'
    GroupIDField = 'GROUPID'
    GroupDescField = 'GROUPDESC'
    UserGroupDataSet = cdsUserGroup
    UsersDataSet = cdsUsers
    UserIDField = 'USERID'
    UserNameField = 'USERNAME'
    UserGroupIDField = 'GROUPID'
    UserPasswordField = 'USERPWD'
    OpenPermissionDataSet = cdsOpenPermission
    OpenPermissionField = 'PERMISSION'
    Left = 301
    Top = 360
  end
  object menuBarStatic: TNMenuBar
    AppID = 'Nayaga'
    ActionList = aclMenu
    MainMenuNavBar = frmMain.nbStatic
    DrawOnValidAction = False
    Permissions = <
      item
        Permission = 'Static General'
        Description = 'Static General'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'City'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Country'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Province'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Product Type'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Product'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'List of Holiday'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Branch'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Project'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Employee'
          end>
      end
      item
        Permission = 'Static Account Information'
        Description = 'Static Account Information'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Parameter Class'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Business Line'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Bussiness Type'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Commission Share'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Event Information'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Sales'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Sales Agent'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Referral Group'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Referral'
          end>
      end
      item
        Permission = 'Static Middle Office'
        Description = 'Static Middle Office'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Market'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Board'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Channel'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Commission'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Commission Table'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Charge'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Charge Table'
          end>
      end
      item
        Permission = 'Static Settlement Interface'
        Description = 'Static Settlement Interface'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Omgeo - Account Omgeo Config'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Omgeo - MTI Transaction'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Omgeo - MTI Record'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Omgeo - MTI File Config'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'S-Invest - Process Config'
          end>
      end
      item
        Permission = 'Static Finance'
        Description = 'Static Finance'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Bank'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Interest'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Interest Table'
          end>
      end
      item
        Permission = 'Static Settlement & Custody'
        Description = 'Static Settlement & Custody'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Custodian Bank'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Biro Administrasi Efek (BAE)'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Instrument Type'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Instrument Data'
          end>
      end
      item
        Permission = 'Static Fixed Income'
        Description = 'Static Fixed Income'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Instrument'
          end>
      end
      item
        Permission = 'Static Credit Control'
        Description = 'Static Credit Control'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Credit Limit Class'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Blacklist People && Organization'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Account Credit Limit Setup'
          end>
      end
      item
        Permission = 'Static Accounting'
        Description = 'Static Accounting'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Fiscal Year Configuration'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Period Configuration'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Currency'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Tax Invoice Number Setup'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Ledger of Account Mapping'
          end
          item
            MenuItemIndex = -1
            MenuCaption = 'Chart of Account'
          end>
      end
      item
        Permission = '[VD510Static].New'
        Description = 'VD-5.10 New Config'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'VD 5.10 Config'
          end>
      end
      item
        Permission = '[VD510Static].View'
        Description = 'VD-5.10 Open Config'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'VD 5.10 Config'
          end>
      end
      item
        Permission = '[VD510Static].Edit'
        Description = 'VD-5.10 Edit Config'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'VD 5.10 Config'
          end>
      end
      item
        Permission = '[VD510Static].Delete'
        Description = 'VD-5.10 Delete Config'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'VD 5.10 Config'
          end>
      end
      item
        Permission = 'Occupation'
        Description = 'Occupation'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Occupation'
          end>
      end
      item
        Permission = 'Email Blast Config'
        Description = 'Email Blast Config'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Email Blast Config'
          end>
      end
      item
        Permission = 'Stock Movement Program Maker'
        Description = 'Stock Movement Program Maker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Movement Program'
          end>
      end
      item
        Permission = 'Stock Movement Program Viewer'
        Description = 'Stock Movement Program Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Stock Movement Program'
          end>
      end
      item
        Permission = 'Opening Account Event Maker'
        Description = 'Opening Account Event Maker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Event Information'
          end>
      end
      item
        Permission = 'Opening Account Event Viewer'
        Description = 'Opening Account Event Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Event Information'
          end>
      end
      item
        Permission = 'VD5 Config Viewer'
        Description = 'VD5 Config Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'VD5 Configs'
          end>
      end
      item
        Permission = 'VD5 Config Maker'
        Description = 'VD5 Config Maker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'VD5 Configs'
          end>
      end
      item
        Permission = 'Cost & Profit Center Maker'
        Description = 'Cost & Profit Center Maker'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cost/Profit Center'
          end>
      end
      item
        Permission = 'Cost & Profit Center Viewer'
        Description = 'Cost & Profit Center Viewer'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Cost/Profit Center'
          end>
      end
      item
        Permission = 'Survailance Setting'
        Description = 'Survailance Setting'
        PermissionMenus = <
          item
            MenuItemIndex = -1
            MenuCaption = 'Survailance Setting'
          end>
      end>
    GroupDataSet = cdsGroups
    GroupItemDataSet = cdsGroupPermission
    ApplicationIDField = 'APPID'
    PermissionField = 'PERMISSION'
    GroupIDField = 'GROUPID'
    GroupDescField = 'GROUPDESC'
    UserGroupDataSet = cdsUserGroup
    UsersDataSet = cdsUsers
    UserIDField = 'USERID'
    UserNameField = 'USERNAME'
    UserGroupIDField = 'GROUPID'
    UserPasswordField = 'USERPWD'
    OpenPermissionDataSet = cdsOpenPermission
    OpenPermissionField = 'PERMISSION'
    Left = 309
    Top = 416
  end
  object cdsReportParameter: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DATAKEY'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryReportParameter'
    RemoteServer = dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 448
    Top = 480
    object cdsReportParameterDATAKEY: TStringField
      FieldName = 'DATAKEY'
      Required = True
      Size = 32
    end
    object cdsReportParameterDATAVALUE: TMemoField
      FieldName = 'DATAVALUE'
      BlobType = ftMemo
    end
  end
  object ilIcons: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 26739304
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001B744558745469746C65004164643B506C75733B426172733B526962
          626F6E3B9506332F0000036349444154785E35927D6C535518C69F73EE6DEB64
          63A3AEFB60A3A36E33B8C56581E0D8707E21CC1A43A2A22304FE3001512A86C4
          E900132451FF503367420043B244364C483031465C248B4441C0980C45B4D065
          CDBA4ECAE82AAC5DBBDE8FF3E1BD27F1397973DE9C3CBFF7233964226FC2D543
          A53E0280443E3FD752525AB14323FA06685A3381E492F329C6ADF39954E2F8C9
          C3DBA6018858DE940A9C2C5870C1D51BB6FAF61DBB327860F81A1BFE25297FB8
          3127C7EFE4E5D5745E9EBB9991239766E481937FE4DE1818DB0DC0EB322EABBA
          B63FD5EB7D6CCBBE6F1B83FE9E67BA82E084C0E4123697CAE0D109BC94805B0C
          E7AFCC606A66EEECF75FBCBB753AFAEB2201A0BD3E7861B02914D8DBF34408A9
          AC0D2181D3672E23319D81AB950D016CEBED824E809A722FC62E4CE17A343130
          D4DF73507FB9FFAB551E9F6FCF93EB82B879BB088D52504A14FCC9CE4E95F79D
          B80CD396284A8179C7D3DD1144F29FEC5BE1D73E1BA6BEB2C09BEDCD955A7CCE
          44D1744C1687C9045C05EBFC686F0DAADCB08413D2098E89B4E1BC5779965687
          5ED585D03ACBFDA548E7197EFA711C776EDFC5FF12200A7075F4E85975D7D4FA
          F1F4A635A82C5F02A2956CD46D2EEB1D160B455BC19FEE5E0F4A885A45828071
          81137D1B61DB0C1E5D43E4C8CF5858E4D0A1810BBA5CB76DEEBDB768C1E604AE
          EA6B1F40D9121F0A265385BC0E5457530109404A8010E27805EEE60598CDA15B
          8699C8E7CD4784EEC3F2BA00767C340A4AA9327E79300CE1505BDEFF0E9AA681
          5082150DD5604CA26858282E1693D428E42F6666B3909068EF68C5E6171FC7E6
          17BA611A260C93A9029C713CF7FC3A3C1BEE404B5B2398E0989FCBA190FD774C
          CFA46243B11B4B77ADADF67BB236478E10500AA5D2121D5C48354D3A674108A1
          56114C201E4BB1D9F86FA70880FB1EDD3E34B0A229B4E7E1350FC2E22E2011BF
          16C3FCBD050557562DC3CA964608B8B4C4E49F4924A27F1F193F1DD9AF03B0FE
          1AFDE03D113EDC6431B1A96575089212B4AD6D555F581280D902398343308EC9
          EB49DC9A981A75E043000CA46D09005A49457059DB4BC78E77EDFCDAEAFDF892
          DC3B1295EF7C13977D4E444E45E52BCE5BE7AE338555E10FDF0650EE32B30E4B
          D24C0212A8F210EAAED3D01969BB3FD0BCDDE32BEB06D56AD5D09CCDDA66EE62
          EED6EF43A9AB2331008603ABCEFF019D3AAD15CCD8D2E00000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000023744558745469746C65004164643B46696C653B41646446696C653B
          426172733B526962626F6E3B15DCAA0A000002E049444154785E65927F689555
          18C73FE7BDEFBDCDFD52BBCAC6AC3FC67E68615830DB168DB491DBAC086566B8
          612B35D655D141121B42E48FFE501B28669BD860FB4316CE864284DA2854C28A
          A9685413993437595DC7D6DDDAEEDEF73DE7E9EECD3B821D78CEF71C9E733E7C
          9F874701EAD0A99F7A14AC061004115080117F4766540C82C218F7FBBD91B272
          11310036A0C4C8EA0FB63D0F0002B387B9570E9EF86115A00066019E18109876
          34028800BE26210A0152420AED19E600B4A301D02290FC0C042C0502CA02E3E7
          66201680DADF550180E5033C0D08227E801226E27F71E9D6715A7BDEE6F0F9B5
          B47E5BC737D78FF1F4B22040A0697D37C6083EC0D506010C0AA5147F446FD0F6
          5D84901DA0BAE4431AD79D65434283B6CDCDE801229F9656D98134CB73CDFF1D
          8018884DFE49F7B583BCF94223E52B6A387FB593C6935B3877A583179757B0B1
          AC81F9E194F6773E2ECA3B50DBA32CC0725C8D08584AB8FA6B27CFE5AE21279C
          C368FC37EEDEEF636BE58984DE233A758B507A8CA2C2F28CB405A13D40C0F64B
          987560B8DD7F859AAA77F9BCFB10030F1E20C092AC4C3C2D34B79D263B2B8392
          E26C8C31AF033BFF2B41FB0E40C1586C84096ED27F7F906DAFB5B06FEB693C23
          EC4FE8F186AF181A1C6378FA471C47870165270188F85DB55506A3B128E90B27
          3976760B087C12F992A6CF3622C0FCC57146C727884FE991E41C589E0101DF66
          414E31BFDFF985C295634C7B717ABF7E824599F3F05CCDCA37061081A1BE2013
          31E722602C00ED6904782C6853595C4B6FEF20EEDFA96871487B7C92CD1F5591
          16FE07573B8C465DFAAE3B93C3F7C69B010D90FAD6FB1D976B779F914DBBCEC8
          919397E5687B8754EF79561ABE7846F65DCC97E69FF3129A27DB5B0A645DC372
          5DB2FEC95A20F4EA8EC2D9694C0516000B813090BDB464D14B2FD7E57655D6E7
          3FAC8C14C89AFAFC91559B73BB9E2A5B5C0ACC0354457D3E4A4448AEC44310B8
          D072573D0207937D0204701F8579E5BD3C01F817E1E75F4F0B44B2A300000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000021744558745469746C65004170706C793B4F4B3B436865636B3B4261
          72733B526962626F6E3B6463C8680000037D49444154785E4D8E7F4C94051CC6
          3FEF7B77E02073EA92742577579B684891E62AB6C4526B6013696BC9DC5A0B33
          D0322DA716D3CA94A21A8E96E976AEB654688E409B46B859CC249500E3F81588
          234EE0F875DC1DF7A3BB7BDFF7DBC16AEBD9F3D9BEFF3CCFF7C13555CB58A801
          40014CC5E5696BF638D24FBEF7EDF2D683550F7B0E5666B4969C5A5EBBEBCB65
          2F0209803A116E6438F82377A66A60385007A0E4EFB2A5BC51B1B4AEF4EC5AB9
          D476583A87AA642C7055BA47CE4A43F72752713157F67D93DE54B0DFBE04308D
          867E9E290050725F4BBDB7F8E8B29EAA86B7C4E5BF203DDEE3D23E71585AC6F6
          48E7E4C7D2E777C870A05E7E68DE277B4F668C6EDE6BCF00D4017F350A607EF5
          48DAB99CECBC9CF4343BC3E1264CAA60C282AAA8288A028A30313E852DE509EE
          0C4D72EEF26967CD17FD4F0EDE0A064DF9BBEDEB6CD6C51F3C9DF5382EFF1540
          104014216E500C2ED6DDA4F67C3BEDB79BC9C95EC3E8F8784AD28288BBADC1D3
          6C4E98652A7C2C7D2543816674430304C4885B0755E1CC99EBCC51D750F14E35
          DBCB32E91DF98DCCA5ABE8FCB36733E0500D3132EF9EAB108C7AE9ED1BA6B4AC
          969F2E39896A11CE5F68212529975D5B4A395A59C40B79CF6049D0489AAD81AA
          3C0A9854436741140FE148809AEA16CA8AAEA34C65F1E9E7F524EBEBD99A7F80
          53751FB2707118EB836642311F31C63174497C286BEE6C55D3F48971DF2088C1
          A60D6BF9BAB6849D0547D8FD520D2F3F5F822FD8C7AFCEEF58B16A11FEC82831
          3DC6A87F8868C488745C9D0C9AF5A8D2E51EF15BE72FD248B127E2F5FE8DE3FB
          FDEC28280755E1FDCFB691BF310B6FC48566C4C030F08D458984B40E4057837E
          ADAAA7CB87A0E2090EB2E491594C1A4DD45C2EC779AB0E53B287C4399384A353
          718288A8F4767B09F8F4F380069094BBDD7AB3E474869CB8B1428E5DCB90AAB6
          0DB2E59055B2B621C72EAF93134D99723C8EE3F79572A83A5336EEB439EF9A67
          990FA82A1071F7855EF9E35AC0D3EB0C010A9EF000799B56F1EEDBAFC7BF87D0
          0D411185BEEE30AD8DFE88AB2B501CF0C4FC5706DE34CC0D7F15E9AB53BF6A17
          784ED78C4AB72BF6803DDD82B6B013D5A420064CB875FABB628CB8A21DEEDBA1
          A2D6FAB11B8066480C7EE92F045000737CD6BCA736DFB77F7D616A63EE769BCC
          B0C326CF6E4D6D5B5D70FF47C9732CF700164099CE4D3373FCA76CAB43052CFF
          62065440001D884E130F19FC4FFF00FE20CB5D5DF1FFF30000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000023744558745469746C650043616E63656C3B53746F703B457869743B
          426172733B526962626F6E3B4C9696B20000038849444154785E1D906B4C5367
          18C7FF3DBD40CB1A2E32B55C9D598B4CA675D8D13836652E9B0359B67D589665
          3259E644A52571644474CB4CB6ECC23770C4449DD38D2885005E4683AB69C616
          8DA12384264EC8AAAC0C9149A1175ACEE9E939CFDE9EE7E477F2CBFFB924E720
          E6E943CC3B8895D12B00A0FEE3D08167A75A5BBAEEB71D9D081E6B4DA549FBDD
          A3CEEFDD1F3658016818AA98A71FD1915E202DE980A19D741E3EF6E0F8A7FC7F
          673B6979E002C5BC43B4C2581EB8480BE7BA68E6441BEF3B72F03300990C8E1D
          5016554E7B55D6C1ED9543C6C2B5BB739FDF025988838424E4240F10A0D2EAA0
          D26540AD37203CFE17C2C187A3EDBFDE7CF3DAD4748403A06EA8A8E830AC5FB3
          3B7BAB1901B717AE23DFE1CEC5EBEC90A0E0EB71A3CFD981C0B017C6F252180B
          D6BD74BCFA856E003A0CBDFD966DF250532AD4FF038DB734D18557DF21CFB08F
          2E37B5D370ED5E72D7D52BEEF9654CE9F91C1FD392EB0C4D3A0E4BE7F6ECD909
          CFDEFAD381AF4ED0A3D35FD399E272BA3F3D478F971234FD2044BDCE930AF798
          CF2FAED0DF5373CACCFCA92F2970B29DDCAFD7F56B48945E918201C41738945A
          2D581C7461ADA3192AB50AD64F9A010272730CC8D4AA313BE44289D58CF85D3F
          2411504BB28D93845489145E041F9CC1863C09A11BD7E1EFEA86240339463DB2
          B3F59025C0DFD98DD0C83594E6886C360831F408523265D208BC0021B20A35A7
          82B8BC0429C2239A10D812417988007088B14C8A8421EA75A094044A8A48F200
          17E78587629220B370E69F2884EA3750F07E23245946868E43A64EA3B8695F23
          F8EA7A046763EC780AC9640AF155FEB1269AE0BD91AC8CFDF910108E26F15A5B
          33788D1E860CF6CDE7CF225D45FB3F02A0C7CE36076E5CBD84825C3562A20E4B
          097E0CAD051B5FFCA97C9BE4ABAEA05B2FDBE9E6BE0F880F8568FCDB0E1AA9AA
          646C579C654AEF564D15FDB96333FDBCC94A8E751B6A0140DF5168B9E42A7B86
          266AB6D2ED1A1BF559CAC853B58DFCB576F2D7D9D3AE64B777D96862D716EA2F
          2BA76F4CE62B008C1A00C2F9C57F9D8DA2C99212C5E72C85323699F320A77FD2
          72040021DF9885F56BF2204457706F9EC74C4CF2F744169A012430DBF21E00A8
          2B754F98BEC82EEEED7AF2291A306FA451EBD3346633938FF13BF341969D62BD
          CF738AAF6ED6EA4B006882CE77A14ABFD255D2799903606830E4EF28E274070C
          1C67D74255041044C25C9CE43B4149F8B16735F41B8038DB9300E07F6924ECFB
          01D589CC0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000023744558745469746C6500436F6E766572743B5265706561743B4172
          726F773B45786368616E6765762368D20000032A49444154785E6D53694C5467
          147D8330B21697B20D90B24C0483ED4075001FCB94B1044424D646238B457170
          196618360B3874405B96010B418AD461699125085202DABA0C830BAB92F00344
          88C4000D0442F901F8C78926A7EF23F32824BDC9C9FBBE77EE39F7BE7BF32812
          3FFE194A5DBB1F4A5DEDFA9ACAEB3A44E512741E2294C90F1D21C8BA237A109F
          EFE345EE0C38D9ADA2751D006A3D541D21D49A7E902224032306C68664CBCC3B
          C17831A3414167D4FBA45B7E6A9F309E8D81E76C1864B5065344187B55C093D7
          F84B537EA7DBD36ED3D3A90D011F526FD39859A9C3FCEA7D34F427435E1B301B
          7DED8B185260C38088132B842149D57E5D37B5E7F078AC18AF175AB0F0EE3146
          E71A31BEA4C6C06C26746F2FA37B220FDFE47B10A5396BC0892B1408641AFA69
          EBD0153C99284141CB499C2EDC8FD0741748AB6868DF48F1DBD011486F7AC337
          DE767EEFD19DF18C8ECB1A6CFBEEBAA0A8FCAF5834F7CA1197BF7F29F0A253B9
          30D6216CB78B99D3D1DC3DC86A3A80C0447BFD9E48EBF21D2E5C7B22DE3C0393
          98A2CF47EAFA629150EA8D83124715439A1263D26684920FF7C3564FEC7CCC0E
          327732C09D0CAC08CF1A708FE4F0F5114A77445CE1635FB88D1B439A19C02526
          0C2CE863E73D14B7FA91FC6B1FA273BBF4C48435303254B460601D79E1A72F65
          15DDDA14CD20612D0D2BB38CCE6928286C1F45AD6E12AE5FA58F93DC8D219224
          6FF1091B89BAF37A76FD90BE7D6401D28A67B073F5E2472695469D5236693234
          BDCBE50F277052D50647BFC4AACD5B308E5135464B6FF4FC5DA59D826EFA1D9A
          5FAD20A3660009255AA4302DABFF1843F5F3199C297E007771C6F02ECFC860A2
          630D4C253FEB70EFD532EE4EAEA2F2E53F281B5842E3F0021E4DADA1AE771619
          B5FD0853D4C33940DEF3A9D7B7C78966CB16C40965F1C7BE6F9B97D70C43FD74
          11EA678B0857B44070BCF8E3DEC3B9732EA2B4473CE159E5279F057A3082ED44
          4C849B67C0E579063988CEDCF8252AAB439FD23C0EF1A526C2BAB16B6357DB31
          B14AD909655B7FA6505933BB0D734F9124803E5DD91B24A927EC0E57B1927216
          65523C3A9DB2F75750B6BE72CA76AB018B8D6E4C0C15AD0DE7FF0DD6E05FDF42
          745F4BE48E490000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000013744558745469746C65005461626C653B466F726D6174
          3BEEACCAE3000002DF49444154785E7591594C935914C72FE2509779124D9CF0
          60820F46CD1012F5C9C9BC18084A5CDE940132435892D2D216D24CC409189851
          16037521A89416D3A2109165986929455BB074015A908417DAAF04C24E176861
          C6C2CBDFFBDD984A66F04B7E39E77E39F777CF3D9794A8C6CCC56A278A554EC8
          9A9D902AC720691A45D1B3118829F41F5D8F0C1242620190FF42F8E27EF73A0C
          EE20D4460F1F194A833B9A8B9E3A4005DFEC291036D85991767C15155A178D2B
          8C728D135AD70AFAA683C87F34CC0BE2F614E42A86A1D07950DC3201A97A0212
          D56794E310378DA3A6C78D9F1FBCE705823D050AB503E1AD6D04362278FED206
          FFC647B0BCD50A3F8DA1CD6D543DB57C5D50D3644530BCCD8ADFD938F8D6232C
          E7E602088423D8FA7707263BC70B0E536229FB192C27FBC8EF4F8630BB18824A
          FF109EB920061D5EF8A8E0DEAB02CC2C2F617E75136DBD13A86A784B19C0BD27
          94C746FCF1C8880A45DF2029AF37B113250D29501B6A31E99D6282EB65092850
          9C47FFD89F6C1DA05D86FED9C13B2B87308DE1AD1DDCADD383DCAE196002595D
          1614FA74E4D59F416EFD695CBBF31D861644F8557D01152F7230B3B4081FBBA6
          979F11939456F782C82A7A4D16D73CDA0C1AE4D59E85DD2F86CD2784DD27816E
          E12ACCCBD9505AAEE097EAEFF1B7AD0B26DB0CBDD20718873D90577681F0D3A5
          1C8E8D8BF9F654FAA1FB19952750D99D0CEDD40FE8F0FE8876EE22CADA9370EE
          4602343DAD7C07D1D79196BF067B0ADA1A39992A2089A98298C4144156E22541
          E765F951348E2621457404B7A4D7313DBBC0AEF0D6CAB118A2331096BEFA22B8
          2C3F46747337886EF62ADFD581B49278245F3B0E4D772BDB30E55943DB5F93D0
          748E535CD09BA79127D7EE12941C2569C53CF1BCE0E06FCF33A3A71A2D1CD682
          1F192FDE38698C609DBE4A8EAC252AD80D13981D1CFCA10856E9A6960E272F88
          E63432B2C42A26F81FF48BCB2C7C66CA2E52235BAC668599229E66C64F85CDC8
          102A7133BFD1F409DC5CBF33F286EC240000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000015744558745469746C6500446F776E6C6F61643B4172726F773BEC8F
          1AD00000023949444154785E75534D681341187DB3C98A37C18358A197D2AA85
          A220463C252D6AC5D26841F0E2A958905044114F9E440A82964A2E22A2077B11
          29D22262A968D5A412436D14FCA944A836C664B149BAA469F3373FCE245D1C08
          79F0F83EBE8FF786997D4B84105020844003A9B111DC691C9D010D63CF7A6AB3
          D1A7DDB3B2673AE56C5AED640F1D6E68E0655315C22AEEEEE1817BD071637CB0
          5719E42CCA9B19902BA75F186A46CB0C25B6827CF52B8400B618DB50A9504898
          2343615599A49084FE06AE6BE33E2A38A054E7CF5C855DFA0281BAC19D870F6A
          122E77C1CB5153EA68C31B247EAE4EEC6DDF8D813E3FAC7C0CAB450B76318D84
          3D0FFFA983E8DCD381CF0BD664B32BF0F8C75C4088E861BEF56FAB30F3E09C41
          080E0182D29A81278F13C9F4D27A60F30A0D5F41CC4D256D2B59189C9BFD2DB5
          04555691AC8231819793299EB58A438B914C0680D00D74F0E9FB4BA1E5B87DEB
          5BCC06E50C8C732C84B358FE51188BCD58AFB52C341AF407DA95338D3E4F8F7C
          7A6FCFAFA42AF89328E2C31B3BB618C95E07503D74729780829E284585E3E7DA
          107CB75FB5AE034777EEF30FB7157ACEB66E7478B6ABA1EB76B80B9EFE165D07
          A7D1236C6CD2E5E96BB9D0E5DB7171332F2E67A71BE839708F4EF95E11837819
          15608C4B8A1AB9EC29ADD78D751A0A5E8A1D7172A027D1CC66CADEDE639DC8E5
          53A08C81720EE690A94A313351F0AA6C493618885F71FBEDDD78C4C79D931505
          A4B07E3AE7808C79A859902A8F6E7E3F01C0D47E65557508C9AA64C919FC03C9
          195863EE9BB9A50000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000027744558745469746C6500526566726573683B5265706561743B4261
          72733B526962626F6E3B52656C6F6164CD4DF6E90000030249444154785EA593
          6D4C926B18C76F018114A40D6D619DE98433AAE3F16D7CB173AC43666FE69C7A
          D4F48825339D4E6136D314EB2C23B46C332B957484A0522E5B6E2C31B537B437
          319BCECC17B2652D672FC715E03194AEEE875A6BB53E796DBFDDCF7EF7FFFFE1
          DAB3DB0500D052C6E5A7FEC73B70F2FDC89A4D48D664FA5A5AF5DB1FE4E8928B
          E2226D9F11FB0F04459A7B3D052A63DE0E71B11B91C10E77FA9D5D94DF70DF59
          4E93EB7EC957DF1B4F935FE009B3EBB7A59FE8704C59E6E185E503DC9D7C0B9A
          5B66D8A7BA33243AD4E087F3A4E9F98F683FD1959EBD8BF0B8E6D418BB1F3C9B
          855DA57A23871BC00C15D755FD99D508E1521DE49EB90E833356B8D4F71C726A
          7A460285F11EC48A92CF5D44D973CC50A8BDF504C6FE7780F2CA3044481AFEF5
          FE3598C1DD24F5E10A73F88109958A8DD94DF69E171638D53E0AA2A36D07885E
          E6E95E8476E6D5090AD57D0B66DB02F45B1661DC6A87B4B2F685E0D8C3422284
          21619605FC5DA148ADE884F303D3905C6630112EF5C40D449AB550D5BDBDA314
          D9C99BC862B52379ED6DF478E215C595B9AAFE4B9918D2CC4857CBE4F834A22D
          672287831C881D4B9B2F74232EE918CFA81283FDDA4B1B241CE9062F7E441076
          0C0C19438B2CD63F8A3AD8017187BB4033F61E88EFA8920E882CD24F92F8D1D5
          F3383467B3D846269EFE877CBC5928707372CAB7FFFFF9F01D890783BE98951E
          8628542ACACDDC88ACAF5E3B4C8656090ACBBD4C846802514DE9DEDAFBD038F4
          06E28F742F083395C7F91B44416BFEDACDA731BD38214995E519AA01A837CF41
          A2A213BC422455B8C744828C56E78E8C956B3921E226739666109A47DE81E4DC
          0024286E424CE935F83DA95A87337E41A92A93ECEA14B043F63F2451591CE78A
          01BB5B50DB14B105725D199C28F0FF47FD24EEF86D28D19B4139340BCAC15908
          2F6807DFF042317BCD9650FF14ED33EA8AB0F5384F65AC2B40889FD48CD1394F
          42D2D9BCD53E5BE515BC98DA21EC017BE0C52A877DB797CBC8547716CE786068
          74AE1411E0F90132C61DC3C67030DE18CF2F8EFC7D78C9CFF9136643522887EA
          10230000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000012744558745469746C650052696768743B4172726F773B
          8FE10E74000001FE49444154785E65923F6B145114C57F6F76B228582856A631
          85214D88A5AC6096185C54B01024A04110C45A515308113F837F0A0511C1C620
          829585554CA29D410C2944116C64633420D13071E6DD2B97BB33ECE079CCDC99
          CB3BE79D7B66C2B5C7EFE79346A30D8A1218CC7E82FA9B2AD8CD8B62F01EE4C5
          F6E2ECE59393694892F6D989210C5FBB9B74464708BEA7AC75A88BDC79F8FA08
          D0484560BB503E7DFFCD8F8D2DB24CD07E562859A15268361B44234248448568
          972822EA56EBC779F14589182386C448455462EC09104C045FF074FE337FB21C
          87EB21D881EE4005240AD145DC6EE536F0EEE31AB3F71758FDB2EEE4E0D3486F
          84D4947231B220EAC9CF3C78838A3FAB0A53D36D1ECD2D31B67F37E74E8C3190
          2648EC39B0306C8442B4B44591175CBC34C970679C039D36CB1B4D868E4DF061
          B3C9ED276F51A50C9154CC411477201E589E476EDD9C43DD1187A68EB3F26A91
          F1E13D9C3FD3C220A23E82A885281462AA3EDFDD2B47AB9FE0F4F567ACBE78C9
          D5E9160747F641F090A5FA8C3642AE16A4374BA897D6E820F76E9C32324A0055
          ABF511FE9A031F0155679798B97018943EB2AB1B0F77A0E4E642C455556B0E50
          DC76D5F02DA2BD0C542C7561EFAE1D34A292A609FD50FFF8F59E2D77A069F75B
          77E1F9FAAF711CAC2DAF78FAF43BA808553FCBB696803C003B810120E17F04EA
          E897CD81EC1FBEC66EBE2A51FCE50000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000041744558745469746C6500436F6E646974696F6E616C466F726D6174
          74696E7349636F6E53657453796D626F6C73333B436F6E646974696F6E616C46
          6F726D617474696E673B9DC5ED720000025449444154785EAD935D6C4B6118C7
          DF2A1BFD38DA4E6DB122D5B5DBAC92CA1CC4B0656CA9CE6ABE3A22662C9DB656
          5F4985359D91655DCC47EDA327CA120417222415DA1925F4424AB6650BDD8A0B
          71C1848CC415B3C7FB9EB4F45CB8907993DFB938CFF3FFE579DEE445003021D8
          CF3F1C1E66322605C3C7FC11D8996C54C768D01EAF06D93A311D1A646D57234B
          7B16DADD96C586153902E10EB7F2AA95A9800D0E8581C81202B6F92BC4D097F1
          281A1D7F813EFF1C409FC6FAD0C71FCFD8B09A164BAA9A95FE5BCF1BA07F8401
          739B9104A7FD16D49E51E1F01037FC9D0D4FCA2DA0E455CDAAF0EDBE2608BF3D
          06CECB4B416F4B77E15A6AF21DF0E3BB4D21A14478CE02816CEBF1798FBB074F
          42E84D3D345D2F84129BFC12AE89493D21E097EFCF5C53E32907936BB69F5E27
          53113B46B4FE50A6FF66A411824307E0ECDD52D0D765448452FE0C124EBEC4A9
          D5A7CBA0F7C33908F47B60674BDE68F1AE9916833DC3D7756F2F04861DC0840C
          603CA878AFA40579E4F25659B123499052B05DEA719C5F043DAF9C303872031A
          2E1AC1D76D879E980BBAC26B61E391B9633945227D7C32DE4A731A47C0C38868
          93A4639F570757222678FAAE13825127F89EE8C17C6A3EE82AA813A4878443AF
          5BD0B26A294780E23B51B891B178B4C03C2A01EFC3D5E0BAB618E8CAE9BDB826
          273D0F626E148C36227A9B842B58827FC425126D99D857D39A0DAD779643716D
          FAB759DAD41564CDFBC36E14787914F9070EA3FC4A8A2BC8DF42111212596EA9
          F04291350DD48582FAC4E80B378B114147D824E60AB8203E868A8F2D62A57F39
          FFE5354E885F4F2C8B1CABF609A90000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002C744558745469746C65004F7074696F6E733B437573746F6D697A3B
          426172733B526962626F6E3B5374616E646172643B6534D17A000002D9494441
          54785E5D926F68D55518C73FCFD9D5BBBBCAB1ED6612B817DA16D606A2D48B81
          9B8631ADC1DD2632962C31442C29885E0C5FCC17D11B85486C6D8C18283A1699
          84C3406A5B39596CB3EC8F7B61AE568381BAD9FEE96AF7FECE394FDCDFEF0AD2
          8B2FCF730E87CFF3FD3E1C014CFBB91F078D3135008A820280AA003EAAEA51A2
          739009AEBE77B06AA7AA66628011A4E670F36688083CD2FCEF18955367AE6D03
          F200628058F5A090CE38145005EF7D2800C420C6A028F9AB0CCE7A0011110C20
          2EF0003855BC579C73749CEEE3D889D3B47F7A81C1A11F58496742A02A58EB00
          A4E9401B06C087178A6A240F14AC56F2DCBF54569471E7DE029DDD1748AF04E1
          80C02A805867A30881F37855B2551010A1796F1D3DBD17F96E68944307F7F175
          FF1097FB8769A8DB8E7591036F5D2E82F3A1ED0F3FEEE1CAF075026B43C8ABAF
          BCC4C4C424730FD2943FB381D16B37B0D662BD05C0B91C20081C59C8CCEC3C77
          671618F87694E5E57F181EFD85977756E39C52589C646171299CEE5C2E420E40
          105922CF1892C922161797397EF20C4B4BCB54566EC23A65FAF62CB1BC58B8C0
          92C244142102448D88E1B9674BB9317E931D3BAA686B3DC4AE5DDB49AC29C27B
          47F2C922366E2CE5FB919FD8B4A118C0645D3FDC41387D776D35537F4DD1D1D5
          C357FD63FC393DC7AD5B9304D6B39276A4EA77F3F3F81F8C8FFF0A10FFA6EF13
          0901D60322240A1EE368EB5B3CBDB6902F3F3FCFBB47DEA6F3D449BEE8ED21C8
          38A6EEDCA7A131C5C2D23C5BAB524D403C06908DA0C09A82D53C9E88F1C6FE3D
          BCBE2F85B5D1720706AFF0D9D96EEA9BF6F3FBF41CF57B52D9257FE455E604C8
          3FDC7AFE722C9E5FE3158C107D260511E5A99227A8282F616CE42A37277EA3B1
          E54DC0B3AE28CEFBC73EF85B0003C4815580E4C42395876F926B4B5FDBFC62CD
          89869623220867BBDA674455011011D69755E3BD0D23791F69EB0BDBB83E7289
          99DB9302240A8BD7353FBFA5F6B87AE5FEFCDD77FE03B7507F361277596D0000
          000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000029744558745469746C650052656D6F76653B44656C6574653B426172
          733B526962626F6E3B5374616E646172643B635648300000026449444154785E
          A551494C5351146568194A2B583746627F458902118892AAB811369246043462
          8556D032A82D831664486D8C3FB40B8128E3C68998A289625720314469022591
          26566BC484681C22C6012B5A1556C7F73EBF507FDCF193F3DFBBE7DC7BDE7BF7
          86005811B820E80B2310F16B6880E4F7E10462AAF3F1B2014F889E961FBB307D
          AAE2EBC8FEDC137C72280FB1AB546BA0DAE4F11296C491940F36089F2CD5593F
          DFE8C682771453E71B31909D6D207C044D76166B8C339D1789E6C4A76B5D18D7
          15D9A869B04184A744E7FBED72C03FD08EF9B13BF09CADC1F50C55CDE08182DA
          B7ED562CB807E1BFDB06FF701F3C47753E52131D6C20B2EFCA343C31EAF1D3D1
          89B93E167F1EF5E37155255ED92C989F70E0C74D96E3C734F9B89498749A1E2A
          EC41644F4A6AF5B8F6107C7D2D98ED6D847FE80A7EDDBF8A6FBD4D98ED69C088
          3A0BD678A589E44A843D089844DB141B4D0FF3D5F8D251878FAC9EA08C5B87F6
          EC44B37C6D23C991F2530AF99F81E472BAAA7E42AFC307B612EFEA0E2FC1A52D
          446B5A4633C991090D968A5B93D24D4EAD06336DF5982E5363BA9C07D9BF674F
          62B4F020AC9B53976EF1CF145A36249B1EE4E5E28DA5022F8AB23045706B1383
          DB498974CFE1F599620CAB736061B63409A720ED5624CFBD341E81B760379EE5
          65A23F410183487ACE208EB1F42728E1CDCFE4F0BC641FBA9894395213176C10
          655EA3EC706CDF06778E0A76C57A5447C8E87B63298C91B166BB92817BEF0EDC
          4BDB8A0639D34DF8986083309A58278BEFB0C631BEAAC5E255940F6886A8D566
          A27DAF95ADEB22B15CD883808984208E209A8F859A9C6F6078F0145684BF98E8
          BFC080A205F60000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000020744558745469746C6500456469743B426172733B526962626F6E3B
          5374616E646172643B3013C3DB0000028449444154785E5D515D48145114FEEE
          CE9AA662FE942B1499246108D94B106588D24B461914843DD443500FF590D81F
          F550D443692F86A1A084AB581AD90F124260A4596AB14A96B556AC6192FDA045
          AEB3BBCE9DB9B77BE732BBEA99F9CEB9C39CEF3BDF9C219C731042B496CEB167
          9AA6157170C89045BE53C758A286D177F4C0A69D826700801B2A5C42A4E85069
          2E9CE08B12711EE07DFC6907004DD16202C4B254834119B823C2559297BA092C
          66D9FD4B05603135832D602BBEE348C134B923B0D40175BE3B4A8AED80280191
          2D93D9FDAF6E6C4744A70B05542B63311224513A23CA8D26EAE6BC3400482C3C
          DB6F00A02E47C0A41694650E0680896AC933E1F699886ACCCF636EB419DD97B6
          FC6A3ABEB10A4092E300865A22989CCA17FF46108648288C89170DC84D1B41CE
          E17BF0B7579CBAFE3DE88E3A60A6691319531305D462B920EB3AC69FD7211583
          C8D9530DFAB5067F3E04A045CC93D11D50CA94804CB610E0727184F520023DF5
          58A5F9B07E5F0DC21FABF1A6B907C8F4E0CBCFC9A69880A5044489EE7D6EF61F
          C67BEA904986B0E1602D667D573174A70FD64A0FDA6E0FB77AC782179C25C2B2
          991CC9091A92E25D6086B47D0B19F435F2CA6B31DD7BD19E1C4E4E87D7FBB65D
          90CF0198761C987A48EFBD7CB3BF880358E34900D7032808FA905F598FA9AE4A
          8C3E194638291D775BDFDFEF98089F01F0BBDCB3CC74362D9D2C1748115821B0
          2E6FEB91879D0DD7B83E39C8BB8E65F3F613F9BC6C75FC0300D902EE40DB2EEC
          CF888314588497D5DB00606D4149C58F77034F794BD5797EA538979766C53F02
          902310E76F2C81BFB1187B5335B8B12422212A0BF9F67924ABB0AC6F8646FE0E
          249A531D33A1F96E697B778A464F57F6AA8100FE037C7D7091F11B3976000000
          0049454E44AE426082}
      end>
  end
  object tmrHeartbeat: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = tmrHeartbeatTimer
    Left = 616
    Top = 472
  end
end
