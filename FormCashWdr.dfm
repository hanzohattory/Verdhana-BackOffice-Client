inherited frmCashWdr: TfrmCashWdr
  Caption = 'Cash Withdraw RDN'
  ClientHeight = 544
  ClientWidth = 763
  ExplicitWidth = 779
  ExplicitHeight = 583
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 763
    Height = 454
    ExplicitWidth = 709
    ExplicitHeight = 454
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 68
      Top = 10
      TabStop = False
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 100
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 68
      Top = 37
      DataBinding.DataField = 'CWDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 669
    end
    object cbBankTarget: TcxDBLookupComboBox [2]
      Left = 433
      Top = 136
      TabStop = False
      RepositoryItem = dmGlobal.luPrivateBankAcc
      DataBinding.DataField = 'TARGET_ACCBANKID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 130
    end
    object edBankBranchTarget: TcxDBTextEdit [3]
      Left = 433
      Top = 163
      TabStop = False
      DataBinding.DataField = 'TARGET_BNBRANCH'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 250
    end
    object edBankBranchSource: TcxDBTextEdit [4]
      Left = 97
      Top = 169
      TabStop = False
      DataBinding.DataField = 'SOURCE_BNBRANCH'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 250
    end
    object cxDBTextEdit7: TcxDBTextEdit [5]
      Left = 238
      Top = 10
      TabStop = False
      DataBinding.DataField = 'CWCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 245
    end
    object edBankAccNoTarget: TcxDBTextEdit [6]
      Left = 433
      Top = 190
      TabStop = False
      DataBinding.DataField = 'TARGET_BNACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 250
    end
    object edBankAccNameTarget: TcxDBTextEdit [7]
      Left = 433
      Top = 217
      TabStop = False
      DataBinding.DataField = 'TARGET_BNACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 250
    end
    object edBankAccNoSource: TcxDBTextEdit [8]
      Left = 97
      Top = 196
      TabStop = False
      DataBinding.DataField = 'SOURCE_BNACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 250
    end
    object edBankAccNameSource: TcxDBTextEdit [9]
      Left = 97
      Top = 223
      TabStop = False
      DataBinding.DataField = 'SOURCE_BNACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 250
    end
    object cxDBTextEdit11: TcxDBTextEdit [10]
      Left = 97
      Top = 280
      TabStop = False
      DataBinding.DataField = 'BNCHARGESTYPE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 101
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [11]
      Left = 290
      Top = 280
      DataBinding.DataField = 'CWAMT'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.00;(#,##0.00);0.00'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      OnExit = cxDBCurrencyEdit1Exit
      Width = 131
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [12]
      Left = 97
      Top = 307
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
      Properties.OnCloseUp = cxDBImageComboBox1PropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      OnExit = cxDBImageComboBox1Exit
      Width = 101
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [13]
      Left = 290
      Top = 334
      TabStop = False
      DataBinding.DataField = 'TRANSFER_AMT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.00;(#,##0.00);0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 131
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [14]
      Left = 290
      Top = 307
      TabStop = False
      DataBinding.DataField = 'BNCHARGES'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.00;(#,##0.00);0.00'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 131
    end
    object DBGrid1: TDBGrid [15]
      Left = 12
      Top = 375
      Width = 723
      Height = 66
      BorderStyle = bsNone
      DataSource = dsCashPosition
      TabOrder = 23
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'BranchID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'BranchCode'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'BranchName'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SalesID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SalesCode'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SalesName'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ACCID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ACCNO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ACCNAME'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CCY'
          Title.Caption = 'Currency'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CashOnHand'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CashOnHold'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ARAmt'
          Title.Caption = 'AR Amount'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ApAmt'
          Title.Caption = 'AP Amount'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NetARAP'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CashPosition'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SAVEKEEP'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'BuyAmount'
          Title.Caption = 'Buy Amt (B)'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'AvCashAmount'
          Title.Caption = 'Avail Cash Amt (A - B)'
          Visible = False
        end>
    end
    object cbBankSource: TcxDBLookupComboBox [16]
      Left = 97
      Top = 136
      TabStop = False
      RepositoryItem = dmGlobal.luRDNBankAcc
      DataBinding.DataField = 'SOURCE_ACCBANKID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 130
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [17]
      Left = 68
      Top = 64
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
      TabOrder = 4
      Width = 110
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [18]
      Left = 68
      Top = 91
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 80
    end
    object cxDBTextEdit2: TcxDBTextEdit [19]
      Left = 193
      Top = 64
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 503
    end
    object edCcySource: TcxDBTextEdit [20]
      Left = 282
      Top = 136
      DataBinding.DataField = 'SOURCE_CCYCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 60
    end
    object edCcyTarget: TcxDBTextEdit [21]
      Left = 618
      Top = 136
      DataBinding.DataField = 'TARGET_CCYCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 60
    end
    object cxDBDateEdit2: TcxDBDateEdit [22]
      Left = 546
      Top = 10
      DataBinding.DataField = 'CWDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 100
    end
    object cxDBLabel1: TcxDBLabel [23]
      Left = 427
      Top = 298
      DataBinding.DataField = 'AvailWdr'
      DataBinding.DataSource = dsCashPosition
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 30
      Width = 251
      AnchorX = 678
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 669
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object cmbBankPrivate: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Code'
      Control = cbBankTarget
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = lgPrivateBank
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Branch'
      Control = edBankBranchTarget
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Branch'
      Control = edBankBranchSource
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 250
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
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Voucher No.'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 245
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lgPrivateBank: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Destination Bank'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = lgPrivateBank
      CaptionOptions.Text = 'Acc No'
      Control = edBankAccNoTarget
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 246
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = lgPrivateBank
      CaptionOptions.Text = 'Acc Name'
      Control = edBankAccNameTarget
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Source Bank'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Acc No'
      Control = edBankAccNoSource
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Acc Name'
      Control = edBankAccNameSource
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      CaptionOptions.Text = 'Transfer Mode'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Amount'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 131
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group14
      CaptionOptions.Text = 'Type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Transfer Amount'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Cash Withdraw'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Bank Charge'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
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
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group14: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'DBGrid1'
      CaptionOptions.Visible = False
      Control = DBGrid1
      ControlOptions.OriginalHeight = 66
      ControlOptions.OriginalWidth = 490
      Index = 5
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Code'#13#10
      Control = cbBankSource
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Account'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group16
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group16: TdxLayoutGroup
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = lgPrivateBank
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 503
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'Currency'
      Control = edCcySource
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Currency'
      Control = edCcyTarget
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Cash Available Withdraw'
      CaptionOptions.Layout = clTop
      Control = cxDBLabel1
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 251
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 475
    Width = 763
    ExplicitTop = 475
    ExplicitWidth = 709
    inherited dbNavLog: TDBNavigator
      Left = 649
      Hints.Strings = ()
      ExplicitLeft = 649
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 524
    Width = 763
    ExplicitTop = 524
    ExplicitWidth = 709
  end
  inherited tabEditorData: TTabSet
    Top = 454
    Width = 763
    ExplicitTop = 454
    ExplicitWidth = 709
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCashWdr
    Left = 578
    Top = 409
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 648
    Top = 384
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsBankCharges: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmCashManagement_qryBankCharges'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 372
    Top = 462
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
    object cdsBankChargesCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
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
    AfterOpen = cdsCashPositionAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 479
    Top = 446
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
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPositionCashOnHold: TFloatField
      DisplayLabel = 'Cash On Hold'
      FieldName = 'CashOnHold'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPositionARAmt: TFloatField
      FieldName = 'ARAmt'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPositionApAmt: TFloatField
      DisplayLabel = 'Ap Amt'
      FieldName = 'ApAmt'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPositionNetARAP: TFloatField
      DisplayLabel = 'Net ARAP'
      FieldName = 'NetARAP'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPositionCashPosition: TFloatField
      DisplayLabel = 'Cash Position'
      FieldName = 'CashPosition'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
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
    object cdsCashPositionCASH_SUBACC: TFloatField
      FieldName = 'CASH_SUBACC'
    end
    object cdsCashPositionAvailWdr: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'AvailWdr'
      DisplayFormat = '#,##0.00;(#,##0).00;0.00'
    end
  end
  object dsCashPosition: TDataSource
    DataSet = cdsCashPosition
    Left = 480
    Top = 491
  end
  object cdsCashWdr: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CWID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashWdr'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsCashWdrAfterOpen
    BeforePost = cdsCashWdrBeforePost
    OnNewRecord = cdsCashWdrNewRecord
    AfterApplyUpdates = cdsCashWdrAfterApplyUpdates
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 573
    Top = 360
    object cdsCashWdrCWID: TLargeintField
      FieldName = 'CWID'
    end
    object cdsCashWdrCWCODE: TStringField
      FieldName = 'CWCODE'
      Required = True
    end
    object cdsCashWdrCWDATE: TDateField
      FieldName = 'CWDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashWdrCWDESC: TStringField
      FieldName = 'CWDESC'
      Size = 100
    end
    object cdsCashWdrACCID: TIntegerField
      FieldName = 'ACCID'
      OnChange = cdsCashWdrACCIDChange
    end
    object cdsCashWdrACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCashWdrACTLED_ACCID: TIntegerField
      FieldName = 'ACTLED_ACCID'
    end
    object cdsCashWdrACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsCashWdrTARGET_ACCBANKID: TIntegerField
      FieldName = 'TARGET_ACCBANKID'
      OnChange = cdsCashWdrTARGET_ACCBANKIDChange
    end
    object cdsCashWdrSOURCE_ACCBANKID: TIntegerField
      FieldName = 'SOURCE_ACCBANKID'
      OnChange = cdsCashWdrSOURCE_ACCBANKIDChange
    end
    object cdsCashWdrCCY: TStringField
      FieldName = 'CCY'
      OnChange = cdsCashWdrCCYChange
      Size = 5
    end
    object cdsCashWdrCWAMT: TFloatField
      FieldName = 'CWAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashWdrBNCHARGES: TFloatField
      FieldName = 'BNCHARGES'
      OnChange = cdsCashWdrBNCHARGESChange
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashWdrBNCHARGESTYPE: TStringField
      FieldName = 'BNCHARGESTYPE'
      Size = 10
    end
    object cdsCashWdrPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashWdrMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashWdrMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashWdrAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashWdrAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashWdrUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashWdrUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashWdrNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashWdrISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashWdrID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashWdrACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 150
      Lookup = True
    end
    object cdsCashWdrSOURCE_BNCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'SOURCE_BNCODE'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BNCODE'
      KeyFields = 'SOURCE_ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashWdrSOURCE_BNACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'SOURCE_BNACCNO'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNO'
      KeyFields = 'SOURCE_ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashWdrSOURCE_BNACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'SOURCE_BNACCNAME'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNAME'
      KeyFields = 'SOURCE_ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashWdrSOURCE_BNBRANCH: TStringField
      FieldKind = fkLookup
      FieldName = 'SOURCE_BNBRANCH'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKBRANCH'
      KeyFields = 'SOURCE_ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashWdrSOURCE_CCYCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'SOURCE_CCYCODE'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'CCYCODE'
      KeyFields = 'SOURCE_ACCBANKID'
      Size = 5
      Lookup = True
    end
    object cdsCashWdrTARGET_BNCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'TARGET_BNCODE'
      LookupDataSet = dmLookup.cdsLuPrivateBankAcc
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BNCODE'
      KeyFields = 'TARGET_ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashWdrTARGET_BNACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'TARGET_BNACCNO'
      LookupDataSet = dmLookup.cdsLuPrivateBankAcc
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNO'
      KeyFields = 'TARGET_ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashWdrTARGET_BNACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'TARGET_BNACCNAME'
      LookupDataSet = dmLookup.cdsLuPrivateBankAcc
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNAME'
      KeyFields = 'TARGET_ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashWdrTARGET_BNBRANCH: TStringField
      FieldKind = fkLookup
      FieldName = 'TARGET_BNBRANCH'
      LookupDataSet = dmLookup.cdsLuPrivateBankAcc
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKBRANCH'
      KeyFields = 'TARGET_ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashWdrTARGET_CCYCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'TARGET_CCYCODE'
      LookupDataSet = dmLookup.cdsLuPrivateBankAcc
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'CCYCODE'
      KeyFields = 'TARGET_ACCBANKID'
      Size = 5
      Lookup = True
    end
    object cdsCashWdrTRANSTYPE: TStringField
      FieldName = 'TRANSTYPE'
      Size = 1
    end
    object cdsCashWdrTRANSFER_AMT: TFloatField
      FieldName = 'TRANSFER_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashWdrACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCashWdrLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
      Size = 10
    end
    object cdsCashWdrLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsCashWdrPOSTED_DATE: TDateField
      FieldName = 'POSTED_DATE'
    end
    object cdsCashWdrPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsCashWdrLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsCashWdrENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashWdrWDR_TYPE: TStringField
      FieldName = 'WDR_TYPE'
      Size = 1
    end
    object cdsCashWdrUPLOAD_TIME: TDateTimeField
      FieldName = 'UPLOAD_TIME'
    end
    object cdsCashWdrCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsCashWdrCANCEL_DATE: TDateField
      FieldName = 'CANCEL_DATE'
    end
    object cdsCashWdrCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsCashWdrAPPROVED: TStringField
      FieldName = 'APPROVED'
      Size = 1
    end
    object cdsCashWdrAPPROVED_DATE: TDateField
      FieldName = 'APPROVED_DATE'
    end
    object cdsCashWdrAPPROVED_UI: TStringField
      FieldName = 'APPROVED_UI'
      Size = 30
    end
  end
  object cdsBankInstruction: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'BIID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryBankInstruction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 368
    Top = 416
    object cdsBankInstructionBIID: TLargeintField
      FieldName = 'BIID'
      Required = True
    end
    object cdsBankInstructionBINO: TStringField
      FieldName = 'BINO'
      Required = True
    end
    object cdsBankInstructionBITYPE: TStringField
      FieldName = 'BITYPE'
      Required = True
      Size = 1
    end
    object cdsBankInstructionENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
    end
    object cdsBankInstructionVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsBankInstructionBIDESC: TStringField
      FieldName = 'BIDESC'
      Required = True
      Size = 150
    end
    object cdsBankInstructionBANK_REF: TStringField
      FieldName = 'BANK_REF'
      Size = 30
    end
    object cdsBankInstructionTRANS_TYPE: TStringField
      FieldName = 'TRANS_TYPE'
      Size = 2
    end
    object cdsBankInstructionLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsBankInstructionLINKNO: TStringField
      FieldName = 'LINKNO'
      Size = 30
    end
    object cdsBankInstructionSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsBankInstructionACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsBankInstructionACCBANKID_SOURCE: TIntegerField
      FieldName = 'ACCBANKID_SOURCE'
    end
    object cdsBankInstructionBNCODE_SOURCE: TStringField
      FieldName = 'BNCODE_SOURCE'
      Size = 10
    end
    object cdsBankInstructionBNACCNO_SOURCE: TStringField
      FieldName = 'BNACCNO_SOURCE'
    end
    object cdsBankInstructionBNACCNAME_SOURCE: TStringField
      FieldName = 'BNACCNAME_SOURCE'
      Size = 150
    end
    object cdsBankInstructionBNBRANCH_SOURCE: TStringField
      FieldName = 'BNBRANCH_SOURCE'
      Size = 150
    end
    object cdsBankInstructionACCBANKID_TARGET: TIntegerField
      FieldName = 'ACCBANKID_TARGET'
      Required = True
    end
    object cdsBankInstructionBNCODE_TARGET: TStringField
      FieldName = 'BNCODE_TARGET'
      Size = 10
    end
    object cdsBankInstructionBNACCNO_TARGET: TStringField
      FieldName = 'BNACCNO_TARGET'
    end
    object cdsBankInstructionBNACCNAME_TARGET: TStringField
      FieldName = 'BNACCNAME_TARGET'
      Size = 150
    end
    object cdsBankInstructionBNBRANCH_TARGET: TStringField
      FieldName = 'BNBRANCH_TARGET'
      Size = 150
    end
    object cdsBankInstructionTRANFER_TYPE: TStringField
      FieldName = 'TRANFER_TYPE'
      Required = True
      Size = 1
    end
    object cdsBankInstructionCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 10
    end
    object cdsBankInstructionAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
    end
    object cdsBankInstructionCHARGES: TFloatField
      FieldName = 'CHARGES'
      Required = True
    end
    object cdsBankInstructionNETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
      Required = True
    end
    object cdsBankInstructionMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBankInstructionMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBankInstructionAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBankInstructionAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBankInstructionUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBankInstructionUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBankInstructionNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBankInstructionISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBankInstructionID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBankInstructionBANKTYPE_SOURCE: TStringField
      FieldName = 'BANKTYPE_SOURCE'
      Size = 1
    end
    object cdsBankInstructionCCYCODE_SOURCE: TStringField
      FieldName = 'CCYCODE_SOURCE'
      Size = 5
    end
    object cdsBankInstructionBANKTYPE_TARGET: TStringField
      FieldName = 'BANKTYPE_TARGET'
      Size = 1
    end
    object cdsBankInstructionCCYCODE_TARGET: TStringField
      FieldName = 'CCYCODE_TARGET'
      Size = 5
    end
  end
  object cdsLuCompanyBankByBank: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'BANKTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BNCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuCompanyBankByBank'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 240
    Top = 456
    object cdsLuCompanyBankByBankBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
    object cdsLuCompanyBankByBankCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuCompanyBankByBankBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsLuCompanyBankByBankBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsLuCompanyBankByBankBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Required = True
      Size = 100
    end
    object cdsLuCompanyBankByBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Required = True
      Size = 100
    end
    object cdsLuCompanyBankByBankBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Required = True
      Size = 1
    end
    object cdsLuCompanyBankByBankSTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
    object cdsLuCompanyBankByBankBNNAME: TStringField
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
  end
  object cdsLuCompanyBankDefault: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'BANKTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuCompanyBankDefault'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 240
    Top = 408
    object cdsLuCompanyBankDefaultBANKID: TIntegerField
      FieldName = 'BANKID'
      Required = True
    end
    object cdsLuCompanyBankDefaultCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuCompanyBankDefaultBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsLuCompanyBankDefaultBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsLuCompanyBankDefaultBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Required = True
      Size = 100
    end
    object cdsLuCompanyBankDefaultBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Required = True
      Size = 100
    end
    object cdsLuCompanyBankDefaultBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Required = True
      Size = 1
    end
    object cdsLuCompanyBankDefaultSTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
    object cdsLuCompanyBankDefaultBNNAME: TStringField
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
  end
  object cdsLuAccountBankDefault: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuAccountBankDefault'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 576
    Top = 464
    object cdsLuAccountBankDefaultACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountBankDefaultCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsLuAccountBankDefaultACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      ReadOnly = True
    end
    object cdsLuAccountBankDefaultBNCODE: TStringField
      FieldName = 'BNCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccountBankDefaultBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccountBankDefaultBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsLuAccountBankDefaultBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      ReadOnly = True
      Size = 50
    end
    object cdsLuAccountBankDefaultACCBANKID_1: TIntegerField
      FieldName = 'ACCBANKID_1'
      ReadOnly = True
    end
    object cdsLuAccountBankDefaultBNCODE_1: TStringField
      FieldName = 'BNCODE_1'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccountBankDefaultBANKACCNO_1: TStringField
      FieldName = 'BANKACCNO_1'
      ReadOnly = True
      Size = 30
    end
    object cdsLuAccountBankDefaultBANKACCNAME_1: TStringField
      FieldName = 'BANKACCNAME_1'
      ReadOnly = True
      Size = 50
    end
    object cdsLuAccountBankDefaultBANKBRANCH_1: TStringField
      FieldName = 'BANKBRANCH_1'
      ReadOnly = True
      Size = 50
    end
  end
  object cdsCashPosByAccCcy: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCY'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashPosByAccCcy'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 479
    Top = 390
    object cdsCashPosByAccCcyVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsCashPosByAccCcyACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCashPosByAccCcyACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCashPosByAccCcyCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsCashPosByAccCcyACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCashPosByAccCcyACCRUED_INTEREST: TFloatField
      FieldName = 'ACCRUED_INTEREST'
    end
    object cdsCashPosByAccCcyCASH_ONHAND: TFloatField
      FieldName = 'CASH_ONHAND'
    end
    object cdsCashPosByAccCcyCASH_QQ: TFloatField
      FieldName = 'CASH_QQ'
    end
    object cdsCashPosByAccCcyCASH_SUBACC: TFloatField
      FieldName = 'CASH_SUBACC'
    end
    object cdsCashPosByAccCcyCASH_ONHOLD: TFloatField
      FieldName = 'CASH_ONHOLD'
    end
    object cdsCashPosByAccCcyARAMT: TFloatField
      FieldName = 'ARAMT'
    end
    object cdsCashPosByAccCcyAPAMT: TFloatField
      FieldName = 'APAMT'
    end
    object cdsCashPosByAccCcyCASH_OUTS: TFloatField
      FieldName = 'CASH_OUTS'
    end
    object cdsCashPosByAccCcyBUY_AMT: TFloatField
      FieldName = 'BUY_AMT'
    end
    object cdsCashPosByAccCcySELL_AMT: TFloatField
      FieldName = 'SELL_AMT'
    end
    object cdsCashPosByAccCcyCASH_WDR: TFloatField
      FieldName = 'CASH_WDR'
    end
    object cdsCashPosByAccCcyMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashPosByAccCcyMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashPosByAccCcyAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashPosByAccCcyAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashPosByAccCcyUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashPosByAccCcyUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashPosByAccCcyNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashPosByAccCcyISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashPosByAccCcyID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashPosByAccCcyCASH_OTHERS: TFloatField
      FieldName = 'CASH_OTHERS'
    end
  end
end
