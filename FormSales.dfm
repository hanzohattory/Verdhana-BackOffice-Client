inherited frmSales: TfrmSales
  Caption = 'Sales'
  ClientHeight = 533
  ClientWidth = 564
  ExplicitWidth = 580
  ExplicitHeight = 572
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 564
    Height = 443
    ExplicitWidth = 564
    ExplicitHeight = 396
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 67
      Top = 10
      DataBinding.DataField = 'SALESCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 64
    end
    object cxDBTextEdit3: TcxDBTextEdit [1]
      Left = 169
      Top = 10
      DataBinding.DataField = 'SALESNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 384
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 67
      Top = 37
      RepositoryItem = dmGlobal.luSalesType
      DataBinding.DataField = 'SALESTYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 127
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [3]
      Left = 67
      Top = 64
      RepositoryItem = dmGlobal.luBranch
      DataBinding.DataField = 'BRANCHID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 127
    end
    object cxDBTextEdit2: TcxDBTextEdit [4]
      Left = 67
      Top = 91
      DataBinding.DataField = 'ADDRESS1'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 486
    end
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 67
      Top = 118
      DataBinding.DataField = 'ADDRESS2'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 486
    end
    object cxDBTextEdit5: TcxDBTextEdit [6]
      Left = 67
      Top = 145
      DataBinding.DataField = 'ADDRESS3'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 486
    end
    object cxDBTextEdit7: TcxDBTextEdit [7]
      Left = 67
      Top = 172
      DataBinding.DataField = 'PHONE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 130
    end
    object cxDBTextEdit8: TcxDBTextEdit [8]
      Left = 417
      Top = 172
      DataBinding.DataField = 'FAX'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 130
    end
    object cxDBTextEdit9: TcxDBTextEdit [9]
      Left = 238
      Top = 172
      DataBinding.DataField = 'MOBILEPHONE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 150
    end
    object cxDBTextEdit12: TcxDBTextEdit [10]
      Left = 67
      Top = 271
      DataBinding.DataField = 'IDNUMBER'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 196
    end
    object luIDTYpe: TcxDBComboBox [11]
      Left = 312
      Top = 271
      DataBinding.DataField = 'IDTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items.Strings = (
        'KTP'
        'SIM'
        'Passport')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 121
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [12]
      Left = 77
      Top = 316
      RepositoryItem = dmGlobal.luUser
      DataBinding.DataField = 'USERID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 167
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [13]
      Left = 77
      Top = 343
      DataBinding.DataField = 'HARDLIMIT'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 167
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [14]
      Left = 77
      Top = 370
      DataBinding.DataField = 'SOFTLIMIT'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 167
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [15]
      Left = 77
      Top = 397
      DataBinding.DataField = 'TEMPLIMIT'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 167
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox [16]
      Left = 394
      Top = 316
      RepositoryItem = dmGlobal.luCommShare
      DataBinding.DataField = 'COMM_SHARE_ID_N'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      Width = 120
    end
    object cxDBLookupComboBox5: TcxDBLookupComboBox [17]
      Left = 394
      Top = 343
      RepositoryItem = dmGlobal.luCommShare
      DataBinding.DataField = 'COMM_SHARE_ID_I'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 19
      Width = 120
    end
    object cxDBLookupComboBox6: TcxDBLookupComboBox [18]
      Left = 394
      Top = 370
      RepositoryItem = dmGlobal.luCommShare
      DataBinding.DataField = 'COMM_SHARE_ID_E'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 21
      Width = 120
    end
    object cxDBLookupComboBox7: TcxDBLookupComboBox [19]
      Left = 394
      Top = 397
      RepositoryItem = dmGlobal.luCommShare
      DataBinding.DataField = 'COMM_SHARE_ID_B'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 23
      Width = 120
    end
    object btnRefN: TcxButton [20]
      Left = 520
      Top = 316
      Width = 21
      Height = 21
      Caption = '...'
      TabOrder = 18
      OnClick = btnRefNClick
    end
    object btnRefI: TcxButton [21]
      Left = 520
      Top = 343
      Width = 21
      Height = 21
      Caption = '...'
      TabOrder = 20
      OnClick = btnRefIClick
    end
    object btnRefE: TcxButton [22]
      Left = 520
      Top = 370
      Width = 21
      Height = 21
      Caption = '...'
      TabOrder = 22
      OnClick = btnRefEClick
    end
    object btnRefB: TcxButton [23]
      Left = 520
      Top = 397
      Width = 21
      Height = 21
      Caption = '...'
      TabOrder = 24
      OnClick = btnRefBClick
    end
    object cxDBMemo1: TcxDBMemo [24]
      Left = 67
      Top = 199
      DataBinding.DataField = 'EMAIL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Height = 66
      Width = 486
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Name'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 384
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sales Type'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 127
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Branch'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 127
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Address'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 461
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = ' '
      Control = cxDBTextEdit4
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
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = ' '
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Phone'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Fax'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Mobile'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'ID Number'
      Control = cxDBTextEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 196
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'ID Type'
      Control = luIDTYpe
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'User ID'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 167
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'ID / Limit'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Hard Limit'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 167
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Soft Limit'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 167
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Temp Limit'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 167
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'No Referral'
      Control = cxDBLookupComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Referral (Internal Only)'
      Control = cxDBLookupComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Commission Share'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Referral (External Only)'
      Control = cxDBLookupComboBox6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Referral (Both)'
      Control = cxDBLookupComboBox7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnRefN
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Visible = False
      Control = btnRefI
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Visible = False
      Control = btnRefE
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Visible = False
      Control = btnRefB
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Email'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 66
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 464
    Width = 564
    ExplicitTop = 417
    ExplicitWidth = 564
    inherited dbNavLog: TDBNavigator
      Left = 450
      Hints.Strings = ()
      ExplicitLeft = 450
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 513
    Width = 564
    ExplicitTop = 466
    ExplicitWidth = 564
  end
  inherited tabEditorData: TTabSet
    Top = 443
    Width = 564
    ExplicitTop = 396
    ExplicitWidth = 564
  end
  inherited dsSubject: TDataSource
    DataSet = cdsSales
    Left = 392
    Top = 32
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 520
    Top = 32
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsSales: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'SALESID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qrySales'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsSalesBeforePost
    OnNewRecord = cdsSalesNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 448
    Top = 32
    object cdsSalesSALESID: TLargeintField
      FieldName = 'SALESID'
      Required = True
    end
    object cdsSalesSALESCODE: TStringField
      FieldName = 'SALESCODE'
      Required = True
    end
    object cdsSalesEMPID: TLargeintField
      FieldName = 'EMPID'
    end
    object cdsSalesAGENT_ID: TLargeintField
      FieldName = 'AGENT_ID'
    end
    object cdsSalesSALESNAME: TStringField
      FieldName = 'SALESNAME'
      Size = 30
    end
    object cdsSalesEXT: TStringField
      FieldName = 'EXT'
      Size = 5
    end
    object cdsSalesDEALERID: TLargeintField
      FieldName = 'DEALERID'
    end
    object cdsSalesBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsSalesADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Size = 100
    end
    object cdsSalesADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 100
    end
    object cdsSalesADDRESS3: TStringField
      FieldName = 'ADDRESS3'
      Size = 100
    end
    object cdsSalesPHONE: TStringField
      FieldName = 'PHONE'
      Size = 15
    end
    object cdsSalesMOBILEPHONE: TStringField
      FieldName = 'MOBILEPHONE'
      Size = 15
    end
    object cdsSalesFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsSalesIDNUMBER: TStringField
      FieldName = 'IDNUMBER'
      Size = 50
    end
    object cdsSalesIDTYPE: TStringField
      FieldName = 'IDTYPE'
    end
    object cdsSalesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object cdsSalesSHRCOMM: TFloatField
      FieldName = 'SHRCOMM'
    end
    object cdsSalesSALESTYPE: TStringField
      FieldName = 'SALESTYPE'
      Size = 10
    end
    object cdsSalesUSERID: TStringField
      FieldName = 'USERID'
    end
    object cdsSalesHARDLIMIT: TFloatField
      FieldName = 'HARDLIMIT'
    end
    object cdsSalesSOFTLIMIT: TFloatField
      FieldName = 'SOFTLIMIT'
    end
    object cdsSalesTEMPLIMIT: TFloatField
      FieldName = 'TEMPLIMIT'
    end
    object cdsSalesMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSalesMODUI: TStringField
      FieldName = 'MODUI'
    end
    object cdsSalesAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSalesAPPUI: TStringField
      FieldName = 'APPUI'
    end
    object cdsSalesUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsSalesUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsSalesNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsSalesISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSalesID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSalesCOMM_SHARE_ID_N: TIntegerField
      FieldName = 'COMM_SHARE_ID_N'
    end
    object cdsSalesCOMM_SHARE_ID_I: TIntegerField
      FieldName = 'COMM_SHARE_ID_I'
    end
    object cdsSalesCOMM_SHARE_ID_E: TIntegerField
      FieldName = 'COMM_SHARE_ID_E'
    end
    object cdsSalesCOMM_SHARE_ID_B: TIntegerField
      FieldName = 'COMM_SHARE_ID_B'
    end
  end
end
