inherited frmLendBorrow: TfrmLendBorrow
  Caption = 'Lending Borrowing Contract'
  ClientHeight = 409
  ClientWidth = 518
  ExplicitWidth = 534
  ExplicitHeight = 448
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 518
    Height = 319
    ExplicitWidth = 518
    ExplicitHeight = 319
    object cxDBTextEdit2: TcxDBTextEdit [0]
      Left = 97
      Top = 10
      TabStop = False
      DataBinding.DataField = 'LBNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 197
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 109
      Top = 136
      DataBinding.DataField = 'LBDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      OnExit = cxDBDateEdit1Exit
      Width = 95
    end
    object cxDBDateEdit2: TcxDBDateEdit [2]
      Left = 260
      Top = 136
      TabStop = False
      DataBinding.DataField = 'DUEDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 94
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [3]
      Left = 109
      Top = 109
      DataBinding.DataField = 'LBTYPE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Items = <
        item
          Description = 'Lender'
          ImageIndex = 0
          Value = 'L'
        end
        item
          Description = 'Borrower'
          Value = 'B'
        end>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 95
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [4]
      Left = 109
      Top = 190
      TabStop = False
      DataBinding.DataField = 'LB_CHARGESRATE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '0.0000%'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 90
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [5]
      Left = 397
      Top = 136
      DataBinding.DataField = 'LB_DAY'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '0'
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      OnExit = cxDBCurrencyEdit2Exit
      Width = 49
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [6]
      Left = 109
      Top = 217
      DataBinding.DataField = 'LB_QTY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 90
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [7]
      Left = 270
      Top = 190
      TabStop = False
      DataBinding.DataField = 'LB_PRICE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 90
    end
    object cxDBCheckBox1: TcxDBCheckBox [8]
      Left = 210
      Top = 109
      Caption = 'Automatic Roll Over for Settlement'
      DataBinding.DataField = 'ARO'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [9]
      Left = 109
      Top = 163
      RepositoryItem = dmGlobal.luInstrumentAll
      DataBinding.DataField = 'STOCKID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      OnExit = cxDBLookupComboBox2Exit
      Width = 90
    end
    object cxDBTextEdit5: TcxDBTextEdit [10]
      Left = 205
      Top = 163
      DataBinding.DataField = 'STOCKNAMETMP'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 285
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit [11]
      Left = 109
      Top = 244
      DataBinding.DataField = 'COL_AMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 159
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit [12]
      Left = 109
      Top = 271
      DataBinding.DataField = 'LB_FEEAMT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 159
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [13]
      Left = 97
      Top = 37
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
      TabOrder = 1
      Width = 405
    end
    object cxDBTextEdit1: TcxDBTextEdit [14]
      Left = 97
      Top = 64
      DataBinding.DataField = 'CP_ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 405
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Voucher No.'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 197
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Transaction Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Due Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Fee Rate'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Day(s)'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 49
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Quantity'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Lending / Borrowing'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 3
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
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      AlignHorz = ahLeft
      Visible = False
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Closing Price'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 189
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'cxDBTextEdit5'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 285
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      Visible = False
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Amount'
      Control = cxDBCurrencyEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 153
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Fee Amount'
      Control = cxDBCurrencyEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 159
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Counter Part Acc'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 340
    Width = 518
    ExplicitTop = 340
    ExplicitWidth = 518
    inherited dbNavLog: TDBNavigator
      Left = 404
      Hints.Strings = ()
      ExplicitLeft = 404
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 389
    Width = 518
    ExplicitTop = 389
    ExplicitWidth = 518
  end
  inherited tabEditorData: TTabSet
    Top = 319
    Width = 518
    ExplicitTop = 319
    ExplicitWidth = 518
  end
  inherited dsSubject: TDataSource
    DataSet = cdsLendBorrow
    Left = 374
    Top = 2
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsClosePrice: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'STARTDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'ENDDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'STK_CODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryClosingPrice'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 441
    Top = 1
    object cdsClosePriceSTK_CLOS: TFloatField
      FieldName = 'STK_CLOS'
    end
  end
  object cdsLendBorrow: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'LBID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryLendBorrow'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsLendBorrowNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 460
    Top = 249
    object cdsLendBorrowLBID: TLargeintField
      FieldName = 'LBID'
      Required = True
    end
    object cdsLendBorrowLBNO: TStringField
      FieldName = 'LBNO'
    end
    object cdsLendBorrowENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLendBorrowLBDATE: TDateField
      FieldName = 'LBDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLendBorrowDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLendBorrowSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsLendBorrowSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsLendBorrowACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsLendBorrowACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsLendBorrowACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsLendBorrowCP_ACCID: TLargeintField
      FieldName = 'CP_ACCID'
    end
    object cdsLendBorrowCP_ACCNO: TStringField
      FieldName = 'CP_ACCNO'
    end
    object cdsLendBorrowCP_ACCNAME: TStringField
      FieldName = 'CP_ACCNAME'
      Size = 100
    end
    object cdsLendBorrowLBTYPE: TStringField
      FieldName = 'LBTYPE'
      Size = 1
    end
    object cdsLendBorrowLB_QTY: TFloatField
      FieldName = 'LB_QTY'
      DisplayFormat = '#,##0;(#,##0)'
    end
    object cdsLendBorrowLB_PRICE: TFloatField
      FieldName = 'LB_PRICE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsLendBorrowLB_CHARGESRATE: TFloatField
      FieldName = 'LB_CHARGESRATE'
      DisplayFormat = '#,##0;(#,##0)'
    end
    object cdsLendBorrowLB_DAY: TIntegerField
      FieldName = 'LB_DAY'
    end
    object cdsLendBorrowLB_TIMEMODE: TStringField
      FieldName = 'LB_TIMEMODE'
      Size = 1
    end
    object cdsLendBorrowARO: TStringField
      FieldName = 'ARO'
      Size = 1
    end
    object cdsLendBorrowCHARGE_PAYDATE: TDateField
      FieldName = 'CHARGE_PAYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsLendBorrowPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsLendBorrowPAID: TStringField
      FieldName = 'PAID'
      Size = 1
    end
    object cdsLendBorrowCASH_VOUCHERID: TLargeintField
      FieldName = 'CASH_VOUCHERID'
    end
    object cdsLendBorrowSET2SIDE: TStringField
      FieldName = 'SET2SIDE'
      Size = 1
    end
    object cdsLendBorrowLINK2SIDEID: TLargeintField
      FieldName = 'LINK2SIDEID'
    end
    object cdsLendBorrowMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsLendBorrowMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsLendBorrowAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsLendBorrowAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsLendBorrowUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsLendBorrowUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsLendBorrowNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsLendBorrowISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsLendBorrowID: TLargeintField
      FieldName = 'ID'
    end
    object cdsLendBorrowOVERDUEDATE: TDateField
      FieldName = 'OVERDUEDATE'
    end
    object cdsLendBorrowOVERDAY: TIntegerField
      FieldName = 'OVERDAY'
    end
    object cdsLendBorrowACCCODETEMP: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCCODETEMP'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsLendBorrowACCNAMETMP: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAMETMP'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 100
      Lookup = True
    end
    object cdsLendBorrowCPACCCODETMP: TStringField
      FieldKind = fkLookup
      FieldName = 'CPACCCODETMP'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'CP_ACCID'
      Size = 30
      Lookup = True
    end
    object cdsLendBorrowCPACCNAMETMP: TStringField
      FieldKind = fkLookup
      FieldName = 'CPACCNAMETMP'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'CP_ACCID'
      Size = 100
      Lookup = True
    end
    object cdsLendBorrowSTOCKCODETMP: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCKCODETMP'
      LookupDataSet = dmLookup.cdsLuInstrumentAll
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'LOCALCODE'
      KeyFields = 'STOCKID'
      Size = 30
      Lookup = True
    end
    object cdsLendBorrowSTOCKNAMETMP: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCKNAMETMP'
      LookupDataSet = dmLookup.cdsLuInstrumentAll
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'SHORTNAME'
      KeyFields = 'STOCKID'
      Size = 150
      Lookup = True
    end
    object cdsLendBorrowPROCESSED: TStringField
      FieldName = 'PROCESSED'
      Size = 1
    end
    object cdsLendBorrowLB_FEEAMT: TFloatField
      FieldName = 'LB_FEEAMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsLendBorrowJRNID: TLargeintField
      FieldName = 'JRNID'
    end
    object cdsLendBorrowRECALL: TStringField
      FieldName = 'RECALL'
      Size = 1
    end
    object cdsLendBorrowRECALL_DATE: TDateField
      FieldName = 'RECALL_DATE'
    end
    object cdsLendBorrowSETTLED: TStringField
      FieldName = 'SETTLED'
      Size = 1
    end
    object cdsLendBorrowCOL_AMT: TFloatField
      FieldName = 'COL_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
end
