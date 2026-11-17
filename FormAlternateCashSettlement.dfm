inherited frmAlternateCashSettlement: TfrmAlternateCashSettlement
  Caption = 'Alternate Cash Settlement'
  ClientHeight = 351
  ClientWidth = 515
  ExplicitWidth = 531
  ExplicitHeight = 390
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 515
    Height = 261
    ExplicitWidth = 515
    ExplicitHeight = 261
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 82
      Top = 10
      TabStop = False
      DataBinding.DataField = 'ACSCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 197
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 82
      Top = 37
      TabStop = False
      DataBinding.DataField = 'ACSDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [2]
      Left = 259
      Top = 37
      TabStop = False
      DataBinding.DataField = 'DUEDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [3]
      Left = 82
      Top = 91
      RepositoryItem = dmGlobal.luInstrumentStock
      AutoSize = False
      DataBinding.DataField = 'STOCKID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Height = 21
      Width = 120
    end
    object cxDBTextEdit2: TcxDBTextEdit [4]
      Left = 217
      Top = 118
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'KPEINAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Height = 21
      Width = 288
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [5]
      Left = 82
      Top = 64
      DataBinding.DataField = 'ACCCODE'
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
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Width = 120
    end
    object cxDBTextEdit3: TcxDBTextEdit [6]
      Left = 217
      Top = 64
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Height = 21
      Width = 288
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [7]
      Left = 82
      Top = 118
      RepositoryItem = dmGlobal.luAccountKSEI
      DataBinding.DataField = 'KPEI_ACCID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 120
    end
    object cxDBTextEdit4: TcxDBTextEdit [8]
      Left = 217
      Top = 91
      TabStop = False
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 288
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [9]
      Left = 69
      Top = 163
      TabStop = False
      DataBinding.DataField = 'PRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [10]
      Left = 69
      Top = 190
      DataBinding.DataField = 'QUANTITY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [11]
      Left = 69
      Top = 217
      TabStop = False
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Width = 121
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [12]
      Left = 259
      Top = 163
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'RATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      Height = 21
      Width = 121
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit [13]
      Left = 259
      Top = 190
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'FEEAMOUNT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Height = 21
      Width = 121
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit [14]
      Left = 259
      Top = 217
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'NETAMOUNT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Height = 21
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [15]
      Left = 314
      Top = 10
      RepositoryItem = dmGlobal.luACSType
      AutoSize = False
      DataBinding.DataField = 'ACS_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Height = 21
      Width = 189
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 197
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Due Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avClient
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Account Code'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 288
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'KPEI Code'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Price'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      CaptionOptions.Text = 'Quantity'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahClient
      CaptionOptions.Text = 'Amount'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignVert = avClient
      CaptionOptions.Text = 'Rate'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Fee Amount'
      Control = cxDBCurrencyEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignVert = avBottom
      CaptionOptions.Text = 'Net Amount'
      Control = cxDBCurrencyEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 5
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      Index = 0
    end
    object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup5
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 189
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 282
    Width = 515
    ExplicitTop = 282
    ExplicitWidth = 515
    inherited dbNavLog: TDBNavigator
      Left = 401
      Hints.Strings = ()
      ExplicitLeft = 401
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 331
    Width = 515
    ExplicitTop = 331
    ExplicitWidth = 515
  end
  inherited tabEditorData: TTabSet
    Top = 261
    Width = 515
    ExplicitTop = 261
    ExplicitWidth = 515
  end
  inherited dsSubject: TDataSource
    DataSet = cdsAlternateCashSettlement
    Left = 464
    Top = 160
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 464
    Top = 208
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsAlternateCashSettlement: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'acdID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryAlternateCashSettlement'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsAlternateCashSettlementAfterOpen
    BeforePost = cdsAlternateCashSettlementBeforePost
    OnNewRecord = cdsAlternateCashSettlementNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 464
    Top = 112
    object cdsAlternateCashSettlementACSID: TLargeintField
      FieldName = 'ACSID'
      Required = True
    end
    object cdsAlternateCashSettlementACSCODE: TStringField
      FieldName = 'ACSCODE'
      Required = True
    end
    object cdsAlternateCashSettlementACSDATE: TDateField
      FieldName = 'ACSDATE'
      Required = True
    end
    object cdsAlternateCashSettlementDUEDATE: TDateField
      FieldName = 'DUEDATE'
      Required = True
    end
    object cdsAlternateCashSettlementACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAlternateCashSettlementKPEI_ACCID: TIntegerField
      FieldName = 'KPEI_ACCID'
      Required = True
      OnChange = cdsAlternateCashSettlementKPEI_ACCIDChange
    end
    object cdsAlternateCashSettlementSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
      OnChange = cdsAlternateCashSettlementSTOCKIDChange
    end
    object cdsAlternateCashSettlementPRICE: TFloatField
      FieldName = 'PRICE'
      Required = True
      OnChange = cdsAlternateCashSettlementPRICEChange
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAlternateCashSettlementQUANTITY: TFloatField
      FieldName = 'QUANTITY'
      Required = True
      OnChange = cdsAlternateCashSettlementQUANTITYChange
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAlternateCashSettlementAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
      OnChange = cdsAlternateCashSettlementAMOUNTChange
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAlternateCashSettlementRATE: TFloatField
      FieldName = 'RATE'
      Required = True
      OnChange = cdsAlternateCashSettlementRATEChange
      DisplayFormat = '#,##0.00 %;(#,##0.00) %;0.00 %'
    end
    object cdsAlternateCashSettlementFEEAMOUNT: TFloatField
      FieldName = 'FEEAMOUNT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAlternateCashSettlementCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsAlternateCashSettlementNETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAlternateCashSettlementKPEI_COID: TLargeintField
      FieldName = 'KPEI_COID'
    end
    object cdsAlternateCashSettlementKPEI_SOID: TLargeintField
      FieldName = 'KPEI_SOID'
    end
    object cdsAlternateCashSettlementCOID: TLargeintField
      FieldName = 'COID'
    end
    object cdsAlternateCashSettlementSOID: TLargeintField
      FieldName = 'SOID'
    end
    object cdsAlternateCashSettlementLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
    object cdsAlternateCashSettlementLEDGERTRANSID_REVERSED: TLargeintField
      FieldName = 'LEDGERTRANSID_REVERSED'
    end
    object cdsAlternateCashSettlementSTOCKTRANSID: TLargeintField
      FieldName = 'STOCKTRANSID'
    end
    object cdsAlternateCashSettlementSTOCKTRANSID_REVERSED: TLargeintField
      FieldName = 'STOCKTRANSID_REVERSED'
    end
    object cdsAlternateCashSettlementSTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
    object cdsAlternateCashSettlementCREATED_DATE: TDateTimeField
      FieldName = 'CREATED_DATE'
    end
    object cdsAlternateCashSettlementCREATED_SYSDATE: TDateTimeField
      FieldName = 'CREATED_SYSDATE'
    end
    object cdsAlternateCashSettlementCREATED_UI: TStringField
      FieldName = 'CREATED_UI'
      Size = 30
    end
    object cdsAlternateCashSettlementCANCELED_DATE: TDateTimeField
      FieldName = 'CANCELED_DATE'
    end
    object cdsAlternateCashSettlementCANCELED_SYSDATE: TDateTimeField
      FieldName = 'CANCELED_SYSDATE'
    end
    object cdsAlternateCashSettlementCANCELED_NOTES: TStringField
      FieldName = 'CANCELED_NOTES'
      Size = 100
    end
    object cdsAlternateCashSettlementCANCELED_UI: TStringField
      FieldName = 'CANCELED_UI'
      Size = 30
    end
    object cdsAlternateCashSettlementPOSTED_DATE: TDateTimeField
      FieldName = 'POSTED_DATE'
    end
    object cdsAlternateCashSettlementPOSTED_SYSDATE: TDateTimeField
      FieldName = 'POSTED_SYSDATE'
    end
    object cdsAlternateCashSettlementPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsAlternateCashSettlementREVERSED_DATE: TDateTimeField
      FieldName = 'REVERSED_DATE'
    end
    object cdsAlternateCashSettlementREVERSED_SYSDATE: TDateTimeField
      FieldName = 'REVERSED_SYSDATE'
    end
    object cdsAlternateCashSettlementREVERSED_UI: TStringField
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsAlternateCashSettlementMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAlternateCashSettlementMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAlternateCashSettlementAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAlternateCashSettlementAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAlternateCashSettlementUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAlternateCashSettlementUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAlternateCashSettlementNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAlternateCashSettlementISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAlternateCashSettlementID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAlternateCashSettlementACCCODE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ACCCODE'
    end
    object cdsAlternateCashSettlementACCNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ACCNAME'
      Size = 500
    end
    object cdsAlternateCashSettlementSTOCKCODE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'STOCKCODE'
    end
    object cdsAlternateCashSettlementSTOCKNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'STOCKNAME'
      Size = 500
    end
    object cdsAlternateCashSettlementKPEICODE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'KPEICODE'
    end
    object cdsAlternateCashSettlementKPEINAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'KPEINAME'
      Size = 500
    end
    object cdsAlternateCashSettlementACS_TYPE: TStringField
      FieldName = 'ACS_TYPE'
      Required = True
      Size = 2
    end
  end
end
