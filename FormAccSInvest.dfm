inherited frmAccSInvest: TfrmAccSInvest
  Caption = 'Account S-Invest'
  ClientWidth = 758
  ExplicitWidth = 764
  ExplicitHeight = 409
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 758
    object cxDBButtonEdit1: TcxDBButtonEdit [0]
      Left = 82
      Top = 10
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 218
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 303
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Account Code'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 303
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Width = 758
    inherited dbNavLog: TDBNavigator
      Left = 644
      Hints.Strings = ()
      ExplicitLeft = 644
    end
  end
  inherited StatusBar: TdxStatusBar
    Width = 758
  end
  inherited tabEditorData: TTabSet
    Width = 758
  end
  inherited dsSubject: TDataSource
    Left = 376
    Top = 160
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 376
    Top = 208
  end
  object cdsAccSInvest: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSInvest_qryAccSInvest'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 424
    Top = 160
    object cdsAccSInvestACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccSInvestENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsAccSInvestACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccSInvestACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsAccSInvestACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsAccSInvestACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsAccSInvestACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsAccSInvestBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsAccSInvestINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsAccSInvestBUSSTYPE: TLargeintField
      FieldName = 'BUSSTYPE'
    end
    object cdsAccSInvestTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsAccSInvestPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsAccSInvestA_CLS_ORDER: TStringField
      FieldName = 'A_CLS_ORDER'
      Size = 1
    end
    object cdsAccSInvestAVGPRICEDEC: TSmallintField
      FieldName = 'AVGPRICEDEC'
    end
    object cdsAccSInvestOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsAccSInvestCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsAccSInvestSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsAccSInvestISWAPU: TStringField
      FieldName = 'ISWAPU'
      Size = 1
    end
    object cdsAccSInvestISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsAccSInvestISUSEOTC: TStringField
      FieldName = 'ISUSEOTC'
      Size = 1
    end
    object cdsAccSInvestISOWNCONTACT: TStringField
      FieldName = 'ISOWNCONTACT'
      Size = 1
    end
    object cdsAccSInvestISTRDACCOUNT: TStringField
      FieldName = 'ISTRDACCOUNT'
      Size = 1
    end
    object cdsAccSInvestAUTO_SETTLE: TStringField
      FieldName = 'AUTO_SETTLE'
      Size = 1
    end
    object cdsAccSInvestSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsAccSInvestACC_STS: TStringField
      FieldName = 'ACC_STS'
      Size = 1
    end
    object cdsAccSInvestOMGUSE: TStringField
      FieldName = 'OMGUSE'
      Size = 1
    end
    object cdsAccSInvestOMGEXREFFCODE: TStringField
      FieldName = 'OMGEXREFFCODE'
    end
    object cdsAccSInvestOMGALERT: TStringField
      FieldName = 'OMGALERT'
      Size = 1
    end
    object cdsAccSInvestOMGSENDSSI: TStringField
      FieldName = 'OMGSENDSSI'
      Size = 1
    end
    object cdsAccSInvestOMGSENDFEEINBLOCK: TStringField
      FieldName = 'OMGSENDFEEINBLOCK'
      Size = 1
    end
    object cdsAccSInvestSI_SPLIT: TStringField
      FieldName = 'SI_SPLIT'
      Size = 1
    end
    object cdsAccSInvestALCID: TIntegerField
      FieldName = 'ALCID'
    end
    object cdsAccSInvestTALCID: TIntegerField
      FieldName = 'TALCID'
    end
    object cdsAccSInvestLASTTR_DATE: TDateTimeField
      FieldName = 'LASTTR_DATE'
    end
    object cdsAccSInvestTRF_PRVT_BANK: TStringField
      FieldName = 'TRF_PRVT_BANK'
      Size = 1
    end
    object cdsAccSInvestTRF_PRVT_BANK_TARGET: TIntegerField
      FieldName = 'TRF_PRVT_BANK_TARGET'
    end
    object cdsAccSInvestCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
    end
    object cdsAccSInvestCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
    end
    object cdsAccSInvestCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsAccSInvestBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsAccSInvestSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
    object cdsAccSInvestIS_IDX_TRX: TStringField
      FieldName = 'IS_IDX_TRX'
      Size = 1
    end
    object cdsAccSInvestTLCLASSID: TIntegerField
      FieldName = 'TLCLASSID'
    end
    object cdsAccSInvestDEFTRDPARAM: TStringField
      FieldName = 'DEFTRDPARAM'
      Size = 30
    end
    object cdsAccSInvestKSEI_SID: TStringField
      FieldName = 'KSEI_SID'
    end
    object cdsAccSInvestRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
    end
    object cdsAccSInvestRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
    end
    object cdsAccSInvestRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
    end
    object cdsAccSInvestFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
    end
    object cdsAccSInvestTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsAccSInvestTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsAccSInvestACCPASSWORD: TStringField
      FieldName = 'ACCPASSWORD'
      Size = 50
    end
    object cdsAccSInvestCPID: TIntegerField
      FieldName = 'CPID'
    end
    object cdsAccSInvestBUS_CAT: TLargeintField
      FieldName = 'BUS_CAT'
    end
    object cdsAccSInvestINIT_DEPOSIT_FUND: TFloatField
      FieldName = 'INIT_DEPOSIT_FUND'
    end
    object cdsAccSInvestINIT_DEPOSIT_SHARES: TFloatField
      FieldName = 'INIT_DEPOSIT_SHARES'
    end
    object cdsAccSInvestALLOC_TYPE: TStringField
      FieldName = 'ALLOC_TYPE'
      Size = 1
    end
    object cdsAccSInvestTC_BASE: TStringField
      FieldName = 'TC_BASE'
      Size = 1
    end
    object cdsAccSInvestAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsAccSInvestDT_AUTOAVGPRICE: TStringField
      FieldName = 'DT_AUTOAVGPRICE'
      Size = 1
    end
    object cdsAccSInvestSETTLE_MODE: TStringField
      FieldName = 'SETTLE_MODE'
      Size = 10
    end
    object cdsAccSInvestNET_SETTLE: TStringField
      FieldName = 'NET_SETTLE'
      Size = 1
    end
    object cdsAccSInvestSETTLE_TYPE: TStringField
      FieldName = 'SETTLE_TYPE'
      Size = 10
    end
    object cdsAccSInvestDIVIDEN_TAX: TFloatField
      FieldName = 'DIVIDEN_TAX'
    end
    object cdsAccSInvestDORMANT: TStringField
      FieldName = 'DORMANT'
      Size = 1
    end
    object cdsAccSInvestMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccSInvestMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccSInvestAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccSInvestAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccSInvestUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccSInvestUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccSInvestNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccSInvestISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccSInvestID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccSInvestRISK: TStringField
      FieldName = 'RISK'
      Size = 1
    end
    object cdsAccSInvestEXCELL_CLASS: TIntegerField
      FieldName = 'EXCELL_CLASS'
    end
    object cdsAccSInvestSPRESID: TLargeintField
      FieldName = 'SPRESID'
    end
    object cdsAccSInvestMCALLDAY: TIntegerField
      FieldName = 'MCALLDAY'
    end
    object cdsAccSInvestAFFIL: TBooleanField
      FieldName = 'AFFIL'
    end
    object cdsAccSInvestTRANSFER_STATUS: TStringField
      FieldName = 'TRANSFER_STATUS'
      Size = 1
    end
    object cdsAccSInvestSYNC: TStringField
      FieldName = 'SYNC'
      Size = 1
    end
    object cdsAccSInvestYNC: TStringField
      FieldName = 'YNC'
      Size = 1
    end
    object cdsAccSInvestREFERRAL_ID_INT: TIntegerField
      FieldName = 'REFERRAL_ID_INT'
    end
    object cdsAccSInvestREFERRAL_ID_EXT: TIntegerField
      FieldName = 'REFERRAL_ID_EXT'
    end
    object cdsAccSInvestCREATED_DATE: TDateField
      FieldName = 'CREATED_DATE'
    end
    object cdsAccSInvestCHKDUEDAYEXP: TStringField
      FieldName = 'CHKDUEDAYEXP'
      Size = 1
    end
    object cdsAccSInvestDUEBUYSTOCK: TIntegerField
      FieldName = 'DUEBUYSTOCK'
    end
    object cdsAccSInvestDUESELLSTOCK: TIntegerField
      FieldName = 'DUESELLSTOCK'
    end
    object cdsAccSInvestDUEBUYCASH: TIntegerField
      FieldName = 'DUEBUYCASH'
    end
    object cdsAccSInvestDUESELLCASH: TIntegerField
      FieldName = 'DUESELLCASH'
    end
    object cdsAccSInvestSINVUSE: TStringField
      FieldName = 'SINVUSE'
      Size = 1
    end
  end
end
