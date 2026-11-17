inherited frmCreateSettlementCashWdr: TfrmCreateSettlementCashWdr
  Caption = 'Cash Withdraw'
  ClientHeight = 345
  ClientWidth = 652
  Position = poOwnerFormCenter
  ExplicitWidth = 658
  ExplicitHeight = 370
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 652
    Height = 296
    ExplicitWidth = 642
    ExplicitHeight = 296
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [0]
      Left = 113
      Top = 28
      DataBinding.DataField = 'DEPOSITAMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnExit = cxDBCurrencyEdit1Exit
      Width = 121
    end
    object txtCCY: TcxDBLookupComboBox [1]
      Left = 113
      Top = 55
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      OnExit = txtCCYExit
      Width = 145
    end
    object txtExRate: TcxDBCurrencyEdit [2]
      Left = 113
      Top = 82
      DataBinding.DataField = 'DEALEXRATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      OnExit = txtExRateExit
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [3]
      Left = 113
      Top = 190
      DataBinding.DataField = 'FXORI'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [4]
      Left = 497
      Top = 28
      DataBinding.DataField = 'BROKER_BANKCODE'
      DataBinding.DataSource = dsCashVoucherH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 129
    end
    object cxDBTextEdit5: TcxDBTextEdit [5]
      Left = 352
      Top = 55
      DataBinding.DataField = 'BROKER_BANKACCBRANCH'
      DataBinding.DataSource = dsCashVoucherH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 273
    end
    object cxDBTextEdit6: TcxDBTextEdit [6]
      Left = 352
      Top = 82
      DataBinding.DataField = 'BROKER_BANKACCNO'
      DataBinding.DataSource = dsCashVoucherH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 273
    end
    object cxDBTextEdit7: TcxDBTextEdit [7]
      Left = 352
      Top = 109
      DataBinding.DataField = 'BROKER_BANKACCNAME'
      DataBinding.DataSource = dsCashVoucherH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 273
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [8]
      Left = 352
      Top = 28
      TabStop = False
      DataBinding.DataField = 'BROKER_BANKID'
      DataBinding.DataSource = dsCashVoucherH
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCBANKCODE'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end
        item
          FieldName = 'CCYCODE'
        end>
      Properties.ListSource = dsLuBrokerBank
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      OnExit = cxDBLookupComboBox1Exit
      Width = 81
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [9]
      Left = 352
      Top = 166
      DataBinding.DataField = 'CUST_BANKID'
      DataBinding.DataSource = dsCashVoucherH
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCBANKCODE'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end
        item
          FieldName = 'CCYCODE'
        end>
      Properties.ListSource = dsLuCustBank
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      OnExit = cxDBLookupComboBox2Exit
      Width = 81
    end
    object cxDBTextEdit1: TcxDBTextEdit [10]
      Left = 497
      Top = 166
      DataBinding.DataField = 'CUST_BANKCODE'
      DataBinding.DataSource = dsCashVoucherH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 129
    end
    object cxDBTextEdit2: TcxDBTextEdit [11]
      Left = 352
      Top = 193
      DataBinding.DataField = 'CUST_BANKACCBRANCH'
      DataBinding.DataSource = dsCashVoucherH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [12]
      Left = 352
      Top = 220
      DataBinding.DataField = 'CUST_BANKACCNO'
      DataBinding.DataSource = dsCashVoucherH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit [13]
      Left = 352
      Top = 247
      DataBinding.DataField = 'CUST_BANKACCNAME'
      DataBinding.DataSource = dsCashVoucherH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [14]
      Left = 113
      Top = 163
      DataBinding.DataField = 'CHARGESAMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [15]
      Left = 113
      Top = 109
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
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [16]
      Left = 113
      Top = 136
      DataBinding.DataField = 'TRANSFERMODE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'LLG'
          ImageIndex = 0
          Value = 'LLG'
        end
        item
          Description = 'OB'
          Value = 'OB'
        end
        item
          Description = 'RTGS'
          Value = 'RTGS'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.Text = 'Withdraw Amount'
      Parent = LayoutControlGroup3
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'Currency'
      Parent = LayoutControlGroup3
      Control = txtCCY
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem3: TdxLayoutItem
      CaptionOptions.Text = 'Deal Rate'
      Parent = LayoutControlGroup3
      Control = txtExRate
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem4: TdxLayoutItem
      CaptionOptions.Text = 'Forex Amount'
      Parent = LayoutControlGroup3
      Control = cxDBCurrencyEdit3
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object LayoutControlGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lgBrokerBank: TdxLayoutGroup
      CaptionOptions.Text = 'Broker Bank'
      Parent = LayoutControlGroup7
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgBrokerBank
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'Bank Name'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'Branch'
      Parent = lgBrokerBank
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'Acc No.'
      Parent = lgBrokerBank
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'Acc Name'
      Parent = lgBrokerBank
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Withdraw Position'
      Parent = LayoutControlGroup1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LayoutControlItem5: TdxLayoutItem
      CaptionOptions.Text = 'Bank Code'
      Parent = dxLayoutControl1Group5
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Beneficiary'
      Parent = LayoutControlGroup7
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object LayoutControlItem6: TdxLayoutItem
      CaptionOptions.Text = 'Bank Code'
      Parent = LayoutControlGroup6
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem7: TdxLayoutItem
      CaptionOptions.Text = 'Bank Name'
      Parent = LayoutControlGroup6
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem8: TdxLayoutItem
      CaptionOptions.Text = 'Bank Branch'
      Parent = LayoutControlGroup2
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem9: TdxLayoutItem
      CaptionOptions.Text = 'Acc No.'
      Parent = LayoutControlGroup2
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem10: TdxLayoutItem
      CaptionOptions.Text = 'Acc Name'
      Parent = LayoutControlGroup2
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlGroup6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem11: TdxLayoutItem
      CaptionOptions.Text = 'Bank Charges'
      Parent = LayoutControlGroup3
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LayoutControlItem12: TdxLayoutItem
      CaptionOptions.Text = 'Transfer Type'
      Parent = LayoutControlGroup3
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlItem13: TdxLayoutItem
      CaptionOptions.Text = 'Transfer Mode'
      Parent = LayoutControlGroup3
      Control = cxDBImageComboBox2
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutControlGroup7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 296
    Width = 652
    ExplicitTop = 296
    ExplicitWidth = 642
    inherited LayoutControlFooterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    inherited LayoutControlFooterItem1: TdxLayoutItem
      Index = 0
    end
    inherited LayoutControlFooterItem2: TdxLayoutItem
      Index = 1
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCreateSettlementPayment.cdsCashPosition
    Left = 451
    Top = 297
  end
  object dsLuBrokerBank: TDataSource
    DataSet = frmCreateSettlementPayment.cdsLuBrokerBank
    Left = 484
    Top = 297
  end
  object dsCashVoucherH: TDataSource
    DataSet = frmCreateSettlementPayment.cdsCashVoucherH
    Left = 519
    Top = 297
  end
  object dsLuCustBank: TDataSource
    DataSet = frmCreateSettlementPayment.cdsLuCustBank
    Left = 553
    Top = 297
  end
  object cdsBankCharges: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'BNCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TRANSFERAMOUNT'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryBankCharges'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 587
    Top = 297
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
    object cdsBankChargesCCYCODE: TStringField
      FieldName = 'CCYCODE'
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
end
