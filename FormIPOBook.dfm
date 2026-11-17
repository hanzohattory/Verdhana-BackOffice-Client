object frmIPOBook: TfrmIPOBook
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'IPO Book'
  ClientHeight = 451
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 402
    Width = 607
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 607
    Height = 402
    Align = alClient
    TabOrder = 1
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 103
      Top = 37
      DataBinding.DataField = 'BOOKCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 285
      Top = 37
      DataBinding.DataField = 'BOOKDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 103
      Top = 64
      DataBinding.DataField = 'BOOKDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 492
    end
    object rgBookType: TcxDBRadioGroup
      Left = 10
      Top = 91
      Caption = 'Book Type'
      DataBinding.DataField = 'BOOKTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Customer'
          Value = 'C'
        end
        item
          Caption = 'Non Customer'
          Value = 'N'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 5
      OnExit = rgBookTypeExit
      Height = 54
      Width = 360
    end
    object cbCust: TcxDBLookupComboBox
      Left = 427
      Top = 107
      RepositoryItem = dmGlobal.luCustAccount
      DataBinding.DataField = 'ACCID'
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
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 103
      Top = 151
      DataBinding.DataField = 'CUST_NAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 492
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 103
      Top = 178
      RepositoryItem = dmGlobal.luIDType
      DataBinding.DataField = 'CUST_IDCARDTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 103
      Top = 205
      DataBinding.DataField = 'CUST_IDCARDNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 103
      Top = 232
      DataBinding.DataField = 'CUST_IDCARDEXPIRE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 103
      Top = 259
      DataBinding.DataField = 'CUST_ADDRESS'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 492
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 103
      Top = 286
      DataBinding.DataField = 'CUST_PHONE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 285
      Top = 286
      DataBinding.DataField = 'CUST_FAX'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 103
      Top = 313
      DataBinding.DataField = 'CUST_MAIL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 492
    end
    object cbOrderType: TcxDBImageComboBox
      Left = 103
      Top = 340
      RepositoryItem = dmGlobal.luIPOBookOrderType
      DataBinding.DataField = 'ORDERTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      OnExit = cbOrderTypeExit
      Width = 121
    end
    object edMaxPrice: TcxDBTextEdit
      Left = 285
      Top = 340
      DataBinding.DataField = 'ORDERMAXPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 474
      Top = 367
      DataBinding.DataField = 'ORDERVALUE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 121
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 285
      Top = 367
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'ORDERCCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      Width = 121
    end
    object cbIPO: TcxDBLookupComboBox
      Left = 103
      Top = 10
      DataBinding.DataField = 'IPOID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'IPOID'
      Properties.ListColumns = <
        item
          FieldName = 'IPOCODE'
        end
        item
          FieldName = 'SCRIPNAME'
        end>
      Properties.ListSource = frmIPOList.dsBrowseMaster
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 122
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 240
      Top = 10
      DataBinding.DataField = 'SCRIPNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 332
    end
    object cbBasedOrder: TcxDBImageComboBox
      Left = 103
      Top = 367
      DataBinding.DataField = 'ORDERBASED'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Quantity'
          ImageIndex = 0
          Value = 'Q'
        end
        item
          Description = 'Amount'
          Value = 'A'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      OnExit = cbBasedOrderExit
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Book Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Book Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutControl1Group_Root
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'cxDBRadioGroup1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      Visible = False
      Control = rgBookType
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcCustomer: TdxLayoutItem
      AlignVert = avCenter
      CaptionOptions.Text = 'Customer'
      Parent = dxLayoutControl1Group2
      Control = cbCust
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Name'
      Parent = dxLayoutControl1Group_Root
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ID Card Type'
      Parent = dxLayoutControl1Group_Root
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ID Card No.'
      Parent = dxLayoutControl1Group_Root
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ID Card Exp. Date'
      Parent = dxLayoutControl1Group_Root
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'Address'
      Parent = dxLayoutControl1Group_Root
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'Phone'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'Fax'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'Email'
      Parent = dxLayoutControl1Group_Root
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      CaptionOptions.Text = 'Order Type'
      Parent = dxLayoutControl1Group4
      Control = cbOrderType
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMaxPrice: TdxLayoutItem
      CaptionOptions.Text = 'Max. Price'
      Parent = dxLayoutControl1Group4
      Control = edMaxPrice
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      CaptionOptions.Text = 'Order Value'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcCcy: TdxLayoutItem
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group5
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 11
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 12
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'IPO'
      Parent = dxLayoutControl1Group6
      Control = cbIPO
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit11
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcBasedOrder: TdxLayoutItem
      CaptionOptions.Text = 'Order Based'
      Parent = dxLayoutControl1Group5
      Control = cbBasedOrder
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object dsSubject: TDataSource
    DataSet = cdsIPOBook
    Left = 464
    Top = 264
  end
  object cdsIPOBook: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'BOOKID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmIPO_qryIPOBook'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsIPOBookNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 304
    Top = 136
    object cdsIPOBookBOOKID: TIntegerField
      FieldName = 'BOOKID'
      Required = True
    end
    object cdsIPOBookBOOKCODE: TStringField
      FieldName = 'BOOKCODE'
      Required = True
    end
    object cdsIPOBookBOOKDATE: TDateField
      FieldName = 'BOOKDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOBookBOOKDESC: TStringField
      FieldName = 'BOOKDESC'
      Size = 250
    end
    object cdsIPOBookBOOKTYPE: TStringField
      FieldName = 'BOOKTYPE'
      Required = True
      Size = 1
    end
    object cdsIPOBookIPOID: TIntegerField
      FieldName = 'IPOID'
      Required = True
    end
    object cdsIPOBookCUST_NAME: TStringField
      FieldName = 'CUST_NAME'
      Size = 100
    end
    object cdsIPOBookCUST_IDCARDTYPE: TStringField
      FieldName = 'CUST_IDCARDTYPE'
      Size = 10
    end
    object cdsIPOBookCUST_IDCARDNO: TStringField
      FieldName = 'CUST_IDCARDNO'
      Size = 30
    end
    object cdsIPOBookCUST_IDCARDEXPIRE: TDateField
      FieldName = 'CUST_IDCARDEXPIRE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOBookCUST_ADDRESS: TStringField
      FieldName = 'CUST_ADDRESS'
      Size = 200
    end
    object cdsIPOBookCUST_PHONE: TStringField
      FieldName = 'CUST_PHONE'
    end
    object cdsIPOBookCUST_FAX: TStringField
      FieldName = 'CUST_FAX'
    end
    object cdsIPOBookCUST_MAIL: TStringField
      FieldName = 'CUST_MAIL'
      Size = 100
    end
    object cdsIPOBookORDERTYPE: TStringField
      FieldName = 'ORDERTYPE'
      Size = 1
    end
    object cdsIPOBookORDERCCY: TStringField
      FieldName = 'ORDERCCY'
      Size = 5
    end
    object cdsIPOBookORDERMAXPRICE: TFloatField
      FieldName = 'ORDERMAXPRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOBookORDERVALUE: TFloatField
      FieldName = 'ORDERVALUE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOBookSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsIPOBookMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsIPOBookMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsIPOBookAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsIPOBookAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsIPOBookUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsIPOBookUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsIPOBookNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsIPOBookISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsIPOBookID: TLargeintField
      FieldName = 'ID'
    end
    object cdsIPOBookSCRIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'SCRIPNAME'
      LookupDataSet = frmIPOList.cdsIPOList
      LookupKeyFields = 'IPOID'
      LookupResultField = 'SCRIPNAME'
      KeyFields = 'IPOID'
      Size = 250
      Lookup = True
    end
    object cdsIPOBookBOTPRICE: TFloatField
      FieldKind = fkLookup
      FieldName = 'BOTPRICE'
      LookupDataSet = frmIPOList.cdsIPOList
      LookupKeyFields = 'IPOID'
      LookupResultField = 'BOTPRICE'
      KeyFields = 'IPOID'
      Lookup = True
    end
    object cdsIPOBookTOPPRICE: TFloatField
      FieldKind = fkLookup
      FieldName = 'TOPPRICE'
      LookupDataSet = frmIPOList.cdsIPOList
      LookupKeyFields = 'IPOID'
      LookupResultField = 'TOPPRICE'
      KeyFields = 'IPOID'
      Lookup = True
    end
    object cdsIPOBookACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
      OnChange = cdsIPOBookACCIDChange
    end
    object cdsIPOBookDIST_TYPE: TStringField
      FieldName = 'DIST_TYPE'
      Size = 1
    end
    object cdsIPOBookORDERBASED: TStringField
      FieldName = 'ORDERBASED'
      Size = 1
    end
  end
end
