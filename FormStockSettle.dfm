inherited frmStockSettle: TfrmStockSettle
  Caption = 'Stock Settlement'
  ClientHeight = 515
  ClientWidth = 611
  ExplicitWidth = 617
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 611
    Height = 425
    ExplicitWidth = 611
    ExplicitHeight = 425
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 81
      Top = 10
      DataBinding.DataField = 'VOUCHERNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 152
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 296
      Top = 10
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [2]
      Left = 480
      Top = 10
      DataBinding.DataField = 'VALUEDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [3]
      Left = 81
      Top = 37
      RepositoryItem = dmGlobal.luReceiveDeliver
      DataBinding.DataField = 'VOUCHERTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [4]
      Left = 81
      Top = 64
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 120
    end
    object cxDBTextEdit3: TcxDBTextEdit [5]
      Left = 216
      Top = 64
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 385
    end
    object cxDBTextEdit4: TcxDBTextEdit [6]
      Left = 98
      Top = 109
      DataBinding.DataField = 'CUST_BANKCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 200
    end
    object cxDBTextEdit5: TcxDBTextEdit [7]
      Left = 98
      Top = 136
      DataBinding.DataField = 'CUST_BANKACCNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit [8]
      Left = 98
      Top = 163
      DataBinding.DataField = 'CUST_BANKACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit [9]
      Left = 389
      Top = 109
      DataBinding.DataField = 'BROKER_BANKCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 200
    end
    object cxDBTextEdit8: TcxDBTextEdit [10]
      Left = 389
      Top = 136
      DataBinding.DataField = 'BROKER_BANKACCNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBTextEdit9: TcxDBTextEdit [11]
      Left = 389
      Top = 163
      DataBinding.DataField = 'BROKER_BANKACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit [12]
      Left = 98
      Top = 220
      DataBinding.DataField = 'SINO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBTextEdit11: TcxDBTextEdit [13]
      Left = 284
      Top = 220
      DataBinding.DataField = 'STOCKCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object cxDBDateEdit3: TcxDBDateEdit [14]
      Left = 98
      Top = 247
      DataBinding.DataField = 'TRDDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 121
    end
    object cxDBDateEdit4: TcxDBDateEdit [15]
      Left = 284
      Top = 247
      DataBinding.DataField = 'DUEDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 121
    end
    object cxDBTextEdit12: TcxDBTextEdit [16]
      Left = 98
      Top = 301
      DataBinding.DataField = 'SETTLE_QTY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 121
    end
    object cxDBTextEdit13: TcxDBTextEdit [17]
      Left = 98
      Top = 328
      DataBinding.DataField = 'TRANSFERMODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 121
    end
    object cxDBTextEdit14: TcxDBTextEdit [18]
      Left = 98
      Top = 355
      DataBinding.DataField = 'QTY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 121
    end
    object cxDBTextEdit15: TcxDBTextEdit [19]
      Left = 98
      Top = 382
      DataBinding.DataField = 'STOCK_ONHAND'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 121
    end
    object cxDBTextEdit16: TcxDBTextEdit [20]
      Left = 98
      Top = 274
      DataBinding.DataField = 'SETTLE_SIDE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Voucher No.'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Entry Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Value Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Voucher Type'
      Parent = dxLayoutGroup1
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Account'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Bank Code'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'A / C No.'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'Name'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 2
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
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Customer Bank'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'Bank Code'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'A / C No.'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'Name'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Broker Bank'
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
      Index = 3
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'SI No.'
      Parent = dxLayoutControl1Group7
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      CaptionOptions.Text = 'Stock Code'
      Parent = dxLayoutControl1Group7
      Control = cxDBTextEdit11
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      CaptionOptions.Text = 'Trade Date'
      Parent = dxLayoutControl1Group8
      Control = cxDBDateEdit3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      CaptionOptions.Text = 'Due Date'
      Parent = dxLayoutControl1Group8
      Control = cxDBDateEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      CaptionOptions.Text = 'Settle Qty'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit12
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      CaptionOptions.Text = 'Transfer Mode'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit13
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      CaptionOptions.Text = 'Qty'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit14
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      CaptionOptions.Text = 'Stock On Hand'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit15
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      CaptionOptions.Text = 'Settle Side'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit16
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Settlement Instruction Info'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 4
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
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
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 446
    Width = 611
    ExplicitTop = 446
    ExplicitWidth = 611
    inherited dbNavLog: TDBNavigator
      Hints.Strings = ()
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
    Top = 495
    Width = 611
    ExplicitTop = 495
    ExplicitWidth = 611
  end
  inherited tabEditorData: TTabSet
    Top = 425
    Width = 611
    ExplicitTop = 425
    ExplicitWidth = 611
  end
  inherited dsSubject: TDataSource
    DataSet = frmStockSettleInstruction.cdsStockVoucher
    Left = 488
    Top = 224
  end
end
