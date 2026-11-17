inherited frmClosingRepoContractEditor: TfrmClosingRepoContractEditor
  Caption = 'Closing Repo Contract'
  ClientHeight = 555
  ClientWidth = 579
  ExplicitWidth = 585
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 579
    Height = 465
    BevelKind = bkTile
    ExplicitWidth = 579
    ExplicitHeight = 465
    object Label1: TLabel [0]
      Left = 10
      Top = 219
      Width = 52
      Height = 13
      Caption = 'Collateral :'
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 97
      Top = 10
      DataBinding.DataField = 'CONTRACT_NO'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 100
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 97
      Top = 37
      DataBinding.DataField = 'TRXDATE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 100
    end
    object cxDBTextEdit3: TcxDBTextEdit [3]
      Left = 97
      Top = 64
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 100
    end
    object cxDBTextEdit4: TcxDBTextEdit [4]
      Left = 203
      Top = 64
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 354
    end
    object cxDBTextEdit5: TcxDBTextEdit [5]
      Left = 97
      Top = 91
      DataBinding.DataField = 'SETTDATE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 100
    end
    object cxDBTextEdit6: TcxDBTextEdit [6]
      Left = 256
      Top = 91
      DataBinding.DataField = 'SETTDAY'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 40
    end
    object Button1: TButton [7]
      Left = 203
      Top = 10
      Width = 22
      Height = 21
      Caption = '...'
      TabOrder = 1
      OnClick = Button1Click
    end
    object cxDBTextEdit7: TcxDBTextEdit [8]
      Left = 457
      Top = 91
      DataBinding.DataField = 'MATURDATE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 100
    end
    object cxDBTextEdit8: TcxDBTextEdit [9]
      Left = 255
      Top = 118
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 40
    end
    object cxDBTextEdit9: TcxDBTextEdit [10]
      Left = 97
      Top = 145
      DataBinding.DataField = 'REPO_AMT'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 100
    end
    object cxDBTextEdit10: TcxDBTextEdit [11]
      Left = 287
      Top = 145
      DataBinding.DataField = 'INTEREST_AMT'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 100
    end
    object cxDBTextEdit11: TcxDBTextEdit [12]
      Left = 457
      Top = 145
      DataBinding.DataField = 'DUE_AMT'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 100
    end
    object cxDBTextEdit12: TcxDBTextEdit [13]
      Left = 97
      Top = 118
      DataBinding.DataField = 'INTERESTRATE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 100
    end
    object cxDBMemo1: TcxDBMemo [14]
      Left = 97
      Top = 172
      DataBinding.DataField = 'NOTE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Height = 41
      Width = 185
    end
    object cxGrid1: TcxGrid [15]
      Left = 10
      Top = 238
      Width = 250
      Height = 178
      Enabled = False
      TabOrder = 14
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsCollateral
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1SEQNO: TcxGridDBColumn
          Caption = 'Seq. No:'
          DataBinding.FieldName = 'SEQNO'
          Visible = False
          Width = 57
        end
        object cxGrid1DBTableView1STOCKCODE: TcxGridDBColumn
          Caption = 'Stock Code:'
          DataBinding.FieldName = 'STOCKCODE'
          Width = 73
        end
        object cxGrid1DBTableView1QTY: TcxGridDBColumn
          Caption = 'Qty:'
          DataBinding.FieldName = 'QTY'
          Width = 68
        end
        object cxGrid1DBTableView1CLS_PRICE: TcxGridDBColumn
          Caption = 'Closing Price:'
          DataBinding.FieldName = 'CLS_PRICE'
          Width = 90
        end
        object cxGrid1DBTableView1TODAY_VAL: TcxGridDBColumn
          Caption = 'Valuation'
          DataBinding.FieldName = 'TODAY_VAL'
          Width = 148
        end
        object cxGrid1DBTableView1ACCCODE: TcxGridDBColumn
          Caption = 'From Acc. :'
          DataBinding.FieldName = 'ACCCODE'
          Width = 107
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxDBTextEdit13: TcxDBTextEdit [16]
      Left = 436
      Top = 422
      DataBinding.DataField = 'COLL_AMT'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Contract No:'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Transaction Date'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Repo Account'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Settle Date'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = '        Days'
      Parent = dxLayoutControl1Group9
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Button1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = Button1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = '         Maturity Date'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.Text = '         CCY'
      Parent = dxLayoutControl1Group9
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Repo Amount'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Interest Amount'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'Due Amount'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit11
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Interest Rate'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit12
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      CaptionOptions.Text = 'Reason/Note:'
      Parent = dxLayoutGroup1
      Control = cxDBMemo1
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      AlignHorz = ahClient
      Parent = dxLayoutGroup1
      Control = cxGrid1
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 7
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'Total Collateral :'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit13
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 8
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      CaptionOptions.Text = 'Collateral :'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      Control = Label1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 486
    Width = 579
    ExplicitTop = 486
    ExplicitWidth = 579
    inherited dbNavLog: TDBNavigator
      Left = 465
      Hints.Strings = ()
      ExplicitLeft = 465
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
    Top = 535
    Width = 579
    ExplicitTop = 535
    ExplicitWidth = 579
  end
  inherited tabEditorData: TTabSet
    Top = 465
    Width = 579
    ExplicitTop = 465
    ExplicitWidth = 579
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCCR
    Left = 416
    Top = 112
  end
  object cdsCCR: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONRID'
        ParamType = ptInput
        Value = '38'
      end>
    ProviderName = 'dspN_dmREPO_qryCRC'
    RemoteServer = dmGlobal.dspConnection
    OnReconcileError = cdsCCRReconcileError
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 496
    Top = 120
    object cdsCCRCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsCCRCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Required = True
      Size = 30
    end
    object cdsCCRID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCCRENTTNAME: TStringField
      FieldName = 'ENTTNAME'
      Size = 150
    end
    object cdsCCRTRXDATE: TDateTimeField
      FieldName = 'TRXDATE'
      DisplayFormat = 'dd-mm-yyyy'
    end
    object cdsCCRDUE_DATE: TDateTimeField
      FieldName = 'DUE_DATE'
      DisplayFormat = 'dd-mm-yyyy'
    end
    object cdsCCRCON_DATE: TDateTimeField
      FieldName = 'CON_DATE'
      DisplayFormat = 'dd-mm-yyyy'
    end
    object cdsCCRCLS_DATE: TDateTimeField
      FieldName = 'CLS_DATE'
      DisplayFormat = 'dd-mm-yyyy'
    end
    object cdsCCRACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsCCRACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCCRSETTDATE: TDateTimeField
      FieldName = 'SETTDATE'
      DisplayFormat = 'dd-mm-yyyy'
    end
    object cdsCCRSETTDAY: TIntegerField
      FieldName = 'SETTDAY'
    end
    object cdsCCRMATURDATE: TDateTimeField
      FieldName = 'MATURDATE'
      DisplayFormat = 'dd-mm-yyyy'
    end
    object cdsCCRCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCCRLOAN_AMT: TFloatField
      FieldName = 'LOAN_AMT'
      DisplayFormat = '#,###'
    end
    object cdsCCRORG_AMT: TFloatField
      FieldName = 'ORG_AMT'
      DisplayFormat = '#,###'
    end
    object cdsCCRREPO_AMT: TFloatField
      FieldName = 'REPO_AMT'
      DisplayFormat = '#,###'
    end
    object cdsCCRDUE_AMT: TFloatField
      FieldName = 'DUE_AMT'
      DisplayFormat = '#,###'
    end
    object cdsCCRINTEREST_AMT: TFloatField
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '#,###'
    end
    object cdsCCRINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
    end
    object cdsCCRNOTE: TStringField
      FieldName = 'NOTE'
      Size = 300
    end
    object cdsCCRMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCCRMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCCRAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCCRAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCCRUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCCRUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCCRNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCCRISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCCRTOPUP: TFloatField
      FieldName = 'TOPUP'
    end
    object cdsCCRCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
  end
  object cdsCollateral: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONRID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmREPO_qryCollateral'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = True
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 472
    Top = 232
    object cdsCollateralCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsCollateralSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsCollateralSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsCollateralSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsCollateralSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsCollateralSHARES: TFloatField
      FieldName = 'SHARES'
    end
    object cdsCollateralTODAY_VAL: TFloatField
      FieldName = 'TODAY_VAL'
    end
    object cdsCollateralINSERT_DATE: TDateField
      FieldName = 'INSERT_DATE'
    end
    object cdsCollateralMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCollateralMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCollateralAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCollateralAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCollateralUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCollateralUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCollateralNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCollateralISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCollateralID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCollateralQTY: TLargeintField
      FieldName = 'QTY'
    end
    object cdsCollateralCLS_PRICE: TFloatField
      FieldName = 'CLS_PRICE'
    end
    object cdsCollateralACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCollateralACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsCollateralCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
  end
  object dsCollateral: TDataSource
    DataSet = cdsCollateral
    Left = 480
    Top = 176
  end
  object cdsRepoContractList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmREPO_qryCRActiveList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 464
    Top = 280
    object cdsRepoContractListCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsRepoContractListCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsRepoContractListENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsRepoContractListENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Size = 30
    end
    object cdsRepoContractListENTTNAME: TStringField
      FieldName = 'ENTTNAME'
      Size = 150
    end
    object cdsRepoContractListTRXDATE: TDateTimeField
      FieldName = 'TRXDATE'
    end
    object cdsRepoContractListTRXTYPE: TStringField
      FieldName = 'TRXTYPE'
      Size = 5
    end
    object cdsRepoContractListACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsRepoContractListACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsRepoContractListACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsRepoContractListRACCID: TIntegerField
      FieldName = 'RACCID'
    end
    object cdsRepoContractListRACCCODE: TStringField
      FieldName = 'RACCCODE'
      Size = 30
    end
    object cdsRepoContractListRACCNAME: TStringField
      FieldName = 'RACCNAME'
      Size = 150
    end
    object cdsRepoContractListSETTDATE: TDateTimeField
      FieldName = 'SETTDATE'
    end
    object cdsRepoContractListSETTDAY: TIntegerField
      FieldName = 'SETTDAY'
    end
    object cdsRepoContractListMATURDATE: TDateTimeField
      FieldName = 'MATURDATE'
    end
    object cdsRepoContractListCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsRepoContractListLOAN_AMT: TFloatField
      FieldName = 'LOAN_AMT'
    end
    object cdsRepoContractListORG_AMT: TFloatField
      FieldName = 'ORG_AMT'
    end
    object cdsRepoContractListINTEREST_AMT: TFloatField
      FieldName = 'INTEREST_AMT'
    end
    object cdsRepoContractListREPO_AMT: TFloatField
      FieldName = 'REPO_AMT'
    end
    object cdsRepoContractListDUE_AMT: TFloatField
      FieldName = 'DUE_AMT'
    end
    object cdsRepoContractListINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Size = 10
    end
    object cdsRepoContractListINTERESTDESC: TStringField
      FieldName = 'INTERESTDESC'
      Size = 50
    end
    object cdsRepoContractListINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
    end
    object cdsRepoContractListINTERESTTABLE: TStringField
      FieldName = 'INTERESTTABLE'
      Size = 10
    end
    object cdsRepoContractListINTERESTDAY: TIntegerField
      FieldName = 'INTERESTDAY'
    end
    object cdsRepoContractListCALCMETHOD: TStringField
      FieldName = 'CALCMETHOD'
      Size = 1
    end
    object cdsRepoContractListCALCBASIS: TStringField
      FieldName = 'CALCBASIS'
      Size = 1
    end
    object cdsRepoContractListAPR_COLL: TFloatField
      FieldName = 'APR_COLL'
    end
    object cdsRepoContractListFORCESELL: TFloatField
      FieldName = 'FORCESELL'
    end
    object cdsRepoContractListCOLL_CALL: TFloatField
      FieldName = 'COLL_CALL'
    end
    object cdsRepoContractListCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
    object cdsRepoContractListISACCRUE: TSmallintField
      FieldName = 'ISACCRUE'
    end
    object cdsRepoContractListISMONTHBASIS: TSmallintField
      FieldName = 'ISMONTHBASIS'
    end
    object cdsRepoContractListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRepoContractListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRepoContractListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRepoContractListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRepoContractListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRepoContractListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRepoContractListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRepoContractListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRepoContractListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsRepoContractListCON_DATE: TDateTimeField
      FieldName = 'CON_DATE'
    end
    object cdsRepoContractListTOPUP: TFloatField
      FieldName = 'TOPUP'
    end
    object cdsRepoContractListDUE_DATE: TDateTimeField
      FieldName = 'DUE_DATE'
    end
  end
end
