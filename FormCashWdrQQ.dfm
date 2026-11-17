inherited frmCashWdrQQ: TfrmCashWdrQQ
  Caption = 'Cash Withdraw QQ'
  ClientHeight = 464
  ClientWidth = 738
  ExplicitWidth = 754
  ExplicitHeight = 503
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 738
    Height = 374
    ExplicitWidth = 738
    ExplicitHeight = 374
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 100
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 234
      Top = 10
      DataBinding.DataField = 'CWCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 245
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 68
      Top = 37
      DataBinding.DataField = 'CWDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 658
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [3]
      Left = 68
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
      TabOrder = 4
      Width = 110
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [4]
      Left = 68
      Top = 91
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 80
    end
    object cbBankSource: TcxDBLookupComboBox [5]
      Left = 110
      Top = 136
      TabStop = False
      RepositoryItem = dmGlobal.luCompanyBank
      DataBinding.DataField = 'SOURCE_ACCBANKID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          Width = 80
          FieldName = 'ACCBANKCODE'
        end
        item
          Width = 100
          FieldName = 'BANKACCNO'
        end
        item
          Width = 150
          FieldName = 'BANKACCNAME'
        end
        item
          Width = 40
          FieldName = 'CCYCODE'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      OnEnter = cbBankSourceEnter
      OnExit = cbBankSourceExit
      Width = 130
    end
    object cxDBTextEdit3: TcxDBTextEdit [6]
      Left = 110
      Top = 163
      DataBinding.DataField = 'SOURCE_BNBRANCH'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 250
    end
    object cxDBTextEdit4: TcxDBTextEdit [7]
      Left = 110
      Top = 190
      DataBinding.DataField = 'SOURCE_BNACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 250
    end
    object cxDBTextEdit5: TcxDBTextEdit [8]
      Left = 110
      Top = 217
      DataBinding.DataField = 'SOURCE_BNACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 250
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [9]
      Left = 464
      Top = 136
      RepositoryItem = dmGlobal.luPrivateBankAcc
      DataBinding.DataField = 'TARGET_ACCBANKID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 130
    end
    object cxDBTextEdit6: TcxDBTextEdit [10]
      Left = 464
      Top = 163
      DataBinding.DataField = 'TARGET_BNBRANCH'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 250
    end
    object cxDBTextEdit7: TcxDBTextEdit [11]
      Left = 464
      Top = 190
      DataBinding.DataField = 'TARGET_BNACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 250
    end
    object cxDBTextEdit8: TcxDBTextEdit [12]
      Left = 464
      Top = 217
      DataBinding.DataField = 'TARGET_BNACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 250
    end
    object cxDBTextEdit9: TcxDBTextEdit [13]
      Left = 110
      Top = 274
      DataBinding.DataField = 'BNCHARGESTYPE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [14]
      Left = 110
      Top = 301
      DataBinding.DataField = 'TRANSTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Remiter'
          ImageIndex = 0
          Value = 'R'
        end
        item
          Description = 'Beneficiary'
          Value = 'B'
        end>
      Properties.OnCloseUp = cxDBImageComboBox1PropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      OnExit = cxDBImageComboBox1Exit
      Width = 121
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [15]
      Left = 323
      Top = 274
      DataBinding.DataField = 'CWAMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      OnExit = cxDBCurrencyEdit1Exit
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [16]
      Left = 323
      Top = 301
      DataBinding.DataField = 'BNCHARGES'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [17]
      Left = 323
      Top = 328
      DataBinding.DataField = 'TRANSFER_AMT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 121
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [18]
      Left = 110
      Top = 328
      DataBinding.DataField = 'CASH_QQ'
      DataBinding.DataSource = dsCashPosition
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit [19]
      Left = 295
      Top = 136
      DataBinding.DataField = 'SOURCE_CCYCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 60
    end
    object cxDBTextEdit11: TcxDBTextEdit [20]
      Left = 649
      Top = 136
      DataBinding.DataField = 'TARGET_CCYCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 60
    end
    object cxDBTextEdit12: TcxDBTextEdit [21]
      Left = 193
      Top = 64
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 533
    end
    object cxDBDateEdit2: TcxDBDateEdit [22]
      Left = 542
      Top = 10
      DataBinding.DataField = 'CWDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 100
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Voucher No'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 245
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
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
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Account'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Source Bank'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Code'
      Control = cbBankSource
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Branch'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Account No'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Account Name'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Target Bank'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Code'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Branch'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Account No'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Account Name'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Cash Withdraw'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Transfer Mode'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Amount'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Charge'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Transfer Amount'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Cash QQ Amount'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Currency'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Currency'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 533
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 395
    Width = 738
    ExplicitTop = 395
    ExplicitWidth = 738
    inherited dbNavLog: TDBNavigator
      Left = 624
      Hints.Strings = ()
      ExplicitLeft = 624
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 444
    Width = 738
    ExplicitTop = 444
    ExplicitWidth = 738
  end
  inherited tabEditorData: TTabSet
    Top = 374
    Width = 738
    ExplicitTop = 374
    ExplicitWidth = 738
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCashWdr
    Left = 648
    Top = 392
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 536
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsCashWdr: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CWID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashWdr'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsCashWdrAfterOpen
    BeforePost = cdsCashWdrBeforePost
    OnNewRecord = cdsCashWdrNewRecord
    AfterApplyUpdates = cdsCashWdrAfterApplyUpdates
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 608
    Top = 392
    object cdsCashWdrCWID: TLargeintField
      FieldName = 'CWID'
    end
    object cdsCashWdrCWCODE: TStringField
      FieldName = 'CWCODE'
      Required = True
    end
    object cdsCashWdrCWDATE: TDateField
      FieldName = 'CWDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashWdrCWDESC: TStringField
      FieldName = 'CWDESC'
      Size = 100
    end
    object cdsCashWdrACCID: TIntegerField
      FieldName = 'ACCID'
      OnChange = cdsCashWdrACCIDChange
    end
    object cdsCashWdrACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCashWdrACTLED_ACCID: TIntegerField
      FieldName = 'ACTLED_ACCID'
    end
    object cdsCashWdrACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsCashWdrTARGET_ACCBANKID: TIntegerField
      FieldName = 'TARGET_ACCBANKID'
      Required = True
      OnChange = cdsCashWdrTARGET_ACCBANKIDChange
    end
    object cdsCashWdrSOURCE_ACCBANKID: TIntegerField
      FieldName = 'SOURCE_ACCBANKID'
      Required = True
    end
    object cdsCashWdrCCY: TStringField
      FieldName = 'CCY'
      OnChange = cdsCashWdrCCYChange
      Size = 5
    end
    object cdsCashWdrCWAMT: TFloatField
      FieldName = 'CWAMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsCashWdrBNCHARGES: TFloatField
      FieldName = 'BNCHARGES'
      DisplayFormat = '#,##0.00'
    end
    object cdsCashWdrBNCHARGESTYPE: TStringField
      FieldName = 'BNCHARGESTYPE'
      Size = 10
    end
    object cdsCashWdrPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashWdrMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashWdrMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashWdrAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashWdrAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashWdrUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashWdrUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashWdrNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashWdrISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashWdrID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashWdrACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 150
      Lookup = True
    end
    object cdsCashWdrSOURCE_BNCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'SOURCE_BNCODE'
      LookupDataSet = dmLookup.cdsLuCompanyBanks
      LookupKeyFields = 'BANKID'
      LookupResultField = 'BNCODE'
      KeyFields = 'SOURCE_ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashWdrSOURCE_BNACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'SOURCE_BNACCNO'
      LookupDataSet = dmLookup.cdsLuCompanyBanks
      LookupKeyFields = 'BANKID'
      LookupResultField = 'BANKACCNO'
      KeyFields = 'SOURCE_ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashWdrSOURCE_BNACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'SOURCE_BNACCNAME'
      LookupDataSet = dmLookup.cdsLuCompanyBanks
      LookupKeyFields = 'BANKID'
      LookupResultField = 'BANKACCNAME'
      KeyFields = 'SOURCE_ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashWdrSOURCE_BNBRANCH: TStringField
      FieldKind = fkLookup
      FieldName = 'SOURCE_BNBRANCH'
      LookupDataSet = dmLookup.cdsLuCompanyBanks
      LookupKeyFields = 'BANKID'
      LookupResultField = 'BANKBRANCH'
      KeyFields = 'SOURCE_ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashWdrSOURCE_CCYCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'SOURCE_CCYCODE'
      LookupDataSet = dmLookup.cdsLuCompanyBanks
      LookupKeyFields = 'BANKID'
      LookupResultField = 'CCYCODE'
      KeyFields = 'SOURCE_ACCBANKID'
      Size = 5
      Lookup = True
    end
    object cdsCashWdrTARGET_BNCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'TARGET_BNCODE'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BNCODE'
      KeyFields = 'TARGET_ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashWdrTARGET_BNACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'TARGET_BNACCNO'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNO'
      KeyFields = 'TARGET_ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashWdrTARGET_BNACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'TARGET_BNACCNAME'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNAME'
      KeyFields = 'TARGET_ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashWdrTARGET_BNBRANCH: TStringField
      FieldKind = fkLookup
      FieldName = 'TARGET_BNBRANCH'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKBRANCH'
      KeyFields = 'TARGET_ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashWdrTARGET_CCYCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'TARGET_CCYCODE'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'CCYCODE'
      KeyFields = 'TARGET_ACCBANKID'
      Size = 5
      Lookup = True
    end
    object cdsCashWdrTRANSTYPE: TStringField
      FieldName = 'TRANSTYPE'
      Size = 1
    end
    object cdsCashWdrTRANSFER_AMT: TFloatField
      FieldName = 'TRANSFER_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashWdrACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCashWdrLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
      Size = 10
    end
    object cdsCashWdrLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsCashWdrPOSTED_DATE: TDateField
      FieldName = 'POSTED_DATE'
    end
    object cdsCashWdrPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsCashWdrLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsCashWdrENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashWdrWDR_TYPE: TStringField
      FieldName = 'WDR_TYPE'
      Size = 1
    end
    object cdsCashWdrUPLOAD_TIME: TDateTimeField
      FieldName = 'UPLOAD_TIME'
    end
    object cdsCashWdrCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsCashWdrCANCEL_DATE: TDateField
      FieldName = 'CANCEL_DATE'
    end
    object cdsCashWdrCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsCashWdrAPPROVED: TStringField
      FieldName = 'APPROVED'
      Size = 1
    end
    object cdsCashWdrAPPROVED_DATE: TDateField
      FieldName = 'APPROVED_DATE'
    end
    object cdsCashWdrAPPROVED_UI: TStringField
      FieldName = 'APPROVED_UI'
      Size = 30
    end
  end
  object cdsCashPosition: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryClientCashWdr'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 423
    Top = 398
    object cdsCashPositionBranchID: TIntegerField
      FieldName = 'BranchID'
    end
    object cdsCashPositionBranchCode: TStringField
      FieldName = 'BranchCode'
      Size = 10
    end
    object cdsCashPositionBranchName: TStringField
      FieldName = 'BranchName'
      Size = 50
    end
    object cdsCashPositionSalesID: TIntegerField
      FieldName = 'SalesID'
    end
    object cdsCashPositionSalesCode: TStringField
      FieldName = 'SalesCode'
      Size = 10
    end
    object cdsCashPositionSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object cdsCashPositionACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCashPositionACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCashPositionACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsCashPositionCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCashPositionCashOnHand: TFloatField
      DisplayLabel = 'Cash On Hand'
      FieldName = 'CashOnHand'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionCashOnHold: TFloatField
      DisplayLabel = 'Cash On Hold'
      FieldName = 'CashOnHold'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionARAmt: TFloatField
      FieldName = 'ARAmt'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionApAmt: TFloatField
      DisplayLabel = 'Ap Amt'
      FieldName = 'ApAmt'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionNetARAP: TFloatField
      DisplayLabel = 'Net ARAP'
      FieldName = 'NetARAP'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionCashPosition: TFloatField
      DisplayLabel = 'Cash Position'
      FieldName = 'CashPosition'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionSAVEKEEP: TStringField
      FieldName = 'SAVEKEEP'
      Size = 1
    end
    object cdsCashPositionBuyAmount: TFloatField
      DisplayLabel = 'Buy Amt'
      FieldName = 'BuyAmount'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionAvCashAmount: TFloatField
      DisplayLabel = 'Avail Cash Amt'
      FieldName = 'AvCashAmount'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashPositionCASH_QQ: TFloatField
      FieldName = 'CASH_QQ'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPositionCASH_SUBACC: TFloatField
      FieldName = 'CASH_SUBACC'
    end
  end
  object dsCashPosition: TDataSource
    DataSet = cdsCashPosition
    Left = 352
    Top = 395
  end
  object cdsBankCharges: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmCashManagement_qryBankCharges'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 492
    Top = 398
    object cdsBankChargesBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsBankChargesBNCHGTYPE: TStringField
      FieldName = 'BNCHGTYPE'
      Required = True
      Size = 5
    end
    object cdsBankChargesCHARGE_AMT: TFloatField
      FieldName = 'CHARGE_AMT'
    end
    object cdsBankChargesCHARGE_MINTRANS: TFloatField
      FieldName = 'CHARGE_MINTRANS'
    end
    object cdsBankChargesCHARGE_MAXTRANS: TFloatField
      FieldName = 'CHARGE_MAXTRANS'
    end
    object cdsBankChargesMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBankChargesMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBankChargesAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBankChargesAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBankChargesISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBankChargesID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsBankInstruction: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'BIID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryBankInstruction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 240
    Top = 400
    object cdsBankInstructionBIID: TLargeintField
      FieldName = 'BIID'
      Required = True
    end
    object cdsBankInstructionBINO: TStringField
      FieldName = 'BINO'
      Required = True
    end
    object cdsBankInstructionBITYPE: TStringField
      FieldName = 'BITYPE'
      Required = True
      Size = 1
    end
    object cdsBankInstructionENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
    end
    object cdsBankInstructionVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsBankInstructionBIDESC: TStringField
      FieldName = 'BIDESC'
      Required = True
      Size = 150
    end
    object cdsBankInstructionBANK_REF: TStringField
      FieldName = 'BANK_REF'
      Size = 30
    end
    object cdsBankInstructionTRANS_TYPE: TStringField
      FieldName = 'TRANS_TYPE'
      Size = 2
    end
    object cdsBankInstructionLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsBankInstructionLINKNO: TStringField
      FieldName = 'LINKNO'
      Size = 30
    end
    object cdsBankInstructionSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsBankInstructionACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsBankInstructionACCBANKID_SOURCE: TIntegerField
      FieldName = 'ACCBANKID_SOURCE'
    end
    object cdsBankInstructionBNCODE_SOURCE: TStringField
      FieldName = 'BNCODE_SOURCE'
      Size = 10
    end
    object cdsBankInstructionBNACCNO_SOURCE: TStringField
      FieldName = 'BNACCNO_SOURCE'
    end
    object cdsBankInstructionBNACCNAME_SOURCE: TStringField
      FieldName = 'BNACCNAME_SOURCE'
      Size = 150
    end
    object cdsBankInstructionBNBRANCH_SOURCE: TStringField
      FieldName = 'BNBRANCH_SOURCE'
      Size = 150
    end
    object cdsBankInstructionACCBANKID_TARGET: TIntegerField
      FieldName = 'ACCBANKID_TARGET'
      Required = True
    end
    object cdsBankInstructionBNCODE_TARGET: TStringField
      FieldName = 'BNCODE_TARGET'
      Size = 10
    end
    object cdsBankInstructionBNACCNO_TARGET: TStringField
      FieldName = 'BNACCNO_TARGET'
    end
    object cdsBankInstructionBNACCNAME_TARGET: TStringField
      FieldName = 'BNACCNAME_TARGET'
      Size = 150
    end
    object cdsBankInstructionBNBRANCH_TARGET: TStringField
      FieldName = 'BNBRANCH_TARGET'
      Size = 150
    end
    object cdsBankInstructionTRANFER_TYPE: TStringField
      FieldName = 'TRANFER_TYPE'
      Required = True
      Size = 1
    end
    object cdsBankInstructionCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 10
    end
    object cdsBankInstructionAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
    end
    object cdsBankInstructionCHARGES: TFloatField
      FieldName = 'CHARGES'
      Required = True
    end
    object cdsBankInstructionNETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
      Required = True
    end
    object cdsBankInstructionMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBankInstructionMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBankInstructionAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBankInstructionAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBankInstructionUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBankInstructionUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBankInstructionNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBankInstructionISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBankInstructionID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBankInstructionBANKTYPE_SOURCE: TStringField
      FieldName = 'BANKTYPE_SOURCE'
      Size = 1
    end
    object cdsBankInstructionCCYCODE_SOURCE: TStringField
      FieldName = 'CCYCODE_SOURCE'
      Size = 5
    end
    object cdsBankInstructionBANKTYPE_TARGET: TStringField
      FieldName = 'BANKTYPE_TARGET'
      Size = 1
    end
    object cdsBankInstructionCCYCODE_TARGET: TStringField
      FieldName = 'CCYCODE_TARGET'
      Size = 5
    end
  end
end
