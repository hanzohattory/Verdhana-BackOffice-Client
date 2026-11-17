inherited frmCashDep: TfrmCashDep
  Caption = 'Cash Deposit'
  ClientHeight = 347
  ClientWidth = 634
  ExplicitWidth = 650
  ExplicitHeight = 386
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 634
    Height = 257
    ExplicitWidth = 634
    ExplicitHeight = 257
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 88
      Top = 10
      TabStop = False
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
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
      Left = 88
      Top = 37
      DataBinding.DataField = 'CDDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 533
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 88
      Top = 145
      TabStop = False
      DataBinding.DataField = 'BNBRANCH'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 423
    end
    object cxDBTextEdit6: TcxDBTextEdit [3]
      Left = 258
      Top = 10
      TabStop = False
      DataBinding.DataField = 'CDCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 200
    end
    object cxDBTextEdit5: TcxDBTextEdit [4]
      Left = 88
      Top = 172
      TabStop = False
      DataBinding.DataField = 'BNACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 423
    end
    object cxDBTextEdit7: TcxDBTextEdit [5]
      Left = 88
      Top = 199
      TabStop = False
      DataBinding.DataField = 'BNACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 423
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [6]
      Left = 88
      Top = 226
      DataBinding.DataField = 'CDAMT'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.00'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 184
    end
    object cbBank: TcxDBLookupComboBox [7]
      Left = 88
      Top = 118
      RepositoryItem = dmGlobal.luBankCompany
      DataBinding.DataField = 'ACCBANKID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 265
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [8]
      Left = 88
      Top = 64
      DataBinding.DataField = 'ACCNAME'
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
      Width = 533
    end
    object txtAccName: TcxTextEdit [9]
      Left = 88
      Top = 91
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Text = 'txtAccName'
      Width = 533
    end
    object cxDBTextEdit2: TcxDBTextEdit [10]
      Left = 408
      Top = 118
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 100
    end
    object cxDBDateEdit2: TcxDBDateEdit [11]
      Left = 521
      Top = 10
      DataBinding.DataField = 'CDDATE'
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
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 533
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Branch'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 423
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Voucher No.'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
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
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Acc No'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 423
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Acc Name'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 423
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Amount'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 184
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank ID'
      Control = cbBank
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 265
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object AccName: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Name'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object AccountName: TdxLayoutItem
      Parent = dxLayoutGroup1
      Visible = False
      CaptionOptions.Text = 'Account Name'
      Control = txtAccName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Currency'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 278
    Width = 634
    ExplicitTop = 278
    ExplicitWidth = 634
    inherited dbNavLog: TDBNavigator
      Left = 520
      Hints.Strings = ()
      ExplicitLeft = 520
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 327
    Width = 634
    ExplicitTop = 327
    ExplicitWidth = 634
  end
  inherited tabEditorData: TTabSet
    Top = 257
    Width = 634
    ExplicitTop = 257
    ExplicitWidth = 634
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCashDep
    Left = 439
    Top = 114
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 312
    Top = 280
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsCashDep: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashDep'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsCashDepBeforePost
    AfterPost = cdsCashDepAfterPost
    OnNewRecord = cdsCashDepNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 440
    Top = 160
    object cdsCashDepCDID: TLargeintField
      FieldName = 'CDID'
      Required = True
    end
    object cdsCashDepCDCODE: TStringField
      FieldName = 'CDCODE'
      Required = True
    end
    object cdsCashDepCDDATE: TDateField
      FieldName = 'CDDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashDepCDDESC: TStringField
      FieldName = 'CDDESC'
      Size = 100
    end
    object cdsCashDepACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCashDepACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
      OnChange = cdsCashDepACCIDChange
    end
    object cdsCashDepACCNO: TStringField
      FieldName = 'ACCNO'
      Required = True
      Size = 30
    end
    object cdsCashDepACTLED_ACCID: TIntegerField
      FieldName = 'ACTLED_ACCID'
    end
    object cdsCashDepACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsCashDepACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      OnChange = cdsCashDepACCBANKIDChange
    end
    object cdsCashDepCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsCashDepCDAMT: TFloatField
      FieldName = 'CDAMT'
      Required = True
    end
    object cdsCashDepLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
      Size = 10
    end
    object cdsCashDepLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsCashDepPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashDepPOSTED_DATE: TDateField
      FieldName = 'POSTED_DATE'
    end
    object cdsCashDepPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsCashDepMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashDepMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashDepAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashDepAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashDepUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashDepUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashDepNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashDepISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashDepID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashDepLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsCashDepENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashDepCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsCashDepCANCEL_DATE: TDateField
      FieldName = 'CANCEL_DATE'
    end
    object cdsCashDepCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsCashDepDEP_TYPE: TStringField
      FieldName = 'DEP_TYPE'
      Size = 1
    end
    object cdsCashDepUPLOAD_TIME: TDateTimeField
      FieldName = 'UPLOAD_TIME'
    end
    object cdsCashDepACCNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCashDepBNCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'BNCODE'
      LookupDataSet = dmLookup.cdsLuBankCompany
      LookupKeyFields = 'BANKID'
      LookupResultField = 'BNCODE'
      KeyFields = 'ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashDepBNACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'BNACCNO'
      LookupDataSet = dmLookup.cdsLuBankCompany
      LookupKeyFields = 'BANKID'
      LookupResultField = 'BANKACCOUNTNO'
      KeyFields = 'ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashDepBNACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'BNACCNAME'
      LookupDataSet = dmLookup.cdsLuBankCompany
      LookupKeyFields = 'BANKID'
      LookupResultField = 'BANKACCOUNTNAME'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashDepBNBRANCH: TStringField
      FieldKind = fkLookup
      FieldName = 'BNBRANCH'
      LookupDataSet = dmLookup.cdsLuBankCompany
      LookupKeyFields = 'BANKID'
      LookupResultField = 'BANKACCOUNTBRANCH'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashDepBANKCCYCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'BANKCCYCODE'
      LookupDataSet = dmLookup.cdsLuBankCompany
      LookupKeyFields = 'BANKID'
      LookupResultField = 'CCYCODE'
      KeyFields = 'ACCBANKID'
      Size = 5
      Lookup = True
    end
    object cdsCashDepCCY_TMP: TStringField
      FieldKind = fkLookup
      FieldName = 'CCY_TMP'
      LookupDataSet = dmLookup.cdsLuBankRDNByAccount
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'CCYCODE'
      KeyFields = 'ACCBANKID'
      Size = 10
      Lookup = True
    end
    object cdsCashDepISRDN: TStringField
      FieldName = 'ISRDN'
      Required = True
      Size = 1
    end
  end
end
