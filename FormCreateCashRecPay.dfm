object frmCreateCashRecPay: TfrmCreateCashRecPay
  Left = 0
  Top = 0
  Caption = 'Create Cash Receive / Payment'
  ClientHeight = 268
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 912
    Height = 219
    Align = alClient
    TabOrder = 0
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 84
      Top = 10
      TabStop = False
      DataBinding.DataField = 'VOUCHERNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 168
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 286
      Top = 10
      TabStop = False
      DataBinding.DataField = 'VOUCHERDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 104
    end
    object txtAccNo: TcxDBButtonEdit
      Left = 84
      Top = 37
      TabStop = False
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
      TabOrder = 2
      Width = 168
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 84
      Top = 64
      TabStop = False
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 280
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 84
      Top = 91
      TabStop = False
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 89
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 251
      Top = 91
      TabStop = False
      DataBinding.DataField = 'EXRATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 94
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 722
      Top = 28
      TabStop = False
      DataBinding.DataField = 'CUST_BANKID'
      DataBinding.DataSource = dsSubject
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
      TabOrder = 14
      Width = 167
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 722
      Top = 55
      TabStop = False
      DataBinding.DataField = 'CUST_BANKCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 167
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 722
      Top = 82
      TabStop = False
      DataBinding.DataField = 'CUST_BANKACCBRANCH'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 722
      Top = 109
      TabStop = False
      DataBinding.DataField = 'CUST_BANKACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 722
      Top = 136
      TabStop = False
      DataBinding.DataField = 'CUST_BANKACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 121
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox
      Left = 472
      Top = 28
      TabStop = False
      DataBinding.DataField = 'BROKER_BANKID'
      DataBinding.DataSource = dsSubject
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
      TabOrder = 9
      Width = 156
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 472
      Top = 55
      TabStop = False
      DataBinding.DataField = 'BROKER_BANKCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 156
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 472
      Top = 82
      TabStop = False
      DataBinding.DataField = 'BROKER_BANKACCBRANCH'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 472
      Top = 109
      TabStop = False
      DataBinding.DataField = 'BROKER_BANKACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 472
      Top = 136
      TabStop = False
      DataBinding.DataField = 'BROKER_BANKACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 84
      Top = 118
      DataBinding.DataField = 'TOTAL_AMOUNT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 124
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit
      Left = 84
      Top = 145
      TabStop = False
      DataBinding.DataField = 'TOTAL_AMOUNT_FX'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 124
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 84
      Top = 172
      DataBinding.DataField = 'VOUCHER_DESC'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Voucher No'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Account No.'
      Parent = dxLayoutControl1Group2
      Control = txtAccNo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Account Name'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group8
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Exchage Rate'
      Parent = dxLayoutControl1Group8
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lyBeneficiary: TdxLayoutGroup
      CaptionOptions.Text = 'Beneficiary'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Code'
      Parent = lyBeneficiary
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'Bank Name'
      Parent = lyBeneficiary
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'Bank Branch'
      Parent = lyBeneficiary
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'Acc No.'
      Parent = lyBeneficiary
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'Acc Name'
      Parent = lyBeneficiary
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Broker Bank'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Code'
      Parent = dxLayoutControl1Group6
      Control = cxDBLookupComboBox3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'Bank Name'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      CaptionOptions.Text = 'Bank Branch'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      CaptionOptions.Text = 'Acc No'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      CaptionOptions.Text = 'Acc Name'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Amount'
      Parent = dxLayoutControl1Group7
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'FX Amount'
      Parent = dxLayoutControl1Group5
      Control = cxDBCurrencyEdit3
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit11
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 219
    Width = 912
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object cdsCashVoucher_H: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'VOUCHERID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryCashVoucher_H'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsCashVoucher_HNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 378
    Top = 174
    object cdsCashVoucher_HVOUCHERID: TLargeintField
      FieldName = 'VOUCHERID'
      Required = True
    end
    object cdsCashVoucher_HVOUCHERNO: TStringField
      FieldName = 'VOUCHERNO'
    end
    object cdsCashVoucher_HVOUCHERTYPE: TStringField
      FieldName = 'VOUCHERTYPE'
      Size = 1
    end
    object cdsCashVoucher_HENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsCashVoucher_HVOUCHERDATE: TDateField
      FieldName = 'VOUCHERDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashVoucher_HACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCashVoucher_HACCID: TLargeintField
      FieldName = 'ACCID'
      OnChange = cdsCashVoucher_HACCIDChange
    end
    object cdsCashVoucher_HACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCashVoucher_HACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCashVoucher_HBROKER_BANKID: TIntegerField
      FieldName = 'BROKER_BANKID'
      OnChange = cdsCashVoucher_HBROKER_BANKIDChange
    end
    object cdsCashVoucher_HBROKER_BANKCODE: TStringField
      FieldName = 'BROKER_BANKCODE'
      Size = 10
    end
    object cdsCashVoucher_HBROKER_BANKACCNO: TStringField
      FieldName = 'BROKER_BANKACCNO'
    end
    object cdsCashVoucher_HBROKER_BANKACCNAME: TStringField
      FieldName = 'BROKER_BANKACCNAME'
      Size = 100
    end
    object cdsCashVoucher_HBROKER_BANKACCBRANCH: TStringField
      FieldName = 'BROKER_BANKACCBRANCH'
      Size = 100
    end
    object cdsCashVoucher_HBROKER_BANKPAYMENTID: TLargeintField
      FieldName = 'BROKER_BANKPAYMENTID'
    end
    object cdsCashVoucher_HCUST_BANKID: TIntegerField
      FieldName = 'CUST_BANKID'
      OnChange = cdsCashVoucher_HCUST_BANKIDChange
    end
    object cdsCashVoucher_HCUST_BANKCODE: TStringField
      FieldName = 'CUST_BANKCODE'
      Size = 10
    end
    object cdsCashVoucher_HCUST_BANKACCNO: TStringField
      FieldName = 'CUST_BANKACCNO'
    end
    object cdsCashVoucher_HCUST_BANKACCNAME: TStringField
      FieldName = 'CUST_BANKACCNAME'
      Size = 100
    end
    object cdsCashVoucher_HCUST_BANKACCBRANCH: TStringField
      FieldName = 'CUST_BANKACCBRANCH'
      Size = 100
    end
    object cdsCashVoucher_HVOUCHER_DESC: TStringField
      FieldName = 'VOUCHER_DESC'
      Size = 150
    end
    object cdsCashVoucher_HCCYCODE: TStringField
      FieldName = 'CCYCODE'
      OnChange = cdsCashVoucher_HCCYCODEChange
      Size = 5
    end
    object cdsCashVoucher_HEXRATE: TFloatField
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashVoucher_HTRANSFERMODE: TStringField
      FieldName = 'TRANSFERMODE'
      Size = 10
    end
    object cdsCashVoucher_HCHARGESAMT: TFloatField
      FieldName = 'CHARGESAMT'
    end
    object cdsCashVoucher_HTOTAL_AMOUNT: TFloatField
      FieldName = 'TOTAL_AMOUNT'
      OnChange = cdsCashVoucher_HTOTAL_AMOUNTChange
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashVoucher_HSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCashVoucher_HPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashVoucher_HBANK_REFERENCE: TStringField
      FieldName = 'BANK_REFERENCE'
      Size = 50
    end
    object cdsCashVoucher_HBANK_INSTRUCTION: TStringField
      FieldName = 'BANK_INSTRUCTION'
      Size = 1
    end
    object cdsCashVoucher_HJRNID: TLargeintField
      FieldName = 'JRNID'
    end
    object cdsCashVoucher_HMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashVoucher_HMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashVoucher_HAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashVoucher_HAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashVoucher_HUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashVoucher_HUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashVoucher_HNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashVoucher_HISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashVoucher_HID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashVoucher_HCCYCODE_FX: TStringField
      FieldName = 'CCYCODE_FX'
      Size = 5
    end
    object cdsCashVoucher_HCHARGESAMT_FX: TFloatField
      FieldName = 'CHARGESAMT_FX'
    end
    object cdsCashVoucher_HTOTAL_AMOUNT_FX: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashVoucher_HTOTAL_AMOUNT_FX_CHANGED: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX_CHANGED'
    end
    object cdsCashVoucher_HTOTAL_AMOUNT_FX_DIFF: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX_DIFF'
    end
    object cdsCashVoucher_HDEAL_EXRATE: TFloatField
      FieldName = 'DEAL_EXRATE'
    end
    object cdsCashVoucher_HTRANSTYPE: TStringField
      FieldName = 'TRANSTYPE'
      Size = 1
    end
    object cdsCashVoucher_HTRANSFER_AMT: TFloatField
      FieldName = 'TRANSFER_AMT'
    end
    object cdsCashVoucher_HqryCashVoucher_D: TDataSetField
      FieldName = 'qryCashVoucher_D'
    end
    object cdsCashVoucher_HMANUAL_VOUCHER: TStringField
      FieldName = 'MANUAL_VOUCHER'
      Size = 1
    end
  end
  object cdsCashVoucher_D: TNClientDataset
    Aggregates = <>
    DataSetField = cdsCashVoucher_HqryCashVoucher_D
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 444
    Top = 162
    object cdsCashVoucher_DVOUCHERID: TLargeintField
      FieldName = 'VOUCHERID'
      Required = True
    end
    object cdsCashVoucher_DSEQID: TLargeintField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsCashVoucher_DTRANS_TYPE: TStringField
      FieldName = 'TRANS_TYPE'
      Size = 2
    end
    object cdsCashVoucher_DLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
      Size = 10
    end
    object cdsCashVoucher_DLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsCashVoucher_DLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsCashVoucher_DACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCashVoucher_DACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCashVoucher_DACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCashVoucher_DTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsCashVoucher_DDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object cdsCashVoucher_DCASH_DESC: TStringField
      FieldName = 'CASH_DESC'
      Size = 150
    end
    object cdsCashVoucher_DTRANS_AMT: TFloatField
      FieldName = 'TRANS_AMT'
    end
    object cdsCashVoucher_DNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsCashVoucher_DAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object cdsCashVoucher_DMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashVoucher_DMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashVoucher_DAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashVoucher_DAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashVoucher_DUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashVoucher_DUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashVoucher_DNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashVoucher_DISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashVoucher_DID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashVoucher_DOVERDUE: TStringField
      FieldName = 'OVERDUE'
      Size = 1
    end
    object cdsCashVoucher_DCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCashVoucher_DDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsCashVoucher_DEXRATE: TFloatField
      FieldName = 'EXRATE'
    end
    object cdsCashVoucher_DFXAMOUNT: TFloatField
      FieldName = 'FXAMOUNT'
    end
  end
  object dsSubject: TDataSource
    DataSet = cdsCashVoucher_H
    Left = 507
    Top = 177
  end
  object dsCashVoucherD: TDataSource
    DataSet = cdsCashVoucher_D
    Left = 564
    Top = 165
  end
  object cdsAccountBankRDN: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryBankAccountRDN'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 306
    Top = 150
    object cdsAccountBankRDNACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsAccountBankRDNACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsAccountBankRDNCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsAccountBankRDNACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountBankRDNBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsAccountBankRDNBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsAccountBankRDNBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsAccountBankRDNBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsAccountBankRDNISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsAccountBankRDNBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Size = 1
    end
    object cdsAccountBankRDNBNCHGSTYPE: TStringField
      FieldName = 'BNCHGSTYPE'
      Size = 10
    end
    object cdsAccountBankRDNACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsAccountBankRDNCBEST_CODE: TStringField
      FieldName = 'CBEST_CODE'
      Size = 10
    end
    object cdsAccountBankRDNBANK_DEFAULT: TStringField
      FieldName = 'BANK_DEFAULT'
      Size = 1
    end
    object cdsAccountBankRDNSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
  end
  object cdsLuBrokerBank: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankAcc'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 625
    Top = 178
    object cdsLuBrokerBankACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuBrokerBankACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsLuBrokerBankBNCODE: TStringField
      DisplayWidth = 10
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuBrokerBankBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      DisplayWidth = 20
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuBrokerBankBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      DisplayWidth = 30
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuBrokerBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuBrokerBankACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuBrokerBankISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsLuBrokerBankACCBANKCODE: TStringField
      DisplayLabel = 'Acc Bank Code'
      DisplayWidth = 15
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsLuBrokerBankCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
  end
  object cdsLuCustBank: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankAcc'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 679
    Top = 166
    object cdsLuCustBankACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuCustBankACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsLuCustBankBNCODE: TStringField
      DisplayWidth = 10
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuCustBankBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      DisplayWidth = 20
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuCustBankBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      DisplayWidth = 30
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuCustBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuCustBankACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuCustBankISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsLuCustBankACCBANKCODE: TStringField
      DisplayLabel = 'Acc Bank Code'
      DisplayWidth = 15
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsLuCustBankCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
  end
  object dsLuCustBank: TDataSource
    DataSet = cdsLuCustBank
    Left = 784
    Top = 172
  end
  object dsLuBrokerBank: TDataSource
    DataSet = cdsLuBrokerBank
    Left = 784
    Top = 124
  end
  object cdsCashPosition: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashPosByParamACCID'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 222
    Top = 174
    object cdsCashPositionACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCashPositionACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCashPositionACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCashPositionCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCashPositionCashOnHand: TFloatField
      FieldName = 'CashOnHand'
    end
    object cdsCashPositionCashOnHold: TFloatField
      FieldName = 'CashOnHold'
    end
    object cdsCashPositionARAmt: TFloatField
      FieldName = 'ARAmt'
    end
    object cdsCashPositionApAmt: TFloatField
      FieldName = 'ApAmt'
    end
    object cdsCashPositionNetARAP: TFloatField
      FieldName = 'NetARAP'
    end
    object cdsCashPositionCashPosition: TFloatField
      FieldName = 'CashPosition'
    end
    object cdsCashPositionSAVEKEEP: TStringField
      FieldName = 'SAVEKEEP'
      Size = 1
    end
    object cdsCashPositionBuyAmount: TFloatField
      FieldName = 'BuyAmount'
    end
    object cdsCashPositionAvCashAmount: TFloatField
      FieldName = 'AvCashAmount'
    end
    object cdsCashPositionCASHOUTS: TFloatField
      FieldName = 'CASHOUTS'
    end
    object cdsCashPositionCASH_QQ: TFloatField
      FieldName = 'CASH_QQ'
    end
    object cdsCashPositionCASH_SUBACC: TFloatField
      FieldName = 'CASH_SUBACC'
    end
    object cdsCashPositionACCRUED_INTEREST: TFloatField
      FieldName = 'ACCRUED_INTEREST'
    end
  end
  object cdsRDNBankAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryRDNBankAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 300
    Top = 200
    object cdsRDNBankAccountACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsRDNBankAccountACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsRDNBankAccountCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsRDNBankAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsRDNBankAccountBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsRDNBankAccountBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsRDNBankAccountBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsRDNBankAccountBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsRDNBankAccountISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsRDNBankAccountBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Size = 1
    end
    object cdsRDNBankAccountBNCHGSTYPE: TStringField
      FieldName = 'BNCHGSTYPE'
      Size = 10
    end
    object cdsRDNBankAccountACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsRDNBankAccountCBEST_CODE: TStringField
      FieldName = 'CBEST_CODE'
      Size = 10
    end
    object cdsRDNBankAccountBANK_DEFAULT: TStringField
      FieldName = 'BANK_DEFAULT'
      Size = 1
    end
  end
end
