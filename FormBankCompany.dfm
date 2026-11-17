inherited frmBankCompany: TfrmBankCompany
  Caption = 'Bank Company'
  ClientHeight = 306
  ClientWidth = 486
  ExplicitWidth = 502
  ExplicitHeight = 345
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 486
    Height = 216
    ExplicitWidth = 486
    ExplicitHeight = 216
    object Bank: TcxDBLookupComboBox [0]
      Left = 59
      Top = 10
      RepositoryItem = dmGlobal.luBank
      DataBinding.DataField = 'BNCODE'
      DataBinding.DataSource = dsSubject
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 75
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 149
      Top = 10
      TabStop = False
      DataBinding.DataField = 'BANKNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 320
    end
    object edCcy: TcxDBLookupComboBox [2]
      Left = 59
      Top = 37
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 75
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 122
      Top = 82
      DataBinding.DataField = 'BANKACCOUNTNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 335
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 122
      Top = 109
      DataBinding.DataField = 'BANKACCOUNTNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 335
    end
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 122
      Top = 136
      DataBinding.DataField = 'BANKACCOUNTBRANCH'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 335
    end
    object cxDBCheckBox1: TcxDBCheckBox [6]
      Left = 140
      Top = 37
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'RDN Default'
      DataBinding.DataField = 'RDND'
      DataBinding.DataSource = dsSubject
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
    end
    object cxDBCheckBox2: TcxDBCheckBox [7]
      Left = 223
      Top = 37
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Private Bank Default'
      DataBinding.DataField = 'PrivateD'
      DataBinding.DataSource = dsSubject
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
    end
    object cxDBCheckBox3: TcxDBCheckBox [8]
      Left = 345
      Top = 37
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Payment Bank Default'
      DataBinding.DataField = 'PaymentD'
      DataBinding.DataSource = dsSubject
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
    end
    object cxDBTextEdit5: TcxDBTextEdit [9]
      Left = 122
      Top = 163
      DataBinding.DataField = 'COA'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Width = 335
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Bank'
      Control = Bank
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 281
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Control = edCcy
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Bank Account No'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Bank Account Name'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Branch'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'RDN Default'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBCheckBox2'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBCheckBox3'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox3
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 124
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'COA'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 237
    Width = 486
    ExplicitTop = 237
    ExplicitWidth = 486
    inherited dbNavLog: TDBNavigator
      Left = 372
      Hints.Strings = ()
      ExplicitLeft = 372
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 286
    Width = 486
    ExplicitTop = 286
    ExplicitWidth = 486
  end
  inherited tabEditorData: TTabSet
    Top = 216
    Width = 486
    ExplicitTop = 216
    ExplicitWidth = 486
  end
  inherited dsSubject: TDataSource
    DataSet = cdsBankCompany
    Left = 392
    Top = 80
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 392
    Top = 136
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsBankCompany: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMaster_qryBankCompany'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsBankCompanyAfterOpen
    AfterEdit = cdsBankCompanyAfterEdit
    BeforePost = cdsBankCompanyBeforePost
    OnNewRecord = cdsBankCompanyNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 392
    Top = 40
    object cdsBankCompanyBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
    object cdsBankCompanyBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      OnChange = cdsBankCompanyBNCODEChange
      Size = 10
    end
    object cdsBankCompanyBANKACCOUNTNO: TStringField
      FieldName = 'BANKACCOUNTNO'
      Size = 30
    end
    object cdsBankCompanyBANKACCOUNTNAME: TStringField
      FieldName = 'BANKACCOUNTNAME'
      Size = 150
    end
    object cdsBankCompanyBANKACCOUNTBRANCH: TStringField
      FieldName = 'BANKACCOUNTBRANCH'
      Size = 50
    end
    object cdsBankCompanyCCYCODE: TStringField
      FieldName = 'CCYCODE'
      OnChange = cdsBankCompanyCCYCODEChange
      Size = 5
    end
    object cdsBankCompanySTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsBankCompanyCOA: TStringField
      FieldName = 'COA'
    end
    object cdsBankCompanyACTIVED_DATE: TDateTimeField
      FieldName = 'ACTIVED_DATE'
    end
    object cdsBankCompanyACTIVED_SYSDATE: TDateTimeField
      FieldName = 'ACTIVED_SYSDATE'
    end
    object cdsBankCompanyACTIVED_UI: TStringField
      FieldName = 'ACTIVED_UI'
      Size = 30
    end
    object cdsBankCompanyCLOSED_DATE: TDateTimeField
      FieldName = 'CLOSED_DATE'
    end
    object cdsBankCompanyCLOSED_SYSDATE: TDateTimeField
      FieldName = 'CLOSED_SYSDATE'
    end
    object cdsBankCompanyCLOSED_UI: TStringField
      FieldName = 'CLOSED_UI'
      Size = 30
    end
    object cdsBankCompanyMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBankCompanyMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBankCompanyAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBankCompanyAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBankCompanyUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBankCompanyUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBankCompanyNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBankCompanyISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBankCompanyID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBankCompanyBANKNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKNAME'
      LookupDataSet = dmLookup.cdsLuBank
      LookupKeyFields = 'BNCODE'
      LookupResultField = 'BNNAME'
      KeyFields = 'BNCODE'
      Lookup = True
    end
    object cdsBankCompanyRDND: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'RDND'
    end
    object cdsBankCompanyPrivateD: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PrivateD'
    end
    object cdsBankCompanyPaymentD: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PaymentD'
    end
  end
  object cdsBankCompanyPayment: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ccyCode'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryBankCompanyPayment'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 264
    Top = 80
    object cdsBankCompanyPaymentCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 10
    end
    object cdsBankCompanyPaymentBANKID: TIntegerField
      FieldName = 'BANKID'
    end
  end
  object cdsBankCompanyRDN: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'bnCode'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ccyCode'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'bankID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryBankCompanyRDN'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsBankCompanyRDNAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 304
    Top = 80
    object cdsBankCompanyRDNBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 10
    end
    object cdsBankCompanyRDNCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsBankCompanyRDNBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
  end
  object cdsBankCompanyPrivate: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'bnCode'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ccyCode'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'bankID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryBankCompanyPrivate'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 344
    Top = 80
    object cdsBankCompanyPrivateBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 10
    end
    object cdsBankCompanyPrivateCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsBankCompanyPrivateBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
  end
  object dsBankCompanyPayment: TDataSource
    DataSet = cdsBankCompanyPayment
    Left = 264
    Top = 128
  end
  object dsBankCompanyRDN: TDataSource
    DataSet = cdsBankCompanyRDN
    Left = 304
    Top = 128
  end
  object dsBankCompanyPrivate: TDataSource
    DataSet = cdsBankCompanyPrivate
    Left = 344
    Top = 128
  end
  object cdsEditBankCompanyPrivate: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'bnCode'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ccyCode'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryEditBankCompanyPrivate'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 344
    Top = 192
    object cdsEditBankCompanyPrivateBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 10
    end
    object cdsEditBankCompanyPrivateCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsEditBankCompanyPrivateBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
  end
  object cdsEditBankCompanyRDN: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'bnCode'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ccyCode'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryEditBankCompanyRDN'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsBankCompanyRDNAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 304
    Top = 192
    object cdsEditBankCompanyRDNBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 10
    end
    object cdsEditBankCompanyRDNCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsEditBankCompanyRDNBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
  end
end
