inherited frmCreateSettlementCashDep: TfrmCreateSettlementCashDep
  Caption = 'Cash Deposit'
  ClientHeight = 263
  ClientWidth = 634
  Position = poOwnerFormCenter
  ExplicitWidth = 640
  ExplicitHeight = 288
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 634
    Height = 214
    ExplicitWidth = 786
    ExplicitHeight = 300
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [0]
      Left = 103
      Top = 55
      DataBinding.DataField = 'DEPOSITAMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      OnExit = cxDBCurrencyEdit1Exit
      Width = 121
    end
    object txtCCY: TcxDBLookupComboBox [1]
      Left = 103
      Top = 28
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      OnExit = txtCCYExit
      Width = 145
    end
    object txtExRate: TcxDBCurrencyEdit [2]
      Left = 103
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
      Left = 103
      Top = 163
      DataBinding.DataField = 'FXORI'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [4]
      Left = 479
      Top = 28
      DataBinding.DataField = 'BROKER_BANKCODE'
      DataBinding.DataSource = dsCashVoucherH
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 129
    end
    object cxDBTextEdit5: TcxDBTextEdit [5]
      Left = 334
      Top = 55
      DataBinding.DataField = 'BROKER_BANKACCBRANCH'
      DataBinding.DataSource = dsCashVoucherH
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 273
    end
    object cxDBTextEdit6: TcxDBTextEdit [6]
      Left = 334
      Top = 82
      DataBinding.DataField = 'BROKER_BANKACCNO'
      DataBinding.DataSource = dsCashVoucherH
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 273
    end
    object cxDBTextEdit7: TcxDBTextEdit [7]
      Left = 334
      Top = 109
      DataBinding.DataField = 'BROKER_BANKACCNAME'
      DataBinding.DataSource = dsCashVoucherH
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 273
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [8]
      Left = 334
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
      TabOrder = 6
      Width = 81
    end
    object txtCharge: TcxDBCurrencyEdit [9]
      Left = 103
      Top = 109
      DataBinding.DataField = 'CHARGES'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      OnExit = txtChargeExit
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [10]
      Left = 103
      Top = 136
      DataBinding.DataField = 'NETAMOUNT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.Text = 'Deposit Amount'
      Parent = LayoutControlGroup5
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'Currency'
      Parent = LayoutControlGroup3
      Control = txtCCY
      ControlOptions.ShowBorder = False
      Index = 0
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
      Index = 5
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
      Parent = LayoutControlGroup1
      ButtonOptions.Buttons = <>
      Index = 1
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
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
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
    object LayoutControlItem6: TdxLayoutItem
      CaptionOptions.Text = 'Bank Charges'
      Parent = LayoutControlGroup3
      Control = txtCharge
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlItem7: TdxLayoutItem
      CaptionOptions.Text = 'Net Amount'
      Parent = LayoutControlGroup3
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutControlGroup5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 214
    Width = 634
    ExplicitTop = 300
    ExplicitWidth = 786
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
    DataSet = frmCreateSettlementReceive.cdsCashPosition
    Left = 571
    Top = 63
  end
  object dsLuBrokerBank: TDataSource
    DataSet = frmCreateSettlementReceive.cdsLuBrokerBank
    Left = 571
    Top = 112
  end
  object dsCashVoucherH: TDataSource
    DataSet = frmCreateSettlementReceive.cdsCashVoucherH
    Left = 570
    Top = 157
  end
end
