inherited frmRDNRequest: TfrmRDNRequest
  Caption = 'RDN Request'
  ClientHeight = 394
  ClientWidth = 896
  ExplicitLeft = -130
  ExplicitWidth = 896
  ExplicitHeight = 394
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 0
    Width = 896
    Height = 394
    Align = alClient
    PopupMenu = popDocking
    TabOrder = 0
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
      DataController.DataSource = dsRDNRequest
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object cxGrid1DBBandedTableView1RDNREQID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RDNREQID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1CUST_REG_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUST_REG_NO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1CLIENTNAME: TcxGridDBBandedColumn
        Caption = 'Client Name'
        DataBinding.FieldName = 'CLIENTNAME'
        Width = 208
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1BANKNAME: TcxGridDBBandedColumn
        Caption = 'Bank Name'
        DataBinding.FieldName = 'BANKNAME'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ListColumns = <>
        RepositoryItem = dmGlobal.luBank
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1CLIENTTYPE: TcxGridDBBandedColumn
        Caption = 'Client Type'
        DataBinding.FieldName = 'CLIENTTYPE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1BRANCH: TcxGridDBBandedColumn
        Caption = 'Branch'
        DataBinding.FieldName = 'BRANCH'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ListColumns = <>
        RepositoryItem = dmGlobal.luBranch
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1RDNACCNO: TcxGridDBBandedColumn
        Caption = 'RDN Account No.'
        DataBinding.FieldName = 'RDNACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1RDNSTATUS: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'RDNSTATUS'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1RDNDATE: TcxGridDBBandedColumn
        Caption = 'Date'
        DataBinding.FieldName = 'RDNDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd mmm yyyy'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1RDNNOTES: TcxGridDBBandedColumn
        Caption = 'Notes'
        DataBinding.FieldName = 'RDNNOTES'
        Width = 347
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1CID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1RDNREQUESTDATE: TcxGridDBBandedColumn
        Caption = 'Request Date'
        DataBinding.FieldName = 'RDNREQUESTDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd mmm yyyy'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1PDFFILEGENERATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PDFFILEGENERATE'
        Visible = False
        Width = 98
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1ISCOMPLETE: TcxGridDBBandedColumn
        Caption = 'Complete'
        DataBinding.FieldName = 'ISCOMPLETE'
        RepositoryItem = dmGlobal.chkStandard
        Width = 63
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  inherited popDocking: TPopupMenu
    object Refresh1: TMenuItem
      Action = actRefresh
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object UpdateRDNAccount1: TMenuItem
      Action = actUpdateRDNAccount
    end
    object UpdateFromKSEIDataUpload1: TMenuItem
      Action = actUpdateFromKSEIData
    end
    object Complete1: TMenuItem
      Action = actComplete
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object GenerateToPDFFile1: TMenuItem
      Action = actGenerateFile
    end
    object ViewReportCIMB1: TMenuItem
      Action = actViewReport
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = ActionList1
    Actions = <
      item
        ActionName = 'actUpdateRDNAccount'
        Permission = '[RDN Request].Update RDN Account'
      end
      item
        ActionName = 'actGenerateFile'
        Permission = '[RDN Request].Generate Report To PDF File'
      end
      item
        ActionName = 'actViewReport'
        Permission = '[RDN Request].View Report'
      end
      item
        ActionName = 'actUpdateFromKSEIData'
        Permission = '[RDN Request].Update From KSEI Data Upload'
      end
      item
        ActionName = 'actComplete'
        Permission = '[RDN Request].Complete'
      end>
    AssignedPermission = <
      item
        Name = 'Client Management Data'
        Description = 'Client Management Data Permission'
      end>
    Left = 291
  end
  object cdsRDNRequest: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryRDNRequest'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 438
    Top = 183
    object cdsRDNRequestRDNREQID: TLargeintField
      FieldName = 'RDNREQID'
      Required = True
    end
    object cdsRDNRequestCUST_REG_NO: TStringField
      FieldName = 'CUST_REG_NO'
      Size = 30
    end
    object cdsRDNRequestCLIENTNAME: TStringField
      FieldName = 'CLIENTNAME'
      Size = 50
    end
    object cdsRDNRequestBANKNAME: TStringField
      FieldName = 'BANKNAME'
      Size = 30
    end
    object cdsRDNRequestCLIENTTYPE: TIntegerField
      FieldName = 'CLIENTTYPE'
    end
    object cdsRDNRequestBRANCH: TStringField
      FieldName = 'BRANCH'
      Size = 10
    end
    object cdsRDNRequestRDNACCNO: TStringField
      FieldName = 'RDNACCNO'
      Size = 30
    end
    object cdsRDNRequestRDNSTATUS: TStringField
      FieldName = 'RDNSTATUS'
      Size = 1
    end
    object cdsRDNRequestRDNDATE: TDateTimeField
      FieldName = 'RDNDATE'
    end
    object cdsRDNRequestRDNNOTES: TStringField
      FieldName = 'RDNNOTES'
      Size = 200
    end
    object cdsRDNRequestCID: TLargeintField
      FieldName = 'CID'
    end
    object cdsRDNRequestRDNREQUESTDATE: TDateTimeField
      FieldName = 'RDNREQUESTDATE'
    end
    object cdsRDNRequestPDFFILEGENERATE: TBlobField
      FieldName = 'PDFFILEGENERATE'
    end
    object cdsRDNRequestMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRDNRequestMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRDNRequestAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRDNRequestAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRDNRequestUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRDNRequestUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRDNRequestNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRDNRequestISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRDNRequestID: TLargeintField
      FieldName = 'ID'
    end
    object cdsRDNRequestISCOMPLETE: TStringField
      FieldName = 'ISCOMPLETE'
      Size = 1
    end
  end
  object dsRDNRequest: TDataSource
    DataSet = cdsRDNRequest
    Left = 438
    Top = 234
  end
  object ActionList1: TActionList
    Left = 402
    Top = 126
    object actUpdateRDNAccount: TNAction
      Category = 'NActions'
      Caption = 'Update RDN Account'
      OnExecute = actUpdateRDNAccountExecute
      OnUpdate = actUpdateRDNAccountUpdate
      CheckPermission = True
    end
    object actGenerateFile: TNAction
      Category = 'NActions'
      Caption = 'Generate Report To PDF File'
      OnExecute = actGenerateFileExecute
      CheckPermission = True
    end
    object actViewReport: TNAction
      Category = 'NActions'
      Caption = 'View Report'
      OnExecute = actViewReportExecute
      CheckPermission = True
    end
    object actRefresh: TNAction
      Category = 'NActions'
      Caption = 'Refresh'
      OnExecute = actRefreshExecute
      CheckPermission = False
    end
    object actUpdateFromKSEIData: TNAction
      Category = 'NActions'
      Caption = 'Update From KSEI Data Upload'
      OnExecute = actUpdateFromKSEIDataExecute
      OnUpdate = actUpdateRDNAccountUpdate
      CheckPermission = True
    end
    object actComplete: TNAction
      Category = 'NActions'
      Caption = 'Complete'
      OnExecute = actCompleteExecute
      OnUpdate = actUpdateRDNAccountUpdate
      CheckPermission = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 132
    Top = 165
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 16777190
    end
  end
  object cdsUpdateKSEI: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACTSUBID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'DATECOMPL'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DONEBY'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryUpdateKSEISubRek'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 525
    Top = 126
  end
  object rcRDN: TNReportContainer
    OnPrepareData = rcRDNPrepareData
    Left = 543
    Top = 189
  end
  object dbRDNRequest: TfrxDBDataset
    UserName = 'cdsGenerateRDNReport'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CID=CID'
      'CUST_REG_NO=CUST_REG_NO'
      'NAME=NAME'
      'POB=POB'
      'DOB=DOB'
      'ID_TYPE=ID_TYPE'
      'ID_NO=ID_NO'
      'ID_VALID=ID_VALID'
      'GENDER=GENDER'
      'NATIONALITY=NATIONALITY'
      'TAXPAYER_REG=TAXPAYER_REG'
      'TAXPAYER_STATUS=TAXPAYER_STATUS'
      'MARITAL_STATUS=MARITAL_STATUS'
      'MOTHER_NAME=MOTHER_NAME'
      'RESIDENT_TYPE=RESIDENT_TYPE'
      'OWNERSHIP_STATUS=OWNERSHIP_STATUS'
      'STREET=STREET'
      'RT_RW=RT_RW'
      'KELURAHAN=KELURAHAN'
      'KECAMATAN=KECAMATAN'
      'PROVINCE=PROVINCE'
      'COUNTRY=COUNTRY'
      'ZIP_CODE=ZIP_CODE'
      'RESIDENT_TYPE2=RESIDENT_TYPE2'
      'RESIDENT_TYPE2_OTHERS=RESIDENT_TYPE2_OTHERS'
      'OWNERSHIP_STATUS2=OWNERSHIP_STATUS2'
      'OWNERSHIP_STATUS2_OTHERS=OWNERSHIP_STATUS2_OTHERS'
      'STREET2=STREET2'
      'RT_RW2=RT_RW2'
      'KELURAHAN2=KELURAHAN2'
      'KECAMATAN2=KECAMATAN2'
      'PROVINCE2=PROVINCE2'
      'COUNTRY2=COUNTRY2'
      'ZIP_CODE2=ZIP_CODE2'
      'EMAIL=EMAIL'
      'HOME_PHONE=HOME_PHONE'
      'CELL_PHONE=CELL_PHONE'
      'FAX_NO=FAX_NO'
      'CORRESPONDENT_ADDRESS=CORRESPONDENT_ADDRESS'
      'OCCUPATION=OCCUPATION'
      'FIELD_WORK=FIELD_WORK'
      'COMPANY=COMPANY'
      'POSITION=POSITION'
      'JOB_DIVISION=JOB_DIVISION'
      'YOS_MONTH=YOS_MONTH'
      'YOS_YEAR=YOS_YEAR'
      'COMPANY_PHONE=COMPANY_PHONE'
      'COMPANY_PHONE_EXT=COMPANY_PHONE_EXT'
      'COMPANY_ADDRESS=COMPANY_ADDRESS'
      'FUND_SOURCE=FUND_SOURCE'
      'ANNUAL_INCOME=ANNUAL_INCOME'
      'REL_FAMILY_NAME=REL_FAMILY_NAME'
      'REL_FAMILY_PHONE=REL_FAMILY_PHONE'
      'BENEFICIARY_NAME=BENEFICIARY_NAME'
      'BENEFICIARY_PHONE=BENEFICIARY_PHONE'
      'BENEFICIARY_RELATION=BENEFICIARY_RELATION'
      'BENEFICIARY_ID_NO=BENEFICIARY_ID_NO'
      'INV_BANK=INV_BANK'
      'INV_BANK_NAME=INV_BANK_NAME'
      'INV_BANK_ACC_NAME=INV_BANK_ACC_NAME'
      'INV_BANK_ACC_NO=INV_BANK_ACC_NO'
      'INV_BANK_BRANCH=INV_BANK_BRANCH'
      'FAM_WORK_AT_BHN=FAM_WORK_AT_BHN'
      'FAM_WORK_AT_BHN_NAME=FAM_WORK_AT_BHN_NAME'
      'FAM_WORK_AT_BHN_DEPT=FAM_WORK_AT_BHN_DEPT'
      'FAM_WORK_AT_FIN=FAM_WORK_AT_FIN'
      'FAM_WORK_AT_FIN_NAME=FAM_WORK_AT_FIN_NAME'
      'FAM_WORK_AT_FIN_INST_NAME=FAM_WORK_AT_FIN_INST_NAME'
      'FAM_WORK_AS_DIR=FAM_WORK_AS_DIR'
      'FAM_WORK_AS_DIR_NAME=FAM_WORK_AS_DIR_NAME'
      'FAM_WORK_AS_DIR_INST_NAME=FAM_WORK_AS_DIR_INST_NAME'
      'FAM_WORK_AT_GOV=FAM_WORK_AT_GOV'
      'FAM_WORK_AT_GOV_NAME=FAM_WORK_AT_GOV_NAME'
      'FAM_WORK_AT_GOV_INST_NAME=FAM_WORK_AT_GOV_INST_NAME'
      'HOBBIES=HOBBIES'
      'DATA_STATUS=DATA_STATUS'
      'CREATEDBY=CREATEDBY'
      'CREATEDON=CREATEDON'
      'UPDATEDBY=UPDATEDBY'
      'UPDATEDON=UPDATEDON'
      'LIFETIME_ID=LIFETIME_ID'
      'SALES=SALES'
      'ACCOUNT_NUMBER=ACCOUNT_NUMBER'
      'ALT_CODE=ALT_CODE'
      'SUBREK001=SUBREK001'
      'SUBREK004=SUBREK004'
      'SID=SID'
      'RDN=RDN'
      'REF_BANK=REF_BANK'
      'GU_NAME=GU_NAME'
      'GU_HUB=GU_HUB'
      'GU_ID_NO=GU_ID_NO'
      'GU_ID_EXP=GU_ID_EXP'
      'GU_TAXPAYER_NO=GU_TAXPAYER_NO'
      'GU_NATIONALITY=GU_NATIONALITY'
      'GU_GENDER=GU_GENDER'
      'GU_POB=GU_POB'
      'GU_DOB=GU_DOB'
      'GU_MATIAL_STATUS=GU_MATIAL_STATUS'
      'GU_EMAIL=GU_EMAIL'
      'GU_HANDPHONE=GU_HANDPHONE'
      'GU_FAX=GU_FAX'
      'GU_ADDRESS=GU_ADDRESS'
      'GU_CITY=GU_CITY'
      'GU_POSTALCODE=GU_POSTALCODE'
      'GU_PROVINCE=GU_PROVINCE'
      'GU_COUNTRY=GU_COUNTRY'
      'GU_PHONE=GU_PHONE'
      'GU_ADDRESS2=GU_ADDRESS2'
      'GU_CITY2=GU_CITY2'
      'GU_POSTALCODE2=GU_POSTALCODE2'
      'GU_PROVICE2=GU_PROVICE2'
      'GU_COUNTRY2=GU_COUNTRY2'
      'GU_PHONE2=GU_PHONE2'
      'GU_JOBS=GU_JOBS'
      'GU_LAST_POSITION=GU_LAST_POSITION'
      'GU_JOBS_COMPANY=GU_JOBS_COMPANY'
      'GU_JOBS_COMPANY_TYPE=GU_JOBS_COMPANY_TYPE'
      'GU_JOBS_ADDRESS=GU_JOBS_ADDRESS'
      'GU_JOBS_CITY=GU_JOBS_CITY'
      'GU_JOBS_POSTALCODE=GU_JOBS_POSTALCODE'
      'GU_JOBS_PHONE=GU_JOBS_PHONE'
      'GU_JOBS_FAX=GU_JOBS_FAX'
      'GU_JOBS_FUND_SOURCE=GU_JOBS_FUND_SOURCE'
      'GU_JOBS_FUND_SOURCE_OT=GU_JOBS_FUND_SOURCE_OT'
      'GU_JOBS_ANNUAL_SALARY=GU_JOBS_ANNUAL_SALARY'
      'GU_JOBS_MARITAL_STATUS=GU_JOBS_MARITAL_STATUS'
      'GU_CELLPHONE=GU_CELLPHONE'
      'GU_MAIDEN_MOTHER=GU_MAIDEN_MOTHER'
      'REL_FAMILY=REL_FAMILY'
      'HOBBY=HOBBY'
      'ACC_TYPE_SEC=ACC_TYPE_SEC'
      'CLIENT_STATUS=CLIENT_STATUS'
      'SIUP_NO=SIUP_NO'
      'TDP_NO=TDP_NO'
      'TDP_REG_DATE=TDP_REG_DATE'
      'TDP_INVALID_DATE=TDP_INVALID_DATE'
      'APPROVER_HAM_MINISTRI=APPROVER_HAM_MINISTRI'
      'ANNOUNC_STATE_GAZELLE=ANNOUNC_STATE_GAZELLE'
      'TAX_REG_CHK=TAX_REG_CHK'
      'TAS_REG_DATE=TAS_REG_DATE'
      'BUSINESS_ENTITY_CHK=BUSINESS_ENTITY_CHK'
      'BUSINESS_ENTITY_OTHER=BUSINESS_ENTITY_OTHER'
      'BUSINESS_LINE_CHK=BUSINESS_LINE_CHK'
      'BUSINESS_LINE_OTHER=BUSINESS_LINE_OTHER'
      'COMPANY_CHARACTER_CHK=COMPANY_CHARACTER_CHK'
      'COMPANY_CHARACTER_OTHER=COMPANY_CHARACTER_OTHER'
      'OFFC_ADDR_ASSKDP=OFFC_ADDR_ASSKDP'
      'OFFC_CITY=OFFC_CITY'
      'OFFC_ZIPCODE=OFFC_ZIPCODE'
      'OFFC_COUNTRY=OFFC_COUNTRY'
      'CORESP_ADDR=CORESP_ADDR'
      'CORESP_CITY=CORESP_CITY'
      'CORESP_ZIPCODE=CORESP_ZIPCODE'
      'CORESP_COUNTRY=CORESP_COUNTRY'
      'OFFC_BUILD_STATUS=OFFC_BUILD_STATUS'
      'OFFC_LENGTH_COREPON=OFFC_LENGTH_COREPON'
      'OFFC_PHONE_NO=OFFC_PHONE_NO'
      'OFFC_FAX_NO=OFFC_FAX_NO'
      'EMAIL_CHK=EMAIL_CHK'
      'EMAIL_ADDR=EMAIL_ADDR'
      'OFCC_FAX_CHK=OFCC_FAX_CHK'
      'OFFC_FAX_NO_OTHER=OFFC_FAX_NO_OTHER'
      'ANNUAL_NET_PROFIT=ANNUAL_NET_PROFIT'
      'TOTAL_ASSET=TOTAL_ASSET'
      'FUND_SEP_BANK_ACC_NO=FUND_SEP_BANK_ACC_NO'
      'FUND_SEP_BANK_NAME=FUND_SEP_BANK_NAME'
      'FUND_SEP_BANK_BRANCH=FUND_SEP_BANK_BRANCH'
      'FUND_SEP_BANK_BENEFICIARY=FUND_SEP_BANK_BENEFICIARY'
      'INIT_DEPOSIT_FUND=INIT_DEPOSIT_FUND'
      'INIT_DEPOSIT_SHARES=INIT_DEPOSIT_SHARES'
      'RETAINED_EARNING_CHK=RETAINED_EARNING_CHK'
      'RETAINED_EARNING_OTHER=RETAINED_EARNING_OTHER'
      'INFO_EXISTING_SEC_CHK=INFO_EXISTING_SEC_CHK'
      'INFO_EXISTING_SEC_NAME=INFO_EXISTING_SEC_NAME'
      'INFO_EXISTING_SEC_ACC_NO=INFO_EXISTING_SEC_ACC_NO'
      'INFO_EXISTING_REL_CHK=INFO_EXISTING_REL_CHK'
      'INFO_EXISTING_NAME=INFO_EXISTING_NAME'
      'INFO_EXISTING_AFF_CHK=INFO_EXISTING_AFF_CHK'
      'INFO_EXISTING_AFF_NAME=INFO_EXISTING_AFF_NAME'
      'INFO_EXISTING_AFF_RELATION=INFO_EXISTING_AFF_RELATION'
      'INFO_EXISTING_AF_ACCNO=INFO_EXISTING_AF_ACCNO'
      'INFO_EXISTING_CNTRL_CHK=INFO_EXISTING_CNTRL_CHK'
      'INFO_EXISTING_CNTRL_NAME=INFO_EXISTING_CNTRL_NAME'
      'INFO_EXISTING_CNTRL_ACCNO=INFO_EXISTING_CNTRL_ACCNO'
      'INFO_EXISTING_SHR_CHK=INFO_EXISTING_SHR_CHK'
      'INFO_EXISTING_SHR_COMP_NAME=INFO_EXISTING_SHR_COMP_NAME'
      'INFO_EXISTING_SHR_POSITION=INFO_EXISTING_SHR_POSITION'
      'INFO_EXISTING_SHR_RELATION=INFO_EXISTING_SHR_RELATION'
      'INFO_EXISTING_EMT_CHK=INFO_EXISTING_EMT_CHK'
      'INFO_EXISTING_EMT_NAME=INFO_EXISTING_EMT_NAME'
      'INFO_EXISTING_EMN_STOCK=INFO_EXISTING_EMN_STOCK'
      'INFO_EXISTING_EMN_TITLE=INFO_EXISTING_EMN_TITLE'
      'INFO_EXISTING_PE_CHK=INFO_EXISTING_PE_CHK'
      'INFO_EXISTING_PE_COM_NAME=INFO_EXISTING_PE_COM_NAME'
      'INFO_EXISTING_PE_TITLE=INFO_EXISTING_PE_TITLE'
      'INFO_EXISTING_PE_STOCK=INFO_EXISTING_PE_STOCK'
      'INFO_EXISTING_DWN_CHK=INFO_EXISTING_DWN_CHK'
      'INFO_EXISTING_DWN_COM_NAME=INFO_EXISTING_DWN_COM_NAME'
      'INFO_EXISTING_PUB_CHK=INFO_EXISTING_PUB_CHK'
      'INFO_EXISTING_PEP_CHK=INFO_EXISTING_PEP_CHK'
      'INFO_EXISTING_MARKET_CHK=INFO_EXISTING_MARKET_CHK'
      'INFO_EXISTING_MARKET_NAME=INFO_EXISTING_MARKET_NAME'
      'SWIFTCODE=SWIFTCODE'
      'COMP_ESTABLISH_DATE=COMP_ESTABLISH_DATE'
      'COMP_ESTABLISH_PLACE=COMP_ESTABLISH_PLACE'
      'DEED_ESTABLISH_DATE=DEED_ESTABLISH_DATE'
      'DEED_ESTABLISH_PLACE=DEED_ESTABLISH_PLACE'
      'NOTARY=NOTARY'
      'INVS_EXPERIENCE=INVS_EXPERIENCE'
      'INVS_OBJ=INVS_OBJ'
      'INVS_OBJ_OTHER=INVS_OBJ_OTHER'
      'CUST_TYPE=CUST_TYPE'
      'PRD_CODE=PRD_CODE'
      'CLIENT_EXT=CLIENT_EXT'
      'ACCID=ACCID'
      'ENTTID=ENTTID'
      'SPOUSE_NAME=SPOUSE_NAME'
      'EDU_BACKGROUND=EDU_BACKGROUND'
      'EDU_BACKGOUND_OTHER=EDU_BACKGOUND_OTHER'
      'SOURCE_FUND_OTHER=SOURCE_FUND_OTHER'
      'OCCUPATION_OTHER=OCCUPATION_OTHER'
      'NAT_BUSINESS_ENTREPRENEUR=NAT_BUSINESS_ENTREPRENEUR'
      'INVEST_OBJECTIVE=INVEST_OBJECTIVE'
      'INVEST_OBJECTIVE_OTHER=INVEST_OBJECTIVE_OTHER'
      'INV_BANK_ACC_CCY=INV_BANK_ACC_CCY'
      'TAX_REG_DATE=TAX_REG_DATE'
      'EVENT_NAME=EVENT_NAME'
      'LAST_STATUS=LAST_STATUS'
      'BRCODE=BRCODE'
      'BNINVCODE=BNINVCODE'
      'BNINVACCNO=BNINVACCNO'
      'BNINACCNAME=BNINACCNAME'
      'CHKCURRADR=CHKCURRADR'
      'CHKGUCURRADR=CHKGUCURRADR'
      'ONEVENT=ONEVENT'
      'EVCODE=EVCODE'
      'OATYPE=OATYPE'
      'BRANCHID=BRANCHID'
      'EVID=EVID'
      'MODDA=MODDA'
      'MODUI=MODUI'
      'APPDA=APPDA'
      'APPUI=APPUI'
      'UNDER4Y=UNDER4Y'
      'UNDER4YDA=UNDER4YDA'
      'NOTES4Y=NOTES4Y'
      'ISDEL=ISDEL'
      'ID=ID'
      'PIN=PIN'
      'PROVNAME=PROVNAME'
      'COUNTNAME=COUNTNAME'
      'NATIONS=NATIONS'
      'SEC_INCDESC=SEC_INCDESC'
      'BRANCHNAME=BRANCHNAME'
      'CITY=CITY'
      'CITY2=CITY2'
      'RELIGION=RELIGION'
      'RELIGION2=RELIGION2'
      'SUBREK01=SUBREK01'
      'SUBREK04=SUBREK04'
      'SIDNO=SIDNO'
      'CITY1=CITY1'
      'GUCITY=GUCITY'
      'COUNTNAME2=COUNTNAME2'
      'CITYX2=CITYX2'
      'ISPACC=ISPACC'
      'PACCID=PACCID'
      'AUTHORIZED_CAP=AUTHORIZED_CAP'
      'PAID_CAP=PAID_CAP'
      'COMPANY_COUNTRY=COMPANY_COUNTRY'
      'SEC_SETTLEMENT=SEC_SETTLEMENT'
      'SEC_SETTLEMENT_TO=SEC_SETTLEMENT_TO'
      'CASH_SETTLEMENT=CASH_SETTLEMENT'
      'CASH_SETTLEMENT_TO=CASH_SETTLEMENT_TO'
      'INVEST_EXPERIENCE=INVEST_EXPERIENCE'
      'INVEST_EXPERIENCE_OTHER=INVEST_EXPERIENCE_OTHER'
      'ESTIMATE_DAILY_TRADE=ESTIMATE_DAILY_TRADE'
      'GU_LEGALRELATION=GU_LEGALRELATION'
      'RELIGION_CUST=RELIGION_CUST')
    DataSet = cdsGenerateRDNReport
    BCDToCurrency = False
    Left = 588
    Top = 69
  end
  object cdsGenerateRDNReport: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CID'
        ParamType = ptUnknown
        Value = '2'
      end>
    ProviderName = 'dspN_dmReport_qryGenerateRDNReport'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 654
    Top = 132
    object cdsGenerateRDNReportCID: TIntegerField
      FieldName = 'CID'
      Required = True
    end
    object cdsGenerateRDNReportCUST_REG_NO: TStringField
      FieldName = 'CUST_REG_NO'
      Size = 30
    end
    object cdsGenerateRDNReportNAME: TStringField
      FieldName = 'NAME'
      Size = 50
    end
    object cdsGenerateRDNReportPOB: TStringField
      FieldName = 'POB'
    end
    object cdsGenerateRDNReportDOB: TDateField
      FieldName = 'DOB'
    end
    object cdsGenerateRDNReportID_TYPE: TIntegerField
      FieldName = 'ID_TYPE'
    end
    object cdsGenerateRDNReportID_NO: TStringField
      FieldName = 'ID_NO'
      Size = 30
    end
    object cdsGenerateRDNReportID_VALID: TDateField
      FieldName = 'ID_VALID'
    end
    object cdsGenerateRDNReportGENDER: TIntegerField
      FieldName = 'GENDER'
    end
    object cdsGenerateRDNReportNATIONALITY: TStringField
      FieldName = 'NATIONALITY'
      Size = 50
    end
    object cdsGenerateRDNReportTAXPAYER_REG: TStringField
      FieldName = 'TAXPAYER_REG'
      Size = 30
    end
    object cdsGenerateRDNReportTAXPAYER_STATUS: TIntegerField
      FieldName = 'TAXPAYER_STATUS'
    end
    object cdsGenerateRDNReportMARITAL_STATUS: TIntegerField
      FieldName = 'MARITAL_STATUS'
    end
    object cdsGenerateRDNReportMOTHER_NAME: TStringField
      FieldName = 'MOTHER_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportRESIDENT_TYPE: TStringField
      FieldName = 'RESIDENT_TYPE'
      Size = 5
    end
    object cdsGenerateRDNReportOWNERSHIP_STATUS: TStringField
      FieldName = 'OWNERSHIP_STATUS'
      Size = 5
    end
    object cdsGenerateRDNReportSTREET: TStringField
      FieldName = 'STREET'
      Size = 255
    end
    object cdsGenerateRDNReportRT_RW: TStringField
      FieldName = 'RT_RW'
      Size = 10
    end
    object cdsGenerateRDNReportKELURAHAN: TStringField
      FieldName = 'KELURAHAN'
      Size = 50
    end
    object cdsGenerateRDNReportKECAMATAN: TStringField
      FieldName = 'KECAMATAN'
      Size = 50
    end
    object cdsGenerateRDNReportPROVINCE: TStringField
      FieldName = 'PROVINCE'
      Size = 50
    end
    object cdsGenerateRDNReportCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object cdsGenerateRDNReportZIP_CODE: TStringField
      FieldName = 'ZIP_CODE'
      Size = 10
    end
    object cdsGenerateRDNReportRESIDENT_TYPE2: TIntegerField
      FieldName = 'RESIDENT_TYPE2'
    end
    object cdsGenerateRDNReportRESIDENT_TYPE2_OTHERS: TStringField
      FieldName = 'RESIDENT_TYPE2_OTHERS'
      Size = 30
    end
    object cdsGenerateRDNReportOWNERSHIP_STATUS2: TIntegerField
      FieldName = 'OWNERSHIP_STATUS2'
    end
    object cdsGenerateRDNReportOWNERSHIP_STATUS2_OTHERS: TStringField
      FieldName = 'OWNERSHIP_STATUS2_OTHERS'
      Size = 30
    end
    object cdsGenerateRDNReportSTREET2: TStringField
      FieldName = 'STREET2'
      Size = 255
    end
    object cdsGenerateRDNReportRT_RW2: TStringField
      FieldName = 'RT_RW2'
      Size = 10
    end
    object cdsGenerateRDNReportKELURAHAN2: TStringField
      FieldName = 'KELURAHAN2'
      Size = 50
    end
    object cdsGenerateRDNReportKECAMATAN2: TStringField
      FieldName = 'KECAMATAN2'
      Size = 50
    end
    object cdsGenerateRDNReportPROVINCE2: TStringField
      FieldName = 'PROVINCE2'
      Size = 50
    end
    object cdsGenerateRDNReportCOUNTRY2: TStringField
      FieldName = 'COUNTRY2'
      Size = 50
    end
    object cdsGenerateRDNReportZIP_CODE2: TStringField
      FieldName = 'ZIP_CODE2'
      Size = 10
    end
    object cdsGenerateRDNReportEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object cdsGenerateRDNReportHOME_PHONE: TStringField
      FieldName = 'HOME_PHONE'
      Size = 15
    end
    object cdsGenerateRDNReportCELL_PHONE: TStringField
      FieldName = 'CELL_PHONE'
      Size = 15
    end
    object cdsGenerateRDNReportFAX_NO: TStringField
      FieldName = 'FAX_NO'
      Size = 15
    end
    object cdsGenerateRDNReportCORRESPONDENT_ADDRESS: TIntegerField
      FieldName = 'CORRESPONDENT_ADDRESS'
    end
    object cdsGenerateRDNReportOCCUPATION: TIntegerField
      FieldName = 'OCCUPATION'
    end
    object cdsGenerateRDNReportFIELD_WORK: TStringField
      FieldName = 'FIELD_WORK'
    end
    object cdsGenerateRDNReportCOMPANY: TStringField
      FieldName = 'COMPANY'
    end
    object cdsGenerateRDNReportPOSITION: TStringField
      FieldName = 'POSITION'
    end
    object cdsGenerateRDNReportJOB_DIVISION: TStringField
      FieldName = 'JOB_DIVISION'
    end
    object cdsGenerateRDNReportYOS_MONTH: TStringField
      FieldName = 'YOS_MONTH'
      Size = 5
    end
    object cdsGenerateRDNReportYOS_YEAR: TStringField
      FieldName = 'YOS_YEAR'
      Size = 5
    end
    object cdsGenerateRDNReportCOMPANY_PHONE: TStringField
      FieldName = 'COMPANY_PHONE'
      Size = 15
    end
    object cdsGenerateRDNReportCOMPANY_PHONE_EXT: TStringField
      FieldName = 'COMPANY_PHONE_EXT'
      Size = 10
    end
    object cdsGenerateRDNReportCOMPANY_ADDRESS: TStringField
      FieldName = 'COMPANY_ADDRESS'
      Size = 255
    end
    object cdsGenerateRDNReportFUND_SOURCE: TIntegerField
      FieldName = 'FUND_SOURCE'
    end
    object cdsGenerateRDNReportANNUAL_INCOME: TIntegerField
      FieldName = 'ANNUAL_INCOME'
    end
    object cdsGenerateRDNReportREL_FAMILY_NAME: TStringField
      FieldName = 'REL_FAMILY_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportREL_FAMILY_PHONE: TStringField
      FieldName = 'REL_FAMILY_PHONE'
      Size = 15
    end
    object cdsGenerateRDNReportBENEFICIARY_NAME: TStringField
      FieldName = 'BENEFICIARY_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportBENEFICIARY_PHONE: TStringField
      FieldName = 'BENEFICIARY_PHONE'
      Size = 50
    end
    object cdsGenerateRDNReportBENEFICIARY_RELATION: TStringField
      FieldName = 'BENEFICIARY_RELATION'
      Size = 30
    end
    object cdsGenerateRDNReportBENEFICIARY_ID_NO: TStringField
      FieldName = 'BENEFICIARY_ID_NO'
      Size = 30
    end
    object cdsGenerateRDNReportINV_BANK: TStringField
      FieldName = 'INV_BANK'
      Size = 30
    end
    object cdsGenerateRDNReportINV_BANK_NAME: TStringField
      FieldName = 'INV_BANK_NAME'
      Size = 30
    end
    object cdsGenerateRDNReportINV_BANK_ACC_NAME: TStringField
      FieldName = 'INV_BANK_ACC_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportINV_BANK_ACC_NO: TStringField
      FieldName = 'INV_BANK_ACC_NO'
      Size = 50
    end
    object cdsGenerateRDNReportINV_BANK_BRANCH: TStringField
      FieldName = 'INV_BANK_BRANCH'
      Size = 50
    end
    object cdsGenerateRDNReportFAM_WORK_AT_BHN: TIntegerField
      FieldName = 'FAM_WORK_AT_BHN'
    end
    object cdsGenerateRDNReportFAM_WORK_AT_BHN_NAME: TStringField
      FieldName = 'FAM_WORK_AT_BHN_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportFAM_WORK_AT_BHN_DEPT: TStringField
      FieldName = 'FAM_WORK_AT_BHN_DEPT'
      Size = 50
    end
    object cdsGenerateRDNReportFAM_WORK_AT_FIN: TIntegerField
      FieldName = 'FAM_WORK_AT_FIN'
    end
    object cdsGenerateRDNReportFAM_WORK_AT_FIN_NAME: TStringField
      FieldName = 'FAM_WORK_AT_FIN_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportFAM_WORK_AT_FIN_INST_NAME: TStringField
      FieldName = 'FAM_WORK_AT_FIN_INST_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportFAM_WORK_AS_DIR: TIntegerField
      FieldName = 'FAM_WORK_AS_DIR'
    end
    object cdsGenerateRDNReportFAM_WORK_AS_DIR_NAME: TStringField
      FieldName = 'FAM_WORK_AS_DIR_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportFAM_WORK_AS_DIR_INST_NAME: TStringField
      FieldName = 'FAM_WORK_AS_DIR_INST_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportFAM_WORK_AT_GOV: TIntegerField
      FieldName = 'FAM_WORK_AT_GOV'
    end
    object cdsGenerateRDNReportFAM_WORK_AT_GOV_NAME: TStringField
      FieldName = 'FAM_WORK_AT_GOV_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportFAM_WORK_AT_GOV_INST_NAME: TStringField
      FieldName = 'FAM_WORK_AT_GOV_INST_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportHOBBIES: TStringField
      FieldName = 'HOBBIES'
      Size = 255
    end
    object cdsGenerateRDNReportDATA_STATUS: TIntegerField
      FieldName = 'DATA_STATUS'
    end
    object cdsGenerateRDNReportCREATEDBY: TStringField
      FieldName = 'CREATEDBY'
      Size = 30
    end
    object cdsGenerateRDNReportCREATEDON: TDateTimeField
      FieldName = 'CREATEDON'
    end
    object cdsGenerateRDNReportUPDATEDBY: TStringField
      FieldName = 'UPDATEDBY'
      Size = 30
    end
    object cdsGenerateRDNReportUPDATEDON: TDateTimeField
      FieldName = 'UPDATEDON'
    end
    object cdsGenerateRDNReportLIFETIME_ID: TIntegerField
      FieldName = 'LIFETIME_ID'
    end
    object cdsGenerateRDNReportSALES: TStringField
      FieldName = 'SALES'
      Size = 10
    end
    object cdsGenerateRDNReportACCOUNT_NUMBER: TStringField
      FieldName = 'ACCOUNT_NUMBER'
      Size = 25
    end
    object cdsGenerateRDNReportALT_CODE: TStringField
      FieldName = 'ALT_CODE'
      Size = 15
    end
    object cdsGenerateRDNReportSUBREK001: TStringField
      FieldName = 'SUBREK001'
    end
    object cdsGenerateRDNReportSUBREK004: TStringField
      FieldName = 'SUBREK004'
    end
    object cdsGenerateRDNReportSID: TStringField
      FieldName = 'SID'
      Size = 30
    end
    object cdsGenerateRDNReportRDN: TStringField
      FieldName = 'RDN'
      Size = 30
    end
    object cdsGenerateRDNReportREF_BANK: TStringField
      FieldName = 'REF_BANK'
      Size = 30
    end
    object cdsGenerateRDNReportGU_NAME: TStringField
      FieldName = 'GU_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportGU_HUB: TIntegerField
      FieldName = 'GU_HUB'
    end
    object cdsGenerateRDNReportGU_ID_NO: TStringField
      FieldName = 'GU_ID_NO'
      Size = 50
    end
    object cdsGenerateRDNReportGU_ID_EXP: TDateTimeField
      FieldName = 'GU_ID_EXP'
    end
    object cdsGenerateRDNReportGU_TAXPAYER_NO: TStringField
      FieldName = 'GU_TAXPAYER_NO'
      Size = 50
    end
    object cdsGenerateRDNReportGU_NATIONALITY: TStringField
      FieldName = 'GU_NATIONALITY'
      Size = 30
    end
    object cdsGenerateRDNReportGU_GENDER: TIntegerField
      FieldName = 'GU_GENDER'
    end
    object cdsGenerateRDNReportGU_POB: TStringField
      FieldName = 'GU_POB'
      Size = 50
    end
    object cdsGenerateRDNReportGU_DOB: TDateTimeField
      FieldName = 'GU_DOB'
    end
    object cdsGenerateRDNReportGU_MATIAL_STATUS: TIntegerField
      FieldName = 'GU_MATIAL_STATUS'
    end
    object cdsGenerateRDNReportGU_EMAIL: TStringField
      FieldName = 'GU_EMAIL'
      Size = 50
    end
    object cdsGenerateRDNReportGU_HANDPHONE: TStringField
      FieldName = 'GU_HANDPHONE'
      Size = 30
    end
    object cdsGenerateRDNReportGU_FAX: TStringField
      FieldName = 'GU_FAX'
      Size = 30
    end
    object cdsGenerateRDNReportGU_ADDRESS: TStringField
      FieldName = 'GU_ADDRESS'
      Size = 255
    end
    object cdsGenerateRDNReportGU_CITY: TStringField
      FieldName = 'GU_CITY'
      Size = 50
    end
    object cdsGenerateRDNReportGU_POSTALCODE: TStringField
      FieldName = 'GU_POSTALCODE'
      Size = 10
    end
    object cdsGenerateRDNReportGU_PROVINCE: TStringField
      FieldName = 'GU_PROVINCE'
      Size = 50
    end
    object cdsGenerateRDNReportGU_COUNTRY: TStringField
      FieldName = 'GU_COUNTRY'
      Size = 50
    end
    object cdsGenerateRDNReportGU_PHONE: TStringField
      FieldName = 'GU_PHONE'
      Size = 30
    end
    object cdsGenerateRDNReportGU_ADDRESS2: TStringField
      FieldName = 'GU_ADDRESS2'
      Size = 255
    end
    object cdsGenerateRDNReportGU_CITY2: TStringField
      FieldName = 'GU_CITY2'
      Size = 50
    end
    object cdsGenerateRDNReportGU_POSTALCODE2: TStringField
      FieldName = 'GU_POSTALCODE2'
      Size = 10
    end
    object cdsGenerateRDNReportGU_PROVICE2: TStringField
      FieldName = 'GU_PROVICE2'
      Size = 50
    end
    object cdsGenerateRDNReportGU_COUNTRY2: TStringField
      FieldName = 'GU_COUNTRY2'
      Size = 50
    end
    object cdsGenerateRDNReportGU_PHONE2: TStringField
      FieldName = 'GU_PHONE2'
    end
    object cdsGenerateRDNReportGU_JOBS: TStringField
      FieldName = 'GU_JOBS'
      Size = 50
    end
    object cdsGenerateRDNReportGU_LAST_POSITION: TStringField
      FieldName = 'GU_LAST_POSITION'
      Size = 50
    end
    object cdsGenerateRDNReportGU_JOBS_COMPANY: TStringField
      FieldName = 'GU_JOBS_COMPANY'
      Size = 50
    end
    object cdsGenerateRDNReportGU_JOBS_COMPANY_TYPE: TStringField
      FieldName = 'GU_JOBS_COMPANY_TYPE'
      Size = 50
    end
    object cdsGenerateRDNReportGU_JOBS_ADDRESS: TStringField
      FieldName = 'GU_JOBS_ADDRESS'
      Size = 255
    end
    object cdsGenerateRDNReportGU_JOBS_CITY: TStringField
      FieldName = 'GU_JOBS_CITY'
      Size = 50
    end
    object cdsGenerateRDNReportGU_JOBS_POSTALCODE: TStringField
      FieldName = 'GU_JOBS_POSTALCODE'
      Size = 10
    end
    object cdsGenerateRDNReportGU_JOBS_PHONE: TStringField
      FieldName = 'GU_JOBS_PHONE'
      Size = 30
    end
    object cdsGenerateRDNReportGU_JOBS_FAX: TStringField
      FieldName = 'GU_JOBS_FAX'
      Size = 30
    end
    object cdsGenerateRDNReportGU_JOBS_FUND_SOURCE: TStringField
      FieldName = 'GU_JOBS_FUND_SOURCE'
      Size = 5
    end
    object cdsGenerateRDNReportGU_JOBS_FUND_SOURCE_OT: TStringField
      FieldName = 'GU_JOBS_FUND_SOURCE_OT'
      Size = 50
    end
    object cdsGenerateRDNReportGU_JOBS_ANNUAL_SALARY: TIntegerField
      FieldName = 'GU_JOBS_ANNUAL_SALARY'
    end
    object cdsGenerateRDNReportGU_JOBS_MARITAL_STATUS: TIntegerField
      FieldName = 'GU_JOBS_MARITAL_STATUS'
    end
    object cdsGenerateRDNReportGU_CELLPHONE: TStringField
      FieldName = 'GU_CELLPHONE'
      Size = 30
    end
    object cdsGenerateRDNReportGU_MAIDEN_MOTHER: TStringField
      FieldName = 'GU_MAIDEN_MOTHER'
      Size = 50
    end
    object cdsGenerateRDNReportREL_FAMILY: TIntegerField
      FieldName = 'REL_FAMILY'
    end
    object cdsGenerateRDNReportHOBBY: TStringField
      FieldName = 'HOBBY'
      Size = 50
    end
    object cdsGenerateRDNReportACC_TYPE_SEC: TIntegerField
      FieldName = 'ACC_TYPE_SEC'
    end
    object cdsGenerateRDNReportCLIENT_STATUS: TIntegerField
      FieldName = 'CLIENT_STATUS'
    end
    object cdsGenerateRDNReportSIUP_NO: TStringField
      FieldName = 'SIUP_NO'
      Size = 50
    end
    object cdsGenerateRDNReportTDP_NO: TStringField
      FieldName = 'TDP_NO'
      Size = 50
    end
    object cdsGenerateRDNReportTDP_REG_DATE: TStringField
      FieldName = 'TDP_REG_DATE'
      Size = 50
    end
    object cdsGenerateRDNReportTDP_INVALID_DATE: TDateTimeField
      FieldName = 'TDP_INVALID_DATE'
    end
    object cdsGenerateRDNReportAPPROVER_HAM_MINISTRI: TStringField
      FieldName = 'APPROVER_HAM_MINISTRI'
      Size = 50
    end
    object cdsGenerateRDNReportANNOUNC_STATE_GAZELLE: TStringField
      FieldName = 'ANNOUNC_STATE_GAZELLE'
      Size = 100
    end
    object cdsGenerateRDNReportTAX_REG_CHK: TIntegerField
      FieldName = 'TAX_REG_CHK'
    end
    object cdsGenerateRDNReportTAS_REG_DATE: TDateTimeField
      FieldName = 'TAS_REG_DATE'
    end
    object cdsGenerateRDNReportBUSINESS_ENTITY_CHK: TIntegerField
      FieldName = 'BUSINESS_ENTITY_CHK'
    end
    object cdsGenerateRDNReportBUSINESS_ENTITY_OTHER: TStringField
      FieldName = 'BUSINESS_ENTITY_OTHER'
      Size = 50
    end
    object cdsGenerateRDNReportBUSINESS_LINE_CHK: TIntegerField
      FieldName = 'BUSINESS_LINE_CHK'
    end
    object cdsGenerateRDNReportBUSINESS_LINE_OTHER: TStringField
      FieldName = 'BUSINESS_LINE_OTHER'
      Size = 50
    end
    object cdsGenerateRDNReportCOMPANY_CHARACTER_CHK: TIntegerField
      FieldName = 'COMPANY_CHARACTER_CHK'
    end
    object cdsGenerateRDNReportCOMPANY_CHARACTER_OTHER: TStringField
      FieldName = 'COMPANY_CHARACTER_OTHER'
      Size = 50
    end
    object cdsGenerateRDNReportOFFC_ADDR_ASSKDP: TStringField
      FieldName = 'OFFC_ADDR_ASSKDP'
      Size = 255
    end
    object cdsGenerateRDNReportOFFC_CITY: TStringField
      FieldName = 'OFFC_CITY'
      Size = 50
    end
    object cdsGenerateRDNReportOFFC_ZIPCODE: TStringField
      FieldName = 'OFFC_ZIPCODE'
      Size = 10
    end
    object cdsGenerateRDNReportOFFC_COUNTRY: TStringField
      FieldName = 'OFFC_COUNTRY'
      Size = 50
    end
    object cdsGenerateRDNReportCORESP_ADDR: TStringField
      FieldName = 'CORESP_ADDR'
      Size = 255
    end
    object cdsGenerateRDNReportCORESP_CITY: TStringField
      FieldName = 'CORESP_CITY'
      Size = 50
    end
    object cdsGenerateRDNReportCORESP_ZIPCODE: TStringField
      FieldName = 'CORESP_ZIPCODE'
      Size = 10
    end
    object cdsGenerateRDNReportCORESP_COUNTRY: TStringField
      FieldName = 'CORESP_COUNTRY'
      Size = 50
    end
    object cdsGenerateRDNReportOFFC_BUILD_STATUS: TIntegerField
      FieldName = 'OFFC_BUILD_STATUS'
    end
    object cdsGenerateRDNReportOFFC_LENGTH_COREPON: TIntegerField
      FieldName = 'OFFC_LENGTH_COREPON'
    end
    object cdsGenerateRDNReportOFFC_PHONE_NO: TStringField
      FieldName = 'OFFC_PHONE_NO'
    end
    object cdsGenerateRDNReportOFFC_FAX_NO: TStringField
      FieldName = 'OFFC_FAX_NO'
    end
    object cdsGenerateRDNReportEMAIL_CHK: TIntegerField
      FieldName = 'EMAIL_CHK'
    end
    object cdsGenerateRDNReportEMAIL_ADDR: TStringField
      FieldName = 'EMAIL_ADDR'
      Size = 30
    end
    object cdsGenerateRDNReportOFCC_FAX_CHK: TIntegerField
      FieldName = 'OFCC_FAX_CHK'
    end
    object cdsGenerateRDNReportOFFC_FAX_NO_OTHER: TStringField
      FieldName = 'OFFC_FAX_NO_OTHER'
      Size = 50
    end
    object cdsGenerateRDNReportANNUAL_NET_PROFIT: TIntegerField
      FieldName = 'ANNUAL_NET_PROFIT'
    end
    object cdsGenerateRDNReportTOTAL_ASSET: TIntegerField
      FieldName = 'TOTAL_ASSET'
    end
    object cdsGenerateRDNReportFUND_SEP_BANK_ACC_NO: TStringField
      FieldName = 'FUND_SEP_BANK_ACC_NO'
      Size = 50
    end
    object cdsGenerateRDNReportFUND_SEP_BANK_NAME: TStringField
      FieldName = 'FUND_SEP_BANK_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportFUND_SEP_BANK_BRANCH: TStringField
      FieldName = 'FUND_SEP_BANK_BRANCH'
      Size = 30
    end
    object cdsGenerateRDNReportFUND_SEP_BANK_BENEFICIARY: TStringField
      FieldName = 'FUND_SEP_BANK_BENEFICIARY'
      Size = 30
    end
    object cdsGenerateRDNReportINIT_DEPOSIT_FUND: TFloatField
      FieldName = 'INIT_DEPOSIT_FUND'
    end
    object cdsGenerateRDNReportINIT_DEPOSIT_SHARES: TFloatField
      FieldName = 'INIT_DEPOSIT_SHARES'
    end
    object cdsGenerateRDNReportRETAINED_EARNING_CHK: TIntegerField
      FieldName = 'RETAINED_EARNING_CHK'
    end
    object cdsGenerateRDNReportRETAINED_EARNING_OTHER: TStringField
      FieldName = 'RETAINED_EARNING_OTHER'
      Size = 50
    end
    object cdsGenerateRDNReportINFO_EXISTING_SEC_CHK: TIntegerField
      FieldName = 'INFO_EXISTING_SEC_CHK'
    end
    object cdsGenerateRDNReportINFO_EXISTING_SEC_NAME: TStringField
      FieldName = 'INFO_EXISTING_SEC_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportINFO_EXISTING_SEC_ACC_NO: TStringField
      FieldName = 'INFO_EXISTING_SEC_ACC_NO'
      Size = 50
    end
    object cdsGenerateRDNReportINFO_EXISTING_REL_CHK: TIntegerField
      FieldName = 'INFO_EXISTING_REL_CHK'
    end
    object cdsGenerateRDNReportINFO_EXISTING_NAME: TStringField
      FieldName = 'INFO_EXISTING_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportINFO_EXISTING_AFF_CHK: TIntegerField
      FieldName = 'INFO_EXISTING_AFF_CHK'
    end
    object cdsGenerateRDNReportINFO_EXISTING_AFF_NAME: TStringField
      FieldName = 'INFO_EXISTING_AFF_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportINFO_EXISTING_AFF_RELATION: TStringField
      FieldName = 'INFO_EXISTING_AFF_RELATION'
      Size = 50
    end
    object cdsGenerateRDNReportINFO_EXISTING_AF_ACCNO: TStringField
      FieldName = 'INFO_EXISTING_AF_ACCNO'
      Size = 30
    end
    object cdsGenerateRDNReportINFO_EXISTING_CNTRL_CHK: TIntegerField
      FieldName = 'INFO_EXISTING_CNTRL_CHK'
    end
    object cdsGenerateRDNReportINFO_EXISTING_CNTRL_NAME: TStringField
      FieldName = 'INFO_EXISTING_CNTRL_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportINFO_EXISTING_CNTRL_ACCNO: TStringField
      FieldName = 'INFO_EXISTING_CNTRL_ACCNO'
      Size = 30
    end
    object cdsGenerateRDNReportINFO_EXISTING_SHR_CHK: TIntegerField
      FieldName = 'INFO_EXISTING_SHR_CHK'
    end
    object cdsGenerateRDNReportINFO_EXISTING_SHR_COMP_NAME: TStringField
      FieldName = 'INFO_EXISTING_SHR_COMP_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportINFO_EXISTING_SHR_POSITION: TStringField
      FieldName = 'INFO_EXISTING_SHR_POSITION'
      Size = 50
    end
    object cdsGenerateRDNReportINFO_EXISTING_SHR_RELATION: TStringField
      FieldName = 'INFO_EXISTING_SHR_RELATION'
      Size = 50
    end
    object cdsGenerateRDNReportINFO_EXISTING_EMT_CHK: TIntegerField
      FieldName = 'INFO_EXISTING_EMT_CHK'
    end
    object cdsGenerateRDNReportINFO_EXISTING_EMT_NAME: TStringField
      FieldName = 'INFO_EXISTING_EMT_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportINFO_EXISTING_EMN_STOCK: TFloatField
      FieldName = 'INFO_EXISTING_EMN_STOCK'
    end
    object cdsGenerateRDNReportINFO_EXISTING_EMN_TITLE: TStringField
      FieldName = 'INFO_EXISTING_EMN_TITLE'
      Size = 50
    end
    object cdsGenerateRDNReportINFO_EXISTING_PE_CHK: TIntegerField
      FieldName = 'INFO_EXISTING_PE_CHK'
    end
    object cdsGenerateRDNReportINFO_EXISTING_PE_COM_NAME: TStringField
      FieldName = 'INFO_EXISTING_PE_COM_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportINFO_EXISTING_PE_TITLE: TStringField
      FieldName = 'INFO_EXISTING_PE_TITLE'
      Size = 50
    end
    object cdsGenerateRDNReportINFO_EXISTING_PE_STOCK: TFloatField
      FieldName = 'INFO_EXISTING_PE_STOCK'
    end
    object cdsGenerateRDNReportINFO_EXISTING_DWN_CHK: TIntegerField
      FieldName = 'INFO_EXISTING_DWN_CHK'
    end
    object cdsGenerateRDNReportINFO_EXISTING_DWN_COM_NAME: TStringField
      FieldName = 'INFO_EXISTING_DWN_COM_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportINFO_EXISTING_PUB_CHK: TIntegerField
      FieldName = 'INFO_EXISTING_PUB_CHK'
    end
    object cdsGenerateRDNReportINFO_EXISTING_PEP_CHK: TIntegerField
      FieldName = 'INFO_EXISTING_PEP_CHK'
    end
    object cdsGenerateRDNReportINFO_EXISTING_MARKET_CHK: TIntegerField
      FieldName = 'INFO_EXISTING_MARKET_CHK'
    end
    object cdsGenerateRDNReportINFO_EXISTING_MARKET_NAME: TStringField
      FieldName = 'INFO_EXISTING_MARKET_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportSWIFTCODE: TStringField
      FieldName = 'SWIFTCODE'
      Size = 50
    end
    object cdsGenerateRDNReportCOMP_ESTABLISH_DATE: TDateTimeField
      FieldName = 'COMP_ESTABLISH_DATE'
    end
    object cdsGenerateRDNReportCOMP_ESTABLISH_PLACE: TStringField
      FieldName = 'COMP_ESTABLISH_PLACE'
      Size = 50
    end
    object cdsGenerateRDNReportDEED_ESTABLISH_DATE: TDateTimeField
      FieldName = 'DEED_ESTABLISH_DATE'
    end
    object cdsGenerateRDNReportDEED_ESTABLISH_PLACE: TStringField
      FieldName = 'DEED_ESTABLISH_PLACE'
      Size = 50
    end
    object cdsGenerateRDNReportNOTARY: TStringField
      FieldName = 'NOTARY'
      Size = 50
    end
    object cdsGenerateRDNReportINVS_EXPERIENCE: TIntegerField
      FieldName = 'INVS_EXPERIENCE'
    end
    object cdsGenerateRDNReportINVS_OBJ: TIntegerField
      FieldName = 'INVS_OBJ'
    end
    object cdsGenerateRDNReportINVS_OBJ_OTHER: TStringField
      FieldName = 'INVS_OBJ_OTHER'
      Size = 50
    end
    object cdsGenerateRDNReportCUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
    end
    object cdsGenerateRDNReportPRD_CODE: TStringField
      FieldName = 'PRD_CODE'
      Size = 10
    end
    object cdsGenerateRDNReportCLIENT_EXT: TIntegerField
      FieldName = 'CLIENT_EXT'
    end
    object cdsGenerateRDNReportACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsGenerateRDNReportENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsGenerateRDNReportSPOUSE_NAME: TStringField
      FieldName = 'SPOUSE_NAME'
      Size = 100
    end
    object cdsGenerateRDNReportEDU_BACKGROUND: TIntegerField
      FieldName = 'EDU_BACKGROUND'
    end
    object cdsGenerateRDNReportEDU_BACKGOUND_OTHER: TStringField
      FieldName = 'EDU_BACKGOUND_OTHER'
      Size = 100
    end
    object cdsGenerateRDNReportSOURCE_FUND_OTHER: TStringField
      FieldName = 'SOURCE_FUND_OTHER'
      Size = 100
    end
    object cdsGenerateRDNReportOCCUPATION_OTHER: TStringField
      FieldName = 'OCCUPATION_OTHER'
      Size = 100
    end
    object cdsGenerateRDNReportNAT_BUSINESS_ENTREPRENEUR: TStringField
      FieldName = 'NAT_BUSINESS_ENTREPRENEUR'
      Size = 100
    end
    object cdsGenerateRDNReportINVEST_OBJECTIVE: TIntegerField
      FieldName = 'INVEST_OBJECTIVE'
    end
    object cdsGenerateRDNReportINVEST_OBJECTIVE_OTHER: TStringField
      FieldName = 'INVEST_OBJECTIVE_OTHER'
      Size = 100
    end
    object cdsGenerateRDNReportINV_BANK_ACC_CCY: TStringField
      FieldName = 'INV_BANK_ACC_CCY'
      Size = 10
    end
    object cdsGenerateRDNReportTAX_REG_DATE: TDateField
      FieldName = 'TAX_REG_DATE'
    end
    object cdsGenerateRDNReportEVENT_NAME: TStringField
      FieldName = 'EVENT_NAME'
      Size = 50
    end
    object cdsGenerateRDNReportLAST_STATUS: TStringField
      FieldName = 'LAST_STATUS'
      Size = 30
    end
    object cdsGenerateRDNReportBRCODE: TStringField
      FieldName = 'BRCODE'
    end
    object cdsGenerateRDNReportBNINVCODE: TStringField
      FieldName = 'BNINVCODE'
      Size = 10
    end
    object cdsGenerateRDNReportBNINVACCNO: TStringField
      FieldName = 'BNINVACCNO'
    end
    object cdsGenerateRDNReportBNINACCNAME: TStringField
      FieldName = 'BNINACCNAME'
      Size = 100
    end
    object cdsGenerateRDNReportCHKCURRADR: TStringField
      FieldName = 'CHKCURRADR'
      Size = 1
    end
    object cdsGenerateRDNReportCHKGUCURRADR: TStringField
      FieldName = 'CHKGUCURRADR'
      Size = 1
    end
    object cdsGenerateRDNReportONEVENT: TStringField
      FieldName = 'ONEVENT'
      Size = 1
    end
    object cdsGenerateRDNReportEVCODE: TStringField
      FieldName = 'EVCODE'
    end
    object cdsGenerateRDNReportOATYPE: TStringField
      FieldName = 'OATYPE'
      Size = 10
    end
    object cdsGenerateRDNReportBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsGenerateRDNReportEVID: TLargeintField
      FieldName = 'EVID'
    end
    object cdsGenerateRDNReportMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsGenerateRDNReportMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsGenerateRDNReportAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsGenerateRDNReportAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsGenerateRDNReportUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsGenerateRDNReportUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsGenerateRDNReportNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsGenerateRDNReportISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsGenerateRDNReportID: TLargeintField
      FieldName = 'ID'
    end
    object cdsGenerateRDNReportPIN: TStringField
      FieldName = 'PIN'
    end
    object cdsGenerateRDNReportPROVNAME: TStringField
      FieldName = 'PROVNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsGenerateRDNReportCOUNTNAME: TStringField
      FieldName = 'COUNTNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsGenerateRDNReportNATIONS: TStringField
      FieldName = 'NATIONS'
      ReadOnly = True
      Size = 50
    end
    object cdsGenerateRDNReportSEC_INCDESC: TStringField
      FieldName = 'SEC_INCDESC'
      ReadOnly = True
      Size = 50
    end
    object cdsGenerateRDNReportBRANCHNAME: TStringField
      FieldName = 'BRANCHNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsGenerateRDNReportCITY: TStringField
      FieldName = 'CITY'
      Size = 50
    end
    object cdsGenerateRDNReportCITY2: TStringField
      FieldName = 'CITY2'
      Size = 50
    end
    object cdsGenerateRDNReportRELIGION: TStringField
      FieldName = 'RELIGION'
      Size = 50
    end
    object cdsGenerateRDNReportRELIGION2: TStringField
      FieldName = 'RELIGION2'
      Size = 50
    end
    object cdsGenerateRDNReportSUBREK01: TStringField
      FieldName = 'SUBREK01'
      ReadOnly = True
      Size = 50
    end
    object cdsGenerateRDNReportSUBREK04: TStringField
      FieldName = 'SUBREK04'
      ReadOnly = True
      Size = 50
    end
    object cdsGenerateRDNReportSIDNO: TStringField
      FieldName = 'SIDNO'
      ReadOnly = True
      Size = 50
    end
    object cdsGenerateRDNReportCITY1: TStringField
      FieldName = 'CITY1'
      ReadOnly = True
      Size = 50
    end
    object cdsGenerateRDNReportGUCITY: TStringField
      FieldName = 'GUCITY'
      ReadOnly = True
      Size = 50
    end
    object cdsGenerateRDNReportCOUNTNAME2: TStringField
      FieldName = 'COUNTNAME2'
      ReadOnly = True
      Size = 50
    end
    object cdsGenerateRDNReportCITYX2: TStringField
      FieldName = 'CITYX2'
      ReadOnly = True
      Size = 50
    end
    object cdsGenerateRDNReportISPACC: TStringField
      FieldName = 'ISPACC'
      Size = 1
    end
    object cdsGenerateRDNReportPACCID: TLargeintField
      FieldName = 'PACCID'
    end
    object cdsGenerateRDNReportAUTHORIZED_CAP: TFloatField
      FieldName = 'AUTHORIZED_CAP'
    end
    object cdsGenerateRDNReportPAID_CAP: TFloatField
      FieldName = 'PAID_CAP'
    end
    object cdsGenerateRDNReportCOMPANY_COUNTRY: TStringField
      FieldName = 'COMPANY_COUNTRY'
      Size = 50
    end
    object cdsGenerateRDNReportSEC_SETTLEMENT: TIntegerField
      FieldName = 'SEC_SETTLEMENT'
    end
    object cdsGenerateRDNReportSEC_SETTLEMENT_TO: TStringField
      FieldName = 'SEC_SETTLEMENT_TO'
      Size = 50
    end
    object cdsGenerateRDNReportCASH_SETTLEMENT: TIntegerField
      FieldName = 'CASH_SETTLEMENT'
    end
    object cdsGenerateRDNReportCASH_SETTLEMENT_TO: TStringField
      FieldName = 'CASH_SETTLEMENT_TO'
      Size = 50
    end
    object cdsGenerateRDNReportINVEST_EXPERIENCE: TIntegerField
      FieldName = 'INVEST_EXPERIENCE'
    end
    object cdsGenerateRDNReportINVEST_EXPERIENCE_OTHER: TStringField
      FieldName = 'INVEST_EXPERIENCE_OTHER'
      Size = 50
    end
    object cdsGenerateRDNReportESTIMATE_DAILY_TRADE: TIntegerField
      FieldName = 'ESTIMATE_DAILY_TRADE'
    end
    object cdsGenerateRDNReportGU_LEGALRELATION: TStringField
      FieldName = 'GU_LEGALRELATION'
      Size = 50
    end
    object cdsGenerateRDNReportRELIGION_CUST: TStringField
      FieldName = 'RELIGION_CUST'
      ReadOnly = True
      Required = True
      Size = 10
    end
  end
  object rptPDF: TfrxReport
    Version = '4.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41904.536480439800000000
    ReportOptions.LastChange = 42025.810804780100000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 780
    Top = 99
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = True
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 759
    Top = 174
  end
  object GenerateRDN: TNClientReportContainer
    ReportClient = dmGlobal.ReportClient
    ReportName = 'Opening Account\OABBNI.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'CID'
        ParamType = ptInput
      end>
    Left = 282
    Top = 207
  end
  object cdsKSEIRequestByCID: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryKSEIRequestByCID'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 440
    Top = 288
    object cdsKSEIRequestByCIDKSEIREQUESTID: TLargeintField
      FieldName = 'KSEIREQUESTID'
      Required = True
    end
    object cdsKSEIRequestByCIDREQUESTDATE: TDateTimeField
      FieldName = 'REQUESTDATE'
    end
    object cdsKSEIRequestByCIDCOBREQUESTCODE: TStringField
      FieldName = 'COBREQUESTCODE'
      Size = 30
    end
    object cdsKSEIRequestByCIDOATYPE: TStringField
      FieldName = 'OATYPE'
      Size = 10
    end
    object cdsKSEIRequestByCIDCLIENTNAME: TStringField
      FieldName = 'CLIENTNAME'
      Size = 100
    end
    object cdsKSEIRequestByCIDCLEINTTYPE: TStringField
      FieldName = 'CLEINTTYPE'
      Size = 1
    end
    object cdsKSEIRequestByCIDBRANCH: TStringField
      FieldName = 'BRANCH'
      Size = 10
    end
    object cdsKSEIRequestByCIDSUBREK01: TStringField
      FieldName = 'SUBREK01'
      Size = 50
    end
    object cdsKSEIRequestByCIDSUBREK01STS: TStringField
      FieldName = 'SUBREK01STS'
      Size = 1
    end
    object cdsKSEIRequestByCIDSUBREK04: TStringField
      FieldName = 'SUBREK04'
      Size = 50
    end
    object cdsKSEIRequestByCIDSUBREK04STS: TStringField
      FieldName = 'SUBREK04STS'
      Size = 1
    end
    object cdsKSEIRequestByCIDSID: TStringField
      FieldName = 'SID'
      Size = 50
    end
    object cdsKSEIRequestByCIDSIDSTS: TStringField
      FieldName = 'SIDSTS'
      Size = 1
    end
    object cdsKSEIRequestByCIDSUBREK01DATE: TDateTimeField
      FieldName = 'SUBREK01DATE'
    end
    object cdsKSEIRequestByCIDSUBREK04DATE: TDateTimeField
      FieldName = 'SUBREK04DATE'
    end
    object cdsKSEIRequestByCIDSIDDATE: TDateTimeField
      FieldName = 'SIDDATE'
    end
    object cdsKSEIRequestByCIDREQNOTES: TStringField
      FieldName = 'REQNOTES'
      Size = 200
    end
    object cdsKSEIRequestByCIDBRKCODE: TStringField
      FieldName = 'BRKCODE'
      Size = 30
    end
    object cdsKSEIRequestByCIDIDREFF: TStringField
      FieldName = 'IDREFF'
    end
    object cdsKSEIRequestByCIDRSTATUS: TStringField
      FieldName = 'RSTATUS'
      Size = 5
    end
    object cdsKSEIRequestByCIDCID: TLargeintField
      FieldName = 'CID'
    end
    object cdsKSEIRequestByCIDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsKSEIRequestByCIDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsKSEIRequestByCIDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsKSEIRequestByCIDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsKSEIRequestByCIDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsKSEIRequestByCIDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsKSEIRequestByCIDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsKSEIRequestByCIDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsKSEIRequestByCIDID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsKSEIRDNCompare: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'SUBREKKEY'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryKSEIRDNCompare'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 552
    Top = 288
    object cdsKSEIRDNCompareSID: TStringField
      FieldName = 'SID'
      Required = True
    end
    object cdsKSEIRDNCompareNAME: TStringField
      FieldName = 'NAME'
      Size = 100
    end
    object cdsKSEIRDNCompareSUBREK01: TStringField
      FieldName = 'SUBREK01'
    end
    object cdsKSEIRDNCompareSUBREK04: TStringField
      FieldName = 'SUBREK04'
    end
    object cdsKSEIRDNCompareRDN: TStringField
      FieldName = 'RDN'
    end
    object cdsKSEIRDNCompareBANK: TStringField
      FieldName = 'BANK'
      Size = 10
    end
    object cdsKSEIRDNCompareMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsKSEIRDNCompareMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsKSEIRDNCompareAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsKSEIRDNCompareAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsKSEIRDNCompareUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsKSEIRDNCompareUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsKSEIRDNCompareNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsKSEIRDNCompareISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsKSEIRDNCompareID: TLargeintField
      FieldName = 'ID'
    end
  end
end
