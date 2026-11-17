unit ClassClientConst;

interface

type
  TProcessKind = (pkCreate, pkRead, pkUpdate, pkDelete, pkApprove, pkReject, pkCancel, pkRemodify, pkReadApproval, pkModifyApproval);//CRUD
  TWorkflowState = (wsBrowse, wsEdit, wsInsert, wsOpening);

const
  REQUIRED_FIELD_TAG = 21;
  SETNAME_DATASNAP_COMMUNICATION_PROTOCOL = 'Communication Protocol';
  SETNAME_DATASNAP_PORT = 'DataSnap Port';
  SETNAME_DATASNAP_HOSTNAME = 'DataSnap Host';
  SETNAME_OMGEO_OUTBOUND = 'Outbound';
  SETNAME_OMGEO_OUTBOUND_BACKUP = 'Outbound Backup';
  SETNAME_OMGEO_BIC = 'BIC';
  SETNAME_OMGEO_MACHINEID = 'MachineID';
  SETNAME_FITS_BANK_INTERFACE = 'Bank Interface';
  SETNAME_FITS_CBEST_INTERFACE = 'CBest Interface';
  SETNAME_FITS_JOURNAL_LIST = 'Journal List';
  SETNAME_BCA_CHECKSUM = 'BCA CheckSum';

  SETNAME_REPORT_HOST = 'Report Server Host';
  SETNAME_REPORT_PORT = 'Report Server Port';
  SETNAME_REPORT_PROXYHOST = 'Report Server Proxy Host';
  SETNAME_REPORT_PROXYPORT = 'Report Server Proxy Port';
  SETNAME_REPORT_LOGIN = 'Report Server Login';
  SETNAME_REPORT_PASSWORD = 'Report Server Password';

  SETNAME_MKBD_OUTPATH = 'MKBD';
  SETNAME_CBEST_OUTPATH = 'C-Best';

  SETNAME_SINVEST_UPLOAD = 'Generate Folder';
  SETNAME_SINVEST_DOWNLOAD = 'Download Folder';

  SETNAME_DAILY_REPORT = 'Daily Report Folder';

  SETNAME_SFTP_USER_NAME = 'SFTP User Name';
  SETNAME_SFTP_PASSWORD = 'SFTP Password';
  SETNAME_SFTP_FILE_URL = 'SFTP File Url';

  COB_AT_CHK_DATA = 'I';
  COB_AT_UPLOADDOC = 'U';
  COB_AT_KSEI_REK = 'SR';
//  COB_AT_SID_REK = 'SSS';
  COB_AT_RDN_REK = 'SSS';
  COB_AT_ASSIGN_SALES = 'AS';
  COB_AT_MGR_APPR = 'MA';
  COB_AT_PRM_SET = 'SP';
  COB_AT_BUSS_TYPE = 'BT';
  COB_AT_ORDVALID = 'RM';
  COB_AT_BANKACC = 'BSET';
  COB_AT_TRDPARAM = 'TP';
  COB_AT_ACC_ACTIVE = 'AA';

  COB_LV_EDIT = 'E';
  COB_LV_VERIFY = 'V';
  COB_LV_GROUP = 'G';

  COB_PRC_GROUP = 'G';
  COB_PRC_CHILD = 'C';
  COB_PRC_STANDALONE = 'S';

  COB_FSTS_WAIT_ACK = 0;
  COB_FSTS_INPROGRESS = 1;
  COB_FSTS_DONE = 2;
  COB_FSTS_NOT_COMPLETE = 3;
  COB_FSTS_REJECTED = 4;
  COB_FSTS_UNKNOW = '9';

  COB_ACTTYPE_INPUT = 'I';
  COB_ACTTYPE_UPLOAD = 'U';
  COB_ACTTYPE_GROUPREQUEST = 'SR';
  COB_ACTTYPE_KSEISUBREK = 'SSR';
  COB_ACTTYPE_SID = 'SSS';
  COB_ACTTYPE_RDN = 'SSN';
  COB_ACTTYPE_ASSIGNSALES = 'AS';
  COB_ACTTYPE_APPMANAGER = 'MA';
  COB_ACTTYPE_PARAMSETTING = 'SP';
  COB_ACCTYPE_BUSSTYPE = 'BT';
  COB_ACCTYPE_ACCACTIVE = 'AA';
  COB_ACCTYPE_ORDVALIDATION = 'RM';
  COB_ACCTYPE_ACCLEDGER = 'RL';
  COB_ACCTYPE_BANKLINK = 'RX';
  COB_ACCTYPE_GENERAL = 'RG';
  COB_ACCTYPE_COMISSION_CHARGE = 'RC';
  COB_ACCTYPE_DATA_OWNER = 'RO';
  COB_ACCTYPE_SETTLEMENT = 'SC';
  COB_ACCTYPE_PRINT = 'POA';
  COB_ACTTYPE_INETBANKCHECK = 'IBC';

  COB_FACT_NONE = 0;
  COB_FACT_DONE_INPUT = 1;
  COB_FACT_UNCOMPLETE_INPUT = 2;
  COB_FACT_VIEW_INPUT = 3;

//  for Excel Format
  xlContinuous = 1;
  xlDiagonalDown = 5;
  xlDiagonalUp = 6;
  xlEdgeLeft = 7;
  xlEdgeTop = 8;
  xlEdgeBottom = 9;
  xlEdgeRight = 10;
  xlInsideVertical = 11;
  xlInsideHorizontal = 12;
  xlHairLine = 1;
  xlSolid = 1;
  xlThin = 2;
  xlAutomatic = -4105;
  xlCenter = -4108;
  xlNone = -4142;
  xlDown = -4121;
  xlUp = -4162;
  xlMedium = -4138;
  xlLeft = -4131;
  xlRight = -4152;
  xlToLeft = -4159;
  xlToRight = -4161;
  xlShiftToLeft = -4159;
  xTop = -4160;
  xlLastCell = 11;
  xlAscending = 1;
  xlGuess = 0;
  xlTopToBottom = 1;
  xlSortNormal = 0;

implementation


end.
