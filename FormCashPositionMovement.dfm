inherited frmCashPositionMovement: TfrmCashPositionMovement
  Caption = 'Cash Position Movement'
  ClientHeight = 355
  ClientWidth = 498
  ExplicitWidth = 504
  ExplicitHeight = 384
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 498
    Height = 265
    ExplicitWidth = 498
    ExplicitHeight = 265
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 227
      Top = 10
      TabStop = False
      DataBinding.DataField = 'CMPOSCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 219
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 38
      Top = 10
      TabStop = False
      DataBinding.DataField = 'CMPOSDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 95
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [2]
      Left = 91
      Top = 193
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [3]
      Left = 91
      Top = 220
      TabStop = False
      DataBinding.DataField = 'EXCHRATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [4]
      Left = 275
      Top = 220
      TabStop = False
      DataBinding.DataField = 'FXAMOUNT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [5]
      Left = 91
      Top = 82
      TabStop = False
      DataBinding.DataField = 'SOURCEACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [6]
      Left = 331
      Top = 82
      TabStop = False
      DataBinding.DataField = 'TARGETACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [7]
      Left = 91
      Top = 109
      DataBinding.DataField = 'SOURCE_ALTYPE'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ALTYPE'
      Properties.ListColumns = <
        item
          FieldName = 'ALTYPE'
        end
        item
          Width = 300
          FieldName = 'ALDESCRIPTION'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuActLedTypeCash
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 145
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox [8]
      Left = 331
      Top = 109
      DataBinding.DataField = 'TARGET_ALTYPE'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ALTYPE'
      Properties.ListColumns = <
        item
          FieldName = 'ALTYPE'
        end
        item
          Width = 300
          FieldName = 'ALDESCRIPTION'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuActLedTypeCash
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 145
    end
    object cxDBLookupComboBox5: TcxDBLookupComboBox [9]
      Left = 275
      Top = 193
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 70
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [10]
      Left = 91
      Top = 166
      DataBinding.DataField = 'CASHPOS'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object txtSourceAccCode: TcxButtonEdit [11]
      Left = 91
      Top = 55
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = txtSourceAccIDPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 121
    end
    object txtTargetAccCode: TcxButtonEdit [12]
      Left = 331
      Top = 55
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = txtTargetAccCodePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'CM Position Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
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
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Amount'
      Parent = dxLayoutControl1Group9
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Exrate'
      Parent = dxLayoutControl1Group8
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'FX Amount'
      Parent = dxLayoutControl1Group8
      Control = cxDBCurrencyEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Source'
      Parent = dxLayoutControl1Group7
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Target'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'Acc Name'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'Acc Name'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Ledger Type'
      Parent = dxLayoutControl1Group3
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'Ledger Type'
      Parent = dxLayoutControl1Group4
      Control = cxDBLookupComboBox4
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group9
      Control = cxDBLookupComboBox5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Cash Position'
      Parent = dxLayoutControl1Group6
      Control = cxDBCurrencyEdit4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Acc Code'
      Parent = dxLayoutControl1Group3
      Control = txtSourceAccCode
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'Acc Code'
      Parent = dxLayoutControl1Group4
      Control = txtTargetAccCode
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 286
    Width = 498
    ExplicitTop = 286
    ExplicitWidth = 498
    inherited dbNavLog: TDBNavigator
      Left = 384
      Hints.Strings = ()
      ExplicitLeft = 384
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
    Top = 335
    Width = 498
    ExplicitTop = 335
    ExplicitWidth = 498
  end
  inherited tabEditorData: TTabSet
    Top = 265
    Width = 498
    ExplicitTop = 265
    ExplicitWidth = 498
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCashPositionMovement
    Left = 321
    Top = 148
  end
  object cdsCashPositionMovement: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CMPOSID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashPositionMovement'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 288
    Top = 147
    object cdsCashPositionMovementCMPOSID: TLargeintField
      FieldName = 'CMPOSID'
      Required = True
    end
    object cdsCashPositionMovementCMPOSCODE: TStringField
      FieldName = 'CMPOSCODE'
      Required = True
    end
    object cdsCashPositionMovementCMPOSDATE: TDateField
      FieldName = 'CMPOSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashPositionMovementENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashPositionMovementCMPOSTYPE: TStringField
      FieldName = 'CMPOSTYPE'
      Size = 1
    end
    object cdsCashPositionMovementSOURCE_ACCID: TLargeintField
      FieldName = 'SOURCE_ACCID'
      OnChange = cdsCashPositionMovementSOURCE_ACCIDChange
    end
    object cdsCashPositionMovementTARGET_ACCID: TLargeintField
      FieldName = 'TARGET_ACCID'
    end
    object cdsCashPositionMovementSOURCE_ALTYPE: TStringField
      FieldName = 'SOURCE_ALTYPE'
      Size = 10
    end
    object cdsCashPositionMovementTARGET_ALTYPE: TStringField
      FieldName = 'TARGET_ALTYPE'
      Size = 10
    end
    object cdsCashPositionMovementCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCashPositionMovementEXCHRATE: TFloatField
      FieldName = 'EXCHRATE'
      OnChange = cdsCashPositionMovementEXCHRATEChange
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPositionMovementAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPositionMovementFXAMOUNT: TFloatField
      FieldName = 'FXAMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPositionMovementPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashPositionMovementPOSTED_DATE: TDateField
      FieldName = 'POSTED_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashPositionMovementPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsCashPositionMovementCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsCashPositionMovementCANCEL_DATE: TDateField
      FieldName = 'CANCEL_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashPositionMovementCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsCashPositionMovementAPPROVED: TStringField
      FieldName = 'APPROVED'
      Size = 1
    end
    object cdsCashPositionMovementAPPROVED_DATE: TDateField
      FieldName = 'APPROVED_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashPositionMovementAPPROVED_UI: TStringField
      FieldName = 'APPROVED_UI'
      Size = 30
    end
    object cdsCashPositionMovementMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashPositionMovementMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashPositionMovementAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashPositionMovementAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashPositionMovementUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashPositionMovementUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashPositionMovementNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashPositionMovementISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashPositionMovementID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashPositionMovementSOURCEACCNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'SOURCEACCNAME'
      Size = 150
    end
    object cdsCashPositionMovementCASHPOS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CASHPOS'
    end
    object cdsCashPositionMovementTARGETACCNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'TARGETACCNAME'
      Size = 150
    end
  end
  object dsLuAccountByEntity: TDataSource
    DataSet = dmLookup.cdsLuAccountByEntity
    Left = 357
    Top = 147
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
    Left = 435
    Top = 174
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
  end
end
