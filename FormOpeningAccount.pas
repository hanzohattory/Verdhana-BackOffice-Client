unit FormOpeningAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormWorkflow, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  cxContainer, Vcl.Menus, Datasnap.DBClient, NClientDataset, Vcl.ImgList,
  Vcl.ActnList, NDatasetAction, NActionPermission, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, Vcl.DBCtrls, cxLabel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, dxLayoutControl, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxPC, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxCheckBox, XLSSheetData5, XLSReadWriteII5,
  ClassGeneral, cxMemo, cxGridLayoutView, cxGridDBLayoutView,
  cxGridCustomLayoutView, dxBarBuiltInMenu, System.ImageList, System.Actions,
  cxGridViewLayoutContainer, ComObj, uOLEMessageFilter, NReportClient,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, XMLIntf, XMLDoc,
  dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmOpeningAccount = class(TfrmWorkflow)
    cdsOAList: TNClientDataset;
    cdsOAListOAID: TIntegerField;
    cdsOAListOACODE: TStringField;
    cdsOAListCUST_TYPE: TIntegerField;
    cdsOAListBRANCHID: TLargeintField;
    cdsOAListSALESID: TLargeintField;
    cdsOAListENTNAME: TStringField;
    cdsOAListENTDESC: TStringField;
    cdsOAListCREATEDATE: TDateTimeField;
    cdsOAListINVESTORCAT: TStringField;
    cdsOAListENTACCTYPE: TStringField;
    cdsOAListAFFIL: TBooleanField;
    cdsOAListASSET_OWNER: TStringField;
    cdsOAListPRDCODE: TStringField;
    cdsOAListACCID: TIntegerField;
    cdsOAListEXISTING_CLIENT: TStringField;
    cdsOAListPARENT_ACCID: TIntegerField;
    cdsOAListDIRECTSID: TStringField;
    cdsOAListKSEI_CLIENT_CODE: TStringField;
    gvwBrowseOAID: TcxGridDBBandedColumn;
    gvwBrowseOACODE: TcxGridDBBandedColumn;
    gvwBrowseCUST_TYPE: TcxGridDBBandedColumn;
    gvwBrowseBRANCHID: TcxGridDBBandedColumn;
    gvwBrowseSALESID: TcxGridDBBandedColumn;
    gvwBrowseENTNAME: TcxGridDBBandedColumn;
    gvwBrowseENTDESC: TcxGridDBBandedColumn;
    gvwBrowseCREATEDATE: TcxGridDBBandedColumn;
    gvwBrowseINVESTORCAT: TcxGridDBBandedColumn;
    gvwBrowseAFFIL: TcxGridDBBandedColumn;
    gvwBrowseASSET_OWNER: TcxGridDBBandedColumn;
    gvwBrowsePRDCODE: TcxGridDBBandedColumn;
    gvwBrowseACCID: TcxGridDBBandedColumn;
    gvwBrowseEXISTING_CLIENT: TcxGridDBBandedColumn;
    gvwBrowsePARENT_ACCID: TcxGridDBBandedColumn;
    gvwBrowseDIRECTSID: TcxGridDBBandedColumn;
    gvwBrowseKSEI_CLIENT_CODE: TcxGridDBBandedColumn;
    cdsKSEIIndividualAccountRequest: TNClientDataset;
    SaveDialog: TSaveDialog;
    lcEditorTopItem1: TdxLayoutItem;
    btnAction1: TcxButton;
    lcEditorTopItem2: TdxLayoutItem;
    btnAction2: TcxButton;
    actApprove: TNAction;
    actReject: TNAction;
    cdsKSEIInstitutionalAccountRequest: TNClientDataset;
    popCreate: TPopupMenu;
    actCreateRetail: TNAction;
    actCreateInstitution: TNAction;
    OpeningAccountIndividual1: TMenuItem;
    OpeningAccountInstitutional1: TMenuItem;
    actUpdateKSEIAccount: TNAction;
    actUpdateRDNAccount: TNAction;
    actAccountConfig: TNAction;
    actCancelRequest: TNAction;
    actCreateKSEISDIFile: TNAction;
    CopyFromSelectedData1: TMenuItem;
    cdsOAListREQUEST_SUBREK: TStringField;
    cdsOAListISWEB: TStringField;
    gvwBrowseREQUEST_SUBREK: TcxGridDBBandedColumn;
    gvwBrowseISWEB: TcxGridDBBandedColumn;
    txtLastKSEINo: TcxTextEdit;
    edKSEIStartNo: TdxLayoutItem;
    actSendBankRDNByEMail: TNAction;
    actViewOpeningAccount: TNAction;
    ReportClient: TNClientReportContainer;
    ViewOpeningAccountForm1: TMenuItem;
    cdsOARDN: TNClientDataset;
    cdsOARDNOAID: TIntegerField;
    cdsOARDNSEQNO: TIntegerField;
    cdsOARDNCCYCODE: TStringField;
    cdsOARDNBANKCODE: TStringField;
    cdsOARDNBANKACCNO: TStringField;
    cdsOARDNBANKACCNAME: TStringField;
    cdsOARDNBANKBRANCH: TStringField;
    cdsOARDNMODDA: TDateTimeField;
    cdsOARDNMODUI: TStringField;
    cdsOARDNAPPDA: TDateTimeField;
    cdsOARDNAPPUI: TStringField;
    cdsOARDNUNDER4Y: TIntegerField;
    cdsOARDNUNDER4YDA: TDateTimeField;
    cdsOARDNNOTES4Y: TStringField;
    cdsOARDNISDEL: TIntegerField;
    cdsOARDNID: TLargeintField;
    cdsOAListPREFFERED_BANK_RDN: TStringField;
    txtBussType: TcxLookupComboBox;
    edBussType: TdxLayoutItem;
    txtEvent: TcxLookupComboBox;
    edEvent: TdxLayoutItem;
    cdsLastNo: TNClientDataset;
    cdsOAListBUSSTYPEID: TLargeintField;
    cdsOAListEVENTID: TLargeintField;
    cdsOAListINITIAL: TStringField;
    cdsLastNoBUSTYPEID: TLargeintField;
    cdsLastNoEVENTID: TLargeintField;
    cdsLastNoLASTCODE: TStringField;
    cdsLastNoMODDA: TDateTimeField;
    cdsLastNoMODUI: TStringField;
    cdsLastNoAPPDA: TDateTimeField;
    cdsLastNoAPPUI: TStringField;
    cdsLastNoUNDER4Y: TIntegerField;
    cdsLastNoUNDER4YDA: TDateTimeField;
    cdsLastNoNOTES4Y: TStringField;
    cdsLastNoISDEL: TIntegerField;
    cdsLastNoID: TLargeintField;
    cdsOAListPAYMENT_BANK: TStringField;
    cdsOARDNBNACCID: TStringField;
    cdsOARDNPAYMENT_BANK: TStringField;
    actGenerateKSEINo: TNAction;
    btnGenerateKSEINo: TcxButton;
    btGenerateKSEINo: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    btnCreateKSEISDIF: TcxButton;
    btCreateKSEISDIF: TdxLayoutItem;
    btnSendRDNByMail: TcxButton;
    btSendRDNByMail: TdxLayoutItem;
    cdsCheckKSEIRDN: TNClientDataset;
    cdsCheckKSEIRDNOAID: TIntegerField;
    cdsCheckKSEIRDNSIDNO: TStringField;
    cdsCheckKSEIRDNKSEI_CLIENT_CODE: TStringField;
    cdsCheckKSEIRDNKSEICOUNTS: TIntegerField;
    cdsCheckKSEIRDNBANKCODE: TStringField;
    N2: TMenuItem;
    btnIncomplete: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    actIncomplete: TNAction;
    cdsKSEI_SDIA: TNClientDataset;
    actMultipleApprove: TNAction;
    btnMultipleApproved: TMenuItem;
    cdsKSEIInstitutionalAccountRequestaction: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorType: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorClientType: TStringField;
    cdsKSEIInstitutionalAccountRequestaccountLocalCode: TStringField;
    cdsKSEIInstitutionalAccountRequestaccountClientCode: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorCompanyName: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorCompanyBICCode: TStringField;
    cdsKSEIInstitutionalAccountRequestaccountTaxCode: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorLegalDomicile: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorNPWPNumber: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorNPWPRegistrationDate: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorSKDNumber: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorSKDExpiredDate: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorCompanyEstablishmentPlace: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorCompanyEstablishmentDate: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAddress1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAddress2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAddress3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorCity: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorProvince: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorPostalCode: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorCountry: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorHomePhone: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorMobilePhone: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorEmail: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorFax: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorOtherAddress1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorOtherAddress2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorOtherAddress3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorOtherCity: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorOtherProvince: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorOtherPostalCode: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorOtherCountry: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorOtherHomePhone: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorOtherMobilePhone: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorOtherEmail: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorOtherFax: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBusinessType: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorCompanyCharacteristic: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorFundSource: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorFundSourceText: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorArticleOfAssociation: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBusinessRegistrationCertificateNumber: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonFirstName1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonMiddleName1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonLastName1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonPosition1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKTPNumber1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKTPExpiredDate1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonNPWPNumber1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonNPWPRegistrationDate1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonPassportNumber1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonPassportExpiredDate1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKitasSKDNumber1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKitasSKDExpiredDate1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonFirstName2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonMiddleName2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonLastName2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonPosition2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKTPNumber2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKTPExpiredDate2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonNPWPNumber2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonNPWPRegistrationDate2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonPassportNumber2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonPassportExpiredDate2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKitasSKDNumber2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKitasSKDExpiredDate2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonFirstName3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonMiddleName3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonLastName3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonPosition3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKTPNumber3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKTPExpiredDate3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonNPWPNumber3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonNPWPRegistrationDate3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonPassportNumber3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonPassportExpiredDate3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKitasSKDNumber3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKitasSKDExpiredDate3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonFirstName4: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonMiddleName4: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonLastName4: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonPosition4: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKTPNumber4: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKTPExpiredDate4: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonNPWPNumber4: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonNPWPRegistrationDate4: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonPassportNumber4: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonPassportExpiredDate4: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKitasSKDNumber4: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAuthorizedPersonKitasSKDExpiredDate4: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAsset1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAsset2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorAsset3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorOperatingProfit1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorOperatingProfit2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorOperatingProfit3: TStringField;
    cdsKSEIInstitutionalAccountRequestaccountDescription: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBankAccountName1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBankAccountNumber1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBankAccountBICCode1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBankAccountHolderName1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBankAccountCurrency1: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBankAccountName2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBankAccountNumber2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBankAccountBICCode2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBankAccountHolderName2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBankAccountCurrency2: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBankAccountName3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBankAccountNumber3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBankAccountBICCode3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBankAccountHolderName3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorBankAccountCurrency3: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorInvestmentObjective: TStringField;
    cdsKSEIInstitutionalAccountRequestDirectSid: TStringField;
    cdsKSEIInstitutionalAccountRequestAssetOwner: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorTypeOfSupplementaryDocs: TStringField;
    cdsKSEIInstitutionalAccountRequestinvestorExpiredDateOfSupplementaryDocs: TStringField;
    cdsKSEIIndividualAccountRequestaction: TStringField;
    cdsKSEIIndividualAccountRequestinvestorType: TStringField;
    cdsKSEIIndividualAccountRequestinvestorClientType: TStringField;
    cdsKSEIIndividualAccountRequestaccountLocalCode: TStringField;
    cdsKSEIIndividualAccountRequestaccountClientCode: TStringField;
    cdsKSEIIndividualAccountRequestinvestorFirstName: TStringField;
    cdsKSEIIndividualAccountRequestinvestorMiddleName: TStringField;
    cdsKSEIIndividualAccountRequestinvestorLastName: TStringField;
    cdsKSEIIndividualAccountRequestinvestorNationality: TStringField;
    cdsKSEIIndividualAccountRequestinvestorKTPNumber: TStringField;
    cdsKSEIIndividualAccountRequestinvestorKTPExpiredDate: TStringField;
    cdsKSEIIndividualAccountRequestinvestorNPWPNumber: TStringField;
    cdsKSEIIndividualAccountRequestinvestorNPWPRegistrationDate: TStringField;
    cdsKSEIIndividualAccountRequestinvestorPassportNumber: TStringField;
    cdsKSEIIndividualAccountRequestinvestorPassportExpiredDate: TStringField;
    cdsKSEIIndividualAccountRequestinvestorKitasSKDNumber: TStringField;
    cdsKSEIIndividualAccountRequestinvestorKitasSKDExpiredDate: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBirthPlace: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBirthDate: TStringField;
    cdsKSEIIndividualAccountRequestinvestorAddress1: TStringField;
    cdsKSEIIndividualAccountRequestinvestorAddress2: TStringField;
    cdsKSEIIndividualAccountRequestinvestorAddress3: TStringField;
    cdsKSEIIndividualAccountRequestinvestorCity: TStringField;
    cdsKSEIIndividualAccountRequestinvestorProvince: TStringField;
    cdsKSEIIndividualAccountRequestinvestorPostalCode: TStringField;
    cdsKSEIIndividualAccountRequestinvestorCountry: TStringField;
    cdsKSEIIndividualAccountRequestinvestorHomePhone: TStringField;
    cdsKSEIIndividualAccountRequestinvestorMobilePhone: TStringField;
    cdsKSEIIndividualAccountRequestinvestorEmail: TStringField;
    cdsKSEIIndividualAccountRequestinvestorFax: TStringField;
    cdsKSEIIndividualAccountRequestinvestorOtherAddress1: TStringField;
    cdsKSEIIndividualAccountRequestinvestorOtherAddress2: TStringField;
    cdsKSEIIndividualAccountRequestinvestorOtherAddress3: TStringField;
    cdsKSEIIndividualAccountRequestinvestorOtherCity: TStringField;
    cdsKSEIIndividualAccountRequestinvestorOtherProvince: TStringField;
    cdsKSEIIndividualAccountRequestinvestorOtherPostalCode: TStringField;
    cdsKSEIIndividualAccountRequestinvestorOtherCountry: TStringField;
    cdsKSEIIndividualAccountRequestinvestorOtherHomePhone: TStringField;
    cdsKSEIIndividualAccountRequestinvestorOtherMobilePhone: TStringField;
    cdsKSEIIndividualAccountRequestinvestorOtherEmail: TStringField;
    cdsKSEIIndividualAccountRequestinvestorOtherFax: TStringField;
    cdsKSEIIndividualAccountRequestinvestorSex: TStringField;
    cdsKSEIIndividualAccountRequestinvestorMaritalStatus: TStringField;
    cdsKSEIIndividualAccountRequestinvestorSpouseName: TStringField;
    cdsKSEIIndividualAccountRequestinvestorHeirName: TStringField;
    cdsKSEIIndividualAccountRequestinvestorHeirRelation: TStringField;
    cdsKSEIIndividualAccountRequestinvestorEducationalBackground: TStringField;
    cdsKSEIIndividualAccountRequestinvestorOccupation: TIntegerField;
    cdsKSEIIndividualAccountRequestinvestorOccupationText: TStringField;
    cdsKSEIIndividualAccountRequestinvestorNatureofBusiness: TStringField;
    cdsKSEIIndividualAccountRequestinvestorIncomePerAnnum: TStringField;
    cdsKSEIIndividualAccountRequestinvestorFundSource: TStringField;
    cdsKSEIIndividualAccountRequestinvestorFundSourceText: TStringField;
    cdsKSEIIndividualAccountRequestaccountDescription: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBankAccountName1: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBankAccountNumber1: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBankAccountBICCode1: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBankAccountHolderName1: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBankAccountCurrency1: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBankAccountName2: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBankAccountNumber2: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBankAccountBICCode2: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBankAccountHolderName2: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBankAccountCurrency2: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBankAccountName3: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBankAccountNumber3: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBankAccountBICCode3: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBankAccountHolderName3: TStringField;
    cdsKSEIIndividualAccountRequestinvestorBankAccountCurrency3: TStringField;
    cdsKSEIIndividualAccountRequestinvestorInvestmentObjective: TStringField;
    cdsKSEIIndividualAccountRequestinvestorMothersMaidenName: TStringField;
    cdsKSEIIndividualAccountRequestaccountTaxCode: TStringField;
    cdsKSEIIndividualAccountRequestDirectSid: TStringField;
    cdsKSEIIndividualAccountRequestAssetOwner: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CustomOnBeforeCompleteActivity(AFlowID, AActivityID: Integer; ADataID: Int64; var AContinue: Boolean);
    procedure CustomOnAfterCompleteActivity(AFlowID, AActivityID: Integer; ADataID: Int64);
    procedure CustomOnBackToPreviousActivity(AFlowID, AActivityID: Integer; ADataID: Int64);
    procedure cdsOAListAfterOpen(DataSet: TDataSet);
    procedure gvwDataActivityStatusFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure actApproveExecute(Sender: TObject);
    procedure actRejectExecute(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
    procedure actCreateRetailExecute(Sender: TObject);
    procedure actCreateInstitutionExecute(Sender: TObject);
    procedure actUpdateKSEIAccountExecute(Sender: TObject);
    procedure actUpdateRDNAccountExecute(Sender: TObject);
    procedure actAccountConfigExecute(Sender: TObject);
    procedure actCancelRequestExecute(Sender: TObject);
    procedure actCreateKSEISDIFileExecute(Sender: TObject);
    procedure actCreateKSEISDIAPFileExecute(Sender: TObject);
    procedure actListExecute(Sender: TObject);
    procedure actSendBankRDNByEMailExecute(Sender: TObject);
    procedure actViewOpeningAccountExecute(Sender: TObject);
    procedure actViewListDataExecute(Sender: TObject);
    procedure cbWorkflowActivityPropertiesChange(Sender: TObject);
    procedure actGenerateKSEINoExecute(Sender: TObject);
    procedure actCompleteExecute(Sender: TObject);
    procedure tabBrowseShow(Sender: TObject);
    procedure actApproveUpdate(Sender: TObject);
    procedure actIncompleteUpdate(Sender: TObject);
    procedure actIncompleteExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actAckActivityExecute(Sender: TObject);
    procedure actMultipleApproveExecute(Sender: TObject);
    procedure actRefreshSingleExecute(Sender: TObject);
  private
    { Private declarations }
    fSysDate: TDate;

    procedure CustomOnGetEditorFormClass(var AFormClass: TFormEditorClass);
    procedure CreateKSEISDIFile(AFileName, AOAID: String;
      out AIndividualFileName, AInstitutionalFileName: String);
  public
    { Public declarations }
    procedure CreateKSEIExcelFile(AFileName, AOAID, ALastKSEINo: String;
      Out AIndividualFileName, AInstitutionalFileName: String);
    procedure CreateStaticDataInvestorFile(AFileName, AOAID, ALastKSEINo: String;
      Out AIndividualFileName, AInstitutionalFileName: String);
    procedure CreateSDIAFile(AFileName: string; AOAID: string);
  end;

var
  frmOpeningAccount: TfrmOpeningAccount;

implementation

{$R *.dfm}

uses DataGlobal, ClassClientConst, StrUtils, FormOpeningAccountConfig,
  FormOpeningAccountIns, FormRequestKSEIAccount,
  FormRequestRDNAccount, FormEditor, DataLookup, FormOpeningAccountRetail;

procedure TfrmOpeningAccount.actAccountConfigExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  sKey := IntToStr(DataID);
  if dmGlobal.ShowEditorForm(TfrmOpeningAccountConfig, sKey, pkUpdate) = mrOk then
  begin
    ViewSingleData(DataID);
  end;
end;

procedure TfrmOpeningAccount.actAckActivityExecute(Sender: TObject);
//var
//  bRes: Boolean;
begin
//  if (cdsDataActivityStatusACTIVITYID.asInteger = 1007) then
//  begin
//    bRes := dmGlobal.RemoteServer.CreateOpeningAccountConfig(ADataID, sMsg);
//    if not bRes then
//    Begin
//
//    End;
//  end;

  inherited;
end;

procedure TfrmOpeningAccount.actApproveExecute(Sender: TObject);
var
  bRes: Boolean;
  sMsg, sNotes: String;
begin
  inherited;
  if MessageDlg('Are you sure to approve data from ' +
    QuotedStr(cdsOAListENTNAME.AsString) + '?',
    mtConfirmation, mbYesNo, 0) = mrYes then
  begin
//    sNotes := InputBox('Approve Reason ' + cdsDataActivityStatusDESCRIPTION.AsString, 'Notes : ', sNotes);

    bRes   := dmGlobal.RemoteServer.CreateDataActivity(FlowID, DataID, sMsg);
    cdsOAList.Refresh;
    cdsDataActivityStatus.Refresh;
  end;
end;

procedure TfrmOpeningAccount.actApproveUpdate(Sender: TObject);
begin
  inherited;
  if cdsOAListISWEB.AsString = '1' then
    actApprove.Caption := 'Data Complete'
  else
    actApprove.Caption := 'Approve';

  btnIncomplete.Visible := True;
end;

procedure TfrmOpeningAccount.actCancelRequestExecute(Sender: TObject);
var
  bRes: Boolean;
  sMsg, sNotes: String;
begin
  inherited;
  sNotes := '';

  if (cdsDataActivityStatusSTATUS.AsString <> '1')
    or (UpperCase(cdsDataActivityStatusDONE_BY.AsString) <> UpperCase(dmGlobal.UserID)) then
    exit;

  if MessageDlg('Are you sure to cancel opening account request?',
    mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    sNotes := InputBox('Cancel Reason ', 'Notes : ', sNotes);

    if sNotes = '' then
    begin
      MessageDlg('Reason must be filled', TMsgDlgType.mtWarning, [mbOk], 0);
      bRes := False;
    end
    else
    begin
      bRes := dmGlobal.RemoteServer.UpdateDataActivityStatusCancel(
        cdsDataActivityStatusDATAID.AsLargeInt,
        cdsDataActivityStatusACTIVITYID.AsInteger,
        sNotes, sMsg);

      if bRes then
      begin
        if Assigned(OnAfterCompleteActivity) then
          OnAfterCompleteActivity(FlowID, cdsDataActivityStatusACTIVITYID.AsInteger, cdsDataActivityStatusDATAID.AsLargeInt);
      end;

      dmGlobal.RemoteServer.FinishDataActivity(FlowID, cdsDataActivityStatusDATAID.AsLargeInt, sMsg);
      ViewSingleData(cdsDataActivityStatusDATAID.AsLargeInt);
    end;
  end;
end;

procedure TfrmOpeningAccount.actCompleteExecute(Sender: TObject);
begin
  if (cdsDataActivityStatusACTIVITYID.AsInteger = 1005) or (cdsDataActivityStatusACTIVITYID.AsInteger = 1006) then
  begin
    cdsCheckKSEIRDN.Close;
    cdsCheckKSEIRDN.Params[0].AsLargeInt := cdsOAListOAID.AsLargeInt;
    cdsCheckKSEIRDN.Open;

    if ((cdsDataActivityStatusACTIVITYID.AsInteger = 1005) and (cdsDataActivityStatusACK_DATE.AsString <> ''))
      and ((cdsCheckKSEIRDN.IsEmpty) or (cdsCheckKSEIRDNSIDNO.AsString = '')) then
      MessageDlg('Please insert KSEI subrek account no / SID no before complete', mtError, [mbOk], 0)
    else if ((cdsDataActivityStatusACTIVITYID.AsInteger = 1006) and (cdsDataActivityStatusACK_DATE.AsString <> ''))
      and ((cdsCheckKSEIRDN.IsEmpty) or (cdsCheckKSEIRDNBANKCODE.AsString = '')) and (cdsOAListCUST_TYPE.AsInteger = 1) then
      MessageDlg('Please insert Bank RDN before complete', mtError, [mbOk], 0)
    else
      inherited;
  end
  else
    inherited;
end;

procedure TfrmOpeningAccount.actCreateInstitutionExecute(Sender: TObject);
begin
  inherited;
  FormEditorClass := TfrmOpeningAccountIns;
  actCreate.Execute;
end;

procedure TfrmOpeningAccount.actCreateKSEISDIAPFileExecute(Sender: TObject);
var
  sFileName, sOAID: String;
  i: Integer;
begin
  inherited;
  SaveDialog.DefaultExt := '.SDIAP';
  SaveDialog.Filter := 'Static Data Investor File (Approval)|*.SDIAP';
  if SaveDialog.Execute then
  begin
    sFileName   := SaveDialog.FileName;

    sOAID := '';
    for i := 0 to gvwBrowse.Controller.SelectedRecordCount - 1 do
    begin
      if sOAID <> '' then sOAID := sOAID + ',';

      sOAID := sOAID + VarToStr(gvwBrowse.Controller.SelectedRecords[i].Values[gvwBrowseOAID.Index]);
    end;

    if sOAID <> '' then
    begin

      dmGlobal.OpenFile(sFileName);
    end;
  end;
end;

procedure TfrmOpeningAccount.actCreateKSEISDIFileExecute(Sender: TObject);
var
  sFileName, sOAID, sIndividualFileName, sInstitutionalFileName: String;
  iSelectedOAID: Integer;
  i: Integer;
  sKSEINo: string;
begin
  inherited;
  if MessageDlg('Create Static Data Investor File ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    SaveDialog.DefaultExt := '.sdi';
    SaveDialog.Filter := 'Static Data Investor|*.sdi';
    if SaveDialog.Execute then
    begin
      sFileName   := SaveDialog.FileName;

      sOAID   := '';
      for i := 0 to gvwBrowse.Controller.SelectedRecordCount - 1 do
      begin
        if sOAID <> '' then sOAID := sOAID + ',';

        iSelectedOAID := StrToInt(gvwBrowse.Controller.SelectedRecords[i].Values[gvwBrowseOAID.Index]);
        sOAID := sOAID + IntToStr(iSelectedOAID);
      end;

      if sOAID <> '' then
      begin
        CreateStaticDataInvestorFile(sFileName, sOAID, '', sIndividualFileName, sInstitutionalFileName);
        CreateSDIAFile(sFileName, sOAID);

        MessageDlg('Data Static Investor has been created', mtInformation, [mbOk], 0) ;
      end
      else
        MessageDlg('Select one or more data to be created', mtInformation, [mbOk], 0) ;

    end;
  end;
end;

procedure TfrmOpeningAccount.actCreateRetailExecute(Sender: TObject);
begin
  inherited;
  FormEditorClass := TfrmOpeningAccountRetail;
  actCreate.Execute;
end;

procedure TfrmOpeningAccount.actEditUpdate(Sender: TObject);
begin
  inherited;
  btnIncomplete.Visible := False;
end;

procedure TfrmOpeningAccount.actGenerateKSEINoExecute(Sender: TObject);
var
  sFileName, sOAID, sIndividualFileName, sInstitutionalFileName: String;
  iSelectedOAID: Integer;
  i: Integer;
  sKSEINo: string;
  iBusType, iEventProg: Integer;
begin
  inherited;
  if txtBussType.EditValue = null then iBusType := 0 else iBusType := txtBussType.EditValue;
  if txtEvent.EditValue = null then iEventProg := 0 else iEventProg := txtEvent.EditValue;


  if txtLastKSEINo.text = '' then
    MessageDlg('Last KSEI No must have value', mtError, [mbOk], 0)
  else
  begin
    sKSEINo := txtLastKSEINo.Text;
    sOAID   := '';
    for i := 0 to gvwBrowse.Controller.SelectedRecordCount - 1 do
    begin
      if sOAID <> '' then sOAID := sOAID + ',';

      iSelectedOAID := StrToInt(gvwBrowse.Controller.SelectedRecords[i].Values[gvwBrowseOAID.Index]);
      sOAID := sOAID + IntToStr(iSelectedOAID);

      dmGlobal.RemoteServer.UpdateReqKSEI(iSelectedOAID, sKSEINo);
      sKSEINo            := dmGlobal.GetKSEINo(sKSEINo);
      txtLastKSEINo.Text := sKSEINo;
    end;

    cdsLastNo.Close;
    cdsLastNo.Params[0].AsInteger := 0;
    cdsLastNo.Params[1].AsInteger := 0;
    cdsLastNo.Open;

    if cdsLastNo.IsEmpty then
    begin
      cdsLastNo.Append;
      cdsLastNoBUSTYPEID.AsInteger := 0;
      cdsLastNoEVENTID.AsInteger   := 0;
    end
    else
      cdsLastNo.Edit;
    cdsLastNoLASTCODE.AsString   := sKSEINo;
    cdsLastNo.Post;
    cdsLastNo.ApplyUpdates(-1);

    actViewListData.Execute;
  end;
end;

procedure TfrmOpeningAccount.actIncompleteExecute(Sender: TObject);
var
  bRes: Boolean;
  sMsg, sNotes: String;
begin
  inherited;
  if MessageDlg('Are you sure data from ' +
    QuotedStr(cdsOAListENTNAME.AsString) + 'is incomplete ?', mtError, mbYesNo, 0) = mrYes then
  begin
    sNotes := InputBox('Return to Customer ' + cdsDataActivityStatusDESCRIPTION.AsString, 'Notes : ', sNotes);
    bRes   := dmGlobal.RemoteServer.IncompleteOAWeb(cdsOAListOAID.AsInteger, sNotes, sMsg);
    if bRes then
    begin
      MessageDlg('Return to Customer with remark :' + sNotes, mtInformation, [mbOK], 0);

      actList.Execute;
      ViewListData;
    end;
  end;
end;

procedure TfrmOpeningAccount.actIncompleteUpdate(Sender: TObject);
begin
  inherited;
  actIncomplete.Visible := (cdsOAListISWEB.AsString = '1');
end;

procedure TfrmOpeningAccount.actListExecute(Sender: TObject);
begin
  cdsOAList.Close;
  cdsOAList.Params[0].AsString  := '1';
  cdsOAList.Params[1].AsInteger := 0;
  cdsOAList.Open;

  inherited;
end;

procedure TfrmOpeningAccount.actMultipleApproveExecute(Sender: TObject);
var
  bRes: Boolean;
  sMsg, sResMsg, sNotes: String;
  i: integer;
  iFlowID, iDataID: integer;
  iDone, iFail: integer;
begin
  inherited;
  iDone := 0;
  iFail := 0;

  if MessageDlg('Are you sure to multiple approve?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    for i := 0 to gvwBrowse.Controller.SelectedRowCount -1 do
    begin
      iFlowID := cdsOAList.Params[1].AsInteger;
      iDataID := cdsOAListOAID.AsInteger;

      bRes := dmGlobal.RemoteServer.UpdateDataActivityStatusDone(iDataID, iFlowID, '', sMsg);
      if bRes then
        Inc(iDone)
      else
      begin
        Inc(iFail);
      end;
    end;

    sResMsg := IntToStr(iDone) +' data has been completed'+#13+ IntToStr(iFail)+' data has been failed';
    if iFail > 0 then
      sResMsg := sResMsg + #13 + 'with message : ' + sMsg;
    MessageDlg(sResMsg, TMsgDlgType.mtInformation, [mbOk], 0);

//    bRes   := dmGlobal.RemoteServer.CreateDataActivity(FlowID, DataID, sMsg);
    cdsOAList.Refresh;
    cdsDataActivityStatus.Refresh;
  end;
end;

procedure TfrmOpeningAccount.actRefreshSingleExecute(Sender: TObject);
begin
  if pgWorkflow.ActivePage = tabBrowse then
    cdsOAList.Refresh
  else
    inherited;
end;

procedure TfrmOpeningAccount.actRejectExecute(Sender: TObject);
var
  bRes: Boolean;
  sMsg, sNotes: String;
begin
  inherited;
  if MessageDlg('Are you sure to reject data from ' +
    QuotedStr(cdsOAListENTNAME.AsString) + '?', mtError, mbYesNo, 0) = mrYes then
  begin
    sNotes := InputBox('Reject Reason ' + cdsDataActivityStatusDESCRIPTION.AsString, 'Notes : ', sNotes);
    bRes   := dmGlobal.RemoteServer.RejectDataFromOAWeb(cdsOAListOAID.AsInteger, cdsDataActivityStatusDESCRIPTION.AsString, sMsg);
    if bRes then
    begin
      bRes := dmGlobal.RemoteServer.CreateDataActivity(FlowID, DataID, sMsg);
      if bRes then
      begin
        bRes := dmGlobal.RemoteServer.UpdateDataActivityStatusDone(cdsOAListOAID.AsLargeInt, 1001, sNotes, sMsg);
        if bRes then
        begin
          if Assigned(OnAfterCompleteActivity) then
            OnAfterCompleteActivity(FlowID, cdsDataActivityStatusACTIVITYID.AsInteger, cdsDataActivityStatusDATAID.AsLargeInt);
        end;
      end;
      MessageDlg('Data customer has been rejected with note : '+ sNotes, mtInformation, [mbOK], 0);

      dmGlobal.RemoteServer.FinishDataActivity(FlowID, cdsOAListOAID.AsLargeInt, sMsg);
      ViewSingleData(cdsOAListOAID.AsLargeInt);
    end;
  end;
end;

procedure TfrmOpeningAccount.actSendBankRDNByEMailExecute(Sender: TObject);
var
  sMsg : string;
  bResult: Boolean;
begin
  inherited;
  bResult := dmGlobal.RemoteServer.SendFormBankRDNByEMail(cdsOAListOAID.AsInteger, sMsg);

  if not bResult then
    MessageDlg(sMsg, mtError, [mbOk], 0)
  else
  begin
    MessageDlg(sMsg, mtInformation, [mbOk], 0);

    cdsOARDN.Close;
    cdsOARDN.Params[0].AsInteger := cdsOAListOAID.AsInteger;
    cdsOARDN.Open;

    if cdsOARDN.IsEmpty then
    begin
      cdsOARDN.Append;
      cdsOARDNOAID.AsInteger   := cdsOAListOAID.AsInteger;
      cdsOARDNCCYCODE.AsString := dmGlobal.RemoteServer.GetLocalCCY;
    end
    else
      cdsOARDN.Edit;

    cdsOARDNBANKCODE.AsString     := cdsOAListPREFFERED_BANK_RDN.AsString;
    cdsOARDNPAYMENT_BANK.AsString := cdsOAListPAYMENT_BANK.AsString;
    cdsOARDN.Post;

    cdsOARDN.ApplyUpdates(-1);
  end;
end;

procedure TfrmOpeningAccount.actUpdateKSEIAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  sKey := IntToStr(DataID);
  if dmGlobal.ShowEditorForm(TfrmRequestKSEIAccount, sKey, pkUpdate) = mrOk then
  begin
    ViewSingleData(DataID);
  end;
end;

procedure TfrmOpeningAccount.actUpdateRDNAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  sKey := IntToStr(DataID);
  if dmGlobal.ShowEditorForm(TfrmRequestRDNAccount, sKey, pkUpdate) = mrOk then
  begin
    ViewSingleData(DataID);
  end;
end;

procedure TfrmOpeningAccount.actViewListDataExecute(Sender: TObject);
var
  iBussType, iEventProg: Integer;
begin
  inherited;

  if cdsOAList.Params[1].AsInteger = 1005 then
  begin
//    if not dmGlobal.IntDataLookup.cdsLuEvent.Active then
//      dmGlobal.IntDataLookup.cdsLuEvent.Open;
//
//    if not dmGlobal.IntDataLookup.cdsLuBusinessType.Active then
//      dmGlobal.IntDataLookup.cdsLuBusinessType.Open;
//
//    if txtBussType.EditValue = null then iBussType := 0 else iBussType := txtBussType.EditValue;
//    if txtEvent.EditValue = null then iEventProg := 0 else iEventProg := txtEvent.EditValue;
//
//
//    if ((iBussType <> 0) or (iEventProg <> 0)) then
//    begin
//      cdsLastNo.Close;
//      cdsLastNo.Params[0].AsInteger := iBussType;
//      cdsLastNo.Params[1].AsInteger := iEventProg;
//      cdsLastNo.Open;
//
//      txtLastKSEINo.EditValue := cdsLastNoLASTCODE.AsString;
//
//      cdsOAList.Filter   := 'BUSSTYPEID = '+ IntToStr(iBussType) +' and EVENTID = '+ IntToStr(iEventProg);
//      cdsOAList.Filtered := True;
//
//      if cdsOAList.IsEmpty then
//        edKSEIStartNo.Visible := False
//      else
//        edKSEIStartNo.Visible := True;
//
//      btGenerateKSEINo.Visible := edKSEIStartNo.Visible;
//      btCreateKSEISDIF.Visible := edKSEIStartNo.Visible;
//
//    end
//    else
//      cdsOAList.Filtered := False;
//
//    txtBussType.Visible := True;
//    txtEvent.Visible    := True;

      //dibikin 0 karena tidak berdasarkan bustype
    if cdsOAList.Filtered then
      cdsOAList.Filtered := False;

    cdsLastNo.Close;
    cdsLastNo.Params[0].AsInteger := 0;
    cdsLastNo.Params[1].AsInteger := 0;
    cdsLastNo.Open;

    txtLastKSEINo.EditValue := cdsLastNoLASTCODE.AsString;
  end
  else
  begin
    if cdsOAList.Filtered then
      cdsOAList.Filtered := False;
  end;

  actSendBankRDNByEMail.Visible  := (cdsOAList.Params[1].AsInteger = 1006) And (not cdsOAList.IsEmpty);

  if edKSEIStartNo.Visible or actSendBankRDNByEMail.Visible then
    lcBrowseTop.Height := 90
  else
    lcBrowseTop.Height := 55;
end;

procedure TfrmOpeningAccount.actViewOpeningAccountExecute(Sender: TObject);
begin
  inherited;
//  Opening Account\OpeningAccount.fr3

  ReportClient.Params[0].AsInteger := cdsOAListOAID.AsInteger;
  if cdsOAListCUST_TYPE.AsInteger = 1 then
    ReportClient.ReportName := 'Opening Account\OpeningAccountIndividual.fr3'
  else
    ReportClient.ReportName := 'Opening Account\OpeningAccountInstitusi.fr3';
  ReportClient.PreviewReport;
end;

procedure TfrmOpeningAccount.btnCreateClick(Sender: TObject);
begin
  inherited;
  with btnCreate.ClientToScreen(point(0, btnCreate.Height)) do
    popCreate.Popup(X, Y);
end;

procedure TfrmOpeningAccount.cbWorkflowActivityPropertiesChange(
  Sender: TObject);
begin
  inherited;
  actViewListData.Execute;
end;

procedure TfrmOpeningAccount.cdsOAListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  edKSEIStartNo.Visible      := (cdsOAList.Params[1].AsInteger = 1005) And (not cdsOAList.IsEmpty);
  actMultipleApprove.Visible := ((cdsOAList.Params[1].AsInteger = 1001)
                                  or (cdsOAList.Params[1].AsInteger = 1002)
                                  or (cdsOAList.Params[1].AsInteger = 1007)
                                  or (cdsOAList.Params[1].AsInteger = 1008)
                                  or (cdsOAList.Params[1].AsInteger = 1009));// And (not cdsOAList.IsEmpty);

  if cdsOAList.Params[1].AsInteger <> 1005 then
  begin
    txtBussType.EditValue := 0;
    txtEvent.EditValue    := 0;
  end;
  edBussType.Visible := cdsOAList.Params[1].AsInteger = 1005;
  edEvent.Visible    := edBussType.Visible;

  btGenerateKSEINo.Visible := edKSEIStartNo.Visible;
  btCreateKSEISDIF.Visible := edKSEIStartNo.Visible;

  btSendRDNByMail.Visible  := (cdsOAList.Params[1].AsInteger = 1006) And (not cdsOAList.IsEmpty);
end;

//procedure TfrmOpeningAccount.CreateKSEIExcelFile(AFileName, AOAID: String;
//  Out AIndividualFileName, AInstitutionalFileName: String);
//var
//  i, iRow: Integer;
//  oSheet: TXLSWorkSheet;
//  sFileName, sFilePath: String;
//  oXLApp, Sheet, oColumnRange: OLEVariant;
//begin
//  sFilePath := ExtractFilePath(AFileName);
//  sFileName := ExtractFileName(AFileName);
//  i := Pos('.', sFileName);
//  if i > 0 then
//    sFileName := LeftStr(sFileName, i - 1);
//  AIndividualFileName := '';
//  AInstitutionalFileName := '';
//
//  //Individual KSEI File
//  cdsKSEIIndividualAccountRequest.Close;
//  cdsKSEIIndividualAccountRequest.Params[0].AsString := AOAID;
//  cdsKSEIIndividualAccountRequest.Params[1].AsString := '1';//Excel Model
//  cdsKSEIIndividualAccountRequest.Open;
//
//  if not cdsKSEIIndividualAccountRequest.IsEmpty then
//  begin
//    XLS.Filename := sFilePath + sFileName + '_INDIVIDUAL.xls';
//    XLS.Clear(1);
//    oSheet := XLS.Sheets[0];
//    oSheet.Name := 'INDIVIDUAL';
//    oSheet.Clear;
//
//    for i := 0 to cdsKSEIIndividualAccountRequest.FieldCount - 1 do
//    begin
//      oSheet.AsString[i, 0] := cdsKSEIIndividualAccountRequest.Fields[i].FieldName;
//    end;
//
//    iRow := 1;
//    cdsKSEIIndividualAccountRequest.First;
//    while not cdsKSEIIndividualAccountRequest.Eof do
//    begin
//      for i := 0 to cdsKSEIIndividualAccountRequest.FieldCount - 1 do
//      begin
//        oSheet.AsString[i, iRow] := UpperCase(cdsKSEIIndividualAccountRequest.Fields[i].AsString);
//      end;
//
//      Inc(iRow);
//      cdsKSEIIndividualAccountRequest.Next;
//    end;
//
//    XLS.Write;
//    AIndividualFileName := XLS.Filename;
//  end;
//
//  //Institutional KSEI File
//  cdsKSEIInstitutionalAccountRequest.Close;
//  cdsKSEIInstitutionalAccountRequest.Params[0].AsString := AOAID;
//  cdsKSEIInstitutionalAccountRequest.Params[1].AsString := '1';//Excel Model
//  cdsKSEIInstitutionalAccountRequest.Open;
//
//  if not cdsKSEIInstitutionalAccountRequest.IsEmpty then
//  begin
//    XLS.Filename := sFilePath + sFileName + '_INSTITUTIONAL.xls';
//    XLS.Clear(1);
//    oSheet := XLS.Sheets[0];
//    oSheet.Name := 'INSTITUTIONAL';
//    oSheet.Clear;
//
//    for i := 0 to cdsKSEIInstitutionalAccountRequest.FieldCount - 1 do
//    begin
//      oSheet.AsString[i, 0] := cdsKSEIInstitutionalAccountRequest.Fields[i].FieldName;
//    end;
//
//    iRow := 1;
//    cdsKSEIInstitutionalAccountRequest.First;
//    while not cdsKSEIInstitutionalAccountRequest.Eof do
//    begin
//      for i := 0 to cdsKSEIInstitutionalAccountRequest.FieldCount - 1 do
//      begin
//        oSheet.AsString[i, iRow] := UpperCase(cdsKSEIInstitutionalAccountRequest.Fields[i].AsString);
//      end;
//
//      Inc(iRow);
//      cdsKSEIInstitutionalAccountRequest.Next;
//    end;
//
//    XLS.Write;
//    AInstitutionalFileName := XLS.Filename;
//  end;
//end;

procedure TfrmOpeningAccount.CreateKSEIExcelFile(AFileName, AOAID, ALastKSEINo: String;
  Out AIndividualFileName, AInstitutionalFileName: String);
var
  oExcel, oSheet: variant;
  iRow: Integer;
  i, x: Integer;
  sFileName, sFilePath, sExt: String;
  sFNInd, sFNIns: string;
begin
  x := 0;

//  Institutional KSEI File
  cdsKSEIIndividualAccountRequest.Close;
  cdsKSEIIndividualAccountRequest.Params[0].AsString := AOAID;
  cdsKSEIIndividualAccountRequest.Params[1].AsString := '1';//Excel Model
  cdsKSEIIndividualAccountRequest.Open;

  if not cdsKSEIIndividualAccountRequest.IsEmpty then
  begin
    try
      begin
        oExcel := CreateOleObject('Excel.Application');
        oExcel.DisplayAlerts := false;
  //      oExcel.Visible := False;
      end;
    except
      begin
        Showmessage('Cannot create an Excel file, make sure that MS Excel is installed on your system');
        Abort;
      end;
    end;

    oExcel.WorkBooks.Add;
    oExcel.WorkBooks[1].WorkSheets[1].Name := 'INDIVIDUAL';

    oSheet := oExcel.WorkBooks[1].WorkSheets['INDIVIDUAL'];
    for i := 0 to cdsKSEIIndividualAccountRequest.Fields.Count -1 do
      oSheet.Cells[1, i+1]  := cdsKSEIIndividualAccountRequest.Fields[i].FieldName;

    iRow := 2;
    cdsKSEIIndividualAccountRequest.First;
    while not cdsKSEIIndividualAccountRequest.Eof do
    begin

      for i := 0 to cdsKSEIIndividualAccountRequest.Fields.Count -1 do
      begin
          oSheet.Cells[iRow, i+1] := UpperCase(cdsKSEIIndividualAccountRequest.Fields[i].AsString);
      end;

      inc(iRow);
      Inc(x);
      cdsKSEIIndividualAccountRequest.Next;
    end;
    sFNIns := sFilePath + sFileName + '_INDIVIDUAL.xls';

    oExcel.Visible := False;
    oExcel.Workbooks[1].SaveAs(sFNInd);

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;
  end;

//  Institutional KSEI File
  cdsKSEIInstitutionalAccountRequest.Close;
  cdsKSEIInstitutionalAccountRequest.Params[0].AsString := AOAID;
  cdsKSEIInstitutionalAccountRequest.Params[1].AsString := '1';//Excel Model
  cdsKSEIInstitutionalAccountRequest.Open;

  if not cdsKSEIInstitutionalAccountRequest.IsEmpty then
  begin
    try
      begin
        oExcel := CreateOleObject('Excel.Application');
        oExcel.DisplayAlerts := false;
  //      oExcel.Visible := False;
      end;
    except
      begin
        Showmessage('Cannot create an Excel file, make sure that MS Excel is installed on your system');
        Abort;
      end;
    end;

    oExcel.WorkBooks.Add;
    oExcel.WorkBooks[1].WorkSheets[1].Name := 'INSTITUTION';

    oSheet := oExcel.WorkBooks[1].WorkSheets['INSTITUTION'];
    for i := 0 to cdsKSEIInstitutionalAccountRequest.Fields.Count -1 do
      oSheet.Cells[1, i+1]  := cdsKSEIInstitutionalAccountRequest.Fields[i].FieldName;

    iRow := 2;
    cdsKSEIInstitutionalAccountRequest.First;
    while not cdsKSEIInstitutionalAccountRequest.Eof do
    begin

      for i := 0 to cdsKSEIInstitutionalAccountRequest.Fields.Count -1 do
      begin
          oSheet.Cells[iRow, i+1] := UpperCase(cdsKSEIInstitutionalAccountRequest.Fields[i].AsString);
      end;

      inc(iRow);
      Inc(x);
      cdsKSEIInstitutionalAccountRequest.Next;
    end;
    sFNIns := sFilePath + sFileName + '_INSTITUTIONAL.xls';

    oExcel.Visible := False;
    oExcel.Workbooks[1].SaveAs(sFNIns);

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;
  end;

  if x > 0 then
    MessageDlg('Data request KSEI has been generate.', mtInformation, [mbOk], 0);
end;


procedure TfrmOpeningAccount.CreateKSEISDIFile(AFileName, AOAID: String;
  out AIndividualFileName, AInstitutionalFileName: String);
var
  i: Integer;
  sFileName, sFilePath, sSDIFileName: String;
  slSDIFile: TStringList;
begin
  sFilePath := ExtractFilePath(AFileName);
  sFileName := ExtractFileName(AFileName);
  i := Pos('.', sFileName);
  if i > 0 then
    sFileName := LeftStr(sFileName, i - 1);
  AIndividualFileName := '';
  AInstitutionalFileName := '';

  //Individual KSEI File
  cdsKSEIIndividualAccountRequest.Close;
  cdsKSEIIndividualAccountRequest.Params[0].AsString := AOAID;
  cdsKSEIIndividualAccountRequest.Params[1].AsString := '2';//SDI Model
  cdsKSEIIndividualAccountRequest.Open;

  if not cdsKSEIIndividualAccountRequest.IsEmpty then
  begin
    slSDIFile := TStringList.Create;
    Try
      slSDIFile.Add('<Message>');

      cdsKSEIIndividualAccountRequest.First;
      while not cdsKSEIIndividualAccountRequest.Eof do
      begin
        slSDIFile.Add('<Record name="data">');

        for i := 0 to cdsKSEIIndividualAccountRequest.FieldCount - 1 do
        begin
          slSDIFile.Add('<Field name="' + cdsKSEIIndividualAccountRequest.Fields[i].FieldName
            + '">' + cdsKSEIIndividualAccountRequest.Fields[i].AsString +'</Field>')
        end;

        slSDIFile.Add('</Record>');

        cdsKSEIIndividualAccountRequest.Next;
      end;

      slSDIFile.Add('</Message>');
      sSDIFileName := sFilePath + sFileName + '_INDIVIDUAL.sdi';
      slSDIFile.SaveToFile(sSDIFileName);
      AIndividualFileName := sSDIFileName;
    Finally
      FreeAndNil(slSDIFile);

      dmGlobal.ReplaceXMLstring(sSDIFileName);
    End;
  end;

  //Institutional KSEI File
  cdsKSEIInstitutionalAccountRequest.Close;
  cdsKSEIInstitutionalAccountRequest.Params[0].AsString := AOAID;
  cdsKSEIInstitutionalAccountRequest.Params[1].AsString := '2';//SDI Model
  cdsKSEIInstitutionalAccountRequest.Open;

  if not cdsKSEIInstitutionalAccountRequest.IsEmpty then
  begin
    slSDIFile := TStringList.Create;
    Try
      slSDIFile.Add('<Message>');

      cdsKSEIInstitutionalAccountRequest.First;
      while not cdsKSEIInstitutionalAccountRequest.Eof do
      begin
        slSDIFile.Add('<Record name="data">');

        for i := 0 to cdsKSEIInstitutionalAccountRequest.FieldCount - 1 do
        begin
          slSDIFile.Add('<Field name="' + cdsKSEIInstitutionalAccountRequest.Fields[i].FieldName
            + '">' + cdsKSEIInstitutionalAccountRequest.Fields[i].AsString +'</Field>')
        end;

        slSDIFile.Add('</Record>');

        cdsKSEIInstitutionalAccountRequest.Next;
      end;

      slSDIFile.Add('</Message>');
      sSDIFileName := sFilePath + sFileName + '_INSTITUTIONAL.sdi';
      slSDIFile.SaveToFile(sSDIFileName);
      AInstitutionalFileName := sSDIFileName;
    Finally
      FreeAndNil(slSDIFile);

      dmGlobal.ReplaceXMLstring(sSDIFileName);
    End;
  end;

end;

procedure TfrmOpeningAccount.CreateSDIAFile(AFileName: string; AOAID: string);
var
  i: Integer;
  sFileName, sFilePath, sExt: String;
  sFNInd, sFNIns: string;
  oXML: IXMLDocument;
  oRootNode, oNode, oCNode: IXMLNode;
  aHeader: array of string;
  oString: TStringList;
begin
  sFilePath := ExtractFilePath(AFileName);
  sFileName := ExtractFileName(AFileName);
  i := Pos('.', sFileName);
  if i > 0 then
    sFileName := LeftStr(sFileName, i - 1);

  cdsKSEI_SDIA.Close;
  cdsKSEI_SDIA.Params[0].AsString := AOAID;
  cdsKSEI_SDIA.Params[1].AsString := '004';
  cdsKSEI_SDIA.Open;

  if not cdsKSEI_SDIA.IsEmpty then
  begin
    try
      oXML         := NewXMLDocument;
      oXML.Options := [doNodeAutoIndent];
      oRootNode    := oXML.AddChild('Message');

      oNode := oRootNode.AddChild('Record');
      oNode.Attributes['name'] := 'data';

      cdsKSEI_SDIA.First;
      while not cdsKSEI_SDIA.Eof do
      begin
        for i := 0 to cdsKSEI_SDIA.FieldCount -1 do
        begin
          oCNode := oNode.AddChild('Field');
          oCNode.Attributes['name'] := cdsKSEI_SDIA.Fields[i].FieldName;
          oCNode.Text               := cdsKSEI_SDIA.Fields[i].AsString;
        end;

        cdsKSEI_SDIA.Next;
      end;
    finally
      sExt      := ExtractFileExt(AFileName);
      sFileName := StringReplace(AFileName, sExt, '.sdia', [rfReplaceAll, rfIgnoreCase]);
      oXML.SaveToFile(sFileName);

//      menghilangkan <?xml di line pertama
      oString := TStringList.Create;
      oString.LoadFromFile(sFileName);
      oString.Delete(0);
      oString.SaveToFile(sFileName);
      FreeAndNil(oString);
    end;
  end;
end;

procedure TfrmOpeningAccount.CreateStaticDataInvestorFile(AFileName, AOAID,
  ALastKSEINo: String; out AIndividualFileName, AInstitutionalFileName: String);
var
  i: Integer;
  sFileName, sFilePath, sExt: String;
  sFNInd, sFNIns: string;
  oXML: IXMLDocument;
  oRootNode, oNode, oCNode: IXMLNode;
  aHeader: array of string;
begin
  sFilePath := ExtractFilePath(AFileName);
  sFileName := ExtractFileName(AFileName);
  i := Pos('.', sFileName);
  if i > 0 then
    sFileName := LeftStr(sFileName, i - 1);
  AIndividualFileName := '';
  AInstitutionalFileName := '';

  //Individual KSEI File
  cdsKSEIIndividualAccountRequest.Close;
  cdsKSEIIndividualAccountRequest.Params[0].AsString := AOAID;
  cdsKSEIIndividualAccountRequest.Open;

  if not cdsKSEIIndividualAccountRequest.IsEmpty then
  begin
    try
      oXML         := NewXMLDocument;
      oXML.Options := [doNodeAutoIndent];
      oRootNode    := oXML.AddChild('Message');

      oNode := oRootNode.AddChild('Record');
      oNode.Attributes['name'] := 'data';

      cdsKSEIIndividualAccountRequest.First;
      while not cdsKSEIIndividualAccountRequest.Eof do
      begin
        for i := 0 to cdsKSEIIndividualAccountRequest.FieldCount -1 do
        begin
          oCNode := oNode.AddChild('Field');
          oCNode.Attributes['name'] := cdsKSEIIndividualAccountRequest.Fields[i].FieldName;
          oCNode.Text               := cdsKSEIIndividualAccountRequest.Fields[i].AsString;
        end;

        cdsKSEIIndividualAccountRequest.Next;
      end;
    finally
      sExt      := ExtractFileExt(AFileName);
      sFileName := StringReplace(AFileName, sExt, '_Individual.sdi', [rfReplaceAll, rfIgnoreCase]);
      oXML.SaveToFile(sFileName);

      dmGlobal.ReplaceXMLstring(sFileName);
//      FreeAndNil(oXML);
    end;
  end;

  cdsKSEIInstitutionalAccountRequest.Close;
  cdsKSEIInstitutionalAccountRequest.Params[0].AsString := AOAID;
  cdsKSEIInstitutionalAccountRequest.Open;

  if not cdsKSEIInstitutionalAccountRequest.IsEmpty then
  begin
    try
      oXML         := NewXMLDocument;
      oXML.Options := [doNodeAutoIndent];
      oRootNode    := oXML.AddChild('Message');

      oNode := oRootNode.AddChild('Record');
      oNode.Attributes['name'] := 'data';

      cdsKSEIInstitutionalAccountRequest.First;
      while not cdsKSEIInstitutionalAccountRequest.Eof do
      begin
        for i := 0 to cdsKSEIInstitutionalAccountRequest.FieldCount -1 do
        begin
          oCNode := oNode.AddChild('Field');
          oCNode.Attributes['name'] := cdsKSEIInstitutionalAccountRequest.Fields[i].FieldName;
          oCNode.Text               := cdsKSEIInstitutionalAccountRequest.Fields[i].AsString;
        end;

        cdsKSEIInstitutionalAccountRequest.Next;
      end;
    finally
      sExt      := ExtractFileExt(AFileName);
      sFileName := StringReplace(AFileName, sExt, '_Institution.sdi', [rfReplaceAll, rfIgnoreCase]);
      oXML.SaveToFile(sFileName);

      dmGlobal.ReplaceXMLstring(sFileName);
    end;
  end;
end;

procedure TfrmOpeningAccount.CustomOnBackToPreviousActivity(AFlowID,
  AActivityID: Integer; ADataID: Int64);
begin
//Create Custom Procedure here if Back To Previous Activity
end;

procedure TfrmOpeningAccount.CustomOnBeforeCompleteActivity(AFlowID,
  AActivityID: Integer; ADataID: Int64; var AContinue: Boolean);
var
  dtServer: TDateTime;
  sMsg: String;
  bRes: Boolean;
begin
//Create Custom Procedure here if Before Complete Activity
  if (AActivityID = 1001) then
  begin
//    ViewSingleData(ADataID);
    dtServer := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
    sMsg := '';

    //Protection for Individual Data
    if FormEditor is TfrmOpeningAccountRetail then
    begin
      with TfrmOpeningAccountRetail(FormEditor) do
      begin
        if (cdsOARISK.IsNull) or (Trim(cdsOARISK.AsString) = '') then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'CLient Risk';
          AContinue := False;
        end;

        if (cdsOAPRDCODE.IsNull) or (Trim(cdsOAPRDCODE.AsString) = '') then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Product';
          AContinue := False;
        end;

        if (cdsOABRANCHID.IsNull) then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Brach';
          AContinue := False;
        end;

        if (cdsOASALESID.IsNull) then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Sales';
          AContinue := False;
        end;

        if (cdsOAINVESTORCAT.IsNull) or (Trim(cdsOAINVESTORCAT.AsString) = '') then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Investor Category';
          AContinue := False;
        end;

        if (cdsOAFIRSTNAME.IsNull) or (Trim(cdsOAFIRSTNAME.AsString) = '') then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'First Name';
          AContinue := False;
        end;

        if (cdsOAINITIAL.IsNull) or (Trim(cdsOAINITIAL.AsString) = '') then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Initial';
          AContinue := False;
        end;

        if (cdsOATAXID.IsNull) or (Trim(cdsOATAXID.AsString) = '') then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Tax ID';
          AContinue := False;
        end;

        if (cdsOAKTP.IsNull) or (Length(Trim(cdsOAKTP.AsString)) < 16) then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'KTP at least 16 character';
          AContinue := False;
        end;

        if (cdsOAKTP_EXPDATE.IsNull) or (cdsOAKTP_EXPDATE.AsDateTime < dtServer) then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'KTP Expired Date as Future Date!';
          AContinue := False;
        end;

        if (cdsOANPWP.IsNull) or (Length(Trim(cdsOANPWP.AsString)) < 16) then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'NPWP at least 16 character';
          AContinue := False;
        end;

        if (cdsOAContact.IsEmpty) then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Contact';
          AContinue := False;
        end
        else
        begin
          cdsOAContact.first;
          while not cdsOAContact.Eof do
          begin
            if (cdsOAContactCONTNAME.IsNull) or (Trim(cdsOAContactCONTNAME.AsString) = '') then
            begin
              if sMsg <> '' then sMsg := sMsg + ', ';
              sMsg := sMsg + 'Contact - Name';
              AContinue := False;
            end
            else if (cdsOAContactMOBILEPHONE.IsNull) or (Trim(cdsOAContactMOBILEPHONE.AsString) = '') then
            begin
              if sMsg <> '' then sMsg := sMsg + ', ';
              sMsg := sMsg + 'Contact - Mobile Phone';
              AContinue := False;
            end;

            if AContinue then
              cdsOAContact.Next
            else
              cdsOAContact.Last;
          end;
        end;

        if (cdsOAINVESTORCAT.AsString = 'D') then
        begin
          if (cdsOARET_BIRTHPLACE.IsNull) or (Trim(cdsOARET_BIRTHPLACE.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Birth Place';
            AContinue := False;
          end;

          if (cdsOAANUALINCOME.IsNull) or (Trim(cdsOAANUALINCOME.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Annual Income';
            AContinue := False;
          end;

          if (cdsOASOURCEFUNDKSEI.IsNull) or (Trim(cdsOASOURCEFUNDKSEI.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Source Fund';
            AContinue := False;
          end;

          if (cdsOAINVESTOBJECTIVEKSEI.IsNull) or (Trim(cdsOAINVESTOBJECTIVEKSEI.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Investment Objective';
            AContinue := False;
          end;

          if (cdsOAMOTHER_NAME.IsNull) or (Trim(cdsOAMOTHER_NAME.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Mother Name';
            AContinue := False;
          end;

          //Tambahan by irvan 2026.09.21
          if (cdsOADIRECTSID.IsNull) or (Trim(cdsOADIRECTSID.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Direct SID';
            AContinue := False;
          end;

        end;
//        else
//        begin
//          if (cdsOADIRECTSID.IsNull) or (Trim(cdsOADIRECTSID.AsString) = '') then
//          begin
//            if sMsg <> '' then sMsg := sMsg + ', ';
//            sMsg := sMsg + 'Direct SID';
//            AContinue := False;
//          end;
//        end;

        if (cdsOARET_BIRTDATE.IsNull) or (cdsOARET_BIRTDATE.AsDateTime > dtServer) then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Date of Birth as Previous Date';
          AContinue := False;
        end;

        if (cdsOAAddressADDRTYPE_REF.IsNull) and (cdsOAAddressADDR_REF.IsNull) then
        begin
          if cdsOAAddress.Locate('ADDRTYPE', 2, []) then
          begin
            if (cdsOAAddressADDRESS1.IsNull) or (Trim(cdsOAAddressADDRESS1.AsString) = '') then
            begin
              if sMsg <> '' then sMsg := sMsg + ', ';
              sMsg := sMsg + 'ID Card Address Line 1';
              AContinue := False;
            end;

            if (cdsOAAddressCOUNTCODE.IsNull) or (Trim(cdsOAAddressCOUNTCODE.AsString) = '') then
            begin
              if sMsg <> '' then sMsg := sMsg + ', ';
              sMsg := sMsg + 'ID Card Address Country';
              AContinue := False;
            end;

            if (cdsOAAddressCOUNTCODE.AsString = dmGlobal.RemoteServer.GetDefaultCountry) then
            begin
              if (cdsOAAddressPROVCODE.IsNull) or (Trim(cdsOAAddressPROVCODE.AsString) = '') then
              begin
                if sMsg <> '' then sMsg := sMsg + ', ';
                sMsg := sMsg + 'ID Card Address Province';
                AContinue := False;
              end;

              if (cdsOAAddressCITY.IsNull) or (Trim(cdsOAAddressCITY.AsString) = '') then
              begin
                if sMsg <> '' then sMsg := sMsg + ', ';
                sMsg := sMsg + 'ID Card Address City';
                AContinue := False;
              end;
            end;

            if (cdsOAINVESTORCAT.AsString = 'D') then
            begin
              if (cdsOAAddressPHONE.IsNull) or (Trim(cdsOAAddressPHONE.AsString) = '') then
              begin
                if sMsg <> '' then sMsg := sMsg + ', ';
                sMsg := sMsg + 'ID Card Address Phone';
                AContinue := False;
              end;
            end;

          end
          else
          begin
            if (cdsOAAddressADDRESS1.IsNull) or (Trim(cdsOAAddressADDRESS1.AsString) = '') then
            begin
              if sMsg <> '' then sMsg := sMsg + ', ';
              sMsg := sMsg + 'ID Card Address';
              AContinue := False;
            end
          end;
        end;

        if (cdsOARET_GENDER.IsNull) or (Trim(cdsOARET_GENDER.AsString) = '') then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Gender';
          AContinue := False;
        end;

        if (cdsOARET_MARITALSTATUS.IsNull) or (Trim(cdsOARET_MARITALSTATUS.AsString) = '') then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Marital Status';
          AContinue := False;
        end;

        if (cdsOARET_MARITALSTATUS.AsString = '2') then
        begin
          if (cdsOARET_SPOUSENAME.IsNull) or (Trim(cdsOARET_SPOUSENAME.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Spouse Name';
            AContinue := False;
          end;
        end;

        if (cdsOARET_EDUBACKGROUND.IsNull) or (Trim(cdsOARET_EDUBACKGROUND.AsString) = '') then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Educational Background';
          AContinue := False;
        end;

        if (cdsOAOCCUPATION.IsNull) then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Occupation';
          AContinue := False;
        end;

        if (cdsOAASSET_OWNER.IsNull) or (Trim(cdsOAASSET_OWNER.AsString) = '') then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Asset Owner';
          AContinue := False;
        end;

        if (cdsOAOCCUPATION.AsInteger = 1) then
        begin
          if (cdsOAOCCUPATION_OTHER.IsNull) or (Trim(cdsOAOCCUPATION_OTHER.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Occupation Other';
            AContinue := False;
          end;
        end
        else if (cdsOAOCCUPATION.AsInteger = 5) then
        begin
          if (cdsOANAT_BUSINESS_ENTREPRENEUR.IsNull) or (Trim(cdsOANAT_BUSINESS_ENTREPRENEUR.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Nature of Business for the entrepreneur';
            AContinue := False;
          end;
        end;

        if cdsOABank.IsEmpty then
        begin
          if sMsg <> '' then
            sMsg := sMsg + ', ';
          sMsg := sMsg + 'Private Account Bank';
          AContinue := False;
        end
        else
        begin
          cdsOABank.First;
          while not cdsOABank.Eof do
          begin
            if (cdsOABankBANKCODE.isnull) or (Trim(cdsOABankBANKCODE.AsString) = '') then
            begin
              if sMsg <> '' then sMsg := sMsg + ', ';
              sMsg := sMsg + 'Private Account Bank - Bank Code';
              AContinue := False;
            end
            else if (cdsOABankBANKACCNO.isnull) or (Trim(cdsOABankBANKACCNO.AsString) = '') then
            begin
              if sMsg <> '' then sMsg := sMsg + ', ';
              sMsg := sMsg + 'Private Account Bank - Bank Account No.';
              AContinue := False;
            end
            else if (cdsOABankBANKACCNAME.isnull) or (Trim(cdsOABankBANKACCNAME.AsString) = '') then
            begin
              if sMsg <> '' then sMsg := sMsg + ', ';
              sMsg := sMsg + 'Private Account Bank - Bank Account Name';
              AContinue := False;
            end
            else if (cdsOABankCCYCODE.isnull) or (Trim(cdsOABankCCYCODE.AsString) = '') then
            begin
              if sMsg <> '' then sMsg := sMsg + ', ';
              sMsg := sMsg + 'Private Account Bank - Currency';
              AContinue := False;
            end
            else if (cdsOABankBANKBRANCH.isnull) or (Trim(cdsOABankBANKBRANCH.AsString) = '') then
            begin
              if sMsg <> '' then sMsg := sMsg + ', ';
              sMsg := sMsg + 'Private Account Bank - Bank Branch';
              AContinue := False;
            end;

            cdsOABank.Next;
          end;
        end;
      end;
    end

    //Protection for Institution Data
    else if FormEditor is TfrmOpeningAccountIns then
    begin
      with TfrmOpeningAccountIns(FormEditor) do
      begin
        if (cdsOAINVESTORCAT.IsNull) or (Trim(cdsOAINVESTORCAT.AsString) = '') then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Investor Category';
          AContinue := False;
        end;

        if (cdsOABRANCHID.IsNull) then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Branch';
          AContinue := False;
        end;

        if (cdsOASALESID.IsNull) then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Sales';
          AContinue := False;
        end;

        if (cdsOAENTNAME.IsNull) or (Trim(cdsOAENTNAME.AsString) = '') then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Company Name';
          AContinue := False;
        end;

        if (cdsOATAXID.IsNull) or (Trim(cdsOATAXID.AsString) = '') then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Tax ID';
          AContinue := False;
        end;

        if (cdsOACNTREST.IsNull) or (Trim(cdsOACNTREST.AsString) = '') then
        begin
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Legal Domicile';
          AContinue := False;
        end;

        if (cdsOACNTREST.AsString = dmGlobal.RemoteServer.GetDefaultCountry) then
        begin
          if (cdsOANPWP.IsNull) or (Length(Trim(cdsOANPWP.AsString)) < 6) then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'NPWP at least 16 character';
            AContinue := False;
          end;

          if (cdsOAARTICLE_ASSOCIATION.IsNull) or (Trim(cdsOAARTICLE_ASSOCIATION.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Article of Association';
            AContinue := False;
          end;

          if (not cdsOASUPPLEMENTARY_DOCTYPE.IsNull) or (cdsOASUPPLEMENTARY_DOCTYPE.AsString <> '0') then
          begin
            if (cdsOASUPPLEMENTARY_DOCEXP.IsNull) or (cdsOASUPPLEMENTARY_DOCEXP.AsDateTime < fSysDate) then
            begin
              if sMsg <> '' then sMsg := sMsg + ', ';
              sMsg := sMsg + 'Suplementary Document Expired';
              AContinue := False;
            end;
          end;
        end;

        if (cdsOAINVESTORCAT.AsString = 'D') then
        begin
          if (cdsOADEED_ESTABLISH_PLACE.IsNull) or (Trim(cdsOADEED_ESTABLISH_PLACE.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Place of company establishment';
            AContinue := False;
          end;

          if (cdsOAINS_COMPTYPE.IsNull) or (Trim(cdsOAINS_COMPTYPE.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Company Type';
            AContinue := False;
          end;

          if (cdsOAINVESTOR_ASSET_1.IsNull) or (Trim(cdsOAINVESTOR_ASSET_1.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Latest Year Financial Asset';
            AContinue := False;
          end;

          if (cdsOAINVESTOR_OPERATING_PROFIT_1.IsNull) or (Trim(cdsOAINVESTOR_OPERATING_PROFIT_1.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Latest Year Operating Profit';
            AContinue := False;
          end;

          if (cdsOAINVESTOBJECTIVEKSEI.IsNull) or (Trim(cdsOAINVESTOBJECTIVEKSEI.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Investment Objective';
            AContinue := False;
          end;

          if (cdsOAANUALINCOME.IsNull) or (Trim(cdsOAANUALINCOME.AsString) = '') then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Annual Income';
            AContinue := False;
          end;

          //Board Of Director
          if (cdsOABOD.IsEmpty) then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Board Of Director';
            AContinue := False;
          end
          else
          begin
            cdsOABOD.First;
            while not cdsOABOD.Eof do
            begin
              if (cdsOABODBODNAME.IsNull) or (Trim(cdsOABODBODNAME.AsString) = '') then
              begin
                if sMsg <> '' then sMsg := sMsg + ', ';
                sMsg := sMsg + 'Board Of Director - Name';
                AContinue := False;
              end
              else if (cdsOABODBOD_POSITION.IsNull) or (Trim(cdsOABODBOD_POSITION.AsString) = '') then
              begin
                if sMsg <> '' then sMsg := sMsg + ', ';
                sMsg := sMsg + 'Board Of Director - Position';
                AContinue := False;
              end
              else if (cdsOABODBOD_NATIONALITY.IsNull) or (Trim(cdsOABODBOD_NATIONALITY.AsString) = '') then
              begin
                if sMsg <> '' then sMsg := sMsg + ', ';
                sMsg := sMsg + 'Board Of Director - Nationality';
                AContinue := False;
              end
              else if (cdsOABODIDCARDTYPE.IsNull) or (Trim(cdsOABODIDCARDTYPE.AsString) = '') then
              begin
                if sMsg <> '' then sMsg := sMsg + ', ';
                sMsg := sMsg + 'Board Of Director - Card Type';
                AContinue := False;
              end
              else if (cdsOABODIDCARDNUM.IsNull) or (Trim(cdsOABODIDCARDNUM.AsString) = '') then
              begin
                if sMsg <> '' then sMsg := sMsg + ', ';
                sMsg := sMsg + 'Board Of Director - Card Number';
                AContinue := False;
              end
              else if (cdsOABODBOD_VALID_ID.IsNull) or (cdsOABODBOD_VALID_ID.AsDateTime < fSysDate) then
              begin
                if sMsg <> '' then sMsg := sMsg + ', ';
                sMsg := sMsg + 'Board Of Director - ID Card Expired';
                AContinue := False;
              end
              else if (cdsOABODBOD_CELLPHONE.IsNull) or (Trim(cdsOABODBOD_CELLPHONE.AsString) = '') then
              begin
                if sMsg <> '' then sMsg := sMsg + ', ';
                sMsg := sMsg + 'Board Of Director - Phone';
                AContinue := False;
              end
              else if (cdsOABODBOD_EMAIL.IsNull) or (Trim(cdsOABODBOD_EMAIL.AsString) = '') then
              begin
                if sMsg <> '' then sMsg := sMsg + ', ';
                sMsg := sMsg + 'Board Of Director - EMail';
                AContinue := False;
              end;

              if AContinue then
                cdsOABOD.Next
              else
                cdsOABOD.Last;
            end;
          end;

          //Board Of Director Share Holder
          if (cdsOASHL.IsEmpty) then
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'ShareHolders';
            AContinue := False;
          end
          else
          begin
//            if cdsOABOD.RecordCount <> cdsOASHL.RecordCount then
//            begin
//              if sMsg <> '' then sMsg := sMsg + ', ';
//              sMsg := sMsg + 'Record Board Of Director is Not Same As Shareholders';
//              AContinue := False;
//            end
//            else
//            begin
              cdsOASHL.First;
              while not cdsOASHL.Eof do
              begin
                if (cdsOASHLSHLNAME.IsNull) or (Trim(cdsOASHLSHLNAME.AsString) = '') then
                begin
                  if sMsg <> '' then sMsg := sMsg + ', ';
                  sMsg := sMsg + 'Shareholders - Name';
                  AContinue := False;
                end
                else if (cdsOASHLSHLPERCENT.IsNull) or (cdsOASHLSHLPERCENT.AsFloat <= 0) then
                begin
                  if sMsg <> '' then sMsg := sMsg + ', ';
                  sMsg := sMsg + 'Shareholders - Ownership (%)';
                  AContinue := False;
                end;

                if AContinue then
                  cdsOASHL.Next
                else
                  cdsOASHL.Last;
              end;
//            end;
          end;

          //Authorize Person Protection
          if not cdsOAAuth.IsEmpty then
          begin
            cdsOAAuth.First;

            if (cdsOAAuthAUTH_PERSON_FIRSTNAME.IsNull) or (Trim(cdsOAAuthAUTH_PERSON_FIRSTNAME.AsString) = '') then
            begin
              if sMsg <> '' then sMsg := sMsg + ', ';
              sMsg := sMsg + 'First Authorized Person First Name';
              AContinue := False;
            end;

            if (cdsOAAuthAUTH_PERSON_POSITION.IsNull) or (Trim(cdsOAAuthAUTH_PERSON_POSITION.AsString) = '') then
            begin
              if sMsg <> '' then sMsg := sMsg + ', ';
              sMsg := sMsg + 'First Authorized Person Position';
              AContinue := False;
            end;

            if ((cdsOAAuthAUTH_PERSON_KTP.IsNull) or (Trim(cdsOAAuthAUTH_PERSON_KTP.AsString) = ''))
              and ((cdsOAAuthAUTH_PERSON_NPWP.IsNull) or (Trim(cdsOAAuthAUTH_PERSON_NPWP.AsString) = '')) then
            begin
//              dmGlobal.ErrorMessage('Please fill First Authorized Person Data at least one ID Card Number!');
              if sMsg <> '' then sMsg := sMsg + ', ';
              sMsg := sMsg + 'First Authorized Person at least one ID Card Number';
              AContinue := False;
//              Abort;
            end
            else
            begin
              if (not cdsOAAuthAUTH_PERSON_KTP.IsNull) or (Trim(cdsOAAuthAUTH_PERSON_KTP.AsString) <> '') then
              begin
                if (Length(Trim(cdsOAAuthAUTH_PERSON_KTP.AsString)) < 16) then
                begin
//                  dmGlobal.ErrorMessage('Please fill First Authorized Person KTP Data at least 15 character!');
                  if sMsg <> '' then sMsg := sMsg + ', ';
                  sMsg := sMsg + 'First Authorized Person KTP at least 16 character';
                  AContinue := False;
//                  Abort;
                end
                else
                begin
                  if (cdsOAAuthAUTH_PERSON_KTP_EXPDATE.IsNull) or (cdsOAAuthAUTH_PERSON_KTP_EXPDATE.AsDateTime <= dtServer) then
                  begin
//                    dmGlobal.ErrorMessage('Please fill First Authorized Person KTP Expired Date Data as Future Date!');
                    if sMsg <> '' then sMsg := sMsg + ', ';
                    sMsg := sMsg + 'First Authorized Person KTP Expired Date as Future Date';
                    AContinue := False;
//                    Abort;
                  end;
                end;
              end;

              if (not cdsOAAuthAUTH_PERSON_NPWP.IsNull) or (Trim(cdsOAAuthAUTH_PERSON_NPWP.AsString) <> '') then
              begin
                if (Length(Trim(cdsOAAuthAUTH_PERSON_NPWP.AsString)) < 16) then
                begin
//                  dmGlobal.ErrorMessage('Please fill First Authorized Person NPWP Data at least 15 character!');
                  if sMsg <> '' then sMsg := sMsg + ', ';
                  sMsg := sMsg + 'First Authorized Person NPWP at least 16 character';
                  AContinue := False;
//                  Abort;
                end
                else
                begin
                  if (cdsOAAuthAUTH_PERSON_NPWP_REGDATE.IsNull) or (cdsOAAuthAUTH_PERSON_NPWP_REGDATE.AsDateTime > fSysDate) then
                  begin
//                    dmGlobal.ErrorMessage('Please fill First Authorized Person NPWP Registered Date Data as Previuos Date!');
                    if sMsg <> '' then sMsg := sMsg + ', ';
                    sMsg := sMsg + 'First Authorized Person NPWP Registered Date as Previous Date';
                    AContinue := False;
//                    Abort;
                  end;
                end;
              end;

            end;
          end
          else
          begin
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Authorized Person';
            AContinue := False;
          end;


        end
        else
        begin
          if (cdsOADIRECTSID.IsNull) or (Trim(cdsOADIRECTSID.AsString) = '') then
          begin
//            dmGlobal.ErrorMessage('Please fill Direct SID Data!');
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Direct SID';
            AContinue := False;
//            Abort;
          end;
        end;

        if (cdsOAINS_DATEOFESTABLIZED.IsNull) or (cdsOAINS_DATEOFESTABLIZED.AsDateTime > dtServer) then
        begin
//          dmGlobal.ErrorMessage('Please fill Date of Establishment Data as Previous Date!');
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Date of Establishment as Previous Date';
          AContinue := False;
//          Abort;
        end;

        if cdsOAAddress.Locate('ADDRTYPE', 1, []) then
        begin
          if (cdsOAAddressADDRESS1.IsNull) or (Trim(cdsOAAddressADDRESS1.AsString) = '') then
          begin
//            dmGlobal.ErrorMessage('Plaese fill Registered Address Line 1 Data!');
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Registered Address Line 1';
            AContinue := False;
//            Abort;
          end;

          if (cdsOAAddressCOUNTCODE.IsNull) or (Trim(cdsOAAddressCOUNTCODE.AsString) = '') then
          begin
//            dmGlobal.ErrorMessage('Please fill Registered Address Country Data!');
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Registered Address Country';
            AContinue := False;
//            Abort;
          end;

          if (cdsOAAddressCOUNTCODE.AsString = dmGlobal.RemoteServer.GetDefaultCountry) then
          begin
            if (cdsOAAddressPROVCODE.IsNull) or (Trim(cdsOAAddressPROVCODE.AsString) = '') then
            begin
//              dmGlobal.ErrorMessage('Please fill Registered Address Province Data!');
                if sMsg <> '' then sMsg := sMsg + ', ';
                sMsg := sMsg + 'Registered Address Province';
                AContinue := False;
//              Abort;
            end;

            if (cdsOAAddressCITY.IsNull) or (Trim(cdsOAAddressCITY.AsString) = '') then
            begin
//              dmGlobal.ErrorMessage('Please fill Registered Address City Data!');
              if sMsg <> '' then sMsg := sMsg + ', ';
              sMsg := sMsg + 'Registered Address City';
              AContinue := False;
//              Abort;
            end;
          end;

          if (cdsOAAddressPHONE.IsNull) or (Trim(cdsOAAddressPHONE.AsString) = '') then
          begin
//            dmGlobal.ErrorMessage('Please fill Registered Address Phone Data!');
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Registered Address Phone';
            AContinue := False;
//            Abort;
          end;

        end
        else
        begin
//          dmGlobal.ErrorMessage('Please fill Registered Address Data!');
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Registered Address';
          AContinue := False;
//          Abort;
        end;

        if (cdsOAINS_BUSSTYPE.IsNull) or (Trim(cdsOAINS_BUSSTYPE.AsString) = '') then
        begin
//          dmGlobal.ErrorMessage('Please fill Type of Business Data!');
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Type of Business';
          AContinue := False;
//          Abort;
        end;

        if (cdsOASOURCEFUNDKSEI.IsNull) or (Trim(cdsOASOURCEFUNDKSEI.AsString) = '') then
        begin
//          dmGlobal.ErrorMessage('Please fill Source Fund Data!');
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Source Fund';
          AContinue := False;
//          Abort;
        end;

        if (cdsOAASSET_OWNER.IsNull) or (Trim(cdsOAASSET_OWNER.AsString) = '') then
        begin
//          dmGlobal.ErrorMessage('Please fill Asset Owner Data!');
          if sMsg <> '' then sMsg := sMsg + ', ';
          sMsg := sMsg + 'Asset Owner';
          AContinue := False;
//          Abort;
        end;

        if (not cdsOASUPPLEMENTARY_DOCTYPE.IsNull) and (cdsOASUPPLEMENTARY_DOCTYPE.AsString <> '0') then
        begin
          if (cdsOASUPPLEMENTARY_DOCEXP.IsNull) or (cdsOASUPPLEMENTARY_DOCEXP.AsDateTime < dtServer) then
          begin
//            dmGlobal.ErrorMessage('Please fill Expired Date of Supplementary Document Data as Future Date!');
            if sMsg <> '' then sMsg := sMsg + ', ';
            sMsg := sMsg + 'Expired Date of Supplementary Document as Future Date';
            AContinue := False;
//            Abort;
          end;
        end;

      end;
    end;

    if not AContinue then
    begin
      sMsg := 'Please fill ' + sMsg + ' Data!';
      dmGlobal.ErrorMessage(sMsg);
      Abort;
    end;
  end
  else if (AActivityID = 1009) then
  begin
    bRes := dmGlobal.RemoteServer.ApproveOpeningAccount(ADataID, sMsg);
    if not bRes then
    begin
      AContinue := False;
      dmGlobal.ErrorMessage(sMsg);
      Abort;
    end;
  end;
end;

procedure TfrmOpeningAccount.CustomOnAfterCompleteActivity(AFlowID,
  AActivityID: Integer; ADataID: Int64);
var
  sMsg: String;
  bRes: Boolean;
begin
//Create Custom Procedure here if After Complete Activity
  if (AActivityID = 1002) or (AActivityID = 1003) or (AActivityID = 1004) then
  begin
    ViewSingleData(ADataID);

//    if FormEditor.dsSubject.DataSet.FieldByName('REQUEST_SUBREK').AsString <> '1' then
//    begin
//      if cdsDataActivityStatus.Locate('ACTIVITYID', 1005, []) then
//      begin
//        if (cdsDataActivityStatusSTATUS.AsString = '1') then
//        begin
//          bRes := dmGlobal.RemoteServer.UpdateDataActivityStatusDoneBySystem(
//            ADataID, 1005, 'Automatically Done By System Because this data not request New KSEI Account!', sMsg);
//          if bRes then
//          begin
//            Sleep(1000);//Wait for last action have been committed successfully
//            bRes := dmGlobal.RemoteServer.UpdateDataActivityStatusDoneBySystem(
//              ADataID, 1006, 'Automatically Done By System Because this data not request New KSEI Account!', sMsg);
//          end;
//        end;
//      end;
//    end;
  end
  else if (AActivityID = 1007) then
  begin
    bRes := dmGlobal.RemoteServer.CreateOpeningAccountConfig(ADataID, sMsg);
    if not bRes then
    Begin

    End;
  end;
end;

procedure TfrmOpeningAccount.CustomOnGetEditorFormClass(
  var AFormClass: TFormEditorClass);
begin
  if cdsOAListCUST_TYPE.AsInteger = 1 then
    AFormClass := TfrmOpeningAccountRetail
  else
    AFormClass := TfrmOpeningAccountIns;
end;

procedure TfrmOpeningAccount.FormCreate(Sender: TObject);
begin
  inherited;
  FormEditorClass := TfrmOpeningAccountRetail;
  OnGetFormEditorClass := CustomOnGetEditorFormClass;
  FlowID := 1;
  KeyField := cdsOAListOAID;
  OnBeforeCompleteActivity := CustomOnBeforeCompleteActivity;
  OnAfterCompleteActivity  := CustomOnAfterCompleteActivity;
  OnBackToPreviousActivity := CustomOnBackToPreviousActivity;

  fSysDate := dmGlobal.RemoteServer.GetTransDate;
  with dmGlobal.IntDataLookup do
  begin
    cdsluBranch.Close;
    cdsLuBranch.Open;

    cdsLuSales.Close;
    cdsLuSales.Open;

    cdsLuEvent.Close;
    cdsLuEvent.Open;

//    cdsLuCCType.Close;
//    cdsLuCCType.Open;

    cdsLuCrdConClass.Close;
    cdsLuCrdConClass.Open;

    cdsluOccupation.Close;
    cdsluOccupation.Open;
  end;
end;

procedure TfrmOpeningAccount.gvwDataActivityStatusFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  actEdit.Visible := (cdsDataActivityStatusACTIVITYID.AsInteger = 1001)
    And (cdsDataActivityStatusSTATUS.AsString = '1')
    And (UpperCase(cdsDataActivityStatusDONE_BY.AsString) = UpperCase(dmGlobal.UserID));
//    and (cdsOAListISWEB.AsString = '0'); //ngga jadi dilangin editnya
//
  actCancelRequest.Visible := actEdit.Visible;

//  actApprove.Visible := ((cdsDataActivityStatusACTIVITYID.AsInteger = 1002)
//      or (cdsDataActivityStatusACTIVITYID.AsInteger = 1003)
//      or (cdsDataActivityStatusACTIVITYID.AsInteger = 1004))
//    And (cdsDataActivityStatusSTATUS.AsString = '1')
//    And (UpperCase(cdsDataActivityStatusDONE_BY.AsString) = UpperCase(dmGlobal.UserID));

  actApprove.Visible := cdsDataActivityStatusACTIVITYID.AsInteger = 0;
  actReject.Visible  := actApprove.Visible;

  actUpdateKSEIAccount.Visible := (cdsDataActivityStatusACTIVITYID.AsInteger = 1005)
    And (cdsDataActivityStatusSTATUS.AsString = '1')
    And (UpperCase(cdsDataActivityStatusDONE_BY.AsString) = UpperCase(dmGlobal.UserID));

  actUpdateRDNAccount.Visible := (cdsDataActivityStatusACTIVITYID.AsInteger = 1006)
    And (cdsDataActivityStatusSTATUS.AsString = '1')
    And (UpperCase(cdsDataActivityStatusDONE_BY.AsString) = UpperCase(dmGlobal.UserID));

  actAccountConfig.Visible := (cdsDataActivityStatusACTIVITYID.AsInteger = 1008)
    And (cdsDataActivityStatusSTATUS.AsString = '1')
    And (UpperCase(cdsDataActivityStatusDONE_BY.AsString) = UpperCase(dmGlobal.UserID));

  if actEdit.Visible then
  begin
    btnAction1.Action := actEdit;
    btnAction2.Action := actCancelRequest;
  end;

  if actApprove.Visible then
  begin
    btnAction1.Action := actApprove;
    btnAction2.Action := actReject;
  end;

  if actUpdateKSEIAccount.Visible then
  begin
    btnAction1.Action := actUpdateKSEIAccount;
  end;

  if actUpdateRDNAccount.Visible then
  begin
    btnAction1.Action := actUpdateRDNAccount;
  end;

  if actAccountConfig.Visible then
  begin
    btnAction1.Action := actAccountConfig;
  end;

  actComplete.Visible := not actApprove.Visible;

  lcEditorTopItem1.Visible := TAction(btnAction1.Action).Visible;
  lcEditorTopItem2.Visible := TAction(btnAction2.Action).Visible;
  lcEditorTop.Visible := actEdit.Visible
    or actApprove.Visible or actReject.Visible
    or actUpdateKSEIAccount.Visible or actUpdateRDNAccount.Visible
    or actAccountConfig.Visible;
end;

procedure TfrmOpeningAccount.tabBrowseShow(Sender: TObject);
begin
  inherited;
  actViewListData.Execute;
end;

Initialization
  RegisterClass(TfrmOpeningAccount);

end.
