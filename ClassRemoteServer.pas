//
// Created by the DataSnap proxy generator.
// 11/18/2026 4:07:34 PM
//

unit ClassRemoteServer;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Datasnap.DBClient, DBAccess, NUpdateCommand, Data.DBXJSONReflect;

type
  TSessionServerModuleClient = class(TDSAdminClient)
  private
    FDSServerModuleCreateCommand: TDBXCommand;
    FDSServerModuleDestroyCommand: TDBXCommand;
    FdspMainTableListGetDataCommand: TDBXCommand;
    FdspUpdateTableListGetDataCommand: TDBXCommand;
    FCommandUpdSQLGetSequenceCommand: TDBXCommand;
    FdspLogTableListGetDataCommand: TDBXCommand;
    FcnnMainAfterConnectCommand: TDBXCommand;
    FdspUsersGetDataCommand: TDBXCommand;
    FdspUsersGetDataSetPropertiesCommand: TDBXCommand;
    FApplicationEventsExceptionCommand: TDBXCommand;
    FdspDatasetInformationGetDataCommand: TDBXCommand;
    FcnnMainErrorCommand: TDBXCommand;
    FParseDelimitedCommand: TDBXCommand;
    FCreateDataProviderCommand: TDBXCommand;
    FCancelSeqCommand: TDBXCommand;
    FUpdateSeqCommand: TDBXCommand;
    FStartTransactionCommand: TDBXCommand;
    FCommitTransactionCommand: TDBXCommand;
    FRollbackTransactionCommand: TDBXCommand;
    FCopyDataEntityCommand: TDBXCommand;
    FGenerateClientStatementCommand: TDBXCommand;
    FPostCashDepCommand: TDBXCommand;
    FPostAllCashDepCommand: TDBXCommand;
    FPostCashWdrCommand: TDBXCommand;
    FPostAllCashWdrCommand: TDBXCommand;
    FPostStockDepCommand: TDBXCommand;
    FPostAllStockDepCommand: TDBXCommand;
    FPostStockWdrCommand: TDBXCommand;
    FPostAllStockWdrCommand: TDBXCommand;
    FPostCashMutationCommand: TDBXCommand;
    FPostAllCashMutationCommand: TDBXCommand;
    FPostCashVoucherCommand: TDBXCommand;
    FPostAllCashVoucherCommand: TDBXCommand;
    FPostGLTradeCommand: TDBXCommand;
    FPostJournalCommand: TDBXCommand;
    FReverseJournalCommand: TDBXCommand;
    FCloseSessionCommand: TDBXCommand;
    FLoginCommand: TDBXCommand;
    FLogoutCommand: TDBXCommand;
    FGetBrokerAccountCommand: TDBXCommand;
    FGetBrokerCodeCommand: TDBXCommand;
    FGetBrokerNameCommand: TDBXCommand;
    FGetTransDateCommand: TDBXCommand;
    FGetLocalCCYCommand: TDBXCommand;
    FGetPrevTransDateCommand: TDBXCommand;
    FGetDefaultMarketCommand: TDBXCommand;
    FGetDefaultCountryCommand: TDBXCommand;
    FDataUpdateCommandCommand: TDBXCommand;
    FGetSeqCommand: TDBXCommand;
    FGetServerTimeStampCommand: TDBXCommand;
    FInTransactionCommand: TDBXCommand;
    FGenerateDealTicketFromDTECommand: TDBXCommand;
    FGenerateContractCommand: TDBXCommand;
    FPostingAllDealTicketCommand: TDBXCommand;
    FCloseAllContractCommand: TDBXCommand;
    FDateAppendCommand: TDBXCommand;
    FGetGlobalParamStringCommand: TDBXCommand;
    FGetGlobalParamIntegerCommand: TDBXCommand;
    FGetGlobalParamDateCommand: TDBXCommand;
    FGetGlobalParamFloatCommand: TDBXCommand;
    FGetAllClientConnectionInfoCommand: TDBXCommand;
    FChangePasswordCommand: TDBXCommand;
    FResetPasswordCommand: TDBXCommand;
    FUnLockUserIDCommand: TDBXCommand;
    FSendEmailCommand: TDBXCommand;
    FGetCompanyBankDefaultCommand: TDBXCommand;
    FSendEmailTransactionCommand: TDBXCommand;
    FSendEmailOpeningAccountCommand: TDBXCommand;
    FSendEmailFormBankRDNCommand: TDBXCommand;
    FSendEmailFormOpeningAccountCommand: TDBXCommand;
    FCloseContractBondsCommand: TDBXCommand;
    FGenerateContractBondsCommand: TDBXCommand;
    FCloseDealTicketCommand: TDBXCommand;
    FCloseDealTicketSelectedCommand: TDBXCommand;
    FCloseDealTicketAllCommand: TDBXCommand;
    FCancelContractCommand: TDBXCommand;
    FCloseContractCommand: TDBXCommand;
    FCloseContractSelectedCommand: TDBXCommand;
    FCloseContractAllCommand: TDBXCommand;
    FReverseContractCommand: TDBXCommand;
    FCancelDealTicketCommand: TDBXCommand;
    FGenerateContractFileCommand: TDBXCommand;
    FCreateAllMonthlyStatementCommand: TDBXCommand;
    FCreateMonthlyStatementCommand: TDBXCommand;
    FGenerateDealTicketFromIDXTradeCommand: TDBXCommand;
    FMergeDealTicketCommand: TDBXCommand;
    FCancelMergeDealTicketCommand: TDBXCommand;
    FSendContractByMailCommand: TDBXCommand;
    FSendSOAByMailCommand: TDBXCommand;
    FSendMarginCallWarningByMailCommand: TDBXCommand;
    FReconcileDTECommand: TDBXCommand;
    FCreateAllCashVoucherCommand: TDBXCommand;
    FCreateCOBActivityCommand: TDBXCommand;
    FCraetrCOBRequest_RDN_SIDCommand: TDBXCommand;
    FCreateCOBRequest_RDNCommand: TDBXCommand;
    FCreateCOBRequest_SIDCommand: TDBXCommand;
    FCreateCOBPermissionListCommand: TDBXCommand;
    FGetNewKSEIClientCodeCommand: TDBXCommand;
    FCreateOpeningAccountConfigCommand: TDBXCommand;
    FApproveOpeningAccountCommand: TDBXCommand;
    FApproveClosingAccountCommand: TDBXCommand;
    FSettleInstrMergerCommand: TDBXCommand;
    FSendCOBInfoByMailCommand: TDBXCommand;
    FSendCorpactEntitlementCommand: TDBXCommand;
    FGetNextTradingDateCommand: TDBXCommand;
    FIsEndOfMonthCommand: TDBXCommand;
    FIsEndOfYearCommand: TDBXCommand;
    FFindEmailCommand: TDBXCommand;
    FGetMasterTableNameFromDatasetProviderCommand: TDBXCommand;
    FGetAuditTableNameFromDatasetProviderCommand: TDBXCommand;
    FGetTableNameFromDatasetCommand: TDBXCommand;
    FGetAuditTableNameFromDatasetCommand: TDBXCommand;
    FStartEditTableCommand: TDBXCommand;
    FFinishEditTableCommand: TDBXCommand;
    FUploadStockRecCommand: TDBXCommand;
    FUploadRDNFileCommand: TDBXCommand;
    FGenerateBatchProcessCommand: TDBXCommand;
    FContractCountCommand: TDBXCommand;
    FProcessCountCommand: TDBXCommand;
    FChangeDataExecutionManualDealticketCommand: TDBXCommand;
    FUpdateTradeExecutionWithProrateCommand: TDBXCommand;
    FUpdateOMGStatusCommand: TDBXCommand;
    FGenerateOMGContractCommand: TDBXCommand;
    FMTIProcessCommand: TDBXCommand;
    FBatchProcessCommand: TDBXCommand;
    FUpdateCompleteActivityCommand: TDBXCommand;
    FUpdateAckActivityCommand: TDBXCommand;
    FWriteActivityLogCommand: TDBXCommand;
    FUpdateCOBActParamSettingCommand: TDBXCommand;
    FUpdateBankLinkToLedgerCommand: TDBXCommand;
    FBackToPrevProcessCOBCommand: TDBXCommand;
    FGenerateKSEIExcelFileCommand: TDBXCommand;
    FClearBondsQuotationCommand: TDBXCommand;
    FGetValueDateCommand: TDBXCommand;
    FDeleteCTPByDateCommand: TDBXCommand;
    FGenerateContractBondsByIDCommand: TDBXCommand;
    FPostStockDepositCommand: TDBXCommand;
    FPostStockDepositReverseCommand: TDBXCommand;
    FPostStockWithdrawCommand: TDBXCommand;
    FPostStockWithdrawReverseCommand: TDBXCommand;
    FPostStockWithdrawCalcelCommand: TDBXCommand;
    FPostGLJournalCommand: TDBXCommand;
    FGenerateToExtDataCommand: TDBXCommand;
    FStockPosToNextDateCommand: TDBXCommand;
    FCashPosToNextDateCommand: TDBXCommand;
    FGetYieldQuotationCommand: TDBXCommand;
    FUpdateCTPReffCommand: TDBXCommand;
    FCreateCashVoucherBySICommand: TDBXCommand;
    FCreateCashVoucherAllCommand: TDBXCommand;
    FCreateCashVoucherGroupCommand: TDBXCommand;
    FCreateStockVoucherBySICommand: TDBXCommand;
    FCreateStockVoucherAllCommand: TDBXCommand;
    FCreateStockVoucherGroupCommand: TDBXCommand;
    FStockVoucherPostingCommand: TDBXCommand;
    FCashVoucherPostingCommand: TDBXCommand;
    FStockVoucherCancelCommand: TDBXCommand;
    FCashVoucherCancelCommand: TDBXCommand;
    FReverseBondsContractCommand: TDBXCommand;
    FCashCorpactProcessCommand: TDBXCommand;
    FStockCorpactProcessCommand: TDBXCommand;
    FCorpactAllocCommand: TDBXCommand;
    FCorpactEntCommand: TDBXCommand;
    FGetVoucherNoCommand: TDBXCommand;
    FUploadSungardAllTradeCommand: TDBXCommand;
    FUploadDHKCommand: TDBXCommand;
    FUploadDTECommand: TDBXCommand;
    FUploadFeedBackBankCommand: TDBXCommand;
    FGenerateDTFromIDXTradeAllCommand: TDBXCommand;
    FGenerateDTFromIDXTradeSelectedCommand: TDBXCommand;
    FSendIPOContractByMailCommand: TDBXCommand;
    FGetCCYRateCommand: TDBXCommand;
    FGetCurrentCcyRateCommand: TDBXCommand;
    FUploadKSEIAccountDataCommand: TDBXCommand;
    FCreateSIforRightExerciseCommand: TDBXCommand;
    FExerciseToFinanceCommand: TDBXCommand;
    FGenerateBankInstructionForExerciseCommand: TDBXCommand;
    FGenerateBankInstructionForExerciseWarrantCommand: TDBXCommand;
    FGenerateBookInstructionForExerciseCommand: TDBXCommand;
    FRegisterCallbackInfoCommand: TDBXCommand;
    FSungardAllTradeCommand: TDBXCommand;
    FConfirmIPOAllotmentCommand: TDBXCommand;
    FPostedFinanceIPOAllotmentCommand: TDBXCommand;
    FCreateVoucherIPOAllotmentCommand: TDBXCommand;
    FCancelIPOAllotmentCommand: TDBXCommand;
    FConfirmIPOPoolingCommand: TDBXCommand;
    FPostedFinanceIPOPoolingCommand: TDBXCommand;
    FCreateVoucherIPOPoolingCommand: TDBXCommand;
    FCancelIPOPoolingCommand: TDBXCommand;
    FGenerateVoucherIPOAllotmentCommand: TDBXCommand;
    FGenerateVoucherIPOPoolingCommand: TDBXCommand;
    FEIPOApprovedCommand: TDBXCommand;
    FEIPOCanceledCommand: TDBXCommand;
    FEIPOAllotmentCommand: TDBXCommand;
    FEIPODistributionCommand: TDBXCommand;
    FEIPOAllotmentUpdateCommand: TDBXCommand;
    FGeneratePortfolioM2MCommand: TDBXCommand;
    FPortofolioExecuteCommand: TDBXCommand;
    FCorpactDistributionProcessCommand: TDBXCommand;
    FInterestDiscountCommand: TDBXCommand;
    FGenerateInterestCommand: TDBXCommand;
    FGLTradePostingByJournalTypeCommand: TDBXCommand;
    FPostingDebetCreditNoteCommand: TDBXCommand;
    FPostingStockMovementCommand: TDBXCommand;
    FCreateAllReceiveCashVoucherCommand: TDBXCommand;
    FSettleOTCInstructionCommand: TDBXCommand;
    FUploadHaircutCommand: TDBXCommand;
    FGetMaxClosePriceCommand: TDBXCommand;
    FMergeCustodyInstrCommand: TDBXCommand;
    FGenerateCustdInstrNoCommand: TDBXCommand;
    FCreateBalanceFromSplitCommand: TDBXCommand;
    FCreateSIFromSplitCommand: TDBXCommand;
    FGenerateDistributionIPOFixAllotmentCommand: TDBXCommand;
    FGenerateDistributionIPOPoolingCommand: TDBXCommand;
    FConfirmIPOPoolingDistributionCommand: TDBXCommand;
    FTenderOfferCloseCommand: TDBXCommand;
    FTenderOfferReverseCommand: TDBXCommand;
    FLBProcessCommand: TDBXCommand;
    FLBSettleCommand: TDBXCommand;
    FLBReverseCommand: TDBXCommand;
    FLBChangeDueDateCommand: TDBXCommand;
    FCreateSubAccountCommand: TDBXCommand;
    FUploadSOPDepositQtyCommand: TDBXCommand;
    FUploadSOPMemberCommand: TDBXCommand;
    FStockSettleCancelCommand: TDBXCommand;
    FStockMoveReverseCommand: TDBXCommand;
    FCashVoucherReverseCommand: TDBXCommand;
    FStockSettleReverseCommand: TDBXCommand;
    FUploadNewClientCommand: TDBXCommand;
    FUploadNewCOBCommand: TDBXCommand;
    FApproveSuspendAccountCommand: TDBXCommand;
    FApproveOpenSuspendAccountCommand: TDBXCommand;
    FGenerateBankMutationCommand: TDBXCommand;
    FAutodepositBankrekonCommand: TDBXCommand;
    FAddCustodianInstructionCommand: TDBXCommand;
    FGenerateOTCNonExchangeCommand: TDBXCommand;
    FSettleStockProcessCommand: TDBXCommand;
    FCashVoucherAllPostCommand: TDBXCommand;
    FBankReconOneCommand: TDBXCommand;
    FBankReconAllCommand: TDBXCommand;
    FSOPStockMoveAdminCheckCommand: TDBXCommand;
    FSOPStockMoveSettleCommand: TDBXCommand;
    FUploadStockDepositCommand: TDBXCommand;
    FUploadStockWithdrawCommand: TDBXCommand;
    FCreateAllCashVoucher_KPEICommand: TDBXCommand;
    FCustodianToMergerCommand: TDBXCommand;
    FBatchProcessingCommand: TDBXCommand;
    FBatchNextTradingDayCommand: TDBXCommand;
    FGenerateARAP_SetOffCommand: TDBXCommand;
    FGenerateRevaluationCurrencyCommand: TDBXCommand;
    FGenerateCustodiInstructionCommand: TDBXCommand;
    FIntrstDiscountCommand: TDBXCommand;
    FInterestWaveCommand: TDBXCommand;
    FCashReconciliationCancelCommand: TDBXCommand;
    FCashWithdrawReverseCommand: TDBXCommand;
    FCashWithdrawCancelCommand: TDBXCommand;
    FCashWithdrawApprovedCommand: TDBXCommand;
    FCashWithdrawPostingCommand: TDBXCommand;
    FOTCForSplitCommand: TDBXCommand;
    FOTCForUpdateCommand: TDBXCommand;
    FExerciseVCAProcessCommand: TDBXCommand;
    FExercisesDistributionProcessCommand: TDBXCommand;
    FWarrantDistributionProcessCommand: TDBXCommand;
    FCorpactHMETDProcessCommand: TDBXCommand;
    FCorpactHMETDProcessCancelCommand: TDBXCommand;
    FCorpactHMETDCancelProcessCommand: TDBXCommand;
    FCorpactReversedCommand: TDBXCommand;
    FCorpactCancelCommand: TDBXCommand;
    FApproveRequestCommand: TDBXCommand;
    FChangeRequestCommand: TDBXCommand;
    FApproveModuleCommand: TDBXCommand;
    FApproveChangesCommand: TDBXCommand;
    FCreateDataActivityCommand: TDBXCommand;
    FFinishDataActivityCommand: TDBXCommand;
    FUpdateDataActivityStatusBackCommand: TDBXCommand;
    FUpdateDataActivityStatusDoneCommand: TDBXCommand;
    FUpdateDataActivityStatusCancelCommand: TDBXCommand;
    FUpdateDataActivityStatusPrevCommand: TDBXCommand;
    FUpdateDataActivityStatusDoneBySystemCommand: TDBXCommand;
    FAcknowledgeDataActivityCommand: TDBXCommand;
    FOpenAcknowledgeDataActivityCommand: TDBXCommand;
    FCreateAllPaymentVoucherCommand: TDBXCommand;
    FCreatePaymentVoucherCommand: TDBXCommand;
    FCreateReceiveVoucherCommand: TDBXCommand;
    FCreateAutoReceiveVoucherCommand: TDBXCommand;
    FCashVoucher_PostingCommand: TDBXCommand;
    FCreateAllDevidenCashVoucherCommand: TDBXCommand;
    FRollOverProcessCommand: TDBXCommand;
    FFullFlowProcessCommand: TDBXCommand;
    FAllPaymentPostingCommand: TDBXCommand;
    FPostingRepoCommand: TDBXCommand;
    FCloseContractRepoCommand: TDBXCommand;
    FSettleContractRepoCommand: TDBXCommand;
    FPostingChangeRepoCollateralCommand: TDBXCommand;
    FGenerateRepoInterestCommand: TDBXCommand;
    FRepoStockMovementCommand: TDBXCommand;
    FCreateREPOPaymentVoucherCommand: TDBXCommand;
    FPostingRenewalRepoCommand: TDBXCommand;
    FSettleRenewalRepoCommand: TDBXCommand;
    FRunSPInsertToSourceCommand: TDBXCommand;
    FRunSPGenerateReportCommand: TDBXCommand;
    FRunSPCreateTextReportCommand: TDBXCommand;
    FEmptyTableCommand: TDBXCommand;
    FGenerateMKBDCommand: TDBXCommand;
    FGenerateDHKInstructionCommand: TDBXCommand;
    FDHKReconciliationCommand: TDBXCommand;
    FDeleteDHKByDateCommand: TDBXCommand;
    FGenerateSetOffSelectedCommand: TDBXCommand;
    FGenerateSetOffReverseCommand: TDBXCommand;
    FCreditBalanceProcessCommand: TDBXCommand;
    FCBestBalanceProcessCommand: TDBXCommand;
    FDistributionIPOFixAllotmentCommand: TDBXCommand;
    FDistributionIPOPoolingCommand: TDBXCommand;
    FPostingIPOCommand: TDBXCommand;
    FPostingIPOAllotmentCommand: TDBXCommand;
    FPostingIPOPollingCommand: TDBXCommand;
    FRegisterIPOStockCommand: TDBXCommand;
    FGeneratePaymentIPOAllotmentCommand: TDBXCommand;
    FGeneratePaymentIPOPollingCommand: TDBXCommand;
    FCustodyExternalRefCommand: TDBXCommand;
    FAllPostingCashReceiveCommand: TDBXCommand;
    FSetoffSettlementMarginProcessCommand: TDBXCommand;
    FCreateBankPaymentReceiveCommand: TDBXCommand;
    FStartEndDayProcessCommand: TDBXCommand;
    FFinishEndDayProcessCommand: TDBXCommand;
    FSplitReverseProcessCommand: TDBXCommand;
    FCancelCashVoucherCommand: TDBXCommand;
    FSettleCashVoucherCommand: TDBXCommand;
    FReverseCashVoucherCommand: TDBXCommand;
    FUpdateCashOnHoldCommand: TDBXCommand;
    FCreateAutoRollOverCashVoucherCommand: TDBXCommand;
    FGenerateCOLWCOLDSCommand: TDBXCommand;
    FCreateSelectedCashVoucherCommand: TDBXCommand;
    FCreateSelectedReceiveCashVoucherCommand: TDBXCommand;
    FCashMutationPostingCommand: TDBXCommand;
    FCashMutationReverseCommand: TDBXCommand;
    FCashMutationCancelCommand: TDBXCommand;
    FExecQryCommand: TDBXCommand;
    FPostCashDepRDNCommand: TDBXCommand;
    FCreateMarginNotificationCommand: TDBXCommand;
    FMarginMCallDayCommand: TDBXCommand;
    FExerciseRightProcessCommand: TDBXCommand;
    FExerciseWarrantProcessCommand: TDBXCommand;
    FStockSettleVoucherPostingCommand: TDBXCommand;
    FStockSettleVoucherCancelCommand: TDBXCommand;
    FStockSettleVoucherReverseCommand: TDBXCommand;
    FGenerateCustodyInstructionCommand: TDBXCommand;
    FCreateStockVoucherCommand: TDBXCommand;
    FUpdateStatusCustodyInstCommand: TDBXCommand;
    FUpdateIPOAllotmentGroupCommand: TDBXCommand;
    FUpdateIPOPoolingGroupCommand: TDBXCommand;
    FCreateJournalRecurringCommand: TDBXCommand;
    FAllotmentReverseCommand: TDBXCommand;
    FAllotmentAmendCommand: TDBXCommand;
    FPoolingReverseCommand: TDBXCommand;
    FPoolingAmendCommand: TDBXCommand;
    FGetAvgPriceDecCommand: TDBXCommand;
    FGenerateBankInstructionFileCommand: TDBXCommand;
    FCheckAccountChargeUsedCommand: TDBXCommand;
    FCashDebetCreditNotesPostingCommand: TDBXCommand;
    FCashDebetCreditNotesReverseCommand: TDBXCommand;
    FCashDebetCreditNotesCancelCommand: TDBXCommand;
    FGenerateVD55MonthlyCommand: TDBXCommand;
    FCreateSplitStockVoucherCommand: TDBXCommand;
    FCreateCashVoucherFromStockVoucherCommand: TDBXCommand;
    FGenerateMarginCallCommand: TDBXCommand;
    FClearIDXAllTradeCommand: TDBXCommand;
    FEmptyDTEByDateCommand: TDBXCommand;
    FCancelCrosstomCommand: TDBXCommand;
    FSendFormBankRDNByEMailCommand: TDBXCommand;
    FUpdateReqKSEICommand: TDBXCommand;
    FUpdateKSEINoCommand: TDBXCommand;
    FWebOARejectedCommand: TDBXCommand;
    FUpdateRDNCommand: TDBXCommand;
    FGetDukcapilDataCommand: TDBXCommand;
    FRunningFreeSQLScriptCommand: TDBXCommand;
    FUpdateAccountBankCommand: TDBXCommand;
    FRejectDataFromOAWebCommand: TDBXCommand;
    FIncompleteOAWebCommand: TDBXCommand;
    FCreateStockSettleBrokerCommand: TDBXCommand;
    FCreateStockSettleClientCommand: TDBXCommand;
    FGeneratePortfolioMTMCommand: TDBXCommand;
    FReversePortfolioRevaluationCommand: TDBXCommand;
    FNextOfYearProcessCommand: TDBXCommand;
    FInterestReservedCommand: TDBXCommand;
    FDeleteDealTicketAllocCommand: TDBXCommand;
    FUnpostingJournalCommand: TDBXCommand;
    FSecuritiesLedgerJournalCommand: TDBXCommand;
    FFundLedgerJournalCommand: TDBXCommand;
    FDeleteStockReconByDateCommand: TDBXCommand;
    FCheckChannelOLTCommand: TDBXCommand;
    FInitialAccountOLTCommand: TDBXCommand;
    FSynchronizeClientApplicationCommand: TDBXCommand;
    FCheckClientApplicationVersionCommand: TDBXCommand;
    FSendNotificationAccountDormanByMailCommand: TDBXCommand;
    FUpdateAccountDormanCommand: TDBXCommand;
    FGetAvgPriceCommand: TDBXCommand;
    FCorpactEntitlementPostingCommand: TDBXCommand;
    FCreateAllCashSettlementVoucherCommand: TDBXCommand;
    FGetBankRefferenceCommand: TDBXCommand;
    FUpdateBankReffCommand: TDBXCommand;
    FSendClosedContractByMailCommand: TDBXCommand;
    FApproveCashWdrCommand: TDBXCommand;
    FPararelCloseContractByDateCommand: TDBXCommand;
    FCloseContractByDateCommand: TDBXCommand;
    FStockSettlementPostByDateCommand: TDBXCommand;
    FGetHighPriceCommand: TDBXCommand;
    FCreateStockSettleVoucherClientByDateCommand: TDBXCommand;
    FCreateStockSettleVoucherBrokerByDateCommand: TDBXCommand;
    FCreateStockSettleVoucherByDateCommand: TDBXCommand;
    FPararelCreateCashSettementVoucherCommand: TDBXCommand;
    FPararelPostingCashSettementVoucherCommand: TDBXCommand;
    FPararelCloseDealTicketCommand: TDBXCommand;
    FCancelAllDealTicketCommand: TDBXCommand;
    FReCalculateMinimumFeeCommand: TDBXCommand;
    FDeleteAccountBankCommand: TDBXCommand;
    FGetMaxPageCommand: TDBXCommand;
    FCopyStockDepFromUploadCommand: TDBXCommand;
    FCopyStockWdrFromUploadCommand: TDBXCommand;
    FCopyDHKFromUploadCommand: TDBXCommand;
    FCopyCashDepFromUploadCommand: TDBXCommand;
    FCopyCashWdrFromUploadCommand: TDBXCommand;
    FCopyDataAccountFromUploadCommand: TDBXCommand;
    FUploadStringListKSEICommand: TDBXCommand;
    FUploadStockReconCommand: TDBXCommand;
    FGetAccountListTotalPagesCommand: TDBXCommand;
    FGetEntityListTotalPagesCommand: TDBXCommand;
    FRecalculateNewRoundCommand: TDBXCommand;
    FGenerateSelectedContractFileCommand: TDBXCommand;
    FGenerateStampingCommand: TDBXCommand;
    FGetFileStampCommand: TDBXCommand;
    FSplitDealticketByExecPriceCommand: TDBXCommand;
    FAccountCommissionIDByAccNoCommand: TDBXCommand;
    FGetDataForChangePriceCommand: TDBXCommand;
    FChangeBoardFacilitationCommand: TDBXCommand;
    FSplitDealTicketByQtyCommand: TDBXCommand;
    FGenerateContractByTypeCommand: TDBXCommand;
    FEditAmountOmgeoContractCommand: TDBXCommand;
    FContractEditAmountCommand: TDBXCommand;
    FChangeChargesAmountCommand: TDBXCommand;
    FChangeNetProcedByPriceCommand: TDBXCommand;
    FUpdateWithdrawStockPositionCommand: TDBXCommand;
    FGenerateSLIKDataCommand: TDBXCommand;
    FGLInterfacePostCommand: TDBXCommand;
    FEODProcessCommand: TDBXCommand;
    FsInvestAutoSplitCommand: TDBXCommand;
    FCashDepositPostAllCommand: TDBXCommand;
    FCashDepCancelCommand: TDBXCommand;
    FCashDepPostingCommand: TDBXCommand;
    FCashDepositReverseCommand: TDBXCommand;
    FChangeInterestRateCommand: TDBXCommand;
    FGeneratePrincipalizeInterestCommand: TDBXCommand;
    FGeneratePrincipalizePenaltyCommand: TDBXCommand;
    FGenerateWaveInterestCommand: TDBXCommand;
    FGenerateWavePenaltyCommand: TDBXCommand;
    FInvoiceInterestCancelCommand: TDBXCommand;
    FWaveInterestCancelCommand: TDBXCommand;
    FDailyInstructionUpdateCommand: TDBXCommand;
    FDailyInstructionCancelCommand: TDBXCommand;
    FGenerateDailyCashInstructionCommand: TDBXCommand;
    FCashMovementApprovedCommand: TDBXCommand;
    FCashMovementPostCommand: TDBXCommand;
    FCashMovementReverseCommand: TDBXCommand;
    FCashMovementCancelCommand: TDBXCommand;
    FAlternateCashSettlCancelCommand: TDBXCommand;
    FAlternateCashSettlPostCommand: TDBXCommand;
    FAlternateCashSettlReverseCommand: TDBXCommand;
    FGetClosingPriceForACSCommand: TDBXCommand;
    FCorpactExerciseProcessCommand: TDBXCommand;
    FCorpactExerciseDistributionCommand: TDBXCommand;
    FCorpactExerciseCancelCommand: TDBXCommand;
    FCorpactExerciseReverseCommand: TDBXCommand;
    FGenerateDealticketFromVerdhanaRTCommand: TDBXCommand;
    FGenerateAMLReportCommand: TDBXCommand;
    FGenerateEODSupportCommand: TDBXCommand;
    FGetEODSupportFileListCommand: TDBXCommand;
    FGetEODSupportFileCommand: TDBXCommand;
    FLoadEMaterailConfigCommand: TDBXCommand;
    FSaveEMaterailConfigCommand: TDBXCommand;
    FGenerateCheckReportEMateraiCommand: TDBXCommand;
    FClearVedhanaDataTradeOrderCommand: TDBXCommand;
    FRDNSynchronizeCommand: TDBXCommand;
    FStockWithdrawApproveCommand: TDBXCommand;
    FStockWithdrawPostingCommand: TDBXCommand;
    FStockWithdrawCancelCommand: TDBXCommand;
    FStockWithdrawReverseCommand: TDBXCommand;
    FDepositoApproveCommand: TDBXCommand;
    FDepositoCancelCommand: TDBXCommand;
    FDepositoCloseCommand: TDBXCommand;
    FGenerateUpdateDataExecutionFromDTECommand: TDBXCommand;
    FChangeCommissionCommand: TDBXCommand;
    FGenerateIDXMonthlyTransReportCommand: TDBXCommand;
    FStockMovementApproveCommand: TDBXCommand;
    FStockMovementCancelCommand: TDBXCommand;
    FGetPDFFilesCommand: TDBXCommand;
    FDeleteAllPDFFileCommand: TDBXCommand;
    FMoveAllPDFFileCommand: TDBXCommand;
    FGetStampedContracCommand: TDBXCommand;
    FResetReconActByDateCommand: TDBXCommand;
    FReksadanaDepositoAppoveCommand: TDBXCommand;
    FReksadanaDepositoCancelCommand: TDBXCommand;
    FReksadanaDepositoCloseCommand: TDBXCommand;
    FSetEODSupportPdfStatusCommand: TDBXCommand;
    FFileNameUploadedCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure DSServerModuleDestroy(Sender: TObject);
    procedure dspMainTableListGetData(Sender: TObject; DataSet: TCustomClientDataSet);
    procedure dspUpdateTableListGetData(Sender: TObject; DataSet: TCustomClientDataSet);
    procedure CommandUpdSQLGetSequence(ASeqName: string; var ASeqNumber: Int64);
    procedure dspLogTableListGetData(Sender: TObject; DataSet: TCustomClientDataSet);
    procedure cnnMainAfterConnect(Sender: TObject);
    procedure dspUsersGetData(Sender: TObject; DataSet: TCustomClientDataSet);
    procedure dspUsersGetDataSetProperties(Sender: TObject; DataSet: TDataSet; out Properties: OleVariant);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    procedure dspDatasetInformationGetData(Sender: TObject; DataSet: TCustomClientDataSet);
    procedure cnnMainError(Sender: TObject; E: EDAError; var Fail: Boolean);
    procedure ParseDelimited(sl: TStrings; value: string; delimiter: string);
    procedure CancelSeq(ASeqName: string; ASeqValue: Int64);
    procedure UpdateSeq(ASeqName: string; ASeqValue: Int64);
    procedure StartTransaction;
    procedure CommitTransaction;
    procedure RollbackTransaction;
    procedure CopyDataEntity(ACID: Integer);
    procedure GenerateClientStatement(ProcessID: Int64);
    function PostCashDep(CashDepID: Int64; out AMessage: string): Boolean;
    procedure PostAllCashDep(CashDepDate: Integer);
    function PostCashWdr(CashWdrID: Int64; out AMessage: string): Boolean;
    procedure PostAllCashWdr(CashWdrDate: Integer);
    function PostStockDep(StockDepID: Int64; out AMessage: string): Boolean;
    procedure PostAllStockDep(StockDepDate: Integer);
    function PostStockWdr(StockWdrID: Int64; out AMessage: string): Boolean;
    procedure PostAllStockWdr(StockWdrDate: Integer);
    procedure PostCashMutation(CashMutID: Int64);
    procedure PostAllCashMutation(CashMutDate: Integer);
    procedure PostCashVoucher(CashVoucherID: Int64);
    procedure PostAllCashVoucher(CashVoucherDate: Integer);
    procedure PostGLTrade(GLTradeDate: Integer);
    function PostJournal(AJournalID: Int64; out AMsg: string): Boolean;
    function ReverseJournal(AJournalID: Int64; out AMessage: string): Boolean;
    procedure CloseSession(ASessionList: string);
    function Login(var UserId: string; var Pwd: string; var Host: string; var Address: string; var AppVersion: string; var AppName: string): string;
    function Logout(UserId: string; Address: string): string;
    function GetBrokerAccount: Integer;
    function GetBrokerCode: string;
    function GetBrokerName: string;
    function GetTransDate: TDateTime;
    function GetLocalCCY: string;
    function GetPrevTransDate: TDateTime;
    function GetDefaultMarket: string;
    function GetDefaultCountry: string;
    function DataUpdateCommand(ACommand: TNCommandUpdate): string;
    function GetSeq(ASeqName: string): Int64;
    function GetServerTimeStamp: Double;
    function InTransaction: Boolean;
    function GenerateDealTicketFromDTE(ADTEDate: TDateTime; out AMsg: string): Boolean;
    function GenerateContract(ATrdDateFile: Integer): string;
    function PostingAllDealTicket(ATrdDateFile: Integer): string;
    function CloseAllContract(ATrdDateFile: Integer): string;
    function DateAppend(ATrdDateFile: Integer; ADays: Integer): TDateTime;
    function GetGlobalParamString(AParamID: string): string;
    function GetGlobalParamInteger(AParamID: string): Integer;
    function GetGlobalParamDate(AParamID: string): TDateTime;
    function GetGlobalParamFloat(AParamID: string): Double;
    function GetAllClientConnectionInfo: string;
    function ChangePassword(AUserID: string; AOldPwd: string; ANewPwd: string; out AMsg: string): Boolean;
    function ResetPassword(AUserID: string; out AMsg: string): Boolean;
    function UnLockUserID(AUserID: string; out AMsg: string): Boolean;
    procedure SendEmail(EmailID: Int64);
    function GetCompanyBankDefault(Ccy: string): Integer;
    function SendEmailTransaction(ATransType: string; ATransID: Int64): Boolean;
    function SendEmailOpeningAccount(AOAType: string; AOAID: Int64): Boolean;
    function SendEmailFormBankRDN(AOAID: Int64; out AMsg: string): Boolean;
    function SendEmailFormOpeningAccount(AOAID: Int64; out AMsg: string): Boolean;
    function CloseContractBonds(AConID: Int64; out AMsg: string): Boolean;
    function GenerateContractBonds(ATradeBondID: Int64; out AMsg: string): Boolean;
    function CloseDealTicket(ADealTicketID: Int64; out AMessage: string): Boolean;
    procedure CloseDealTicketSelected(ADealTicketNo: string; out ASuccessCount: Integer; out ARejectCount: Integer);
    procedure CloseDealTicketAll(ADealTicketDate: TDateTime; out ASuccessCount: Integer; out ARejectCount: Integer);
    function CancelContract(AContractID: Int64; out AMessage: string): Boolean;
    function CloseContract(AContractID: Int64; out AMessage: string): Boolean;
    procedure CloseContractSelected(AContractNo: string; out ASuccessCount: Integer; out ARejectCount: Integer);
    procedure CloseContractAll(AContractDate: TDateTime; out ASuccessCount: Integer; out ARejectCount: Integer; out AMsg: string);
    function ReverseContract(AContractID: Int64; out AMessage: string): Boolean;
    function CancelDealTicket(ADealTicketID: Int64): string;
    function GenerateContractFile(ATrdDateFile: Integer): string;
    function CreateAllMonthlyStatement(APeriod: string): string;
    function CreateMonthlyStatement(APeriod: string; AAccID: Integer): string;
    function GenerateDealTicketFromIDXTrade: string;
    function MergeDealTicket(ADTID_List: string): string;
    function CancelMergeDealTicket(DTID: Int64): string;
    function SendContractByMail(AContractID: Int64; AReportFileName: string): Boolean;
    function SendSOAByMail(APeriod: string; AAccID: Int64): Boolean;
    function SendMarginCallWarningByMail(AccID: Integer): Boolean;
    function ReconcileDTE(ADate: TDateTime): Boolean;
    function CreateAllCashVoucher(AVoucherDateFile: Integer): string;
    procedure CreateCOBActivity(ACID: Integer; ACOBType: Integer);
    procedure CraetrCOBRequest_RDN_SID(ACID: Integer);
    procedure CreateCOBRequest_RDN(ACID: Integer);
    procedure CreateCOBRequest_SID(ACID: Integer);
    procedure CreateCOBPermissionList(AUSERID: string);
    function GetNewKSEIClientCode: string;
    function CreateOpeningAccountConfig(AOAID: Integer; out AMessage: string): Boolean;
    function ApproveOpeningAccount(AOAID: Integer; out AMessage: string): Boolean;
    function ApproveClosingAccount(AOAID: Integer; out AMessage: string): Boolean;
    procedure SettleInstrMerger(ASIID: string; ASettleSide: string; AValueDate: TDateTime);
    function SendCOBInfoByMail(ACID: Integer; AMailType: string): string;
    function SendCorpactEntitlement(ACAID: Integer; AAccID: Integer; ACAType: Integer; AMailType: string): string;
    function GetNextTradingDate(AFromDate: TDateTime; AIncDay: Integer): TDateTime;
    function IsEndOfMonth(ADate: TDateTime): Boolean;
    function IsEndOfYear(ADate: TDateTime): Boolean;
    function FindEmail(AFindBy: string; AFindID: Int64; var AEmailDateFile: Integer; var AEmailID: Int64; var ASendID: Int64): Boolean;
    function GetMasterTableNameFromDatasetProvider(sDatasetProviderName: string): string;
    function GetAuditTableNameFromDatasetProvider(sDatasetProviderName: string): string;
    function GetTableNameFromDataset(ADataModuleName: string; ADatasetName: string): string;
    function GetAuditTableNameFromDataset(ADataModuleName: string; ADatasetName: string): string;
    function StartEditTable(sTableName: string; sDataTableKey: string; var sUserID: string; var sIPAddress: string; var sCompName: string; var DateEdit: TDateTime): Boolean;
    function FinishEditTable(sTableName: string; sDataTableKey: string): Boolean;
    function UploadStockRec(AStockRecFile: TStringList; ATrDateFile: Integer): Boolean;
    function UploadRDNFile(AFileArray: TJSONArray; AFileName: string): Boolean;
    procedure GenerateBatchProcess(ADate: TDateTime);
    function ContractCount: Integer;
    function ProcessCount: Integer;
    function ChangeDataExecutionManualDealticket(AOrderDate: TDateTime; out AMsg: string): Boolean;
    function UpdateTradeExecutionWithProrate(ADealticketList: string; out AMsg: string): Boolean;
    procedure UpdateOMGStatus(APROC: string; ACONID: string; ASTATUS: string; AOMGSTATUS: string; AREMARK: string);
    function GenerateOMGContract(ACONDATE: TDateTime; AUser: string): Boolean;
    procedure MTIProcess(ADealTicketID: Int64; ATransID: Integer);
    procedure BatchProcess(ABatchCategory: string; ATransDate: TDateTime);
    procedure UpdateCompleteActivity(AID: Integer; CID: Integer);
    procedure UpdateAckActivity(AID: Integer; CID: Integer);
    procedure WriteActivityLog(FormName: string; ActionName: string; ActionDesc: string; ActionType: string);
    procedure UpdateCOBActParamSetting(CID: Integer);
    procedure UpdateBankLinkToLedger(AAccID: Integer);
    procedure BackToPrevProcessCOB(CID: Integer; ACTIVITY_ID: Integer; ACTIVITY_SUBID: Integer);
    procedure GenerateKSEIExcelFile;
    procedure ClearBondsQuotation;
    function GetValueDate(ATradeDate: TDateTime; ADays: Integer): TDateTime;
    procedure DeleteCTPByDate(ATradeDate: TDateTime);
    function GenerateContractBondsByID(ATradeBondsID: Integer): string;
    function PostStockDeposit(ASDID: Integer; out AMessage: string): Boolean;
    function PostStockDepositReverse(ASDID: Integer; out AMessage: string): Boolean;
    function PostStockWithdraw(ASWID: Integer; out AMsg: string): Boolean;
    function PostStockWithdrawReverse(ASWID: Int64; out AMessage: string): Boolean;
    function PostStockWithdrawCalcel(ASWID: Int64; out AMessage: string): Boolean;
    function PostGLJournal(ARptDate: TDateTime): string;
    procedure GenerateToExtData(ARptDate: TDateTime);
    procedure StockPosToNextDate(ARptDate: TDateTime; ANextDate: TDateTime);
    procedure CashPosToNextDate(ARptDate: TDateTime; ANextDate: TDateTime);
    function GetYieldQuotation(ALastCoupon: TDateTime; ANextCoupon: TDateTime; AValueDate: TDateTime; ABasis: Integer; ACouponInYear: Integer; AMaturityDate: TDateTime; ACouponRate: Double; APrice: Double): Double;
    procedure UpdateCTPReff(ACTPReff: string; AContractID: Integer; ADetailID: Integer);
    procedure CreateCashVoucherBySI(ASIID: Int64; AVoucherDate: TDateTime; ASettleSide: string);
    procedure CreateCashVoucherAll(AVoucherDate: TDateTime; ABankAccID: Int64; ASettleSide: string);
    procedure CreateCashVoucherGroup(ASelectedID: string; AVoucherDate: TDateTime; ABankAccID: Int64; ASettleSide: string);
    procedure CreateStockVoucherBySI(ASIID: Int64; AVoucherDate: TDateTime; ASettleSide: string);
    procedure CreateStockVoucherAll(AVoucherDate: TDateTime; ASettleSide: string);
    procedure CreateStockVoucherGroup(ASelectedID: string; AVoucherDate: TDateTime; ASettleSide: string);
    procedure StockVoucherPosting(AVoucherID: Int64);
    procedure CashVoucherPosting(AVoucherID: Int64);
    procedure StockVoucherCancel(AVoucherID: Int64);
    procedure CashVoucherCancel(AVoucherID: Int64);
    function ReverseBondsContract(AConBonID: Int64; out AMsg: string): Boolean;
    function CashCorpactProcess(ACAID: Int64; out AMessage: string): Boolean;
    function StockCorpactProcess(ACAID: Int64; out AMessage: string): Boolean;
    procedure CorpactAlloc(ACAID: Int64; AACCID: Int64);
    function CorpactEnt(ACAID: Int64; out AMessage: string): Boolean;
    function GetVoucherNo(ATransDate: TDateTime; ASourceType: string; ASeqName: string): string;
    function UploadSungardAllTrade(AFileArray: TJSONArray; AFileName: string): Boolean;
    function UploadDHK(AFileArray: TJSONArray; AFileName: string): Boolean;
    function UploadDTE(AFileArray: TJSONArray; AFileName: string): Boolean;
    function UploadFeedBackBank(AFileArray: TJSONArray; AFileName: string; ABankName: string): Boolean;
    function GenerateDTFromIDXTradeAll(ATradeDate: TDateTime; AUser: string; out AMsg: string): Boolean;
    function GenerateDTFromIDXTradeSelected(ATradeID: string; ATradeDate: TDateTime; AUser: string): string;
    function SendIPOContractByMail(AllotmentID: Integer): string;
    function GetCCYRate(ATradeDate: TDateTime; ACCYCode: string): Double;
    procedure GetCurrentCcyRate(ACcyFrom: string; ACcyTo: string; out AValue: Double; out AInverseValue: Double);
    function UploadKSEIAccountData(AData: string): string;
    procedure CreateSIforRightExercise(ACAID: Int64; AEXERNO: string; ATradeDate: TDateTime);
    function ExerciseToFinance(ACAID: Int64; AEXERNO: string; ATradeDate: TDateTime; out AMessage: string): Boolean;
    function GenerateBankInstructionForExercise(ACAID: Int64; AExerNo: string; ATradeDate: TDateTime; out AMessage: string): Boolean;
    function GenerateBankInstructionForExerciseWarrant(ACAID: Int64; AExerNo: string; ATradeDate: TDateTime; out AMessage: string): Boolean;
    function GenerateBookInstructionForExercise(ACAID: Int64; AExerNo: string; ATradeDate: TDateTime; out AMessage: string): Boolean;
    procedure RegisterCallbackInfo(ClientID: string; CallbackID: string);
    function SungardAllTrade: string;
    function ConfirmIPOAllotment(AllotmentID: Integer): Boolean;
    function PostedFinanceIPOAllotment(AllotmentID: Integer): Boolean;
    function CreateVoucherIPOAllotment(AllotmentID: Integer): Boolean;
    function CancelIPOAllotment(AllotmentID: Integer): Boolean;
    function ConfirmIPOPooling(PoolingID: Integer): Boolean;
    function PostedFinanceIPOPooling(PoolingID: Integer): Boolean;
    function CreateVoucherIPOPooling(PoolingID: Integer): Boolean;
    function CancelIPOPooling(PoolingID: Integer): Boolean;
    function GenerateVoucherIPOAllotment(AIPOID: Integer; out AMsg: string): Boolean;
    function GenerateVoucherIPOPooling(AIPOID: Integer; out AMsg: string): Boolean;
    function EIPOApproved(ATransDate: TDateTime; out AMsg: string): Boolean;
    function EIPOCanceled(AIPOID: Int64; out AMsg: string): Boolean;
    function EIPOAllotment(ATransDate: TDateTime; out AMsg: string): Boolean;
    function EIPODistribution(ATransDate: TDateTime; out AMsg: string): Boolean;
    function EIPOAllotmentUpdate(ADate: TDateTime; AAccID: Int64; AStockID: Int64; AQty: Double; APrice: Double; AAmount: Double; out AMsg: string): Boolean;
    procedure GeneratePortfolioM2M(ATrdDate: TDateTime; ACCYCode: string; AMarketCode: string; AInstrumentGroupType: string);
    procedure PortofolioExecute(ATrdDate: TDateTime; ACCYCode: string; AMarketCode: string; AInstrumentGroupType: string);
    function CorpactDistributionProcess(ACAID: Int64; out AMessage: string): Boolean;
    procedure InterestDiscount(AInterestID: Int64; ADiscAmount: Double; ADiscDate: TDateTime);
    function GenerateInterest(APeriodID: Integer; AAccID: Integer; ACCYCode: string; out AMsg: string): Boolean;
    function GLTradePostingByJournalType(ATradeDate: TDateTime; AJournalType: string; out AMsg: string): Boolean;
    function PostingDebetCreditNote(ACDBCRID: Int64): string;
    function PostingStockMovement(ASMID: Integer; out AMsg: string): Boolean;
    function CreateAllReceiveCashVoucher(ADueDate: TDateTime; ASettleType: string; AAllSettleType: string; ABusCat: Int64; AAllBussCat: string; AVoucherType: string): string;
    function SettleOTCInstruction(ACustodyinstrID: string; AStockID: string; AStockType: string): string;
    function UploadHaircut(AFileArray: TJSONArray; AFileName: string): Boolean;
    function GetMaxClosePrice(ATransDate: TDateTime; ADay: Integer; AStockCode: string): Double;
    function MergeCustodyInstr(AMulty: string; AOldCustID: Int64; ANewCustID: Int64; AQty: Double; AAmount: Double; AExtRef: string; AOrigAmt: Double): string;
    function GenerateCustdInstrNo(ATransDate: TDateTime; AINSTRUCTION_MODE: string; ASeqName: string): string;
    function CreateBalanceFromSplit(AAccID: Int64; AValueDate: TDateTime; ACustody_InstrID: Int64; AExtRef: string; AStockCode: string; ACCYCode: string; AAmount: Double): string;
    function CreateSIFromSplit(AAccID: Int64; AValueDate: TDateTime; ACustody_InstrID: Int64; ACUSTODY_EXTREF: string; AStockCode: string; ABASE_AMT: Double; ACCYCode: string; AISMULTICCY: string; AFOREIGN_CCY: string; AFOREIGN_EXRATE: Double; AFOREIGN_SETTLEAMOUNT: Double; ASettleSide: string): string;
    function GenerateDistributionIPOFixAllotment(AIPOID: Int64; out AMsg: string): Boolean;
    function GenerateDistributionIPOPooling(AIPOID: Int64; out AMsg: string): Boolean;
    function ConfirmIPOPoolingDistribution(APoolingID: Integer): Boolean;
    function TenderOfferClose(ATOID: Int64): string;
    function TenderOfferReverse(ATOID: Int64): string;
    function LBProcess(ALBID: Int64): string;
    function LBSettle(ALBID: Int64): string;
    function LBReverse(ALBID: Int64): string;
    function LBChangeDueDate(ALBID: Int64; ADueDate: TDateTime): string;
    function CreateSubAccount(ACCID: Integer; ACCSUBTYPE: string; out AMsg: string): Boolean;
    function UploadSOPDepositQty(AFileArray: TJSONArray; AFileName: string; ASOPID: Integer): Boolean;
    function UploadSOPMember(AFileArray: TJSONArray; AFileName: string; ASOPID: Integer): Boolean;
    function StockSettleCancel(ACUSTODY_INSTRID: Int64): string;
    function StockMoveReverse(ASMID: Int64; out AMsg: string): Boolean;
    function CashVoucherReverse(AVoucherID: Int64; out AMessage: string): Boolean;
    function StockSettleReverse(ACustody_InstrID: Int64; AReverseDate: TDateTime): string;
    function UploadNewClient(AFileArray: TJSONArray; AFileName: string; out AOutFileArray: TJSONArray): Boolean;
    function UploadNewCOB(AFileArray: TJSONArray; AFileName: string): Boolean;
    function ApproveSuspendAccount(AccID: Integer; out AMessage: string): Boolean;
    function ApproveOpenSuspendAccount(AccID: Integer; out AMessage: string): Boolean;
    function GenerateBankMutation(ARekonDate: TDateTime; AUserID: string): string;
    procedure AutodepositBankrekon(ARekonDate: TDateTime; AAccID: Int64; AAccBankID: Int64; ACCY: string; AAMount: Double);
    function AddCustodianInstruction(ALinkID: Int64; ALinkCode: string; ALinkType: string; AAccID: Int64; AAccNo: string; AAccName: string; ATrxDate: TDateTime; AKSEIAcc: string; ACBCode: string; AStockID: Int64; AStockCode: string; AQty: Double; ARemark: string; APurpose: string; ATradeReff: string; ASettleReason: string; ASettle_Side: string): string;
    function GenerateOTCNonExchange(ADataID: WideString; ADW: string): string;
    function SettleStockProcess(ADueDate: TDateTime): string;
    function CashVoucherAllPost(AVoucherDate: TDateTime; ASettleType: string; AAllSettleType: string; ABusCat: Int64; AAllBusType: string; AVoucherType: string; ASpecDate: string; AUSERID: string): string;
    function BankReconOne(AReconDate: TDateTime; AMutationDate: TDateTime; ATrxType: string; AData: string): string;
    function BankReconAll(AReconDate: TDateTime; AMutationDate: TDateTime; AData: WideString): string;
    function SOPStockMoveAdminCheck(ACCSOPID: Integer; out AMsg: string): Boolean;
    function SOPStockMoveSettle(ACCSOPID: Integer; out AMsg: string): Boolean;
    function UploadStockDeposit(AFileArray: TJSONArray; AFileName: string): Boolean;
    function UploadStockWithdraw(AFileArray: TJSONArray; AFileName: string): Boolean;
    function CreateAllCashVoucher_KPEI(ADueDate: TDateTime; out AMsg: string): Boolean;
    function CustodianToMerger(ACustodianNo: WideString): string;
    function BatchProcessing(ABatchID: Integer; AParamData: WideString; out AMsg: string): string;
    function BatchNextTradingDay(ATradeDate: TDateTime; AUSERID: string): string;
    function GenerateARAP_SetOff(ADueDate: TDateTime; AUSERID: string): string;
    function GenerateRevaluationCurrency(ATransDate: TDateTime): string;
    function GenerateCustodiInstruction(ADueDate: TDateTime; ASINo: Int64; AProcessMode: string; out AMsg: string): Boolean;
    procedure IntrstDiscount(APeriodID: Int64; AAccID: Int64; ADiscountAmt: Double);
    procedure InterestWave(APeriodID: Int64; AIntrNo: WideString);
    function CashReconciliationCancel(ARekonDate: TDateTime; ATRType: string; ARefID: Int64): string;
    function CashWithdrawReverse(ACWID: Int64; out AMessage: string): Boolean;
    function CashWithdrawCancel(ACWID: Int64; out AMessage: string): Boolean;
    function CashWithdrawApproved(ACWID: Int64; out AMessage: string): Boolean;
    function CashWithdrawPosting(ACWID: Int64; out AMessage: string): Boolean;
    function OTCForSplit(ACustInstrID: Int64; AStringData: string): string;
    function OTCForUpdate(ACustInstrID: Int64; AQty: Double; AOriginalAmt: Double; ACcy: string; ASettleAmount: Double; ASaldo: Double; ASaldoType: string; AIsMultyCcy: string; AForeignCcyCode: string; AForeignExrate: Double; AForeignSettleAmt: Double; AInstructionType: string; ACounterAcc: string): string;
    function ExerciseVCAProcess(ACAID: Int64; AExerNo: WideString; ATrdDate: TDateTime; out AMsg: string): Boolean;
    function ExercisesDistributionProcess(ACAID: Int64; ExerID: Int64; out AMsg: string): Boolean;
    function WarrantDistributionProcess(ACAID: Int64; ExerID: Int64; out AMsg: string): Boolean;
    function CorpactHMETDProcess(AExerID: Int64; out AMsg: string): Boolean;
    function CorpactHMETDProcessCancel(AExerID: Int64; ARejectReason: string; out AMsg: string): Boolean;
    function CorpactHMETDCancelProcess(AExerID: Int64; out AMsg: string): Boolean;
    function CorpactReversed(ACAID: Int64; AReverseReason: string; out AMsg: string): Boolean;
    function CorpactCancel(ACAID: Int64; out AMsg: string): Boolean;
    function ApproveRequest(AModule: string; AForm: string; AKey: string; AState: string; ANotes: string; AXMLData: string; out AMsg: string): Boolean;
    function ChangeRequest(AModule: string; AForm: string; AKey: string; ANotes: string; AXMLData: string; AValidDate: TDateTime; out AMsg: string): Boolean;
    function ApproveModule(AModule: string; AKey: string; AState: string; ANotes: string; out AMsg: string): Boolean;
    function ApproveChanges(AModule: string; AKey: string; AState: string; ANotes: string; AValidDate: TDateTime; out AMsg: string): Boolean;
    function CreateDataActivity(AFlowID: Integer; ADataID: Int64; out AMessage: string): Boolean;
    function FinishDataActivity(AFlowID: Integer; ADataID: Int64; out AMessage: string): Boolean;
    function UpdateDataActivityStatusBack(ADataID: Int64; AActivityID: Integer; ANotes: string; out AMessage: string): Boolean;
    function UpdateDataActivityStatusDone(ADataID: Int64; AActivityID: Integer; ANotes: string; out AMessage: string): Boolean;
    function UpdateDataActivityStatusCancel(ADataID: Int64; AActivityID: Integer; ANotes: string; out AMessage: string): Boolean;
    function UpdateDataActivityStatusPrev(ADataID: Int64; AActivityID: Integer; ANotes: string; out AMessage: string): Boolean;
    function UpdateDataActivityStatusDoneBySystem(ADataID: Int64; AActivityID: Integer; ANotes: string; out AMessage: string): Boolean;
    function AcknowledgeDataActivity(ADataID: Int64; AActivityID: Integer; out AMessage: string): Boolean;
    function OpenAcknowledgeDataActivity(ADataID: Int64; AActivityID: Integer; out AMessage: string): Boolean;
    function CreateAllPaymentVoucher(ADueDate: TDateTime; ASettleType: string; APRDCode: string; out AMsg: string): Boolean;
    function CreatePaymentVoucher(AAccID: Integer; ASettleCCY: string; ADueDate: TDateTime; out AMsg: string): Boolean;
    function CreateReceiveVoucher(AAccID: Integer; ASettleCCY: string; ADueDate: TDateTime; out AMsg: string): Boolean;
    function CreateAutoReceiveVoucher(ADueDate: TDateTime; AAutoPosting: string; ASettleType: string; APRDCode: string; out AMsg: string): Boolean;
    function CashVoucher_Posting(ATrxSelect: string; AVoucherID: Int64; AVoucherDate: TDateTime; ASettleType: string; AVoucherType: string; out AMsg: string): Boolean;
    function CreateAllDevidenCashVoucher(ADueDate: TDateTime; out Amsg: string): Boolean;
    function RollOverProcess(ADueDate: TDateTime; ASettleType: string; APRDCode: string; out Amsg: string): Boolean;
    function FullFlowProcess(AACCID: Int64; AVoucherID: Int64; out AMsg: string): Boolean;
    function AllPaymentPosting(ADueDate: TDateTime; ASettleType: string; APRDCode: string; out Amsg: string): Boolean;
    function PostingRepo(ACONRID: Int64; out AMessage: string): Boolean;
    function CloseContractRepo(ACONRID: Int64; out AMessage: string): Boolean;
    function SettleContractRepo(ACONRID: Int64; out AMessage: string): Boolean;
    function PostingChangeRepoCollateral(ACCOLID: Int64; out AMessage: string): Boolean;
    function GenerateRepoInterest(ACONRID: Int64; out AMessage: string): Boolean;
    function RepoStockMovement(ACONRID: Int64; out AMessage: string): Boolean;
    function CreateREPOPaymentVoucher(ACONRID: Int64; out AMessage: string): Boolean;
    function PostingRenewalRepo(ACONRID: Int64; out AMessage: string): Boolean;
    function SettleRenewalRepo(ACONRID: Int64; out AMessage: string): Boolean;
    procedure RunSPInsertToSource(RptType: string; ADate: TDateTime);
    procedure RunSPGenerateReport(ADate: TDateTime; RptGrpType: string);
    procedure RunSPCreateTextReport(RptType: string);
    function EmptyTable(ATableName: string; out AMsg: string): Boolean;
    function GenerateMKBD: string;
    function GenerateDHKInstruction(ATrdDate: TDateTime; out AMsg: string): string;
    function DHKReconciliation(ATrdDate: TDateTime; out AMsg: string): string;
    procedure DeleteDHKByDate(ADueDate: TDateTime);
    function GenerateSetOffSelected(AAccID: Int64; ACOID: string; ACCY: string; AExRate: Double; ATrdDate: TDateTime; out AMsg: string): Boolean;
    function GenerateSetOffReverse(AVoucherID: Int64; out AMsg: string): Boolean;
    function CreditBalanceProcess(AReportDate: TDateTime; AAccID: Int64; AAccSOPID: Int64; ACCY: string; AAmount: Double; ADesc: string; out AMsg: string): string;
    function CBestBalanceProcess(AReportDate: TDateTime; AAccID: Int64; AAccSOPID: Int64; ACCY: string; AAmount: Double; ADesc: string; out AMsg: string): string;
    function DistributionIPOFixAllotment(AIPOID: Int64; out AMsg: string): Boolean;
    function DistributionIPOPooling(AIPOID: Int64; out AMsg: string): Boolean;
    function PostingIPO(AIPOID: Integer; out AMsg: string): Boolean;
    function PostingIPOAllotment(AAllotmentID: Int64; out AMsg: string): Boolean;
    function PostingIPOPolling(APoolingID: Int64; out AMsg: string): Boolean;
    function RegisterIPOStock(AIPOID: Int64; out AMsg: string): Boolean;
    function GeneratePaymentIPOAllotment(AAllotmentID: Int64; out AMsg: string): Boolean;
    function GeneratePaymentIPOPolling(APoolingID: Int64; out AMsg: string): Boolean;
    function CustodyExternalRef(AInstrMode: string; ATrdDate: TDateTime; ADueDate: TDateTime; ASeqName: string; AReffNo: string; AStockCode: string): string;
    function AllPostingCashReceive(ADueDate: TDateTime; ASettleType: string; APrdCode: string; out AMsg: string): Boolean;
    function SetoffSettlementMarginProcess(ADueDate: TDateTime; ASettleType: string; APrdCode: string; out AMsg: string): Boolean;
    function CreateBankPaymentReceive(AVOUCHERDATE: TDateTime; AVOUCHERTYPE: string; AAUTOPOSTING: string; AACCID: Int64; ABROKER_BANKID: Int64; ACUST_BANKID: Int64; AVOUCHER_DESC: string; ACCYCODE: string; AEXRATE: Double; AAMOUNT: Double; out AMsg: string): Boolean;
    function StartEndDayProcess: Boolean;
    function FinishEndDayProcess: Boolean;
    function SplitReverseProcess(ACAID: Int64; out AMsg: string): Boolean;
    function CancelCashVoucher(VoucherID: Int64; out AMsg: string): Boolean;
    function SettleCashVoucher(VoucherID: Int64; out AMsg: string): Boolean;
    function ReverseCashVoucher(VoucherID: Int64; out AMsg: string): Boolean;
    function UpdateCashOnHold(ACCID: Integer; ACcy: string; AHoldAmount: Double; out AMsg: string): Boolean;
    function CreateAutoRollOverCashVoucher(ACCID: Integer; ACCY: string; out AMsg: string): Boolean;
    function GenerateCOLWCOLDS(ATrdDate: TDateTime; out AMsg: string): Boolean;
    function CreateSelectedCashVoucher(AAccID: Integer; ADueDate: TDateTime; out Amsg: string): Boolean;
    function CreateSelectedReceiveCashVoucher(AAccID: Integer; ADueDate: TDateTime; out Amsg: string): Boolean;
    function CashMutationPosting(ACMID: Int64; out AMsg: string): Boolean;
    function CashMutationReverse(ACMID: Int64; out AMsg: string): Boolean;
    function CashMutationCancel(ACMID: Int64; out AMsg: string): Boolean;
    function ExecQry(AQuery: string): Boolean;
    function PostCashDepRDN(ABIID: Int64; out AMsg: string): Boolean;
    function CreateMarginNotification(ACreateBy: string; out AMessage: string): Boolean;
    procedure MarginMCallDay;
    function ExerciseRightProcess(ACAID: Int64; AExerNo: WideString; ATrdDate: TDateTime; out AMsg: string): Boolean;
    function ExerciseWarrantProcess(ACAID: Int64; AExerNo: WideString; ATrdDate: TDateTime; out AMsg: string): Boolean;
    function StockSettleVoucherPosting(ASSID: Int64; out AMsg: string): Boolean;
    function StockSettleVoucherCancel(ASSID: Int64; out AMsg: string): Boolean;
    function StockSettleVoucherReverse(ASSID: Int64; out AMsg: string): Boolean;
    function GenerateCustodyInstruction(AID: Int64; AType: string; out AMsg: string): Boolean;
    function CreateStockVoucher(AAccID: Int64; AClientAccID: Int64; AStockID: Int64; ADueDate: TDateTime; out AMsg: string): Boolean;
    function UpdateStatusCustodyInst(AStat: string; ACustodyID: string): string;
    function UpdateIPOAllotmentGroup(AGroupID: Int64; ANETFEE: Double; AVAT: Double; AWHT: Double; AIPOID: string): string;
    function UpdateIPOPoolingGroup(AGroupID: Int64; ANETFEE: Double; AVAT: Double; AWHT: Double; AIPOID: string): string;
    function CreateJournalRecurring(AJournalID: Int64; AStartDate: TDateTime; AEndDate: TDateTime; AIteration: Int64; AEndless: Boolean; APeriod: string; out AMessage: string): Boolean;
    function AllotmentReverse(AAllotmentID: Int64; out AMsg: string): Boolean;
    function AllotmentAmend(AAccID: Int64; AAllotmentID: Int64; out AMsg: string): Boolean;
    function PoolingReverse(APoolingID: Int64; out AMsg: string): Boolean;
    function PoolingAmend(AAccID: Int64; APoolingID: Int64; out AMsg: string): Boolean;
    function GetAvgPriceDec(AAccID: Integer): Integer;
    function GenerateBankInstructionFile(BIID: Int64; ABankRef: string; out AMsg: string): Boolean;
    function CheckAccountChargeUsed(AccID: Integer; AMarket: string; AChargeCode: string): string;
    function CashDebetCreditNotesPosting(ADCID: Integer; out AMsg: string): Boolean;
    function CashDebetCreditNotesReverse(ADCID: Integer; out AMsg: string): Boolean;
    function CashDebetCreditNotesCancel(ADCID: Integer; out AMsg: string): Boolean;
    procedure GenerateVD55Monthly(AMonth: string; AYear: string);
    function CreateSplitStockVoucher(ASplitID: Int64; out AMsg: string): Boolean;
    function CreateCashVoucherFromStockVoucher(ASSID: Int64; out AMsg: string): Boolean;
    function GenerateMarginCall: string;
    function ClearIDXAllTrade(ATrdDate: TDateTime; out AMsg: string): Boolean;
    function EmptyDTEByDate(ATrdDate: TDateTime; out AMsg: string): Boolean;
    function CancelCrosstom(ACrosstomID: Int64; out AMsg: string): Boolean;
    function SendFormBankRDNByEMail(AOAID: Integer; out AMsg: string): Boolean;
    procedure UpdateReqKSEI(AOAID: Integer; ANewKSEINo: string);
    procedure UpdateKSEINo(ASIDNo: string; AKSEIAccNo: string);
    procedure WebOARejected(AOAID: Integer);
    procedure UpdateRDN(AKSEIAccNo: string; ABankCode: string; ABankAccNo: string; ABankAccName: string; ABankBranch: string);
    function GetDukcapilData(nik: string; out nomorkecamatan: string; out nomorpropinsi: string; out nomorkk: string; out namalengkap: string; out kabupaten: string; out agama: string; out norw: string; out kecamatan: string; out pekerjaan: string; out nort: string; out nokelurahan: string; out alamat: string; out tempatlahir: string; out pendidikanterakhir: string; out status: string; out ibukandung: string; out propinsi: string; out nokabupaten: string; out kelurahan: string; out jeniskelamin: string; out tanggallahir: string; out Msg: string): Boolean;
    function RunningFreeSQLScript(ASQLScript: string): Boolean;
    function UpdateAccountBank(AInvestName: string; ABankAccNo: string; ASIDNo: string): Boolean;
    function RejectDataFromOAWeb(AOAID: Integer; AReason: string; out AMsg: string): Boolean;
    function IncompleteOAWeb(AOAID: Integer; AReason: string; out AMsg: string): Boolean;
    function CreateStockSettleBroker(AAccID: Int64; AClientAccID: Int64; AStockID: Integer; ADuedate: TDateTime; AMarketCode: string; AAllMarket: string; AStockGroupType: string; out AMsg: string): Boolean;
    function CreateStockSettleClient(AAccID: Int64; AStockID: Integer; ADuedate: TDateTime; AMarketCode: string; AAllMarket: string; AStockGroupType: string; out AMsg: string): Boolean;
    function GeneratePortfolioMTM(ATransDate: TDateTime; AInstrumentType: string; out AMsg: string): Boolean;
    function ReversePortfolioRevaluation(APMID: Int64; out AMsg: string): Boolean;
    function NextOfYearProcess(AEndOfYear: string; ANextOfYear: string; out AMsg: string): Boolean;
    function InterestReserved(APeriodID: Int64; AAccID: Int64; ACCYCode: string; out AMsg: string): Boolean;
    function DeleteDealTicketAlloc(ADealTicketID: Int64; out AMsg: string): Boolean;
    function UnpostingJournal(AJRNID: Int64; out AMsg: string): Boolean;
    function SecuritiesLedgerJournal(ALedgerID: Int64; out AMsg: string): Boolean;
    function FundLedgerJournal(ALedgerID: Int64; out AMsg: string): Boolean;
    function DeleteStockReconByDate(ATransDate: TDateTime): Boolean;
    function CheckChannelOLT(AAccID: Int64): Boolean;
    procedure InitialAccountOLT(AAccID: Int64);
    function SynchronizeClientApplication(V1: Word; V2: Word; V3: Word; V4: Word; out AUpdateFileArray: TJSONArray): Boolean;
    function CheckClientApplicationVersion(V1: Word; V2: Word; V3: Word; V4: Word; out V1Server: Word; out V2Server: Word; out V3Server: Word; out V4Server: Word): Boolean;
    function SendNotificationAccountDormanByMail(AADID: Integer): Boolean;
    function UpdateAccountDorman(AStatus: string; ASUBREK001: string; ASUBREK004: string; AAccID: Integer): string;
    function GetAvgPrice(AAccNo: string; AStockCode: string): Double;
    function CorpactEntitlementPosting(ACAID: Int64; AModui: string; out AMsg: string): Boolean;
    function CreateAllCashSettlementVoucher(AAccID: Int64; ACcy: string; out AMsg: string): Boolean;
    function GetBankRefference: string;
    procedure UpdateBankReff(AInstruction: string; ABIID: Integer);
    function SendClosedContractByMail: string;
    function ApproveCashWdr(AUserID: string; ACWID: Integer): string;
    function PararelCloseContractByDate(AContractDate: TDateTime): string;
    function CloseContractByDate(AContractDate: TDateTime; out AMsg: string): Boolean;
    function StockSettlementPostByDate(ASSDate: TDateTime; out AMsg: string): Boolean;
    function GetHighPrice(AStockID: Integer; AMarketCode: string; ATrdDate: TDateTime; ADueDate: TDateTime): Double;
    function CreateStockSettleVoucherClientByDate(ADueDate: TDateTime; out AMsg: string): Boolean;
    function CreateStockSettleVoucherBrokerByDate(ADueDate: TDateTime; out AMsg: string): Boolean;
    function CreateStockSettleVoucherByDate(ADueDate: TDateTime; out AMsg: string): Boolean;
    function PararelCreateCashSettementVoucher(ADueDate: TDateTime; ACashKeep: string; ANotDueDate: string; out AMsg: string): Boolean;
    function PararelPostingCashSettementVoucher(AVoucherDate: TDateTime; ASettleType: string; out AMsg: string): Boolean;
    function PararelCloseDealTicket(ATradeDate: TDateTime; AMarketCode: string; out AMsg: string): Boolean;
    function CancelAllDealTicket(ATradeDate: TDateTime; out AMsg: string): Boolean;
    function ReCalculateMinimumFee(AContractDate: TDateTime; out AMsg: string): Boolean;
    function DeleteAccountBank(AAccBankID: Integer; out AMsg: string): Boolean;
    function GetMaxPage(AQuery: string): Integer;
    procedure CopyStockDepFromUpload;
    procedure CopyStockWdrFromUpload;
    procedure CopyDHKFromUpload;
    procedure CopyCashDepFromUpload;
    procedure CopyCashWdrFromUpload;
    procedure CopyDataAccountFromUpload;
    function UploadStringListKSEI(AStringList: string; AFileName: string): string;
    function UploadStockRecon(ATransDate: TDateTime; AStringList: string; AFileName: string): string;
    function GetAccountListTotalPages(AAccountStatus: string; ASearchBy: string; AAccCode: string; AAccName: string; AEntCode: string; AEntName: string): Integer;
    function GetEntityListTotalPages(AAccStatus: string; AEnttCode: string; AEnttName: string; ACustType: string): Integer;
    function RecalculateNewRound(ADealtiket: string; ARoundDecimal: Integer; out AMsg: string): Boolean;
    function GenerateSelectedContractFile(AConID: Integer; AFileName: string; out AMsg: string): Boolean;
    function GenerateStamping(AConID: Int64; out AMsg: string): Boolean;
    function GetFileStamp: string;
    function SplitDealticketByExecPrice(ADealID: Int64; out AMsg: string): Boolean;
    function AccountCommissionIDByAccNo(AAccNo: string): Integer;
    function GetDataForChangePrice(ADealID: Int64; out AMsg: string): Boolean;
    function ChangeBoardFacilitation(AFacilitationID: Int64; ASeqID: Int64; ABoardID: Integer; ACPAccID: Integer; out AMsg: string): Boolean;
    function SplitDealTicketByQty(ADealTicketID: Int64; AQty: string; out AMsg: string): Boolean;
    function GenerateContractByType(AReportFile: string; AConID: Int64; AReportID: Integer; out AMsg: string): Boolean;
    function EditAmountOmgeoContract(ADealTicketID: Int64; ANetAmmount: Double; out AMsg: string): Boolean;
    function ContractEditAmount(ADealTicketID: Int64; ABrokerFee: Double; AVAT: Double; ALevy: Double; AVAT_Levy: Double; AKPEI: Double; ASalesTax: Double; AWHT: Double; ANetAmount: Double; out AMsg: string): Boolean;
    function ChangeChargesAmount(AConID: Int64; ASeqID: Int64; ABrokerFee: Double; AVat: Double; ALevy: Double; AVatLevy: Double; AKPEI: Double; ASalesTax: Double; AWHT: Double; AWapu: Double; out AMsg: string): Boolean;
    function ChangeNetProcedByPrice(AConID: Int64; ASeqID: Integer; AExecID: Integer; AChangeAmt: Double; out AMsg: string): Boolean;
    function UpdateWithdrawStockPosition(AOldQty: Double; ANewQty: Double; AValueDate: TDateTime; AAccID: Integer; AStockID: Integer): Boolean;
    function GenerateSLIKData(AYear: Integer; AMonth: Integer; out AMsg: string): Boolean;
    function GLInterfacePost(out AMsg: string): Boolean;
    function EODProcess(ANextDayProcess: TDateTime; out AMsg: string): Boolean;
    function sInvestAutoSplit(ATradeDate: TDateTime; out AMsg: string): Boolean;
    function CashDepositPostAll(CashDepDate: TDateTime; out AMessage: string): Boolean;
    function CashDepCancel(ACDID: Int64; out AMessage: string): Boolean;
    function CashDepPosting(ACDID: Int64; out AMessage: string): Boolean;
    function CashDepositReverse(ACDID: Int64; out AMessage: string): Boolean;
    function ChangeInterestRate(ACoID: Int64; AInterestCode: string; out AMsg: string): Boolean;
    function GeneratePrincipalizeInterest(ACoID: Int64; AAmount: Double; out AMsg: string; out AInterestCoID: Int64): Boolean;
    function GeneratePrincipalizePenalty(ACoID: Int64; AAmount: Double; out AMsg: string; out AInterestCoID: Int64): Boolean;
    function GenerateWaveInterest(ACoID: Int64; AAmount: Double; out AMsg: string; out AInterestCoID: Int64): Boolean;
    function GenerateWavePenalty(ACoID: Int64; AAmount: Double; out AMsg: string; out AInterestCoID: Int64): Boolean;
    function InvoiceInterestCancel(AInvoiceID: Int64; ACancelNotes: string; out AMsg: string): Boolean;
    function WaveInterestCancel(AWaveID: Int64; ACancelNotes: string; out AMsg: string): Boolean;
    function DailyInstructionUpdate(AInstructionID: string; out AMsg: string): Boolean;
    function DailyInstructionCancel(AInstructionID: string; ANotes: string; out AMsg: string): Boolean;
    function GenerateDailyCashInstruction(ASettleDate: TDateTime; out AMsg: string): Boolean;
    function CashMovementApproved(ACashMovementID: Int64; out AMsg: string): Boolean;
    function CashMovementPost(ACashMovementID: Int64; ASourceCashAmount: Double; ATargetCashAmount: Double; out AMsg: string): Boolean;
    function CashMovementReverse(ACashMovementID: Int64; out AMsg: string): Boolean;
    function CashMovementCancel(ACashMovementID: Int64; ANotes: string; out AMsg: string): Boolean;
    function AlternateCashSettlCancel(AAcsID: Int64; ANotes: string; out AMsg: string): Boolean;
    function AlternateCashSettlPost(AAcsID: Int64; out AMsg: string): Boolean;
    function AlternateCashSettlReverse(AAcsID: Int64; out AMsg: string): Boolean;
    function GetClosingPriceForACS(AStockCode: string; AValueDate: TDateTime): Double;
    function CorpactExerciseProcess(AExerID: Int64; out AMsg: string): Boolean;
    function CorpactExerciseDistribution(AExerID: Int64; out AMsg: string): Boolean;
    function CorpactExerciseCancel(AExerID: Int64; ANotes: string; out AMsg: string): Boolean;
    function CorpactExerciseReverse(AExerID: Int64; ANotes: string; out AMsg: string): Boolean;
    function GenerateDealticketFromVerdhanaRT(AOrderDate: TDateTime; out AMsg: string): Boolean;
    function GenerateAMLReport(AReportDate: TDateTime; out AMsg: string): Boolean;
    function GenerateEODSupport(AReportDate: TDateTime): string;
    function GetEODSupportFileList(AReportDate: string): string;
    function GetEODSupportFile(AReportDate: string; AFileName: string): TStream;
    function LoadEMaterailConfig(out server_port: Integer; out db_server: string; out db_port: Integer; out db_name: string; out db_schema: string; out db_user: string; out db_password: string; out db_poll_size: Integer; out base_backend: string; out base_fileupload: string; out base_stampv2: string; out base_stampservice: string; out login_path: string; out upload_path: string; out generate_sn_path: string; out stamp_path: string; out jenisdoc_path: string; out check_sn_path: string; out generate_qr_path: string; out saldo_pos_path: string; out saldo_pemungut_path: string; out update_stamp_path: string; out list_sn_path: string; out user_peruri: string; out password_peruri: string; out cache: Boolean; out base_path: string; out worker_count: Integer; out batch_size: Integer; out dispatcher_interval_ms: Integer): Boolean;
    function SaveEMaterailConfig(server_port: Integer; db_server: string; db_port: Integer; db_name: string; db_schema: string; db_user: string; db_password: string; db_poll_size: Integer; base_backend: string; base_fileupload: string; base_stampv2: string; base_stampservice: string; login_path: string; upload_path: string; generate_sn_path: string; stamp_path: string; jenisdoc_path: string; check_sn_path: string; generate_qr_path: string; saldo_pos_path: string; saldo_pemungut_path: string; update_stamp_path: string; list_sn_path: string; user_peruri: string; password_peruri: string; cache: Boolean; base_path: string; worker_count: Integer; batch_size: Integer; dispatcher_interval_ms: Integer): Boolean;
    function GenerateCheckReportEMaterai(AContractID: Int64; out AMsg: string): Boolean;
    function ClearVedhanaDataTradeOrder(AOrderDate: TDateTime; ATradeOrder: string; out AMsg: string): Boolean;
    function RDNSynchronize(AAccID: Int64; ADC: string; AValueDate: TDateTime; AAmount: Double; ADesc: string; out AMsg: string): Boolean;
    function StockWithdrawApprove(AStockWdrID: Int64; out AMsg: string): Boolean;
    function StockWithdrawPosting(AStockWdrID: Int64; out AMsg: string): Boolean;
    function StockWithdrawCancel(AStockWdrID: Int64; ACancelNotes: string; out AMsg: string): Boolean;
    function StockWithdrawReverse(AStockWdrID: Int64; out AMsg: string): Boolean;
    function DepositoApprove(ADepositoID: Int64; out AMsg: string): Boolean;
    function DepositoCancel(ADepositoID: Int64; ACancelNotes: string; out AMsg: string): Boolean;
    function DepositoClose(ADepositoID: Int64; out AMsg: string): Boolean;
    function GenerateUpdateDataExecutionFromDTE(ADTEDate: TDateTime; out AMsg: string): Boolean;
    function ChangeCommission(AOrdDate: TDateTime; AConID: Int64; ADealTicketID: Int64; out AMsg: string): Boolean;
    function GenerateIDXMonthlyTransReport(APeriod: string; out AMsg: string): Boolean;
    function StockMovementApprove(ASMID: Integer): Boolean;
    function StockMovementCancel(ASMID: Integer): Boolean;
    procedure GetPDFFiles(FolderPath: string; var PDFFiles: TStringList);
    function DeleteAllPDFFile(out AMsg: string): Boolean;
    function MoveAllPDFFile(out AMsg: string): Boolean;
    function GetStampedContrac(AContractID: Int64; out AMsg: string): Boolean;
    function ResetReconActByDate(AReconDate: TDateTime): Boolean;
    function ReksadanaDepositoAppove(ADepoitoID: Integer; out AMsg: string): Boolean;
    function ReksadanaDepositoCancel(ADepoitoID: Integer; ANotes: string; out AMsg: string): Boolean;
    function ReksadanaDepositoClose(ADepoitoID: Integer; out AMsg: string): Boolean;
    function SetEODSupportPdfStatus(AReportDate: string; ANo: Integer; AStatus: string; AMsg: string): string;
    function FileNameUploaded(AFileName: string; out AMsg: string): Boolean;
  end;

implementation

procedure TSessionServerModuleClient.DSServerModuleCreate(Sender: TObject);
begin
  if FDSServerModuleCreateCommand = nil then
  begin
    FDSServerModuleCreateCommand := FDBXConnection.CreateCommand;
    FDSServerModuleCreateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDSServerModuleCreateCommand.Text := 'TSessionServerModule.DSServerModuleCreate';
    FDSServerModuleCreateCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDSServerModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDSServerModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FDSServerModuleCreateCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.DSServerModuleDestroy(Sender: TObject);
begin
  if FDSServerModuleDestroyCommand = nil then
  begin
    FDSServerModuleDestroyCommand := FDBXConnection.CreateCommand;
    FDSServerModuleDestroyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDSServerModuleDestroyCommand.Text := 'TSessionServerModule.DSServerModuleDestroy';
    FDSServerModuleDestroyCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDSServerModuleDestroyCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDSServerModuleDestroyCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleDestroyCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FDSServerModuleDestroyCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.dspMainTableListGetData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FdspMainTableListGetDataCommand = nil then
  begin
    FdspMainTableListGetDataCommand := FDBXConnection.CreateCommand;
    FdspMainTableListGetDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FdspMainTableListGetDataCommand.Text := 'TSessionServerModule.dspMainTableListGetData';
    FdspMainTableListGetDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FdspMainTableListGetDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FdspMainTableListGetDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FdspMainTableListGetDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  if not Assigned(DataSet) then
    FdspMainTableListGetDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FdspMainTableListGetDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FdspMainTableListGetDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FdspMainTableListGetDataCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.dspUpdateTableListGetData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FdspUpdateTableListGetDataCommand = nil then
  begin
    FdspUpdateTableListGetDataCommand := FDBXConnection.CreateCommand;
    FdspUpdateTableListGetDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FdspUpdateTableListGetDataCommand.Text := 'TSessionServerModule.dspUpdateTableListGetData';
    FdspUpdateTableListGetDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FdspUpdateTableListGetDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FdspUpdateTableListGetDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FdspUpdateTableListGetDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  if not Assigned(DataSet) then
    FdspUpdateTableListGetDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FdspUpdateTableListGetDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FdspUpdateTableListGetDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FdspUpdateTableListGetDataCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CommandUpdSQLGetSequence(ASeqName: string; var ASeqNumber: Int64);
begin
  if FCommandUpdSQLGetSequenceCommand = nil then
  begin
    FCommandUpdSQLGetSequenceCommand := FDBXConnection.CreateCommand;
    FCommandUpdSQLGetSequenceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCommandUpdSQLGetSequenceCommand.Text := 'TSessionServerModule.CommandUpdSQLGetSequence';
    FCommandUpdSQLGetSequenceCommand.Prepare;
  end;
  FCommandUpdSQLGetSequenceCommand.Parameters[0].Value.SetWideString(ASeqName);
  FCommandUpdSQLGetSequenceCommand.Parameters[1].Value.SetInt64(ASeqNumber);
  FCommandUpdSQLGetSequenceCommand.ExecuteUpdate;
  ASeqNumber := FCommandUpdSQLGetSequenceCommand.Parameters[1].Value.GetInt64;
end;

procedure TSessionServerModuleClient.dspLogTableListGetData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FdspLogTableListGetDataCommand = nil then
  begin
    FdspLogTableListGetDataCommand := FDBXConnection.CreateCommand;
    FdspLogTableListGetDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FdspLogTableListGetDataCommand.Text := 'TSessionServerModule.dspLogTableListGetData';
    FdspLogTableListGetDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FdspLogTableListGetDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FdspLogTableListGetDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FdspLogTableListGetDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  if not Assigned(DataSet) then
    FdspLogTableListGetDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FdspLogTableListGetDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FdspLogTableListGetDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FdspLogTableListGetDataCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.cnnMainAfterConnect(Sender: TObject);
begin
  if FcnnMainAfterConnectCommand = nil then
  begin
    FcnnMainAfterConnectCommand := FDBXConnection.CreateCommand;
    FcnnMainAfterConnectCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FcnnMainAfterConnectCommand.Text := 'TSessionServerModule.cnnMainAfterConnect';
    FcnnMainAfterConnectCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FcnnMainAfterConnectCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FcnnMainAfterConnectCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FcnnMainAfterConnectCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FcnnMainAfterConnectCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.dspUsersGetData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FdspUsersGetDataCommand = nil then
  begin
    FdspUsersGetDataCommand := FDBXConnection.CreateCommand;
    FdspUsersGetDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FdspUsersGetDataCommand.Text := 'TSessionServerModule.dspUsersGetData';
    FdspUsersGetDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FdspUsersGetDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FdspUsersGetDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FdspUsersGetDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  if not Assigned(DataSet) then
    FdspUsersGetDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FdspUsersGetDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FdspUsersGetDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FdspUsersGetDataCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.dspUsersGetDataSetProperties(Sender: TObject; DataSet: TDataSet; out Properties: OleVariant);
begin
  if FdspUsersGetDataSetPropertiesCommand = nil then
  begin
    FdspUsersGetDataSetPropertiesCommand := FDBXConnection.CreateCommand;
    FdspUsersGetDataSetPropertiesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FdspUsersGetDataSetPropertiesCommand.Text := 'TSessionServerModule.dspUsersGetDataSetProperties';
    FdspUsersGetDataSetPropertiesCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FdspUsersGetDataSetPropertiesCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FdspUsersGetDataSetPropertiesCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FdspUsersGetDataSetPropertiesCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FdspUsersGetDataSetPropertiesCommand.Parameters[1].Value.SetDBXReader(TDBXDataSetReader.Create(DataSet, FInstanceOwner), True);
  FdspUsersGetDataSetPropertiesCommand.ExecuteUpdate;
  Properties := FdspUsersGetDataSetPropertiesCommand.Parameters[2].Value.AsVariant;
end;

procedure TSessionServerModuleClient.ApplicationEventsException(Sender: TObject; E: Exception);
begin
  if FApplicationEventsExceptionCommand = nil then
  begin
    FApplicationEventsExceptionCommand := FDBXConnection.CreateCommand;
    FApplicationEventsExceptionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FApplicationEventsExceptionCommand.Text := 'TSessionServerModule.ApplicationEventsException';
    FApplicationEventsExceptionCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FApplicationEventsExceptionCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FApplicationEventsExceptionCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FApplicationEventsExceptionCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  if not Assigned(E) then
    FApplicationEventsExceptionCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FApplicationEventsExceptionCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FApplicationEventsExceptionCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(E), True);
      if FInstanceOwner then
        E.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FApplicationEventsExceptionCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.dspDatasetInformationGetData(Sender: TObject; DataSet: TCustomClientDataSet);
begin
  if FdspDatasetInformationGetDataCommand = nil then
  begin
    FdspDatasetInformationGetDataCommand := FDBXConnection.CreateCommand;
    FdspDatasetInformationGetDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FdspDatasetInformationGetDataCommand.Text := 'TSessionServerModule.dspDatasetInformationGetData';
    FdspDatasetInformationGetDataCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FdspDatasetInformationGetDataCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FdspDatasetInformationGetDataCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FdspDatasetInformationGetDataCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  if not Assigned(DataSet) then
    FdspDatasetInformationGetDataCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FdspDatasetInformationGetDataCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FdspDatasetInformationGetDataCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(DataSet), True);
      if FInstanceOwner then
        DataSet.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FdspDatasetInformationGetDataCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.cnnMainError(Sender: TObject; E: EDAError; var Fail: Boolean);
begin
  if FcnnMainErrorCommand = nil then
  begin
    FcnnMainErrorCommand := FDBXConnection.CreateCommand;
    FcnnMainErrorCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FcnnMainErrorCommand.Text := 'TSessionServerModule.cnnMainError';
    FcnnMainErrorCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FcnnMainErrorCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FcnnMainErrorCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FcnnMainErrorCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  if not Assigned(E) then
    FcnnMainErrorCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FcnnMainErrorCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FcnnMainErrorCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(E), True);
      if FInstanceOwner then
        E.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FcnnMainErrorCommand.Parameters[2].Value.SetBoolean(Fail);
  FcnnMainErrorCommand.ExecuteUpdate;
  Fail := FcnnMainErrorCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.ParseDelimited(sl: TStrings; value: string; delimiter: string);
begin
  if FParseDelimitedCommand = nil then
  begin
    FParseDelimitedCommand := FDBXConnection.CreateCommand;
    FParseDelimitedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FParseDelimitedCommand.Text := 'TSessionServerModule.ParseDelimited';
    FParseDelimitedCommand.Prepare;
  end;
  if not Assigned(sl) then
    FParseDelimitedCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FParseDelimitedCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FParseDelimitedCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(sl), True);
      if FInstanceOwner then
        sl.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FParseDelimitedCommand.Parameters[1].Value.SetWideString(value);
  FParseDelimitedCommand.Parameters[2].Value.SetWideString(delimiter);
  FParseDelimitedCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CancelSeq(ASeqName: string; ASeqValue: Int64);
begin
  if FCancelSeqCommand = nil then
  begin
    FCancelSeqCommand := FDBXConnection.CreateCommand;
    FCancelSeqCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCancelSeqCommand.Text := 'TSessionServerModule.CancelSeq';
    FCancelSeqCommand.Prepare;
  end;
  FCancelSeqCommand.Parameters[0].Value.SetWideString(ASeqName);
  FCancelSeqCommand.Parameters[1].Value.SetInt64(ASeqValue);
  FCancelSeqCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.UpdateSeq(ASeqName: string; ASeqValue: Int64);
begin
  if FUpdateSeqCommand = nil then
  begin
    FUpdateSeqCommand := FDBXConnection.CreateCommand;
    FUpdateSeqCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateSeqCommand.Text := 'TSessionServerModule.UpdateSeq';
    FUpdateSeqCommand.Prepare;
  end;
  FUpdateSeqCommand.Parameters[0].Value.SetWideString(ASeqName);
  FUpdateSeqCommand.Parameters[1].Value.SetInt64(ASeqValue);
  FUpdateSeqCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.StartTransaction;
begin
  if FStartTransactionCommand = nil then
  begin
    FStartTransactionCommand := FDBXConnection.CreateCommand;
    FStartTransactionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStartTransactionCommand.Text := 'TSessionServerModule.StartTransaction';
    FStartTransactionCommand.Prepare;
  end;
  FStartTransactionCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CommitTransaction;
begin
  if FCommitTransactionCommand = nil then
  begin
    FCommitTransactionCommand := FDBXConnection.CreateCommand;
    FCommitTransactionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCommitTransactionCommand.Text := 'TSessionServerModule.CommitTransaction';
    FCommitTransactionCommand.Prepare;
  end;
  FCommitTransactionCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.RollbackTransaction;
begin
  if FRollbackTransactionCommand = nil then
  begin
    FRollbackTransactionCommand := FDBXConnection.CreateCommand;
    FRollbackTransactionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRollbackTransactionCommand.Text := 'TSessionServerModule.RollbackTransaction';
    FRollbackTransactionCommand.Prepare;
  end;
  FRollbackTransactionCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CopyDataEntity(ACID: Integer);
begin
  if FCopyDataEntityCommand = nil then
  begin
    FCopyDataEntityCommand := FDBXConnection.CreateCommand;
    FCopyDataEntityCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCopyDataEntityCommand.Text := 'TSessionServerModule.CopyDataEntity';
    FCopyDataEntityCommand.Prepare;
  end;
  FCopyDataEntityCommand.Parameters[0].Value.SetInt32(ACID);
  FCopyDataEntityCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.GenerateClientStatement(ProcessID: Int64);
begin
  if FGenerateClientStatementCommand = nil then
  begin
    FGenerateClientStatementCommand := FDBXConnection.CreateCommand;
    FGenerateClientStatementCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateClientStatementCommand.Text := 'TSessionServerModule.GenerateClientStatement';
    FGenerateClientStatementCommand.Prepare;
  end;
  FGenerateClientStatementCommand.Parameters[0].Value.SetInt64(ProcessID);
  FGenerateClientStatementCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.PostCashDep(CashDepID: Int64; out AMessage: string): Boolean;
begin
  if FPostCashDepCommand = nil then
  begin
    FPostCashDepCommand := FDBXConnection.CreateCommand;
    FPostCashDepCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostCashDepCommand.Text := 'TSessionServerModule.PostCashDep';
    FPostCashDepCommand.Prepare;
  end;
  FPostCashDepCommand.Parameters[0].Value.SetInt64(CashDepID);
  FPostCashDepCommand.ExecuteUpdate;
  AMessage := FPostCashDepCommand.Parameters[1].Value.GetWideString;
  Result := FPostCashDepCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.PostAllCashDep(CashDepDate: Integer);
begin
  if FPostAllCashDepCommand = nil then
  begin
    FPostAllCashDepCommand := FDBXConnection.CreateCommand;
    FPostAllCashDepCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostAllCashDepCommand.Text := 'TSessionServerModule.PostAllCashDep';
    FPostAllCashDepCommand.Prepare;
  end;
  FPostAllCashDepCommand.Parameters[0].Value.SetInt32(CashDepDate);
  FPostAllCashDepCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.PostCashWdr(CashWdrID: Int64; out AMessage: string): Boolean;
begin
  if FPostCashWdrCommand = nil then
  begin
    FPostCashWdrCommand := FDBXConnection.CreateCommand;
    FPostCashWdrCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostCashWdrCommand.Text := 'TSessionServerModule.PostCashWdr';
    FPostCashWdrCommand.Prepare;
  end;
  FPostCashWdrCommand.Parameters[0].Value.SetInt64(CashWdrID);
  FPostCashWdrCommand.ExecuteUpdate;
  AMessage := FPostCashWdrCommand.Parameters[1].Value.GetWideString;
  Result := FPostCashWdrCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.PostAllCashWdr(CashWdrDate: Integer);
begin
  if FPostAllCashWdrCommand = nil then
  begin
    FPostAllCashWdrCommand := FDBXConnection.CreateCommand;
    FPostAllCashWdrCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostAllCashWdrCommand.Text := 'TSessionServerModule.PostAllCashWdr';
    FPostAllCashWdrCommand.Prepare;
  end;
  FPostAllCashWdrCommand.Parameters[0].Value.SetInt32(CashWdrDate);
  FPostAllCashWdrCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.PostStockDep(StockDepID: Int64; out AMessage: string): Boolean;
begin
  if FPostStockDepCommand = nil then
  begin
    FPostStockDepCommand := FDBXConnection.CreateCommand;
    FPostStockDepCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostStockDepCommand.Text := 'TSessionServerModule.PostStockDep';
    FPostStockDepCommand.Prepare;
  end;
  FPostStockDepCommand.Parameters[0].Value.SetInt64(StockDepID);
  FPostStockDepCommand.ExecuteUpdate;
  AMessage := FPostStockDepCommand.Parameters[1].Value.GetWideString;
  Result := FPostStockDepCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.PostAllStockDep(StockDepDate: Integer);
begin
  if FPostAllStockDepCommand = nil then
  begin
    FPostAllStockDepCommand := FDBXConnection.CreateCommand;
    FPostAllStockDepCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostAllStockDepCommand.Text := 'TSessionServerModule.PostAllStockDep';
    FPostAllStockDepCommand.Prepare;
  end;
  FPostAllStockDepCommand.Parameters[0].Value.SetInt32(StockDepDate);
  FPostAllStockDepCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.PostStockWdr(StockWdrID: Int64; out AMessage: string): Boolean;
begin
  if FPostStockWdrCommand = nil then
  begin
    FPostStockWdrCommand := FDBXConnection.CreateCommand;
    FPostStockWdrCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostStockWdrCommand.Text := 'TSessionServerModule.PostStockWdr';
    FPostStockWdrCommand.Prepare;
  end;
  FPostStockWdrCommand.Parameters[0].Value.SetInt64(StockWdrID);
  FPostStockWdrCommand.ExecuteUpdate;
  AMessage := FPostStockWdrCommand.Parameters[1].Value.GetWideString;
  Result := FPostStockWdrCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.PostAllStockWdr(StockWdrDate: Integer);
begin
  if FPostAllStockWdrCommand = nil then
  begin
    FPostAllStockWdrCommand := FDBXConnection.CreateCommand;
    FPostAllStockWdrCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostAllStockWdrCommand.Text := 'TSessionServerModule.PostAllStockWdr';
    FPostAllStockWdrCommand.Prepare;
  end;
  FPostAllStockWdrCommand.Parameters[0].Value.SetInt32(StockWdrDate);
  FPostAllStockWdrCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.PostCashMutation(CashMutID: Int64);
begin
  if FPostCashMutationCommand = nil then
  begin
    FPostCashMutationCommand := FDBXConnection.CreateCommand;
    FPostCashMutationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostCashMutationCommand.Text := 'TSessionServerModule.PostCashMutation';
    FPostCashMutationCommand.Prepare;
  end;
  FPostCashMutationCommand.Parameters[0].Value.SetInt64(CashMutID);
  FPostCashMutationCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.PostAllCashMutation(CashMutDate: Integer);
begin
  if FPostAllCashMutationCommand = nil then
  begin
    FPostAllCashMutationCommand := FDBXConnection.CreateCommand;
    FPostAllCashMutationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostAllCashMutationCommand.Text := 'TSessionServerModule.PostAllCashMutation';
    FPostAllCashMutationCommand.Prepare;
  end;
  FPostAllCashMutationCommand.Parameters[0].Value.SetInt32(CashMutDate);
  FPostAllCashMutationCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.PostCashVoucher(CashVoucherID: Int64);
begin
  if FPostCashVoucherCommand = nil then
  begin
    FPostCashVoucherCommand := FDBXConnection.CreateCommand;
    FPostCashVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostCashVoucherCommand.Text := 'TSessionServerModule.PostCashVoucher';
    FPostCashVoucherCommand.Prepare;
  end;
  FPostCashVoucherCommand.Parameters[0].Value.SetInt64(CashVoucherID);
  FPostCashVoucherCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.PostAllCashVoucher(CashVoucherDate: Integer);
begin
  if FPostAllCashVoucherCommand = nil then
  begin
    FPostAllCashVoucherCommand := FDBXConnection.CreateCommand;
    FPostAllCashVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostAllCashVoucherCommand.Text := 'TSessionServerModule.PostAllCashVoucher';
    FPostAllCashVoucherCommand.Prepare;
  end;
  FPostAllCashVoucherCommand.Parameters[0].Value.SetInt32(CashVoucherDate);
  FPostAllCashVoucherCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.PostGLTrade(GLTradeDate: Integer);
begin
  if FPostGLTradeCommand = nil then
  begin
    FPostGLTradeCommand := FDBXConnection.CreateCommand;
    FPostGLTradeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostGLTradeCommand.Text := 'TSessionServerModule.PostGLTrade';
    FPostGLTradeCommand.Prepare;
  end;
  FPostGLTradeCommand.Parameters[0].Value.SetInt32(GLTradeDate);
  FPostGLTradeCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.PostJournal(AJournalID: Int64; out AMsg: string): Boolean;
begin
  if FPostJournalCommand = nil then
  begin
    FPostJournalCommand := FDBXConnection.CreateCommand;
    FPostJournalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostJournalCommand.Text := 'TSessionServerModule.PostJournal';
    FPostJournalCommand.Prepare;
  end;
  FPostJournalCommand.Parameters[0].Value.SetInt64(AJournalID);
  FPostJournalCommand.ExecuteUpdate;
  AMsg := FPostJournalCommand.Parameters[1].Value.GetWideString;
  Result := FPostJournalCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ReverseJournal(AJournalID: Int64; out AMessage: string): Boolean;
begin
  if FReverseJournalCommand = nil then
  begin
    FReverseJournalCommand := FDBXConnection.CreateCommand;
    FReverseJournalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseJournalCommand.Text := 'TSessionServerModule.ReverseJournal';
    FReverseJournalCommand.Prepare;
  end;
  FReverseJournalCommand.Parameters[0].Value.SetInt64(AJournalID);
  FReverseJournalCommand.ExecuteUpdate;
  AMessage := FReverseJournalCommand.Parameters[1].Value.GetWideString;
  Result := FReverseJournalCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.CloseSession(ASessionList: string);
begin
  if FCloseSessionCommand = nil then
  begin
    FCloseSessionCommand := FDBXConnection.CreateCommand;
    FCloseSessionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCloseSessionCommand.Text := 'TSessionServerModule.CloseSession';
    FCloseSessionCommand.Prepare;
  end;
  FCloseSessionCommand.Parameters[0].Value.SetWideString(ASessionList);
  FCloseSessionCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.Login(var UserId: string; var Pwd: string; var Host: string; var Address: string; var AppVersion: string; var AppName: string): string;
begin
  if FLoginCommand = nil then
  begin
    FLoginCommand := FDBXConnection.CreateCommand;
    FLoginCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLoginCommand.Text := 'TSessionServerModule.Login';
    FLoginCommand.Prepare;
  end;
  FLoginCommand.Parameters[0].Value.SetWideString(UserId);
  FLoginCommand.Parameters[1].Value.SetWideString(Pwd);
  FLoginCommand.Parameters[2].Value.SetWideString(Host);
  FLoginCommand.Parameters[3].Value.SetWideString(Address);
  FLoginCommand.Parameters[4].Value.SetWideString(AppVersion);
  FLoginCommand.Parameters[5].Value.SetWideString(AppName);
  FLoginCommand.ExecuteUpdate;
  UserId := FLoginCommand.Parameters[0].Value.GetWideString;
  Pwd := FLoginCommand.Parameters[1].Value.GetWideString;
  Host := FLoginCommand.Parameters[2].Value.GetWideString;
  Address := FLoginCommand.Parameters[3].Value.GetWideString;
  AppVersion := FLoginCommand.Parameters[4].Value.GetWideString;
  AppName := FLoginCommand.Parameters[5].Value.GetWideString;
  Result := FLoginCommand.Parameters[6].Value.GetWideString;
end;

function TSessionServerModuleClient.Logout(UserId: string; Address: string): string;
begin
  if FLogoutCommand = nil then
  begin
    FLogoutCommand := FDBXConnection.CreateCommand;
    FLogoutCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLogoutCommand.Text := 'TSessionServerModule.Logout';
    FLogoutCommand.Prepare;
  end;
  FLogoutCommand.Parameters[0].Value.SetWideString(UserId);
  FLogoutCommand.Parameters[1].Value.SetWideString(Address);
  FLogoutCommand.ExecuteUpdate;
  Result := FLogoutCommand.Parameters[2].Value.GetWideString;
end;

function TSessionServerModuleClient.GetBrokerAccount: Integer;
begin
  if FGetBrokerAccountCommand = nil then
  begin
    FGetBrokerAccountCommand := FDBXConnection.CreateCommand;
    FGetBrokerAccountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetBrokerAccountCommand.Text := 'TSessionServerModule.GetBrokerAccount';
    FGetBrokerAccountCommand.Prepare;
  end;
  FGetBrokerAccountCommand.ExecuteUpdate;
  Result := FGetBrokerAccountCommand.Parameters[0].Value.GetInt32;
end;

function TSessionServerModuleClient.GetBrokerCode: string;
begin
  if FGetBrokerCodeCommand = nil then
  begin
    FGetBrokerCodeCommand := FDBXConnection.CreateCommand;
    FGetBrokerCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetBrokerCodeCommand.Text := 'TSessionServerModule.GetBrokerCode';
    FGetBrokerCodeCommand.Prepare;
  end;
  FGetBrokerCodeCommand.ExecuteUpdate;
  Result := FGetBrokerCodeCommand.Parameters[0].Value.GetWideString;
end;

function TSessionServerModuleClient.GetBrokerName: string;
begin
  if FGetBrokerNameCommand = nil then
  begin
    FGetBrokerNameCommand := FDBXConnection.CreateCommand;
    FGetBrokerNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetBrokerNameCommand.Text := 'TSessionServerModule.GetBrokerName';
    FGetBrokerNameCommand.Prepare;
  end;
  FGetBrokerNameCommand.ExecuteUpdate;
  Result := FGetBrokerNameCommand.Parameters[0].Value.GetWideString;
end;

function TSessionServerModuleClient.GetTransDate: TDateTime;
begin
  if FGetTransDateCommand = nil then
  begin
    FGetTransDateCommand := FDBXConnection.CreateCommand;
    FGetTransDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetTransDateCommand.Text := 'TSessionServerModule.GetTransDate';
    FGetTransDateCommand.Prepare;
  end;
  FGetTransDateCommand.ExecuteUpdate;
  Result := FGetTransDateCommand.Parameters[0].Value.AsDateTime;
end;

function TSessionServerModuleClient.GetLocalCCY: string;
begin
  if FGetLocalCCYCommand = nil then
  begin
    FGetLocalCCYCommand := FDBXConnection.CreateCommand;
    FGetLocalCCYCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetLocalCCYCommand.Text := 'TSessionServerModule.GetLocalCCY';
    FGetLocalCCYCommand.Prepare;
  end;
  FGetLocalCCYCommand.ExecuteUpdate;
  Result := FGetLocalCCYCommand.Parameters[0].Value.GetWideString;
end;

function TSessionServerModuleClient.GetPrevTransDate: TDateTime;
begin
  if FGetPrevTransDateCommand = nil then
  begin
    FGetPrevTransDateCommand := FDBXConnection.CreateCommand;
    FGetPrevTransDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetPrevTransDateCommand.Text := 'TSessionServerModule.GetPrevTransDate';
    FGetPrevTransDateCommand.Prepare;
  end;
  FGetPrevTransDateCommand.ExecuteUpdate;
  Result := FGetPrevTransDateCommand.Parameters[0].Value.AsDateTime;
end;

function TSessionServerModuleClient.GetDefaultMarket: string;
begin
  if FGetDefaultMarketCommand = nil then
  begin
    FGetDefaultMarketCommand := FDBXConnection.CreateCommand;
    FGetDefaultMarketCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetDefaultMarketCommand.Text := 'TSessionServerModule.GetDefaultMarket';
    FGetDefaultMarketCommand.Prepare;
  end;
  FGetDefaultMarketCommand.ExecuteUpdate;
  Result := FGetDefaultMarketCommand.Parameters[0].Value.GetWideString;
end;

function TSessionServerModuleClient.GetDefaultCountry: string;
begin
  if FGetDefaultCountryCommand = nil then
  begin
    FGetDefaultCountryCommand := FDBXConnection.CreateCommand;
    FGetDefaultCountryCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetDefaultCountryCommand.Text := 'TSessionServerModule.GetDefaultCountry';
    FGetDefaultCountryCommand.Prepare;
  end;
  FGetDefaultCountryCommand.ExecuteUpdate;
  Result := FGetDefaultCountryCommand.Parameters[0].Value.GetWideString;
end;

function TSessionServerModuleClient.DataUpdateCommand(ACommand: TNCommandUpdate): string;
begin
  if FDataUpdateCommandCommand = nil then
  begin
    FDataUpdateCommandCommand := FDBXConnection.CreateCommand;
    FDataUpdateCommandCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDataUpdateCommandCommand.Text := 'TSessionServerModule.DataUpdateCommand';
    FDataUpdateCommandCommand.Prepare;
  end;
  if not Assigned(ACommand) then
    FDataUpdateCommandCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDataUpdateCommandCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDataUpdateCommandCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(ACommand), True);
      if FInstanceOwner then
        ACommand.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FDataUpdateCommandCommand.ExecuteUpdate;
  Result := FDataUpdateCommandCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.GetSeq(ASeqName: string): Int64;
begin
  if FGetSeqCommand = nil then
  begin
    FGetSeqCommand := FDBXConnection.CreateCommand;
    FGetSeqCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetSeqCommand.Text := 'TSessionServerModule.GetSeq';
    FGetSeqCommand.Prepare;
  end;
  FGetSeqCommand.Parameters[0].Value.SetWideString(ASeqName);
  FGetSeqCommand.ExecuteUpdate;
  Result := FGetSeqCommand.Parameters[1].Value.GetInt64;
end;

function TSessionServerModuleClient.GetServerTimeStamp: Double;
begin
  if FGetServerTimeStampCommand = nil then
  begin
    FGetServerTimeStampCommand := FDBXConnection.CreateCommand;
    FGetServerTimeStampCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetServerTimeStampCommand.Text := 'TSessionServerModule.GetServerTimeStamp';
    FGetServerTimeStampCommand.Prepare;
  end;
  FGetServerTimeStampCommand.ExecuteUpdate;
  Result := FGetServerTimeStampCommand.Parameters[0].Value.GetDouble;
end;

function TSessionServerModuleClient.InTransaction: Boolean;
begin
  if FInTransactionCommand = nil then
  begin
    FInTransactionCommand := FDBXConnection.CreateCommand;
    FInTransactionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInTransactionCommand.Text := 'TSessionServerModule.InTransaction';
    FInTransactionCommand.Prepare;
  end;
  FInTransactionCommand.ExecuteUpdate;
  Result := FInTransactionCommand.Parameters[0].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateDealTicketFromDTE(ADTEDate: TDateTime; out AMsg: string): Boolean;
begin
  if FGenerateDealTicketFromDTECommand = nil then
  begin
    FGenerateDealTicketFromDTECommand := FDBXConnection.CreateCommand;
    FGenerateDealTicketFromDTECommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateDealTicketFromDTECommand.Text := 'TSessionServerModule.GenerateDealTicketFromDTE';
    FGenerateDealTicketFromDTECommand.Prepare;
  end;
  FGenerateDealTicketFromDTECommand.Parameters[0].Value.AsDateTime := ADTEDate;
  FGenerateDealTicketFromDTECommand.ExecuteUpdate;
  AMsg := FGenerateDealTicketFromDTECommand.Parameters[1].Value.GetWideString;
  Result := FGenerateDealTicketFromDTECommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateContract(ATrdDateFile: Integer): string;
begin
  if FGenerateContractCommand = nil then
  begin
    FGenerateContractCommand := FDBXConnection.CreateCommand;
    FGenerateContractCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateContractCommand.Text := 'TSessionServerModule.GenerateContract';
    FGenerateContractCommand.Prepare;
  end;
  FGenerateContractCommand.Parameters[0].Value.SetInt32(ATrdDateFile);
  FGenerateContractCommand.ExecuteUpdate;
  Result := FGenerateContractCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.PostingAllDealTicket(ATrdDateFile: Integer): string;
begin
  if FPostingAllDealTicketCommand = nil then
  begin
    FPostingAllDealTicketCommand := FDBXConnection.CreateCommand;
    FPostingAllDealTicketCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostingAllDealTicketCommand.Text := 'TSessionServerModule.PostingAllDealTicket';
    FPostingAllDealTicketCommand.Prepare;
  end;
  FPostingAllDealTicketCommand.Parameters[0].Value.SetInt32(ATrdDateFile);
  FPostingAllDealTicketCommand.ExecuteUpdate;
  Result := FPostingAllDealTicketCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.CloseAllContract(ATrdDateFile: Integer): string;
begin
  if FCloseAllContractCommand = nil then
  begin
    FCloseAllContractCommand := FDBXConnection.CreateCommand;
    FCloseAllContractCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCloseAllContractCommand.Text := 'TSessionServerModule.CloseAllContract';
    FCloseAllContractCommand.Prepare;
  end;
  FCloseAllContractCommand.Parameters[0].Value.SetInt32(ATrdDateFile);
  FCloseAllContractCommand.ExecuteUpdate;
  Result := FCloseAllContractCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.DateAppend(ATrdDateFile: Integer; ADays: Integer): TDateTime;
begin
  if FDateAppendCommand = nil then
  begin
    FDateAppendCommand := FDBXConnection.CreateCommand;
    FDateAppendCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDateAppendCommand.Text := 'TSessionServerModule.DateAppend';
    FDateAppendCommand.Prepare;
  end;
  FDateAppendCommand.Parameters[0].Value.SetInt32(ATrdDateFile);
  FDateAppendCommand.Parameters[1].Value.SetInt32(ADays);
  FDateAppendCommand.ExecuteUpdate;
  Result := FDateAppendCommand.Parameters[2].Value.AsDateTime;
end;

function TSessionServerModuleClient.GetGlobalParamString(AParamID: string): string;
begin
  if FGetGlobalParamStringCommand = nil then
  begin
    FGetGlobalParamStringCommand := FDBXConnection.CreateCommand;
    FGetGlobalParamStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetGlobalParamStringCommand.Text := 'TSessionServerModule.GetGlobalParamString';
    FGetGlobalParamStringCommand.Prepare;
  end;
  FGetGlobalParamStringCommand.Parameters[0].Value.SetWideString(AParamID);
  FGetGlobalParamStringCommand.ExecuteUpdate;
  Result := FGetGlobalParamStringCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.GetGlobalParamInteger(AParamID: string): Integer;
begin
  if FGetGlobalParamIntegerCommand = nil then
  begin
    FGetGlobalParamIntegerCommand := FDBXConnection.CreateCommand;
    FGetGlobalParamIntegerCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetGlobalParamIntegerCommand.Text := 'TSessionServerModule.GetGlobalParamInteger';
    FGetGlobalParamIntegerCommand.Prepare;
  end;
  FGetGlobalParamIntegerCommand.Parameters[0].Value.SetWideString(AParamID);
  FGetGlobalParamIntegerCommand.ExecuteUpdate;
  Result := FGetGlobalParamIntegerCommand.Parameters[1].Value.GetInt32;
end;

function TSessionServerModuleClient.GetGlobalParamDate(AParamID: string): TDateTime;
begin
  if FGetGlobalParamDateCommand = nil then
  begin
    FGetGlobalParamDateCommand := FDBXConnection.CreateCommand;
    FGetGlobalParamDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetGlobalParamDateCommand.Text := 'TSessionServerModule.GetGlobalParamDate';
    FGetGlobalParamDateCommand.Prepare;
  end;
  FGetGlobalParamDateCommand.Parameters[0].Value.SetWideString(AParamID);
  FGetGlobalParamDateCommand.ExecuteUpdate;
  Result := FGetGlobalParamDateCommand.Parameters[1].Value.AsDateTime;
end;

function TSessionServerModuleClient.GetGlobalParamFloat(AParamID: string): Double;
begin
  if FGetGlobalParamFloatCommand = nil then
  begin
    FGetGlobalParamFloatCommand := FDBXConnection.CreateCommand;
    FGetGlobalParamFloatCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetGlobalParamFloatCommand.Text := 'TSessionServerModule.GetGlobalParamFloat';
    FGetGlobalParamFloatCommand.Prepare;
  end;
  FGetGlobalParamFloatCommand.Parameters[0].Value.SetWideString(AParamID);
  FGetGlobalParamFloatCommand.ExecuteUpdate;
  Result := FGetGlobalParamFloatCommand.Parameters[1].Value.GetDouble;
end;

function TSessionServerModuleClient.GetAllClientConnectionInfo: string;
begin
  if FGetAllClientConnectionInfoCommand = nil then
  begin
    FGetAllClientConnectionInfoCommand := FDBXConnection.CreateCommand;
    FGetAllClientConnectionInfoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetAllClientConnectionInfoCommand.Text := 'TSessionServerModule.GetAllClientConnectionInfo';
    FGetAllClientConnectionInfoCommand.Prepare;
  end;
  FGetAllClientConnectionInfoCommand.ExecuteUpdate;
  Result := FGetAllClientConnectionInfoCommand.Parameters[0].Value.GetWideString;
end;

function TSessionServerModuleClient.ChangePassword(AUserID: string; AOldPwd: string; ANewPwd: string; out AMsg: string): Boolean;
begin
  if FChangePasswordCommand = nil then
  begin
    FChangePasswordCommand := FDBXConnection.CreateCommand;
    FChangePasswordCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FChangePasswordCommand.Text := 'TSessionServerModule.ChangePassword';
    FChangePasswordCommand.Prepare;
  end;
  FChangePasswordCommand.Parameters[0].Value.SetWideString(AUserID);
  FChangePasswordCommand.Parameters[1].Value.SetWideString(AOldPwd);
  FChangePasswordCommand.Parameters[2].Value.SetWideString(ANewPwd);
  FChangePasswordCommand.ExecuteUpdate;
  AMsg := FChangePasswordCommand.Parameters[3].Value.GetWideString;
  Result := FChangePasswordCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.ResetPassword(AUserID: string; out AMsg: string): Boolean;
begin
  if FResetPasswordCommand = nil then
  begin
    FResetPasswordCommand := FDBXConnection.CreateCommand;
    FResetPasswordCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FResetPasswordCommand.Text := 'TSessionServerModule.ResetPassword';
    FResetPasswordCommand.Prepare;
  end;
  FResetPasswordCommand.Parameters[0].Value.SetWideString(AUserID);
  FResetPasswordCommand.ExecuteUpdate;
  AMsg := FResetPasswordCommand.Parameters[1].Value.GetWideString;
  Result := FResetPasswordCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.UnLockUserID(AUserID: string; out AMsg: string): Boolean;
begin
  if FUnLockUserIDCommand = nil then
  begin
    FUnLockUserIDCommand := FDBXConnection.CreateCommand;
    FUnLockUserIDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUnLockUserIDCommand.Text := 'TSessionServerModule.UnLockUserID';
    FUnLockUserIDCommand.Prepare;
  end;
  FUnLockUserIDCommand.Parameters[0].Value.SetWideString(AUserID);
  FUnLockUserIDCommand.ExecuteUpdate;
  AMsg := FUnLockUserIDCommand.Parameters[1].Value.GetWideString;
  Result := FUnLockUserIDCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.SendEmail(EmailID: Int64);
begin
  if FSendEmailCommand = nil then
  begin
    FSendEmailCommand := FDBXConnection.CreateCommand;
    FSendEmailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendEmailCommand.Text := 'TSessionServerModule.SendEmail';
    FSendEmailCommand.Prepare;
  end;
  FSendEmailCommand.Parameters[0].Value.SetInt64(EmailID);
  FSendEmailCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.GetCompanyBankDefault(Ccy: string): Integer;
begin
  if FGetCompanyBankDefaultCommand = nil then
  begin
    FGetCompanyBankDefaultCommand := FDBXConnection.CreateCommand;
    FGetCompanyBankDefaultCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetCompanyBankDefaultCommand.Text := 'TSessionServerModule.GetCompanyBankDefault';
    FGetCompanyBankDefaultCommand.Prepare;
  end;
  FGetCompanyBankDefaultCommand.Parameters[0].Value.SetWideString(Ccy);
  FGetCompanyBankDefaultCommand.ExecuteUpdate;
  Result := FGetCompanyBankDefaultCommand.Parameters[1].Value.GetInt32;
end;

function TSessionServerModuleClient.SendEmailTransaction(ATransType: string; ATransID: Int64): Boolean;
begin
  if FSendEmailTransactionCommand = nil then
  begin
    FSendEmailTransactionCommand := FDBXConnection.CreateCommand;
    FSendEmailTransactionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendEmailTransactionCommand.Text := 'TSessionServerModule.SendEmailTransaction';
    FSendEmailTransactionCommand.Prepare;
  end;
  FSendEmailTransactionCommand.Parameters[0].Value.SetWideString(ATransType);
  FSendEmailTransactionCommand.Parameters[1].Value.SetInt64(ATransID);
  FSendEmailTransactionCommand.ExecuteUpdate;
  Result := FSendEmailTransactionCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.SendEmailOpeningAccount(AOAType: string; AOAID: Int64): Boolean;
begin
  if FSendEmailOpeningAccountCommand = nil then
  begin
    FSendEmailOpeningAccountCommand := FDBXConnection.CreateCommand;
    FSendEmailOpeningAccountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendEmailOpeningAccountCommand.Text := 'TSessionServerModule.SendEmailOpeningAccount';
    FSendEmailOpeningAccountCommand.Prepare;
  end;
  FSendEmailOpeningAccountCommand.Parameters[0].Value.SetWideString(AOAType);
  FSendEmailOpeningAccountCommand.Parameters[1].Value.SetInt64(AOAID);
  FSendEmailOpeningAccountCommand.ExecuteUpdate;
  Result := FSendEmailOpeningAccountCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.SendEmailFormBankRDN(AOAID: Int64; out AMsg: string): Boolean;
begin
  if FSendEmailFormBankRDNCommand = nil then
  begin
    FSendEmailFormBankRDNCommand := FDBXConnection.CreateCommand;
    FSendEmailFormBankRDNCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendEmailFormBankRDNCommand.Text := 'TSessionServerModule.SendEmailFormBankRDN';
    FSendEmailFormBankRDNCommand.Prepare;
  end;
  FSendEmailFormBankRDNCommand.Parameters[0].Value.SetInt64(AOAID);
  FSendEmailFormBankRDNCommand.ExecuteUpdate;
  AMsg := FSendEmailFormBankRDNCommand.Parameters[1].Value.GetWideString;
  Result := FSendEmailFormBankRDNCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.SendEmailFormOpeningAccount(AOAID: Int64; out AMsg: string): Boolean;
begin
  if FSendEmailFormOpeningAccountCommand = nil then
  begin
    FSendEmailFormOpeningAccountCommand := FDBXConnection.CreateCommand;
    FSendEmailFormOpeningAccountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendEmailFormOpeningAccountCommand.Text := 'TSessionServerModule.SendEmailFormOpeningAccount';
    FSendEmailFormOpeningAccountCommand.Prepare;
  end;
  FSendEmailFormOpeningAccountCommand.Parameters[0].Value.SetInt64(AOAID);
  FSendEmailFormOpeningAccountCommand.ExecuteUpdate;
  AMsg := FSendEmailFormOpeningAccountCommand.Parameters[1].Value.GetWideString;
  Result := FSendEmailFormOpeningAccountCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CloseContractBonds(AConID: Int64; out AMsg: string): Boolean;
begin
  if FCloseContractBondsCommand = nil then
  begin
    FCloseContractBondsCommand := FDBXConnection.CreateCommand;
    FCloseContractBondsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCloseContractBondsCommand.Text := 'TSessionServerModule.CloseContractBonds';
    FCloseContractBondsCommand.Prepare;
  end;
  FCloseContractBondsCommand.Parameters[0].Value.SetInt64(AConID);
  FCloseContractBondsCommand.ExecuteUpdate;
  AMsg := FCloseContractBondsCommand.Parameters[1].Value.GetWideString;
  Result := FCloseContractBondsCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateContractBonds(ATradeBondID: Int64; out AMsg: string): Boolean;
begin
  if FGenerateContractBondsCommand = nil then
  begin
    FGenerateContractBondsCommand := FDBXConnection.CreateCommand;
    FGenerateContractBondsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateContractBondsCommand.Text := 'TSessionServerModule.GenerateContractBonds';
    FGenerateContractBondsCommand.Prepare;
  end;
  FGenerateContractBondsCommand.Parameters[0].Value.SetInt64(ATradeBondID);
  FGenerateContractBondsCommand.ExecuteUpdate;
  AMsg := FGenerateContractBondsCommand.Parameters[1].Value.GetWideString;
  Result := FGenerateContractBondsCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CloseDealTicket(ADealTicketID: Int64; out AMessage: string): Boolean;
begin
  if FCloseDealTicketCommand = nil then
  begin
    FCloseDealTicketCommand := FDBXConnection.CreateCommand;
    FCloseDealTicketCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCloseDealTicketCommand.Text := 'TSessionServerModule.CloseDealTicket';
    FCloseDealTicketCommand.Prepare;
  end;
  FCloseDealTicketCommand.Parameters[0].Value.SetInt64(ADealTicketID);
  FCloseDealTicketCommand.ExecuteUpdate;
  AMessage := FCloseDealTicketCommand.Parameters[1].Value.GetWideString;
  Result := FCloseDealTicketCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.CloseDealTicketSelected(ADealTicketNo: string; out ASuccessCount: Integer; out ARejectCount: Integer);
begin
  if FCloseDealTicketSelectedCommand = nil then
  begin
    FCloseDealTicketSelectedCommand := FDBXConnection.CreateCommand;
    FCloseDealTicketSelectedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCloseDealTicketSelectedCommand.Text := 'TSessionServerModule.CloseDealTicketSelected';
    FCloseDealTicketSelectedCommand.Prepare;
  end;
  FCloseDealTicketSelectedCommand.Parameters[0].Value.SetWideString(ADealTicketNo);
  FCloseDealTicketSelectedCommand.ExecuteUpdate;
  ASuccessCount := FCloseDealTicketSelectedCommand.Parameters[1].Value.GetInt32;
  ARejectCount := FCloseDealTicketSelectedCommand.Parameters[2].Value.GetInt32;
end;

procedure TSessionServerModuleClient.CloseDealTicketAll(ADealTicketDate: TDateTime; out ASuccessCount: Integer; out ARejectCount: Integer);
begin
  if FCloseDealTicketAllCommand = nil then
  begin
    FCloseDealTicketAllCommand := FDBXConnection.CreateCommand;
    FCloseDealTicketAllCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCloseDealTicketAllCommand.Text := 'TSessionServerModule.CloseDealTicketAll';
    FCloseDealTicketAllCommand.Prepare;
  end;
  FCloseDealTicketAllCommand.Parameters[0].Value.AsDateTime := ADealTicketDate;
  FCloseDealTicketAllCommand.ExecuteUpdate;
  ASuccessCount := FCloseDealTicketAllCommand.Parameters[1].Value.GetInt32;
  ARejectCount := FCloseDealTicketAllCommand.Parameters[2].Value.GetInt32;
end;

function TSessionServerModuleClient.CancelContract(AContractID: Int64; out AMessage: string): Boolean;
begin
  if FCancelContractCommand = nil then
  begin
    FCancelContractCommand := FDBXConnection.CreateCommand;
    FCancelContractCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCancelContractCommand.Text := 'TSessionServerModule.CancelContract';
    FCancelContractCommand.Prepare;
  end;
  FCancelContractCommand.Parameters[0].Value.SetInt64(AContractID);
  FCancelContractCommand.ExecuteUpdate;
  AMessage := FCancelContractCommand.Parameters[1].Value.GetWideString;
  Result := FCancelContractCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CloseContract(AContractID: Int64; out AMessage: string): Boolean;
begin
  if FCloseContractCommand = nil then
  begin
    FCloseContractCommand := FDBXConnection.CreateCommand;
    FCloseContractCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCloseContractCommand.Text := 'TSessionServerModule.CloseContract';
    FCloseContractCommand.Prepare;
  end;
  FCloseContractCommand.Parameters[0].Value.SetInt64(AContractID);
  FCloseContractCommand.ExecuteUpdate;
  AMessage := FCloseContractCommand.Parameters[1].Value.GetWideString;
  Result := FCloseContractCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.CloseContractSelected(AContractNo: string; out ASuccessCount: Integer; out ARejectCount: Integer);
begin
  if FCloseContractSelectedCommand = nil then
  begin
    FCloseContractSelectedCommand := FDBXConnection.CreateCommand;
    FCloseContractSelectedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCloseContractSelectedCommand.Text := 'TSessionServerModule.CloseContractSelected';
    FCloseContractSelectedCommand.Prepare;
  end;
  FCloseContractSelectedCommand.Parameters[0].Value.SetWideString(AContractNo);
  FCloseContractSelectedCommand.ExecuteUpdate;
  ASuccessCount := FCloseContractSelectedCommand.Parameters[1].Value.GetInt32;
  ARejectCount := FCloseContractSelectedCommand.Parameters[2].Value.GetInt32;
end;

procedure TSessionServerModuleClient.CloseContractAll(AContractDate: TDateTime; out ASuccessCount: Integer; out ARejectCount: Integer; out AMsg: string);
begin
  if FCloseContractAllCommand = nil then
  begin
    FCloseContractAllCommand := FDBXConnection.CreateCommand;
    FCloseContractAllCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCloseContractAllCommand.Text := 'TSessionServerModule.CloseContractAll';
    FCloseContractAllCommand.Prepare;
  end;
  FCloseContractAllCommand.Parameters[0].Value.AsDateTime := AContractDate;
  FCloseContractAllCommand.ExecuteUpdate;
  ASuccessCount := FCloseContractAllCommand.Parameters[1].Value.GetInt32;
  ARejectCount := FCloseContractAllCommand.Parameters[2].Value.GetInt32;
  AMsg := FCloseContractAllCommand.Parameters[3].Value.GetWideString;
end;

function TSessionServerModuleClient.ReverseContract(AContractID: Int64; out AMessage: string): Boolean;
begin
  if FReverseContractCommand = nil then
  begin
    FReverseContractCommand := FDBXConnection.CreateCommand;
    FReverseContractCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseContractCommand.Text := 'TSessionServerModule.ReverseContract';
    FReverseContractCommand.Prepare;
  end;
  FReverseContractCommand.Parameters[0].Value.SetInt64(AContractID);
  FReverseContractCommand.ExecuteUpdate;
  AMessage := FReverseContractCommand.Parameters[1].Value.GetWideString;
  Result := FReverseContractCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CancelDealTicket(ADealTicketID: Int64): string;
begin
  if FCancelDealTicketCommand = nil then
  begin
    FCancelDealTicketCommand := FDBXConnection.CreateCommand;
    FCancelDealTicketCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCancelDealTicketCommand.Text := 'TSessionServerModule.CancelDealTicket';
    FCancelDealTicketCommand.Prepare;
  end;
  FCancelDealTicketCommand.Parameters[0].Value.SetInt64(ADealTicketID);
  FCancelDealTicketCommand.ExecuteUpdate;
  Result := FCancelDealTicketCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.GenerateContractFile(ATrdDateFile: Integer): string;
begin
  if FGenerateContractFileCommand = nil then
  begin
    FGenerateContractFileCommand := FDBXConnection.CreateCommand;
    FGenerateContractFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateContractFileCommand.Text := 'TSessionServerModule.GenerateContractFile';
    FGenerateContractFileCommand.Prepare;
  end;
  FGenerateContractFileCommand.Parameters[0].Value.SetInt32(ATrdDateFile);
  FGenerateContractFileCommand.ExecuteUpdate;
  Result := FGenerateContractFileCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.CreateAllMonthlyStatement(APeriod: string): string;
begin
  if FCreateAllMonthlyStatementCommand = nil then
  begin
    FCreateAllMonthlyStatementCommand := FDBXConnection.CreateCommand;
    FCreateAllMonthlyStatementCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateAllMonthlyStatementCommand.Text := 'TSessionServerModule.CreateAllMonthlyStatement';
    FCreateAllMonthlyStatementCommand.Prepare;
  end;
  FCreateAllMonthlyStatementCommand.Parameters[0].Value.SetWideString(APeriod);
  FCreateAllMonthlyStatementCommand.ExecuteUpdate;
  Result := FCreateAllMonthlyStatementCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.CreateMonthlyStatement(APeriod: string; AAccID: Integer): string;
begin
  if FCreateMonthlyStatementCommand = nil then
  begin
    FCreateMonthlyStatementCommand := FDBXConnection.CreateCommand;
    FCreateMonthlyStatementCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateMonthlyStatementCommand.Text := 'TSessionServerModule.CreateMonthlyStatement';
    FCreateMonthlyStatementCommand.Prepare;
  end;
  FCreateMonthlyStatementCommand.Parameters[0].Value.SetWideString(APeriod);
  FCreateMonthlyStatementCommand.Parameters[1].Value.SetInt32(AAccID);
  FCreateMonthlyStatementCommand.ExecuteUpdate;
  Result := FCreateMonthlyStatementCommand.Parameters[2].Value.GetWideString;
end;

function TSessionServerModuleClient.GenerateDealTicketFromIDXTrade: string;
begin
  if FGenerateDealTicketFromIDXTradeCommand = nil then
  begin
    FGenerateDealTicketFromIDXTradeCommand := FDBXConnection.CreateCommand;
    FGenerateDealTicketFromIDXTradeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateDealTicketFromIDXTradeCommand.Text := 'TSessionServerModule.GenerateDealTicketFromIDXTrade';
    FGenerateDealTicketFromIDXTradeCommand.Prepare;
  end;
  FGenerateDealTicketFromIDXTradeCommand.ExecuteUpdate;
  Result := FGenerateDealTicketFromIDXTradeCommand.Parameters[0].Value.GetWideString;
end;

function TSessionServerModuleClient.MergeDealTicket(ADTID_List: string): string;
begin
  if FMergeDealTicketCommand = nil then
  begin
    FMergeDealTicketCommand := FDBXConnection.CreateCommand;
    FMergeDealTicketCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMergeDealTicketCommand.Text := 'TSessionServerModule.MergeDealTicket';
    FMergeDealTicketCommand.Prepare;
  end;
  FMergeDealTicketCommand.Parameters[0].Value.SetWideString(ADTID_List);
  FMergeDealTicketCommand.ExecuteUpdate;
  Result := FMergeDealTicketCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.CancelMergeDealTicket(DTID: Int64): string;
begin
  if FCancelMergeDealTicketCommand = nil then
  begin
    FCancelMergeDealTicketCommand := FDBXConnection.CreateCommand;
    FCancelMergeDealTicketCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCancelMergeDealTicketCommand.Text := 'TSessionServerModule.CancelMergeDealTicket';
    FCancelMergeDealTicketCommand.Prepare;
  end;
  FCancelMergeDealTicketCommand.Parameters[0].Value.SetInt64(DTID);
  FCancelMergeDealTicketCommand.ExecuteUpdate;
  Result := FCancelMergeDealTicketCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.SendContractByMail(AContractID: Int64; AReportFileName: string): Boolean;
begin
  if FSendContractByMailCommand = nil then
  begin
    FSendContractByMailCommand := FDBXConnection.CreateCommand;
    FSendContractByMailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendContractByMailCommand.Text := 'TSessionServerModule.SendContractByMail';
    FSendContractByMailCommand.Prepare;
  end;
  FSendContractByMailCommand.Parameters[0].Value.SetInt64(AContractID);
  FSendContractByMailCommand.Parameters[1].Value.SetWideString(AReportFileName);
  FSendContractByMailCommand.ExecuteUpdate;
  Result := FSendContractByMailCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.SendSOAByMail(APeriod: string; AAccID: Int64): Boolean;
begin
  if FSendSOAByMailCommand = nil then
  begin
    FSendSOAByMailCommand := FDBXConnection.CreateCommand;
    FSendSOAByMailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendSOAByMailCommand.Text := 'TSessionServerModule.SendSOAByMail';
    FSendSOAByMailCommand.Prepare;
  end;
  FSendSOAByMailCommand.Parameters[0].Value.SetWideString(APeriod);
  FSendSOAByMailCommand.Parameters[1].Value.SetInt64(AAccID);
  FSendSOAByMailCommand.ExecuteUpdate;
  Result := FSendSOAByMailCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.SendMarginCallWarningByMail(AccID: Integer): Boolean;
begin
  if FSendMarginCallWarningByMailCommand = nil then
  begin
    FSendMarginCallWarningByMailCommand := FDBXConnection.CreateCommand;
    FSendMarginCallWarningByMailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendMarginCallWarningByMailCommand.Text := 'TSessionServerModule.SendMarginCallWarningByMail';
    FSendMarginCallWarningByMailCommand.Prepare;
  end;
  FSendMarginCallWarningByMailCommand.Parameters[0].Value.SetInt32(AccID);
  FSendMarginCallWarningByMailCommand.ExecuteUpdate;
  Result := FSendMarginCallWarningByMailCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.ReconcileDTE(ADate: TDateTime): Boolean;
begin
  if FReconcileDTECommand = nil then
  begin
    FReconcileDTECommand := FDBXConnection.CreateCommand;
    FReconcileDTECommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReconcileDTECommand.Text := 'TSessionServerModule.ReconcileDTE';
    FReconcileDTECommand.Prepare;
  end;
  FReconcileDTECommand.Parameters[0].Value.AsDateTime := ADate;
  FReconcileDTECommand.ExecuteUpdate;
  Result := FReconcileDTECommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateAllCashVoucher(AVoucherDateFile: Integer): string;
begin
  if FCreateAllCashVoucherCommand = nil then
  begin
    FCreateAllCashVoucherCommand := FDBXConnection.CreateCommand;
    FCreateAllCashVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateAllCashVoucherCommand.Text := 'TSessionServerModule.CreateAllCashVoucher';
    FCreateAllCashVoucherCommand.Prepare;
  end;
  FCreateAllCashVoucherCommand.Parameters[0].Value.SetInt32(AVoucherDateFile);
  FCreateAllCashVoucherCommand.ExecuteUpdate;
  Result := FCreateAllCashVoucherCommand.Parameters[1].Value.GetWideString;
end;

procedure TSessionServerModuleClient.CreateCOBActivity(ACID: Integer; ACOBType: Integer);
begin
  if FCreateCOBActivityCommand = nil then
  begin
    FCreateCOBActivityCommand := FDBXConnection.CreateCommand;
    FCreateCOBActivityCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateCOBActivityCommand.Text := 'TSessionServerModule.CreateCOBActivity';
    FCreateCOBActivityCommand.Prepare;
  end;
  FCreateCOBActivityCommand.Parameters[0].Value.SetInt32(ACID);
  FCreateCOBActivityCommand.Parameters[1].Value.SetInt32(ACOBType);
  FCreateCOBActivityCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CraetrCOBRequest_RDN_SID(ACID: Integer);
begin
  if FCraetrCOBRequest_RDN_SIDCommand = nil then
  begin
    FCraetrCOBRequest_RDN_SIDCommand := FDBXConnection.CreateCommand;
    FCraetrCOBRequest_RDN_SIDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCraetrCOBRequest_RDN_SIDCommand.Text := 'TSessionServerModule.CraetrCOBRequest_RDN_SID';
    FCraetrCOBRequest_RDN_SIDCommand.Prepare;
  end;
  FCraetrCOBRequest_RDN_SIDCommand.Parameters[0].Value.SetInt32(ACID);
  FCraetrCOBRequest_RDN_SIDCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CreateCOBRequest_RDN(ACID: Integer);
begin
  if FCreateCOBRequest_RDNCommand = nil then
  begin
    FCreateCOBRequest_RDNCommand := FDBXConnection.CreateCommand;
    FCreateCOBRequest_RDNCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateCOBRequest_RDNCommand.Text := 'TSessionServerModule.CreateCOBRequest_RDN';
    FCreateCOBRequest_RDNCommand.Prepare;
  end;
  FCreateCOBRequest_RDNCommand.Parameters[0].Value.SetInt32(ACID);
  FCreateCOBRequest_RDNCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CreateCOBRequest_SID(ACID: Integer);
begin
  if FCreateCOBRequest_SIDCommand = nil then
  begin
    FCreateCOBRequest_SIDCommand := FDBXConnection.CreateCommand;
    FCreateCOBRequest_SIDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateCOBRequest_SIDCommand.Text := 'TSessionServerModule.CreateCOBRequest_SID';
    FCreateCOBRequest_SIDCommand.Prepare;
  end;
  FCreateCOBRequest_SIDCommand.Parameters[0].Value.SetInt32(ACID);
  FCreateCOBRequest_SIDCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CreateCOBPermissionList(AUSERID: string);
begin
  if FCreateCOBPermissionListCommand = nil then
  begin
    FCreateCOBPermissionListCommand := FDBXConnection.CreateCommand;
    FCreateCOBPermissionListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateCOBPermissionListCommand.Text := 'TSessionServerModule.CreateCOBPermissionList';
    FCreateCOBPermissionListCommand.Prepare;
  end;
  FCreateCOBPermissionListCommand.Parameters[0].Value.SetWideString(AUSERID);
  FCreateCOBPermissionListCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.GetNewKSEIClientCode: string;
begin
  if FGetNewKSEIClientCodeCommand = nil then
  begin
    FGetNewKSEIClientCodeCommand := FDBXConnection.CreateCommand;
    FGetNewKSEIClientCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNewKSEIClientCodeCommand.Text := 'TSessionServerModule.GetNewKSEIClientCode';
    FGetNewKSEIClientCodeCommand.Prepare;
  end;
  FGetNewKSEIClientCodeCommand.ExecuteUpdate;
  Result := FGetNewKSEIClientCodeCommand.Parameters[0].Value.GetWideString;
end;

function TSessionServerModuleClient.CreateOpeningAccountConfig(AOAID: Integer; out AMessage: string): Boolean;
begin
  if FCreateOpeningAccountConfigCommand = nil then
  begin
    FCreateOpeningAccountConfigCommand := FDBXConnection.CreateCommand;
    FCreateOpeningAccountConfigCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateOpeningAccountConfigCommand.Text := 'TSessionServerModule.CreateOpeningAccountConfig';
    FCreateOpeningAccountConfigCommand.Prepare;
  end;
  FCreateOpeningAccountConfigCommand.Parameters[0].Value.SetInt32(AOAID);
  FCreateOpeningAccountConfigCommand.ExecuteUpdate;
  AMessage := FCreateOpeningAccountConfigCommand.Parameters[1].Value.GetWideString;
  Result := FCreateOpeningAccountConfigCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ApproveOpeningAccount(AOAID: Integer; out AMessage: string): Boolean;
begin
  if FApproveOpeningAccountCommand = nil then
  begin
    FApproveOpeningAccountCommand := FDBXConnection.CreateCommand;
    FApproveOpeningAccountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FApproveOpeningAccountCommand.Text := 'TSessionServerModule.ApproveOpeningAccount';
    FApproveOpeningAccountCommand.Prepare;
  end;
  FApproveOpeningAccountCommand.Parameters[0].Value.SetInt32(AOAID);
  FApproveOpeningAccountCommand.ExecuteUpdate;
  AMessage := FApproveOpeningAccountCommand.Parameters[1].Value.GetWideString;
  Result := FApproveOpeningAccountCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ApproveClosingAccount(AOAID: Integer; out AMessage: string): Boolean;
begin
  if FApproveClosingAccountCommand = nil then
  begin
    FApproveClosingAccountCommand := FDBXConnection.CreateCommand;
    FApproveClosingAccountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FApproveClosingAccountCommand.Text := 'TSessionServerModule.ApproveClosingAccount';
    FApproveClosingAccountCommand.Prepare;
  end;
  FApproveClosingAccountCommand.Parameters[0].Value.SetInt32(AOAID);
  FApproveClosingAccountCommand.ExecuteUpdate;
  AMessage := FApproveClosingAccountCommand.Parameters[1].Value.GetWideString;
  Result := FApproveClosingAccountCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.SettleInstrMerger(ASIID: string; ASettleSide: string; AValueDate: TDateTime);
begin
  if FSettleInstrMergerCommand = nil then
  begin
    FSettleInstrMergerCommand := FDBXConnection.CreateCommand;
    FSettleInstrMergerCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSettleInstrMergerCommand.Text := 'TSessionServerModule.SettleInstrMerger';
    FSettleInstrMergerCommand.Prepare;
  end;
  FSettleInstrMergerCommand.Parameters[0].Value.SetWideString(ASIID);
  FSettleInstrMergerCommand.Parameters[1].Value.SetWideString(ASettleSide);
  FSettleInstrMergerCommand.Parameters[2].Value.AsDateTime := AValueDate;
  FSettleInstrMergerCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.SendCOBInfoByMail(ACID: Integer; AMailType: string): string;
begin
  if FSendCOBInfoByMailCommand = nil then
  begin
    FSendCOBInfoByMailCommand := FDBXConnection.CreateCommand;
    FSendCOBInfoByMailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendCOBInfoByMailCommand.Text := 'TSessionServerModule.SendCOBInfoByMail';
    FSendCOBInfoByMailCommand.Prepare;
  end;
  FSendCOBInfoByMailCommand.Parameters[0].Value.SetInt32(ACID);
  FSendCOBInfoByMailCommand.Parameters[1].Value.SetWideString(AMailType);
  FSendCOBInfoByMailCommand.ExecuteUpdate;
  Result := FSendCOBInfoByMailCommand.Parameters[2].Value.GetWideString;
end;

function TSessionServerModuleClient.SendCorpactEntitlement(ACAID: Integer; AAccID: Integer; ACAType: Integer; AMailType: string): string;
begin
  if FSendCorpactEntitlementCommand = nil then
  begin
    FSendCorpactEntitlementCommand := FDBXConnection.CreateCommand;
    FSendCorpactEntitlementCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendCorpactEntitlementCommand.Text := 'TSessionServerModule.SendCorpactEntitlement';
    FSendCorpactEntitlementCommand.Prepare;
  end;
  FSendCorpactEntitlementCommand.Parameters[0].Value.SetInt32(ACAID);
  FSendCorpactEntitlementCommand.Parameters[1].Value.SetInt32(AAccID);
  FSendCorpactEntitlementCommand.Parameters[2].Value.SetInt32(ACAType);
  FSendCorpactEntitlementCommand.Parameters[3].Value.SetWideString(AMailType);
  FSendCorpactEntitlementCommand.ExecuteUpdate;
  Result := FSendCorpactEntitlementCommand.Parameters[4].Value.GetWideString;
end;

function TSessionServerModuleClient.GetNextTradingDate(AFromDate: TDateTime; AIncDay: Integer): TDateTime;
begin
  if FGetNextTradingDateCommand = nil then
  begin
    FGetNextTradingDateCommand := FDBXConnection.CreateCommand;
    FGetNextTradingDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNextTradingDateCommand.Text := 'TSessionServerModule.GetNextTradingDate';
    FGetNextTradingDateCommand.Prepare;
  end;
  FGetNextTradingDateCommand.Parameters[0].Value.AsDateTime := AFromDate;
  FGetNextTradingDateCommand.Parameters[1].Value.SetInt32(AIncDay);
  FGetNextTradingDateCommand.ExecuteUpdate;
  Result := FGetNextTradingDateCommand.Parameters[2].Value.AsDateTime;
end;

function TSessionServerModuleClient.IsEndOfMonth(ADate: TDateTime): Boolean;
begin
  if FIsEndOfMonthCommand = nil then
  begin
    FIsEndOfMonthCommand := FDBXConnection.CreateCommand;
    FIsEndOfMonthCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIsEndOfMonthCommand.Text := 'TSessionServerModule.IsEndOfMonth';
    FIsEndOfMonthCommand.Prepare;
  end;
  FIsEndOfMonthCommand.Parameters[0].Value.AsDateTime := ADate;
  FIsEndOfMonthCommand.ExecuteUpdate;
  Result := FIsEndOfMonthCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.IsEndOfYear(ADate: TDateTime): Boolean;
begin
  if FIsEndOfYearCommand = nil then
  begin
    FIsEndOfYearCommand := FDBXConnection.CreateCommand;
    FIsEndOfYearCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIsEndOfYearCommand.Text := 'TSessionServerModule.IsEndOfYear';
    FIsEndOfYearCommand.Prepare;
  end;
  FIsEndOfYearCommand.Parameters[0].Value.AsDateTime := ADate;
  FIsEndOfYearCommand.ExecuteUpdate;
  Result := FIsEndOfYearCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.FindEmail(AFindBy: string; AFindID: Int64; var AEmailDateFile: Integer; var AEmailID: Int64; var ASendID: Int64): Boolean;
begin
  if FFindEmailCommand = nil then
  begin
    FFindEmailCommand := FDBXConnection.CreateCommand;
    FFindEmailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFindEmailCommand.Text := 'TSessionServerModule.FindEmail';
    FFindEmailCommand.Prepare;
  end;
  FFindEmailCommand.Parameters[0].Value.SetWideString(AFindBy);
  FFindEmailCommand.Parameters[1].Value.SetInt64(AFindID);
  FFindEmailCommand.Parameters[2].Value.SetInt32(AEmailDateFile);
  FFindEmailCommand.Parameters[3].Value.SetInt64(AEmailID);
  FFindEmailCommand.Parameters[4].Value.SetInt64(ASendID);
  FFindEmailCommand.ExecuteUpdate;
  AEmailDateFile := FFindEmailCommand.Parameters[2].Value.GetInt32;
  AEmailID := FFindEmailCommand.Parameters[3].Value.GetInt64;
  ASendID := FFindEmailCommand.Parameters[4].Value.GetInt64;
  Result := FFindEmailCommand.Parameters[5].Value.GetBoolean;
end;

function TSessionServerModuleClient.GetMasterTableNameFromDatasetProvider(sDatasetProviderName: string): string;
begin
  if FGetMasterTableNameFromDatasetProviderCommand = nil then
  begin
    FGetMasterTableNameFromDatasetProviderCommand := FDBXConnection.CreateCommand;
    FGetMasterTableNameFromDatasetProviderCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetMasterTableNameFromDatasetProviderCommand.Text := 'TSessionServerModule.GetMasterTableNameFromDatasetProvider';
    FGetMasterTableNameFromDatasetProviderCommand.Prepare;
  end;
  FGetMasterTableNameFromDatasetProviderCommand.Parameters[0].Value.SetWideString(sDatasetProviderName);
  FGetMasterTableNameFromDatasetProviderCommand.ExecuteUpdate;
  Result := FGetMasterTableNameFromDatasetProviderCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.GetAuditTableNameFromDatasetProvider(sDatasetProviderName: string): string;
begin
  if FGetAuditTableNameFromDatasetProviderCommand = nil then
  begin
    FGetAuditTableNameFromDatasetProviderCommand := FDBXConnection.CreateCommand;
    FGetAuditTableNameFromDatasetProviderCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetAuditTableNameFromDatasetProviderCommand.Text := 'TSessionServerModule.GetAuditTableNameFromDatasetProvider';
    FGetAuditTableNameFromDatasetProviderCommand.Prepare;
  end;
  FGetAuditTableNameFromDatasetProviderCommand.Parameters[0].Value.SetWideString(sDatasetProviderName);
  FGetAuditTableNameFromDatasetProviderCommand.ExecuteUpdate;
  Result := FGetAuditTableNameFromDatasetProviderCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.GetTableNameFromDataset(ADataModuleName: string; ADatasetName: string): string;
begin
  if FGetTableNameFromDatasetCommand = nil then
  begin
    FGetTableNameFromDatasetCommand := FDBXConnection.CreateCommand;
    FGetTableNameFromDatasetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetTableNameFromDatasetCommand.Text := 'TSessionServerModule.GetTableNameFromDataset';
    FGetTableNameFromDatasetCommand.Prepare;
  end;
  FGetTableNameFromDatasetCommand.Parameters[0].Value.SetWideString(ADataModuleName);
  FGetTableNameFromDatasetCommand.Parameters[1].Value.SetWideString(ADatasetName);
  FGetTableNameFromDatasetCommand.ExecuteUpdate;
  Result := FGetTableNameFromDatasetCommand.Parameters[2].Value.GetWideString;
end;

function TSessionServerModuleClient.GetAuditTableNameFromDataset(ADataModuleName: string; ADatasetName: string): string;
begin
  if FGetAuditTableNameFromDatasetCommand = nil then
  begin
    FGetAuditTableNameFromDatasetCommand := FDBXConnection.CreateCommand;
    FGetAuditTableNameFromDatasetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetAuditTableNameFromDatasetCommand.Text := 'TSessionServerModule.GetAuditTableNameFromDataset';
    FGetAuditTableNameFromDatasetCommand.Prepare;
  end;
  FGetAuditTableNameFromDatasetCommand.Parameters[0].Value.SetWideString(ADataModuleName);
  FGetAuditTableNameFromDatasetCommand.Parameters[1].Value.SetWideString(ADatasetName);
  FGetAuditTableNameFromDatasetCommand.ExecuteUpdate;
  Result := FGetAuditTableNameFromDatasetCommand.Parameters[2].Value.GetWideString;
end;

function TSessionServerModuleClient.StartEditTable(sTableName: string; sDataTableKey: string; var sUserID: string; var sIPAddress: string; var sCompName: string; var DateEdit: TDateTime): Boolean;
begin
  if FStartEditTableCommand = nil then
  begin
    FStartEditTableCommand := FDBXConnection.CreateCommand;
    FStartEditTableCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStartEditTableCommand.Text := 'TSessionServerModule.StartEditTable';
    FStartEditTableCommand.Prepare;
  end;
  FStartEditTableCommand.Parameters[0].Value.SetWideString(sTableName);
  FStartEditTableCommand.Parameters[1].Value.SetWideString(sDataTableKey);
  FStartEditTableCommand.Parameters[2].Value.SetWideString(sUserID);
  FStartEditTableCommand.Parameters[3].Value.SetWideString(sIPAddress);
  FStartEditTableCommand.Parameters[4].Value.SetWideString(sCompName);
  FStartEditTableCommand.Parameters[5].Value.AsDateTime := DateEdit;
  FStartEditTableCommand.ExecuteUpdate;
  sUserID := FStartEditTableCommand.Parameters[2].Value.GetWideString;
  sIPAddress := FStartEditTableCommand.Parameters[3].Value.GetWideString;
  sCompName := FStartEditTableCommand.Parameters[4].Value.GetWideString;
  DateEdit := FStartEditTableCommand.Parameters[5].Value.AsDateTime;
  Result := FStartEditTableCommand.Parameters[6].Value.GetBoolean;
end;

function TSessionServerModuleClient.FinishEditTable(sTableName: string; sDataTableKey: string): Boolean;
begin
  if FFinishEditTableCommand = nil then
  begin
    FFinishEditTableCommand := FDBXConnection.CreateCommand;
    FFinishEditTableCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFinishEditTableCommand.Text := 'TSessionServerModule.FinishEditTable';
    FFinishEditTableCommand.Prepare;
  end;
  FFinishEditTableCommand.Parameters[0].Value.SetWideString(sTableName);
  FFinishEditTableCommand.Parameters[1].Value.SetWideString(sDataTableKey);
  FFinishEditTableCommand.ExecuteUpdate;
  Result := FFinishEditTableCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.UploadStockRec(AStockRecFile: TStringList; ATrDateFile: Integer): Boolean;
begin
  if FUploadStockRecCommand = nil then
  begin
    FUploadStockRecCommand := FDBXConnection.CreateCommand;
    FUploadStockRecCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadStockRecCommand.Text := 'TSessionServerModule.UploadStockRec';
    FUploadStockRecCommand.Prepare;
  end;
  if not Assigned(AStockRecFile) then
    FUploadStockRecCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FUploadStockRecCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FUploadStockRecCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(AStockRecFile), True);
      if FInstanceOwner then
        AStockRecFile.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FUploadStockRecCommand.Parameters[1].Value.SetInt32(ATrDateFile);
  FUploadStockRecCommand.ExecuteUpdate;
  Result := FUploadStockRecCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.UploadRDNFile(AFileArray: TJSONArray; AFileName: string): Boolean;
begin
  if FUploadRDNFileCommand = nil then
  begin
    FUploadRDNFileCommand := FDBXConnection.CreateCommand;
    FUploadRDNFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadRDNFileCommand.Text := 'TSessionServerModule.UploadRDNFile';
    FUploadRDNFileCommand.Prepare;
  end;
  FUploadRDNFileCommand.Parameters[0].Value.SetJSONValue(AFileArray, FInstanceOwner);
  FUploadRDNFileCommand.Parameters[1].Value.SetWideString(AFileName);
  FUploadRDNFileCommand.ExecuteUpdate;
  Result := FUploadRDNFileCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.GenerateBatchProcess(ADate: TDateTime);
begin
  if FGenerateBatchProcessCommand = nil then
  begin
    FGenerateBatchProcessCommand := FDBXConnection.CreateCommand;
    FGenerateBatchProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateBatchProcessCommand.Text := 'TSessionServerModule.GenerateBatchProcess';
    FGenerateBatchProcessCommand.Prepare;
  end;
  FGenerateBatchProcessCommand.Parameters[0].Value.AsDateTime := ADate;
  FGenerateBatchProcessCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.ContractCount: Integer;
begin
  if FContractCountCommand = nil then
  begin
    FContractCountCommand := FDBXConnection.CreateCommand;
    FContractCountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FContractCountCommand.Text := 'TSessionServerModule.ContractCount';
    FContractCountCommand.Prepare;
  end;
  FContractCountCommand.ExecuteUpdate;
  Result := FContractCountCommand.Parameters[0].Value.GetInt32;
end;

function TSessionServerModuleClient.ProcessCount: Integer;
begin
  if FProcessCountCommand = nil then
  begin
    FProcessCountCommand := FDBXConnection.CreateCommand;
    FProcessCountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FProcessCountCommand.Text := 'TSessionServerModule.ProcessCount';
    FProcessCountCommand.Prepare;
  end;
  FProcessCountCommand.ExecuteUpdate;
  Result := FProcessCountCommand.Parameters[0].Value.GetInt32;
end;

function TSessionServerModuleClient.ChangeDataExecutionManualDealticket(AOrderDate: TDateTime; out AMsg: string): Boolean;
begin
  if FChangeDataExecutionManualDealticketCommand = nil then
  begin
    FChangeDataExecutionManualDealticketCommand := FDBXConnection.CreateCommand;
    FChangeDataExecutionManualDealticketCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FChangeDataExecutionManualDealticketCommand.Text := 'TSessionServerModule.ChangeDataExecutionManualDealticket';
    FChangeDataExecutionManualDealticketCommand.Prepare;
  end;
  FChangeDataExecutionManualDealticketCommand.Parameters[0].Value.AsDateTime := AOrderDate;
  FChangeDataExecutionManualDealticketCommand.ExecuteUpdate;
  AMsg := FChangeDataExecutionManualDealticketCommand.Parameters[1].Value.GetWideString;
  Result := FChangeDataExecutionManualDealticketCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.UpdateTradeExecutionWithProrate(ADealticketList: string; out AMsg: string): Boolean;
begin
  if FUpdateTradeExecutionWithProrateCommand = nil then
  begin
    FUpdateTradeExecutionWithProrateCommand := FDBXConnection.CreateCommand;
    FUpdateTradeExecutionWithProrateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateTradeExecutionWithProrateCommand.Text := 'TSessionServerModule.UpdateTradeExecutionWithProrate';
    FUpdateTradeExecutionWithProrateCommand.Prepare;
  end;
  FUpdateTradeExecutionWithProrateCommand.Parameters[0].Value.SetWideString(ADealticketList);
  FUpdateTradeExecutionWithProrateCommand.ExecuteUpdate;
  AMsg := FUpdateTradeExecutionWithProrateCommand.Parameters[1].Value.GetWideString;
  Result := FUpdateTradeExecutionWithProrateCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.UpdateOMGStatus(APROC: string; ACONID: string; ASTATUS: string; AOMGSTATUS: string; AREMARK: string);
begin
  if FUpdateOMGStatusCommand = nil then
  begin
    FUpdateOMGStatusCommand := FDBXConnection.CreateCommand;
    FUpdateOMGStatusCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateOMGStatusCommand.Text := 'TSessionServerModule.UpdateOMGStatus';
    FUpdateOMGStatusCommand.Prepare;
  end;
  FUpdateOMGStatusCommand.Parameters[0].Value.SetWideString(APROC);
  FUpdateOMGStatusCommand.Parameters[1].Value.SetWideString(ACONID);
  FUpdateOMGStatusCommand.Parameters[2].Value.SetWideString(ASTATUS);
  FUpdateOMGStatusCommand.Parameters[3].Value.SetWideString(AOMGSTATUS);
  FUpdateOMGStatusCommand.Parameters[4].Value.SetWideString(AREMARK);
  FUpdateOMGStatusCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.GenerateOMGContract(ACONDATE: TDateTime; AUser: string): Boolean;
begin
  if FGenerateOMGContractCommand = nil then
  begin
    FGenerateOMGContractCommand := FDBXConnection.CreateCommand;
    FGenerateOMGContractCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateOMGContractCommand.Text := 'TSessionServerModule.GenerateOMGContract';
    FGenerateOMGContractCommand.Prepare;
  end;
  FGenerateOMGContractCommand.Parameters[0].Value.AsDateTime := ACONDATE;
  FGenerateOMGContractCommand.Parameters[1].Value.SetWideString(AUser);
  FGenerateOMGContractCommand.ExecuteUpdate;
  Result := FGenerateOMGContractCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.MTIProcess(ADealTicketID: Int64; ATransID: Integer);
begin
  if FMTIProcessCommand = nil then
  begin
    FMTIProcessCommand := FDBXConnection.CreateCommand;
    FMTIProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMTIProcessCommand.Text := 'TSessionServerModule.MTIProcess';
    FMTIProcessCommand.Prepare;
  end;
  FMTIProcessCommand.Parameters[0].Value.SetInt64(ADealTicketID);
  FMTIProcessCommand.Parameters[1].Value.SetInt32(ATransID);
  FMTIProcessCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.BatchProcess(ABatchCategory: string; ATransDate: TDateTime);
begin
  if FBatchProcessCommand = nil then
  begin
    FBatchProcessCommand := FDBXConnection.CreateCommand;
    FBatchProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBatchProcessCommand.Text := 'TSessionServerModule.BatchProcess';
    FBatchProcessCommand.Prepare;
  end;
  FBatchProcessCommand.Parameters[0].Value.SetWideString(ABatchCategory);
  FBatchProcessCommand.Parameters[1].Value.AsDateTime := ATransDate;
  FBatchProcessCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.UpdateCompleteActivity(AID: Integer; CID: Integer);
begin
  if FUpdateCompleteActivityCommand = nil then
  begin
    FUpdateCompleteActivityCommand := FDBXConnection.CreateCommand;
    FUpdateCompleteActivityCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateCompleteActivityCommand.Text := 'TSessionServerModule.UpdateCompleteActivity';
    FUpdateCompleteActivityCommand.Prepare;
  end;
  FUpdateCompleteActivityCommand.Parameters[0].Value.SetInt32(AID);
  FUpdateCompleteActivityCommand.Parameters[1].Value.SetInt32(CID);
  FUpdateCompleteActivityCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.UpdateAckActivity(AID: Integer; CID: Integer);
begin
  if FUpdateAckActivityCommand = nil then
  begin
    FUpdateAckActivityCommand := FDBXConnection.CreateCommand;
    FUpdateAckActivityCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateAckActivityCommand.Text := 'TSessionServerModule.UpdateAckActivity';
    FUpdateAckActivityCommand.Prepare;
  end;
  FUpdateAckActivityCommand.Parameters[0].Value.SetInt32(AID);
  FUpdateAckActivityCommand.Parameters[1].Value.SetInt32(CID);
  FUpdateAckActivityCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.WriteActivityLog(FormName: string; ActionName: string; ActionDesc: string; ActionType: string);
begin
  if FWriteActivityLogCommand = nil then
  begin
    FWriteActivityLogCommand := FDBXConnection.CreateCommand;
    FWriteActivityLogCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FWriteActivityLogCommand.Text := 'TSessionServerModule.WriteActivityLog';
    FWriteActivityLogCommand.Prepare;
  end;
  FWriteActivityLogCommand.Parameters[0].Value.SetWideString(FormName);
  FWriteActivityLogCommand.Parameters[1].Value.SetWideString(ActionName);
  FWriteActivityLogCommand.Parameters[2].Value.SetWideString(ActionDesc);
  FWriteActivityLogCommand.Parameters[3].Value.SetWideString(ActionType);
  FWriteActivityLogCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.UpdateCOBActParamSetting(CID: Integer);
begin
  if FUpdateCOBActParamSettingCommand = nil then
  begin
    FUpdateCOBActParamSettingCommand := FDBXConnection.CreateCommand;
    FUpdateCOBActParamSettingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateCOBActParamSettingCommand.Text := 'TSessionServerModule.UpdateCOBActParamSetting';
    FUpdateCOBActParamSettingCommand.Prepare;
  end;
  FUpdateCOBActParamSettingCommand.Parameters[0].Value.SetInt32(CID);
  FUpdateCOBActParamSettingCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.UpdateBankLinkToLedger(AAccID: Integer);
begin
  if FUpdateBankLinkToLedgerCommand = nil then
  begin
    FUpdateBankLinkToLedgerCommand := FDBXConnection.CreateCommand;
    FUpdateBankLinkToLedgerCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateBankLinkToLedgerCommand.Text := 'TSessionServerModule.UpdateBankLinkToLedger';
    FUpdateBankLinkToLedgerCommand.Prepare;
  end;
  FUpdateBankLinkToLedgerCommand.Parameters[0].Value.SetInt32(AAccID);
  FUpdateBankLinkToLedgerCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.BackToPrevProcessCOB(CID: Integer; ACTIVITY_ID: Integer; ACTIVITY_SUBID: Integer);
begin
  if FBackToPrevProcessCOBCommand = nil then
  begin
    FBackToPrevProcessCOBCommand := FDBXConnection.CreateCommand;
    FBackToPrevProcessCOBCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBackToPrevProcessCOBCommand.Text := 'TSessionServerModule.BackToPrevProcessCOB';
    FBackToPrevProcessCOBCommand.Prepare;
  end;
  FBackToPrevProcessCOBCommand.Parameters[0].Value.SetInt32(CID);
  FBackToPrevProcessCOBCommand.Parameters[1].Value.SetInt32(ACTIVITY_ID);
  FBackToPrevProcessCOBCommand.Parameters[2].Value.SetInt32(ACTIVITY_SUBID);
  FBackToPrevProcessCOBCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.GenerateKSEIExcelFile;
begin
  if FGenerateKSEIExcelFileCommand = nil then
  begin
    FGenerateKSEIExcelFileCommand := FDBXConnection.CreateCommand;
    FGenerateKSEIExcelFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateKSEIExcelFileCommand.Text := 'TSessionServerModule.GenerateKSEIExcelFile';
    FGenerateKSEIExcelFileCommand.Prepare;
  end;
  FGenerateKSEIExcelFileCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.ClearBondsQuotation;
begin
  if FClearBondsQuotationCommand = nil then
  begin
    FClearBondsQuotationCommand := FDBXConnection.CreateCommand;
    FClearBondsQuotationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FClearBondsQuotationCommand.Text := 'TSessionServerModule.ClearBondsQuotation';
    FClearBondsQuotationCommand.Prepare;
  end;
  FClearBondsQuotationCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.GetValueDate(ATradeDate: TDateTime; ADays: Integer): TDateTime;
begin
  if FGetValueDateCommand = nil then
  begin
    FGetValueDateCommand := FDBXConnection.CreateCommand;
    FGetValueDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetValueDateCommand.Text := 'TSessionServerModule.GetValueDate';
    FGetValueDateCommand.Prepare;
  end;
  FGetValueDateCommand.Parameters[0].Value.AsDateTime := ATradeDate;
  FGetValueDateCommand.Parameters[1].Value.SetInt32(ADays);
  FGetValueDateCommand.ExecuteUpdate;
  Result := FGetValueDateCommand.Parameters[2].Value.AsDateTime;
end;

procedure TSessionServerModuleClient.DeleteCTPByDate(ATradeDate: TDateTime);
begin
  if FDeleteCTPByDateCommand = nil then
  begin
    FDeleteCTPByDateCommand := FDBXConnection.CreateCommand;
    FDeleteCTPByDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeleteCTPByDateCommand.Text := 'TSessionServerModule.DeleteCTPByDate';
    FDeleteCTPByDateCommand.Prepare;
  end;
  FDeleteCTPByDateCommand.Parameters[0].Value.AsDateTime := ATradeDate;
  FDeleteCTPByDateCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.GenerateContractBondsByID(ATradeBondsID: Integer): string;
begin
  if FGenerateContractBondsByIDCommand = nil then
  begin
    FGenerateContractBondsByIDCommand := FDBXConnection.CreateCommand;
    FGenerateContractBondsByIDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateContractBondsByIDCommand.Text := 'TSessionServerModule.GenerateContractBondsByID';
    FGenerateContractBondsByIDCommand.Prepare;
  end;
  FGenerateContractBondsByIDCommand.Parameters[0].Value.SetInt32(ATradeBondsID);
  FGenerateContractBondsByIDCommand.ExecuteUpdate;
  Result := FGenerateContractBondsByIDCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.PostStockDeposit(ASDID: Integer; out AMessage: string): Boolean;
begin
  if FPostStockDepositCommand = nil then
  begin
    FPostStockDepositCommand := FDBXConnection.CreateCommand;
    FPostStockDepositCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostStockDepositCommand.Text := 'TSessionServerModule.PostStockDeposit';
    FPostStockDepositCommand.Prepare;
  end;
  FPostStockDepositCommand.Parameters[0].Value.SetInt32(ASDID);
  FPostStockDepositCommand.ExecuteUpdate;
  AMessage := FPostStockDepositCommand.Parameters[1].Value.GetWideString;
  Result := FPostStockDepositCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.PostStockDepositReverse(ASDID: Integer; out AMessage: string): Boolean;
begin
  if FPostStockDepositReverseCommand = nil then
  begin
    FPostStockDepositReverseCommand := FDBXConnection.CreateCommand;
    FPostStockDepositReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostStockDepositReverseCommand.Text := 'TSessionServerModule.PostStockDepositReverse';
    FPostStockDepositReverseCommand.Prepare;
  end;
  FPostStockDepositReverseCommand.Parameters[0].Value.SetInt32(ASDID);
  FPostStockDepositReverseCommand.ExecuteUpdate;
  AMessage := FPostStockDepositReverseCommand.Parameters[1].Value.GetWideString;
  Result := FPostStockDepositReverseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.PostStockWithdraw(ASWID: Integer; out AMsg: string): Boolean;
begin
  if FPostStockWithdrawCommand = nil then
  begin
    FPostStockWithdrawCommand := FDBXConnection.CreateCommand;
    FPostStockWithdrawCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostStockWithdrawCommand.Text := 'TSessionServerModule.PostStockWithdraw';
    FPostStockWithdrawCommand.Prepare;
  end;
  FPostStockWithdrawCommand.Parameters[0].Value.SetInt32(ASWID);
  FPostStockWithdrawCommand.ExecuteUpdate;
  AMsg := FPostStockWithdrawCommand.Parameters[1].Value.GetWideString;
  Result := FPostStockWithdrawCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.PostStockWithdrawReverse(ASWID: Int64; out AMessage: string): Boolean;
begin
  if FPostStockWithdrawReverseCommand = nil then
  begin
    FPostStockWithdrawReverseCommand := FDBXConnection.CreateCommand;
    FPostStockWithdrawReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostStockWithdrawReverseCommand.Text := 'TSessionServerModule.PostStockWithdrawReverse';
    FPostStockWithdrawReverseCommand.Prepare;
  end;
  FPostStockWithdrawReverseCommand.Parameters[0].Value.SetInt64(ASWID);
  FPostStockWithdrawReverseCommand.ExecuteUpdate;
  AMessage := FPostStockWithdrawReverseCommand.Parameters[1].Value.GetWideString;
  Result := FPostStockWithdrawReverseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.PostStockWithdrawCalcel(ASWID: Int64; out AMessage: string): Boolean;
begin
  if FPostStockWithdrawCalcelCommand = nil then
  begin
    FPostStockWithdrawCalcelCommand := FDBXConnection.CreateCommand;
    FPostStockWithdrawCalcelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostStockWithdrawCalcelCommand.Text := 'TSessionServerModule.PostStockWithdrawCalcel';
    FPostStockWithdrawCalcelCommand.Prepare;
  end;
  FPostStockWithdrawCalcelCommand.Parameters[0].Value.SetInt64(ASWID);
  FPostStockWithdrawCalcelCommand.ExecuteUpdate;
  AMessage := FPostStockWithdrawCalcelCommand.Parameters[1].Value.GetWideString;
  Result := FPostStockWithdrawCalcelCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.PostGLJournal(ARptDate: TDateTime): string;
begin
  if FPostGLJournalCommand = nil then
  begin
    FPostGLJournalCommand := FDBXConnection.CreateCommand;
    FPostGLJournalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostGLJournalCommand.Text := 'TSessionServerModule.PostGLJournal';
    FPostGLJournalCommand.Prepare;
  end;
  FPostGLJournalCommand.Parameters[0].Value.AsDateTime := ARptDate;
  FPostGLJournalCommand.ExecuteUpdate;
  Result := FPostGLJournalCommand.Parameters[1].Value.GetWideString;
end;

procedure TSessionServerModuleClient.GenerateToExtData(ARptDate: TDateTime);
begin
  if FGenerateToExtDataCommand = nil then
  begin
    FGenerateToExtDataCommand := FDBXConnection.CreateCommand;
    FGenerateToExtDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateToExtDataCommand.Text := 'TSessionServerModule.GenerateToExtData';
    FGenerateToExtDataCommand.Prepare;
  end;
  FGenerateToExtDataCommand.Parameters[0].Value.AsDateTime := ARptDate;
  FGenerateToExtDataCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.StockPosToNextDate(ARptDate: TDateTime; ANextDate: TDateTime);
begin
  if FStockPosToNextDateCommand = nil then
  begin
    FStockPosToNextDateCommand := FDBXConnection.CreateCommand;
    FStockPosToNextDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockPosToNextDateCommand.Text := 'TSessionServerModule.StockPosToNextDate';
    FStockPosToNextDateCommand.Prepare;
  end;
  FStockPosToNextDateCommand.Parameters[0].Value.AsDateTime := ARptDate;
  FStockPosToNextDateCommand.Parameters[1].Value.AsDateTime := ANextDate;
  FStockPosToNextDateCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CashPosToNextDate(ARptDate: TDateTime; ANextDate: TDateTime);
begin
  if FCashPosToNextDateCommand = nil then
  begin
    FCashPosToNextDateCommand := FDBXConnection.CreateCommand;
    FCashPosToNextDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashPosToNextDateCommand.Text := 'TSessionServerModule.CashPosToNextDate';
    FCashPosToNextDateCommand.Prepare;
  end;
  FCashPosToNextDateCommand.Parameters[0].Value.AsDateTime := ARptDate;
  FCashPosToNextDateCommand.Parameters[1].Value.AsDateTime := ANextDate;
  FCashPosToNextDateCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.GetYieldQuotation(ALastCoupon: TDateTime; ANextCoupon: TDateTime; AValueDate: TDateTime; ABasis: Integer; ACouponInYear: Integer; AMaturityDate: TDateTime; ACouponRate: Double; APrice: Double): Double;
begin
  if FGetYieldQuotationCommand = nil then
  begin
    FGetYieldQuotationCommand := FDBXConnection.CreateCommand;
    FGetYieldQuotationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetYieldQuotationCommand.Text := 'TSessionServerModule.GetYieldQuotation';
    FGetYieldQuotationCommand.Prepare;
  end;
  FGetYieldQuotationCommand.Parameters[0].Value.AsDateTime := ALastCoupon;
  FGetYieldQuotationCommand.Parameters[1].Value.AsDateTime := ANextCoupon;
  FGetYieldQuotationCommand.Parameters[2].Value.AsDateTime := AValueDate;
  FGetYieldQuotationCommand.Parameters[3].Value.SetInt32(ABasis);
  FGetYieldQuotationCommand.Parameters[4].Value.SetInt32(ACouponInYear);
  FGetYieldQuotationCommand.Parameters[5].Value.AsDateTime := AMaturityDate;
  FGetYieldQuotationCommand.Parameters[6].Value.SetDouble(ACouponRate);
  FGetYieldQuotationCommand.Parameters[7].Value.SetDouble(APrice);
  FGetYieldQuotationCommand.ExecuteUpdate;
  Result := FGetYieldQuotationCommand.Parameters[8].Value.GetDouble;
end;

procedure TSessionServerModuleClient.UpdateCTPReff(ACTPReff: string; AContractID: Integer; ADetailID: Integer);
begin
  if FUpdateCTPReffCommand = nil then
  begin
    FUpdateCTPReffCommand := FDBXConnection.CreateCommand;
    FUpdateCTPReffCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateCTPReffCommand.Text := 'TSessionServerModule.UpdateCTPReff';
    FUpdateCTPReffCommand.Prepare;
  end;
  FUpdateCTPReffCommand.Parameters[0].Value.SetWideString(ACTPReff);
  FUpdateCTPReffCommand.Parameters[1].Value.SetInt32(AContractID);
  FUpdateCTPReffCommand.Parameters[2].Value.SetInt32(ADetailID);
  FUpdateCTPReffCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CreateCashVoucherBySI(ASIID: Int64; AVoucherDate: TDateTime; ASettleSide: string);
begin
  if FCreateCashVoucherBySICommand = nil then
  begin
    FCreateCashVoucherBySICommand := FDBXConnection.CreateCommand;
    FCreateCashVoucherBySICommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateCashVoucherBySICommand.Text := 'TSessionServerModule.CreateCashVoucherBySI';
    FCreateCashVoucherBySICommand.Prepare;
  end;
  FCreateCashVoucherBySICommand.Parameters[0].Value.SetInt64(ASIID);
  FCreateCashVoucherBySICommand.Parameters[1].Value.AsDateTime := AVoucherDate;
  FCreateCashVoucherBySICommand.Parameters[2].Value.SetWideString(ASettleSide);
  FCreateCashVoucherBySICommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CreateCashVoucherAll(AVoucherDate: TDateTime; ABankAccID: Int64; ASettleSide: string);
begin
  if FCreateCashVoucherAllCommand = nil then
  begin
    FCreateCashVoucherAllCommand := FDBXConnection.CreateCommand;
    FCreateCashVoucherAllCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateCashVoucherAllCommand.Text := 'TSessionServerModule.CreateCashVoucherAll';
    FCreateCashVoucherAllCommand.Prepare;
  end;
  FCreateCashVoucherAllCommand.Parameters[0].Value.AsDateTime := AVoucherDate;
  FCreateCashVoucherAllCommand.Parameters[1].Value.SetInt64(ABankAccID);
  FCreateCashVoucherAllCommand.Parameters[2].Value.SetWideString(ASettleSide);
  FCreateCashVoucherAllCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CreateCashVoucherGroup(ASelectedID: string; AVoucherDate: TDateTime; ABankAccID: Int64; ASettleSide: string);
begin
  if FCreateCashVoucherGroupCommand = nil then
  begin
    FCreateCashVoucherGroupCommand := FDBXConnection.CreateCommand;
    FCreateCashVoucherGroupCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateCashVoucherGroupCommand.Text := 'TSessionServerModule.CreateCashVoucherGroup';
    FCreateCashVoucherGroupCommand.Prepare;
  end;
  FCreateCashVoucherGroupCommand.Parameters[0].Value.SetWideString(ASelectedID);
  FCreateCashVoucherGroupCommand.Parameters[1].Value.AsDateTime := AVoucherDate;
  FCreateCashVoucherGroupCommand.Parameters[2].Value.SetInt64(ABankAccID);
  FCreateCashVoucherGroupCommand.Parameters[3].Value.SetWideString(ASettleSide);
  FCreateCashVoucherGroupCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CreateStockVoucherBySI(ASIID: Int64; AVoucherDate: TDateTime; ASettleSide: string);
begin
  if FCreateStockVoucherBySICommand = nil then
  begin
    FCreateStockVoucherBySICommand := FDBXConnection.CreateCommand;
    FCreateStockVoucherBySICommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateStockVoucherBySICommand.Text := 'TSessionServerModule.CreateStockVoucherBySI';
    FCreateStockVoucherBySICommand.Prepare;
  end;
  FCreateStockVoucherBySICommand.Parameters[0].Value.SetInt64(ASIID);
  FCreateStockVoucherBySICommand.Parameters[1].Value.AsDateTime := AVoucherDate;
  FCreateStockVoucherBySICommand.Parameters[2].Value.SetWideString(ASettleSide);
  FCreateStockVoucherBySICommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CreateStockVoucherAll(AVoucherDate: TDateTime; ASettleSide: string);
begin
  if FCreateStockVoucherAllCommand = nil then
  begin
    FCreateStockVoucherAllCommand := FDBXConnection.CreateCommand;
    FCreateStockVoucherAllCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateStockVoucherAllCommand.Text := 'TSessionServerModule.CreateStockVoucherAll';
    FCreateStockVoucherAllCommand.Prepare;
  end;
  FCreateStockVoucherAllCommand.Parameters[0].Value.AsDateTime := AVoucherDate;
  FCreateStockVoucherAllCommand.Parameters[1].Value.SetWideString(ASettleSide);
  FCreateStockVoucherAllCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CreateStockVoucherGroup(ASelectedID: string; AVoucherDate: TDateTime; ASettleSide: string);
begin
  if FCreateStockVoucherGroupCommand = nil then
  begin
    FCreateStockVoucherGroupCommand := FDBXConnection.CreateCommand;
    FCreateStockVoucherGroupCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateStockVoucherGroupCommand.Text := 'TSessionServerModule.CreateStockVoucherGroup';
    FCreateStockVoucherGroupCommand.Prepare;
  end;
  FCreateStockVoucherGroupCommand.Parameters[0].Value.SetWideString(ASelectedID);
  FCreateStockVoucherGroupCommand.Parameters[1].Value.AsDateTime := AVoucherDate;
  FCreateStockVoucherGroupCommand.Parameters[2].Value.SetWideString(ASettleSide);
  FCreateStockVoucherGroupCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.StockVoucherPosting(AVoucherID: Int64);
begin
  if FStockVoucherPostingCommand = nil then
  begin
    FStockVoucherPostingCommand := FDBXConnection.CreateCommand;
    FStockVoucherPostingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockVoucherPostingCommand.Text := 'TSessionServerModule.StockVoucherPosting';
    FStockVoucherPostingCommand.Prepare;
  end;
  FStockVoucherPostingCommand.Parameters[0].Value.SetInt64(AVoucherID);
  FStockVoucherPostingCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CashVoucherPosting(AVoucherID: Int64);
begin
  if FCashVoucherPostingCommand = nil then
  begin
    FCashVoucherPostingCommand := FDBXConnection.CreateCommand;
    FCashVoucherPostingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashVoucherPostingCommand.Text := 'TSessionServerModule.CashVoucherPosting';
    FCashVoucherPostingCommand.Prepare;
  end;
  FCashVoucherPostingCommand.Parameters[0].Value.SetInt64(AVoucherID);
  FCashVoucherPostingCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.StockVoucherCancel(AVoucherID: Int64);
begin
  if FStockVoucherCancelCommand = nil then
  begin
    FStockVoucherCancelCommand := FDBXConnection.CreateCommand;
    FStockVoucherCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockVoucherCancelCommand.Text := 'TSessionServerModule.StockVoucherCancel';
    FStockVoucherCancelCommand.Prepare;
  end;
  FStockVoucherCancelCommand.Parameters[0].Value.SetInt64(AVoucherID);
  FStockVoucherCancelCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CashVoucherCancel(AVoucherID: Int64);
begin
  if FCashVoucherCancelCommand = nil then
  begin
    FCashVoucherCancelCommand := FDBXConnection.CreateCommand;
    FCashVoucherCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashVoucherCancelCommand.Text := 'TSessionServerModule.CashVoucherCancel';
    FCashVoucherCancelCommand.Prepare;
  end;
  FCashVoucherCancelCommand.Parameters[0].Value.SetInt64(AVoucherID);
  FCashVoucherCancelCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.ReverseBondsContract(AConBonID: Int64; out AMsg: string): Boolean;
begin
  if FReverseBondsContractCommand = nil then
  begin
    FReverseBondsContractCommand := FDBXConnection.CreateCommand;
    FReverseBondsContractCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseBondsContractCommand.Text := 'TSessionServerModule.ReverseBondsContract';
    FReverseBondsContractCommand.Prepare;
  end;
  FReverseBondsContractCommand.Parameters[0].Value.SetInt64(AConBonID);
  FReverseBondsContractCommand.ExecuteUpdate;
  AMsg := FReverseBondsContractCommand.Parameters[1].Value.GetWideString;
  Result := FReverseBondsContractCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashCorpactProcess(ACAID: Int64; out AMessage: string): Boolean;
begin
  if FCashCorpactProcessCommand = nil then
  begin
    FCashCorpactProcessCommand := FDBXConnection.CreateCommand;
    FCashCorpactProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashCorpactProcessCommand.Text := 'TSessionServerModule.CashCorpactProcess';
    FCashCorpactProcessCommand.Prepare;
  end;
  FCashCorpactProcessCommand.Parameters[0].Value.SetInt64(ACAID);
  FCashCorpactProcessCommand.ExecuteUpdate;
  AMessage := FCashCorpactProcessCommand.Parameters[1].Value.GetWideString;
  Result := FCashCorpactProcessCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.StockCorpactProcess(ACAID: Int64; out AMessage: string): Boolean;
begin
  if FStockCorpactProcessCommand = nil then
  begin
    FStockCorpactProcessCommand := FDBXConnection.CreateCommand;
    FStockCorpactProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockCorpactProcessCommand.Text := 'TSessionServerModule.StockCorpactProcess';
    FStockCorpactProcessCommand.Prepare;
  end;
  FStockCorpactProcessCommand.Parameters[0].Value.SetInt64(ACAID);
  FStockCorpactProcessCommand.ExecuteUpdate;
  AMessage := FStockCorpactProcessCommand.Parameters[1].Value.GetWideString;
  Result := FStockCorpactProcessCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.CorpactAlloc(ACAID: Int64; AACCID: Int64);
begin
  if FCorpactAllocCommand = nil then
  begin
    FCorpactAllocCommand := FDBXConnection.CreateCommand;
    FCorpactAllocCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCorpactAllocCommand.Text := 'TSessionServerModule.CorpactAlloc';
    FCorpactAllocCommand.Prepare;
  end;
  FCorpactAllocCommand.Parameters[0].Value.SetInt64(ACAID);
  FCorpactAllocCommand.Parameters[1].Value.SetInt64(AACCID);
  FCorpactAllocCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.CorpactEnt(ACAID: Int64; out AMessage: string): Boolean;
begin
  if FCorpactEntCommand = nil then
  begin
    FCorpactEntCommand := FDBXConnection.CreateCommand;
    FCorpactEntCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCorpactEntCommand.Text := 'TSessionServerModule.CorpactEnt';
    FCorpactEntCommand.Prepare;
  end;
  FCorpactEntCommand.Parameters[0].Value.SetInt64(ACAID);
  FCorpactEntCommand.ExecuteUpdate;
  AMessage := FCorpactEntCommand.Parameters[1].Value.GetWideString;
  Result := FCorpactEntCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GetVoucherNo(ATransDate: TDateTime; ASourceType: string; ASeqName: string): string;
begin
  if FGetVoucherNoCommand = nil then
  begin
    FGetVoucherNoCommand := FDBXConnection.CreateCommand;
    FGetVoucherNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetVoucherNoCommand.Text := 'TSessionServerModule.GetVoucherNo';
    FGetVoucherNoCommand.Prepare;
  end;
  FGetVoucherNoCommand.Parameters[0].Value.AsDateTime := ATransDate;
  FGetVoucherNoCommand.Parameters[1].Value.SetWideString(ASourceType);
  FGetVoucherNoCommand.Parameters[2].Value.SetWideString(ASeqName);
  FGetVoucherNoCommand.ExecuteUpdate;
  Result := FGetVoucherNoCommand.Parameters[3].Value.GetWideString;
end;

function TSessionServerModuleClient.UploadSungardAllTrade(AFileArray: TJSONArray; AFileName: string): Boolean;
begin
  if FUploadSungardAllTradeCommand = nil then
  begin
    FUploadSungardAllTradeCommand := FDBXConnection.CreateCommand;
    FUploadSungardAllTradeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadSungardAllTradeCommand.Text := 'TSessionServerModule.UploadSungardAllTrade';
    FUploadSungardAllTradeCommand.Prepare;
  end;
  FUploadSungardAllTradeCommand.Parameters[0].Value.SetJSONValue(AFileArray, FInstanceOwner);
  FUploadSungardAllTradeCommand.Parameters[1].Value.SetWideString(AFileName);
  FUploadSungardAllTradeCommand.ExecuteUpdate;
  Result := FUploadSungardAllTradeCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.UploadDHK(AFileArray: TJSONArray; AFileName: string): Boolean;
begin
  if FUploadDHKCommand = nil then
  begin
    FUploadDHKCommand := FDBXConnection.CreateCommand;
    FUploadDHKCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadDHKCommand.Text := 'TSessionServerModule.UploadDHK';
    FUploadDHKCommand.Prepare;
  end;
  FUploadDHKCommand.Parameters[0].Value.SetJSONValue(AFileArray, FInstanceOwner);
  FUploadDHKCommand.Parameters[1].Value.SetWideString(AFileName);
  FUploadDHKCommand.ExecuteUpdate;
  Result := FUploadDHKCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.UploadDTE(AFileArray: TJSONArray; AFileName: string): Boolean;
begin
  if FUploadDTECommand = nil then
  begin
    FUploadDTECommand := FDBXConnection.CreateCommand;
    FUploadDTECommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadDTECommand.Text := 'TSessionServerModule.UploadDTE';
    FUploadDTECommand.Prepare;
  end;
  FUploadDTECommand.Parameters[0].Value.SetJSONValue(AFileArray, FInstanceOwner);
  FUploadDTECommand.Parameters[1].Value.SetWideString(AFileName);
  FUploadDTECommand.ExecuteUpdate;
  Result := FUploadDTECommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.UploadFeedBackBank(AFileArray: TJSONArray; AFileName: string; ABankName: string): Boolean;
begin
  if FUploadFeedBackBankCommand = nil then
  begin
    FUploadFeedBackBankCommand := FDBXConnection.CreateCommand;
    FUploadFeedBackBankCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadFeedBackBankCommand.Text := 'TSessionServerModule.UploadFeedBackBank';
    FUploadFeedBackBankCommand.Prepare;
  end;
  FUploadFeedBackBankCommand.Parameters[0].Value.SetJSONValue(AFileArray, FInstanceOwner);
  FUploadFeedBackBankCommand.Parameters[1].Value.SetWideString(AFileName);
  FUploadFeedBackBankCommand.Parameters[2].Value.SetWideString(ABankName);
  FUploadFeedBackBankCommand.ExecuteUpdate;
  Result := FUploadFeedBackBankCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateDTFromIDXTradeAll(ATradeDate: TDateTime; AUser: string; out AMsg: string): Boolean;
begin
  if FGenerateDTFromIDXTradeAllCommand = nil then
  begin
    FGenerateDTFromIDXTradeAllCommand := FDBXConnection.CreateCommand;
    FGenerateDTFromIDXTradeAllCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateDTFromIDXTradeAllCommand.Text := 'TSessionServerModule.GenerateDTFromIDXTradeAll';
    FGenerateDTFromIDXTradeAllCommand.Prepare;
  end;
  FGenerateDTFromIDXTradeAllCommand.Parameters[0].Value.AsDateTime := ATradeDate;
  FGenerateDTFromIDXTradeAllCommand.Parameters[1].Value.SetWideString(AUser);
  FGenerateDTFromIDXTradeAllCommand.ExecuteUpdate;
  AMsg := FGenerateDTFromIDXTradeAllCommand.Parameters[2].Value.GetWideString;
  Result := FGenerateDTFromIDXTradeAllCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateDTFromIDXTradeSelected(ATradeID: string; ATradeDate: TDateTime; AUser: string): string;
begin
  if FGenerateDTFromIDXTradeSelectedCommand = nil then
  begin
    FGenerateDTFromIDXTradeSelectedCommand := FDBXConnection.CreateCommand;
    FGenerateDTFromIDXTradeSelectedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateDTFromIDXTradeSelectedCommand.Text := 'TSessionServerModule.GenerateDTFromIDXTradeSelected';
    FGenerateDTFromIDXTradeSelectedCommand.Prepare;
  end;
  FGenerateDTFromIDXTradeSelectedCommand.Parameters[0].Value.SetWideString(ATradeID);
  FGenerateDTFromIDXTradeSelectedCommand.Parameters[1].Value.AsDateTime := ATradeDate;
  FGenerateDTFromIDXTradeSelectedCommand.Parameters[2].Value.SetWideString(AUser);
  FGenerateDTFromIDXTradeSelectedCommand.ExecuteUpdate;
  Result := FGenerateDTFromIDXTradeSelectedCommand.Parameters[3].Value.GetWideString;
end;

function TSessionServerModuleClient.SendIPOContractByMail(AllotmentID: Integer): string;
begin
  if FSendIPOContractByMailCommand = nil then
  begin
    FSendIPOContractByMailCommand := FDBXConnection.CreateCommand;
    FSendIPOContractByMailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendIPOContractByMailCommand.Text := 'TSessionServerModule.SendIPOContractByMail';
    FSendIPOContractByMailCommand.Prepare;
  end;
  FSendIPOContractByMailCommand.Parameters[0].Value.SetInt32(AllotmentID);
  FSendIPOContractByMailCommand.ExecuteUpdate;
  Result := FSendIPOContractByMailCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.GetCCYRate(ATradeDate: TDateTime; ACCYCode: string): Double;
begin
  if FGetCCYRateCommand = nil then
  begin
    FGetCCYRateCommand := FDBXConnection.CreateCommand;
    FGetCCYRateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetCCYRateCommand.Text := 'TSessionServerModule.GetCCYRate';
    FGetCCYRateCommand.Prepare;
  end;
  FGetCCYRateCommand.Parameters[0].Value.AsDateTime := ATradeDate;
  FGetCCYRateCommand.Parameters[1].Value.SetWideString(ACCYCode);
  FGetCCYRateCommand.ExecuteUpdate;
  Result := FGetCCYRateCommand.Parameters[2].Value.GetDouble;
end;

procedure TSessionServerModuleClient.GetCurrentCcyRate(ACcyFrom: string; ACcyTo: string; out AValue: Double; out AInverseValue: Double);
begin
  if FGetCurrentCcyRateCommand = nil then
  begin
    FGetCurrentCcyRateCommand := FDBXConnection.CreateCommand;
    FGetCurrentCcyRateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetCurrentCcyRateCommand.Text := 'TSessionServerModule.GetCurrentCcyRate';
    FGetCurrentCcyRateCommand.Prepare;
  end;
  FGetCurrentCcyRateCommand.Parameters[0].Value.SetWideString(ACcyFrom);
  FGetCurrentCcyRateCommand.Parameters[1].Value.SetWideString(ACcyTo);
  FGetCurrentCcyRateCommand.ExecuteUpdate;
  AValue := FGetCurrentCcyRateCommand.Parameters[2].Value.GetDouble;
  AInverseValue := FGetCurrentCcyRateCommand.Parameters[3].Value.GetDouble;
end;

function TSessionServerModuleClient.UploadKSEIAccountData(AData: string): string;
begin
  if FUploadKSEIAccountDataCommand = nil then
  begin
    FUploadKSEIAccountDataCommand := FDBXConnection.CreateCommand;
    FUploadKSEIAccountDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadKSEIAccountDataCommand.Text := 'TSessionServerModule.UploadKSEIAccountData';
    FUploadKSEIAccountDataCommand.Prepare;
  end;
  FUploadKSEIAccountDataCommand.Parameters[0].Value.SetWideString(AData);
  FUploadKSEIAccountDataCommand.ExecuteUpdate;
  Result := FUploadKSEIAccountDataCommand.Parameters[1].Value.GetWideString;
end;

procedure TSessionServerModuleClient.CreateSIforRightExercise(ACAID: Int64; AEXERNO: string; ATradeDate: TDateTime);
begin
  if FCreateSIforRightExerciseCommand = nil then
  begin
    FCreateSIforRightExerciseCommand := FDBXConnection.CreateCommand;
    FCreateSIforRightExerciseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateSIforRightExerciseCommand.Text := 'TSessionServerModule.CreateSIforRightExercise';
    FCreateSIforRightExerciseCommand.Prepare;
  end;
  FCreateSIforRightExerciseCommand.Parameters[0].Value.SetInt64(ACAID);
  FCreateSIforRightExerciseCommand.Parameters[1].Value.SetWideString(AEXERNO);
  FCreateSIforRightExerciseCommand.Parameters[2].Value.AsDateTime := ATradeDate;
  FCreateSIforRightExerciseCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.ExerciseToFinance(ACAID: Int64; AEXERNO: string; ATradeDate: TDateTime; out AMessage: string): Boolean;
begin
  if FExerciseToFinanceCommand = nil then
  begin
    FExerciseToFinanceCommand := FDBXConnection.CreateCommand;
    FExerciseToFinanceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExerciseToFinanceCommand.Text := 'TSessionServerModule.ExerciseToFinance';
    FExerciseToFinanceCommand.Prepare;
  end;
  FExerciseToFinanceCommand.Parameters[0].Value.SetInt64(ACAID);
  FExerciseToFinanceCommand.Parameters[1].Value.SetWideString(AEXERNO);
  FExerciseToFinanceCommand.Parameters[2].Value.AsDateTime := ATradeDate;
  FExerciseToFinanceCommand.ExecuteUpdate;
  AMessage := FExerciseToFinanceCommand.Parameters[3].Value.GetWideString;
  Result := FExerciseToFinanceCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateBankInstructionForExercise(ACAID: Int64; AExerNo: string; ATradeDate: TDateTime; out AMessage: string): Boolean;
begin
  if FGenerateBankInstructionForExerciseCommand = nil then
  begin
    FGenerateBankInstructionForExerciseCommand := FDBXConnection.CreateCommand;
    FGenerateBankInstructionForExerciseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateBankInstructionForExerciseCommand.Text := 'TSessionServerModule.GenerateBankInstructionForExercise';
    FGenerateBankInstructionForExerciseCommand.Prepare;
  end;
  FGenerateBankInstructionForExerciseCommand.Parameters[0].Value.SetInt64(ACAID);
  FGenerateBankInstructionForExerciseCommand.Parameters[1].Value.SetWideString(AExerNo);
  FGenerateBankInstructionForExerciseCommand.Parameters[2].Value.AsDateTime := ATradeDate;
  FGenerateBankInstructionForExerciseCommand.ExecuteUpdate;
  AMessage := FGenerateBankInstructionForExerciseCommand.Parameters[3].Value.GetWideString;
  Result := FGenerateBankInstructionForExerciseCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateBankInstructionForExerciseWarrant(ACAID: Int64; AExerNo: string; ATradeDate: TDateTime; out AMessage: string): Boolean;
begin
  if FGenerateBankInstructionForExerciseWarrantCommand = nil then
  begin
    FGenerateBankInstructionForExerciseWarrantCommand := FDBXConnection.CreateCommand;
    FGenerateBankInstructionForExerciseWarrantCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateBankInstructionForExerciseWarrantCommand.Text := 'TSessionServerModule.GenerateBankInstructionForExerciseWarrant';
    FGenerateBankInstructionForExerciseWarrantCommand.Prepare;
  end;
  FGenerateBankInstructionForExerciseWarrantCommand.Parameters[0].Value.SetInt64(ACAID);
  FGenerateBankInstructionForExerciseWarrantCommand.Parameters[1].Value.SetWideString(AExerNo);
  FGenerateBankInstructionForExerciseWarrantCommand.Parameters[2].Value.AsDateTime := ATradeDate;
  FGenerateBankInstructionForExerciseWarrantCommand.ExecuteUpdate;
  AMessage := FGenerateBankInstructionForExerciseWarrantCommand.Parameters[3].Value.GetWideString;
  Result := FGenerateBankInstructionForExerciseWarrantCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateBookInstructionForExercise(ACAID: Int64; AExerNo: string; ATradeDate: TDateTime; out AMessage: string): Boolean;
begin
  if FGenerateBookInstructionForExerciseCommand = nil then
  begin
    FGenerateBookInstructionForExerciseCommand := FDBXConnection.CreateCommand;
    FGenerateBookInstructionForExerciseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateBookInstructionForExerciseCommand.Text := 'TSessionServerModule.GenerateBookInstructionForExercise';
    FGenerateBookInstructionForExerciseCommand.Prepare;
  end;
  FGenerateBookInstructionForExerciseCommand.Parameters[0].Value.SetInt64(ACAID);
  FGenerateBookInstructionForExerciseCommand.Parameters[1].Value.SetWideString(AExerNo);
  FGenerateBookInstructionForExerciseCommand.Parameters[2].Value.AsDateTime := ATradeDate;
  FGenerateBookInstructionForExerciseCommand.ExecuteUpdate;
  AMessage := FGenerateBookInstructionForExerciseCommand.Parameters[3].Value.GetWideString;
  Result := FGenerateBookInstructionForExerciseCommand.Parameters[4].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.RegisterCallbackInfo(ClientID: string; CallbackID: string);
begin
  if FRegisterCallbackInfoCommand = nil then
  begin
    FRegisterCallbackInfoCommand := FDBXConnection.CreateCommand;
    FRegisterCallbackInfoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRegisterCallbackInfoCommand.Text := 'TSessionServerModule.RegisterCallbackInfo';
    FRegisterCallbackInfoCommand.Prepare;
  end;
  FRegisterCallbackInfoCommand.Parameters[0].Value.SetWideString(ClientID);
  FRegisterCallbackInfoCommand.Parameters[1].Value.SetWideString(CallbackID);
  FRegisterCallbackInfoCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.SungardAllTrade: string;
begin
  if FSungardAllTradeCommand = nil then
  begin
    FSungardAllTradeCommand := FDBXConnection.CreateCommand;
    FSungardAllTradeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSungardAllTradeCommand.Text := 'TSessionServerModule.SungardAllTrade';
    FSungardAllTradeCommand.Prepare;
  end;
  FSungardAllTradeCommand.ExecuteUpdate;
  Result := FSungardAllTradeCommand.Parameters[0].Value.GetWideString;
end;

function TSessionServerModuleClient.ConfirmIPOAllotment(AllotmentID: Integer): Boolean;
begin
  if FConfirmIPOAllotmentCommand = nil then
  begin
    FConfirmIPOAllotmentCommand := FDBXConnection.CreateCommand;
    FConfirmIPOAllotmentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FConfirmIPOAllotmentCommand.Text := 'TSessionServerModule.ConfirmIPOAllotment';
    FConfirmIPOAllotmentCommand.Prepare;
  end;
  FConfirmIPOAllotmentCommand.Parameters[0].Value.SetInt32(AllotmentID);
  FConfirmIPOAllotmentCommand.ExecuteUpdate;
  Result := FConfirmIPOAllotmentCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.PostedFinanceIPOAllotment(AllotmentID: Integer): Boolean;
begin
  if FPostedFinanceIPOAllotmentCommand = nil then
  begin
    FPostedFinanceIPOAllotmentCommand := FDBXConnection.CreateCommand;
    FPostedFinanceIPOAllotmentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostedFinanceIPOAllotmentCommand.Text := 'TSessionServerModule.PostedFinanceIPOAllotment';
    FPostedFinanceIPOAllotmentCommand.Prepare;
  end;
  FPostedFinanceIPOAllotmentCommand.Parameters[0].Value.SetInt32(AllotmentID);
  FPostedFinanceIPOAllotmentCommand.ExecuteUpdate;
  Result := FPostedFinanceIPOAllotmentCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateVoucherIPOAllotment(AllotmentID: Integer): Boolean;
begin
  if FCreateVoucherIPOAllotmentCommand = nil then
  begin
    FCreateVoucherIPOAllotmentCommand := FDBXConnection.CreateCommand;
    FCreateVoucherIPOAllotmentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateVoucherIPOAllotmentCommand.Text := 'TSessionServerModule.CreateVoucherIPOAllotment';
    FCreateVoucherIPOAllotmentCommand.Prepare;
  end;
  FCreateVoucherIPOAllotmentCommand.Parameters[0].Value.SetInt32(AllotmentID);
  FCreateVoucherIPOAllotmentCommand.ExecuteUpdate;
  Result := FCreateVoucherIPOAllotmentCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.CancelIPOAllotment(AllotmentID: Integer): Boolean;
begin
  if FCancelIPOAllotmentCommand = nil then
  begin
    FCancelIPOAllotmentCommand := FDBXConnection.CreateCommand;
    FCancelIPOAllotmentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCancelIPOAllotmentCommand.Text := 'TSessionServerModule.CancelIPOAllotment';
    FCancelIPOAllotmentCommand.Prepare;
  end;
  FCancelIPOAllotmentCommand.Parameters[0].Value.SetInt32(AllotmentID);
  FCancelIPOAllotmentCommand.ExecuteUpdate;
  Result := FCancelIPOAllotmentCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.ConfirmIPOPooling(PoolingID: Integer): Boolean;
begin
  if FConfirmIPOPoolingCommand = nil then
  begin
    FConfirmIPOPoolingCommand := FDBXConnection.CreateCommand;
    FConfirmIPOPoolingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FConfirmIPOPoolingCommand.Text := 'TSessionServerModule.ConfirmIPOPooling';
    FConfirmIPOPoolingCommand.Prepare;
  end;
  FConfirmIPOPoolingCommand.Parameters[0].Value.SetInt32(PoolingID);
  FConfirmIPOPoolingCommand.ExecuteUpdate;
  Result := FConfirmIPOPoolingCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.PostedFinanceIPOPooling(PoolingID: Integer): Boolean;
begin
  if FPostedFinanceIPOPoolingCommand = nil then
  begin
    FPostedFinanceIPOPoolingCommand := FDBXConnection.CreateCommand;
    FPostedFinanceIPOPoolingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostedFinanceIPOPoolingCommand.Text := 'TSessionServerModule.PostedFinanceIPOPooling';
    FPostedFinanceIPOPoolingCommand.Prepare;
  end;
  FPostedFinanceIPOPoolingCommand.Parameters[0].Value.SetInt32(PoolingID);
  FPostedFinanceIPOPoolingCommand.ExecuteUpdate;
  Result := FPostedFinanceIPOPoolingCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateVoucherIPOPooling(PoolingID: Integer): Boolean;
begin
  if FCreateVoucherIPOPoolingCommand = nil then
  begin
    FCreateVoucherIPOPoolingCommand := FDBXConnection.CreateCommand;
    FCreateVoucherIPOPoolingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateVoucherIPOPoolingCommand.Text := 'TSessionServerModule.CreateVoucherIPOPooling';
    FCreateVoucherIPOPoolingCommand.Prepare;
  end;
  FCreateVoucherIPOPoolingCommand.Parameters[0].Value.SetInt32(PoolingID);
  FCreateVoucherIPOPoolingCommand.ExecuteUpdate;
  Result := FCreateVoucherIPOPoolingCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.CancelIPOPooling(PoolingID: Integer): Boolean;
begin
  if FCancelIPOPoolingCommand = nil then
  begin
    FCancelIPOPoolingCommand := FDBXConnection.CreateCommand;
    FCancelIPOPoolingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCancelIPOPoolingCommand.Text := 'TSessionServerModule.CancelIPOPooling';
    FCancelIPOPoolingCommand.Prepare;
  end;
  FCancelIPOPoolingCommand.Parameters[0].Value.SetInt32(PoolingID);
  FCancelIPOPoolingCommand.ExecuteUpdate;
  Result := FCancelIPOPoolingCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateVoucherIPOAllotment(AIPOID: Integer; out AMsg: string): Boolean;
begin
  if FGenerateVoucherIPOAllotmentCommand = nil then
  begin
    FGenerateVoucherIPOAllotmentCommand := FDBXConnection.CreateCommand;
    FGenerateVoucherIPOAllotmentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateVoucherIPOAllotmentCommand.Text := 'TSessionServerModule.GenerateVoucherIPOAllotment';
    FGenerateVoucherIPOAllotmentCommand.Prepare;
  end;
  FGenerateVoucherIPOAllotmentCommand.Parameters[0].Value.SetInt32(AIPOID);
  FGenerateVoucherIPOAllotmentCommand.ExecuteUpdate;
  AMsg := FGenerateVoucherIPOAllotmentCommand.Parameters[1].Value.GetWideString;
  Result := FGenerateVoucherIPOAllotmentCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateVoucherIPOPooling(AIPOID: Integer; out AMsg: string): Boolean;
begin
  if FGenerateVoucherIPOPoolingCommand = nil then
  begin
    FGenerateVoucherIPOPoolingCommand := FDBXConnection.CreateCommand;
    FGenerateVoucherIPOPoolingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateVoucherIPOPoolingCommand.Text := 'TSessionServerModule.GenerateVoucherIPOPooling';
    FGenerateVoucherIPOPoolingCommand.Prepare;
  end;
  FGenerateVoucherIPOPoolingCommand.Parameters[0].Value.SetInt32(AIPOID);
  FGenerateVoucherIPOPoolingCommand.ExecuteUpdate;
  AMsg := FGenerateVoucherIPOPoolingCommand.Parameters[1].Value.GetWideString;
  Result := FGenerateVoucherIPOPoolingCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.EIPOApproved(ATransDate: TDateTime; out AMsg: string): Boolean;
begin
  if FEIPOApprovedCommand = nil then
  begin
    FEIPOApprovedCommand := FDBXConnection.CreateCommand;
    FEIPOApprovedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEIPOApprovedCommand.Text := 'TSessionServerModule.EIPOApproved';
    FEIPOApprovedCommand.Prepare;
  end;
  FEIPOApprovedCommand.Parameters[0].Value.AsDateTime := ATransDate;
  FEIPOApprovedCommand.ExecuteUpdate;
  AMsg := FEIPOApprovedCommand.Parameters[1].Value.GetWideString;
  Result := FEIPOApprovedCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.EIPOCanceled(AIPOID: Int64; out AMsg: string): Boolean;
begin
  if FEIPOCanceledCommand = nil then
  begin
    FEIPOCanceledCommand := FDBXConnection.CreateCommand;
    FEIPOCanceledCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEIPOCanceledCommand.Text := 'TSessionServerModule.EIPOCanceled';
    FEIPOCanceledCommand.Prepare;
  end;
  FEIPOCanceledCommand.Parameters[0].Value.SetInt64(AIPOID);
  FEIPOCanceledCommand.ExecuteUpdate;
  AMsg := FEIPOCanceledCommand.Parameters[1].Value.GetWideString;
  Result := FEIPOCanceledCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.EIPOAllotment(ATransDate: TDateTime; out AMsg: string): Boolean;
begin
  if FEIPOAllotmentCommand = nil then
  begin
    FEIPOAllotmentCommand := FDBXConnection.CreateCommand;
    FEIPOAllotmentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEIPOAllotmentCommand.Text := 'TSessionServerModule.EIPOAllotment';
    FEIPOAllotmentCommand.Prepare;
  end;
  FEIPOAllotmentCommand.Parameters[0].Value.AsDateTime := ATransDate;
  FEIPOAllotmentCommand.ExecuteUpdate;
  AMsg := FEIPOAllotmentCommand.Parameters[1].Value.GetWideString;
  Result := FEIPOAllotmentCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.EIPODistribution(ATransDate: TDateTime; out AMsg: string): Boolean;
begin
  if FEIPODistributionCommand = nil then
  begin
    FEIPODistributionCommand := FDBXConnection.CreateCommand;
    FEIPODistributionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEIPODistributionCommand.Text := 'TSessionServerModule.EIPODistribution';
    FEIPODistributionCommand.Prepare;
  end;
  FEIPODistributionCommand.Parameters[0].Value.AsDateTime := ATransDate;
  FEIPODistributionCommand.ExecuteUpdate;
  AMsg := FEIPODistributionCommand.Parameters[1].Value.GetWideString;
  Result := FEIPODistributionCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.EIPOAllotmentUpdate(ADate: TDateTime; AAccID: Int64; AStockID: Int64; AQty: Double; APrice: Double; AAmount: Double; out AMsg: string): Boolean;
begin
  if FEIPOAllotmentUpdateCommand = nil then
  begin
    FEIPOAllotmentUpdateCommand := FDBXConnection.CreateCommand;
    FEIPOAllotmentUpdateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEIPOAllotmentUpdateCommand.Text := 'TSessionServerModule.EIPOAllotmentUpdate';
    FEIPOAllotmentUpdateCommand.Prepare;
  end;
  FEIPOAllotmentUpdateCommand.Parameters[0].Value.AsDateTime := ADate;
  FEIPOAllotmentUpdateCommand.Parameters[1].Value.SetInt64(AAccID);
  FEIPOAllotmentUpdateCommand.Parameters[2].Value.SetInt64(AStockID);
  FEIPOAllotmentUpdateCommand.Parameters[3].Value.SetDouble(AQty);
  FEIPOAllotmentUpdateCommand.Parameters[4].Value.SetDouble(APrice);
  FEIPOAllotmentUpdateCommand.Parameters[5].Value.SetDouble(AAmount);
  FEIPOAllotmentUpdateCommand.ExecuteUpdate;
  AMsg := FEIPOAllotmentUpdateCommand.Parameters[6].Value.GetWideString;
  Result := FEIPOAllotmentUpdateCommand.Parameters[7].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.GeneratePortfolioM2M(ATrdDate: TDateTime; ACCYCode: string; AMarketCode: string; AInstrumentGroupType: string);
begin
  if FGeneratePortfolioM2MCommand = nil then
  begin
    FGeneratePortfolioM2MCommand := FDBXConnection.CreateCommand;
    FGeneratePortfolioM2MCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGeneratePortfolioM2MCommand.Text := 'TSessionServerModule.GeneratePortfolioM2M';
    FGeneratePortfolioM2MCommand.Prepare;
  end;
  FGeneratePortfolioM2MCommand.Parameters[0].Value.AsDateTime := ATrdDate;
  FGeneratePortfolioM2MCommand.Parameters[1].Value.SetWideString(ACCYCode);
  FGeneratePortfolioM2MCommand.Parameters[2].Value.SetWideString(AMarketCode);
  FGeneratePortfolioM2MCommand.Parameters[3].Value.SetWideString(AInstrumentGroupType);
  FGeneratePortfolioM2MCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.PortofolioExecute(ATrdDate: TDateTime; ACCYCode: string; AMarketCode: string; AInstrumentGroupType: string);
begin
  if FPortofolioExecuteCommand = nil then
  begin
    FPortofolioExecuteCommand := FDBXConnection.CreateCommand;
    FPortofolioExecuteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPortofolioExecuteCommand.Text := 'TSessionServerModule.PortofolioExecute';
    FPortofolioExecuteCommand.Prepare;
  end;
  FPortofolioExecuteCommand.Parameters[0].Value.AsDateTime := ATrdDate;
  FPortofolioExecuteCommand.Parameters[1].Value.SetWideString(ACCYCode);
  FPortofolioExecuteCommand.Parameters[2].Value.SetWideString(AMarketCode);
  FPortofolioExecuteCommand.Parameters[3].Value.SetWideString(AInstrumentGroupType);
  FPortofolioExecuteCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.CorpactDistributionProcess(ACAID: Int64; out AMessage: string): Boolean;
begin
  if FCorpactDistributionProcessCommand = nil then
  begin
    FCorpactDistributionProcessCommand := FDBXConnection.CreateCommand;
    FCorpactDistributionProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCorpactDistributionProcessCommand.Text := 'TSessionServerModule.CorpactDistributionProcess';
    FCorpactDistributionProcessCommand.Prepare;
  end;
  FCorpactDistributionProcessCommand.Parameters[0].Value.SetInt64(ACAID);
  FCorpactDistributionProcessCommand.ExecuteUpdate;
  AMessage := FCorpactDistributionProcessCommand.Parameters[1].Value.GetWideString;
  Result := FCorpactDistributionProcessCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.InterestDiscount(AInterestID: Int64; ADiscAmount: Double; ADiscDate: TDateTime);
begin
  if FInterestDiscountCommand = nil then
  begin
    FInterestDiscountCommand := FDBXConnection.CreateCommand;
    FInterestDiscountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInterestDiscountCommand.Text := 'TSessionServerModule.InterestDiscount';
    FInterestDiscountCommand.Prepare;
  end;
  FInterestDiscountCommand.Parameters[0].Value.SetInt64(AInterestID);
  FInterestDiscountCommand.Parameters[1].Value.SetDouble(ADiscAmount);
  FInterestDiscountCommand.Parameters[2].Value.AsDateTime := ADiscDate;
  FInterestDiscountCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.GenerateInterest(APeriodID: Integer; AAccID: Integer; ACCYCode: string; out AMsg: string): Boolean;
begin
  if FGenerateInterestCommand = nil then
  begin
    FGenerateInterestCommand := FDBXConnection.CreateCommand;
    FGenerateInterestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateInterestCommand.Text := 'TSessionServerModule.GenerateInterest';
    FGenerateInterestCommand.Prepare;
  end;
  FGenerateInterestCommand.Parameters[0].Value.SetInt32(APeriodID);
  FGenerateInterestCommand.Parameters[1].Value.SetInt32(AAccID);
  FGenerateInterestCommand.Parameters[2].Value.SetWideString(ACCYCode);
  FGenerateInterestCommand.ExecuteUpdate;
  AMsg := FGenerateInterestCommand.Parameters[3].Value.GetWideString;
  Result := FGenerateInterestCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.GLTradePostingByJournalType(ATradeDate: TDateTime; AJournalType: string; out AMsg: string): Boolean;
begin
  if FGLTradePostingByJournalTypeCommand = nil then
  begin
    FGLTradePostingByJournalTypeCommand := FDBXConnection.CreateCommand;
    FGLTradePostingByJournalTypeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGLTradePostingByJournalTypeCommand.Text := 'TSessionServerModule.GLTradePostingByJournalType';
    FGLTradePostingByJournalTypeCommand.Prepare;
  end;
  FGLTradePostingByJournalTypeCommand.Parameters[0].Value.AsDateTime := ATradeDate;
  FGLTradePostingByJournalTypeCommand.Parameters[1].Value.SetWideString(AJournalType);
  FGLTradePostingByJournalTypeCommand.ExecuteUpdate;
  AMsg := FGLTradePostingByJournalTypeCommand.Parameters[2].Value.GetWideString;
  Result := FGLTradePostingByJournalTypeCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.PostingDebetCreditNote(ACDBCRID: Int64): string;
begin
  if FPostingDebetCreditNoteCommand = nil then
  begin
    FPostingDebetCreditNoteCommand := FDBXConnection.CreateCommand;
    FPostingDebetCreditNoteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostingDebetCreditNoteCommand.Text := 'TSessionServerModule.PostingDebetCreditNote';
    FPostingDebetCreditNoteCommand.Prepare;
  end;
  FPostingDebetCreditNoteCommand.Parameters[0].Value.SetInt64(ACDBCRID);
  FPostingDebetCreditNoteCommand.ExecuteUpdate;
  Result := FPostingDebetCreditNoteCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.PostingStockMovement(ASMID: Integer; out AMsg: string): Boolean;
begin
  if FPostingStockMovementCommand = nil then
  begin
    FPostingStockMovementCommand := FDBXConnection.CreateCommand;
    FPostingStockMovementCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostingStockMovementCommand.Text := 'TSessionServerModule.PostingStockMovement';
    FPostingStockMovementCommand.Prepare;
  end;
  FPostingStockMovementCommand.Parameters[0].Value.SetInt32(ASMID);
  FPostingStockMovementCommand.ExecuteUpdate;
  AMsg := FPostingStockMovementCommand.Parameters[1].Value.GetWideString;
  Result := FPostingStockMovementCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateAllReceiveCashVoucher(ADueDate: TDateTime; ASettleType: string; AAllSettleType: string; ABusCat: Int64; AAllBussCat: string; AVoucherType: string): string;
begin
  if FCreateAllReceiveCashVoucherCommand = nil then
  begin
    FCreateAllReceiveCashVoucherCommand := FDBXConnection.CreateCommand;
    FCreateAllReceiveCashVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateAllReceiveCashVoucherCommand.Text := 'TSessionServerModule.CreateAllReceiveCashVoucher';
    FCreateAllReceiveCashVoucherCommand.Prepare;
  end;
  FCreateAllReceiveCashVoucherCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FCreateAllReceiveCashVoucherCommand.Parameters[1].Value.SetWideString(ASettleType);
  FCreateAllReceiveCashVoucherCommand.Parameters[2].Value.SetWideString(AAllSettleType);
  FCreateAllReceiveCashVoucherCommand.Parameters[3].Value.SetInt64(ABusCat);
  FCreateAllReceiveCashVoucherCommand.Parameters[4].Value.SetWideString(AAllBussCat);
  FCreateAllReceiveCashVoucherCommand.Parameters[5].Value.SetWideString(AVoucherType);
  FCreateAllReceiveCashVoucherCommand.ExecuteUpdate;
  Result := FCreateAllReceiveCashVoucherCommand.Parameters[6].Value.GetWideString;
end;

function TSessionServerModuleClient.SettleOTCInstruction(ACustodyinstrID: string; AStockID: string; AStockType: string): string;
begin
  if FSettleOTCInstructionCommand = nil then
  begin
    FSettleOTCInstructionCommand := FDBXConnection.CreateCommand;
    FSettleOTCInstructionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSettleOTCInstructionCommand.Text := 'TSessionServerModule.SettleOTCInstruction';
    FSettleOTCInstructionCommand.Prepare;
  end;
  FSettleOTCInstructionCommand.Parameters[0].Value.SetWideString(ACustodyinstrID);
  FSettleOTCInstructionCommand.Parameters[1].Value.SetWideString(AStockID);
  FSettleOTCInstructionCommand.Parameters[2].Value.SetWideString(AStockType);
  FSettleOTCInstructionCommand.ExecuteUpdate;
  Result := FSettleOTCInstructionCommand.Parameters[3].Value.GetWideString;
end;

function TSessionServerModuleClient.UploadHaircut(AFileArray: TJSONArray; AFileName: string): Boolean;
begin
  if FUploadHaircutCommand = nil then
  begin
    FUploadHaircutCommand := FDBXConnection.CreateCommand;
    FUploadHaircutCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadHaircutCommand.Text := 'TSessionServerModule.UploadHaircut';
    FUploadHaircutCommand.Prepare;
  end;
  FUploadHaircutCommand.Parameters[0].Value.SetJSONValue(AFileArray, FInstanceOwner);
  FUploadHaircutCommand.Parameters[1].Value.SetWideString(AFileName);
  FUploadHaircutCommand.ExecuteUpdate;
  Result := FUploadHaircutCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GetMaxClosePrice(ATransDate: TDateTime; ADay: Integer; AStockCode: string): Double;
begin
  if FGetMaxClosePriceCommand = nil then
  begin
    FGetMaxClosePriceCommand := FDBXConnection.CreateCommand;
    FGetMaxClosePriceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetMaxClosePriceCommand.Text := 'TSessionServerModule.GetMaxClosePrice';
    FGetMaxClosePriceCommand.Prepare;
  end;
  FGetMaxClosePriceCommand.Parameters[0].Value.AsDateTime := ATransDate;
  FGetMaxClosePriceCommand.Parameters[1].Value.SetInt32(ADay);
  FGetMaxClosePriceCommand.Parameters[2].Value.SetWideString(AStockCode);
  FGetMaxClosePriceCommand.ExecuteUpdate;
  Result := FGetMaxClosePriceCommand.Parameters[3].Value.GetDouble;
end;

function TSessionServerModuleClient.MergeCustodyInstr(AMulty: string; AOldCustID: Int64; ANewCustID: Int64; AQty: Double; AAmount: Double; AExtRef: string; AOrigAmt: Double): string;
begin
  if FMergeCustodyInstrCommand = nil then
  begin
    FMergeCustodyInstrCommand := FDBXConnection.CreateCommand;
    FMergeCustodyInstrCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMergeCustodyInstrCommand.Text := 'TSessionServerModule.MergeCustodyInstr';
    FMergeCustodyInstrCommand.Prepare;
  end;
  FMergeCustodyInstrCommand.Parameters[0].Value.SetWideString(AMulty);
  FMergeCustodyInstrCommand.Parameters[1].Value.SetInt64(AOldCustID);
  FMergeCustodyInstrCommand.Parameters[2].Value.SetInt64(ANewCustID);
  FMergeCustodyInstrCommand.Parameters[3].Value.SetDouble(AQty);
  FMergeCustodyInstrCommand.Parameters[4].Value.SetDouble(AAmount);
  FMergeCustodyInstrCommand.Parameters[5].Value.SetWideString(AExtRef);
  FMergeCustodyInstrCommand.Parameters[6].Value.SetDouble(AOrigAmt);
  FMergeCustodyInstrCommand.ExecuteUpdate;
  Result := FMergeCustodyInstrCommand.Parameters[7].Value.GetWideString;
end;

function TSessionServerModuleClient.GenerateCustdInstrNo(ATransDate: TDateTime; AINSTRUCTION_MODE: string; ASeqName: string): string;
begin
  if FGenerateCustdInstrNoCommand = nil then
  begin
    FGenerateCustdInstrNoCommand := FDBXConnection.CreateCommand;
    FGenerateCustdInstrNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateCustdInstrNoCommand.Text := 'TSessionServerModule.GenerateCustdInstrNo';
    FGenerateCustdInstrNoCommand.Prepare;
  end;
  FGenerateCustdInstrNoCommand.Parameters[0].Value.AsDateTime := ATransDate;
  FGenerateCustdInstrNoCommand.Parameters[1].Value.SetWideString(AINSTRUCTION_MODE);
  FGenerateCustdInstrNoCommand.Parameters[2].Value.SetWideString(ASeqName);
  FGenerateCustdInstrNoCommand.ExecuteUpdate;
  Result := FGenerateCustdInstrNoCommand.Parameters[3].Value.GetWideString;
end;

function TSessionServerModuleClient.CreateBalanceFromSplit(AAccID: Int64; AValueDate: TDateTime; ACustody_InstrID: Int64; AExtRef: string; AStockCode: string; ACCYCode: string; AAmount: Double): string;
begin
  if FCreateBalanceFromSplitCommand = nil then
  begin
    FCreateBalanceFromSplitCommand := FDBXConnection.CreateCommand;
    FCreateBalanceFromSplitCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateBalanceFromSplitCommand.Text := 'TSessionServerModule.CreateBalanceFromSplit';
    FCreateBalanceFromSplitCommand.Prepare;
  end;
  FCreateBalanceFromSplitCommand.Parameters[0].Value.SetInt64(AAccID);
  FCreateBalanceFromSplitCommand.Parameters[1].Value.AsDateTime := AValueDate;
  FCreateBalanceFromSplitCommand.Parameters[2].Value.SetInt64(ACustody_InstrID);
  FCreateBalanceFromSplitCommand.Parameters[3].Value.SetWideString(AExtRef);
  FCreateBalanceFromSplitCommand.Parameters[4].Value.SetWideString(AStockCode);
  FCreateBalanceFromSplitCommand.Parameters[5].Value.SetWideString(ACCYCode);
  FCreateBalanceFromSplitCommand.Parameters[6].Value.SetDouble(AAmount);
  FCreateBalanceFromSplitCommand.ExecuteUpdate;
  Result := FCreateBalanceFromSplitCommand.Parameters[7].Value.GetWideString;
end;

function TSessionServerModuleClient.CreateSIFromSplit(AAccID: Int64; AValueDate: TDateTime; ACustody_InstrID: Int64; ACUSTODY_EXTREF: string; AStockCode: string; ABASE_AMT: Double; ACCYCode: string; AISMULTICCY: string; AFOREIGN_CCY: string; AFOREIGN_EXRATE: Double; AFOREIGN_SETTLEAMOUNT: Double; ASettleSide: string): string;
begin
  if FCreateSIFromSplitCommand = nil then
  begin
    FCreateSIFromSplitCommand := FDBXConnection.CreateCommand;
    FCreateSIFromSplitCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateSIFromSplitCommand.Text := 'TSessionServerModule.CreateSIFromSplit';
    FCreateSIFromSplitCommand.Prepare;
  end;
  FCreateSIFromSplitCommand.Parameters[0].Value.SetInt64(AAccID);
  FCreateSIFromSplitCommand.Parameters[1].Value.AsDateTime := AValueDate;
  FCreateSIFromSplitCommand.Parameters[2].Value.SetInt64(ACustody_InstrID);
  FCreateSIFromSplitCommand.Parameters[3].Value.SetWideString(ACUSTODY_EXTREF);
  FCreateSIFromSplitCommand.Parameters[4].Value.SetWideString(AStockCode);
  FCreateSIFromSplitCommand.Parameters[5].Value.SetDouble(ABASE_AMT);
  FCreateSIFromSplitCommand.Parameters[6].Value.SetWideString(ACCYCode);
  FCreateSIFromSplitCommand.Parameters[7].Value.SetWideString(AISMULTICCY);
  FCreateSIFromSplitCommand.Parameters[8].Value.SetWideString(AFOREIGN_CCY);
  FCreateSIFromSplitCommand.Parameters[9].Value.SetDouble(AFOREIGN_EXRATE);
  FCreateSIFromSplitCommand.Parameters[10].Value.SetDouble(AFOREIGN_SETTLEAMOUNT);
  FCreateSIFromSplitCommand.Parameters[11].Value.SetWideString(ASettleSide);
  FCreateSIFromSplitCommand.ExecuteUpdate;
  Result := FCreateSIFromSplitCommand.Parameters[12].Value.GetWideString;
end;

function TSessionServerModuleClient.GenerateDistributionIPOFixAllotment(AIPOID: Int64; out AMsg: string): Boolean;
begin
  if FGenerateDistributionIPOFixAllotmentCommand = nil then
  begin
    FGenerateDistributionIPOFixAllotmentCommand := FDBXConnection.CreateCommand;
    FGenerateDistributionIPOFixAllotmentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateDistributionIPOFixAllotmentCommand.Text := 'TSessionServerModule.GenerateDistributionIPOFixAllotment';
    FGenerateDistributionIPOFixAllotmentCommand.Prepare;
  end;
  FGenerateDistributionIPOFixAllotmentCommand.Parameters[0].Value.SetInt64(AIPOID);
  FGenerateDistributionIPOFixAllotmentCommand.ExecuteUpdate;
  AMsg := FGenerateDistributionIPOFixAllotmentCommand.Parameters[1].Value.GetWideString;
  Result := FGenerateDistributionIPOFixAllotmentCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateDistributionIPOPooling(AIPOID: Int64; out AMsg: string): Boolean;
begin
  if FGenerateDistributionIPOPoolingCommand = nil then
  begin
    FGenerateDistributionIPOPoolingCommand := FDBXConnection.CreateCommand;
    FGenerateDistributionIPOPoolingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateDistributionIPOPoolingCommand.Text := 'TSessionServerModule.GenerateDistributionIPOPooling';
    FGenerateDistributionIPOPoolingCommand.Prepare;
  end;
  FGenerateDistributionIPOPoolingCommand.Parameters[0].Value.SetInt64(AIPOID);
  FGenerateDistributionIPOPoolingCommand.ExecuteUpdate;
  AMsg := FGenerateDistributionIPOPoolingCommand.Parameters[1].Value.GetWideString;
  Result := FGenerateDistributionIPOPoolingCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ConfirmIPOPoolingDistribution(APoolingID: Integer): Boolean;
begin
  if FConfirmIPOPoolingDistributionCommand = nil then
  begin
    FConfirmIPOPoolingDistributionCommand := FDBXConnection.CreateCommand;
    FConfirmIPOPoolingDistributionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FConfirmIPOPoolingDistributionCommand.Text := 'TSessionServerModule.ConfirmIPOPoolingDistribution';
    FConfirmIPOPoolingDistributionCommand.Prepare;
  end;
  FConfirmIPOPoolingDistributionCommand.Parameters[0].Value.SetInt32(APoolingID);
  FConfirmIPOPoolingDistributionCommand.ExecuteUpdate;
  Result := FConfirmIPOPoolingDistributionCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.TenderOfferClose(ATOID: Int64): string;
begin
  if FTenderOfferCloseCommand = nil then
  begin
    FTenderOfferCloseCommand := FDBXConnection.CreateCommand;
    FTenderOfferCloseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTenderOfferCloseCommand.Text := 'TSessionServerModule.TenderOfferClose';
    FTenderOfferCloseCommand.Prepare;
  end;
  FTenderOfferCloseCommand.Parameters[0].Value.SetInt64(ATOID);
  FTenderOfferCloseCommand.ExecuteUpdate;
  Result := FTenderOfferCloseCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.TenderOfferReverse(ATOID: Int64): string;
begin
  if FTenderOfferReverseCommand = nil then
  begin
    FTenderOfferReverseCommand := FDBXConnection.CreateCommand;
    FTenderOfferReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTenderOfferReverseCommand.Text := 'TSessionServerModule.TenderOfferReverse';
    FTenderOfferReverseCommand.Prepare;
  end;
  FTenderOfferReverseCommand.Parameters[0].Value.SetInt64(ATOID);
  FTenderOfferReverseCommand.ExecuteUpdate;
  Result := FTenderOfferReverseCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.LBProcess(ALBID: Int64): string;
begin
  if FLBProcessCommand = nil then
  begin
    FLBProcessCommand := FDBXConnection.CreateCommand;
    FLBProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLBProcessCommand.Text := 'TSessionServerModule.LBProcess';
    FLBProcessCommand.Prepare;
  end;
  FLBProcessCommand.Parameters[0].Value.SetInt64(ALBID);
  FLBProcessCommand.ExecuteUpdate;
  Result := FLBProcessCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.LBSettle(ALBID: Int64): string;
begin
  if FLBSettleCommand = nil then
  begin
    FLBSettleCommand := FDBXConnection.CreateCommand;
    FLBSettleCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLBSettleCommand.Text := 'TSessionServerModule.LBSettle';
    FLBSettleCommand.Prepare;
  end;
  FLBSettleCommand.Parameters[0].Value.SetInt64(ALBID);
  FLBSettleCommand.ExecuteUpdate;
  Result := FLBSettleCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.LBReverse(ALBID: Int64): string;
begin
  if FLBReverseCommand = nil then
  begin
    FLBReverseCommand := FDBXConnection.CreateCommand;
    FLBReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLBReverseCommand.Text := 'TSessionServerModule.LBReverse';
    FLBReverseCommand.Prepare;
  end;
  FLBReverseCommand.Parameters[0].Value.SetInt64(ALBID);
  FLBReverseCommand.ExecuteUpdate;
  Result := FLBReverseCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.LBChangeDueDate(ALBID: Int64; ADueDate: TDateTime): string;
begin
  if FLBChangeDueDateCommand = nil then
  begin
    FLBChangeDueDateCommand := FDBXConnection.CreateCommand;
    FLBChangeDueDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLBChangeDueDateCommand.Text := 'TSessionServerModule.LBChangeDueDate';
    FLBChangeDueDateCommand.Prepare;
  end;
  FLBChangeDueDateCommand.Parameters[0].Value.SetInt64(ALBID);
  FLBChangeDueDateCommand.Parameters[1].Value.AsDateTime := ADueDate;
  FLBChangeDueDateCommand.ExecuteUpdate;
  Result := FLBChangeDueDateCommand.Parameters[2].Value.GetWideString;
end;

function TSessionServerModuleClient.CreateSubAccount(ACCID: Integer; ACCSUBTYPE: string; out AMsg: string): Boolean;
begin
  if FCreateSubAccountCommand = nil then
  begin
    FCreateSubAccountCommand := FDBXConnection.CreateCommand;
    FCreateSubAccountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateSubAccountCommand.Text := 'TSessionServerModule.CreateSubAccount';
    FCreateSubAccountCommand.Prepare;
  end;
  FCreateSubAccountCommand.Parameters[0].Value.SetInt32(ACCID);
  FCreateSubAccountCommand.Parameters[1].Value.SetWideString(ACCSUBTYPE);
  FCreateSubAccountCommand.ExecuteUpdate;
  AMsg := FCreateSubAccountCommand.Parameters[2].Value.GetWideString;
  Result := FCreateSubAccountCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.UploadSOPDepositQty(AFileArray: TJSONArray; AFileName: string; ASOPID: Integer): Boolean;
begin
  if FUploadSOPDepositQtyCommand = nil then
  begin
    FUploadSOPDepositQtyCommand := FDBXConnection.CreateCommand;
    FUploadSOPDepositQtyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadSOPDepositQtyCommand.Text := 'TSessionServerModule.UploadSOPDepositQty';
    FUploadSOPDepositQtyCommand.Prepare;
  end;
  FUploadSOPDepositQtyCommand.Parameters[0].Value.SetJSONValue(AFileArray, FInstanceOwner);
  FUploadSOPDepositQtyCommand.Parameters[1].Value.SetWideString(AFileName);
  FUploadSOPDepositQtyCommand.Parameters[2].Value.SetInt32(ASOPID);
  FUploadSOPDepositQtyCommand.ExecuteUpdate;
  Result := FUploadSOPDepositQtyCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.UploadSOPMember(AFileArray: TJSONArray; AFileName: string; ASOPID: Integer): Boolean;
begin
  if FUploadSOPMemberCommand = nil then
  begin
    FUploadSOPMemberCommand := FDBXConnection.CreateCommand;
    FUploadSOPMemberCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadSOPMemberCommand.Text := 'TSessionServerModule.UploadSOPMember';
    FUploadSOPMemberCommand.Prepare;
  end;
  FUploadSOPMemberCommand.Parameters[0].Value.SetJSONValue(AFileArray, FInstanceOwner);
  FUploadSOPMemberCommand.Parameters[1].Value.SetWideString(AFileName);
  FUploadSOPMemberCommand.Parameters[2].Value.SetInt32(ASOPID);
  FUploadSOPMemberCommand.ExecuteUpdate;
  Result := FUploadSOPMemberCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.StockSettleCancel(ACUSTODY_INSTRID: Int64): string;
begin
  if FStockSettleCancelCommand = nil then
  begin
    FStockSettleCancelCommand := FDBXConnection.CreateCommand;
    FStockSettleCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockSettleCancelCommand.Text := 'TSessionServerModule.StockSettleCancel';
    FStockSettleCancelCommand.Prepare;
  end;
  FStockSettleCancelCommand.Parameters[0].Value.SetInt64(ACUSTODY_INSTRID);
  FStockSettleCancelCommand.ExecuteUpdate;
  Result := FStockSettleCancelCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.StockMoveReverse(ASMID: Int64; out AMsg: string): Boolean;
begin
  if FStockMoveReverseCommand = nil then
  begin
    FStockMoveReverseCommand := FDBXConnection.CreateCommand;
    FStockMoveReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockMoveReverseCommand.Text := 'TSessionServerModule.StockMoveReverse';
    FStockMoveReverseCommand.Prepare;
  end;
  FStockMoveReverseCommand.Parameters[0].Value.SetInt64(ASMID);
  FStockMoveReverseCommand.ExecuteUpdate;
  AMsg := FStockMoveReverseCommand.Parameters[1].Value.GetWideString;
  Result := FStockMoveReverseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashVoucherReverse(AVoucherID: Int64; out AMessage: string): Boolean;
begin
  if FCashVoucherReverseCommand = nil then
  begin
    FCashVoucherReverseCommand := FDBXConnection.CreateCommand;
    FCashVoucherReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashVoucherReverseCommand.Text := 'TSessionServerModule.CashVoucherReverse';
    FCashVoucherReverseCommand.Prepare;
  end;
  FCashVoucherReverseCommand.Parameters[0].Value.SetInt64(AVoucherID);
  FCashVoucherReverseCommand.ExecuteUpdate;
  AMessage := FCashVoucherReverseCommand.Parameters[1].Value.GetWideString;
  Result := FCashVoucherReverseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.StockSettleReverse(ACustody_InstrID: Int64; AReverseDate: TDateTime): string;
begin
  if FStockSettleReverseCommand = nil then
  begin
    FStockSettleReverseCommand := FDBXConnection.CreateCommand;
    FStockSettleReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockSettleReverseCommand.Text := 'TSessionServerModule.StockSettleReverse';
    FStockSettleReverseCommand.Prepare;
  end;
  FStockSettleReverseCommand.Parameters[0].Value.SetInt64(ACustody_InstrID);
  FStockSettleReverseCommand.Parameters[1].Value.AsDateTime := AReverseDate;
  FStockSettleReverseCommand.ExecuteUpdate;
  Result := FStockSettleReverseCommand.Parameters[2].Value.GetWideString;
end;

function TSessionServerModuleClient.UploadNewClient(AFileArray: TJSONArray; AFileName: string; out AOutFileArray: TJSONArray): Boolean;
begin
  if FUploadNewClientCommand = nil then
  begin
    FUploadNewClientCommand := FDBXConnection.CreateCommand;
    FUploadNewClientCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadNewClientCommand.Text := 'TSessionServerModule.UploadNewClient';
    FUploadNewClientCommand.Prepare;
  end;
  FUploadNewClientCommand.Parameters[0].Value.SetJSONValue(AFileArray, FInstanceOwner);
  FUploadNewClientCommand.Parameters[1].Value.SetWideString(AFileName);
  FUploadNewClientCommand.ExecuteUpdate;
  AOutFileArray := TJSONArray(FUploadNewClientCommand.Parameters[2].Value.GetJSONValue(FInstanceOwner));
  Result := FUploadNewClientCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.UploadNewCOB(AFileArray: TJSONArray; AFileName: string): Boolean;
begin
  if FUploadNewCOBCommand = nil then
  begin
    FUploadNewCOBCommand := FDBXConnection.CreateCommand;
    FUploadNewCOBCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadNewCOBCommand.Text := 'TSessionServerModule.UploadNewCOB';
    FUploadNewCOBCommand.Prepare;
  end;
  FUploadNewCOBCommand.Parameters[0].Value.SetJSONValue(AFileArray, FInstanceOwner);
  FUploadNewCOBCommand.Parameters[1].Value.SetWideString(AFileName);
  FUploadNewCOBCommand.ExecuteUpdate;
  Result := FUploadNewCOBCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ApproveSuspendAccount(AccID: Integer; out AMessage: string): Boolean;
begin
  if FApproveSuspendAccountCommand = nil then
  begin
    FApproveSuspendAccountCommand := FDBXConnection.CreateCommand;
    FApproveSuspendAccountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FApproveSuspendAccountCommand.Text := 'TSessionServerModule.ApproveSuspendAccount';
    FApproveSuspendAccountCommand.Prepare;
  end;
  FApproveSuspendAccountCommand.Parameters[0].Value.SetInt32(AccID);
  FApproveSuspendAccountCommand.ExecuteUpdate;
  AMessage := FApproveSuspendAccountCommand.Parameters[1].Value.GetWideString;
  Result := FApproveSuspendAccountCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ApproveOpenSuspendAccount(AccID: Integer; out AMessage: string): Boolean;
begin
  if FApproveOpenSuspendAccountCommand = nil then
  begin
    FApproveOpenSuspendAccountCommand := FDBXConnection.CreateCommand;
    FApproveOpenSuspendAccountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FApproveOpenSuspendAccountCommand.Text := 'TSessionServerModule.ApproveOpenSuspendAccount';
    FApproveOpenSuspendAccountCommand.Prepare;
  end;
  FApproveOpenSuspendAccountCommand.Parameters[0].Value.SetInt32(AccID);
  FApproveOpenSuspendAccountCommand.ExecuteUpdate;
  AMessage := FApproveOpenSuspendAccountCommand.Parameters[1].Value.GetWideString;
  Result := FApproveOpenSuspendAccountCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateBankMutation(ARekonDate: TDateTime; AUserID: string): string;
begin
  if FGenerateBankMutationCommand = nil then
  begin
    FGenerateBankMutationCommand := FDBXConnection.CreateCommand;
    FGenerateBankMutationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateBankMutationCommand.Text := 'TSessionServerModule.GenerateBankMutation';
    FGenerateBankMutationCommand.Prepare;
  end;
  FGenerateBankMutationCommand.Parameters[0].Value.AsDateTime := ARekonDate;
  FGenerateBankMutationCommand.Parameters[1].Value.SetWideString(AUserID);
  FGenerateBankMutationCommand.ExecuteUpdate;
  Result := FGenerateBankMutationCommand.Parameters[2].Value.GetWideString;
end;

procedure TSessionServerModuleClient.AutodepositBankrekon(ARekonDate: TDateTime; AAccID: Int64; AAccBankID: Int64; ACCY: string; AAMount: Double);
begin
  if FAutodepositBankrekonCommand = nil then
  begin
    FAutodepositBankrekonCommand := FDBXConnection.CreateCommand;
    FAutodepositBankrekonCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAutodepositBankrekonCommand.Text := 'TSessionServerModule.AutodepositBankrekon';
    FAutodepositBankrekonCommand.Prepare;
  end;
  FAutodepositBankrekonCommand.Parameters[0].Value.AsDateTime := ARekonDate;
  FAutodepositBankrekonCommand.Parameters[1].Value.SetInt64(AAccID);
  FAutodepositBankrekonCommand.Parameters[2].Value.SetInt64(AAccBankID);
  FAutodepositBankrekonCommand.Parameters[3].Value.SetWideString(ACCY);
  FAutodepositBankrekonCommand.Parameters[4].Value.SetDouble(AAMount);
  FAutodepositBankrekonCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.AddCustodianInstruction(ALinkID: Int64; ALinkCode: string; ALinkType: string; AAccID: Int64; AAccNo: string; AAccName: string; ATrxDate: TDateTime; AKSEIAcc: string; ACBCode: string; AStockID: Int64; AStockCode: string; AQty: Double; ARemark: string; APurpose: string; ATradeReff: string; ASettleReason: string; ASettle_Side: string): string;
begin
  if FAddCustodianInstructionCommand = nil then
  begin
    FAddCustodianInstructionCommand := FDBXConnection.CreateCommand;
    FAddCustodianInstructionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAddCustodianInstructionCommand.Text := 'TSessionServerModule.AddCustodianInstruction';
    FAddCustodianInstructionCommand.Prepare;
  end;
  FAddCustodianInstructionCommand.Parameters[0].Value.SetInt64(ALinkID);
  FAddCustodianInstructionCommand.Parameters[1].Value.SetWideString(ALinkCode);
  FAddCustodianInstructionCommand.Parameters[2].Value.SetWideString(ALinkType);
  FAddCustodianInstructionCommand.Parameters[3].Value.SetInt64(AAccID);
  FAddCustodianInstructionCommand.Parameters[4].Value.SetWideString(AAccNo);
  FAddCustodianInstructionCommand.Parameters[5].Value.SetWideString(AAccName);
  FAddCustodianInstructionCommand.Parameters[6].Value.AsDateTime := ATrxDate;
  FAddCustodianInstructionCommand.Parameters[7].Value.SetWideString(AKSEIAcc);
  FAddCustodianInstructionCommand.Parameters[8].Value.SetWideString(ACBCode);
  FAddCustodianInstructionCommand.Parameters[9].Value.SetInt64(AStockID);
  FAddCustodianInstructionCommand.Parameters[10].Value.SetWideString(AStockCode);
  FAddCustodianInstructionCommand.Parameters[11].Value.SetDouble(AQty);
  FAddCustodianInstructionCommand.Parameters[12].Value.SetWideString(ARemark);
  FAddCustodianInstructionCommand.Parameters[13].Value.SetWideString(APurpose);
  FAddCustodianInstructionCommand.Parameters[14].Value.SetWideString(ATradeReff);
  FAddCustodianInstructionCommand.Parameters[15].Value.SetWideString(ASettleReason);
  FAddCustodianInstructionCommand.Parameters[16].Value.SetWideString(ASettle_Side);
  FAddCustodianInstructionCommand.ExecuteUpdate;
  Result := FAddCustodianInstructionCommand.Parameters[17].Value.GetWideString;
end;

function TSessionServerModuleClient.GenerateOTCNonExchange(ADataID: WideString; ADW: string): string;
begin
  if FGenerateOTCNonExchangeCommand = nil then
  begin
    FGenerateOTCNonExchangeCommand := FDBXConnection.CreateCommand;
    FGenerateOTCNonExchangeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateOTCNonExchangeCommand.Text := 'TSessionServerModule.GenerateOTCNonExchange';
    FGenerateOTCNonExchangeCommand.Prepare;
  end;
  FGenerateOTCNonExchangeCommand.Parameters[0].Value.SetWideString(ADataID);
  FGenerateOTCNonExchangeCommand.Parameters[1].Value.SetWideString(ADW);
  FGenerateOTCNonExchangeCommand.ExecuteUpdate;
  Result := FGenerateOTCNonExchangeCommand.Parameters[2].Value.GetWideString;
end;

function TSessionServerModuleClient.SettleStockProcess(ADueDate: TDateTime): string;
begin
  if FSettleStockProcessCommand = nil then
  begin
    FSettleStockProcessCommand := FDBXConnection.CreateCommand;
    FSettleStockProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSettleStockProcessCommand.Text := 'TSessionServerModule.SettleStockProcess';
    FSettleStockProcessCommand.Prepare;
  end;
  FSettleStockProcessCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FSettleStockProcessCommand.ExecuteUpdate;
  Result := FSettleStockProcessCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.CashVoucherAllPost(AVoucherDate: TDateTime; ASettleType: string; AAllSettleType: string; ABusCat: Int64; AAllBusType: string; AVoucherType: string; ASpecDate: string; AUSERID: string): string;
begin
  if FCashVoucherAllPostCommand = nil then
  begin
    FCashVoucherAllPostCommand := FDBXConnection.CreateCommand;
    FCashVoucherAllPostCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashVoucherAllPostCommand.Text := 'TSessionServerModule.CashVoucherAllPost';
    FCashVoucherAllPostCommand.Prepare;
  end;
  FCashVoucherAllPostCommand.Parameters[0].Value.AsDateTime := AVoucherDate;
  FCashVoucherAllPostCommand.Parameters[1].Value.SetWideString(ASettleType);
  FCashVoucherAllPostCommand.Parameters[2].Value.SetWideString(AAllSettleType);
  FCashVoucherAllPostCommand.Parameters[3].Value.SetInt64(ABusCat);
  FCashVoucherAllPostCommand.Parameters[4].Value.SetWideString(AAllBusType);
  FCashVoucherAllPostCommand.Parameters[5].Value.SetWideString(AVoucherType);
  FCashVoucherAllPostCommand.Parameters[6].Value.SetWideString(ASpecDate);
  FCashVoucherAllPostCommand.Parameters[7].Value.SetWideString(AUSERID);
  FCashVoucherAllPostCommand.ExecuteUpdate;
  Result := FCashVoucherAllPostCommand.Parameters[8].Value.GetWideString;
end;

function TSessionServerModuleClient.BankReconOne(AReconDate: TDateTime; AMutationDate: TDateTime; ATrxType: string; AData: string): string;
begin
  if FBankReconOneCommand = nil then
  begin
    FBankReconOneCommand := FDBXConnection.CreateCommand;
    FBankReconOneCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBankReconOneCommand.Text := 'TSessionServerModule.BankReconOne';
    FBankReconOneCommand.Prepare;
  end;
  FBankReconOneCommand.Parameters[0].Value.AsDateTime := AReconDate;
  FBankReconOneCommand.Parameters[1].Value.AsDateTime := AMutationDate;
  FBankReconOneCommand.Parameters[2].Value.SetWideString(ATrxType);
  FBankReconOneCommand.Parameters[3].Value.SetWideString(AData);
  FBankReconOneCommand.ExecuteUpdate;
  Result := FBankReconOneCommand.Parameters[4].Value.GetWideString;
end;

function TSessionServerModuleClient.BankReconAll(AReconDate: TDateTime; AMutationDate: TDateTime; AData: WideString): string;
begin
  if FBankReconAllCommand = nil then
  begin
    FBankReconAllCommand := FDBXConnection.CreateCommand;
    FBankReconAllCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBankReconAllCommand.Text := 'TSessionServerModule.BankReconAll';
    FBankReconAllCommand.Prepare;
  end;
  FBankReconAllCommand.Parameters[0].Value.AsDateTime := AReconDate;
  FBankReconAllCommand.Parameters[1].Value.AsDateTime := AMutationDate;
  FBankReconAllCommand.Parameters[2].Value.SetWideString(AData);
  FBankReconAllCommand.ExecuteUpdate;
  Result := FBankReconAllCommand.Parameters[3].Value.GetWideString;
end;

function TSessionServerModuleClient.SOPStockMoveAdminCheck(ACCSOPID: Integer; out AMsg: string): Boolean;
begin
  if FSOPStockMoveAdminCheckCommand = nil then
  begin
    FSOPStockMoveAdminCheckCommand := FDBXConnection.CreateCommand;
    FSOPStockMoveAdminCheckCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSOPStockMoveAdminCheckCommand.Text := 'TSessionServerModule.SOPStockMoveAdminCheck';
    FSOPStockMoveAdminCheckCommand.Prepare;
  end;
  FSOPStockMoveAdminCheckCommand.Parameters[0].Value.SetInt32(ACCSOPID);
  FSOPStockMoveAdminCheckCommand.ExecuteUpdate;
  AMsg := FSOPStockMoveAdminCheckCommand.Parameters[1].Value.GetWideString;
  Result := FSOPStockMoveAdminCheckCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.SOPStockMoveSettle(ACCSOPID: Integer; out AMsg: string): Boolean;
begin
  if FSOPStockMoveSettleCommand = nil then
  begin
    FSOPStockMoveSettleCommand := FDBXConnection.CreateCommand;
    FSOPStockMoveSettleCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSOPStockMoveSettleCommand.Text := 'TSessionServerModule.SOPStockMoveSettle';
    FSOPStockMoveSettleCommand.Prepare;
  end;
  FSOPStockMoveSettleCommand.Parameters[0].Value.SetInt32(ACCSOPID);
  FSOPStockMoveSettleCommand.ExecuteUpdate;
  AMsg := FSOPStockMoveSettleCommand.Parameters[1].Value.GetWideString;
  Result := FSOPStockMoveSettleCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.UploadStockDeposit(AFileArray: TJSONArray; AFileName: string): Boolean;
begin
  if FUploadStockDepositCommand = nil then
  begin
    FUploadStockDepositCommand := FDBXConnection.CreateCommand;
    FUploadStockDepositCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadStockDepositCommand.Text := 'TSessionServerModule.UploadStockDeposit';
    FUploadStockDepositCommand.Prepare;
  end;
  FUploadStockDepositCommand.Parameters[0].Value.SetJSONValue(AFileArray, FInstanceOwner);
  FUploadStockDepositCommand.Parameters[1].Value.SetWideString(AFileName);
  FUploadStockDepositCommand.ExecuteUpdate;
  Result := FUploadStockDepositCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.UploadStockWithdraw(AFileArray: TJSONArray; AFileName: string): Boolean;
begin
  if FUploadStockWithdrawCommand = nil then
  begin
    FUploadStockWithdrawCommand := FDBXConnection.CreateCommand;
    FUploadStockWithdrawCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadStockWithdrawCommand.Text := 'TSessionServerModule.UploadStockWithdraw';
    FUploadStockWithdrawCommand.Prepare;
  end;
  FUploadStockWithdrawCommand.Parameters[0].Value.SetJSONValue(AFileArray, FInstanceOwner);
  FUploadStockWithdrawCommand.Parameters[1].Value.SetWideString(AFileName);
  FUploadStockWithdrawCommand.ExecuteUpdate;
  Result := FUploadStockWithdrawCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateAllCashVoucher_KPEI(ADueDate: TDateTime; out AMsg: string): Boolean;
begin
  if FCreateAllCashVoucher_KPEICommand = nil then
  begin
    FCreateAllCashVoucher_KPEICommand := FDBXConnection.CreateCommand;
    FCreateAllCashVoucher_KPEICommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateAllCashVoucher_KPEICommand.Text := 'TSessionServerModule.CreateAllCashVoucher_KPEI';
    FCreateAllCashVoucher_KPEICommand.Prepare;
  end;
  FCreateAllCashVoucher_KPEICommand.Parameters[0].Value.AsDateTime := ADueDate;
  FCreateAllCashVoucher_KPEICommand.ExecuteUpdate;
  AMsg := FCreateAllCashVoucher_KPEICommand.Parameters[1].Value.GetWideString;
  Result := FCreateAllCashVoucher_KPEICommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CustodianToMerger(ACustodianNo: WideString): string;
begin
  if FCustodianToMergerCommand = nil then
  begin
    FCustodianToMergerCommand := FDBXConnection.CreateCommand;
    FCustodianToMergerCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCustodianToMergerCommand.Text := 'TSessionServerModule.CustodianToMerger';
    FCustodianToMergerCommand.Prepare;
  end;
  FCustodianToMergerCommand.Parameters[0].Value.SetWideString(ACustodianNo);
  FCustodianToMergerCommand.ExecuteUpdate;
  Result := FCustodianToMergerCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.BatchProcessing(ABatchID: Integer; AParamData: WideString; out AMsg: string): string;
begin
  if FBatchProcessingCommand = nil then
  begin
    FBatchProcessingCommand := FDBXConnection.CreateCommand;
    FBatchProcessingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBatchProcessingCommand.Text := 'TSessionServerModule.BatchProcessing';
    FBatchProcessingCommand.Prepare;
  end;
  FBatchProcessingCommand.Parameters[0].Value.SetInt32(ABatchID);
  FBatchProcessingCommand.Parameters[1].Value.SetWideString(AParamData);
  FBatchProcessingCommand.ExecuteUpdate;
  AMsg := FBatchProcessingCommand.Parameters[2].Value.GetWideString;
  Result := FBatchProcessingCommand.Parameters[3].Value.GetWideString;
end;

function TSessionServerModuleClient.BatchNextTradingDay(ATradeDate: TDateTime; AUSERID: string): string;
begin
  if FBatchNextTradingDayCommand = nil then
  begin
    FBatchNextTradingDayCommand := FDBXConnection.CreateCommand;
    FBatchNextTradingDayCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBatchNextTradingDayCommand.Text := 'TSessionServerModule.BatchNextTradingDay';
    FBatchNextTradingDayCommand.Prepare;
  end;
  FBatchNextTradingDayCommand.Parameters[0].Value.AsDateTime := ATradeDate;
  FBatchNextTradingDayCommand.Parameters[1].Value.SetWideString(AUSERID);
  FBatchNextTradingDayCommand.ExecuteUpdate;
  Result := FBatchNextTradingDayCommand.Parameters[2].Value.GetWideString;
end;

function TSessionServerModuleClient.GenerateARAP_SetOff(ADueDate: TDateTime; AUSERID: string): string;
begin
  if FGenerateARAP_SetOffCommand = nil then
  begin
    FGenerateARAP_SetOffCommand := FDBXConnection.CreateCommand;
    FGenerateARAP_SetOffCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateARAP_SetOffCommand.Text := 'TSessionServerModule.GenerateARAP_SetOff';
    FGenerateARAP_SetOffCommand.Prepare;
  end;
  FGenerateARAP_SetOffCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FGenerateARAP_SetOffCommand.Parameters[1].Value.SetWideString(AUSERID);
  FGenerateARAP_SetOffCommand.ExecuteUpdate;
  Result := FGenerateARAP_SetOffCommand.Parameters[2].Value.GetWideString;
end;

function TSessionServerModuleClient.GenerateRevaluationCurrency(ATransDate: TDateTime): string;
begin
  if FGenerateRevaluationCurrencyCommand = nil then
  begin
    FGenerateRevaluationCurrencyCommand := FDBXConnection.CreateCommand;
    FGenerateRevaluationCurrencyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateRevaluationCurrencyCommand.Text := 'TSessionServerModule.GenerateRevaluationCurrency';
    FGenerateRevaluationCurrencyCommand.Prepare;
  end;
  FGenerateRevaluationCurrencyCommand.Parameters[0].Value.AsDateTime := ATransDate;
  FGenerateRevaluationCurrencyCommand.ExecuteUpdate;
  Result := FGenerateRevaluationCurrencyCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.GenerateCustodiInstruction(ADueDate: TDateTime; ASINo: Int64; AProcessMode: string; out AMsg: string): Boolean;
begin
  if FGenerateCustodiInstructionCommand = nil then
  begin
    FGenerateCustodiInstructionCommand := FDBXConnection.CreateCommand;
    FGenerateCustodiInstructionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateCustodiInstructionCommand.Text := 'TSessionServerModule.GenerateCustodiInstruction';
    FGenerateCustodiInstructionCommand.Prepare;
  end;
  FGenerateCustodiInstructionCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FGenerateCustodiInstructionCommand.Parameters[1].Value.SetInt64(ASINo);
  FGenerateCustodiInstructionCommand.Parameters[2].Value.SetWideString(AProcessMode);
  FGenerateCustodiInstructionCommand.ExecuteUpdate;
  AMsg := FGenerateCustodiInstructionCommand.Parameters[3].Value.GetWideString;
  Result := FGenerateCustodiInstructionCommand.Parameters[4].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.IntrstDiscount(APeriodID: Int64; AAccID: Int64; ADiscountAmt: Double);
begin
  if FIntrstDiscountCommand = nil then
  begin
    FIntrstDiscountCommand := FDBXConnection.CreateCommand;
    FIntrstDiscountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIntrstDiscountCommand.Text := 'TSessionServerModule.IntrstDiscount';
    FIntrstDiscountCommand.Prepare;
  end;
  FIntrstDiscountCommand.Parameters[0].Value.SetInt64(APeriodID);
  FIntrstDiscountCommand.Parameters[1].Value.SetInt64(AAccID);
  FIntrstDiscountCommand.Parameters[2].Value.SetDouble(ADiscountAmt);
  FIntrstDiscountCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.InterestWave(APeriodID: Int64; AIntrNo: WideString);
begin
  if FInterestWaveCommand = nil then
  begin
    FInterestWaveCommand := FDBXConnection.CreateCommand;
    FInterestWaveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInterestWaveCommand.Text := 'TSessionServerModule.InterestWave';
    FInterestWaveCommand.Prepare;
  end;
  FInterestWaveCommand.Parameters[0].Value.SetInt64(APeriodID);
  FInterestWaveCommand.Parameters[1].Value.SetWideString(AIntrNo);
  FInterestWaveCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.CashReconciliationCancel(ARekonDate: TDateTime; ATRType: string; ARefID: Int64): string;
begin
  if FCashReconciliationCancelCommand = nil then
  begin
    FCashReconciliationCancelCommand := FDBXConnection.CreateCommand;
    FCashReconciliationCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashReconciliationCancelCommand.Text := 'TSessionServerModule.CashReconciliationCancel';
    FCashReconciliationCancelCommand.Prepare;
  end;
  FCashReconciliationCancelCommand.Parameters[0].Value.AsDateTime := ARekonDate;
  FCashReconciliationCancelCommand.Parameters[1].Value.SetWideString(ATRType);
  FCashReconciliationCancelCommand.Parameters[2].Value.SetInt64(ARefID);
  FCashReconciliationCancelCommand.ExecuteUpdate;
  Result := FCashReconciliationCancelCommand.Parameters[3].Value.GetWideString;
end;

function TSessionServerModuleClient.CashWithdrawReverse(ACWID: Int64; out AMessage: string): Boolean;
begin
  if FCashWithdrawReverseCommand = nil then
  begin
    FCashWithdrawReverseCommand := FDBXConnection.CreateCommand;
    FCashWithdrawReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashWithdrawReverseCommand.Text := 'TSessionServerModule.CashWithdrawReverse';
    FCashWithdrawReverseCommand.Prepare;
  end;
  FCashWithdrawReverseCommand.Parameters[0].Value.SetInt64(ACWID);
  FCashWithdrawReverseCommand.ExecuteUpdate;
  AMessage := FCashWithdrawReverseCommand.Parameters[1].Value.GetWideString;
  Result := FCashWithdrawReverseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashWithdrawCancel(ACWID: Int64; out AMessage: string): Boolean;
begin
  if FCashWithdrawCancelCommand = nil then
  begin
    FCashWithdrawCancelCommand := FDBXConnection.CreateCommand;
    FCashWithdrawCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashWithdrawCancelCommand.Text := 'TSessionServerModule.CashWithdrawCancel';
    FCashWithdrawCancelCommand.Prepare;
  end;
  FCashWithdrawCancelCommand.Parameters[0].Value.SetInt64(ACWID);
  FCashWithdrawCancelCommand.ExecuteUpdate;
  AMessage := FCashWithdrawCancelCommand.Parameters[1].Value.GetWideString;
  Result := FCashWithdrawCancelCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashWithdrawApproved(ACWID: Int64; out AMessage: string): Boolean;
begin
  if FCashWithdrawApprovedCommand = nil then
  begin
    FCashWithdrawApprovedCommand := FDBXConnection.CreateCommand;
    FCashWithdrawApprovedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashWithdrawApprovedCommand.Text := 'TSessionServerModule.CashWithdrawApproved';
    FCashWithdrawApprovedCommand.Prepare;
  end;
  FCashWithdrawApprovedCommand.Parameters[0].Value.SetInt64(ACWID);
  FCashWithdrawApprovedCommand.ExecuteUpdate;
  AMessage := FCashWithdrawApprovedCommand.Parameters[1].Value.GetWideString;
  Result := FCashWithdrawApprovedCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashWithdrawPosting(ACWID: Int64; out AMessage: string): Boolean;
begin
  if FCashWithdrawPostingCommand = nil then
  begin
    FCashWithdrawPostingCommand := FDBXConnection.CreateCommand;
    FCashWithdrawPostingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashWithdrawPostingCommand.Text := 'TSessionServerModule.CashWithdrawPosting';
    FCashWithdrawPostingCommand.Prepare;
  end;
  FCashWithdrawPostingCommand.Parameters[0].Value.SetInt64(ACWID);
  FCashWithdrawPostingCommand.ExecuteUpdate;
  AMessage := FCashWithdrawPostingCommand.Parameters[1].Value.GetWideString;
  Result := FCashWithdrawPostingCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.OTCForSplit(ACustInstrID: Int64; AStringData: string): string;
begin
  if FOTCForSplitCommand = nil then
  begin
    FOTCForSplitCommand := FDBXConnection.CreateCommand;
    FOTCForSplitCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOTCForSplitCommand.Text := 'TSessionServerModule.OTCForSplit';
    FOTCForSplitCommand.Prepare;
  end;
  FOTCForSplitCommand.Parameters[0].Value.SetInt64(ACustInstrID);
  FOTCForSplitCommand.Parameters[1].Value.SetWideString(AStringData);
  FOTCForSplitCommand.ExecuteUpdate;
  Result := FOTCForSplitCommand.Parameters[2].Value.GetWideString;
end;

function TSessionServerModuleClient.OTCForUpdate(ACustInstrID: Int64; AQty: Double; AOriginalAmt: Double; ACcy: string; ASettleAmount: Double; ASaldo: Double; ASaldoType: string; AIsMultyCcy: string; AForeignCcyCode: string; AForeignExrate: Double; AForeignSettleAmt: Double; AInstructionType: string; ACounterAcc: string): string;
begin
  if FOTCForUpdateCommand = nil then
  begin
    FOTCForUpdateCommand := FDBXConnection.CreateCommand;
    FOTCForUpdateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOTCForUpdateCommand.Text := 'TSessionServerModule.OTCForUpdate';
    FOTCForUpdateCommand.Prepare;
  end;
  FOTCForUpdateCommand.Parameters[0].Value.SetInt64(ACustInstrID);
  FOTCForUpdateCommand.Parameters[1].Value.SetDouble(AQty);
  FOTCForUpdateCommand.Parameters[2].Value.SetDouble(AOriginalAmt);
  FOTCForUpdateCommand.Parameters[3].Value.SetWideString(ACcy);
  FOTCForUpdateCommand.Parameters[4].Value.SetDouble(ASettleAmount);
  FOTCForUpdateCommand.Parameters[5].Value.SetDouble(ASaldo);
  FOTCForUpdateCommand.Parameters[6].Value.SetWideString(ASaldoType);
  FOTCForUpdateCommand.Parameters[7].Value.SetWideString(AIsMultyCcy);
  FOTCForUpdateCommand.Parameters[8].Value.SetWideString(AForeignCcyCode);
  FOTCForUpdateCommand.Parameters[9].Value.SetDouble(AForeignExrate);
  FOTCForUpdateCommand.Parameters[10].Value.SetDouble(AForeignSettleAmt);
  FOTCForUpdateCommand.Parameters[11].Value.SetWideString(AInstructionType);
  FOTCForUpdateCommand.Parameters[12].Value.SetWideString(ACounterAcc);
  FOTCForUpdateCommand.ExecuteUpdate;
  Result := FOTCForUpdateCommand.Parameters[13].Value.GetWideString;
end;

function TSessionServerModuleClient.ExerciseVCAProcess(ACAID: Int64; AExerNo: WideString; ATrdDate: TDateTime; out AMsg: string): Boolean;
begin
  if FExerciseVCAProcessCommand = nil then
  begin
    FExerciseVCAProcessCommand := FDBXConnection.CreateCommand;
    FExerciseVCAProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExerciseVCAProcessCommand.Text := 'TSessionServerModule.ExerciseVCAProcess';
    FExerciseVCAProcessCommand.Prepare;
  end;
  FExerciseVCAProcessCommand.Parameters[0].Value.SetInt64(ACAID);
  FExerciseVCAProcessCommand.Parameters[1].Value.SetWideString(AExerNo);
  FExerciseVCAProcessCommand.Parameters[2].Value.AsDateTime := ATrdDate;
  FExerciseVCAProcessCommand.ExecuteUpdate;
  AMsg := FExerciseVCAProcessCommand.Parameters[3].Value.GetWideString;
  Result := FExerciseVCAProcessCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.ExercisesDistributionProcess(ACAID: Int64; ExerID: Int64; out AMsg: string): Boolean;
begin
  if FExercisesDistributionProcessCommand = nil then
  begin
    FExercisesDistributionProcessCommand := FDBXConnection.CreateCommand;
    FExercisesDistributionProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExercisesDistributionProcessCommand.Text := 'TSessionServerModule.ExercisesDistributionProcess';
    FExercisesDistributionProcessCommand.Prepare;
  end;
  FExercisesDistributionProcessCommand.Parameters[0].Value.SetInt64(ACAID);
  FExercisesDistributionProcessCommand.Parameters[1].Value.SetInt64(ExerID);
  FExercisesDistributionProcessCommand.ExecuteUpdate;
  AMsg := FExercisesDistributionProcessCommand.Parameters[2].Value.GetWideString;
  Result := FExercisesDistributionProcessCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.WarrantDistributionProcess(ACAID: Int64; ExerID: Int64; out AMsg: string): Boolean;
begin
  if FWarrantDistributionProcessCommand = nil then
  begin
    FWarrantDistributionProcessCommand := FDBXConnection.CreateCommand;
    FWarrantDistributionProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FWarrantDistributionProcessCommand.Text := 'TSessionServerModule.WarrantDistributionProcess';
    FWarrantDistributionProcessCommand.Prepare;
  end;
  FWarrantDistributionProcessCommand.Parameters[0].Value.SetInt64(ACAID);
  FWarrantDistributionProcessCommand.Parameters[1].Value.SetInt64(ExerID);
  FWarrantDistributionProcessCommand.ExecuteUpdate;
  AMsg := FWarrantDistributionProcessCommand.Parameters[2].Value.GetWideString;
  Result := FWarrantDistributionProcessCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.CorpactHMETDProcess(AExerID: Int64; out AMsg: string): Boolean;
begin
  if FCorpactHMETDProcessCommand = nil then
  begin
    FCorpactHMETDProcessCommand := FDBXConnection.CreateCommand;
    FCorpactHMETDProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCorpactHMETDProcessCommand.Text := 'TSessionServerModule.CorpactHMETDProcess';
    FCorpactHMETDProcessCommand.Prepare;
  end;
  FCorpactHMETDProcessCommand.Parameters[0].Value.SetInt64(AExerID);
  FCorpactHMETDProcessCommand.ExecuteUpdate;
  AMsg := FCorpactHMETDProcessCommand.Parameters[1].Value.GetWideString;
  Result := FCorpactHMETDProcessCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CorpactHMETDProcessCancel(AExerID: Int64; ARejectReason: string; out AMsg: string): Boolean;
begin
  if FCorpactHMETDProcessCancelCommand = nil then
  begin
    FCorpactHMETDProcessCancelCommand := FDBXConnection.CreateCommand;
    FCorpactHMETDProcessCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCorpactHMETDProcessCancelCommand.Text := 'TSessionServerModule.CorpactHMETDProcessCancel';
    FCorpactHMETDProcessCancelCommand.Prepare;
  end;
  FCorpactHMETDProcessCancelCommand.Parameters[0].Value.SetInt64(AExerID);
  FCorpactHMETDProcessCancelCommand.Parameters[1].Value.SetWideString(ARejectReason);
  FCorpactHMETDProcessCancelCommand.ExecuteUpdate;
  AMsg := FCorpactHMETDProcessCancelCommand.Parameters[2].Value.GetWideString;
  Result := FCorpactHMETDProcessCancelCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.CorpactHMETDCancelProcess(AExerID: Int64; out AMsg: string): Boolean;
begin
  if FCorpactHMETDCancelProcessCommand = nil then
  begin
    FCorpactHMETDCancelProcessCommand := FDBXConnection.CreateCommand;
    FCorpactHMETDCancelProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCorpactHMETDCancelProcessCommand.Text := 'TSessionServerModule.CorpactHMETDCancelProcess';
    FCorpactHMETDCancelProcessCommand.Prepare;
  end;
  FCorpactHMETDCancelProcessCommand.Parameters[0].Value.SetInt64(AExerID);
  FCorpactHMETDCancelProcessCommand.ExecuteUpdate;
  AMsg := FCorpactHMETDCancelProcessCommand.Parameters[1].Value.GetWideString;
  Result := FCorpactHMETDCancelProcessCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CorpactReversed(ACAID: Int64; AReverseReason: string; out AMsg: string): Boolean;
begin
  if FCorpactReversedCommand = nil then
  begin
    FCorpactReversedCommand := FDBXConnection.CreateCommand;
    FCorpactReversedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCorpactReversedCommand.Text := 'TSessionServerModule.CorpactReversed';
    FCorpactReversedCommand.Prepare;
  end;
  FCorpactReversedCommand.Parameters[0].Value.SetInt64(ACAID);
  FCorpactReversedCommand.Parameters[1].Value.SetWideString(AReverseReason);
  FCorpactReversedCommand.ExecuteUpdate;
  AMsg := FCorpactReversedCommand.Parameters[2].Value.GetWideString;
  Result := FCorpactReversedCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.CorpactCancel(ACAID: Int64; out AMsg: string): Boolean;
begin
  if FCorpactCancelCommand = nil then
  begin
    FCorpactCancelCommand := FDBXConnection.CreateCommand;
    FCorpactCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCorpactCancelCommand.Text := 'TSessionServerModule.CorpactCancel';
    FCorpactCancelCommand.Prepare;
  end;
  FCorpactCancelCommand.Parameters[0].Value.SetInt64(ACAID);
  FCorpactCancelCommand.ExecuteUpdate;
  AMsg := FCorpactCancelCommand.Parameters[1].Value.GetWideString;
  Result := FCorpactCancelCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ApproveRequest(AModule: string; AForm: string; AKey: string; AState: string; ANotes: string; AXMLData: string; out AMsg: string): Boolean;
begin
  if FApproveRequestCommand = nil then
  begin
    FApproveRequestCommand := FDBXConnection.CreateCommand;
    FApproveRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FApproveRequestCommand.Text := 'TSessionServerModule.ApproveRequest';
    FApproveRequestCommand.Prepare;
  end;
  FApproveRequestCommand.Parameters[0].Value.SetWideString(AModule);
  FApproveRequestCommand.Parameters[1].Value.SetWideString(AForm);
  FApproveRequestCommand.Parameters[2].Value.SetWideString(AKey);
  FApproveRequestCommand.Parameters[3].Value.SetWideString(AState);
  FApproveRequestCommand.Parameters[4].Value.SetWideString(ANotes);
  FApproveRequestCommand.Parameters[5].Value.SetWideString(AXMLData);
  FApproveRequestCommand.ExecuteUpdate;
  AMsg := FApproveRequestCommand.Parameters[6].Value.GetWideString;
  Result := FApproveRequestCommand.Parameters[7].Value.GetBoolean;
end;

function TSessionServerModuleClient.ChangeRequest(AModule: string; AForm: string; AKey: string; ANotes: string; AXMLData: string; AValidDate: TDateTime; out AMsg: string): Boolean;
begin
  if FChangeRequestCommand = nil then
  begin
    FChangeRequestCommand := FDBXConnection.CreateCommand;
    FChangeRequestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FChangeRequestCommand.Text := 'TSessionServerModule.ChangeRequest';
    FChangeRequestCommand.Prepare;
  end;
  FChangeRequestCommand.Parameters[0].Value.SetWideString(AModule);
  FChangeRequestCommand.Parameters[1].Value.SetWideString(AForm);
  FChangeRequestCommand.Parameters[2].Value.SetWideString(AKey);
  FChangeRequestCommand.Parameters[3].Value.SetWideString(ANotes);
  FChangeRequestCommand.Parameters[4].Value.SetWideString(AXMLData);
  FChangeRequestCommand.Parameters[5].Value.AsDateTime := AValidDate;
  FChangeRequestCommand.ExecuteUpdate;
  AMsg := FChangeRequestCommand.Parameters[6].Value.GetWideString;
  Result := FChangeRequestCommand.Parameters[7].Value.GetBoolean;
end;

function TSessionServerModuleClient.ApproveModule(AModule: string; AKey: string; AState: string; ANotes: string; out AMsg: string): Boolean;
begin
  if FApproveModuleCommand = nil then
  begin
    FApproveModuleCommand := FDBXConnection.CreateCommand;
    FApproveModuleCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FApproveModuleCommand.Text := 'TSessionServerModule.ApproveModule';
    FApproveModuleCommand.Prepare;
  end;
  FApproveModuleCommand.Parameters[0].Value.SetWideString(AModule);
  FApproveModuleCommand.Parameters[1].Value.SetWideString(AKey);
  FApproveModuleCommand.Parameters[2].Value.SetWideString(AState);
  FApproveModuleCommand.Parameters[3].Value.SetWideString(ANotes);
  FApproveModuleCommand.ExecuteUpdate;
  AMsg := FApproveModuleCommand.Parameters[4].Value.GetWideString;
  Result := FApproveModuleCommand.Parameters[5].Value.GetBoolean;
end;

function TSessionServerModuleClient.ApproveChanges(AModule: string; AKey: string; AState: string; ANotes: string; AValidDate: TDateTime; out AMsg: string): Boolean;
begin
  if FApproveChangesCommand = nil then
  begin
    FApproveChangesCommand := FDBXConnection.CreateCommand;
    FApproveChangesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FApproveChangesCommand.Text := 'TSessionServerModule.ApproveChanges';
    FApproveChangesCommand.Prepare;
  end;
  FApproveChangesCommand.Parameters[0].Value.SetWideString(AModule);
  FApproveChangesCommand.Parameters[1].Value.SetWideString(AKey);
  FApproveChangesCommand.Parameters[2].Value.SetWideString(AState);
  FApproveChangesCommand.Parameters[3].Value.SetWideString(ANotes);
  FApproveChangesCommand.Parameters[4].Value.AsDateTime := AValidDate;
  FApproveChangesCommand.ExecuteUpdate;
  AMsg := FApproveChangesCommand.Parameters[5].Value.GetWideString;
  Result := FApproveChangesCommand.Parameters[6].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateDataActivity(AFlowID: Integer; ADataID: Int64; out AMessage: string): Boolean;
begin
  if FCreateDataActivityCommand = nil then
  begin
    FCreateDataActivityCommand := FDBXConnection.CreateCommand;
    FCreateDataActivityCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateDataActivityCommand.Text := 'TSessionServerModule.CreateDataActivity';
    FCreateDataActivityCommand.Prepare;
  end;
  FCreateDataActivityCommand.Parameters[0].Value.SetInt32(AFlowID);
  FCreateDataActivityCommand.Parameters[1].Value.SetInt64(ADataID);
  FCreateDataActivityCommand.ExecuteUpdate;
  AMessage := FCreateDataActivityCommand.Parameters[2].Value.GetWideString;
  Result := FCreateDataActivityCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.FinishDataActivity(AFlowID: Integer; ADataID: Int64; out AMessage: string): Boolean;
begin
  if FFinishDataActivityCommand = nil then
  begin
    FFinishDataActivityCommand := FDBXConnection.CreateCommand;
    FFinishDataActivityCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFinishDataActivityCommand.Text := 'TSessionServerModule.FinishDataActivity';
    FFinishDataActivityCommand.Prepare;
  end;
  FFinishDataActivityCommand.Parameters[0].Value.SetInt32(AFlowID);
  FFinishDataActivityCommand.Parameters[1].Value.SetInt64(ADataID);
  FFinishDataActivityCommand.ExecuteUpdate;
  AMessage := FFinishDataActivityCommand.Parameters[2].Value.GetWideString;
  Result := FFinishDataActivityCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.UpdateDataActivityStatusBack(ADataID: Int64; AActivityID: Integer; ANotes: string; out AMessage: string): Boolean;
begin
  if FUpdateDataActivityStatusBackCommand = nil then
  begin
    FUpdateDataActivityStatusBackCommand := FDBXConnection.CreateCommand;
    FUpdateDataActivityStatusBackCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateDataActivityStatusBackCommand.Text := 'TSessionServerModule.UpdateDataActivityStatusBack';
    FUpdateDataActivityStatusBackCommand.Prepare;
  end;
  FUpdateDataActivityStatusBackCommand.Parameters[0].Value.SetInt64(ADataID);
  FUpdateDataActivityStatusBackCommand.Parameters[1].Value.SetInt32(AActivityID);
  FUpdateDataActivityStatusBackCommand.Parameters[2].Value.SetWideString(ANotes);
  FUpdateDataActivityStatusBackCommand.ExecuteUpdate;
  AMessage := FUpdateDataActivityStatusBackCommand.Parameters[3].Value.GetWideString;
  Result := FUpdateDataActivityStatusBackCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.UpdateDataActivityStatusDone(ADataID: Int64; AActivityID: Integer; ANotes: string; out AMessage: string): Boolean;
begin
  if FUpdateDataActivityStatusDoneCommand = nil then
  begin
    FUpdateDataActivityStatusDoneCommand := FDBXConnection.CreateCommand;
    FUpdateDataActivityStatusDoneCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateDataActivityStatusDoneCommand.Text := 'TSessionServerModule.UpdateDataActivityStatusDone';
    FUpdateDataActivityStatusDoneCommand.Prepare;
  end;
  FUpdateDataActivityStatusDoneCommand.Parameters[0].Value.SetInt64(ADataID);
  FUpdateDataActivityStatusDoneCommand.Parameters[1].Value.SetInt32(AActivityID);
  FUpdateDataActivityStatusDoneCommand.Parameters[2].Value.SetWideString(ANotes);
  FUpdateDataActivityStatusDoneCommand.ExecuteUpdate;
  AMessage := FUpdateDataActivityStatusDoneCommand.Parameters[3].Value.GetWideString;
  Result := FUpdateDataActivityStatusDoneCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.UpdateDataActivityStatusCancel(ADataID: Int64; AActivityID: Integer; ANotes: string; out AMessage: string): Boolean;
begin
  if FUpdateDataActivityStatusCancelCommand = nil then
  begin
    FUpdateDataActivityStatusCancelCommand := FDBXConnection.CreateCommand;
    FUpdateDataActivityStatusCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateDataActivityStatusCancelCommand.Text := 'TSessionServerModule.UpdateDataActivityStatusCancel';
    FUpdateDataActivityStatusCancelCommand.Prepare;
  end;
  FUpdateDataActivityStatusCancelCommand.Parameters[0].Value.SetInt64(ADataID);
  FUpdateDataActivityStatusCancelCommand.Parameters[1].Value.SetInt32(AActivityID);
  FUpdateDataActivityStatusCancelCommand.Parameters[2].Value.SetWideString(ANotes);
  FUpdateDataActivityStatusCancelCommand.ExecuteUpdate;
  AMessage := FUpdateDataActivityStatusCancelCommand.Parameters[3].Value.GetWideString;
  Result := FUpdateDataActivityStatusCancelCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.UpdateDataActivityStatusPrev(ADataID: Int64; AActivityID: Integer; ANotes: string; out AMessage: string): Boolean;
begin
  if FUpdateDataActivityStatusPrevCommand = nil then
  begin
    FUpdateDataActivityStatusPrevCommand := FDBXConnection.CreateCommand;
    FUpdateDataActivityStatusPrevCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateDataActivityStatusPrevCommand.Text := 'TSessionServerModule.UpdateDataActivityStatusPrev';
    FUpdateDataActivityStatusPrevCommand.Prepare;
  end;
  FUpdateDataActivityStatusPrevCommand.Parameters[0].Value.SetInt64(ADataID);
  FUpdateDataActivityStatusPrevCommand.Parameters[1].Value.SetInt32(AActivityID);
  FUpdateDataActivityStatusPrevCommand.Parameters[2].Value.SetWideString(ANotes);
  FUpdateDataActivityStatusPrevCommand.ExecuteUpdate;
  AMessage := FUpdateDataActivityStatusPrevCommand.Parameters[3].Value.GetWideString;
  Result := FUpdateDataActivityStatusPrevCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.UpdateDataActivityStatusDoneBySystem(ADataID: Int64; AActivityID: Integer; ANotes: string; out AMessage: string): Boolean;
begin
  if FUpdateDataActivityStatusDoneBySystemCommand = nil then
  begin
    FUpdateDataActivityStatusDoneBySystemCommand := FDBXConnection.CreateCommand;
    FUpdateDataActivityStatusDoneBySystemCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateDataActivityStatusDoneBySystemCommand.Text := 'TSessionServerModule.UpdateDataActivityStatusDoneBySystem';
    FUpdateDataActivityStatusDoneBySystemCommand.Prepare;
  end;
  FUpdateDataActivityStatusDoneBySystemCommand.Parameters[0].Value.SetInt64(ADataID);
  FUpdateDataActivityStatusDoneBySystemCommand.Parameters[1].Value.SetInt32(AActivityID);
  FUpdateDataActivityStatusDoneBySystemCommand.Parameters[2].Value.SetWideString(ANotes);
  FUpdateDataActivityStatusDoneBySystemCommand.ExecuteUpdate;
  AMessage := FUpdateDataActivityStatusDoneBySystemCommand.Parameters[3].Value.GetWideString;
  Result := FUpdateDataActivityStatusDoneBySystemCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.AcknowledgeDataActivity(ADataID: Int64; AActivityID: Integer; out AMessage: string): Boolean;
begin
  if FAcknowledgeDataActivityCommand = nil then
  begin
    FAcknowledgeDataActivityCommand := FDBXConnection.CreateCommand;
    FAcknowledgeDataActivityCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAcknowledgeDataActivityCommand.Text := 'TSessionServerModule.AcknowledgeDataActivity';
    FAcknowledgeDataActivityCommand.Prepare;
  end;
  FAcknowledgeDataActivityCommand.Parameters[0].Value.SetInt64(ADataID);
  FAcknowledgeDataActivityCommand.Parameters[1].Value.SetInt32(AActivityID);
  FAcknowledgeDataActivityCommand.ExecuteUpdate;
  AMessage := FAcknowledgeDataActivityCommand.Parameters[2].Value.GetWideString;
  Result := FAcknowledgeDataActivityCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.OpenAcknowledgeDataActivity(ADataID: Int64; AActivityID: Integer; out AMessage: string): Boolean;
begin
  if FOpenAcknowledgeDataActivityCommand = nil then
  begin
    FOpenAcknowledgeDataActivityCommand := FDBXConnection.CreateCommand;
    FOpenAcknowledgeDataActivityCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOpenAcknowledgeDataActivityCommand.Text := 'TSessionServerModule.OpenAcknowledgeDataActivity';
    FOpenAcknowledgeDataActivityCommand.Prepare;
  end;
  FOpenAcknowledgeDataActivityCommand.Parameters[0].Value.SetInt64(ADataID);
  FOpenAcknowledgeDataActivityCommand.Parameters[1].Value.SetInt32(AActivityID);
  FOpenAcknowledgeDataActivityCommand.ExecuteUpdate;
  AMessage := FOpenAcknowledgeDataActivityCommand.Parameters[2].Value.GetWideString;
  Result := FOpenAcknowledgeDataActivityCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateAllPaymentVoucher(ADueDate: TDateTime; ASettleType: string; APRDCode: string; out AMsg: string): Boolean;
begin
  if FCreateAllPaymentVoucherCommand = nil then
  begin
    FCreateAllPaymentVoucherCommand := FDBXConnection.CreateCommand;
    FCreateAllPaymentVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateAllPaymentVoucherCommand.Text := 'TSessionServerModule.CreateAllPaymentVoucher';
    FCreateAllPaymentVoucherCommand.Prepare;
  end;
  FCreateAllPaymentVoucherCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FCreateAllPaymentVoucherCommand.Parameters[1].Value.SetWideString(ASettleType);
  FCreateAllPaymentVoucherCommand.Parameters[2].Value.SetWideString(APRDCode);
  FCreateAllPaymentVoucherCommand.ExecuteUpdate;
  AMsg := FCreateAllPaymentVoucherCommand.Parameters[3].Value.GetWideString;
  Result := FCreateAllPaymentVoucherCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreatePaymentVoucher(AAccID: Integer; ASettleCCY: string; ADueDate: TDateTime; out AMsg: string): Boolean;
begin
  if FCreatePaymentVoucherCommand = nil then
  begin
    FCreatePaymentVoucherCommand := FDBXConnection.CreateCommand;
    FCreatePaymentVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreatePaymentVoucherCommand.Text := 'TSessionServerModule.CreatePaymentVoucher';
    FCreatePaymentVoucherCommand.Prepare;
  end;
  FCreatePaymentVoucherCommand.Parameters[0].Value.SetInt32(AAccID);
  FCreatePaymentVoucherCommand.Parameters[1].Value.SetWideString(ASettleCCY);
  FCreatePaymentVoucherCommand.Parameters[2].Value.AsDateTime := ADueDate;
  FCreatePaymentVoucherCommand.ExecuteUpdate;
  AMsg := FCreatePaymentVoucherCommand.Parameters[3].Value.GetWideString;
  Result := FCreatePaymentVoucherCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateReceiveVoucher(AAccID: Integer; ASettleCCY: string; ADueDate: TDateTime; out AMsg: string): Boolean;
begin
  if FCreateReceiveVoucherCommand = nil then
  begin
    FCreateReceiveVoucherCommand := FDBXConnection.CreateCommand;
    FCreateReceiveVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateReceiveVoucherCommand.Text := 'TSessionServerModule.CreateReceiveVoucher';
    FCreateReceiveVoucherCommand.Prepare;
  end;
  FCreateReceiveVoucherCommand.Parameters[0].Value.SetInt32(AAccID);
  FCreateReceiveVoucherCommand.Parameters[1].Value.SetWideString(ASettleCCY);
  FCreateReceiveVoucherCommand.Parameters[2].Value.AsDateTime := ADueDate;
  FCreateReceiveVoucherCommand.ExecuteUpdate;
  AMsg := FCreateReceiveVoucherCommand.Parameters[3].Value.GetWideString;
  Result := FCreateReceiveVoucherCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateAutoReceiveVoucher(ADueDate: TDateTime; AAutoPosting: string; ASettleType: string; APRDCode: string; out AMsg: string): Boolean;
begin
  if FCreateAutoReceiveVoucherCommand = nil then
  begin
    FCreateAutoReceiveVoucherCommand := FDBXConnection.CreateCommand;
    FCreateAutoReceiveVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateAutoReceiveVoucherCommand.Text := 'TSessionServerModule.CreateAutoReceiveVoucher';
    FCreateAutoReceiveVoucherCommand.Prepare;
  end;
  FCreateAutoReceiveVoucherCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FCreateAutoReceiveVoucherCommand.Parameters[1].Value.SetWideString(AAutoPosting);
  FCreateAutoReceiveVoucherCommand.Parameters[2].Value.SetWideString(ASettleType);
  FCreateAutoReceiveVoucherCommand.Parameters[3].Value.SetWideString(APRDCode);
  FCreateAutoReceiveVoucherCommand.ExecuteUpdate;
  AMsg := FCreateAutoReceiveVoucherCommand.Parameters[4].Value.GetWideString;
  Result := FCreateAutoReceiveVoucherCommand.Parameters[5].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashVoucher_Posting(ATrxSelect: string; AVoucherID: Int64; AVoucherDate: TDateTime; ASettleType: string; AVoucherType: string; out AMsg: string): Boolean;
begin
  if FCashVoucher_PostingCommand = nil then
  begin
    FCashVoucher_PostingCommand := FDBXConnection.CreateCommand;
    FCashVoucher_PostingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashVoucher_PostingCommand.Text := 'TSessionServerModule.CashVoucher_Posting';
    FCashVoucher_PostingCommand.Prepare;
  end;
  FCashVoucher_PostingCommand.Parameters[0].Value.SetWideString(ATrxSelect);
  FCashVoucher_PostingCommand.Parameters[1].Value.SetInt64(AVoucherID);
  FCashVoucher_PostingCommand.Parameters[2].Value.AsDateTime := AVoucherDate;
  FCashVoucher_PostingCommand.Parameters[3].Value.SetWideString(ASettleType);
  FCashVoucher_PostingCommand.Parameters[4].Value.SetWideString(AVoucherType);
  FCashVoucher_PostingCommand.ExecuteUpdate;
  AMsg := FCashVoucher_PostingCommand.Parameters[5].Value.GetWideString;
  Result := FCashVoucher_PostingCommand.Parameters[6].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateAllDevidenCashVoucher(ADueDate: TDateTime; out Amsg: string): Boolean;
begin
  if FCreateAllDevidenCashVoucherCommand = nil then
  begin
    FCreateAllDevidenCashVoucherCommand := FDBXConnection.CreateCommand;
    FCreateAllDevidenCashVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateAllDevidenCashVoucherCommand.Text := 'TSessionServerModule.CreateAllDevidenCashVoucher';
    FCreateAllDevidenCashVoucherCommand.Prepare;
  end;
  FCreateAllDevidenCashVoucherCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FCreateAllDevidenCashVoucherCommand.ExecuteUpdate;
  Amsg := FCreateAllDevidenCashVoucherCommand.Parameters[1].Value.GetWideString;
  Result := FCreateAllDevidenCashVoucherCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.RollOverProcess(ADueDate: TDateTime; ASettleType: string; APRDCode: string; out Amsg: string): Boolean;
begin
  if FRollOverProcessCommand = nil then
  begin
    FRollOverProcessCommand := FDBXConnection.CreateCommand;
    FRollOverProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRollOverProcessCommand.Text := 'TSessionServerModule.RollOverProcess';
    FRollOverProcessCommand.Prepare;
  end;
  FRollOverProcessCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FRollOverProcessCommand.Parameters[1].Value.SetWideString(ASettleType);
  FRollOverProcessCommand.Parameters[2].Value.SetWideString(APRDCode);
  FRollOverProcessCommand.ExecuteUpdate;
  Amsg := FRollOverProcessCommand.Parameters[3].Value.GetWideString;
  Result := FRollOverProcessCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.FullFlowProcess(AACCID: Int64; AVoucherID: Int64; out AMsg: string): Boolean;
begin
  if FFullFlowProcessCommand = nil then
  begin
    FFullFlowProcessCommand := FDBXConnection.CreateCommand;
    FFullFlowProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFullFlowProcessCommand.Text := 'TSessionServerModule.FullFlowProcess';
    FFullFlowProcessCommand.Prepare;
  end;
  FFullFlowProcessCommand.Parameters[0].Value.SetInt64(AACCID);
  FFullFlowProcessCommand.Parameters[1].Value.SetInt64(AVoucherID);
  FFullFlowProcessCommand.ExecuteUpdate;
  AMsg := FFullFlowProcessCommand.Parameters[2].Value.GetWideString;
  Result := FFullFlowProcessCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.AllPaymentPosting(ADueDate: TDateTime; ASettleType: string; APRDCode: string; out Amsg: string): Boolean;
begin
  if FAllPaymentPostingCommand = nil then
  begin
    FAllPaymentPostingCommand := FDBXConnection.CreateCommand;
    FAllPaymentPostingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAllPaymentPostingCommand.Text := 'TSessionServerModule.AllPaymentPosting';
    FAllPaymentPostingCommand.Prepare;
  end;
  FAllPaymentPostingCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FAllPaymentPostingCommand.Parameters[1].Value.SetWideString(ASettleType);
  FAllPaymentPostingCommand.Parameters[2].Value.SetWideString(APRDCode);
  FAllPaymentPostingCommand.ExecuteUpdate;
  Amsg := FAllPaymentPostingCommand.Parameters[3].Value.GetWideString;
  Result := FAllPaymentPostingCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.PostingRepo(ACONRID: Int64; out AMessage: string): Boolean;
begin
  if FPostingRepoCommand = nil then
  begin
    FPostingRepoCommand := FDBXConnection.CreateCommand;
    FPostingRepoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostingRepoCommand.Text := 'TSessionServerModule.PostingRepo';
    FPostingRepoCommand.Prepare;
  end;
  FPostingRepoCommand.Parameters[0].Value.SetInt64(ACONRID);
  FPostingRepoCommand.ExecuteUpdate;
  AMessage := FPostingRepoCommand.Parameters[1].Value.GetWideString;
  Result := FPostingRepoCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CloseContractRepo(ACONRID: Int64; out AMessage: string): Boolean;
begin
  if FCloseContractRepoCommand = nil then
  begin
    FCloseContractRepoCommand := FDBXConnection.CreateCommand;
    FCloseContractRepoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCloseContractRepoCommand.Text := 'TSessionServerModule.CloseContractRepo';
    FCloseContractRepoCommand.Prepare;
  end;
  FCloseContractRepoCommand.Parameters[0].Value.SetInt64(ACONRID);
  FCloseContractRepoCommand.ExecuteUpdate;
  AMessage := FCloseContractRepoCommand.Parameters[1].Value.GetWideString;
  Result := FCloseContractRepoCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.SettleContractRepo(ACONRID: Int64; out AMessage: string): Boolean;
begin
  if FSettleContractRepoCommand = nil then
  begin
    FSettleContractRepoCommand := FDBXConnection.CreateCommand;
    FSettleContractRepoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSettleContractRepoCommand.Text := 'TSessionServerModule.SettleContractRepo';
    FSettleContractRepoCommand.Prepare;
  end;
  FSettleContractRepoCommand.Parameters[0].Value.SetInt64(ACONRID);
  FSettleContractRepoCommand.ExecuteUpdate;
  AMessage := FSettleContractRepoCommand.Parameters[1].Value.GetWideString;
  Result := FSettleContractRepoCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.PostingChangeRepoCollateral(ACCOLID: Int64; out AMessage: string): Boolean;
begin
  if FPostingChangeRepoCollateralCommand = nil then
  begin
    FPostingChangeRepoCollateralCommand := FDBXConnection.CreateCommand;
    FPostingChangeRepoCollateralCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostingChangeRepoCollateralCommand.Text := 'TSessionServerModule.PostingChangeRepoCollateral';
    FPostingChangeRepoCollateralCommand.Prepare;
  end;
  FPostingChangeRepoCollateralCommand.Parameters[0].Value.SetInt64(ACCOLID);
  FPostingChangeRepoCollateralCommand.ExecuteUpdate;
  AMessage := FPostingChangeRepoCollateralCommand.Parameters[1].Value.GetWideString;
  Result := FPostingChangeRepoCollateralCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateRepoInterest(ACONRID: Int64; out AMessage: string): Boolean;
begin
  if FGenerateRepoInterestCommand = nil then
  begin
    FGenerateRepoInterestCommand := FDBXConnection.CreateCommand;
    FGenerateRepoInterestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateRepoInterestCommand.Text := 'TSessionServerModule.GenerateRepoInterest';
    FGenerateRepoInterestCommand.Prepare;
  end;
  FGenerateRepoInterestCommand.Parameters[0].Value.SetInt64(ACONRID);
  FGenerateRepoInterestCommand.ExecuteUpdate;
  AMessage := FGenerateRepoInterestCommand.Parameters[1].Value.GetWideString;
  Result := FGenerateRepoInterestCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.RepoStockMovement(ACONRID: Int64; out AMessage: string): Boolean;
begin
  if FRepoStockMovementCommand = nil then
  begin
    FRepoStockMovementCommand := FDBXConnection.CreateCommand;
    FRepoStockMovementCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRepoStockMovementCommand.Text := 'TSessionServerModule.RepoStockMovement';
    FRepoStockMovementCommand.Prepare;
  end;
  FRepoStockMovementCommand.Parameters[0].Value.SetInt64(ACONRID);
  FRepoStockMovementCommand.ExecuteUpdate;
  AMessage := FRepoStockMovementCommand.Parameters[1].Value.GetWideString;
  Result := FRepoStockMovementCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateREPOPaymentVoucher(ACONRID: Int64; out AMessage: string): Boolean;
begin
  if FCreateREPOPaymentVoucherCommand = nil then
  begin
    FCreateREPOPaymentVoucherCommand := FDBXConnection.CreateCommand;
    FCreateREPOPaymentVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateREPOPaymentVoucherCommand.Text := 'TSessionServerModule.CreateREPOPaymentVoucher';
    FCreateREPOPaymentVoucherCommand.Prepare;
  end;
  FCreateREPOPaymentVoucherCommand.Parameters[0].Value.SetInt64(ACONRID);
  FCreateREPOPaymentVoucherCommand.ExecuteUpdate;
  AMessage := FCreateREPOPaymentVoucherCommand.Parameters[1].Value.GetWideString;
  Result := FCreateREPOPaymentVoucherCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.PostingRenewalRepo(ACONRID: Int64; out AMessage: string): Boolean;
begin
  if FPostingRenewalRepoCommand = nil then
  begin
    FPostingRenewalRepoCommand := FDBXConnection.CreateCommand;
    FPostingRenewalRepoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostingRenewalRepoCommand.Text := 'TSessionServerModule.PostingRenewalRepo';
    FPostingRenewalRepoCommand.Prepare;
  end;
  FPostingRenewalRepoCommand.Parameters[0].Value.SetInt64(ACONRID);
  FPostingRenewalRepoCommand.ExecuteUpdate;
  AMessage := FPostingRenewalRepoCommand.Parameters[1].Value.GetWideString;
  Result := FPostingRenewalRepoCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.SettleRenewalRepo(ACONRID: Int64; out AMessage: string): Boolean;
begin
  if FSettleRenewalRepoCommand = nil then
  begin
    FSettleRenewalRepoCommand := FDBXConnection.CreateCommand;
    FSettleRenewalRepoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSettleRenewalRepoCommand.Text := 'TSessionServerModule.SettleRenewalRepo';
    FSettleRenewalRepoCommand.Prepare;
  end;
  FSettleRenewalRepoCommand.Parameters[0].Value.SetInt64(ACONRID);
  FSettleRenewalRepoCommand.ExecuteUpdate;
  AMessage := FSettleRenewalRepoCommand.Parameters[1].Value.GetWideString;
  Result := FSettleRenewalRepoCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.RunSPInsertToSource(RptType: string; ADate: TDateTime);
begin
  if FRunSPInsertToSourceCommand = nil then
  begin
    FRunSPInsertToSourceCommand := FDBXConnection.CreateCommand;
    FRunSPInsertToSourceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRunSPInsertToSourceCommand.Text := 'TSessionServerModule.RunSPInsertToSource';
    FRunSPInsertToSourceCommand.Prepare;
  end;
  FRunSPInsertToSourceCommand.Parameters[0].Value.SetWideString(RptType);
  FRunSPInsertToSourceCommand.Parameters[1].Value.AsDateTime := ADate;
  FRunSPInsertToSourceCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.RunSPGenerateReport(ADate: TDateTime; RptGrpType: string);
begin
  if FRunSPGenerateReportCommand = nil then
  begin
    FRunSPGenerateReportCommand := FDBXConnection.CreateCommand;
    FRunSPGenerateReportCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRunSPGenerateReportCommand.Text := 'TSessionServerModule.RunSPGenerateReport';
    FRunSPGenerateReportCommand.Prepare;
  end;
  FRunSPGenerateReportCommand.Parameters[0].Value.AsDateTime := ADate;
  FRunSPGenerateReportCommand.Parameters[1].Value.SetWideString(RptGrpType);
  FRunSPGenerateReportCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.RunSPCreateTextReport(RptType: string);
begin
  if FRunSPCreateTextReportCommand = nil then
  begin
    FRunSPCreateTextReportCommand := FDBXConnection.CreateCommand;
    FRunSPCreateTextReportCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRunSPCreateTextReportCommand.Text := 'TSessionServerModule.RunSPCreateTextReport';
    FRunSPCreateTextReportCommand.Prepare;
  end;
  FRunSPCreateTextReportCommand.Parameters[0].Value.SetWideString(RptType);
  FRunSPCreateTextReportCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.EmptyTable(ATableName: string; out AMsg: string): Boolean;
begin
  if FEmptyTableCommand = nil then
  begin
    FEmptyTableCommand := FDBXConnection.CreateCommand;
    FEmptyTableCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEmptyTableCommand.Text := 'TSessionServerModule.EmptyTable';
    FEmptyTableCommand.Prepare;
  end;
  FEmptyTableCommand.Parameters[0].Value.SetWideString(ATableName);
  FEmptyTableCommand.ExecuteUpdate;
  AMsg := FEmptyTableCommand.Parameters[1].Value.GetWideString;
  Result := FEmptyTableCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateMKBD: string;
begin
  if FGenerateMKBDCommand = nil then
  begin
    FGenerateMKBDCommand := FDBXConnection.CreateCommand;
    FGenerateMKBDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateMKBDCommand.Text := 'TSessionServerModule.GenerateMKBD';
    FGenerateMKBDCommand.Prepare;
  end;
  FGenerateMKBDCommand.ExecuteUpdate;
  Result := FGenerateMKBDCommand.Parameters[0].Value.GetWideString;
end;

function TSessionServerModuleClient.GenerateDHKInstruction(ATrdDate: TDateTime; out AMsg: string): string;
begin
  if FGenerateDHKInstructionCommand = nil then
  begin
    FGenerateDHKInstructionCommand := FDBXConnection.CreateCommand;
    FGenerateDHKInstructionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateDHKInstructionCommand.Text := 'TSessionServerModule.GenerateDHKInstruction';
    FGenerateDHKInstructionCommand.Prepare;
  end;
  FGenerateDHKInstructionCommand.Parameters[0].Value.AsDateTime := ATrdDate;
  FGenerateDHKInstructionCommand.ExecuteUpdate;
  AMsg := FGenerateDHKInstructionCommand.Parameters[1].Value.GetWideString;
  Result := FGenerateDHKInstructionCommand.Parameters[2].Value.GetWideString;
end;

function TSessionServerModuleClient.DHKReconciliation(ATrdDate: TDateTime; out AMsg: string): string;
begin
  if FDHKReconciliationCommand = nil then
  begin
    FDHKReconciliationCommand := FDBXConnection.CreateCommand;
    FDHKReconciliationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDHKReconciliationCommand.Text := 'TSessionServerModule.DHKReconciliation';
    FDHKReconciliationCommand.Prepare;
  end;
  FDHKReconciliationCommand.Parameters[0].Value.AsDateTime := ATrdDate;
  FDHKReconciliationCommand.ExecuteUpdate;
  AMsg := FDHKReconciliationCommand.Parameters[1].Value.GetWideString;
  Result := FDHKReconciliationCommand.Parameters[2].Value.GetWideString;
end;

procedure TSessionServerModuleClient.DeleteDHKByDate(ADueDate: TDateTime);
begin
  if FDeleteDHKByDateCommand = nil then
  begin
    FDeleteDHKByDateCommand := FDBXConnection.CreateCommand;
    FDeleteDHKByDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeleteDHKByDateCommand.Text := 'TSessionServerModule.DeleteDHKByDate';
    FDeleteDHKByDateCommand.Prepare;
  end;
  FDeleteDHKByDateCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FDeleteDHKByDateCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.GenerateSetOffSelected(AAccID: Int64; ACOID: string; ACCY: string; AExRate: Double; ATrdDate: TDateTime; out AMsg: string): Boolean;
begin
  if FGenerateSetOffSelectedCommand = nil then
  begin
    FGenerateSetOffSelectedCommand := FDBXConnection.CreateCommand;
    FGenerateSetOffSelectedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateSetOffSelectedCommand.Text := 'TSessionServerModule.GenerateSetOffSelected';
    FGenerateSetOffSelectedCommand.Prepare;
  end;
  FGenerateSetOffSelectedCommand.Parameters[0].Value.SetInt64(AAccID);
  FGenerateSetOffSelectedCommand.Parameters[1].Value.SetWideString(ACOID);
  FGenerateSetOffSelectedCommand.Parameters[2].Value.SetWideString(ACCY);
  FGenerateSetOffSelectedCommand.Parameters[3].Value.SetDouble(AExRate);
  FGenerateSetOffSelectedCommand.Parameters[4].Value.AsDateTime := ATrdDate;
  FGenerateSetOffSelectedCommand.ExecuteUpdate;
  AMsg := FGenerateSetOffSelectedCommand.Parameters[5].Value.GetWideString;
  Result := FGenerateSetOffSelectedCommand.Parameters[6].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateSetOffReverse(AVoucherID: Int64; out AMsg: string): Boolean;
begin
  if FGenerateSetOffReverseCommand = nil then
  begin
    FGenerateSetOffReverseCommand := FDBXConnection.CreateCommand;
    FGenerateSetOffReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateSetOffReverseCommand.Text := 'TSessionServerModule.GenerateSetOffReverse';
    FGenerateSetOffReverseCommand.Prepare;
  end;
  FGenerateSetOffReverseCommand.Parameters[0].Value.SetInt64(AVoucherID);
  FGenerateSetOffReverseCommand.ExecuteUpdate;
  AMsg := FGenerateSetOffReverseCommand.Parameters[1].Value.GetWideString;
  Result := FGenerateSetOffReverseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreditBalanceProcess(AReportDate: TDateTime; AAccID: Int64; AAccSOPID: Int64; ACCY: string; AAmount: Double; ADesc: string; out AMsg: string): string;
begin
  if FCreditBalanceProcessCommand = nil then
  begin
    FCreditBalanceProcessCommand := FDBXConnection.CreateCommand;
    FCreditBalanceProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreditBalanceProcessCommand.Text := 'TSessionServerModule.CreditBalanceProcess';
    FCreditBalanceProcessCommand.Prepare;
  end;
  FCreditBalanceProcessCommand.Parameters[0].Value.AsDateTime := AReportDate;
  FCreditBalanceProcessCommand.Parameters[1].Value.SetInt64(AAccID);
  FCreditBalanceProcessCommand.Parameters[2].Value.SetInt64(AAccSOPID);
  FCreditBalanceProcessCommand.Parameters[3].Value.SetWideString(ACCY);
  FCreditBalanceProcessCommand.Parameters[4].Value.SetDouble(AAmount);
  FCreditBalanceProcessCommand.Parameters[5].Value.SetWideString(ADesc);
  FCreditBalanceProcessCommand.ExecuteUpdate;
  AMsg := FCreditBalanceProcessCommand.Parameters[6].Value.GetWideString;
  Result := FCreditBalanceProcessCommand.Parameters[7].Value.GetWideString;
end;

function TSessionServerModuleClient.CBestBalanceProcess(AReportDate: TDateTime; AAccID: Int64; AAccSOPID: Int64; ACCY: string; AAmount: Double; ADesc: string; out AMsg: string): string;
begin
  if FCBestBalanceProcessCommand = nil then
  begin
    FCBestBalanceProcessCommand := FDBXConnection.CreateCommand;
    FCBestBalanceProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCBestBalanceProcessCommand.Text := 'TSessionServerModule.CBestBalanceProcess';
    FCBestBalanceProcessCommand.Prepare;
  end;
  FCBestBalanceProcessCommand.Parameters[0].Value.AsDateTime := AReportDate;
  FCBestBalanceProcessCommand.Parameters[1].Value.SetInt64(AAccID);
  FCBestBalanceProcessCommand.Parameters[2].Value.SetInt64(AAccSOPID);
  FCBestBalanceProcessCommand.Parameters[3].Value.SetWideString(ACCY);
  FCBestBalanceProcessCommand.Parameters[4].Value.SetDouble(AAmount);
  FCBestBalanceProcessCommand.Parameters[5].Value.SetWideString(ADesc);
  FCBestBalanceProcessCommand.ExecuteUpdate;
  AMsg := FCBestBalanceProcessCommand.Parameters[6].Value.GetWideString;
  Result := FCBestBalanceProcessCommand.Parameters[7].Value.GetWideString;
end;

function TSessionServerModuleClient.DistributionIPOFixAllotment(AIPOID: Int64; out AMsg: string): Boolean;
begin
  if FDistributionIPOFixAllotmentCommand = nil then
  begin
    FDistributionIPOFixAllotmentCommand := FDBXConnection.CreateCommand;
    FDistributionIPOFixAllotmentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDistributionIPOFixAllotmentCommand.Text := 'TSessionServerModule.DistributionIPOFixAllotment';
    FDistributionIPOFixAllotmentCommand.Prepare;
  end;
  FDistributionIPOFixAllotmentCommand.Parameters[0].Value.SetInt64(AIPOID);
  FDistributionIPOFixAllotmentCommand.ExecuteUpdate;
  AMsg := FDistributionIPOFixAllotmentCommand.Parameters[1].Value.GetWideString;
  Result := FDistributionIPOFixAllotmentCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.DistributionIPOPooling(AIPOID: Int64; out AMsg: string): Boolean;
begin
  if FDistributionIPOPoolingCommand = nil then
  begin
    FDistributionIPOPoolingCommand := FDBXConnection.CreateCommand;
    FDistributionIPOPoolingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDistributionIPOPoolingCommand.Text := 'TSessionServerModule.DistributionIPOPooling';
    FDistributionIPOPoolingCommand.Prepare;
  end;
  FDistributionIPOPoolingCommand.Parameters[0].Value.SetInt64(AIPOID);
  FDistributionIPOPoolingCommand.ExecuteUpdate;
  AMsg := FDistributionIPOPoolingCommand.Parameters[1].Value.GetWideString;
  Result := FDistributionIPOPoolingCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.PostingIPO(AIPOID: Integer; out AMsg: string): Boolean;
begin
  if FPostingIPOCommand = nil then
  begin
    FPostingIPOCommand := FDBXConnection.CreateCommand;
    FPostingIPOCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostingIPOCommand.Text := 'TSessionServerModule.PostingIPO';
    FPostingIPOCommand.Prepare;
  end;
  FPostingIPOCommand.Parameters[0].Value.SetInt32(AIPOID);
  FPostingIPOCommand.ExecuteUpdate;
  AMsg := FPostingIPOCommand.Parameters[1].Value.GetWideString;
  Result := FPostingIPOCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.PostingIPOAllotment(AAllotmentID: Int64; out AMsg: string): Boolean;
begin
  if FPostingIPOAllotmentCommand = nil then
  begin
    FPostingIPOAllotmentCommand := FDBXConnection.CreateCommand;
    FPostingIPOAllotmentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostingIPOAllotmentCommand.Text := 'TSessionServerModule.PostingIPOAllotment';
    FPostingIPOAllotmentCommand.Prepare;
  end;
  FPostingIPOAllotmentCommand.Parameters[0].Value.SetInt64(AAllotmentID);
  FPostingIPOAllotmentCommand.ExecuteUpdate;
  AMsg := FPostingIPOAllotmentCommand.Parameters[1].Value.GetWideString;
  Result := FPostingIPOAllotmentCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.PostingIPOPolling(APoolingID: Int64; out AMsg: string): Boolean;
begin
  if FPostingIPOPollingCommand = nil then
  begin
    FPostingIPOPollingCommand := FDBXConnection.CreateCommand;
    FPostingIPOPollingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostingIPOPollingCommand.Text := 'TSessionServerModule.PostingIPOPolling';
    FPostingIPOPollingCommand.Prepare;
  end;
  FPostingIPOPollingCommand.Parameters[0].Value.SetInt64(APoolingID);
  FPostingIPOPollingCommand.ExecuteUpdate;
  AMsg := FPostingIPOPollingCommand.Parameters[1].Value.GetWideString;
  Result := FPostingIPOPollingCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.RegisterIPOStock(AIPOID: Int64; out AMsg: string): Boolean;
begin
  if FRegisterIPOStockCommand = nil then
  begin
    FRegisterIPOStockCommand := FDBXConnection.CreateCommand;
    FRegisterIPOStockCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRegisterIPOStockCommand.Text := 'TSessionServerModule.RegisterIPOStock';
    FRegisterIPOStockCommand.Prepare;
  end;
  FRegisterIPOStockCommand.Parameters[0].Value.SetInt64(AIPOID);
  FRegisterIPOStockCommand.ExecuteUpdate;
  AMsg := FRegisterIPOStockCommand.Parameters[1].Value.GetWideString;
  Result := FRegisterIPOStockCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GeneratePaymentIPOAllotment(AAllotmentID: Int64; out AMsg: string): Boolean;
begin
  if FGeneratePaymentIPOAllotmentCommand = nil then
  begin
    FGeneratePaymentIPOAllotmentCommand := FDBXConnection.CreateCommand;
    FGeneratePaymentIPOAllotmentCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGeneratePaymentIPOAllotmentCommand.Text := 'TSessionServerModule.GeneratePaymentIPOAllotment';
    FGeneratePaymentIPOAllotmentCommand.Prepare;
  end;
  FGeneratePaymentIPOAllotmentCommand.Parameters[0].Value.SetInt64(AAllotmentID);
  FGeneratePaymentIPOAllotmentCommand.ExecuteUpdate;
  AMsg := FGeneratePaymentIPOAllotmentCommand.Parameters[1].Value.GetWideString;
  Result := FGeneratePaymentIPOAllotmentCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GeneratePaymentIPOPolling(APoolingID: Int64; out AMsg: string): Boolean;
begin
  if FGeneratePaymentIPOPollingCommand = nil then
  begin
    FGeneratePaymentIPOPollingCommand := FDBXConnection.CreateCommand;
    FGeneratePaymentIPOPollingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGeneratePaymentIPOPollingCommand.Text := 'TSessionServerModule.GeneratePaymentIPOPolling';
    FGeneratePaymentIPOPollingCommand.Prepare;
  end;
  FGeneratePaymentIPOPollingCommand.Parameters[0].Value.SetInt64(APoolingID);
  FGeneratePaymentIPOPollingCommand.ExecuteUpdate;
  AMsg := FGeneratePaymentIPOPollingCommand.Parameters[1].Value.GetWideString;
  Result := FGeneratePaymentIPOPollingCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CustodyExternalRef(AInstrMode: string; ATrdDate: TDateTime; ADueDate: TDateTime; ASeqName: string; AReffNo: string; AStockCode: string): string;
begin
  if FCustodyExternalRefCommand = nil then
  begin
    FCustodyExternalRefCommand := FDBXConnection.CreateCommand;
    FCustodyExternalRefCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCustodyExternalRefCommand.Text := 'TSessionServerModule.CustodyExternalRef';
    FCustodyExternalRefCommand.Prepare;
  end;
  FCustodyExternalRefCommand.Parameters[0].Value.SetWideString(AInstrMode);
  FCustodyExternalRefCommand.Parameters[1].Value.AsDateTime := ATrdDate;
  FCustodyExternalRefCommand.Parameters[2].Value.AsDateTime := ADueDate;
  FCustodyExternalRefCommand.Parameters[3].Value.SetWideString(ASeqName);
  FCustodyExternalRefCommand.Parameters[4].Value.SetWideString(AReffNo);
  FCustodyExternalRefCommand.Parameters[5].Value.SetWideString(AStockCode);
  FCustodyExternalRefCommand.ExecuteUpdate;
  Result := FCustodyExternalRefCommand.Parameters[6].Value.GetWideString;
end;

function TSessionServerModuleClient.AllPostingCashReceive(ADueDate: TDateTime; ASettleType: string; APrdCode: string; out AMsg: string): Boolean;
begin
  if FAllPostingCashReceiveCommand = nil then
  begin
    FAllPostingCashReceiveCommand := FDBXConnection.CreateCommand;
    FAllPostingCashReceiveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAllPostingCashReceiveCommand.Text := 'TSessionServerModule.AllPostingCashReceive';
    FAllPostingCashReceiveCommand.Prepare;
  end;
  FAllPostingCashReceiveCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FAllPostingCashReceiveCommand.Parameters[1].Value.SetWideString(ASettleType);
  FAllPostingCashReceiveCommand.Parameters[2].Value.SetWideString(APrdCode);
  FAllPostingCashReceiveCommand.ExecuteUpdate;
  AMsg := FAllPostingCashReceiveCommand.Parameters[3].Value.GetWideString;
  Result := FAllPostingCashReceiveCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.SetoffSettlementMarginProcess(ADueDate: TDateTime; ASettleType: string; APrdCode: string; out AMsg: string): Boolean;
begin
  if FSetoffSettlementMarginProcessCommand = nil then
  begin
    FSetoffSettlementMarginProcessCommand := FDBXConnection.CreateCommand;
    FSetoffSettlementMarginProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetoffSettlementMarginProcessCommand.Text := 'TSessionServerModule.SetoffSettlementMarginProcess';
    FSetoffSettlementMarginProcessCommand.Prepare;
  end;
  FSetoffSettlementMarginProcessCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FSetoffSettlementMarginProcessCommand.Parameters[1].Value.SetWideString(ASettleType);
  FSetoffSettlementMarginProcessCommand.Parameters[2].Value.SetWideString(APrdCode);
  FSetoffSettlementMarginProcessCommand.ExecuteUpdate;
  AMsg := FSetoffSettlementMarginProcessCommand.Parameters[3].Value.GetWideString;
  Result := FSetoffSettlementMarginProcessCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateBankPaymentReceive(AVOUCHERDATE: TDateTime; AVOUCHERTYPE: string; AAUTOPOSTING: string; AACCID: Int64; ABROKER_BANKID: Int64; ACUST_BANKID: Int64; AVOUCHER_DESC: string; ACCYCODE: string; AEXRATE: Double; AAMOUNT: Double; out AMsg: string): Boolean;
begin
  if FCreateBankPaymentReceiveCommand = nil then
  begin
    FCreateBankPaymentReceiveCommand := FDBXConnection.CreateCommand;
    FCreateBankPaymentReceiveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateBankPaymentReceiveCommand.Text := 'TSessionServerModule.CreateBankPaymentReceive';
    FCreateBankPaymentReceiveCommand.Prepare;
  end;
  FCreateBankPaymentReceiveCommand.Parameters[0].Value.AsDateTime := AVOUCHERDATE;
  FCreateBankPaymentReceiveCommand.Parameters[1].Value.SetWideString(AVOUCHERTYPE);
  FCreateBankPaymentReceiveCommand.Parameters[2].Value.SetWideString(AAUTOPOSTING);
  FCreateBankPaymentReceiveCommand.Parameters[3].Value.SetInt64(AACCID);
  FCreateBankPaymentReceiveCommand.Parameters[4].Value.SetInt64(ABROKER_BANKID);
  FCreateBankPaymentReceiveCommand.Parameters[5].Value.SetInt64(ACUST_BANKID);
  FCreateBankPaymentReceiveCommand.Parameters[6].Value.SetWideString(AVOUCHER_DESC);
  FCreateBankPaymentReceiveCommand.Parameters[7].Value.SetWideString(ACCYCODE);
  FCreateBankPaymentReceiveCommand.Parameters[8].Value.SetDouble(AEXRATE);
  FCreateBankPaymentReceiveCommand.Parameters[9].Value.SetDouble(AAMOUNT);
  FCreateBankPaymentReceiveCommand.ExecuteUpdate;
  AMsg := FCreateBankPaymentReceiveCommand.Parameters[10].Value.GetWideString;
  Result := FCreateBankPaymentReceiveCommand.Parameters[11].Value.GetBoolean;
end;

function TSessionServerModuleClient.StartEndDayProcess: Boolean;
begin
  if FStartEndDayProcessCommand = nil then
  begin
    FStartEndDayProcessCommand := FDBXConnection.CreateCommand;
    FStartEndDayProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStartEndDayProcessCommand.Text := 'TSessionServerModule.StartEndDayProcess';
    FStartEndDayProcessCommand.Prepare;
  end;
  FStartEndDayProcessCommand.ExecuteUpdate;
  Result := FStartEndDayProcessCommand.Parameters[0].Value.GetBoolean;
end;

function TSessionServerModuleClient.FinishEndDayProcess: Boolean;
begin
  if FFinishEndDayProcessCommand = nil then
  begin
    FFinishEndDayProcessCommand := FDBXConnection.CreateCommand;
    FFinishEndDayProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFinishEndDayProcessCommand.Text := 'TSessionServerModule.FinishEndDayProcess';
    FFinishEndDayProcessCommand.Prepare;
  end;
  FFinishEndDayProcessCommand.ExecuteUpdate;
  Result := FFinishEndDayProcessCommand.Parameters[0].Value.GetBoolean;
end;

function TSessionServerModuleClient.SplitReverseProcess(ACAID: Int64; out AMsg: string): Boolean;
begin
  if FSplitReverseProcessCommand = nil then
  begin
    FSplitReverseProcessCommand := FDBXConnection.CreateCommand;
    FSplitReverseProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSplitReverseProcessCommand.Text := 'TSessionServerModule.SplitReverseProcess';
    FSplitReverseProcessCommand.Prepare;
  end;
  FSplitReverseProcessCommand.Parameters[0].Value.SetInt64(ACAID);
  FSplitReverseProcessCommand.ExecuteUpdate;
  AMsg := FSplitReverseProcessCommand.Parameters[1].Value.GetWideString;
  Result := FSplitReverseProcessCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CancelCashVoucher(VoucherID: Int64; out AMsg: string): Boolean;
begin
  if FCancelCashVoucherCommand = nil then
  begin
    FCancelCashVoucherCommand := FDBXConnection.CreateCommand;
    FCancelCashVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCancelCashVoucherCommand.Text := 'TSessionServerModule.CancelCashVoucher';
    FCancelCashVoucherCommand.Prepare;
  end;
  FCancelCashVoucherCommand.Parameters[0].Value.SetInt64(VoucherID);
  FCancelCashVoucherCommand.ExecuteUpdate;
  AMsg := FCancelCashVoucherCommand.Parameters[1].Value.GetWideString;
  Result := FCancelCashVoucherCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.SettleCashVoucher(VoucherID: Int64; out AMsg: string): Boolean;
begin
  if FSettleCashVoucherCommand = nil then
  begin
    FSettleCashVoucherCommand := FDBXConnection.CreateCommand;
    FSettleCashVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSettleCashVoucherCommand.Text := 'TSessionServerModule.SettleCashVoucher';
    FSettleCashVoucherCommand.Prepare;
  end;
  FSettleCashVoucherCommand.Parameters[0].Value.SetInt64(VoucherID);
  FSettleCashVoucherCommand.ExecuteUpdate;
  AMsg := FSettleCashVoucherCommand.Parameters[1].Value.GetWideString;
  Result := FSettleCashVoucherCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ReverseCashVoucher(VoucherID: Int64; out AMsg: string): Boolean;
begin
  if FReverseCashVoucherCommand = nil then
  begin
    FReverseCashVoucherCommand := FDBXConnection.CreateCommand;
    FReverseCashVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseCashVoucherCommand.Text := 'TSessionServerModule.ReverseCashVoucher';
    FReverseCashVoucherCommand.Prepare;
  end;
  FReverseCashVoucherCommand.Parameters[0].Value.SetInt64(VoucherID);
  FReverseCashVoucherCommand.ExecuteUpdate;
  AMsg := FReverseCashVoucherCommand.Parameters[1].Value.GetWideString;
  Result := FReverseCashVoucherCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.UpdateCashOnHold(ACCID: Integer; ACcy: string; AHoldAmount: Double; out AMsg: string): Boolean;
begin
  if FUpdateCashOnHoldCommand = nil then
  begin
    FUpdateCashOnHoldCommand := FDBXConnection.CreateCommand;
    FUpdateCashOnHoldCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateCashOnHoldCommand.Text := 'TSessionServerModule.UpdateCashOnHold';
    FUpdateCashOnHoldCommand.Prepare;
  end;
  FUpdateCashOnHoldCommand.Parameters[0].Value.SetInt32(ACCID);
  FUpdateCashOnHoldCommand.Parameters[1].Value.SetWideString(ACcy);
  FUpdateCashOnHoldCommand.Parameters[2].Value.SetDouble(AHoldAmount);
  FUpdateCashOnHoldCommand.ExecuteUpdate;
  AMsg := FUpdateCashOnHoldCommand.Parameters[3].Value.GetWideString;
  Result := FUpdateCashOnHoldCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateAutoRollOverCashVoucher(ACCID: Integer; ACCY: string; out AMsg: string): Boolean;
begin
  if FCreateAutoRollOverCashVoucherCommand = nil then
  begin
    FCreateAutoRollOverCashVoucherCommand := FDBXConnection.CreateCommand;
    FCreateAutoRollOverCashVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateAutoRollOverCashVoucherCommand.Text := 'TSessionServerModule.CreateAutoRollOverCashVoucher';
    FCreateAutoRollOverCashVoucherCommand.Prepare;
  end;
  FCreateAutoRollOverCashVoucherCommand.Parameters[0].Value.SetInt32(ACCID);
  FCreateAutoRollOverCashVoucherCommand.Parameters[1].Value.SetWideString(ACCY);
  FCreateAutoRollOverCashVoucherCommand.ExecuteUpdate;
  AMsg := FCreateAutoRollOverCashVoucherCommand.Parameters[2].Value.GetWideString;
  Result := FCreateAutoRollOverCashVoucherCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateCOLWCOLDS(ATrdDate: TDateTime; out AMsg: string): Boolean;
begin
  if FGenerateCOLWCOLDSCommand = nil then
  begin
    FGenerateCOLWCOLDSCommand := FDBXConnection.CreateCommand;
    FGenerateCOLWCOLDSCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateCOLWCOLDSCommand.Text := 'TSessionServerModule.GenerateCOLWCOLDS';
    FGenerateCOLWCOLDSCommand.Prepare;
  end;
  FGenerateCOLWCOLDSCommand.Parameters[0].Value.AsDateTime := ATrdDate;
  FGenerateCOLWCOLDSCommand.ExecuteUpdate;
  AMsg := FGenerateCOLWCOLDSCommand.Parameters[1].Value.GetWideString;
  Result := FGenerateCOLWCOLDSCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateSelectedCashVoucher(AAccID: Integer; ADueDate: TDateTime; out Amsg: string): Boolean;
begin
  if FCreateSelectedCashVoucherCommand = nil then
  begin
    FCreateSelectedCashVoucherCommand := FDBXConnection.CreateCommand;
    FCreateSelectedCashVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateSelectedCashVoucherCommand.Text := 'TSessionServerModule.CreateSelectedCashVoucher';
    FCreateSelectedCashVoucherCommand.Prepare;
  end;
  FCreateSelectedCashVoucherCommand.Parameters[0].Value.SetInt32(AAccID);
  FCreateSelectedCashVoucherCommand.Parameters[1].Value.AsDateTime := ADueDate;
  FCreateSelectedCashVoucherCommand.ExecuteUpdate;
  Amsg := FCreateSelectedCashVoucherCommand.Parameters[2].Value.GetWideString;
  Result := FCreateSelectedCashVoucherCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateSelectedReceiveCashVoucher(AAccID: Integer; ADueDate: TDateTime; out Amsg: string): Boolean;
begin
  if FCreateSelectedReceiveCashVoucherCommand = nil then
  begin
    FCreateSelectedReceiveCashVoucherCommand := FDBXConnection.CreateCommand;
    FCreateSelectedReceiveCashVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateSelectedReceiveCashVoucherCommand.Text := 'TSessionServerModule.CreateSelectedReceiveCashVoucher';
    FCreateSelectedReceiveCashVoucherCommand.Prepare;
  end;
  FCreateSelectedReceiveCashVoucherCommand.Parameters[0].Value.SetInt32(AAccID);
  FCreateSelectedReceiveCashVoucherCommand.Parameters[1].Value.AsDateTime := ADueDate;
  FCreateSelectedReceiveCashVoucherCommand.ExecuteUpdate;
  Amsg := FCreateSelectedReceiveCashVoucherCommand.Parameters[2].Value.GetWideString;
  Result := FCreateSelectedReceiveCashVoucherCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashMutationPosting(ACMID: Int64; out AMsg: string): Boolean;
begin
  if FCashMutationPostingCommand = nil then
  begin
    FCashMutationPostingCommand := FDBXConnection.CreateCommand;
    FCashMutationPostingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashMutationPostingCommand.Text := 'TSessionServerModule.CashMutationPosting';
    FCashMutationPostingCommand.Prepare;
  end;
  FCashMutationPostingCommand.Parameters[0].Value.SetInt64(ACMID);
  FCashMutationPostingCommand.ExecuteUpdate;
  AMsg := FCashMutationPostingCommand.Parameters[1].Value.GetWideString;
  Result := FCashMutationPostingCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashMutationReverse(ACMID: Int64; out AMsg: string): Boolean;
begin
  if FCashMutationReverseCommand = nil then
  begin
    FCashMutationReverseCommand := FDBXConnection.CreateCommand;
    FCashMutationReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashMutationReverseCommand.Text := 'TSessionServerModule.CashMutationReverse';
    FCashMutationReverseCommand.Prepare;
  end;
  FCashMutationReverseCommand.Parameters[0].Value.SetInt64(ACMID);
  FCashMutationReverseCommand.ExecuteUpdate;
  AMsg := FCashMutationReverseCommand.Parameters[1].Value.GetWideString;
  Result := FCashMutationReverseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashMutationCancel(ACMID: Int64; out AMsg: string): Boolean;
begin
  if FCashMutationCancelCommand = nil then
  begin
    FCashMutationCancelCommand := FDBXConnection.CreateCommand;
    FCashMutationCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashMutationCancelCommand.Text := 'TSessionServerModule.CashMutationCancel';
    FCashMutationCancelCommand.Prepare;
  end;
  FCashMutationCancelCommand.Parameters[0].Value.SetInt64(ACMID);
  FCashMutationCancelCommand.ExecuteUpdate;
  AMsg := FCashMutationCancelCommand.Parameters[1].Value.GetWideString;
  Result := FCashMutationCancelCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ExecQry(AQuery: string): Boolean;
begin
  if FExecQryCommand = nil then
  begin
    FExecQryCommand := FDBXConnection.CreateCommand;
    FExecQryCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExecQryCommand.Text := 'TSessionServerModule.ExecQry';
    FExecQryCommand.Prepare;
  end;
  FExecQryCommand.Parameters[0].Value.SetWideString(AQuery);
  FExecQryCommand.ExecuteUpdate;
  Result := FExecQryCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.PostCashDepRDN(ABIID: Int64; out AMsg: string): Boolean;
begin
  if FPostCashDepRDNCommand = nil then
  begin
    FPostCashDepRDNCommand := FDBXConnection.CreateCommand;
    FPostCashDepRDNCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPostCashDepRDNCommand.Text := 'TSessionServerModule.PostCashDepRDN';
    FPostCashDepRDNCommand.Prepare;
  end;
  FPostCashDepRDNCommand.Parameters[0].Value.SetInt64(ABIID);
  FPostCashDepRDNCommand.ExecuteUpdate;
  AMsg := FPostCashDepRDNCommand.Parameters[1].Value.GetWideString;
  Result := FPostCashDepRDNCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateMarginNotification(ACreateBy: string; out AMessage: string): Boolean;
begin
  if FCreateMarginNotificationCommand = nil then
  begin
    FCreateMarginNotificationCommand := FDBXConnection.CreateCommand;
    FCreateMarginNotificationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateMarginNotificationCommand.Text := 'TSessionServerModule.CreateMarginNotification';
    FCreateMarginNotificationCommand.Prepare;
  end;
  FCreateMarginNotificationCommand.Parameters[0].Value.SetWideString(ACreateBy);
  FCreateMarginNotificationCommand.ExecuteUpdate;
  AMessage := FCreateMarginNotificationCommand.Parameters[1].Value.GetWideString;
  Result := FCreateMarginNotificationCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.MarginMCallDay;
begin
  if FMarginMCallDayCommand = nil then
  begin
    FMarginMCallDayCommand := FDBXConnection.CreateCommand;
    FMarginMCallDayCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMarginMCallDayCommand.Text := 'TSessionServerModule.MarginMCallDay';
    FMarginMCallDayCommand.Prepare;
  end;
  FMarginMCallDayCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.ExerciseRightProcess(ACAID: Int64; AExerNo: WideString; ATrdDate: TDateTime; out AMsg: string): Boolean;
begin
  if FExerciseRightProcessCommand = nil then
  begin
    FExerciseRightProcessCommand := FDBXConnection.CreateCommand;
    FExerciseRightProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExerciseRightProcessCommand.Text := 'TSessionServerModule.ExerciseRightProcess';
    FExerciseRightProcessCommand.Prepare;
  end;
  FExerciseRightProcessCommand.Parameters[0].Value.SetInt64(ACAID);
  FExerciseRightProcessCommand.Parameters[1].Value.SetWideString(AExerNo);
  FExerciseRightProcessCommand.Parameters[2].Value.AsDateTime := ATrdDate;
  FExerciseRightProcessCommand.ExecuteUpdate;
  AMsg := FExerciseRightProcessCommand.Parameters[3].Value.GetWideString;
  Result := FExerciseRightProcessCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.ExerciseWarrantProcess(ACAID: Int64; AExerNo: WideString; ATrdDate: TDateTime; out AMsg: string): Boolean;
begin
  if FExerciseWarrantProcessCommand = nil then
  begin
    FExerciseWarrantProcessCommand := FDBXConnection.CreateCommand;
    FExerciseWarrantProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExerciseWarrantProcessCommand.Text := 'TSessionServerModule.ExerciseWarrantProcess';
    FExerciseWarrantProcessCommand.Prepare;
  end;
  FExerciseWarrantProcessCommand.Parameters[0].Value.SetInt64(ACAID);
  FExerciseWarrantProcessCommand.Parameters[1].Value.SetWideString(AExerNo);
  FExerciseWarrantProcessCommand.Parameters[2].Value.AsDateTime := ATrdDate;
  FExerciseWarrantProcessCommand.ExecuteUpdate;
  AMsg := FExerciseWarrantProcessCommand.Parameters[3].Value.GetWideString;
  Result := FExerciseWarrantProcessCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.StockSettleVoucherPosting(ASSID: Int64; out AMsg: string): Boolean;
begin
  if FStockSettleVoucherPostingCommand = nil then
  begin
    FStockSettleVoucherPostingCommand := FDBXConnection.CreateCommand;
    FStockSettleVoucherPostingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockSettleVoucherPostingCommand.Text := 'TSessionServerModule.StockSettleVoucherPosting';
    FStockSettleVoucherPostingCommand.Prepare;
  end;
  FStockSettleVoucherPostingCommand.Parameters[0].Value.SetInt64(ASSID);
  FStockSettleVoucherPostingCommand.ExecuteUpdate;
  AMsg := FStockSettleVoucherPostingCommand.Parameters[1].Value.GetWideString;
  Result := FStockSettleVoucherPostingCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.StockSettleVoucherCancel(ASSID: Int64; out AMsg: string): Boolean;
begin
  if FStockSettleVoucherCancelCommand = nil then
  begin
    FStockSettleVoucherCancelCommand := FDBXConnection.CreateCommand;
    FStockSettleVoucherCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockSettleVoucherCancelCommand.Text := 'TSessionServerModule.StockSettleVoucherCancel';
    FStockSettleVoucherCancelCommand.Prepare;
  end;
  FStockSettleVoucherCancelCommand.Parameters[0].Value.SetInt64(ASSID);
  FStockSettleVoucherCancelCommand.ExecuteUpdate;
  AMsg := FStockSettleVoucherCancelCommand.Parameters[1].Value.GetWideString;
  Result := FStockSettleVoucherCancelCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.StockSettleVoucherReverse(ASSID: Int64; out AMsg: string): Boolean;
begin
  if FStockSettleVoucherReverseCommand = nil then
  begin
    FStockSettleVoucherReverseCommand := FDBXConnection.CreateCommand;
    FStockSettleVoucherReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockSettleVoucherReverseCommand.Text := 'TSessionServerModule.StockSettleVoucherReverse';
    FStockSettleVoucherReverseCommand.Prepare;
  end;
  FStockSettleVoucherReverseCommand.Parameters[0].Value.SetInt64(ASSID);
  FStockSettleVoucherReverseCommand.ExecuteUpdate;
  AMsg := FStockSettleVoucherReverseCommand.Parameters[1].Value.GetWideString;
  Result := FStockSettleVoucherReverseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateCustodyInstruction(AID: Int64; AType: string; out AMsg: string): Boolean;
begin
  if FGenerateCustodyInstructionCommand = nil then
  begin
    FGenerateCustodyInstructionCommand := FDBXConnection.CreateCommand;
    FGenerateCustodyInstructionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateCustodyInstructionCommand.Text := 'TSessionServerModule.GenerateCustodyInstruction';
    FGenerateCustodyInstructionCommand.Prepare;
  end;
  FGenerateCustodyInstructionCommand.Parameters[0].Value.SetInt64(AID);
  FGenerateCustodyInstructionCommand.Parameters[1].Value.SetWideString(AType);
  FGenerateCustodyInstructionCommand.ExecuteUpdate;
  AMsg := FGenerateCustodyInstructionCommand.Parameters[2].Value.GetWideString;
  Result := FGenerateCustodyInstructionCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateStockVoucher(AAccID: Int64; AClientAccID: Int64; AStockID: Int64; ADueDate: TDateTime; out AMsg: string): Boolean;
begin
  if FCreateStockVoucherCommand = nil then
  begin
    FCreateStockVoucherCommand := FDBXConnection.CreateCommand;
    FCreateStockVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateStockVoucherCommand.Text := 'TSessionServerModule.CreateStockVoucher';
    FCreateStockVoucherCommand.Prepare;
  end;
  FCreateStockVoucherCommand.Parameters[0].Value.SetInt64(AAccID);
  FCreateStockVoucherCommand.Parameters[1].Value.SetInt64(AClientAccID);
  FCreateStockVoucherCommand.Parameters[2].Value.SetInt64(AStockID);
  FCreateStockVoucherCommand.Parameters[3].Value.AsDateTime := ADueDate;
  FCreateStockVoucherCommand.ExecuteUpdate;
  AMsg := FCreateStockVoucherCommand.Parameters[4].Value.GetWideString;
  Result := FCreateStockVoucherCommand.Parameters[5].Value.GetBoolean;
end;

function TSessionServerModuleClient.UpdateStatusCustodyInst(AStat: string; ACustodyID: string): string;
begin
  if FUpdateStatusCustodyInstCommand = nil then
  begin
    FUpdateStatusCustodyInstCommand := FDBXConnection.CreateCommand;
    FUpdateStatusCustodyInstCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateStatusCustodyInstCommand.Text := 'TSessionServerModule.UpdateStatusCustodyInst';
    FUpdateStatusCustodyInstCommand.Prepare;
  end;
  FUpdateStatusCustodyInstCommand.Parameters[0].Value.SetWideString(AStat);
  FUpdateStatusCustodyInstCommand.Parameters[1].Value.SetWideString(ACustodyID);
  FUpdateStatusCustodyInstCommand.ExecuteUpdate;
  Result := FUpdateStatusCustodyInstCommand.Parameters[2].Value.GetWideString;
end;

function TSessionServerModuleClient.UpdateIPOAllotmentGroup(AGroupID: Int64; ANETFEE: Double; AVAT: Double; AWHT: Double; AIPOID: string): string;
begin
  if FUpdateIPOAllotmentGroupCommand = nil then
  begin
    FUpdateIPOAllotmentGroupCommand := FDBXConnection.CreateCommand;
    FUpdateIPOAllotmentGroupCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateIPOAllotmentGroupCommand.Text := 'TSessionServerModule.UpdateIPOAllotmentGroup';
    FUpdateIPOAllotmentGroupCommand.Prepare;
  end;
  FUpdateIPOAllotmentGroupCommand.Parameters[0].Value.SetInt64(AGroupID);
  FUpdateIPOAllotmentGroupCommand.Parameters[1].Value.SetDouble(ANETFEE);
  FUpdateIPOAllotmentGroupCommand.Parameters[2].Value.SetDouble(AVAT);
  FUpdateIPOAllotmentGroupCommand.Parameters[3].Value.SetDouble(AWHT);
  FUpdateIPOAllotmentGroupCommand.Parameters[4].Value.SetWideString(AIPOID);
  FUpdateIPOAllotmentGroupCommand.ExecuteUpdate;
  Result := FUpdateIPOAllotmentGroupCommand.Parameters[5].Value.GetWideString;
end;

function TSessionServerModuleClient.UpdateIPOPoolingGroup(AGroupID: Int64; ANETFEE: Double; AVAT: Double; AWHT: Double; AIPOID: string): string;
begin
  if FUpdateIPOPoolingGroupCommand = nil then
  begin
    FUpdateIPOPoolingGroupCommand := FDBXConnection.CreateCommand;
    FUpdateIPOPoolingGroupCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateIPOPoolingGroupCommand.Text := 'TSessionServerModule.UpdateIPOPoolingGroup';
    FUpdateIPOPoolingGroupCommand.Prepare;
  end;
  FUpdateIPOPoolingGroupCommand.Parameters[0].Value.SetInt64(AGroupID);
  FUpdateIPOPoolingGroupCommand.Parameters[1].Value.SetDouble(ANETFEE);
  FUpdateIPOPoolingGroupCommand.Parameters[2].Value.SetDouble(AVAT);
  FUpdateIPOPoolingGroupCommand.Parameters[3].Value.SetDouble(AWHT);
  FUpdateIPOPoolingGroupCommand.Parameters[4].Value.SetWideString(AIPOID);
  FUpdateIPOPoolingGroupCommand.ExecuteUpdate;
  Result := FUpdateIPOPoolingGroupCommand.Parameters[5].Value.GetWideString;
end;

function TSessionServerModuleClient.CreateJournalRecurring(AJournalID: Int64; AStartDate: TDateTime; AEndDate: TDateTime; AIteration: Int64; AEndless: Boolean; APeriod: string; out AMessage: string): Boolean;
begin
  if FCreateJournalRecurringCommand = nil then
  begin
    FCreateJournalRecurringCommand := FDBXConnection.CreateCommand;
    FCreateJournalRecurringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateJournalRecurringCommand.Text := 'TSessionServerModule.CreateJournalRecurring';
    FCreateJournalRecurringCommand.Prepare;
  end;
  FCreateJournalRecurringCommand.Parameters[0].Value.SetInt64(AJournalID);
  FCreateJournalRecurringCommand.Parameters[1].Value.AsDateTime := AStartDate;
  FCreateJournalRecurringCommand.Parameters[2].Value.AsDateTime := AEndDate;
  FCreateJournalRecurringCommand.Parameters[3].Value.SetInt64(AIteration);
  FCreateJournalRecurringCommand.Parameters[4].Value.SetBoolean(AEndless);
  FCreateJournalRecurringCommand.Parameters[5].Value.SetWideString(APeriod);
  FCreateJournalRecurringCommand.ExecuteUpdate;
  AMessage := FCreateJournalRecurringCommand.Parameters[6].Value.GetWideString;
  Result := FCreateJournalRecurringCommand.Parameters[7].Value.GetBoolean;
end;

function TSessionServerModuleClient.AllotmentReverse(AAllotmentID: Int64; out AMsg: string): Boolean;
begin
  if FAllotmentReverseCommand = nil then
  begin
    FAllotmentReverseCommand := FDBXConnection.CreateCommand;
    FAllotmentReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAllotmentReverseCommand.Text := 'TSessionServerModule.AllotmentReverse';
    FAllotmentReverseCommand.Prepare;
  end;
  FAllotmentReverseCommand.Parameters[0].Value.SetInt64(AAllotmentID);
  FAllotmentReverseCommand.ExecuteUpdate;
  AMsg := FAllotmentReverseCommand.Parameters[1].Value.GetWideString;
  Result := FAllotmentReverseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.AllotmentAmend(AAccID: Int64; AAllotmentID: Int64; out AMsg: string): Boolean;
begin
  if FAllotmentAmendCommand = nil then
  begin
    FAllotmentAmendCommand := FDBXConnection.CreateCommand;
    FAllotmentAmendCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAllotmentAmendCommand.Text := 'TSessionServerModule.AllotmentAmend';
    FAllotmentAmendCommand.Prepare;
  end;
  FAllotmentAmendCommand.Parameters[0].Value.SetInt64(AAccID);
  FAllotmentAmendCommand.Parameters[1].Value.SetInt64(AAllotmentID);
  FAllotmentAmendCommand.ExecuteUpdate;
  AMsg := FAllotmentAmendCommand.Parameters[2].Value.GetWideString;
  Result := FAllotmentAmendCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.PoolingReverse(APoolingID: Int64; out AMsg: string): Boolean;
begin
  if FPoolingReverseCommand = nil then
  begin
    FPoolingReverseCommand := FDBXConnection.CreateCommand;
    FPoolingReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPoolingReverseCommand.Text := 'TSessionServerModule.PoolingReverse';
    FPoolingReverseCommand.Prepare;
  end;
  FPoolingReverseCommand.Parameters[0].Value.SetInt64(APoolingID);
  FPoolingReverseCommand.ExecuteUpdate;
  AMsg := FPoolingReverseCommand.Parameters[1].Value.GetWideString;
  Result := FPoolingReverseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.PoolingAmend(AAccID: Int64; APoolingID: Int64; out AMsg: string): Boolean;
begin
  if FPoolingAmendCommand = nil then
  begin
    FPoolingAmendCommand := FDBXConnection.CreateCommand;
    FPoolingAmendCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPoolingAmendCommand.Text := 'TSessionServerModule.PoolingAmend';
    FPoolingAmendCommand.Prepare;
  end;
  FPoolingAmendCommand.Parameters[0].Value.SetInt64(AAccID);
  FPoolingAmendCommand.Parameters[1].Value.SetInt64(APoolingID);
  FPoolingAmendCommand.ExecuteUpdate;
  AMsg := FPoolingAmendCommand.Parameters[2].Value.GetWideString;
  Result := FPoolingAmendCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.GetAvgPriceDec(AAccID: Integer): Integer;
begin
  if FGetAvgPriceDecCommand = nil then
  begin
    FGetAvgPriceDecCommand := FDBXConnection.CreateCommand;
    FGetAvgPriceDecCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetAvgPriceDecCommand.Text := 'TSessionServerModule.GetAvgPriceDec';
    FGetAvgPriceDecCommand.Prepare;
  end;
  FGetAvgPriceDecCommand.Parameters[0].Value.SetInt32(AAccID);
  FGetAvgPriceDecCommand.ExecuteUpdate;
  Result := FGetAvgPriceDecCommand.Parameters[1].Value.GetInt32;
end;

function TSessionServerModuleClient.GenerateBankInstructionFile(BIID: Int64; ABankRef: string; out AMsg: string): Boolean;
begin
  if FGenerateBankInstructionFileCommand = nil then
  begin
    FGenerateBankInstructionFileCommand := FDBXConnection.CreateCommand;
    FGenerateBankInstructionFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateBankInstructionFileCommand.Text := 'TSessionServerModule.GenerateBankInstructionFile';
    FGenerateBankInstructionFileCommand.Prepare;
  end;
  FGenerateBankInstructionFileCommand.Parameters[0].Value.SetInt64(BIID);
  FGenerateBankInstructionFileCommand.Parameters[1].Value.SetWideString(ABankRef);
  FGenerateBankInstructionFileCommand.ExecuteUpdate;
  AMsg := FGenerateBankInstructionFileCommand.Parameters[2].Value.GetWideString;
  Result := FGenerateBankInstructionFileCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.CheckAccountChargeUsed(AccID: Integer; AMarket: string; AChargeCode: string): string;
begin
  if FCheckAccountChargeUsedCommand = nil then
  begin
    FCheckAccountChargeUsedCommand := FDBXConnection.CreateCommand;
    FCheckAccountChargeUsedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCheckAccountChargeUsedCommand.Text := 'TSessionServerModule.CheckAccountChargeUsed';
    FCheckAccountChargeUsedCommand.Prepare;
  end;
  FCheckAccountChargeUsedCommand.Parameters[0].Value.SetInt32(AccID);
  FCheckAccountChargeUsedCommand.Parameters[1].Value.SetWideString(AMarket);
  FCheckAccountChargeUsedCommand.Parameters[2].Value.SetWideString(AChargeCode);
  FCheckAccountChargeUsedCommand.ExecuteUpdate;
  Result := FCheckAccountChargeUsedCommand.Parameters[3].Value.GetWideString;
end;

function TSessionServerModuleClient.CashDebetCreditNotesPosting(ADCID: Integer; out AMsg: string): Boolean;
begin
  if FCashDebetCreditNotesPostingCommand = nil then
  begin
    FCashDebetCreditNotesPostingCommand := FDBXConnection.CreateCommand;
    FCashDebetCreditNotesPostingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashDebetCreditNotesPostingCommand.Text := 'TSessionServerModule.CashDebetCreditNotesPosting';
    FCashDebetCreditNotesPostingCommand.Prepare;
  end;
  FCashDebetCreditNotesPostingCommand.Parameters[0].Value.SetInt32(ADCID);
  FCashDebetCreditNotesPostingCommand.ExecuteUpdate;
  AMsg := FCashDebetCreditNotesPostingCommand.Parameters[1].Value.GetWideString;
  Result := FCashDebetCreditNotesPostingCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashDebetCreditNotesReverse(ADCID: Integer; out AMsg: string): Boolean;
begin
  if FCashDebetCreditNotesReverseCommand = nil then
  begin
    FCashDebetCreditNotesReverseCommand := FDBXConnection.CreateCommand;
    FCashDebetCreditNotesReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashDebetCreditNotesReverseCommand.Text := 'TSessionServerModule.CashDebetCreditNotesReverse';
    FCashDebetCreditNotesReverseCommand.Prepare;
  end;
  FCashDebetCreditNotesReverseCommand.Parameters[0].Value.SetInt32(ADCID);
  FCashDebetCreditNotesReverseCommand.ExecuteUpdate;
  AMsg := FCashDebetCreditNotesReverseCommand.Parameters[1].Value.GetWideString;
  Result := FCashDebetCreditNotesReverseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashDebetCreditNotesCancel(ADCID: Integer; out AMsg: string): Boolean;
begin
  if FCashDebetCreditNotesCancelCommand = nil then
  begin
    FCashDebetCreditNotesCancelCommand := FDBXConnection.CreateCommand;
    FCashDebetCreditNotesCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashDebetCreditNotesCancelCommand.Text := 'TSessionServerModule.CashDebetCreditNotesCancel';
    FCashDebetCreditNotesCancelCommand.Prepare;
  end;
  FCashDebetCreditNotesCancelCommand.Parameters[0].Value.SetInt32(ADCID);
  FCashDebetCreditNotesCancelCommand.ExecuteUpdate;
  AMsg := FCashDebetCreditNotesCancelCommand.Parameters[1].Value.GetWideString;
  Result := FCashDebetCreditNotesCancelCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.GenerateVD55Monthly(AMonth: string; AYear: string);
begin
  if FGenerateVD55MonthlyCommand = nil then
  begin
    FGenerateVD55MonthlyCommand := FDBXConnection.CreateCommand;
    FGenerateVD55MonthlyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateVD55MonthlyCommand.Text := 'TSessionServerModule.GenerateVD55Monthly';
    FGenerateVD55MonthlyCommand.Prepare;
  end;
  FGenerateVD55MonthlyCommand.Parameters[0].Value.SetWideString(AMonth);
  FGenerateVD55MonthlyCommand.Parameters[1].Value.SetWideString(AYear);
  FGenerateVD55MonthlyCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.CreateSplitStockVoucher(ASplitID: Int64; out AMsg: string): Boolean;
begin
  if FCreateSplitStockVoucherCommand = nil then
  begin
    FCreateSplitStockVoucherCommand := FDBXConnection.CreateCommand;
    FCreateSplitStockVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateSplitStockVoucherCommand.Text := 'TSessionServerModule.CreateSplitStockVoucher';
    FCreateSplitStockVoucherCommand.Prepare;
  end;
  FCreateSplitStockVoucherCommand.Parameters[0].Value.SetInt64(ASplitID);
  FCreateSplitStockVoucherCommand.ExecuteUpdate;
  AMsg := FCreateSplitStockVoucherCommand.Parameters[1].Value.GetWideString;
  Result := FCreateSplitStockVoucherCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateCashVoucherFromStockVoucher(ASSID: Int64; out AMsg: string): Boolean;
begin
  if FCreateCashVoucherFromStockVoucherCommand = nil then
  begin
    FCreateCashVoucherFromStockVoucherCommand := FDBXConnection.CreateCommand;
    FCreateCashVoucherFromStockVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateCashVoucherFromStockVoucherCommand.Text := 'TSessionServerModule.CreateCashVoucherFromStockVoucher';
    FCreateCashVoucherFromStockVoucherCommand.Prepare;
  end;
  FCreateCashVoucherFromStockVoucherCommand.Parameters[0].Value.SetInt64(ASSID);
  FCreateCashVoucherFromStockVoucherCommand.ExecuteUpdate;
  AMsg := FCreateCashVoucherFromStockVoucherCommand.Parameters[1].Value.GetWideString;
  Result := FCreateCashVoucherFromStockVoucherCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateMarginCall: string;
begin
  if FGenerateMarginCallCommand = nil then
  begin
    FGenerateMarginCallCommand := FDBXConnection.CreateCommand;
    FGenerateMarginCallCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateMarginCallCommand.Text := 'TSessionServerModule.GenerateMarginCall';
    FGenerateMarginCallCommand.Prepare;
  end;
  FGenerateMarginCallCommand.ExecuteUpdate;
  Result := FGenerateMarginCallCommand.Parameters[0].Value.GetWideString;
end;

function TSessionServerModuleClient.ClearIDXAllTrade(ATrdDate: TDateTime; out AMsg: string): Boolean;
begin
  if FClearIDXAllTradeCommand = nil then
  begin
    FClearIDXAllTradeCommand := FDBXConnection.CreateCommand;
    FClearIDXAllTradeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FClearIDXAllTradeCommand.Text := 'TSessionServerModule.ClearIDXAllTrade';
    FClearIDXAllTradeCommand.Prepare;
  end;
  FClearIDXAllTradeCommand.Parameters[0].Value.AsDateTime := ATrdDate;
  FClearIDXAllTradeCommand.ExecuteUpdate;
  AMsg := FClearIDXAllTradeCommand.Parameters[1].Value.GetWideString;
  Result := FClearIDXAllTradeCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.EmptyDTEByDate(ATrdDate: TDateTime; out AMsg: string): Boolean;
begin
  if FEmptyDTEByDateCommand = nil then
  begin
    FEmptyDTEByDateCommand := FDBXConnection.CreateCommand;
    FEmptyDTEByDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEmptyDTEByDateCommand.Text := 'TSessionServerModule.EmptyDTEByDate';
    FEmptyDTEByDateCommand.Prepare;
  end;
  FEmptyDTEByDateCommand.Parameters[0].Value.AsDateTime := ATrdDate;
  FEmptyDTEByDateCommand.ExecuteUpdate;
  AMsg := FEmptyDTEByDateCommand.Parameters[1].Value.GetWideString;
  Result := FEmptyDTEByDateCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CancelCrosstom(ACrosstomID: Int64; out AMsg: string): Boolean;
begin
  if FCancelCrosstomCommand = nil then
  begin
    FCancelCrosstomCommand := FDBXConnection.CreateCommand;
    FCancelCrosstomCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCancelCrosstomCommand.Text := 'TSessionServerModule.CancelCrosstom';
    FCancelCrosstomCommand.Prepare;
  end;
  FCancelCrosstomCommand.Parameters[0].Value.SetInt64(ACrosstomID);
  FCancelCrosstomCommand.ExecuteUpdate;
  AMsg := FCancelCrosstomCommand.Parameters[1].Value.GetWideString;
  Result := FCancelCrosstomCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.SendFormBankRDNByEMail(AOAID: Integer; out AMsg: string): Boolean;
begin
  if FSendFormBankRDNByEMailCommand = nil then
  begin
    FSendFormBankRDNByEMailCommand := FDBXConnection.CreateCommand;
    FSendFormBankRDNByEMailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendFormBankRDNByEMailCommand.Text := 'TSessionServerModule.SendFormBankRDNByEMail';
    FSendFormBankRDNByEMailCommand.Prepare;
  end;
  FSendFormBankRDNByEMailCommand.Parameters[0].Value.SetInt32(AOAID);
  FSendFormBankRDNByEMailCommand.ExecuteUpdate;
  AMsg := FSendFormBankRDNByEMailCommand.Parameters[1].Value.GetWideString;
  Result := FSendFormBankRDNByEMailCommand.Parameters[2].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.UpdateReqKSEI(AOAID: Integer; ANewKSEINo: string);
begin
  if FUpdateReqKSEICommand = nil then
  begin
    FUpdateReqKSEICommand := FDBXConnection.CreateCommand;
    FUpdateReqKSEICommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateReqKSEICommand.Text := 'TSessionServerModule.UpdateReqKSEI';
    FUpdateReqKSEICommand.Prepare;
  end;
  FUpdateReqKSEICommand.Parameters[0].Value.SetInt32(AOAID);
  FUpdateReqKSEICommand.Parameters[1].Value.SetWideString(ANewKSEINo);
  FUpdateReqKSEICommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.UpdateKSEINo(ASIDNo: string; AKSEIAccNo: string);
begin
  if FUpdateKSEINoCommand = nil then
  begin
    FUpdateKSEINoCommand := FDBXConnection.CreateCommand;
    FUpdateKSEINoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateKSEINoCommand.Text := 'TSessionServerModule.UpdateKSEINo';
    FUpdateKSEINoCommand.Prepare;
  end;
  FUpdateKSEINoCommand.Parameters[0].Value.SetWideString(ASIDNo);
  FUpdateKSEINoCommand.Parameters[1].Value.SetWideString(AKSEIAccNo);
  FUpdateKSEINoCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.WebOARejected(AOAID: Integer);
begin
  if FWebOARejectedCommand = nil then
  begin
    FWebOARejectedCommand := FDBXConnection.CreateCommand;
    FWebOARejectedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FWebOARejectedCommand.Text := 'TSessionServerModule.WebOARejected';
    FWebOARejectedCommand.Prepare;
  end;
  FWebOARejectedCommand.Parameters[0].Value.SetInt32(AOAID);
  FWebOARejectedCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.UpdateRDN(AKSEIAccNo: string; ABankCode: string; ABankAccNo: string; ABankAccName: string; ABankBranch: string);
begin
  if FUpdateRDNCommand = nil then
  begin
    FUpdateRDNCommand := FDBXConnection.CreateCommand;
    FUpdateRDNCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateRDNCommand.Text := 'TSessionServerModule.UpdateRDN';
    FUpdateRDNCommand.Prepare;
  end;
  FUpdateRDNCommand.Parameters[0].Value.SetWideString(AKSEIAccNo);
  FUpdateRDNCommand.Parameters[1].Value.SetWideString(ABankCode);
  FUpdateRDNCommand.Parameters[2].Value.SetWideString(ABankAccNo);
  FUpdateRDNCommand.Parameters[3].Value.SetWideString(ABankAccName);
  FUpdateRDNCommand.Parameters[4].Value.SetWideString(ABankBranch);
  FUpdateRDNCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.GetDukcapilData(nik: string; out nomorkecamatan: string; out nomorpropinsi: string; out nomorkk: string; out namalengkap: string; out kabupaten: string; out agama: string; out norw: string; out kecamatan: string; out pekerjaan: string; out nort: string; out nokelurahan: string; out alamat: string; out tempatlahir: string; out pendidikanterakhir: string; out status: string; out ibukandung: string; out propinsi: string; out nokabupaten: string; out kelurahan: string; out jeniskelamin: string; out tanggallahir: string; out Msg: string): Boolean;
begin
  if FGetDukcapilDataCommand = nil then
  begin
    FGetDukcapilDataCommand := FDBXConnection.CreateCommand;
    FGetDukcapilDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetDukcapilDataCommand.Text := 'TSessionServerModule.GetDukcapilData';
    FGetDukcapilDataCommand.Prepare;
  end;
  FGetDukcapilDataCommand.Parameters[0].Value.SetWideString(nik);
  FGetDukcapilDataCommand.ExecuteUpdate;
  nomorkecamatan := FGetDukcapilDataCommand.Parameters[1].Value.GetWideString;
  nomorpropinsi := FGetDukcapilDataCommand.Parameters[2].Value.GetWideString;
  nomorkk := FGetDukcapilDataCommand.Parameters[3].Value.GetWideString;
  namalengkap := FGetDukcapilDataCommand.Parameters[4].Value.GetWideString;
  kabupaten := FGetDukcapilDataCommand.Parameters[5].Value.GetWideString;
  agama := FGetDukcapilDataCommand.Parameters[6].Value.GetWideString;
  norw := FGetDukcapilDataCommand.Parameters[7].Value.GetWideString;
  kecamatan := FGetDukcapilDataCommand.Parameters[8].Value.GetWideString;
  pekerjaan := FGetDukcapilDataCommand.Parameters[9].Value.GetWideString;
  nort := FGetDukcapilDataCommand.Parameters[10].Value.GetWideString;
  nokelurahan := FGetDukcapilDataCommand.Parameters[11].Value.GetWideString;
  alamat := FGetDukcapilDataCommand.Parameters[12].Value.GetWideString;
  tempatlahir := FGetDukcapilDataCommand.Parameters[13].Value.GetWideString;
  pendidikanterakhir := FGetDukcapilDataCommand.Parameters[14].Value.GetWideString;
  status := FGetDukcapilDataCommand.Parameters[15].Value.GetWideString;
  ibukandung := FGetDukcapilDataCommand.Parameters[16].Value.GetWideString;
  propinsi := FGetDukcapilDataCommand.Parameters[17].Value.GetWideString;
  nokabupaten := FGetDukcapilDataCommand.Parameters[18].Value.GetWideString;
  kelurahan := FGetDukcapilDataCommand.Parameters[19].Value.GetWideString;
  jeniskelamin := FGetDukcapilDataCommand.Parameters[20].Value.GetWideString;
  tanggallahir := FGetDukcapilDataCommand.Parameters[21].Value.GetWideString;
  Msg := FGetDukcapilDataCommand.Parameters[22].Value.GetWideString;
  Result := FGetDukcapilDataCommand.Parameters[23].Value.GetBoolean;
end;

function TSessionServerModuleClient.RunningFreeSQLScript(ASQLScript: string): Boolean;
begin
  if FRunningFreeSQLScriptCommand = nil then
  begin
    FRunningFreeSQLScriptCommand := FDBXConnection.CreateCommand;
    FRunningFreeSQLScriptCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRunningFreeSQLScriptCommand.Text := 'TSessionServerModule.RunningFreeSQLScript';
    FRunningFreeSQLScriptCommand.Prepare;
  end;
  FRunningFreeSQLScriptCommand.Parameters[0].Value.SetWideString(ASQLScript);
  FRunningFreeSQLScriptCommand.ExecuteUpdate;
  Result := FRunningFreeSQLScriptCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.UpdateAccountBank(AInvestName: string; ABankAccNo: string; ASIDNo: string): Boolean;
begin
  if FUpdateAccountBankCommand = nil then
  begin
    FUpdateAccountBankCommand := FDBXConnection.CreateCommand;
    FUpdateAccountBankCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateAccountBankCommand.Text := 'TSessionServerModule.UpdateAccountBank';
    FUpdateAccountBankCommand.Prepare;
  end;
  FUpdateAccountBankCommand.Parameters[0].Value.SetWideString(AInvestName);
  FUpdateAccountBankCommand.Parameters[1].Value.SetWideString(ABankAccNo);
  FUpdateAccountBankCommand.Parameters[2].Value.SetWideString(ASIDNo);
  FUpdateAccountBankCommand.ExecuteUpdate;
  Result := FUpdateAccountBankCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.RejectDataFromOAWeb(AOAID: Integer; AReason: string; out AMsg: string): Boolean;
begin
  if FRejectDataFromOAWebCommand = nil then
  begin
    FRejectDataFromOAWebCommand := FDBXConnection.CreateCommand;
    FRejectDataFromOAWebCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRejectDataFromOAWebCommand.Text := 'TSessionServerModule.RejectDataFromOAWeb';
    FRejectDataFromOAWebCommand.Prepare;
  end;
  FRejectDataFromOAWebCommand.Parameters[0].Value.SetInt32(AOAID);
  FRejectDataFromOAWebCommand.Parameters[1].Value.SetWideString(AReason);
  FRejectDataFromOAWebCommand.ExecuteUpdate;
  AMsg := FRejectDataFromOAWebCommand.Parameters[2].Value.GetWideString;
  Result := FRejectDataFromOAWebCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.IncompleteOAWeb(AOAID: Integer; AReason: string; out AMsg: string): Boolean;
begin
  if FIncompleteOAWebCommand = nil then
  begin
    FIncompleteOAWebCommand := FDBXConnection.CreateCommand;
    FIncompleteOAWebCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIncompleteOAWebCommand.Text := 'TSessionServerModule.IncompleteOAWeb';
    FIncompleteOAWebCommand.Prepare;
  end;
  FIncompleteOAWebCommand.Parameters[0].Value.SetInt32(AOAID);
  FIncompleteOAWebCommand.Parameters[1].Value.SetWideString(AReason);
  FIncompleteOAWebCommand.ExecuteUpdate;
  AMsg := FIncompleteOAWebCommand.Parameters[2].Value.GetWideString;
  Result := FIncompleteOAWebCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateStockSettleBroker(AAccID: Int64; AClientAccID: Int64; AStockID: Integer; ADuedate: TDateTime; AMarketCode: string; AAllMarket: string; AStockGroupType: string; out AMsg: string): Boolean;
begin
  if FCreateStockSettleBrokerCommand = nil then
  begin
    FCreateStockSettleBrokerCommand := FDBXConnection.CreateCommand;
    FCreateStockSettleBrokerCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateStockSettleBrokerCommand.Text := 'TSessionServerModule.CreateStockSettleBroker';
    FCreateStockSettleBrokerCommand.Prepare;
  end;
  FCreateStockSettleBrokerCommand.Parameters[0].Value.SetInt64(AAccID);
  FCreateStockSettleBrokerCommand.Parameters[1].Value.SetInt64(AClientAccID);
  FCreateStockSettleBrokerCommand.Parameters[2].Value.SetInt32(AStockID);
  FCreateStockSettleBrokerCommand.Parameters[3].Value.AsDateTime := ADuedate;
  FCreateStockSettleBrokerCommand.Parameters[4].Value.SetWideString(AMarketCode);
  FCreateStockSettleBrokerCommand.Parameters[5].Value.SetWideString(AAllMarket);
  FCreateStockSettleBrokerCommand.Parameters[6].Value.SetWideString(AStockGroupType);
  FCreateStockSettleBrokerCommand.ExecuteUpdate;
  AMsg := FCreateStockSettleBrokerCommand.Parameters[7].Value.GetWideString;
  Result := FCreateStockSettleBrokerCommand.Parameters[8].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateStockSettleClient(AAccID: Int64; AStockID: Integer; ADuedate: TDateTime; AMarketCode: string; AAllMarket: string; AStockGroupType: string; out AMsg: string): Boolean;
begin
  if FCreateStockSettleClientCommand = nil then
  begin
    FCreateStockSettleClientCommand := FDBXConnection.CreateCommand;
    FCreateStockSettleClientCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateStockSettleClientCommand.Text := 'TSessionServerModule.CreateStockSettleClient';
    FCreateStockSettleClientCommand.Prepare;
  end;
  FCreateStockSettleClientCommand.Parameters[0].Value.SetInt64(AAccID);
  FCreateStockSettleClientCommand.Parameters[1].Value.SetInt32(AStockID);
  FCreateStockSettleClientCommand.Parameters[2].Value.AsDateTime := ADuedate;
  FCreateStockSettleClientCommand.Parameters[3].Value.SetWideString(AMarketCode);
  FCreateStockSettleClientCommand.Parameters[4].Value.SetWideString(AAllMarket);
  FCreateStockSettleClientCommand.Parameters[5].Value.SetWideString(AStockGroupType);
  FCreateStockSettleClientCommand.ExecuteUpdate;
  AMsg := FCreateStockSettleClientCommand.Parameters[6].Value.GetWideString;
  Result := FCreateStockSettleClientCommand.Parameters[7].Value.GetBoolean;
end;

function TSessionServerModuleClient.GeneratePortfolioMTM(ATransDate: TDateTime; AInstrumentType: string; out AMsg: string): Boolean;
begin
  if FGeneratePortfolioMTMCommand = nil then
  begin
    FGeneratePortfolioMTMCommand := FDBXConnection.CreateCommand;
    FGeneratePortfolioMTMCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGeneratePortfolioMTMCommand.Text := 'TSessionServerModule.GeneratePortfolioMTM';
    FGeneratePortfolioMTMCommand.Prepare;
  end;
  FGeneratePortfolioMTMCommand.Parameters[0].Value.AsDateTime := ATransDate;
  FGeneratePortfolioMTMCommand.Parameters[1].Value.SetWideString(AInstrumentType);
  FGeneratePortfolioMTMCommand.ExecuteUpdate;
  AMsg := FGeneratePortfolioMTMCommand.Parameters[2].Value.GetWideString;
  Result := FGeneratePortfolioMTMCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.ReversePortfolioRevaluation(APMID: Int64; out AMsg: string): Boolean;
begin
  if FReversePortfolioRevaluationCommand = nil then
  begin
    FReversePortfolioRevaluationCommand := FDBXConnection.CreateCommand;
    FReversePortfolioRevaluationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReversePortfolioRevaluationCommand.Text := 'TSessionServerModule.ReversePortfolioRevaluation';
    FReversePortfolioRevaluationCommand.Prepare;
  end;
  FReversePortfolioRevaluationCommand.Parameters[0].Value.SetInt64(APMID);
  FReversePortfolioRevaluationCommand.ExecuteUpdate;
  AMsg := FReversePortfolioRevaluationCommand.Parameters[1].Value.GetWideString;
  Result := FReversePortfolioRevaluationCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.NextOfYearProcess(AEndOfYear: string; ANextOfYear: string; out AMsg: string): Boolean;
begin
  if FNextOfYearProcessCommand = nil then
  begin
    FNextOfYearProcessCommand := FDBXConnection.CreateCommand;
    FNextOfYearProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FNextOfYearProcessCommand.Text := 'TSessionServerModule.NextOfYearProcess';
    FNextOfYearProcessCommand.Prepare;
  end;
  FNextOfYearProcessCommand.Parameters[0].Value.SetWideString(AEndOfYear);
  FNextOfYearProcessCommand.Parameters[1].Value.SetWideString(ANextOfYear);
  FNextOfYearProcessCommand.ExecuteUpdate;
  AMsg := FNextOfYearProcessCommand.Parameters[2].Value.GetWideString;
  Result := FNextOfYearProcessCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.InterestReserved(APeriodID: Int64; AAccID: Int64; ACCYCode: string; out AMsg: string): Boolean;
begin
  if FInterestReservedCommand = nil then
  begin
    FInterestReservedCommand := FDBXConnection.CreateCommand;
    FInterestReservedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInterestReservedCommand.Text := 'TSessionServerModule.InterestReserved';
    FInterestReservedCommand.Prepare;
  end;
  FInterestReservedCommand.Parameters[0].Value.SetInt64(APeriodID);
  FInterestReservedCommand.Parameters[1].Value.SetInt64(AAccID);
  FInterestReservedCommand.Parameters[2].Value.SetWideString(ACCYCode);
  FInterestReservedCommand.ExecuteUpdate;
  AMsg := FInterestReservedCommand.Parameters[3].Value.GetWideString;
  Result := FInterestReservedCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.DeleteDealTicketAlloc(ADealTicketID: Int64; out AMsg: string): Boolean;
begin
  if FDeleteDealTicketAllocCommand = nil then
  begin
    FDeleteDealTicketAllocCommand := FDBXConnection.CreateCommand;
    FDeleteDealTicketAllocCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeleteDealTicketAllocCommand.Text := 'TSessionServerModule.DeleteDealTicketAlloc';
    FDeleteDealTicketAllocCommand.Prepare;
  end;
  FDeleteDealTicketAllocCommand.Parameters[0].Value.SetInt64(ADealTicketID);
  FDeleteDealTicketAllocCommand.ExecuteUpdate;
  AMsg := FDeleteDealTicketAllocCommand.Parameters[1].Value.GetWideString;
  Result := FDeleteDealTicketAllocCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.UnpostingJournal(AJRNID: Int64; out AMsg: string): Boolean;
begin
  if FUnpostingJournalCommand = nil then
  begin
    FUnpostingJournalCommand := FDBXConnection.CreateCommand;
    FUnpostingJournalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUnpostingJournalCommand.Text := 'TSessionServerModule.UnpostingJournal';
    FUnpostingJournalCommand.Prepare;
  end;
  FUnpostingJournalCommand.Parameters[0].Value.SetInt64(AJRNID);
  FUnpostingJournalCommand.ExecuteUpdate;
  AMsg := FUnpostingJournalCommand.Parameters[1].Value.GetWideString;
  Result := FUnpostingJournalCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.SecuritiesLedgerJournal(ALedgerID: Int64; out AMsg: string): Boolean;
begin
  if FSecuritiesLedgerJournalCommand = nil then
  begin
    FSecuritiesLedgerJournalCommand := FDBXConnection.CreateCommand;
    FSecuritiesLedgerJournalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSecuritiesLedgerJournalCommand.Text := 'TSessionServerModule.SecuritiesLedgerJournal';
    FSecuritiesLedgerJournalCommand.Prepare;
  end;
  FSecuritiesLedgerJournalCommand.Parameters[0].Value.SetInt64(ALedgerID);
  FSecuritiesLedgerJournalCommand.ExecuteUpdate;
  AMsg := FSecuritiesLedgerJournalCommand.Parameters[1].Value.GetWideString;
  Result := FSecuritiesLedgerJournalCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.FundLedgerJournal(ALedgerID: Int64; out AMsg: string): Boolean;
begin
  if FFundLedgerJournalCommand = nil then
  begin
    FFundLedgerJournalCommand := FDBXConnection.CreateCommand;
    FFundLedgerJournalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFundLedgerJournalCommand.Text := 'TSessionServerModule.FundLedgerJournal';
    FFundLedgerJournalCommand.Prepare;
  end;
  FFundLedgerJournalCommand.Parameters[0].Value.SetInt64(ALedgerID);
  FFundLedgerJournalCommand.ExecuteUpdate;
  AMsg := FFundLedgerJournalCommand.Parameters[1].Value.GetWideString;
  Result := FFundLedgerJournalCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.DeleteStockReconByDate(ATransDate: TDateTime): Boolean;
begin
  if FDeleteStockReconByDateCommand = nil then
  begin
    FDeleteStockReconByDateCommand := FDBXConnection.CreateCommand;
    FDeleteStockReconByDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeleteStockReconByDateCommand.Text := 'TSessionServerModule.DeleteStockReconByDate';
    FDeleteStockReconByDateCommand.Prepare;
  end;
  FDeleteStockReconByDateCommand.Parameters[0].Value.AsDateTime := ATransDate;
  FDeleteStockReconByDateCommand.ExecuteUpdate;
  Result := FDeleteStockReconByDateCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.CheckChannelOLT(AAccID: Int64): Boolean;
begin
  if FCheckChannelOLTCommand = nil then
  begin
    FCheckChannelOLTCommand := FDBXConnection.CreateCommand;
    FCheckChannelOLTCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCheckChannelOLTCommand.Text := 'TSessionServerModule.CheckChannelOLT';
    FCheckChannelOLTCommand.Prepare;
  end;
  FCheckChannelOLTCommand.Parameters[0].Value.SetInt64(AAccID);
  FCheckChannelOLTCommand.ExecuteUpdate;
  Result := FCheckChannelOLTCommand.Parameters[1].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.InitialAccountOLT(AAccID: Int64);
begin
  if FInitialAccountOLTCommand = nil then
  begin
    FInitialAccountOLTCommand := FDBXConnection.CreateCommand;
    FInitialAccountOLTCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInitialAccountOLTCommand.Text := 'TSessionServerModule.InitialAccountOLT';
    FInitialAccountOLTCommand.Prepare;
  end;
  FInitialAccountOLTCommand.Parameters[0].Value.SetInt64(AAccID);
  FInitialAccountOLTCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.SynchronizeClientApplication(V1: Word; V2: Word; V3: Word; V4: Word; out AUpdateFileArray: TJSONArray): Boolean;
begin
  if FSynchronizeClientApplicationCommand = nil then
  begin
    FSynchronizeClientApplicationCommand := FDBXConnection.CreateCommand;
    FSynchronizeClientApplicationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSynchronizeClientApplicationCommand.Text := 'TSessionServerModule.SynchronizeClientApplication';
    FSynchronizeClientApplicationCommand.Prepare;
  end;
  FSynchronizeClientApplicationCommand.Parameters[0].Value.SetUInt16(V1);
  FSynchronizeClientApplicationCommand.Parameters[1].Value.SetUInt16(V2);
  FSynchronizeClientApplicationCommand.Parameters[2].Value.SetUInt16(V3);
  FSynchronizeClientApplicationCommand.Parameters[3].Value.SetUInt16(V4);
  FSynchronizeClientApplicationCommand.ExecuteUpdate;
  AUpdateFileArray := TJSONArray(FSynchronizeClientApplicationCommand.Parameters[4].Value.GetJSONValue(FInstanceOwner));
  Result := FSynchronizeClientApplicationCommand.Parameters[5].Value.GetBoolean;
end;

function TSessionServerModuleClient.CheckClientApplicationVersion(V1: Word; V2: Word; V3: Word; V4: Word; out V1Server: Word; out V2Server: Word; out V3Server: Word; out V4Server: Word): Boolean;
begin
  if FCheckClientApplicationVersionCommand = nil then
  begin
    FCheckClientApplicationVersionCommand := FDBXConnection.CreateCommand;
    FCheckClientApplicationVersionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCheckClientApplicationVersionCommand.Text := 'TSessionServerModule.CheckClientApplicationVersion';
    FCheckClientApplicationVersionCommand.Prepare;
  end;
  FCheckClientApplicationVersionCommand.Parameters[0].Value.SetUInt16(V1);
  FCheckClientApplicationVersionCommand.Parameters[1].Value.SetUInt16(V2);
  FCheckClientApplicationVersionCommand.Parameters[2].Value.SetUInt16(V3);
  FCheckClientApplicationVersionCommand.Parameters[3].Value.SetUInt16(V4);
  FCheckClientApplicationVersionCommand.ExecuteUpdate;
  V1Server := FCheckClientApplicationVersionCommand.Parameters[4].Value.GetUInt16;
  V2Server := FCheckClientApplicationVersionCommand.Parameters[5].Value.GetUInt16;
  V3Server := FCheckClientApplicationVersionCommand.Parameters[6].Value.GetUInt16;
  V4Server := FCheckClientApplicationVersionCommand.Parameters[7].Value.GetUInt16;
  Result := FCheckClientApplicationVersionCommand.Parameters[8].Value.GetBoolean;
end;

function TSessionServerModuleClient.SendNotificationAccountDormanByMail(AADID: Integer): Boolean;
begin
  if FSendNotificationAccountDormanByMailCommand = nil then
  begin
    FSendNotificationAccountDormanByMailCommand := FDBXConnection.CreateCommand;
    FSendNotificationAccountDormanByMailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendNotificationAccountDormanByMailCommand.Text := 'TSessionServerModule.SendNotificationAccountDormanByMail';
    FSendNotificationAccountDormanByMailCommand.Prepare;
  end;
  FSendNotificationAccountDormanByMailCommand.Parameters[0].Value.SetInt32(AADID);
  FSendNotificationAccountDormanByMailCommand.ExecuteUpdate;
  Result := FSendNotificationAccountDormanByMailCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.UpdateAccountDorman(AStatus: string; ASUBREK001: string; ASUBREK004: string; AAccID: Integer): string;
begin
  if FUpdateAccountDormanCommand = nil then
  begin
    FUpdateAccountDormanCommand := FDBXConnection.CreateCommand;
    FUpdateAccountDormanCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateAccountDormanCommand.Text := 'TSessionServerModule.UpdateAccountDorman';
    FUpdateAccountDormanCommand.Prepare;
  end;
  FUpdateAccountDormanCommand.Parameters[0].Value.SetWideString(AStatus);
  FUpdateAccountDormanCommand.Parameters[1].Value.SetWideString(ASUBREK001);
  FUpdateAccountDormanCommand.Parameters[2].Value.SetWideString(ASUBREK004);
  FUpdateAccountDormanCommand.Parameters[3].Value.SetInt32(AAccID);
  FUpdateAccountDormanCommand.ExecuteUpdate;
  Result := FUpdateAccountDormanCommand.Parameters[4].Value.GetWideString;
end;

function TSessionServerModuleClient.GetAvgPrice(AAccNo: string; AStockCode: string): Double;
begin
  if FGetAvgPriceCommand = nil then
  begin
    FGetAvgPriceCommand := FDBXConnection.CreateCommand;
    FGetAvgPriceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetAvgPriceCommand.Text := 'TSessionServerModule.GetAvgPrice';
    FGetAvgPriceCommand.Prepare;
  end;
  FGetAvgPriceCommand.Parameters[0].Value.SetWideString(AAccNo);
  FGetAvgPriceCommand.Parameters[1].Value.SetWideString(AStockCode);
  FGetAvgPriceCommand.ExecuteUpdate;
  Result := FGetAvgPriceCommand.Parameters[2].Value.GetDouble;
end;

function TSessionServerModuleClient.CorpactEntitlementPosting(ACAID: Int64; AModui: string; out AMsg: string): Boolean;
begin
  if FCorpactEntitlementPostingCommand = nil then
  begin
    FCorpactEntitlementPostingCommand := FDBXConnection.CreateCommand;
    FCorpactEntitlementPostingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCorpactEntitlementPostingCommand.Text := 'TSessionServerModule.CorpactEntitlementPosting';
    FCorpactEntitlementPostingCommand.Prepare;
  end;
  FCorpactEntitlementPostingCommand.Parameters[0].Value.SetInt64(ACAID);
  FCorpactEntitlementPostingCommand.Parameters[1].Value.SetWideString(AModui);
  FCorpactEntitlementPostingCommand.ExecuteUpdate;
  AMsg := FCorpactEntitlementPostingCommand.Parameters[2].Value.GetWideString;
  Result := FCorpactEntitlementPostingCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateAllCashSettlementVoucher(AAccID: Int64; ACcy: string; out AMsg: string): Boolean;
begin
  if FCreateAllCashSettlementVoucherCommand = nil then
  begin
    FCreateAllCashSettlementVoucherCommand := FDBXConnection.CreateCommand;
    FCreateAllCashSettlementVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateAllCashSettlementVoucherCommand.Text := 'TSessionServerModule.CreateAllCashSettlementVoucher';
    FCreateAllCashSettlementVoucherCommand.Prepare;
  end;
  FCreateAllCashSettlementVoucherCommand.Parameters[0].Value.SetInt64(AAccID);
  FCreateAllCashSettlementVoucherCommand.Parameters[1].Value.SetWideString(ACcy);
  FCreateAllCashSettlementVoucherCommand.ExecuteUpdate;
  AMsg := FCreateAllCashSettlementVoucherCommand.Parameters[2].Value.GetWideString;
  Result := FCreateAllCashSettlementVoucherCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.GetBankRefference: string;
begin
  if FGetBankRefferenceCommand = nil then
  begin
    FGetBankRefferenceCommand := FDBXConnection.CreateCommand;
    FGetBankRefferenceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetBankRefferenceCommand.Text := 'TSessionServerModule.GetBankRefference';
    FGetBankRefferenceCommand.Prepare;
  end;
  FGetBankRefferenceCommand.ExecuteUpdate;
  Result := FGetBankRefferenceCommand.Parameters[0].Value.GetWideString;
end;

procedure TSessionServerModuleClient.UpdateBankReff(AInstruction: string; ABIID: Integer);
begin
  if FUpdateBankReffCommand = nil then
  begin
    FUpdateBankReffCommand := FDBXConnection.CreateCommand;
    FUpdateBankReffCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateBankReffCommand.Text := 'TSessionServerModule.UpdateBankReff';
    FUpdateBankReffCommand.Prepare;
  end;
  FUpdateBankReffCommand.Parameters[0].Value.SetWideString(AInstruction);
  FUpdateBankReffCommand.Parameters[1].Value.SetInt32(ABIID);
  FUpdateBankReffCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.SendClosedContractByMail: string;
begin
  if FSendClosedContractByMailCommand = nil then
  begin
    FSendClosedContractByMailCommand := FDBXConnection.CreateCommand;
    FSendClosedContractByMailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendClosedContractByMailCommand.Text := 'TSessionServerModule.SendClosedContractByMail';
    FSendClosedContractByMailCommand.Prepare;
  end;
  FSendClosedContractByMailCommand.ExecuteUpdate;
  Result := FSendClosedContractByMailCommand.Parameters[0].Value.GetWideString;
end;

function TSessionServerModuleClient.ApproveCashWdr(AUserID: string; ACWID: Integer): string;
begin
  if FApproveCashWdrCommand = nil then
  begin
    FApproveCashWdrCommand := FDBXConnection.CreateCommand;
    FApproveCashWdrCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FApproveCashWdrCommand.Text := 'TSessionServerModule.ApproveCashWdr';
    FApproveCashWdrCommand.Prepare;
  end;
  FApproveCashWdrCommand.Parameters[0].Value.SetWideString(AUserID);
  FApproveCashWdrCommand.Parameters[1].Value.SetInt32(ACWID);
  FApproveCashWdrCommand.ExecuteUpdate;
  Result := FApproveCashWdrCommand.Parameters[2].Value.GetWideString;
end;

function TSessionServerModuleClient.PararelCloseContractByDate(AContractDate: TDateTime): string;
begin
  if FPararelCloseContractByDateCommand = nil then
  begin
    FPararelCloseContractByDateCommand := FDBXConnection.CreateCommand;
    FPararelCloseContractByDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPararelCloseContractByDateCommand.Text := 'TSessionServerModule.PararelCloseContractByDate';
    FPararelCloseContractByDateCommand.Prepare;
  end;
  FPararelCloseContractByDateCommand.Parameters[0].Value.AsDateTime := AContractDate;
  FPararelCloseContractByDateCommand.ExecuteUpdate;
  Result := FPararelCloseContractByDateCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.CloseContractByDate(AContractDate: TDateTime; out AMsg: string): Boolean;
begin
  if FCloseContractByDateCommand = nil then
  begin
    FCloseContractByDateCommand := FDBXConnection.CreateCommand;
    FCloseContractByDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCloseContractByDateCommand.Text := 'TSessionServerModule.CloseContractByDate';
    FCloseContractByDateCommand.Prepare;
  end;
  FCloseContractByDateCommand.Parameters[0].Value.AsDateTime := AContractDate;
  FCloseContractByDateCommand.ExecuteUpdate;
  AMsg := FCloseContractByDateCommand.Parameters[1].Value.GetWideString;
  Result := FCloseContractByDateCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.StockSettlementPostByDate(ASSDate: TDateTime; out AMsg: string): Boolean;
begin
  if FStockSettlementPostByDateCommand = nil then
  begin
    FStockSettlementPostByDateCommand := FDBXConnection.CreateCommand;
    FStockSettlementPostByDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockSettlementPostByDateCommand.Text := 'TSessionServerModule.StockSettlementPostByDate';
    FStockSettlementPostByDateCommand.Prepare;
  end;
  FStockSettlementPostByDateCommand.Parameters[0].Value.AsDateTime := ASSDate;
  FStockSettlementPostByDateCommand.ExecuteUpdate;
  AMsg := FStockSettlementPostByDateCommand.Parameters[1].Value.GetWideString;
  Result := FStockSettlementPostByDateCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GetHighPrice(AStockID: Integer; AMarketCode: string; ATrdDate: TDateTime; ADueDate: TDateTime): Double;
begin
  if FGetHighPriceCommand = nil then
  begin
    FGetHighPriceCommand := FDBXConnection.CreateCommand;
    FGetHighPriceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetHighPriceCommand.Text := 'TSessionServerModule.GetHighPrice';
    FGetHighPriceCommand.Prepare;
  end;
  FGetHighPriceCommand.Parameters[0].Value.SetInt32(AStockID);
  FGetHighPriceCommand.Parameters[1].Value.SetWideString(AMarketCode);
  FGetHighPriceCommand.Parameters[2].Value.AsDateTime := ATrdDate;
  FGetHighPriceCommand.Parameters[3].Value.AsDateTime := ADueDate;
  FGetHighPriceCommand.ExecuteUpdate;
  Result := FGetHighPriceCommand.Parameters[4].Value.GetDouble;
end;

function TSessionServerModuleClient.CreateStockSettleVoucherClientByDate(ADueDate: TDateTime; out AMsg: string): Boolean;
begin
  if FCreateStockSettleVoucherClientByDateCommand = nil then
  begin
    FCreateStockSettleVoucherClientByDateCommand := FDBXConnection.CreateCommand;
    FCreateStockSettleVoucherClientByDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateStockSettleVoucherClientByDateCommand.Text := 'TSessionServerModule.CreateStockSettleVoucherClientByDate';
    FCreateStockSettleVoucherClientByDateCommand.Prepare;
  end;
  FCreateStockSettleVoucherClientByDateCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FCreateStockSettleVoucherClientByDateCommand.ExecuteUpdate;
  AMsg := FCreateStockSettleVoucherClientByDateCommand.Parameters[1].Value.GetWideString;
  Result := FCreateStockSettleVoucherClientByDateCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateStockSettleVoucherBrokerByDate(ADueDate: TDateTime; out AMsg: string): Boolean;
begin
  if FCreateStockSettleVoucherBrokerByDateCommand = nil then
  begin
    FCreateStockSettleVoucherBrokerByDateCommand := FDBXConnection.CreateCommand;
    FCreateStockSettleVoucherBrokerByDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateStockSettleVoucherBrokerByDateCommand.Text := 'TSessionServerModule.CreateStockSettleVoucherBrokerByDate';
    FCreateStockSettleVoucherBrokerByDateCommand.Prepare;
  end;
  FCreateStockSettleVoucherBrokerByDateCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FCreateStockSettleVoucherBrokerByDateCommand.ExecuteUpdate;
  AMsg := FCreateStockSettleVoucherBrokerByDateCommand.Parameters[1].Value.GetWideString;
  Result := FCreateStockSettleVoucherBrokerByDateCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CreateStockSettleVoucherByDate(ADueDate: TDateTime; out AMsg: string): Boolean;
begin
  if FCreateStockSettleVoucherByDateCommand = nil then
  begin
    FCreateStockSettleVoucherByDateCommand := FDBXConnection.CreateCommand;
    FCreateStockSettleVoucherByDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateStockSettleVoucherByDateCommand.Text := 'TSessionServerModule.CreateStockSettleVoucherByDate';
    FCreateStockSettleVoucherByDateCommand.Prepare;
  end;
  FCreateStockSettleVoucherByDateCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FCreateStockSettleVoucherByDateCommand.ExecuteUpdate;
  AMsg := FCreateStockSettleVoucherByDateCommand.Parameters[1].Value.GetWideString;
  Result := FCreateStockSettleVoucherByDateCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.PararelCreateCashSettementVoucher(ADueDate: TDateTime; ACashKeep: string; ANotDueDate: string; out AMsg: string): Boolean;
begin
  if FPararelCreateCashSettementVoucherCommand = nil then
  begin
    FPararelCreateCashSettementVoucherCommand := FDBXConnection.CreateCommand;
    FPararelCreateCashSettementVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPararelCreateCashSettementVoucherCommand.Text := 'TSessionServerModule.PararelCreateCashSettementVoucher';
    FPararelCreateCashSettementVoucherCommand.Prepare;
  end;
  FPararelCreateCashSettementVoucherCommand.Parameters[0].Value.AsDateTime := ADueDate;
  FPararelCreateCashSettementVoucherCommand.Parameters[1].Value.SetWideString(ACashKeep);
  FPararelCreateCashSettementVoucherCommand.Parameters[2].Value.SetWideString(ANotDueDate);
  FPararelCreateCashSettementVoucherCommand.ExecuteUpdate;
  AMsg := FPararelCreateCashSettementVoucherCommand.Parameters[3].Value.GetWideString;
  Result := FPararelCreateCashSettementVoucherCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.PararelPostingCashSettementVoucher(AVoucherDate: TDateTime; ASettleType: string; out AMsg: string): Boolean;
begin
  if FPararelPostingCashSettementVoucherCommand = nil then
  begin
    FPararelPostingCashSettementVoucherCommand := FDBXConnection.CreateCommand;
    FPararelPostingCashSettementVoucherCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPararelPostingCashSettementVoucherCommand.Text := 'TSessionServerModule.PararelPostingCashSettementVoucher';
    FPararelPostingCashSettementVoucherCommand.Prepare;
  end;
  FPararelPostingCashSettementVoucherCommand.Parameters[0].Value.AsDateTime := AVoucherDate;
  FPararelPostingCashSettementVoucherCommand.Parameters[1].Value.SetWideString(ASettleType);
  FPararelPostingCashSettementVoucherCommand.ExecuteUpdate;
  AMsg := FPararelPostingCashSettementVoucherCommand.Parameters[2].Value.GetWideString;
  Result := FPararelPostingCashSettementVoucherCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.PararelCloseDealTicket(ATradeDate: TDateTime; AMarketCode: string; out AMsg: string): Boolean;
begin
  if FPararelCloseDealTicketCommand = nil then
  begin
    FPararelCloseDealTicketCommand := FDBXConnection.CreateCommand;
    FPararelCloseDealTicketCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPararelCloseDealTicketCommand.Text := 'TSessionServerModule.PararelCloseDealTicket';
    FPararelCloseDealTicketCommand.Prepare;
  end;
  FPararelCloseDealTicketCommand.Parameters[0].Value.AsDateTime := ATradeDate;
  FPararelCloseDealTicketCommand.Parameters[1].Value.SetWideString(AMarketCode);
  FPararelCloseDealTicketCommand.ExecuteUpdate;
  AMsg := FPararelCloseDealTicketCommand.Parameters[2].Value.GetWideString;
  Result := FPararelCloseDealTicketCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.CancelAllDealTicket(ATradeDate: TDateTime; out AMsg: string): Boolean;
begin
  if FCancelAllDealTicketCommand = nil then
  begin
    FCancelAllDealTicketCommand := FDBXConnection.CreateCommand;
    FCancelAllDealTicketCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCancelAllDealTicketCommand.Text := 'TSessionServerModule.CancelAllDealTicket';
    FCancelAllDealTicketCommand.Prepare;
  end;
  FCancelAllDealTicketCommand.Parameters[0].Value.AsDateTime := ATradeDate;
  FCancelAllDealTicketCommand.ExecuteUpdate;
  AMsg := FCancelAllDealTicketCommand.Parameters[1].Value.GetWideString;
  Result := FCancelAllDealTicketCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ReCalculateMinimumFee(AContractDate: TDateTime; out AMsg: string): Boolean;
begin
  if FReCalculateMinimumFeeCommand = nil then
  begin
    FReCalculateMinimumFeeCommand := FDBXConnection.CreateCommand;
    FReCalculateMinimumFeeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReCalculateMinimumFeeCommand.Text := 'TSessionServerModule.ReCalculateMinimumFee';
    FReCalculateMinimumFeeCommand.Prepare;
  end;
  FReCalculateMinimumFeeCommand.Parameters[0].Value.AsDateTime := AContractDate;
  FReCalculateMinimumFeeCommand.ExecuteUpdate;
  AMsg := FReCalculateMinimumFeeCommand.Parameters[1].Value.GetWideString;
  Result := FReCalculateMinimumFeeCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.DeleteAccountBank(AAccBankID: Integer; out AMsg: string): Boolean;
begin
  if FDeleteAccountBankCommand = nil then
  begin
    FDeleteAccountBankCommand := FDBXConnection.CreateCommand;
    FDeleteAccountBankCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeleteAccountBankCommand.Text := 'TSessionServerModule.DeleteAccountBank';
    FDeleteAccountBankCommand.Prepare;
  end;
  FDeleteAccountBankCommand.Parameters[0].Value.SetInt32(AAccBankID);
  FDeleteAccountBankCommand.ExecuteUpdate;
  AMsg := FDeleteAccountBankCommand.Parameters[1].Value.GetWideString;
  Result := FDeleteAccountBankCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GetMaxPage(AQuery: string): Integer;
begin
  if FGetMaxPageCommand = nil then
  begin
    FGetMaxPageCommand := FDBXConnection.CreateCommand;
    FGetMaxPageCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetMaxPageCommand.Text := 'TSessionServerModule.GetMaxPage';
    FGetMaxPageCommand.Prepare;
  end;
  FGetMaxPageCommand.Parameters[0].Value.SetWideString(AQuery);
  FGetMaxPageCommand.ExecuteUpdate;
  Result := FGetMaxPageCommand.Parameters[1].Value.GetInt32;
end;

procedure TSessionServerModuleClient.CopyStockDepFromUpload;
begin
  if FCopyStockDepFromUploadCommand = nil then
  begin
    FCopyStockDepFromUploadCommand := FDBXConnection.CreateCommand;
    FCopyStockDepFromUploadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCopyStockDepFromUploadCommand.Text := 'TSessionServerModule.CopyStockDepFromUpload';
    FCopyStockDepFromUploadCommand.Prepare;
  end;
  FCopyStockDepFromUploadCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CopyStockWdrFromUpload;
begin
  if FCopyStockWdrFromUploadCommand = nil then
  begin
    FCopyStockWdrFromUploadCommand := FDBXConnection.CreateCommand;
    FCopyStockWdrFromUploadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCopyStockWdrFromUploadCommand.Text := 'TSessionServerModule.CopyStockWdrFromUpload';
    FCopyStockWdrFromUploadCommand.Prepare;
  end;
  FCopyStockWdrFromUploadCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CopyDHKFromUpload;
begin
  if FCopyDHKFromUploadCommand = nil then
  begin
    FCopyDHKFromUploadCommand := FDBXConnection.CreateCommand;
    FCopyDHKFromUploadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCopyDHKFromUploadCommand.Text := 'TSessionServerModule.CopyDHKFromUpload';
    FCopyDHKFromUploadCommand.Prepare;
  end;
  FCopyDHKFromUploadCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CopyCashDepFromUpload;
begin
  if FCopyCashDepFromUploadCommand = nil then
  begin
    FCopyCashDepFromUploadCommand := FDBXConnection.CreateCommand;
    FCopyCashDepFromUploadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCopyCashDepFromUploadCommand.Text := 'TSessionServerModule.CopyCashDepFromUpload';
    FCopyCashDepFromUploadCommand.Prepare;
  end;
  FCopyCashDepFromUploadCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CopyCashWdrFromUpload;
begin
  if FCopyCashWdrFromUploadCommand = nil then
  begin
    FCopyCashWdrFromUploadCommand := FDBXConnection.CreateCommand;
    FCopyCashWdrFromUploadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCopyCashWdrFromUploadCommand.Text := 'TSessionServerModule.CopyCashWdrFromUpload';
    FCopyCashWdrFromUploadCommand.Prepare;
  end;
  FCopyCashWdrFromUploadCommand.ExecuteUpdate;
end;

procedure TSessionServerModuleClient.CopyDataAccountFromUpload;
begin
  if FCopyDataAccountFromUploadCommand = nil then
  begin
    FCopyDataAccountFromUploadCommand := FDBXConnection.CreateCommand;
    FCopyDataAccountFromUploadCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCopyDataAccountFromUploadCommand.Text := 'TSessionServerModule.CopyDataAccountFromUpload';
    FCopyDataAccountFromUploadCommand.Prepare;
  end;
  FCopyDataAccountFromUploadCommand.ExecuteUpdate;
end;

function TSessionServerModuleClient.UploadStringListKSEI(AStringList: string; AFileName: string): string;
begin
  if FUploadStringListKSEICommand = nil then
  begin
    FUploadStringListKSEICommand := FDBXConnection.CreateCommand;
    FUploadStringListKSEICommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadStringListKSEICommand.Text := 'TSessionServerModule.UploadStringListKSEI';
    FUploadStringListKSEICommand.Prepare;
  end;
  FUploadStringListKSEICommand.Parameters[0].Value.SetWideString(AStringList);
  FUploadStringListKSEICommand.Parameters[1].Value.SetWideString(AFileName);
  FUploadStringListKSEICommand.ExecuteUpdate;
  Result := FUploadStringListKSEICommand.Parameters[2].Value.GetWideString;
end;

function TSessionServerModuleClient.UploadStockRecon(ATransDate: TDateTime; AStringList: string; AFileName: string): string;
begin
  if FUploadStockReconCommand = nil then
  begin
    FUploadStockReconCommand := FDBXConnection.CreateCommand;
    FUploadStockReconCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUploadStockReconCommand.Text := 'TSessionServerModule.UploadStockRecon';
    FUploadStockReconCommand.Prepare;
  end;
  FUploadStockReconCommand.Parameters[0].Value.AsDateTime := ATransDate;
  FUploadStockReconCommand.Parameters[1].Value.SetWideString(AStringList);
  FUploadStockReconCommand.Parameters[2].Value.SetWideString(AFileName);
  FUploadStockReconCommand.ExecuteUpdate;
  Result := FUploadStockReconCommand.Parameters[3].Value.GetWideString;
end;

function TSessionServerModuleClient.GetAccountListTotalPages(AAccountStatus: string; ASearchBy: string; AAccCode: string; AAccName: string; AEntCode: string; AEntName: string): Integer;
begin
  if FGetAccountListTotalPagesCommand = nil then
  begin
    FGetAccountListTotalPagesCommand := FDBXConnection.CreateCommand;
    FGetAccountListTotalPagesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetAccountListTotalPagesCommand.Text := 'TSessionServerModule.GetAccountListTotalPages';
    FGetAccountListTotalPagesCommand.Prepare;
  end;
  FGetAccountListTotalPagesCommand.Parameters[0].Value.SetWideString(AAccountStatus);
  FGetAccountListTotalPagesCommand.Parameters[1].Value.SetWideString(ASearchBy);
  FGetAccountListTotalPagesCommand.Parameters[2].Value.SetWideString(AAccCode);
  FGetAccountListTotalPagesCommand.Parameters[3].Value.SetWideString(AAccName);
  FGetAccountListTotalPagesCommand.Parameters[4].Value.SetWideString(AEntCode);
  FGetAccountListTotalPagesCommand.Parameters[5].Value.SetWideString(AEntName);
  FGetAccountListTotalPagesCommand.ExecuteUpdate;
  Result := FGetAccountListTotalPagesCommand.Parameters[6].Value.GetInt32;
end;

function TSessionServerModuleClient.GetEntityListTotalPages(AAccStatus: string; AEnttCode: string; AEnttName: string; ACustType: string): Integer;
begin
  if FGetEntityListTotalPagesCommand = nil then
  begin
    FGetEntityListTotalPagesCommand := FDBXConnection.CreateCommand;
    FGetEntityListTotalPagesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetEntityListTotalPagesCommand.Text := 'TSessionServerModule.GetEntityListTotalPages';
    FGetEntityListTotalPagesCommand.Prepare;
  end;
  FGetEntityListTotalPagesCommand.Parameters[0].Value.SetWideString(AAccStatus);
  FGetEntityListTotalPagesCommand.Parameters[1].Value.SetWideString(AEnttCode);
  FGetEntityListTotalPagesCommand.Parameters[2].Value.SetWideString(AEnttName);
  FGetEntityListTotalPagesCommand.Parameters[3].Value.SetWideString(ACustType);
  FGetEntityListTotalPagesCommand.ExecuteUpdate;
  Result := FGetEntityListTotalPagesCommand.Parameters[4].Value.GetInt32;
end;

function TSessionServerModuleClient.RecalculateNewRound(ADealtiket: string; ARoundDecimal: Integer; out AMsg: string): Boolean;
begin
  if FRecalculateNewRoundCommand = nil then
  begin
    FRecalculateNewRoundCommand := FDBXConnection.CreateCommand;
    FRecalculateNewRoundCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRecalculateNewRoundCommand.Text := 'TSessionServerModule.RecalculateNewRound';
    FRecalculateNewRoundCommand.Prepare;
  end;
  FRecalculateNewRoundCommand.Parameters[0].Value.SetWideString(ADealtiket);
  FRecalculateNewRoundCommand.Parameters[1].Value.SetInt32(ARoundDecimal);
  FRecalculateNewRoundCommand.ExecuteUpdate;
  AMsg := FRecalculateNewRoundCommand.Parameters[2].Value.GetWideString;
  Result := FRecalculateNewRoundCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateSelectedContractFile(AConID: Integer; AFileName: string; out AMsg: string): Boolean;
begin
  if FGenerateSelectedContractFileCommand = nil then
  begin
    FGenerateSelectedContractFileCommand := FDBXConnection.CreateCommand;
    FGenerateSelectedContractFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateSelectedContractFileCommand.Text := 'TSessionServerModule.GenerateSelectedContractFile';
    FGenerateSelectedContractFileCommand.Prepare;
  end;
  FGenerateSelectedContractFileCommand.Parameters[0].Value.SetInt32(AConID);
  FGenerateSelectedContractFileCommand.Parameters[1].Value.SetWideString(AFileName);
  FGenerateSelectedContractFileCommand.ExecuteUpdate;
  AMsg := FGenerateSelectedContractFileCommand.Parameters[2].Value.GetWideString;
  Result := FGenerateSelectedContractFileCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateStamping(AConID: Int64; out AMsg: string): Boolean;
begin
  if FGenerateStampingCommand = nil then
  begin
    FGenerateStampingCommand := FDBXConnection.CreateCommand;
    FGenerateStampingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateStampingCommand.Text := 'TSessionServerModule.GenerateStamping';
    FGenerateStampingCommand.Prepare;
  end;
  FGenerateStampingCommand.Parameters[0].Value.SetInt64(AConID);
  FGenerateStampingCommand.ExecuteUpdate;
  AMsg := FGenerateStampingCommand.Parameters[1].Value.GetWideString;
  Result := FGenerateStampingCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GetFileStamp: string;
begin
  if FGetFileStampCommand = nil then
  begin
    FGetFileStampCommand := FDBXConnection.CreateCommand;
    FGetFileStampCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetFileStampCommand.Text := 'TSessionServerModule.GetFileStamp';
    FGetFileStampCommand.Prepare;
  end;
  FGetFileStampCommand.ExecuteUpdate;
  Result := FGetFileStampCommand.Parameters[0].Value.GetWideString;
end;

function TSessionServerModuleClient.SplitDealticketByExecPrice(ADealID: Int64; out AMsg: string): Boolean;
begin
  if FSplitDealticketByExecPriceCommand = nil then
  begin
    FSplitDealticketByExecPriceCommand := FDBXConnection.CreateCommand;
    FSplitDealticketByExecPriceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSplitDealticketByExecPriceCommand.Text := 'TSessionServerModule.SplitDealticketByExecPrice';
    FSplitDealticketByExecPriceCommand.Prepare;
  end;
  FSplitDealticketByExecPriceCommand.Parameters[0].Value.SetInt64(ADealID);
  FSplitDealticketByExecPriceCommand.ExecuteUpdate;
  AMsg := FSplitDealticketByExecPriceCommand.Parameters[1].Value.GetWideString;
  Result := FSplitDealticketByExecPriceCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.AccountCommissionIDByAccNo(AAccNo: string): Integer;
begin
  if FAccountCommissionIDByAccNoCommand = nil then
  begin
    FAccountCommissionIDByAccNoCommand := FDBXConnection.CreateCommand;
    FAccountCommissionIDByAccNoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAccountCommissionIDByAccNoCommand.Text := 'TSessionServerModule.AccountCommissionIDByAccNo';
    FAccountCommissionIDByAccNoCommand.Prepare;
  end;
  FAccountCommissionIDByAccNoCommand.Parameters[0].Value.SetWideString(AAccNo);
  FAccountCommissionIDByAccNoCommand.ExecuteUpdate;
  Result := FAccountCommissionIDByAccNoCommand.Parameters[1].Value.GetInt32;
end;

function TSessionServerModuleClient.GetDataForChangePrice(ADealID: Int64; out AMsg: string): Boolean;
begin
  if FGetDataForChangePriceCommand = nil then
  begin
    FGetDataForChangePriceCommand := FDBXConnection.CreateCommand;
    FGetDataForChangePriceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetDataForChangePriceCommand.Text := 'TSessionServerModule.GetDataForChangePrice';
    FGetDataForChangePriceCommand.Prepare;
  end;
  FGetDataForChangePriceCommand.Parameters[0].Value.SetInt64(ADealID);
  FGetDataForChangePriceCommand.ExecuteUpdate;
  AMsg := FGetDataForChangePriceCommand.Parameters[1].Value.GetWideString;
  Result := FGetDataForChangePriceCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ChangeBoardFacilitation(AFacilitationID: Int64; ASeqID: Int64; ABoardID: Integer; ACPAccID: Integer; out AMsg: string): Boolean;
begin
  if FChangeBoardFacilitationCommand = nil then
  begin
    FChangeBoardFacilitationCommand := FDBXConnection.CreateCommand;
    FChangeBoardFacilitationCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FChangeBoardFacilitationCommand.Text := 'TSessionServerModule.ChangeBoardFacilitation';
    FChangeBoardFacilitationCommand.Prepare;
  end;
  FChangeBoardFacilitationCommand.Parameters[0].Value.SetInt64(AFacilitationID);
  FChangeBoardFacilitationCommand.Parameters[1].Value.SetInt64(ASeqID);
  FChangeBoardFacilitationCommand.Parameters[2].Value.SetInt32(ABoardID);
  FChangeBoardFacilitationCommand.Parameters[3].Value.SetInt32(ACPAccID);
  FChangeBoardFacilitationCommand.ExecuteUpdate;
  AMsg := FChangeBoardFacilitationCommand.Parameters[4].Value.GetWideString;
  Result := FChangeBoardFacilitationCommand.Parameters[5].Value.GetBoolean;
end;

function TSessionServerModuleClient.SplitDealTicketByQty(ADealTicketID: Int64; AQty: string; out AMsg: string): Boolean;
begin
  if FSplitDealTicketByQtyCommand = nil then
  begin
    FSplitDealTicketByQtyCommand := FDBXConnection.CreateCommand;
    FSplitDealTicketByQtyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSplitDealTicketByQtyCommand.Text := 'TSessionServerModule.SplitDealTicketByQty';
    FSplitDealTicketByQtyCommand.Prepare;
  end;
  FSplitDealTicketByQtyCommand.Parameters[0].Value.SetInt64(ADealTicketID);
  FSplitDealTicketByQtyCommand.Parameters[1].Value.SetWideString(AQty);
  FSplitDealTicketByQtyCommand.ExecuteUpdate;
  AMsg := FSplitDealTicketByQtyCommand.Parameters[2].Value.GetWideString;
  Result := FSplitDealTicketByQtyCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateContractByType(AReportFile: string; AConID: Int64; AReportID: Integer; out AMsg: string): Boolean;
begin
  if FGenerateContractByTypeCommand = nil then
  begin
    FGenerateContractByTypeCommand := FDBXConnection.CreateCommand;
    FGenerateContractByTypeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateContractByTypeCommand.Text := 'TSessionServerModule.GenerateContractByType';
    FGenerateContractByTypeCommand.Prepare;
  end;
  FGenerateContractByTypeCommand.Parameters[0].Value.SetWideString(AReportFile);
  FGenerateContractByTypeCommand.Parameters[1].Value.SetInt64(AConID);
  FGenerateContractByTypeCommand.Parameters[2].Value.SetInt32(AReportID);
  FGenerateContractByTypeCommand.ExecuteUpdate;
  AMsg := FGenerateContractByTypeCommand.Parameters[3].Value.GetWideString;
  Result := FGenerateContractByTypeCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.EditAmountOmgeoContract(ADealTicketID: Int64; ANetAmmount: Double; out AMsg: string): Boolean;
begin
  if FEditAmountOmgeoContractCommand = nil then
  begin
    FEditAmountOmgeoContractCommand := FDBXConnection.CreateCommand;
    FEditAmountOmgeoContractCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEditAmountOmgeoContractCommand.Text := 'TSessionServerModule.EditAmountOmgeoContract';
    FEditAmountOmgeoContractCommand.Prepare;
  end;
  FEditAmountOmgeoContractCommand.Parameters[0].Value.SetInt64(ADealTicketID);
  FEditAmountOmgeoContractCommand.Parameters[1].Value.SetDouble(ANetAmmount);
  FEditAmountOmgeoContractCommand.ExecuteUpdate;
  AMsg := FEditAmountOmgeoContractCommand.Parameters[2].Value.GetWideString;
  Result := FEditAmountOmgeoContractCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.ContractEditAmount(ADealTicketID: Int64; ABrokerFee: Double; AVAT: Double; ALevy: Double; AVAT_Levy: Double; AKPEI: Double; ASalesTax: Double; AWHT: Double; ANetAmount: Double; out AMsg: string): Boolean;
begin
  if FContractEditAmountCommand = nil then
  begin
    FContractEditAmountCommand := FDBXConnection.CreateCommand;
    FContractEditAmountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FContractEditAmountCommand.Text := 'TSessionServerModule.ContractEditAmount';
    FContractEditAmountCommand.Prepare;
  end;
  FContractEditAmountCommand.Parameters[0].Value.SetInt64(ADealTicketID);
  FContractEditAmountCommand.Parameters[1].Value.SetDouble(ABrokerFee);
  FContractEditAmountCommand.Parameters[2].Value.SetDouble(AVAT);
  FContractEditAmountCommand.Parameters[3].Value.SetDouble(ALevy);
  FContractEditAmountCommand.Parameters[4].Value.SetDouble(AVAT_Levy);
  FContractEditAmountCommand.Parameters[5].Value.SetDouble(AKPEI);
  FContractEditAmountCommand.Parameters[6].Value.SetDouble(ASalesTax);
  FContractEditAmountCommand.Parameters[7].Value.SetDouble(AWHT);
  FContractEditAmountCommand.Parameters[8].Value.SetDouble(ANetAmount);
  FContractEditAmountCommand.ExecuteUpdate;
  AMsg := FContractEditAmountCommand.Parameters[9].Value.GetWideString;
  Result := FContractEditAmountCommand.Parameters[10].Value.GetBoolean;
end;

function TSessionServerModuleClient.ChangeChargesAmount(AConID: Int64; ASeqID: Int64; ABrokerFee: Double; AVat: Double; ALevy: Double; AVatLevy: Double; AKPEI: Double; ASalesTax: Double; AWHT: Double; AWapu: Double; out AMsg: string): Boolean;
begin
  if FChangeChargesAmountCommand = nil then
  begin
    FChangeChargesAmountCommand := FDBXConnection.CreateCommand;
    FChangeChargesAmountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FChangeChargesAmountCommand.Text := 'TSessionServerModule.ChangeChargesAmount';
    FChangeChargesAmountCommand.Prepare;
  end;
  FChangeChargesAmountCommand.Parameters[0].Value.SetInt64(AConID);
  FChangeChargesAmountCommand.Parameters[1].Value.SetInt64(ASeqID);
  FChangeChargesAmountCommand.Parameters[2].Value.SetDouble(ABrokerFee);
  FChangeChargesAmountCommand.Parameters[3].Value.SetDouble(AVat);
  FChangeChargesAmountCommand.Parameters[4].Value.SetDouble(ALevy);
  FChangeChargesAmountCommand.Parameters[5].Value.SetDouble(AVatLevy);
  FChangeChargesAmountCommand.Parameters[6].Value.SetDouble(AKPEI);
  FChangeChargesAmountCommand.Parameters[7].Value.SetDouble(ASalesTax);
  FChangeChargesAmountCommand.Parameters[8].Value.SetDouble(AWHT);
  FChangeChargesAmountCommand.Parameters[9].Value.SetDouble(AWapu);
  FChangeChargesAmountCommand.ExecuteUpdate;
  AMsg := FChangeChargesAmountCommand.Parameters[10].Value.GetWideString;
  Result := FChangeChargesAmountCommand.Parameters[11].Value.GetBoolean;
end;

function TSessionServerModuleClient.ChangeNetProcedByPrice(AConID: Int64; ASeqID: Integer; AExecID: Integer; AChangeAmt: Double; out AMsg: string): Boolean;
begin
  if FChangeNetProcedByPriceCommand = nil then
  begin
    FChangeNetProcedByPriceCommand := FDBXConnection.CreateCommand;
    FChangeNetProcedByPriceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FChangeNetProcedByPriceCommand.Text := 'TSessionServerModule.ChangeNetProcedByPrice';
    FChangeNetProcedByPriceCommand.Prepare;
  end;
  FChangeNetProcedByPriceCommand.Parameters[0].Value.SetInt64(AConID);
  FChangeNetProcedByPriceCommand.Parameters[1].Value.SetInt32(ASeqID);
  FChangeNetProcedByPriceCommand.Parameters[2].Value.SetInt32(AExecID);
  FChangeNetProcedByPriceCommand.Parameters[3].Value.SetDouble(AChangeAmt);
  FChangeNetProcedByPriceCommand.ExecuteUpdate;
  AMsg := FChangeNetProcedByPriceCommand.Parameters[4].Value.GetWideString;
  Result := FChangeNetProcedByPriceCommand.Parameters[5].Value.GetBoolean;
end;

function TSessionServerModuleClient.UpdateWithdrawStockPosition(AOldQty: Double; ANewQty: Double; AValueDate: TDateTime; AAccID: Integer; AStockID: Integer): Boolean;
begin
  if FUpdateWithdrawStockPositionCommand = nil then
  begin
    FUpdateWithdrawStockPositionCommand := FDBXConnection.CreateCommand;
    FUpdateWithdrawStockPositionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateWithdrawStockPositionCommand.Text := 'TSessionServerModule.UpdateWithdrawStockPosition';
    FUpdateWithdrawStockPositionCommand.Prepare;
  end;
  FUpdateWithdrawStockPositionCommand.Parameters[0].Value.SetDouble(AOldQty);
  FUpdateWithdrawStockPositionCommand.Parameters[1].Value.SetDouble(ANewQty);
  FUpdateWithdrawStockPositionCommand.Parameters[2].Value.AsDateTime := AValueDate;
  FUpdateWithdrawStockPositionCommand.Parameters[3].Value.SetInt32(AAccID);
  FUpdateWithdrawStockPositionCommand.Parameters[4].Value.SetInt32(AStockID);
  FUpdateWithdrawStockPositionCommand.ExecuteUpdate;
  Result := FUpdateWithdrawStockPositionCommand.Parameters[5].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateSLIKData(AYear: Integer; AMonth: Integer; out AMsg: string): Boolean;
begin
  if FGenerateSLIKDataCommand = nil then
  begin
    FGenerateSLIKDataCommand := FDBXConnection.CreateCommand;
    FGenerateSLIKDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateSLIKDataCommand.Text := 'TSessionServerModule.GenerateSLIKData';
    FGenerateSLIKDataCommand.Prepare;
  end;
  FGenerateSLIKDataCommand.Parameters[0].Value.SetInt32(AYear);
  FGenerateSLIKDataCommand.Parameters[1].Value.SetInt32(AMonth);
  FGenerateSLIKDataCommand.ExecuteUpdate;
  AMsg := FGenerateSLIKDataCommand.Parameters[2].Value.GetWideString;
  Result := FGenerateSLIKDataCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.GLInterfacePost(out AMsg: string): Boolean;
begin
  if FGLInterfacePostCommand = nil then
  begin
    FGLInterfacePostCommand := FDBXConnection.CreateCommand;
    FGLInterfacePostCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGLInterfacePostCommand.Text := 'TSessionServerModule.GLInterfacePost';
    FGLInterfacePostCommand.Prepare;
  end;
  FGLInterfacePostCommand.ExecuteUpdate;
  AMsg := FGLInterfacePostCommand.Parameters[0].Value.GetWideString;
  Result := FGLInterfacePostCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.EODProcess(ANextDayProcess: TDateTime; out AMsg: string): Boolean;
begin
  if FEODProcessCommand = nil then
  begin
    FEODProcessCommand := FDBXConnection.CreateCommand;
    FEODProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEODProcessCommand.Text := 'TSessionServerModule.EODProcess';
    FEODProcessCommand.Prepare;
  end;
  FEODProcessCommand.Parameters[0].Value.AsDateTime := ANextDayProcess;
  FEODProcessCommand.ExecuteUpdate;
  AMsg := FEODProcessCommand.Parameters[1].Value.GetWideString;
  Result := FEODProcessCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.sInvestAutoSplit(ATradeDate: TDateTime; out AMsg: string): Boolean;
begin
  if FsInvestAutoSplitCommand = nil then
  begin
    FsInvestAutoSplitCommand := FDBXConnection.CreateCommand;
    FsInvestAutoSplitCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsInvestAutoSplitCommand.Text := 'TSessionServerModule.sInvestAutoSplit';
    FsInvestAutoSplitCommand.Prepare;
  end;
  FsInvestAutoSplitCommand.Parameters[0].Value.AsDateTime := ATradeDate;
  FsInvestAutoSplitCommand.ExecuteUpdate;
  AMsg := FsInvestAutoSplitCommand.Parameters[1].Value.GetWideString;
  Result := FsInvestAutoSplitCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashDepositPostAll(CashDepDate: TDateTime; out AMessage: string): Boolean;
begin
  if FCashDepositPostAllCommand = nil then
  begin
    FCashDepositPostAllCommand := FDBXConnection.CreateCommand;
    FCashDepositPostAllCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashDepositPostAllCommand.Text := 'TSessionServerModule.CashDepositPostAll';
    FCashDepositPostAllCommand.Prepare;
  end;
  FCashDepositPostAllCommand.Parameters[0].Value.AsDateTime := CashDepDate;
  FCashDepositPostAllCommand.ExecuteUpdate;
  AMessage := FCashDepositPostAllCommand.Parameters[1].Value.GetWideString;
  Result := FCashDepositPostAllCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashDepCancel(ACDID: Int64; out AMessage: string): Boolean;
begin
  if FCashDepCancelCommand = nil then
  begin
    FCashDepCancelCommand := FDBXConnection.CreateCommand;
    FCashDepCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashDepCancelCommand.Text := 'TSessionServerModule.CashDepCancel';
    FCashDepCancelCommand.Prepare;
  end;
  FCashDepCancelCommand.Parameters[0].Value.SetInt64(ACDID);
  FCashDepCancelCommand.ExecuteUpdate;
  AMessage := FCashDepCancelCommand.Parameters[1].Value.GetWideString;
  Result := FCashDepCancelCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashDepPosting(ACDID: Int64; out AMessage: string): Boolean;
begin
  if FCashDepPostingCommand = nil then
  begin
    FCashDepPostingCommand := FDBXConnection.CreateCommand;
    FCashDepPostingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashDepPostingCommand.Text := 'TSessionServerModule.CashDepPosting';
    FCashDepPostingCommand.Prepare;
  end;
  FCashDepPostingCommand.Parameters[0].Value.SetInt64(ACDID);
  FCashDepPostingCommand.ExecuteUpdate;
  AMessage := FCashDepPostingCommand.Parameters[1].Value.GetWideString;
  Result := FCashDepPostingCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashDepositReverse(ACDID: Int64; out AMessage: string): Boolean;
begin
  if FCashDepositReverseCommand = nil then
  begin
    FCashDepositReverseCommand := FDBXConnection.CreateCommand;
    FCashDepositReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashDepositReverseCommand.Text := 'TSessionServerModule.CashDepositReverse';
    FCashDepositReverseCommand.Prepare;
  end;
  FCashDepositReverseCommand.Parameters[0].Value.SetInt64(ACDID);
  FCashDepositReverseCommand.ExecuteUpdate;
  AMessage := FCashDepositReverseCommand.Parameters[1].Value.GetWideString;
  Result := FCashDepositReverseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ChangeInterestRate(ACoID: Int64; AInterestCode: string; out AMsg: string): Boolean;
begin
  if FChangeInterestRateCommand = nil then
  begin
    FChangeInterestRateCommand := FDBXConnection.CreateCommand;
    FChangeInterestRateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FChangeInterestRateCommand.Text := 'TSessionServerModule.ChangeInterestRate';
    FChangeInterestRateCommand.Prepare;
  end;
  FChangeInterestRateCommand.Parameters[0].Value.SetInt64(ACoID);
  FChangeInterestRateCommand.Parameters[1].Value.SetWideString(AInterestCode);
  FChangeInterestRateCommand.ExecuteUpdate;
  AMsg := FChangeInterestRateCommand.Parameters[2].Value.GetWideString;
  Result := FChangeInterestRateCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.GeneratePrincipalizeInterest(ACoID: Int64; AAmount: Double; out AMsg: string; out AInterestCoID: Int64): Boolean;
begin
  if FGeneratePrincipalizeInterestCommand = nil then
  begin
    FGeneratePrincipalizeInterestCommand := FDBXConnection.CreateCommand;
    FGeneratePrincipalizeInterestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGeneratePrincipalizeInterestCommand.Text := 'TSessionServerModule.GeneratePrincipalizeInterest';
    FGeneratePrincipalizeInterestCommand.Prepare;
  end;
  FGeneratePrincipalizeInterestCommand.Parameters[0].Value.SetInt64(ACoID);
  FGeneratePrincipalizeInterestCommand.Parameters[1].Value.SetDouble(AAmount);
  FGeneratePrincipalizeInterestCommand.ExecuteUpdate;
  AMsg := FGeneratePrincipalizeInterestCommand.Parameters[2].Value.GetWideString;
  AInterestCoID := FGeneratePrincipalizeInterestCommand.Parameters[3].Value.GetInt64;
  Result := FGeneratePrincipalizeInterestCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.GeneratePrincipalizePenalty(ACoID: Int64; AAmount: Double; out AMsg: string; out AInterestCoID: Int64): Boolean;
begin
  if FGeneratePrincipalizePenaltyCommand = nil then
  begin
    FGeneratePrincipalizePenaltyCommand := FDBXConnection.CreateCommand;
    FGeneratePrincipalizePenaltyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGeneratePrincipalizePenaltyCommand.Text := 'TSessionServerModule.GeneratePrincipalizePenalty';
    FGeneratePrincipalizePenaltyCommand.Prepare;
  end;
  FGeneratePrincipalizePenaltyCommand.Parameters[0].Value.SetInt64(ACoID);
  FGeneratePrincipalizePenaltyCommand.Parameters[1].Value.SetDouble(AAmount);
  FGeneratePrincipalizePenaltyCommand.ExecuteUpdate;
  AMsg := FGeneratePrincipalizePenaltyCommand.Parameters[2].Value.GetWideString;
  AInterestCoID := FGeneratePrincipalizePenaltyCommand.Parameters[3].Value.GetInt64;
  Result := FGeneratePrincipalizePenaltyCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateWaveInterest(ACoID: Int64; AAmount: Double; out AMsg: string; out AInterestCoID: Int64): Boolean;
begin
  if FGenerateWaveInterestCommand = nil then
  begin
    FGenerateWaveInterestCommand := FDBXConnection.CreateCommand;
    FGenerateWaveInterestCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateWaveInterestCommand.Text := 'TSessionServerModule.GenerateWaveInterest';
    FGenerateWaveInterestCommand.Prepare;
  end;
  FGenerateWaveInterestCommand.Parameters[0].Value.SetInt64(ACoID);
  FGenerateWaveInterestCommand.Parameters[1].Value.SetDouble(AAmount);
  FGenerateWaveInterestCommand.ExecuteUpdate;
  AMsg := FGenerateWaveInterestCommand.Parameters[2].Value.GetWideString;
  AInterestCoID := FGenerateWaveInterestCommand.Parameters[3].Value.GetInt64;
  Result := FGenerateWaveInterestCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateWavePenalty(ACoID: Int64; AAmount: Double; out AMsg: string; out AInterestCoID: Int64): Boolean;
begin
  if FGenerateWavePenaltyCommand = nil then
  begin
    FGenerateWavePenaltyCommand := FDBXConnection.CreateCommand;
    FGenerateWavePenaltyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateWavePenaltyCommand.Text := 'TSessionServerModule.GenerateWavePenalty';
    FGenerateWavePenaltyCommand.Prepare;
  end;
  FGenerateWavePenaltyCommand.Parameters[0].Value.SetInt64(ACoID);
  FGenerateWavePenaltyCommand.Parameters[1].Value.SetDouble(AAmount);
  FGenerateWavePenaltyCommand.ExecuteUpdate;
  AMsg := FGenerateWavePenaltyCommand.Parameters[2].Value.GetWideString;
  AInterestCoID := FGenerateWavePenaltyCommand.Parameters[3].Value.GetInt64;
  Result := FGenerateWavePenaltyCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.InvoiceInterestCancel(AInvoiceID: Int64; ACancelNotes: string; out AMsg: string): Boolean;
begin
  if FInvoiceInterestCancelCommand = nil then
  begin
    FInvoiceInterestCancelCommand := FDBXConnection.CreateCommand;
    FInvoiceInterestCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInvoiceInterestCancelCommand.Text := 'TSessionServerModule.InvoiceInterestCancel';
    FInvoiceInterestCancelCommand.Prepare;
  end;
  FInvoiceInterestCancelCommand.Parameters[0].Value.SetInt64(AInvoiceID);
  FInvoiceInterestCancelCommand.Parameters[1].Value.SetWideString(ACancelNotes);
  FInvoiceInterestCancelCommand.ExecuteUpdate;
  AMsg := FInvoiceInterestCancelCommand.Parameters[2].Value.GetWideString;
  Result := FInvoiceInterestCancelCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.WaveInterestCancel(AWaveID: Int64; ACancelNotes: string; out AMsg: string): Boolean;
begin
  if FWaveInterestCancelCommand = nil then
  begin
    FWaveInterestCancelCommand := FDBXConnection.CreateCommand;
    FWaveInterestCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FWaveInterestCancelCommand.Text := 'TSessionServerModule.WaveInterestCancel';
    FWaveInterestCancelCommand.Prepare;
  end;
  FWaveInterestCancelCommand.Parameters[0].Value.SetInt64(AWaveID);
  FWaveInterestCancelCommand.Parameters[1].Value.SetWideString(ACancelNotes);
  FWaveInterestCancelCommand.ExecuteUpdate;
  AMsg := FWaveInterestCancelCommand.Parameters[2].Value.GetWideString;
  Result := FWaveInterestCancelCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.DailyInstructionUpdate(AInstructionID: string; out AMsg: string): Boolean;
begin
  if FDailyInstructionUpdateCommand = nil then
  begin
    FDailyInstructionUpdateCommand := FDBXConnection.CreateCommand;
    FDailyInstructionUpdateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDailyInstructionUpdateCommand.Text := 'TSessionServerModule.DailyInstructionUpdate';
    FDailyInstructionUpdateCommand.Prepare;
  end;
  FDailyInstructionUpdateCommand.Parameters[0].Value.SetWideString(AInstructionID);
  FDailyInstructionUpdateCommand.ExecuteUpdate;
  AMsg := FDailyInstructionUpdateCommand.Parameters[1].Value.GetWideString;
  Result := FDailyInstructionUpdateCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.DailyInstructionCancel(AInstructionID: string; ANotes: string; out AMsg: string): Boolean;
begin
  if FDailyInstructionCancelCommand = nil then
  begin
    FDailyInstructionCancelCommand := FDBXConnection.CreateCommand;
    FDailyInstructionCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDailyInstructionCancelCommand.Text := 'TSessionServerModule.DailyInstructionCancel';
    FDailyInstructionCancelCommand.Prepare;
  end;
  FDailyInstructionCancelCommand.Parameters[0].Value.SetWideString(AInstructionID);
  FDailyInstructionCancelCommand.Parameters[1].Value.SetWideString(ANotes);
  FDailyInstructionCancelCommand.ExecuteUpdate;
  AMsg := FDailyInstructionCancelCommand.Parameters[2].Value.GetWideString;
  Result := FDailyInstructionCancelCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateDailyCashInstruction(ASettleDate: TDateTime; out AMsg: string): Boolean;
begin
  if FGenerateDailyCashInstructionCommand = nil then
  begin
    FGenerateDailyCashInstructionCommand := FDBXConnection.CreateCommand;
    FGenerateDailyCashInstructionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateDailyCashInstructionCommand.Text := 'TSessionServerModule.GenerateDailyCashInstruction';
    FGenerateDailyCashInstructionCommand.Prepare;
  end;
  FGenerateDailyCashInstructionCommand.Parameters[0].Value.AsDateTime := ASettleDate;
  FGenerateDailyCashInstructionCommand.ExecuteUpdate;
  AMsg := FGenerateDailyCashInstructionCommand.Parameters[1].Value.GetWideString;
  Result := FGenerateDailyCashInstructionCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashMovementApproved(ACashMovementID: Int64; out AMsg: string): Boolean;
begin
  if FCashMovementApprovedCommand = nil then
  begin
    FCashMovementApprovedCommand := FDBXConnection.CreateCommand;
    FCashMovementApprovedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashMovementApprovedCommand.Text := 'TSessionServerModule.CashMovementApproved';
    FCashMovementApprovedCommand.Prepare;
  end;
  FCashMovementApprovedCommand.Parameters[0].Value.SetInt64(ACashMovementID);
  FCashMovementApprovedCommand.ExecuteUpdate;
  AMsg := FCashMovementApprovedCommand.Parameters[1].Value.GetWideString;
  Result := FCashMovementApprovedCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashMovementPost(ACashMovementID: Int64; ASourceCashAmount: Double; ATargetCashAmount: Double; out AMsg: string): Boolean;
begin
  if FCashMovementPostCommand = nil then
  begin
    FCashMovementPostCommand := FDBXConnection.CreateCommand;
    FCashMovementPostCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashMovementPostCommand.Text := 'TSessionServerModule.CashMovementPost';
    FCashMovementPostCommand.Prepare;
  end;
  FCashMovementPostCommand.Parameters[0].Value.SetInt64(ACashMovementID);
  FCashMovementPostCommand.Parameters[1].Value.SetDouble(ASourceCashAmount);
  FCashMovementPostCommand.Parameters[2].Value.SetDouble(ATargetCashAmount);
  FCashMovementPostCommand.ExecuteUpdate;
  AMsg := FCashMovementPostCommand.Parameters[3].Value.GetWideString;
  Result := FCashMovementPostCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashMovementReverse(ACashMovementID: Int64; out AMsg: string): Boolean;
begin
  if FCashMovementReverseCommand = nil then
  begin
    FCashMovementReverseCommand := FDBXConnection.CreateCommand;
    FCashMovementReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashMovementReverseCommand.Text := 'TSessionServerModule.CashMovementReverse';
    FCashMovementReverseCommand.Prepare;
  end;
  FCashMovementReverseCommand.Parameters[0].Value.SetInt64(ACashMovementID);
  FCashMovementReverseCommand.ExecuteUpdate;
  AMsg := FCashMovementReverseCommand.Parameters[1].Value.GetWideString;
  Result := FCashMovementReverseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CashMovementCancel(ACashMovementID: Int64; ANotes: string; out AMsg: string): Boolean;
begin
  if FCashMovementCancelCommand = nil then
  begin
    FCashMovementCancelCommand := FDBXConnection.CreateCommand;
    FCashMovementCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCashMovementCancelCommand.Text := 'TSessionServerModule.CashMovementCancel';
    FCashMovementCancelCommand.Prepare;
  end;
  FCashMovementCancelCommand.Parameters[0].Value.SetInt64(ACashMovementID);
  FCashMovementCancelCommand.Parameters[1].Value.SetWideString(ANotes);
  FCashMovementCancelCommand.ExecuteUpdate;
  AMsg := FCashMovementCancelCommand.Parameters[2].Value.GetWideString;
  Result := FCashMovementCancelCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.AlternateCashSettlCancel(AAcsID: Int64; ANotes: string; out AMsg: string): Boolean;
begin
  if FAlternateCashSettlCancelCommand = nil then
  begin
    FAlternateCashSettlCancelCommand := FDBXConnection.CreateCommand;
    FAlternateCashSettlCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAlternateCashSettlCancelCommand.Text := 'TSessionServerModule.AlternateCashSettlCancel';
    FAlternateCashSettlCancelCommand.Prepare;
  end;
  FAlternateCashSettlCancelCommand.Parameters[0].Value.SetInt64(AAcsID);
  FAlternateCashSettlCancelCommand.Parameters[1].Value.SetWideString(ANotes);
  FAlternateCashSettlCancelCommand.ExecuteUpdate;
  AMsg := FAlternateCashSettlCancelCommand.Parameters[2].Value.GetWideString;
  Result := FAlternateCashSettlCancelCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.AlternateCashSettlPost(AAcsID: Int64; out AMsg: string): Boolean;
begin
  if FAlternateCashSettlPostCommand = nil then
  begin
    FAlternateCashSettlPostCommand := FDBXConnection.CreateCommand;
    FAlternateCashSettlPostCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAlternateCashSettlPostCommand.Text := 'TSessionServerModule.AlternateCashSettlPost';
    FAlternateCashSettlPostCommand.Prepare;
  end;
  FAlternateCashSettlPostCommand.Parameters[0].Value.SetInt64(AAcsID);
  FAlternateCashSettlPostCommand.ExecuteUpdate;
  AMsg := FAlternateCashSettlPostCommand.Parameters[1].Value.GetWideString;
  Result := FAlternateCashSettlPostCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.AlternateCashSettlReverse(AAcsID: Int64; out AMsg: string): Boolean;
begin
  if FAlternateCashSettlReverseCommand = nil then
  begin
    FAlternateCashSettlReverseCommand := FDBXConnection.CreateCommand;
    FAlternateCashSettlReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAlternateCashSettlReverseCommand.Text := 'TSessionServerModule.AlternateCashSettlReverse';
    FAlternateCashSettlReverseCommand.Prepare;
  end;
  FAlternateCashSettlReverseCommand.Parameters[0].Value.SetInt64(AAcsID);
  FAlternateCashSettlReverseCommand.ExecuteUpdate;
  AMsg := FAlternateCashSettlReverseCommand.Parameters[1].Value.GetWideString;
  Result := FAlternateCashSettlReverseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GetClosingPriceForACS(AStockCode: string; AValueDate: TDateTime): Double;
begin
  if FGetClosingPriceForACSCommand = nil then
  begin
    FGetClosingPriceForACSCommand := FDBXConnection.CreateCommand;
    FGetClosingPriceForACSCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetClosingPriceForACSCommand.Text := 'TSessionServerModule.GetClosingPriceForACS';
    FGetClosingPriceForACSCommand.Prepare;
  end;
  FGetClosingPriceForACSCommand.Parameters[0].Value.SetWideString(AStockCode);
  FGetClosingPriceForACSCommand.Parameters[1].Value.AsDateTime := AValueDate;
  FGetClosingPriceForACSCommand.ExecuteUpdate;
  Result := FGetClosingPriceForACSCommand.Parameters[2].Value.GetDouble;
end;

function TSessionServerModuleClient.CorpactExerciseProcess(AExerID: Int64; out AMsg: string): Boolean;
begin
  if FCorpactExerciseProcessCommand = nil then
  begin
    FCorpactExerciseProcessCommand := FDBXConnection.CreateCommand;
    FCorpactExerciseProcessCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCorpactExerciseProcessCommand.Text := 'TSessionServerModule.CorpactExerciseProcess';
    FCorpactExerciseProcessCommand.Prepare;
  end;
  FCorpactExerciseProcessCommand.Parameters[0].Value.SetInt64(AExerID);
  FCorpactExerciseProcessCommand.ExecuteUpdate;
  AMsg := FCorpactExerciseProcessCommand.Parameters[1].Value.GetWideString;
  Result := FCorpactExerciseProcessCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CorpactExerciseDistribution(AExerID: Int64; out AMsg: string): Boolean;
begin
  if FCorpactExerciseDistributionCommand = nil then
  begin
    FCorpactExerciseDistributionCommand := FDBXConnection.CreateCommand;
    FCorpactExerciseDistributionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCorpactExerciseDistributionCommand.Text := 'TSessionServerModule.CorpactExerciseDistribution';
    FCorpactExerciseDistributionCommand.Prepare;
  end;
  FCorpactExerciseDistributionCommand.Parameters[0].Value.SetInt64(AExerID);
  FCorpactExerciseDistributionCommand.ExecuteUpdate;
  AMsg := FCorpactExerciseDistributionCommand.Parameters[1].Value.GetWideString;
  Result := FCorpactExerciseDistributionCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.CorpactExerciseCancel(AExerID: Int64; ANotes: string; out AMsg: string): Boolean;
begin
  if FCorpactExerciseCancelCommand = nil then
  begin
    FCorpactExerciseCancelCommand := FDBXConnection.CreateCommand;
    FCorpactExerciseCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCorpactExerciseCancelCommand.Text := 'TSessionServerModule.CorpactExerciseCancel';
    FCorpactExerciseCancelCommand.Prepare;
  end;
  FCorpactExerciseCancelCommand.Parameters[0].Value.SetInt64(AExerID);
  FCorpactExerciseCancelCommand.Parameters[1].Value.SetWideString(ANotes);
  FCorpactExerciseCancelCommand.ExecuteUpdate;
  AMsg := FCorpactExerciseCancelCommand.Parameters[2].Value.GetWideString;
  Result := FCorpactExerciseCancelCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.CorpactExerciseReverse(AExerID: Int64; ANotes: string; out AMsg: string): Boolean;
begin
  if FCorpactExerciseReverseCommand = nil then
  begin
    FCorpactExerciseReverseCommand := FDBXConnection.CreateCommand;
    FCorpactExerciseReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCorpactExerciseReverseCommand.Text := 'TSessionServerModule.CorpactExerciseReverse';
    FCorpactExerciseReverseCommand.Prepare;
  end;
  FCorpactExerciseReverseCommand.Parameters[0].Value.SetInt64(AExerID);
  FCorpactExerciseReverseCommand.Parameters[1].Value.SetWideString(ANotes);
  FCorpactExerciseReverseCommand.ExecuteUpdate;
  AMsg := FCorpactExerciseReverseCommand.Parameters[2].Value.GetWideString;
  Result := FCorpactExerciseReverseCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateDealticketFromVerdhanaRT(AOrderDate: TDateTime; out AMsg: string): Boolean;
begin
  if FGenerateDealticketFromVerdhanaRTCommand = nil then
  begin
    FGenerateDealticketFromVerdhanaRTCommand := FDBXConnection.CreateCommand;
    FGenerateDealticketFromVerdhanaRTCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateDealticketFromVerdhanaRTCommand.Text := 'TSessionServerModule.GenerateDealticketFromVerdhanaRT';
    FGenerateDealticketFromVerdhanaRTCommand.Prepare;
  end;
  FGenerateDealticketFromVerdhanaRTCommand.Parameters[0].Value.AsDateTime := AOrderDate;
  FGenerateDealticketFromVerdhanaRTCommand.ExecuteUpdate;
  AMsg := FGenerateDealticketFromVerdhanaRTCommand.Parameters[1].Value.GetWideString;
  Result := FGenerateDealticketFromVerdhanaRTCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateAMLReport(AReportDate: TDateTime; out AMsg: string): Boolean;
begin
  if FGenerateAMLReportCommand = nil then
  begin
    FGenerateAMLReportCommand := FDBXConnection.CreateCommand;
    FGenerateAMLReportCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateAMLReportCommand.Text := 'TSessionServerModule.GenerateAMLReport';
    FGenerateAMLReportCommand.Prepare;
  end;
  FGenerateAMLReportCommand.Parameters[0].Value.AsDateTime := AReportDate;
  FGenerateAMLReportCommand.ExecuteUpdate;
  AMsg := FGenerateAMLReportCommand.Parameters[1].Value.GetWideString;
  Result := FGenerateAMLReportCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateEODSupport(AReportDate: TDateTime): string;
begin
  if FGenerateEODSupportCommand = nil then
  begin
    FGenerateEODSupportCommand := FDBXConnection.CreateCommand;
    FGenerateEODSupportCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateEODSupportCommand.Text := 'TSessionServerModule.GenerateEODSupport';
    FGenerateEODSupportCommand.Prepare;
  end;
  FGenerateEODSupportCommand.Parameters[0].Value.AsDateTime := AReportDate;
  FGenerateEODSupportCommand.ExecuteUpdate;
  Result := FGenerateEODSupportCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.GetEODSupportFileList(AReportDate: string): string;
begin
  if FGetEODSupportFileListCommand = nil then
  begin
    FGetEODSupportFileListCommand := FDBXConnection.CreateCommand;
    FGetEODSupportFileListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetEODSupportFileListCommand.Text := 'TSessionServerModule.GetEODSupportFileList';
    FGetEODSupportFileListCommand.Prepare;
  end;
  FGetEODSupportFileListCommand.Parameters[0].Value.SetWideString(AReportDate);
  FGetEODSupportFileListCommand.ExecuteUpdate;
  Result := FGetEODSupportFileListCommand.Parameters[1].Value.GetWideString;
end;

function TSessionServerModuleClient.GetEODSupportFile(AReportDate: string; AFileName: string): TStream;
begin
  if FGetEODSupportFileCommand = nil then
  begin
    FGetEODSupportFileCommand := FDBXConnection.CreateCommand;
    FGetEODSupportFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetEODSupportFileCommand.Text := 'TSessionServerModule.GetEODSupportFile';
    FGetEODSupportFileCommand.Prepare;
  end;
  FGetEODSupportFileCommand.Parameters[0].Value.SetWideString(AReportDate);
  FGetEODSupportFileCommand.Parameters[1].Value.SetWideString(AFileName);
  FGetEODSupportFileCommand.ExecuteUpdate;
  Result := FGetEODSupportFileCommand.Parameters[2].Value.GetStream(FInstanceOwner);
end;

function TSessionServerModuleClient.LoadEMaterailConfig(out server_port: Integer; out db_server: string; out db_port: Integer; out db_name: string; out db_schema: string; out db_user: string; out db_password: string; out db_poll_size: Integer; out base_backend: string; out base_fileupload: string; out base_stampv2: string; out base_stampservice: string; out login_path: string; out upload_path: string; out generate_sn_path: string; out stamp_path: string; out jenisdoc_path: string; out check_sn_path: string; out generate_qr_path: string; out saldo_pos_path: string; out saldo_pemungut_path: string; out update_stamp_path: string; out list_sn_path: string; out user_peruri: string; out password_peruri: string; out cache: Boolean; out base_path: string; out worker_count: Integer; out batch_size: Integer; out dispatcher_interval_ms: Integer): Boolean;
begin
  if FLoadEMaterailConfigCommand = nil then
  begin
    FLoadEMaterailConfigCommand := FDBXConnection.CreateCommand;
    FLoadEMaterailConfigCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLoadEMaterailConfigCommand.Text := 'TSessionServerModule.LoadEMaterailConfig';
    FLoadEMaterailConfigCommand.Prepare;
  end;
  FLoadEMaterailConfigCommand.ExecuteUpdate;
  server_port := FLoadEMaterailConfigCommand.Parameters[0].Value.GetInt32;
  db_server := FLoadEMaterailConfigCommand.Parameters[1].Value.GetWideString;
  db_port := FLoadEMaterailConfigCommand.Parameters[2].Value.GetInt32;
  db_name := FLoadEMaterailConfigCommand.Parameters[3].Value.GetWideString;
  db_schema := FLoadEMaterailConfigCommand.Parameters[4].Value.GetWideString;
  db_user := FLoadEMaterailConfigCommand.Parameters[5].Value.GetWideString;
  db_password := FLoadEMaterailConfigCommand.Parameters[6].Value.GetWideString;
  db_poll_size := FLoadEMaterailConfigCommand.Parameters[7].Value.GetInt32;
  base_backend := FLoadEMaterailConfigCommand.Parameters[8].Value.GetWideString;
  base_fileupload := FLoadEMaterailConfigCommand.Parameters[9].Value.GetWideString;
  base_stampv2 := FLoadEMaterailConfigCommand.Parameters[10].Value.GetWideString;
  base_stampservice := FLoadEMaterailConfigCommand.Parameters[11].Value.GetWideString;
  login_path := FLoadEMaterailConfigCommand.Parameters[12].Value.GetWideString;
  upload_path := FLoadEMaterailConfigCommand.Parameters[13].Value.GetWideString;
  generate_sn_path := FLoadEMaterailConfigCommand.Parameters[14].Value.GetWideString;
  stamp_path := FLoadEMaterailConfigCommand.Parameters[15].Value.GetWideString;
  jenisdoc_path := FLoadEMaterailConfigCommand.Parameters[16].Value.GetWideString;
  check_sn_path := FLoadEMaterailConfigCommand.Parameters[17].Value.GetWideString;
  generate_qr_path := FLoadEMaterailConfigCommand.Parameters[18].Value.GetWideString;
  saldo_pos_path := FLoadEMaterailConfigCommand.Parameters[19].Value.GetWideString;
  saldo_pemungut_path := FLoadEMaterailConfigCommand.Parameters[20].Value.GetWideString;
  update_stamp_path := FLoadEMaterailConfigCommand.Parameters[21].Value.GetWideString;
  list_sn_path := FLoadEMaterailConfigCommand.Parameters[22].Value.GetWideString;
  user_peruri := FLoadEMaterailConfigCommand.Parameters[23].Value.GetWideString;
  password_peruri := FLoadEMaterailConfigCommand.Parameters[24].Value.GetWideString;
  cache := FLoadEMaterailConfigCommand.Parameters[25].Value.GetBoolean;
  base_path := FLoadEMaterailConfigCommand.Parameters[26].Value.GetWideString;
  worker_count := FLoadEMaterailConfigCommand.Parameters[27].Value.GetInt32;
  batch_size := FLoadEMaterailConfigCommand.Parameters[28].Value.GetInt32;
  dispatcher_interval_ms := FLoadEMaterailConfigCommand.Parameters[29].Value.GetInt32;
  Result := FLoadEMaterailConfigCommand.Parameters[30].Value.GetBoolean;
end;

function TSessionServerModuleClient.SaveEMaterailConfig(server_port: Integer; db_server: string; db_port: Integer; db_name: string; db_schema: string; db_user: string; db_password: string; db_poll_size: Integer; base_backend: string; base_fileupload: string; base_stampv2: string; base_stampservice: string; login_path: string; upload_path: string; generate_sn_path: string; stamp_path: string; jenisdoc_path: string; check_sn_path: string; generate_qr_path: string; saldo_pos_path: string; saldo_pemungut_path: string; update_stamp_path: string; list_sn_path: string; user_peruri: string; password_peruri: string; cache: Boolean; base_path: string; worker_count: Integer; batch_size: Integer; dispatcher_interval_ms: Integer): Boolean;
begin
  if FSaveEMaterailConfigCommand = nil then
  begin
    FSaveEMaterailConfigCommand := FDBXConnection.CreateCommand;
    FSaveEMaterailConfigCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSaveEMaterailConfigCommand.Text := 'TSessionServerModule.SaveEMaterailConfig';
    FSaveEMaterailConfigCommand.Prepare;
  end;
  FSaveEMaterailConfigCommand.Parameters[0].Value.SetInt32(server_port);
  FSaveEMaterailConfigCommand.Parameters[1].Value.SetWideString(db_server);
  FSaveEMaterailConfigCommand.Parameters[2].Value.SetInt32(db_port);
  FSaveEMaterailConfigCommand.Parameters[3].Value.SetWideString(db_name);
  FSaveEMaterailConfigCommand.Parameters[4].Value.SetWideString(db_schema);
  FSaveEMaterailConfigCommand.Parameters[5].Value.SetWideString(db_user);
  FSaveEMaterailConfigCommand.Parameters[6].Value.SetWideString(db_password);
  FSaveEMaterailConfigCommand.Parameters[7].Value.SetInt32(db_poll_size);
  FSaveEMaterailConfigCommand.Parameters[8].Value.SetWideString(base_backend);
  FSaveEMaterailConfigCommand.Parameters[9].Value.SetWideString(base_fileupload);
  FSaveEMaterailConfigCommand.Parameters[10].Value.SetWideString(base_stampv2);
  FSaveEMaterailConfigCommand.Parameters[11].Value.SetWideString(base_stampservice);
  FSaveEMaterailConfigCommand.Parameters[12].Value.SetWideString(login_path);
  FSaveEMaterailConfigCommand.Parameters[13].Value.SetWideString(upload_path);
  FSaveEMaterailConfigCommand.Parameters[14].Value.SetWideString(generate_sn_path);
  FSaveEMaterailConfigCommand.Parameters[15].Value.SetWideString(stamp_path);
  FSaveEMaterailConfigCommand.Parameters[16].Value.SetWideString(jenisdoc_path);
  FSaveEMaterailConfigCommand.Parameters[17].Value.SetWideString(check_sn_path);
  FSaveEMaterailConfigCommand.Parameters[18].Value.SetWideString(generate_qr_path);
  FSaveEMaterailConfigCommand.Parameters[19].Value.SetWideString(saldo_pos_path);
  FSaveEMaterailConfigCommand.Parameters[20].Value.SetWideString(saldo_pemungut_path);
  FSaveEMaterailConfigCommand.Parameters[21].Value.SetWideString(update_stamp_path);
  FSaveEMaterailConfigCommand.Parameters[22].Value.SetWideString(list_sn_path);
  FSaveEMaterailConfigCommand.Parameters[23].Value.SetWideString(user_peruri);
  FSaveEMaterailConfigCommand.Parameters[24].Value.SetWideString(password_peruri);
  FSaveEMaterailConfigCommand.Parameters[25].Value.SetBoolean(cache);
  FSaveEMaterailConfigCommand.Parameters[26].Value.SetWideString(base_path);
  FSaveEMaterailConfigCommand.Parameters[27].Value.SetInt32(worker_count);
  FSaveEMaterailConfigCommand.Parameters[28].Value.SetInt32(batch_size);
  FSaveEMaterailConfigCommand.Parameters[29].Value.SetInt32(dispatcher_interval_ms);
  FSaveEMaterailConfigCommand.ExecuteUpdate;
  Result := FSaveEMaterailConfigCommand.Parameters[30].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateCheckReportEMaterai(AContractID: Int64; out AMsg: string): Boolean;
begin
  if FGenerateCheckReportEMateraiCommand = nil then
  begin
    FGenerateCheckReportEMateraiCommand := FDBXConnection.CreateCommand;
    FGenerateCheckReportEMateraiCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateCheckReportEMateraiCommand.Text := 'TSessionServerModule.GenerateCheckReportEMaterai';
    FGenerateCheckReportEMateraiCommand.Prepare;
  end;
  FGenerateCheckReportEMateraiCommand.Parameters[0].Value.SetInt64(AContractID);
  FGenerateCheckReportEMateraiCommand.ExecuteUpdate;
  AMsg := FGenerateCheckReportEMateraiCommand.Parameters[1].Value.GetWideString;
  Result := FGenerateCheckReportEMateraiCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ClearVedhanaDataTradeOrder(AOrderDate: TDateTime; ATradeOrder: string; out AMsg: string): Boolean;
begin
  if FClearVedhanaDataTradeOrderCommand = nil then
  begin
    FClearVedhanaDataTradeOrderCommand := FDBXConnection.CreateCommand;
    FClearVedhanaDataTradeOrderCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FClearVedhanaDataTradeOrderCommand.Text := 'TSessionServerModule.ClearVedhanaDataTradeOrder';
    FClearVedhanaDataTradeOrderCommand.Prepare;
  end;
  FClearVedhanaDataTradeOrderCommand.Parameters[0].Value.AsDateTime := AOrderDate;
  FClearVedhanaDataTradeOrderCommand.Parameters[1].Value.SetWideString(ATradeOrder);
  FClearVedhanaDataTradeOrderCommand.ExecuteUpdate;
  AMsg := FClearVedhanaDataTradeOrderCommand.Parameters[2].Value.GetWideString;
  Result := FClearVedhanaDataTradeOrderCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.RDNSynchronize(AAccID: Int64; ADC: string; AValueDate: TDateTime; AAmount: Double; ADesc: string; out AMsg: string): Boolean;
begin
  if FRDNSynchronizeCommand = nil then
  begin
    FRDNSynchronizeCommand := FDBXConnection.CreateCommand;
    FRDNSynchronizeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRDNSynchronizeCommand.Text := 'TSessionServerModule.RDNSynchronize';
    FRDNSynchronizeCommand.Prepare;
  end;
  FRDNSynchronizeCommand.Parameters[0].Value.SetInt64(AAccID);
  FRDNSynchronizeCommand.Parameters[1].Value.SetWideString(ADC);
  FRDNSynchronizeCommand.Parameters[2].Value.AsDateTime := AValueDate;
  FRDNSynchronizeCommand.Parameters[3].Value.SetDouble(AAmount);
  FRDNSynchronizeCommand.Parameters[4].Value.SetWideString(ADesc);
  FRDNSynchronizeCommand.ExecuteUpdate;
  AMsg := FRDNSynchronizeCommand.Parameters[5].Value.GetWideString;
  Result := FRDNSynchronizeCommand.Parameters[6].Value.GetBoolean;
end;

function TSessionServerModuleClient.StockWithdrawApprove(AStockWdrID: Int64; out AMsg: string): Boolean;
begin
  if FStockWithdrawApproveCommand = nil then
  begin
    FStockWithdrawApproveCommand := FDBXConnection.CreateCommand;
    FStockWithdrawApproveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockWithdrawApproveCommand.Text := 'TSessionServerModule.StockWithdrawApprove';
    FStockWithdrawApproveCommand.Prepare;
  end;
  FStockWithdrawApproveCommand.Parameters[0].Value.SetInt64(AStockWdrID);
  FStockWithdrawApproveCommand.ExecuteUpdate;
  AMsg := FStockWithdrawApproveCommand.Parameters[1].Value.GetWideString;
  Result := FStockWithdrawApproveCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.StockWithdrawPosting(AStockWdrID: Int64; out AMsg: string): Boolean;
begin
  if FStockWithdrawPostingCommand = nil then
  begin
    FStockWithdrawPostingCommand := FDBXConnection.CreateCommand;
    FStockWithdrawPostingCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockWithdrawPostingCommand.Text := 'TSessionServerModule.StockWithdrawPosting';
    FStockWithdrawPostingCommand.Prepare;
  end;
  FStockWithdrawPostingCommand.Parameters[0].Value.SetInt64(AStockWdrID);
  FStockWithdrawPostingCommand.ExecuteUpdate;
  AMsg := FStockWithdrawPostingCommand.Parameters[1].Value.GetWideString;
  Result := FStockWithdrawPostingCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.StockWithdrawCancel(AStockWdrID: Int64; ACancelNotes: string; out AMsg: string): Boolean;
begin
  if FStockWithdrawCancelCommand = nil then
  begin
    FStockWithdrawCancelCommand := FDBXConnection.CreateCommand;
    FStockWithdrawCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockWithdrawCancelCommand.Text := 'TSessionServerModule.StockWithdrawCancel';
    FStockWithdrawCancelCommand.Prepare;
  end;
  FStockWithdrawCancelCommand.Parameters[0].Value.SetInt64(AStockWdrID);
  FStockWithdrawCancelCommand.Parameters[1].Value.SetWideString(ACancelNotes);
  FStockWithdrawCancelCommand.ExecuteUpdate;
  AMsg := FStockWithdrawCancelCommand.Parameters[2].Value.GetWideString;
  Result := FStockWithdrawCancelCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.StockWithdrawReverse(AStockWdrID: Int64; out AMsg: string): Boolean;
begin
  if FStockWithdrawReverseCommand = nil then
  begin
    FStockWithdrawReverseCommand := FDBXConnection.CreateCommand;
    FStockWithdrawReverseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockWithdrawReverseCommand.Text := 'TSessionServerModule.StockWithdrawReverse';
    FStockWithdrawReverseCommand.Prepare;
  end;
  FStockWithdrawReverseCommand.Parameters[0].Value.SetInt64(AStockWdrID);
  FStockWithdrawReverseCommand.ExecuteUpdate;
  AMsg := FStockWithdrawReverseCommand.Parameters[1].Value.GetWideString;
  Result := FStockWithdrawReverseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.DepositoApprove(ADepositoID: Int64; out AMsg: string): Boolean;
begin
  if FDepositoApproveCommand = nil then
  begin
    FDepositoApproveCommand := FDBXConnection.CreateCommand;
    FDepositoApproveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDepositoApproveCommand.Text := 'TSessionServerModule.DepositoApprove';
    FDepositoApproveCommand.Prepare;
  end;
  FDepositoApproveCommand.Parameters[0].Value.SetInt64(ADepositoID);
  FDepositoApproveCommand.ExecuteUpdate;
  AMsg := FDepositoApproveCommand.Parameters[1].Value.GetWideString;
  Result := FDepositoApproveCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.DepositoCancel(ADepositoID: Int64; ACancelNotes: string; out AMsg: string): Boolean;
begin
  if FDepositoCancelCommand = nil then
  begin
    FDepositoCancelCommand := FDBXConnection.CreateCommand;
    FDepositoCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDepositoCancelCommand.Text := 'TSessionServerModule.DepositoCancel';
    FDepositoCancelCommand.Prepare;
  end;
  FDepositoCancelCommand.Parameters[0].Value.SetInt64(ADepositoID);
  FDepositoCancelCommand.Parameters[1].Value.SetWideString(ACancelNotes);
  FDepositoCancelCommand.ExecuteUpdate;
  AMsg := FDepositoCancelCommand.Parameters[2].Value.GetWideString;
  Result := FDepositoCancelCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.DepositoClose(ADepositoID: Int64; out AMsg: string): Boolean;
begin
  if FDepositoCloseCommand = nil then
  begin
    FDepositoCloseCommand := FDBXConnection.CreateCommand;
    FDepositoCloseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDepositoCloseCommand.Text := 'TSessionServerModule.DepositoClose';
    FDepositoCloseCommand.Prepare;
  end;
  FDepositoCloseCommand.Parameters[0].Value.SetInt64(ADepositoID);
  FDepositoCloseCommand.ExecuteUpdate;
  AMsg := FDepositoCloseCommand.Parameters[1].Value.GetWideString;
  Result := FDepositoCloseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateUpdateDataExecutionFromDTE(ADTEDate: TDateTime; out AMsg: string): Boolean;
begin
  if FGenerateUpdateDataExecutionFromDTECommand = nil then
  begin
    FGenerateUpdateDataExecutionFromDTECommand := FDBXConnection.CreateCommand;
    FGenerateUpdateDataExecutionFromDTECommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateUpdateDataExecutionFromDTECommand.Text := 'TSessionServerModule.GenerateUpdateDataExecutionFromDTE';
    FGenerateUpdateDataExecutionFromDTECommand.Prepare;
  end;
  FGenerateUpdateDataExecutionFromDTECommand.Parameters[0].Value.AsDateTime := ADTEDate;
  FGenerateUpdateDataExecutionFromDTECommand.ExecuteUpdate;
  AMsg := FGenerateUpdateDataExecutionFromDTECommand.Parameters[1].Value.GetWideString;
  Result := FGenerateUpdateDataExecutionFromDTECommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ChangeCommission(AOrdDate: TDateTime; AConID: Int64; ADealTicketID: Int64; out AMsg: string): Boolean;
begin
  if FChangeCommissionCommand = nil then
  begin
    FChangeCommissionCommand := FDBXConnection.CreateCommand;
    FChangeCommissionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FChangeCommissionCommand.Text := 'TSessionServerModule.ChangeCommission';
    FChangeCommissionCommand.Prepare;
  end;
  FChangeCommissionCommand.Parameters[0].Value.AsDateTime := AOrdDate;
  FChangeCommissionCommand.Parameters[1].Value.SetInt64(AConID);
  FChangeCommissionCommand.Parameters[2].Value.SetInt64(ADealTicketID);
  FChangeCommissionCommand.ExecuteUpdate;
  AMsg := FChangeCommissionCommand.Parameters[3].Value.GetWideString;
  Result := FChangeCommissionCommand.Parameters[4].Value.GetBoolean;
end;

function TSessionServerModuleClient.GenerateIDXMonthlyTransReport(APeriod: string; out AMsg: string): Boolean;
begin
  if FGenerateIDXMonthlyTransReportCommand = nil then
  begin
    FGenerateIDXMonthlyTransReportCommand := FDBXConnection.CreateCommand;
    FGenerateIDXMonthlyTransReportCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateIDXMonthlyTransReportCommand.Text := 'TSessionServerModule.GenerateIDXMonthlyTransReport';
    FGenerateIDXMonthlyTransReportCommand.Prepare;
  end;
  FGenerateIDXMonthlyTransReportCommand.Parameters[0].Value.SetWideString(APeriod);
  FGenerateIDXMonthlyTransReportCommand.ExecuteUpdate;
  AMsg := FGenerateIDXMonthlyTransReportCommand.Parameters[1].Value.GetWideString;
  Result := FGenerateIDXMonthlyTransReportCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.StockMovementApprove(ASMID: Integer): Boolean;
begin
  if FStockMovementApproveCommand = nil then
  begin
    FStockMovementApproveCommand := FDBXConnection.CreateCommand;
    FStockMovementApproveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockMovementApproveCommand.Text := 'TSessionServerModule.StockMovementApprove';
    FStockMovementApproveCommand.Prepare;
  end;
  FStockMovementApproveCommand.Parameters[0].Value.SetInt32(ASMID);
  FStockMovementApproveCommand.ExecuteUpdate;
  Result := FStockMovementApproveCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.StockMovementCancel(ASMID: Integer): Boolean;
begin
  if FStockMovementCancelCommand = nil then
  begin
    FStockMovementCancelCommand := FDBXConnection.CreateCommand;
    FStockMovementCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStockMovementCancelCommand.Text := 'TSessionServerModule.StockMovementCancel';
    FStockMovementCancelCommand.Prepare;
  end;
  FStockMovementCancelCommand.Parameters[0].Value.SetInt32(ASMID);
  FStockMovementCancelCommand.ExecuteUpdate;
  Result := FStockMovementCancelCommand.Parameters[1].Value.GetBoolean;
end;

procedure TSessionServerModuleClient.GetPDFFiles(FolderPath: string; var PDFFiles: TStringList);
begin
  if FGetPDFFilesCommand = nil then
  begin
    FGetPDFFilesCommand := FDBXConnection.CreateCommand;
    FGetPDFFilesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetPDFFilesCommand.Text := 'TSessionServerModule.GetPDFFiles';
    FGetPDFFilesCommand.Prepare;
  end;
  FGetPDFFilesCommand.Parameters[0].Value.SetWideString(FolderPath);
  if not Assigned(PDFFiles) then
    FGetPDFFilesCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FGetPDFFilesCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FGetPDFFilesCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(PDFFiles), True);
      if FInstanceOwner then
        PDFFiles.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FGetPDFFilesCommand.ExecuteUpdate;
  if not FGetPDFFilesCommand.Parameters[1].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FGetPDFFilesCommand.Parameters[1].ConnectionHandler).GetJSONUnMarshaler;
    try
      PDFFiles := TStringList(FUnMarshal.UnMarshal(FGetPDFFilesCommand.Parameters[1].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FGetPDFFilesCommand.FreeOnExecute(PDFFiles);
    finally
      FreeAndNil(FUnMarshal)
    end;
  end
  else
    PDFFiles := nil;
end;

function TSessionServerModuleClient.DeleteAllPDFFile(out AMsg: string): Boolean;
begin
  if FDeleteAllPDFFileCommand = nil then
  begin
    FDeleteAllPDFFileCommand := FDBXConnection.CreateCommand;
    FDeleteAllPDFFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeleteAllPDFFileCommand.Text := 'TSessionServerModule.DeleteAllPDFFile';
    FDeleteAllPDFFileCommand.Prepare;
  end;
  FDeleteAllPDFFileCommand.ExecuteUpdate;
  AMsg := FDeleteAllPDFFileCommand.Parameters[0].Value.GetWideString;
  Result := FDeleteAllPDFFileCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.MoveAllPDFFile(out AMsg: string): Boolean;
begin
  if FMoveAllPDFFileCommand = nil then
  begin
    FMoveAllPDFFileCommand := FDBXConnection.CreateCommand;
    FMoveAllPDFFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMoveAllPDFFileCommand.Text := 'TSessionServerModule.MoveAllPDFFile';
    FMoveAllPDFFileCommand.Prepare;
  end;
  FMoveAllPDFFileCommand.ExecuteUpdate;
  AMsg := FMoveAllPDFFileCommand.Parameters[0].Value.GetWideString;
  Result := FMoveAllPDFFileCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.GetStampedContrac(AContractID: Int64; out AMsg: string): Boolean;
begin
  if FGetStampedContracCommand = nil then
  begin
    FGetStampedContracCommand := FDBXConnection.CreateCommand;
    FGetStampedContracCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetStampedContracCommand.Text := 'TSessionServerModule.GetStampedContrac';
    FGetStampedContracCommand.Prepare;
  end;
  FGetStampedContracCommand.Parameters[0].Value.SetInt64(AContractID);
  FGetStampedContracCommand.ExecuteUpdate;
  AMsg := FGetStampedContracCommand.Parameters[1].Value.GetWideString;
  Result := FGetStampedContracCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ResetReconActByDate(AReconDate: TDateTime): Boolean;
begin
  if FResetReconActByDateCommand = nil then
  begin
    FResetReconActByDateCommand := FDBXConnection.CreateCommand;
    FResetReconActByDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FResetReconActByDateCommand.Text := 'TSessionServerModule.ResetReconActByDate';
    FResetReconActByDateCommand.Prepare;
  end;
  FResetReconActByDateCommand.Parameters[0].Value.AsDateTime := AReconDate;
  FResetReconActByDateCommand.ExecuteUpdate;
  Result := FResetReconActByDateCommand.Parameters[1].Value.GetBoolean;
end;

function TSessionServerModuleClient.ReksadanaDepositoAppove(ADepoitoID: Integer; out AMsg: string): Boolean;
begin
  if FReksadanaDepositoAppoveCommand = nil then
  begin
    FReksadanaDepositoAppoveCommand := FDBXConnection.CreateCommand;
    FReksadanaDepositoAppoveCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReksadanaDepositoAppoveCommand.Text := 'TSessionServerModule.ReksadanaDepositoAppove';
    FReksadanaDepositoAppoveCommand.Prepare;
  end;
  FReksadanaDepositoAppoveCommand.Parameters[0].Value.SetInt32(ADepoitoID);
  FReksadanaDepositoAppoveCommand.ExecuteUpdate;
  AMsg := FReksadanaDepositoAppoveCommand.Parameters[1].Value.GetWideString;
  Result := FReksadanaDepositoAppoveCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.ReksadanaDepositoCancel(ADepoitoID: Integer; ANotes: string; out AMsg: string): Boolean;
begin
  if FReksadanaDepositoCancelCommand = nil then
  begin
    FReksadanaDepositoCancelCommand := FDBXConnection.CreateCommand;
    FReksadanaDepositoCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReksadanaDepositoCancelCommand.Text := 'TSessionServerModule.ReksadanaDepositoCancel';
    FReksadanaDepositoCancelCommand.Prepare;
  end;
  FReksadanaDepositoCancelCommand.Parameters[0].Value.SetInt32(ADepoitoID);
  FReksadanaDepositoCancelCommand.Parameters[1].Value.SetWideString(ANotes);
  FReksadanaDepositoCancelCommand.ExecuteUpdate;
  AMsg := FReksadanaDepositoCancelCommand.Parameters[2].Value.GetWideString;
  Result := FReksadanaDepositoCancelCommand.Parameters[3].Value.GetBoolean;
end;

function TSessionServerModuleClient.ReksadanaDepositoClose(ADepoitoID: Integer; out AMsg: string): Boolean;
begin
  if FReksadanaDepositoCloseCommand = nil then
  begin
    FReksadanaDepositoCloseCommand := FDBXConnection.CreateCommand;
    FReksadanaDepositoCloseCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReksadanaDepositoCloseCommand.Text := 'TSessionServerModule.ReksadanaDepositoClose';
    FReksadanaDepositoCloseCommand.Prepare;
  end;
  FReksadanaDepositoCloseCommand.Parameters[0].Value.SetInt32(ADepoitoID);
  FReksadanaDepositoCloseCommand.ExecuteUpdate;
  AMsg := FReksadanaDepositoCloseCommand.Parameters[1].Value.GetWideString;
  Result := FReksadanaDepositoCloseCommand.Parameters[2].Value.GetBoolean;
end;

function TSessionServerModuleClient.SetEODSupportPdfStatus(AReportDate: string; ANo: Integer; AStatus: string; AMsg: string): string;
begin
  if FSetEODSupportPdfStatusCommand = nil then
  begin
    FSetEODSupportPdfStatusCommand := FDBXConnection.CreateCommand;
    FSetEODSupportPdfStatusCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetEODSupportPdfStatusCommand.Text := 'TSessionServerModule.SetEODSupportPdfStatus';
    FSetEODSupportPdfStatusCommand.Prepare;
  end;
  FSetEODSupportPdfStatusCommand.Parameters[0].Value.SetWideString(AReportDate);
  FSetEODSupportPdfStatusCommand.Parameters[1].Value.SetInt32(ANo);
  FSetEODSupportPdfStatusCommand.Parameters[2].Value.SetWideString(AStatus);
  FSetEODSupportPdfStatusCommand.Parameters[3].Value.SetWideString(AMsg);
  FSetEODSupportPdfStatusCommand.ExecuteUpdate;
  Result := FSetEODSupportPdfStatusCommand.Parameters[4].Value.GetWideString;
end;

function TSessionServerModuleClient.FileNameUploaded(AFileName: string; out AMsg: string): Boolean;
begin
  if FFileNameUploadedCommand = nil then
  begin
    FFileNameUploadedCommand := FDBXConnection.CreateCommand;
    FFileNameUploadedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFileNameUploadedCommand.Text := 'TSessionServerModule.FileNameUploaded';
    FFileNameUploadedCommand.Prepare;
  end;
  FFileNameUploadedCommand.Parameters[0].Value.SetWideString(AFileName);
  FFileNameUploadedCommand.ExecuteUpdate;
  AMsg := FFileNameUploadedCommand.Parameters[1].Value.GetWideString;
  Result := FFileNameUploadedCommand.Parameters[2].Value.GetBoolean;
end;

constructor TSessionServerModuleClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TSessionServerModuleClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TSessionServerModuleClient.Destroy;
begin
  FDSServerModuleCreateCommand.DisposeOf;
  FDSServerModuleDestroyCommand.DisposeOf;
  FdspMainTableListGetDataCommand.DisposeOf;
  FdspUpdateTableListGetDataCommand.DisposeOf;
  FCommandUpdSQLGetSequenceCommand.DisposeOf;
  FdspLogTableListGetDataCommand.DisposeOf;
  FcnnMainAfterConnectCommand.DisposeOf;
  FdspUsersGetDataCommand.DisposeOf;
  FdspUsersGetDataSetPropertiesCommand.DisposeOf;
  FApplicationEventsExceptionCommand.DisposeOf;
  FdspDatasetInformationGetDataCommand.DisposeOf;
  FcnnMainErrorCommand.DisposeOf;
  FParseDelimitedCommand.DisposeOf;
  FCreateDataProviderCommand.DisposeOf;
  FCancelSeqCommand.DisposeOf;
  FUpdateSeqCommand.DisposeOf;
  FStartTransactionCommand.DisposeOf;
  FCommitTransactionCommand.DisposeOf;
  FRollbackTransactionCommand.DisposeOf;
  FCopyDataEntityCommand.DisposeOf;
  FGenerateClientStatementCommand.DisposeOf;
  FPostCashDepCommand.DisposeOf;
  FPostAllCashDepCommand.DisposeOf;
  FPostCashWdrCommand.DisposeOf;
  FPostAllCashWdrCommand.DisposeOf;
  FPostStockDepCommand.DisposeOf;
  FPostAllStockDepCommand.DisposeOf;
  FPostStockWdrCommand.DisposeOf;
  FPostAllStockWdrCommand.DisposeOf;
  FPostCashMutationCommand.DisposeOf;
  FPostAllCashMutationCommand.DisposeOf;
  FPostCashVoucherCommand.DisposeOf;
  FPostAllCashVoucherCommand.DisposeOf;
  FPostGLTradeCommand.DisposeOf;
  FPostJournalCommand.DisposeOf;
  FReverseJournalCommand.DisposeOf;
  FCloseSessionCommand.DisposeOf;
  FLoginCommand.DisposeOf;
  FLogoutCommand.DisposeOf;
  FGetBrokerAccountCommand.DisposeOf;
  FGetBrokerCodeCommand.DisposeOf;
  FGetBrokerNameCommand.DisposeOf;
  FGetTransDateCommand.DisposeOf;
  FGetLocalCCYCommand.DisposeOf;
  FGetPrevTransDateCommand.DisposeOf;
  FGetDefaultMarketCommand.DisposeOf;
  FGetDefaultCountryCommand.DisposeOf;
  FDataUpdateCommandCommand.DisposeOf;
  FGetSeqCommand.DisposeOf;
  FGetServerTimeStampCommand.DisposeOf;
  FInTransactionCommand.DisposeOf;
  FGenerateDealTicketFromDTECommand.DisposeOf;
  FGenerateContractCommand.DisposeOf;
  FPostingAllDealTicketCommand.DisposeOf;
  FCloseAllContractCommand.DisposeOf;
  FDateAppendCommand.DisposeOf;
  FGetGlobalParamStringCommand.DisposeOf;
  FGetGlobalParamIntegerCommand.DisposeOf;
  FGetGlobalParamDateCommand.DisposeOf;
  FGetGlobalParamFloatCommand.DisposeOf;
  FGetAllClientConnectionInfoCommand.DisposeOf;
  FChangePasswordCommand.DisposeOf;
  FResetPasswordCommand.DisposeOf;
  FUnLockUserIDCommand.DisposeOf;
  FSendEmailCommand.DisposeOf;
  FGetCompanyBankDefaultCommand.DisposeOf;
  FSendEmailTransactionCommand.DisposeOf;
  FSendEmailOpeningAccountCommand.DisposeOf;
  FSendEmailFormBankRDNCommand.DisposeOf;
  FSendEmailFormOpeningAccountCommand.DisposeOf;
  FCloseContractBondsCommand.DisposeOf;
  FGenerateContractBondsCommand.DisposeOf;
  FCloseDealTicketCommand.DisposeOf;
  FCloseDealTicketSelectedCommand.DisposeOf;
  FCloseDealTicketAllCommand.DisposeOf;
  FCancelContractCommand.DisposeOf;
  FCloseContractCommand.DisposeOf;
  FCloseContractSelectedCommand.DisposeOf;
  FCloseContractAllCommand.DisposeOf;
  FReverseContractCommand.DisposeOf;
  FCancelDealTicketCommand.DisposeOf;
  FGenerateContractFileCommand.DisposeOf;
  FCreateAllMonthlyStatementCommand.DisposeOf;
  FCreateMonthlyStatementCommand.DisposeOf;
  FGenerateDealTicketFromIDXTradeCommand.DisposeOf;
  FMergeDealTicketCommand.DisposeOf;
  FCancelMergeDealTicketCommand.DisposeOf;
  FSendContractByMailCommand.DisposeOf;
  FSendSOAByMailCommand.DisposeOf;
  FSendMarginCallWarningByMailCommand.DisposeOf;
  FReconcileDTECommand.DisposeOf;
  FCreateAllCashVoucherCommand.DisposeOf;
  FCreateCOBActivityCommand.DisposeOf;
  FCraetrCOBRequest_RDN_SIDCommand.DisposeOf;
  FCreateCOBRequest_RDNCommand.DisposeOf;
  FCreateCOBRequest_SIDCommand.DisposeOf;
  FCreateCOBPermissionListCommand.DisposeOf;
  FGetNewKSEIClientCodeCommand.DisposeOf;
  FCreateOpeningAccountConfigCommand.DisposeOf;
  FApproveOpeningAccountCommand.DisposeOf;
  FApproveClosingAccountCommand.DisposeOf;
  FSettleInstrMergerCommand.DisposeOf;
  FSendCOBInfoByMailCommand.DisposeOf;
  FSendCorpactEntitlementCommand.DisposeOf;
  FGetNextTradingDateCommand.DisposeOf;
  FIsEndOfMonthCommand.DisposeOf;
  FIsEndOfYearCommand.DisposeOf;
  FFindEmailCommand.DisposeOf;
  FGetMasterTableNameFromDatasetProviderCommand.DisposeOf;
  FGetAuditTableNameFromDatasetProviderCommand.DisposeOf;
  FGetTableNameFromDatasetCommand.DisposeOf;
  FGetAuditTableNameFromDatasetCommand.DisposeOf;
  FStartEditTableCommand.DisposeOf;
  FFinishEditTableCommand.DisposeOf;
  FUploadStockRecCommand.DisposeOf;
  FUploadRDNFileCommand.DisposeOf;
  FGenerateBatchProcessCommand.DisposeOf;
  FContractCountCommand.DisposeOf;
  FProcessCountCommand.DisposeOf;
  FChangeDataExecutionManualDealticketCommand.DisposeOf;
  FUpdateTradeExecutionWithProrateCommand.DisposeOf;
  FUpdateOMGStatusCommand.DisposeOf;
  FGenerateOMGContractCommand.DisposeOf;
  FMTIProcessCommand.DisposeOf;
  FBatchProcessCommand.DisposeOf;
  FUpdateCompleteActivityCommand.DisposeOf;
  FUpdateAckActivityCommand.DisposeOf;
  FWriteActivityLogCommand.DisposeOf;
  FUpdateCOBActParamSettingCommand.DisposeOf;
  FUpdateBankLinkToLedgerCommand.DisposeOf;
  FBackToPrevProcessCOBCommand.DisposeOf;
  FGenerateKSEIExcelFileCommand.DisposeOf;
  FClearBondsQuotationCommand.DisposeOf;
  FGetValueDateCommand.DisposeOf;
  FDeleteCTPByDateCommand.DisposeOf;
  FGenerateContractBondsByIDCommand.DisposeOf;
  FPostStockDepositCommand.DisposeOf;
  FPostStockDepositReverseCommand.DisposeOf;
  FPostStockWithdrawCommand.DisposeOf;
  FPostStockWithdrawReverseCommand.DisposeOf;
  FPostStockWithdrawCalcelCommand.DisposeOf;
  FPostGLJournalCommand.DisposeOf;
  FGenerateToExtDataCommand.DisposeOf;
  FStockPosToNextDateCommand.DisposeOf;
  FCashPosToNextDateCommand.DisposeOf;
  FGetYieldQuotationCommand.DisposeOf;
  FUpdateCTPReffCommand.DisposeOf;
  FCreateCashVoucherBySICommand.DisposeOf;
  FCreateCashVoucherAllCommand.DisposeOf;
  FCreateCashVoucherGroupCommand.DisposeOf;
  FCreateStockVoucherBySICommand.DisposeOf;
  FCreateStockVoucherAllCommand.DisposeOf;
  FCreateStockVoucherGroupCommand.DisposeOf;
  FStockVoucherPostingCommand.DisposeOf;
  FCashVoucherPostingCommand.DisposeOf;
  FStockVoucherCancelCommand.DisposeOf;
  FCashVoucherCancelCommand.DisposeOf;
  FReverseBondsContractCommand.DisposeOf;
  FCashCorpactProcessCommand.DisposeOf;
  FStockCorpactProcessCommand.DisposeOf;
  FCorpactAllocCommand.DisposeOf;
  FCorpactEntCommand.DisposeOf;
  FGetVoucherNoCommand.DisposeOf;
  FUploadSungardAllTradeCommand.DisposeOf;
  FUploadDHKCommand.DisposeOf;
  FUploadDTECommand.DisposeOf;
  FUploadFeedBackBankCommand.DisposeOf;
  FGenerateDTFromIDXTradeAllCommand.DisposeOf;
  FGenerateDTFromIDXTradeSelectedCommand.DisposeOf;
  FSendIPOContractByMailCommand.DisposeOf;
  FGetCCYRateCommand.DisposeOf;
  FGetCurrentCcyRateCommand.DisposeOf;
  FUploadKSEIAccountDataCommand.DisposeOf;
  FCreateSIforRightExerciseCommand.DisposeOf;
  FExerciseToFinanceCommand.DisposeOf;
  FGenerateBankInstructionForExerciseCommand.DisposeOf;
  FGenerateBankInstructionForExerciseWarrantCommand.DisposeOf;
  FGenerateBookInstructionForExerciseCommand.DisposeOf;
  FRegisterCallbackInfoCommand.DisposeOf;
  FSungardAllTradeCommand.DisposeOf;
  FConfirmIPOAllotmentCommand.DisposeOf;
  FPostedFinanceIPOAllotmentCommand.DisposeOf;
  FCreateVoucherIPOAllotmentCommand.DisposeOf;
  FCancelIPOAllotmentCommand.DisposeOf;
  FConfirmIPOPoolingCommand.DisposeOf;
  FPostedFinanceIPOPoolingCommand.DisposeOf;
  FCreateVoucherIPOPoolingCommand.DisposeOf;
  FCancelIPOPoolingCommand.DisposeOf;
  FGenerateVoucherIPOAllotmentCommand.DisposeOf;
  FGenerateVoucherIPOPoolingCommand.DisposeOf;
  FEIPOApprovedCommand.DisposeOf;
  FEIPOCanceledCommand.DisposeOf;
  FEIPOAllotmentCommand.DisposeOf;
  FEIPODistributionCommand.DisposeOf;
  FEIPOAllotmentUpdateCommand.DisposeOf;
  FGeneratePortfolioM2MCommand.DisposeOf;
  FPortofolioExecuteCommand.DisposeOf;
  FCorpactDistributionProcessCommand.DisposeOf;
  FInterestDiscountCommand.DisposeOf;
  FGenerateInterestCommand.DisposeOf;
  FGLTradePostingByJournalTypeCommand.DisposeOf;
  FPostingDebetCreditNoteCommand.DisposeOf;
  FPostingStockMovementCommand.DisposeOf;
  FCreateAllReceiveCashVoucherCommand.DisposeOf;
  FSettleOTCInstructionCommand.DisposeOf;
  FUploadHaircutCommand.DisposeOf;
  FGetMaxClosePriceCommand.DisposeOf;
  FMergeCustodyInstrCommand.DisposeOf;
  FGenerateCustdInstrNoCommand.DisposeOf;
  FCreateBalanceFromSplitCommand.DisposeOf;
  FCreateSIFromSplitCommand.DisposeOf;
  FGenerateDistributionIPOFixAllotmentCommand.DisposeOf;
  FGenerateDistributionIPOPoolingCommand.DisposeOf;
  FConfirmIPOPoolingDistributionCommand.DisposeOf;
  FTenderOfferCloseCommand.DisposeOf;
  FTenderOfferReverseCommand.DisposeOf;
  FLBProcessCommand.DisposeOf;
  FLBSettleCommand.DisposeOf;
  FLBReverseCommand.DisposeOf;
  FLBChangeDueDateCommand.DisposeOf;
  FCreateSubAccountCommand.DisposeOf;
  FUploadSOPDepositQtyCommand.DisposeOf;
  FUploadSOPMemberCommand.DisposeOf;
  FStockSettleCancelCommand.DisposeOf;
  FStockMoveReverseCommand.DisposeOf;
  FCashVoucherReverseCommand.DisposeOf;
  FStockSettleReverseCommand.DisposeOf;
  FUploadNewClientCommand.DisposeOf;
  FUploadNewCOBCommand.DisposeOf;
  FApproveSuspendAccountCommand.DisposeOf;
  FApproveOpenSuspendAccountCommand.DisposeOf;
  FGenerateBankMutationCommand.DisposeOf;
  FAutodepositBankrekonCommand.DisposeOf;
  FAddCustodianInstructionCommand.DisposeOf;
  FGenerateOTCNonExchangeCommand.DisposeOf;
  FSettleStockProcessCommand.DisposeOf;
  FCashVoucherAllPostCommand.DisposeOf;
  FBankReconOneCommand.DisposeOf;
  FBankReconAllCommand.DisposeOf;
  FSOPStockMoveAdminCheckCommand.DisposeOf;
  FSOPStockMoveSettleCommand.DisposeOf;
  FUploadStockDepositCommand.DisposeOf;
  FUploadStockWithdrawCommand.DisposeOf;
  FCreateAllCashVoucher_KPEICommand.DisposeOf;
  FCustodianToMergerCommand.DisposeOf;
  FBatchProcessingCommand.DisposeOf;
  FBatchNextTradingDayCommand.DisposeOf;
  FGenerateARAP_SetOffCommand.DisposeOf;
  FGenerateRevaluationCurrencyCommand.DisposeOf;
  FGenerateCustodiInstructionCommand.DisposeOf;
  FIntrstDiscountCommand.DisposeOf;
  FInterestWaveCommand.DisposeOf;
  FCashReconciliationCancelCommand.DisposeOf;
  FCashWithdrawReverseCommand.DisposeOf;
  FCashWithdrawCancelCommand.DisposeOf;
  FCashWithdrawApprovedCommand.DisposeOf;
  FCashWithdrawPostingCommand.DisposeOf;
  FOTCForSplitCommand.DisposeOf;
  FOTCForUpdateCommand.DisposeOf;
  FExerciseVCAProcessCommand.DisposeOf;
  FExercisesDistributionProcessCommand.DisposeOf;
  FWarrantDistributionProcessCommand.DisposeOf;
  FCorpactHMETDProcessCommand.DisposeOf;
  FCorpactHMETDProcessCancelCommand.DisposeOf;
  FCorpactHMETDCancelProcessCommand.DisposeOf;
  FCorpactReversedCommand.DisposeOf;
  FCorpactCancelCommand.DisposeOf;
  FApproveRequestCommand.DisposeOf;
  FChangeRequestCommand.DisposeOf;
  FApproveModuleCommand.DisposeOf;
  FApproveChangesCommand.DisposeOf;
  FCreateDataActivityCommand.DisposeOf;
  FFinishDataActivityCommand.DisposeOf;
  FUpdateDataActivityStatusBackCommand.DisposeOf;
  FUpdateDataActivityStatusDoneCommand.DisposeOf;
  FUpdateDataActivityStatusCancelCommand.DisposeOf;
  FUpdateDataActivityStatusPrevCommand.DisposeOf;
  FUpdateDataActivityStatusDoneBySystemCommand.DisposeOf;
  FAcknowledgeDataActivityCommand.DisposeOf;
  FOpenAcknowledgeDataActivityCommand.DisposeOf;
  FCreateAllPaymentVoucherCommand.DisposeOf;
  FCreatePaymentVoucherCommand.DisposeOf;
  FCreateReceiveVoucherCommand.DisposeOf;
  FCreateAutoReceiveVoucherCommand.DisposeOf;
  FCashVoucher_PostingCommand.DisposeOf;
  FCreateAllDevidenCashVoucherCommand.DisposeOf;
  FRollOverProcessCommand.DisposeOf;
  FFullFlowProcessCommand.DisposeOf;
  FAllPaymentPostingCommand.DisposeOf;
  FPostingRepoCommand.DisposeOf;
  FCloseContractRepoCommand.DisposeOf;
  FSettleContractRepoCommand.DisposeOf;
  FPostingChangeRepoCollateralCommand.DisposeOf;
  FGenerateRepoInterestCommand.DisposeOf;
  FRepoStockMovementCommand.DisposeOf;
  FCreateREPOPaymentVoucherCommand.DisposeOf;
  FPostingRenewalRepoCommand.DisposeOf;
  FSettleRenewalRepoCommand.DisposeOf;
  FRunSPInsertToSourceCommand.DisposeOf;
  FRunSPGenerateReportCommand.DisposeOf;
  FRunSPCreateTextReportCommand.DisposeOf;
  FEmptyTableCommand.DisposeOf;
  FGenerateMKBDCommand.DisposeOf;
  FGenerateDHKInstructionCommand.DisposeOf;
  FDHKReconciliationCommand.DisposeOf;
  FDeleteDHKByDateCommand.DisposeOf;
  FGenerateSetOffSelectedCommand.DisposeOf;
  FGenerateSetOffReverseCommand.DisposeOf;
  FCreditBalanceProcessCommand.DisposeOf;
  FCBestBalanceProcessCommand.DisposeOf;
  FDistributionIPOFixAllotmentCommand.DisposeOf;
  FDistributionIPOPoolingCommand.DisposeOf;
  FPostingIPOCommand.DisposeOf;
  FPostingIPOAllotmentCommand.DisposeOf;
  FPostingIPOPollingCommand.DisposeOf;
  FRegisterIPOStockCommand.DisposeOf;
  FGeneratePaymentIPOAllotmentCommand.DisposeOf;
  FGeneratePaymentIPOPollingCommand.DisposeOf;
  FCustodyExternalRefCommand.DisposeOf;
  FAllPostingCashReceiveCommand.DisposeOf;
  FSetoffSettlementMarginProcessCommand.DisposeOf;
  FCreateBankPaymentReceiveCommand.DisposeOf;
  FStartEndDayProcessCommand.DisposeOf;
  FFinishEndDayProcessCommand.DisposeOf;
  FSplitReverseProcessCommand.DisposeOf;
  FCancelCashVoucherCommand.DisposeOf;
  FSettleCashVoucherCommand.DisposeOf;
  FReverseCashVoucherCommand.DisposeOf;
  FUpdateCashOnHoldCommand.DisposeOf;
  FCreateAutoRollOverCashVoucherCommand.DisposeOf;
  FGenerateCOLWCOLDSCommand.DisposeOf;
  FCreateSelectedCashVoucherCommand.DisposeOf;
  FCreateSelectedReceiveCashVoucherCommand.DisposeOf;
  FCashMutationPostingCommand.DisposeOf;
  FCashMutationReverseCommand.DisposeOf;
  FCashMutationCancelCommand.DisposeOf;
  FExecQryCommand.DisposeOf;
  FPostCashDepRDNCommand.DisposeOf;
  FCreateMarginNotificationCommand.DisposeOf;
  FMarginMCallDayCommand.DisposeOf;
  FExerciseRightProcessCommand.DisposeOf;
  FExerciseWarrantProcessCommand.DisposeOf;
  FStockSettleVoucherPostingCommand.DisposeOf;
  FStockSettleVoucherCancelCommand.DisposeOf;
  FStockSettleVoucherReverseCommand.DisposeOf;
  FGenerateCustodyInstructionCommand.DisposeOf;
  FCreateStockVoucherCommand.DisposeOf;
  FUpdateStatusCustodyInstCommand.DisposeOf;
  FUpdateIPOAllotmentGroupCommand.DisposeOf;
  FUpdateIPOPoolingGroupCommand.DisposeOf;
  FCreateJournalRecurringCommand.DisposeOf;
  FAllotmentReverseCommand.DisposeOf;
  FAllotmentAmendCommand.DisposeOf;
  FPoolingReverseCommand.DisposeOf;
  FPoolingAmendCommand.DisposeOf;
  FGetAvgPriceDecCommand.DisposeOf;
  FGenerateBankInstructionFileCommand.DisposeOf;
  FCheckAccountChargeUsedCommand.DisposeOf;
  FCashDebetCreditNotesPostingCommand.DisposeOf;
  FCashDebetCreditNotesReverseCommand.DisposeOf;
  FCashDebetCreditNotesCancelCommand.DisposeOf;
  FGenerateVD55MonthlyCommand.DisposeOf;
  FCreateSplitStockVoucherCommand.DisposeOf;
  FCreateCashVoucherFromStockVoucherCommand.DisposeOf;
  FGenerateMarginCallCommand.DisposeOf;
  FClearIDXAllTradeCommand.DisposeOf;
  FEmptyDTEByDateCommand.DisposeOf;
  FCancelCrosstomCommand.DisposeOf;
  FSendFormBankRDNByEMailCommand.DisposeOf;
  FUpdateReqKSEICommand.DisposeOf;
  FUpdateKSEINoCommand.DisposeOf;
  FWebOARejectedCommand.DisposeOf;
  FUpdateRDNCommand.DisposeOf;
  FGetDukcapilDataCommand.DisposeOf;
  FRunningFreeSQLScriptCommand.DisposeOf;
  FUpdateAccountBankCommand.DisposeOf;
  FRejectDataFromOAWebCommand.DisposeOf;
  FIncompleteOAWebCommand.DisposeOf;
  FCreateStockSettleBrokerCommand.DisposeOf;
  FCreateStockSettleClientCommand.DisposeOf;
  FGeneratePortfolioMTMCommand.DisposeOf;
  FReversePortfolioRevaluationCommand.DisposeOf;
  FNextOfYearProcessCommand.DisposeOf;
  FInterestReservedCommand.DisposeOf;
  FDeleteDealTicketAllocCommand.DisposeOf;
  FUnpostingJournalCommand.DisposeOf;
  FSecuritiesLedgerJournalCommand.DisposeOf;
  FFundLedgerJournalCommand.DisposeOf;
  FDeleteStockReconByDateCommand.DisposeOf;
  FCheckChannelOLTCommand.DisposeOf;
  FInitialAccountOLTCommand.DisposeOf;
  FSynchronizeClientApplicationCommand.DisposeOf;
  FCheckClientApplicationVersionCommand.DisposeOf;
  FSendNotificationAccountDormanByMailCommand.DisposeOf;
  FUpdateAccountDormanCommand.DisposeOf;
  FGetAvgPriceCommand.DisposeOf;
  FCorpactEntitlementPostingCommand.DisposeOf;
  FCreateAllCashSettlementVoucherCommand.DisposeOf;
  FGetBankRefferenceCommand.DisposeOf;
  FUpdateBankReffCommand.DisposeOf;
  FSendClosedContractByMailCommand.DisposeOf;
  FApproveCashWdrCommand.DisposeOf;
  FPararelCloseContractByDateCommand.DisposeOf;
  FCloseContractByDateCommand.DisposeOf;
  FStockSettlementPostByDateCommand.DisposeOf;
  FGetHighPriceCommand.DisposeOf;
  FCreateStockSettleVoucherClientByDateCommand.DisposeOf;
  FCreateStockSettleVoucherBrokerByDateCommand.DisposeOf;
  FCreateStockSettleVoucherByDateCommand.DisposeOf;
  FPararelCreateCashSettementVoucherCommand.DisposeOf;
  FPararelPostingCashSettementVoucherCommand.DisposeOf;
  FPararelCloseDealTicketCommand.DisposeOf;
  FCancelAllDealTicketCommand.DisposeOf;
  FReCalculateMinimumFeeCommand.DisposeOf;
  FDeleteAccountBankCommand.DisposeOf;
  FGetMaxPageCommand.DisposeOf;
  FCopyStockDepFromUploadCommand.DisposeOf;
  FCopyStockWdrFromUploadCommand.DisposeOf;
  FCopyDHKFromUploadCommand.DisposeOf;
  FCopyCashDepFromUploadCommand.DisposeOf;
  FCopyCashWdrFromUploadCommand.DisposeOf;
  FCopyDataAccountFromUploadCommand.DisposeOf;
  FUploadStringListKSEICommand.DisposeOf;
  FUploadStockReconCommand.DisposeOf;
  FGetAccountListTotalPagesCommand.DisposeOf;
  FGetEntityListTotalPagesCommand.DisposeOf;
  FRecalculateNewRoundCommand.DisposeOf;
  FGenerateSelectedContractFileCommand.DisposeOf;
  FGenerateStampingCommand.DisposeOf;
  FGetFileStampCommand.DisposeOf;
  FSplitDealticketByExecPriceCommand.DisposeOf;
  FAccountCommissionIDByAccNoCommand.DisposeOf;
  FGetDataForChangePriceCommand.DisposeOf;
  FChangeBoardFacilitationCommand.DisposeOf;
  FSplitDealTicketByQtyCommand.DisposeOf;
  FGenerateContractByTypeCommand.DisposeOf;
  FEditAmountOmgeoContractCommand.DisposeOf;
  FContractEditAmountCommand.DisposeOf;
  FChangeChargesAmountCommand.DisposeOf;
  FChangeNetProcedByPriceCommand.DisposeOf;
  FUpdateWithdrawStockPositionCommand.DisposeOf;
  FGenerateSLIKDataCommand.DisposeOf;
  FGLInterfacePostCommand.DisposeOf;
  FEODProcessCommand.DisposeOf;
  FsInvestAutoSplitCommand.DisposeOf;
  FCashDepositPostAllCommand.DisposeOf;
  FCashDepCancelCommand.DisposeOf;
  FCashDepPostingCommand.DisposeOf;
  FCashDepositReverseCommand.DisposeOf;
  FChangeInterestRateCommand.DisposeOf;
  FGeneratePrincipalizeInterestCommand.DisposeOf;
  FGeneratePrincipalizePenaltyCommand.DisposeOf;
  FGenerateWaveInterestCommand.DisposeOf;
  FGenerateWavePenaltyCommand.DisposeOf;
  FInvoiceInterestCancelCommand.DisposeOf;
  FWaveInterestCancelCommand.DisposeOf;
  FDailyInstructionUpdateCommand.DisposeOf;
  FDailyInstructionCancelCommand.DisposeOf;
  FGenerateDailyCashInstructionCommand.DisposeOf;
  FCashMovementApprovedCommand.DisposeOf;
  FCashMovementPostCommand.DisposeOf;
  FCashMovementReverseCommand.DisposeOf;
  FCashMovementCancelCommand.DisposeOf;
  FAlternateCashSettlCancelCommand.DisposeOf;
  FAlternateCashSettlPostCommand.DisposeOf;
  FAlternateCashSettlReverseCommand.DisposeOf;
  FGetClosingPriceForACSCommand.DisposeOf;
  FCorpactExerciseProcessCommand.DisposeOf;
  FCorpactExerciseDistributionCommand.DisposeOf;
  FCorpactExerciseCancelCommand.DisposeOf;
  FCorpactExerciseReverseCommand.DisposeOf;
  FGenerateDealticketFromVerdhanaRTCommand.DisposeOf;
  FGenerateAMLReportCommand.DisposeOf;
  FGenerateEODSupportCommand.DisposeOf;
  FGetEODSupportFileListCommand.DisposeOf;
  FGetEODSupportFileCommand.DisposeOf;
  FLoadEMaterailConfigCommand.DisposeOf;
  FSaveEMaterailConfigCommand.DisposeOf;
  FGenerateCheckReportEMateraiCommand.DisposeOf;
  FClearVedhanaDataTradeOrderCommand.DisposeOf;
  FRDNSynchronizeCommand.DisposeOf;
  FStockWithdrawApproveCommand.DisposeOf;
  FStockWithdrawPostingCommand.DisposeOf;
  FStockWithdrawCancelCommand.DisposeOf;
  FStockWithdrawReverseCommand.DisposeOf;
  FDepositoApproveCommand.DisposeOf;
  FDepositoCancelCommand.DisposeOf;
  FDepositoCloseCommand.DisposeOf;
  FGenerateUpdateDataExecutionFromDTECommand.DisposeOf;
  FChangeCommissionCommand.DisposeOf;
  FGenerateIDXMonthlyTransReportCommand.DisposeOf;
  FStockMovementApproveCommand.DisposeOf;
  FStockMovementCancelCommand.DisposeOf;
  FGetPDFFilesCommand.DisposeOf;
  FDeleteAllPDFFileCommand.DisposeOf;
  FMoveAllPDFFileCommand.DisposeOf;
  FGetStampedContracCommand.DisposeOf;
  FResetReconActByDateCommand.DisposeOf;
  FReksadanaDepositoAppoveCommand.DisposeOf;
  FReksadanaDepositoCancelCommand.DisposeOf;
  FReksadanaDepositoCloseCommand.DisposeOf;
  FSetEODSupportPdfStatusCommand.DisposeOf;
  FFileNameUploadedCommand.DisposeOf;
  inherited;
end;

end.

