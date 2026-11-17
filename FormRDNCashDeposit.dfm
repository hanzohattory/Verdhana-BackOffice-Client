inherited frmRDNCashDeposit: TfrmRDNCashDeposit
  Caption = 'Cash Deposit RDN'
  ClientHeight = 322
  ClientWidth = 550
  ExplicitWidth = 566
  ExplicitHeight = 361
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 550
    Height = 232
    ExplicitWidth = 550
    ExplicitHeight = 232
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 110
      Top = 10
      TabStop = False
      DataBinding.DataField = 'CMDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 118
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 110
      Top = 37
      DataBinding.DataField = 'CMDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 427
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 237
      Top = 64
      TabStop = False
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 300
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [3]
      Left = 110
      Top = 64
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 121
    end
    object cmbBankCode: TcxDBLookupComboBox [4]
      Left = 251
      Top = 91
      RepositoryItem = dmGlobal.luBankAccountMutation
      DataBinding.DataField = 'ACCBANKID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 90
    end
    object cxDBTextEdit3: TcxDBTextEdit [5]
      Left = 298
      Top = 10
      TabStop = False
      DataBinding.DataField = 'CMCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 239
    end
    object cxDBTextEdit4: TcxDBTextEdit [6]
      Left = 110
      Top = 118
      TabStop = False
      DataBinding.DataField = 'BNACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 233
    end
    object cxDBTextEdit5: TcxDBTextEdit [7]
      Left = 110
      Top = 145
      TabStop = False
      DataBinding.DataField = 'BNACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 427
    end
    object cxDBTextEdit6: TcxDBTextEdit [8]
      Left = 110
      Top = 172
      TabStop = False
      DataBinding.DataField = 'BNBRANCH'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 193
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [9]
      Left = 238
      Top = 199
      DataBinding.DataField = 'CMAMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit [10]
      Left = 110
      Top = 199
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 80
    end
    object chkCBEST: TcxDBCheckBox [11]
      Left = 110
      Top = 91
      Caption = 'Bank CBEST'
      DataBinding.DataField = 'CASHCBEST'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      OnClick = chkCBESTClick
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 427
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Account Name'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Code'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Code'
      Control = cmbBankCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Voucher No.'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 239
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Account No'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 233
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Account Name'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 344
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Branch'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 193
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Amount'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = ' '
      Control = chkCBEST
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group4
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 253
    Width = 550
    ExplicitTop = 253
    ExplicitWidth = 550
    inherited dbNavLog: TDBNavigator
      Left = 436
      Hints.Strings = ()
      ExplicitLeft = 436
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 302
    Width = 550
    ExplicitTop = 302
    ExplicitWidth = 550
  end
  inherited tabEditorData: TTabSet
    Top = 232
    Width = 550
    ExplicitTop = 232
    ExplicitWidth = 550
  end
  inherited dsSubject: TDataSource
    DataSet = cdsRDNCashDeposit
    Left = 347
    Top = 274
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Top = 24
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsRDNCashDeposit: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CMID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashMutation'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsRDNCashDepositBeforePost
    AfterPost = cdsRDNCashDepositAfterPost
    OnNewRecord = cdsRDNCashDepositNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 243
    Top = 273
    object cdsRDNCashDepositCMID: TLargeintField
      FieldName = 'CMID'
      Required = True
    end
    object cdsRDNCashDepositCMCODE: TStringField
      FieldName = 'CMCODE'
      Required = True
    end
    object cdsRDNCashDepositCMDATE: TDateField
      FieldName = 'CMDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsRDNCashDepositCMTYPE: TStringField
      FieldName = 'CMTYPE'
      Size = 1
    end
    object cdsRDNCashDepositCMDESC: TStringField
      FieldName = 'CMDESC'
      Size = 100
    end
    object cdsRDNCashDepositACCID: TIntegerField
      FieldName = 'ACCID'
      OnChange = cdsRDNCashDepositACCIDChange
    end
    object cdsRDNCashDepositACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsRDNCashDepositACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      OnChange = cdsRDNCashDepositACCBANKIDChange
    end
    object cdsRDNCashDepositDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsRDNCashDepositCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsRDNCashDepositCMAMT: TFloatField
      FieldName = 'CMAMT'
      DisplayFormat = '#,##0'
    end
    object cdsRDNCashDepositPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsRDNCashDepositMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRDNCashDepositMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRDNCashDepositAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRDNCashDepositAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRDNCashDepositUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRDNCashDepositUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRDNCashDepositNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRDNCashDepositISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRDNCashDepositID: TLargeintField
      FieldName = 'ID'
    end
    object cdsRDNCashDepositPOSTED_DATE: TDateField
      FieldName = 'POSTED_DATE'
    end
    object cdsRDNCashDepositPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsRDNCashDepositCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsRDNCashDepositCANCEL_DATE: TDateField
      FieldName = 'CANCEL_DATE'
    end
    object cdsRDNCashDepositCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsRDNCashDepositBNCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'BNCODE'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BNCODE'
      KeyFields = 'ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsRDNCashDepositBNACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'BNACCNO'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNO'
      KeyFields = 'ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsRDNCashDepositBNACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'BNACCNAME'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNAME'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsRDNCashDepositBNBRANCH: TStringField
      FieldKind = fkLookup
      FieldName = 'BNBRANCH'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKBRANCH'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsRDNCashDepositBANK_CCYCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'BANK_CCYCODE'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'CCYCODE'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsRDNCashDepositCASHCBEST: TStringField
      FieldName = 'CASHCBEST'
      Size = 1
    end
    object cdsRDNCashDepositACCNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ACCNAME'
    end
  end
end
