inherited frmIPOAllotmentGroup: TfrmIPOAllotmentGroup
  Caption = 'IPO Allotment Group'
  ClientHeight = 267
  ClientWidth = 300
  ExplicitWidth = 306
  ExplicitHeight = 296
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 300
    Height = 177
    ExplicitWidth = 300
    ExplicitHeight = 177
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 91
      Top = 10
      DataBinding.DataField = 'ALLOTMENT_GROUPNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 197
    end
    object txtNetFee: TcxDBCurrencyEdit [1]
      Left = 91
      Top = 37
      DataBinding.DataField = 'NETFEE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object txtVAT: TcxDBCurrencyEdit [2]
      Left = 91
      Top = 64
      DataBinding.DataField = 'VAT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object txtWHT: TcxDBCurrencyEdit [3]
      Left = 91
      Top = 91
      DataBinding.DataField = 'WHT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit [4]
      Left = 91
      Top = 118
      DataBinding.DataField = 'TRANSDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [5]
      Left = 91
      Top = 145
      DataBinding.DataField = 'DUEDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object GroupName: TdxLayoutItem
      CaptionOptions.Text = 'Group Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Net Fee'
      Parent = dxLayoutGroup1
      Control = txtNetFee
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'VAT'
      Parent = dxLayoutGroup1
      Control = txtVAT
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'WHT'
      Parent = dxLayoutGroup1
      Control = txtWHT
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Trasaction Date'
      Parent = dxLayoutGroup1
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Due Date'
      Parent = dxLayoutGroup1
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 198
    Width = 300
    ExplicitTop = 198
    ExplicitWidth = 300
    inherited btnOK: TcxButton
      ModalResult = 1
    end
    inherited dbNavLog: TDBNavigator
      Left = 186
      Hints.Strings = ()
      ExplicitLeft = 186
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
    Top = 247
    Width = 300
    ExplicitTop = 247
    ExplicitWidth = 300
  end
  inherited tabEditorData: TTabSet
    Top = 177
    Width = 300
    ExplicitTop = 177
    ExplicitWidth = 300
  end
  inherited dsSubject: TDataSource
    DataSet = cdsIPOAllotmentGroup
    Left = 240
    Top = 40
  end
  object cdsIPOAllotmentGroup: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IPOID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmIPO_qryIPOAllotmentGroup'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 240
    Top = 78
    object cdsIPOAllotmentGroupALLOTMENT_GROUPID: TLargeintField
      FieldName = 'ALLOTMENT_GROUPID'
      Required = True
    end
    object cdsIPOAllotmentGroupALLOTMENT_GROUPNAME: TStringField
      FieldName = 'ALLOTMENT_GROUPNAME'
      Size = 200
    end
    object cdsIPOAllotmentGroupNETFEE: TFloatField
      FieldName = 'NETFEE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsIPOAllotmentGroupVAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsIPOAllotmentGroupWHT: TFloatField
      FieldName = 'WHT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsIPOAllotmentGroupIPOID: TLargeintField
      FieldName = 'IPOID'
      Required = True
    end
    object cdsIPOAllotmentGroupTRANSDATE: TDateField
      FieldName = 'TRANSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsIPOAllotmentGroupDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
  end
  object cdsIPO: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IPOID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmIPO_qryIPO'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 202
    Top = 79
    object cdsIPOIPOID: TIntegerField
      Tag = -1
      FieldName = 'IPOID'
      Required = True
    end
    object cdsIPOIPOCODE: TStringField
      Tag = -1
      FieldName = 'IPOCODE'
      Required = True
    end
    object cdsIPOSCRIPCODE: TStringField
      FieldName = 'SCRIPCODE'
    end
    object cdsIPOSCRIPNAME: TStringField
      FieldName = 'SCRIPNAME'
      Size = 100
    end
    object cdsIPOENTRYDATE: TDateField
      Tag = -1
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOIPODATE: TDateField
      FieldName = 'IPODATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOORDERFROMDATE: TDateField
      FieldName = 'ORDERFROMDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOORDERTODATE: TDateField
      FieldName = 'ORDERTODATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPONETFEE: TFloatField
      FieldName = 'NETFEE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOVAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOWHT: TFloatField
      FieldName = 'WHT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsIPOBOTPRICE: TFloatField
      FieldName = 'BOTPRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOTOPPRICE: TFloatField
      FieldName = 'TOPPRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOFIXEDPRICE: TFloatField
      FieldName = 'FIXEDPRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsIPOGUARANTEETYPE: TStringField
      FieldName = 'GUARANTEETYPE'
      Size = 1
    end
    object cdsIPOCONDATE: TDateField
      FieldName = 'CONDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOREMARK1: TStringField
      FieldName = 'REMARK1'
      Size = 250
    end
    object cdsIPOREMARK2: TStringField
      FieldName = 'REMARK2'
      Size = 250
    end
    object cdsIPOSTATUS: TStringField
      Tag = -1
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsIPOMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsIPOMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsIPOAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsIPOAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsIPOUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsIPOUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsIPONOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsIPOISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsIPOID: TLargeintField
      FieldName = 'ID'
    end
    object cdsIPOCOMMITMENTAMT: TFloatField
      FieldName = 'COMMITMENTAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOABSORBAMT: TFloatField
      FieldName = 'ABSORBAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOBGAMT: TFloatField
      FieldName = 'BGAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOHAIRCUT: TIntegerField
      FieldName = 'HAIRCUT'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsIPOBAEID: TIntegerField
      FieldName = 'BAEID'
    end
    object cdsIPODUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPODISTRIBUTIONDATE: TDateField
      FieldName = 'DISTRIBUTIONDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOLISTINGDATE: TDateField
      FieldName = 'LISTINGDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOREFUNDDATE: TDateField
      FieldName = 'REFUNDDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsIPOISINDATE: TDateTimeField
      FieldName = 'ISINDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOIS_CURRENT_INSTRUMENT: TStringField
      FieldName = 'IS_CURRENT_INSTRUMENT'
      Size = 1
    end
    object cdsIPOINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
    end
    object cdsIPOALLOTMENT_VOUCHER: TStringField
      FieldName = 'ALLOTMENT_VOUCHER'
      Size = 1
    end
    object cdsIPOALLOTMENT_AMOUNT: TFloatField
      FieldName = 'ALLOTMENT_AMOUNT'
    end
    object cdsIPOALLOTMENT_SIID: TLargeintField
      FieldName = 'ALLOTMENT_SIID'
    end
    object cdsIPOPOOLING_VOUCHER: TStringField
      FieldName = 'POOLING_VOUCHER'
      Size = 1
    end
    object cdsIPOPOOLING_AMOUNT: TFloatField
      FieldName = 'POOLING_AMOUNT'
    end
    object cdsIPOPOOLING_SIID: TLargeintField
      FieldName = 'POOLING_SIID'
    end
    object cdsIPOACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsIPOACCCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsIPOACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 100
      Lookup = True
    end
    object cdsIPOACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsIPOIPO_TYPE: TStringField
      FieldName = 'IPO_TYPE'
      Size = 5
    end
    object cdsIPOIPO_PRODUCT: TStringField
      FieldName = 'IPO_PRODUCT'
      Size = 30
    end
    object cdsIPOCOUPON_RATE: TFloatField
      FieldName = 'COUPON_RATE'
      DisplayFormat = '#,##0.00 %'
    end
    object cdsIPOMATURITYDATE: TDateField
      FieldName = 'MATURITYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsIPOCALCULATE_DAYS_METHOD: TIntegerField
      FieldName = 'CALCULATE_DAYS_METHOD'
      DisplayFormat = '#,##0'
    end
    object cdsIPOCOUNTINGDAYS_METHOD: TIntegerField
      FieldName = 'COUNTINGDAYS_METHOD'
      DisplayFormat = '#,##0'
    end
    object cdsIPOISSUER_TYPE: TStringField
      FieldName = 'ISSUER_TYPE'
      Size = 1
    end
    object cdsIPOCOMMITMENTQTY: TLargeintField
      FieldName = 'COMMITMENTQTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsIPOABSORBQTY: TLargeintField
      FieldName = 'ABSORBQTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsIPOUSEGROUP: TStringField
      FieldName = 'USEGROUP'
      Size = 1
    end
    object cdsIPOMNGMT_FEE: TFloatField
      FieldName = 'MNGMT_FEE'
    end
    object cdsIPOUNDERWT_FEE: TFloatField
      FieldName = 'UNDERWT_FEE'
    end
  end
end
