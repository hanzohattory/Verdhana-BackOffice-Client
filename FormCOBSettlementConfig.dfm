inherited frmCOBSettlementConfig: TfrmCOBSettlementConfig
  Caption = 'Settlement Configuration'
  ClientHeight = 447
  ClientWidth = 634
  ExplicitWidth = 640
  ExplicitHeight = 476
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 634
    Height = 398
    ExplicitLeft = -72
    ExplicitTop = -8
    ExplicitWidth = 683
    ExplicitHeight = 674
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 54
      Top = 10
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 190
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 427
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [2]
      Left = 182
      Top = 80
      RepositoryItem = luCustCustody
      DataBinding.DataField = 'IDX_CASHPAY_SOURCE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 145
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [3]
      Left = 182
      Top = 107
      RepositoryItem = luCustCustody
      DataBinding.DataField = 'IDX_CASHRCV_SOURCE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 145
    end
    object cxLabel4: TcxLabel [4]
      Left = 182
      Top = 55
      AutoSize = False
      Caption = 'SOURCE'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 19
      Width = 145
    end
    object cxLabel2: TcxLabel [5]
      Left = 333
      Top = 55
      AutoSize = False
      Caption = 'TARGET'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 19
      Width = 145
    end
    object cxLabel3: TcxLabel [6]
      Left = 484
      Top = 55
      AutoSize = False
      Caption = 'INSTRUCTION MODE'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 19
      Width = 121
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox [7]
      Left = 333
      Top = 80
      RepositoryItem = luCustCustody
      DataBinding.DataField = 'IDX_CASHPAY_TARGET'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 145
    end
    object cxDBTextEdit5: TcxDBTextEdit [8]
      Left = 484
      Top = 80
      DataBinding.DataField = 'IDX_CASHPAY_INSTR'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBLookupComboBox7: TcxDBLookupComboBox [9]
      Left = 333
      Top = 107
      RepositoryItem = luCustCustody
      DataBinding.DataField = 'IDX_CASHRCV_TARGET'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 145
    end
    object cxDBTextEdit6: TcxDBTextEdit [10]
      Left = 484
      Top = 107
      DataBinding.DataField = 'IDX_CASHRCV_INSTR'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBLookupComboBox8: TcxDBLookupComboBox [11]
      Left = 182
      Top = 134
      RepositoryItem = luCustBank
      DataBinding.DataField = 'CASHPAY_SOURCE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 145
    end
    object cxDBLookupComboBox10: TcxDBLookupComboBox [12]
      Left = 182
      Top = 161
      RepositoryItem = luCustBank
      DataBinding.DataField = 'CASHRCV_SOURCE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 145
    end
    object cxDBLookupComboBox12: TcxDBLookupComboBox [13]
      Left = 182
      Top = 188
      RepositoryItem = luCustBank
      DataBinding.DataField = 'TRF_PRVT_BANK_SOURCE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      Width = 145
    end
    object cxDBLookupComboBox9: TcxDBLookupComboBox [14]
      Left = 333
      Top = 134
      RepositoryItem = luCustBank
      DataBinding.DataField = 'CASHPAY_TARGET'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 145
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [15]
      Left = 484
      Top = 134
      RepositoryItem = luCashInstr
      DataBinding.DataField = 'CASHPAY_INSTR'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 121
    end
    object cxDBLookupComboBox11: TcxDBLookupComboBox [16]
      Left = 333
      Top = 161
      RepositoryItem = luCustBank
      DataBinding.DataField = 'CASHRCV_TARGET'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 145
    end
    object cxDBImageComboBox4: TcxDBImageComboBox [17]
      Left = 484
      Top = 161
      RepositoryItem = luCashInstr
      DataBinding.DataField = 'CASHRCV_INSTR'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Width = 121
    end
    object cxDBLookupComboBox13: TcxDBLookupComboBox [18]
      Left = 333
      Top = 188
      RepositoryItem = luCustBank
      DataBinding.DataField = 'TRF_PRVT_BANK_TARGET'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 19
      Width = 145
    end
    object cxDBImageComboBox6: TcxDBImageComboBox [19]
      Left = 484
      Top = 188
      RepositoryItem = luCashInstr
      DataBinding.DataField = 'TRF_PRVT_BANK_INSTR'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 20
      Width = 121
    end
    object cxDBCheckBox6: TcxDBCheckBox [20]
      Left = 22
      Top = 188
      Caption = 'Transfer To Private Bank'
      DataBinding.DataField = 'TRF_PRVT_BANK'
      DataBinding.DataSource = dsSubject
      Properties.Alignment = taRightJustify
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 154
    end
    object cxLabel7: TcxLabel [21]
      Left = 182
      Top = 245
      AutoSize = False
      Caption = 'SOURCE'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 19
      Width = 145
    end
    object cxLabel1: TcxLabel [22]
      Left = 333
      Top = 245
      AutoSize = False
      Caption = 'TARGET'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 19
      Width = 145
    end
    object cxLabel5: TcxLabel [23]
      Left = 484
      Top = 245
      AutoSize = False
      Caption = 'INSTRUCTION MODE'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 19
      Width = 121
    end
    object cxDBLookupComboBox14: TcxDBLookupComboBox [24]
      Left = 182
      Top = 270
      RepositoryItem = luCustCustody
      DataBinding.DataField = 'IDX_STKDLV_SOURCE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 24
      Width = 145
    end
    object cxDBLookupComboBox15: TcxDBLookupComboBox [25]
      Left = 333
      Top = 270
      RepositoryItem = luCustCustody
      DataBinding.DataField = 'IDX_STKDLV_TARGET'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 25
      Width = 145
    end
    object cxDBLookupComboBox16: TcxDBLookupComboBox [26]
      Left = 182
      Top = 297
      RepositoryItem = luCustCustody
      DataBinding.DataField = 'IDX_STKRCV_SOURCE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 27
      Width = 145
    end
    object cxDBLookupComboBox18: TcxDBLookupComboBox [27]
      Left = 182
      Top = 324
      RepositoryItem = luCustCustody
      DataBinding.DataField = 'CUST_STKDLV_SOURCE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 30
      Width = 145
    end
    object cxDBLookupComboBox20: TcxDBLookupComboBox [28]
      Left = 182
      Top = 351
      RepositoryItem = luCustCustody
      DataBinding.DataField = 'CUST_STKRCV_SOURCE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 33
      Width = 145
    end
    object cxDBTextEdit7: TcxDBTextEdit [29]
      Left = 484
      Top = 270
      DataBinding.DataField = 'IDX_STKDLV_INSTR'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 26
      Width = 121
    end
    object cxDBLookupComboBox17: TcxDBLookupComboBox [30]
      Left = 333
      Top = 297
      RepositoryItem = luCustCustody
      DataBinding.DataField = 'IDX_STKRCV_TARGET'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 28
      Width = 145
    end
    object cxDBTextEdit9: TcxDBTextEdit [31]
      Left = 484
      Top = 297
      DataBinding.DataField = 'IDX_STKRCV_INSTR'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 29
      Width = 121
    end
    object cxDBLookupComboBox19: TcxDBLookupComboBox [32]
      Left = 333
      Top = 324
      RepositoryItem = luCustCustody
      DataBinding.DataField = 'CUST_STKDLV_TARGET'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 31
      Width = 145
    end
    object cxDBImageComboBox7: TcxDBImageComboBox [33]
      Left = 484
      Top = 324
      RepositoryItem = luStockDelInstr
      DataBinding.DataField = 'CUST_STKDLV_INSTR'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 32
      Width = 121
    end
    object cxDBLookupComboBox21: TcxDBLookupComboBox [34]
      Left = 333
      Top = 351
      RepositoryItem = luCustCustody
      DataBinding.DataField = 'CUST_STKRCV_TARGET'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 34
      Width = 145
    end
    object cxDBImageComboBox8: TcxDBImageComboBox [35]
      Left = 484
      Top = 351
      RepositoryItem = luStockRecInstr
      DataBinding.DataField = 'CUST_STKRCV_INSTR'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 35
      Width = 121
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem3: TdxLayoutItem
      CaptionOptions.Text = 'Account'
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem4: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
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
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'IDX Cash Payment'
      Parent = LayoutControlGroup4
      Control = cxDBLookupComboBox3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'IDX Cash Receive'
      Parent = LayoutControlGroup5
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'CASH'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object LayoutControlItem5: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup3
      Control = cxLabel4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem6: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup3
      Control = cxLabel2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup3: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem7: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup3
      Control = cxLabel3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem8: TdxLayoutItem
      Parent = LayoutControlGroup4
      Control = cxDBLookupComboBox4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup4: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlItem9: TdxLayoutItem
      Parent = LayoutControlGroup4
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem10: TdxLayoutItem
      Parent = LayoutControlGroup5
      Control = cxDBLookupComboBox7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup5: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LayoutControlItem11: TdxLayoutItem
      Parent = LayoutControlGroup5
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem12: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cash Payment'
      Parent = LayoutControlGroup6
      Control = cxDBLookupComboBox8
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem13: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cash Receive'
      Parent = LayoutControlGroup7
      Control = cxDBLookupComboBox10
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem14: TdxLayoutItem
      Parent = LayoutControlGroup8
      Control = cxDBLookupComboBox12
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem15: TdxLayoutItem
      Parent = LayoutControlGroup6
      Control = cxDBLookupComboBox9
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup6: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object LayoutControlItem16: TdxLayoutItem
      Parent = LayoutControlGroup6
      Control = cxDBImageComboBox2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem17: TdxLayoutItem
      Parent = LayoutControlGroup7
      Control = cxDBLookupComboBox11
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup7: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object LayoutControlItem18: TdxLayoutItem
      Parent = LayoutControlGroup7
      Control = cxDBImageComboBox4
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem19: TdxLayoutItem
      Parent = LayoutControlGroup8
      Control = cxDBLookupComboBox13
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlGroup8: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object LayoutControlItem20: TdxLayoutItem
      Parent = LayoutControlGroup8
      Control = cxDBImageComboBox6
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlItem21: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup8
      Control = cxDBCheckBox6
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem22: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup10
      Control = cxLabel7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem23: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup10
      Control = cxLabel1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem24: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup10
      Control = cxLabel5
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlGroup10: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup9
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem25: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'IDX Stock Deliver'
      Parent = LayoutControlGroup11
      Control = cxDBLookupComboBox14
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem26: TdxLayoutItem
      Parent = LayoutControlGroup11
      Control = cxDBLookupComboBox15
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup9: TdxLayoutGroup
      CaptionOptions.Text = 'STOCK'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object LayoutControlItem27: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'IDX Stock Receive'
      Parent = LayoutControlGroup13
      Control = cxDBLookupComboBox16
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem28: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Custodian Stock Deliver'
      Parent = LayoutControlGroup14
      Control = cxDBLookupComboBox18
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem29: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Custodian Stock Receive'
      Parent = LayoutControlGroup15
      Control = cxDBLookupComboBox20
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem30: TdxLayoutItem
      Parent = LayoutControlGroup11
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem31: TdxLayoutItem
      Parent = LayoutControlGroup13
      Control = cxDBLookupComboBox17
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup13: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup9
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LayoutControlItem32: TdxLayoutItem
      Parent = LayoutControlGroup13
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem33: TdxLayoutItem
      Parent = LayoutControlGroup14
      Control = cxDBLookupComboBox19
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup14: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup9
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object LayoutControlItem34: TdxLayoutItem
      Parent = LayoutControlGroup14
      Control = cxDBImageComboBox7
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem35: TdxLayoutItem
      Parent = LayoutControlGroup15
      Control = cxDBLookupComboBox21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup15: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup9
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object LayoutControlItem36: TdxLayoutItem
      Parent = LayoutControlGroup15
      Control = cxDBImageComboBox8
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlGroup11: TdxLayoutGroup
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup9
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 398
    Width = 634
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
    DataSet = frmCOBList.cdsAccount
  end
  object cdsLuCustBank: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 304
    Top = 390
    object cdsLuCustBankACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuCustBankACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCustBankBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuCustBankBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuCustBankBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuCustBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
  end
  object cdsLuCustCustody: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 480
    Top = 390
    object cdsLuCustCustodyACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsLuCustCustodyACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCustCustodyCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 30
    end
    object cdsLuCustCustodyCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsLuCustCustodyCUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 50
    end
    object cdsLuCustCustodyCUSTODYBRANCH: TStringField
      FieldName = 'CUSTODYBRANCH'
      Size = 50
    end
  end
  object dsLuCustCustody: TDataSource
    DataSet = cdsLuCustCustody
    Left = 576
    Top = 390
  end
  object dsLuCustBank: TDataSource
    DataSet = cdsLuCustBank
    Left = 384
    Top = 390
  end
  object Repository: TcxEditRepository
    Left = 24
    Top = 104
    object luCashInstr: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'LOCAL'
          ImageIndex = 0
          Value = 'LOCAL'
        end
        item
          Description = 'LLG'
          Value = 'LLG'
        end
        item
          Description = 'RTGS'
          Value = 'RTGS'
        end>
    end
    object luStockDelInstr: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'DVP'
          ImageIndex = 0
          Value = 'DVP'
        end
        item
          Description = 'DFOP'
          Value = 'DFOP'
        end>
    end
    object luStockRecInstr: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'RVP'
          ImageIndex = 0
          Value = 'RVP'
        end
        item
          Description = 'RFOP'
          Value = 'RFOP'
        end>
    end
    object luCustBank: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end
        item
          FieldName = 'BANKBRANCH'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dsLuCustBank
    end
    object luCustCustody: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'ACCCUSTODYID'
      Properties.ListColumns = <
        item
          FieldName = 'CUSTODYCODE'
        end
        item
          FieldName = 'CUSTODYACCNO'
        end
        item
          FieldName = 'CUSTODYACCNAME'
        end
        item
          FieldName = 'CUSTODYBRANCH'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dsLuCustCustody
    end
  end
  object dsBank: TDataSource
    DataSet = frmCOBList.cdsAccBank
    Left = 24
    Top = 296
  end
  object dsCustody: TDataSource
    DataSet = frmCOBList.cdsAccCustody
    Left = 24
    Top = 248
  end
end
