inherited frmOTCInstructions: TfrmOTCInstructions
  Left = 49
  Caption = 'OTC Instruction'
  ClientHeight = 585
  ClientWidth = 544
  Position = poOwnerFormCenter
  ExplicitWidth = 560
  ExplicitHeight = 624
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 544
    Height = 495
    ExplicitWidth = 544
    ExplicitHeight = 495
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 88
      Top = 10
      DataBinding.DataField = 'CUSTODY_EXTREF'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 329
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 88
      Top = 37
      DataBinding.DataField = 'TRDDATE'
      DataBinding.DataSource = frmOTCInstruction.dsBrowseMaster
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [2]
      Left = 296
      Top = 37
      DataBinding.DataField = 'DUEDATE'
      DataBinding.DataSource = frmOTCInstruction.dsBrowseMaster
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cbSettleSide: TcxDBImageComboBox [3]
      Left = 88
      Top = 64
      DataBinding.DataField = 'SETTLE_SIDE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Items = <
        item
          Description = 'Deliver'
          ImageIndex = 0
          Value = 'D'
        end
        item
          Description = 'Receive'
          Value = 'R'
        end>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [4]
      Left = 88
      Top = 91
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [5]
      Left = 215
      Top = 91
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 310
    end
    object cxDBTextEdit4: TcxDBTextEdit [6]
      Left = 88
      Top = 118
      DataBinding.DataField = 'STOCKCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo [7]
      Left = 112
      Top = 163
      DataBinding.DataField = 'CUSTODY_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Height = 39
      Width = 263
    end
    object cbInstr: TcxDBImageComboBox [8]
      Left = 112
      Top = 208
      DataBinding.DataField = 'INSTRUCTION_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          ImageIndex = 0
          Value = ''
        end
        item
          Value = ''
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      OnExit = cbInstrExit
      Width = 100
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [9]
      Left = 229
      Top = 262
      DataBinding.DataField = 'SETTLE_AMOUNT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      OnExit = cxDBCurrencyEdit1Exit
      Width = 165
    end
    object cmbPurpose: TcxDBLookupComboBox [10]
      Left = 112
      Top = 289
      DataBinding.DataField = 'PURPOSE'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          Width = 80
          FieldName = 'CODE'
        end
        item
          Width = 200
          FieldName = 'CODE_DESC'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuCBestInstrPurpose
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 186
    end
    object txtTradeReff: TcxDBTextEdit [11]
      Left = 112
      Top = 316
      DataBinding.DataField = 'TRADE_REF'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 186
    end
    object cmbSettleReason: TcxDBLookupComboBox [12]
      Left = 112
      Top = 343
      DataBinding.DataField = 'SETTLE_REASON'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          Width = 80
          FieldName = 'CODE'
        end
        item
          Width = 200
          FieldName = 'CODE_DESC'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuCBestInstrReason
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Width = 186
    end
    object cxDBTextEdit6: TcxDBTextEdit [13]
      Left = 112
      Top = 370
      DataBinding.DataField = 'CONFIRM_BY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 186
    end
    object cxDBMemo2: TcxDBMemo [14]
      Left = 112
      Top = 397
      DataBinding.DataField = 'REMARKS'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Height = 48
      Width = 186
    end
    object cxDBImageComboBox4: TcxDBImageComboBox [15]
      Left = 112
      Top = 451
      DataBinding.DataField = 'SALDO_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Rebate'
          ImageIndex = 0
          Value = 'R'
        end
        item
          Description = 'Price Difference'
          Value = 'P'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 23
      Width = 100
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [16]
      Left = 218
      Top = 451
      DataBinding.DataField = 'SALDO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Width = 157
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [17]
      Left = 296
      Top = 118
      DataBinding.DataField = 'ORIGINAL_AMT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 229
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox [18]
      Left = 292
      Top = 208
      RepositoryItem = dmGlobal.luCustody
      DataBinding.DataField = 'COUNTER_CODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 145
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [19]
      Left = 112
      Top = 235
      DataBinding.DataField = 'QTY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object txtForeignCCY: TcxDBLookupComboBox [20]
      Left = 365
      Top = 334
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'FOREIGN_CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Properties.OnCloseUp = cxDBLookupComboBox5PropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 20
      Width = 145
    end
    object txtForeignExrate: TcxDBCurrencyEdit [21]
      Left = 365
      Top = 361
      DataBinding.DataField = 'FOREIGN_EXRATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0.00;(#,##0.00);0.00'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 145
    end
    object txtForeignAmount: TcxDBCurrencyEdit [22]
      Left = 365
      Top = 388
      DataBinding.DataField = 'FOREIGN_SETTTLEAMT'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0.00;(#,##0.00);0.00'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 145
    end
    object chkMultiCCY: TcxDBCheckBox [23]
      Left = 316
      Top = 307
      Caption = 'Is Multy Currency'
      DataBinding.DataField = 'ISMULTICCY'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      OnClick = cxDBCheckBox1Click
    end
    object cxDBTextEdit7: TcxDBTextEdit [24]
      Left = 112
      Top = 262
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 69
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Custody Exreff'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 329
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trade Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Due Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settle Side'
      Control = cbSettleSide
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Code'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxDBTextEdit3'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 310
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
      Index = 3
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 5
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Description'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 39
      ControlOptions.OriginalWidth = 263
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object cmbInstructionDeliver: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Instruction'
      Control = cbInstr
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcSettleAmount: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Amount'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 165
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object txtPurposes: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Purpose'
      Control = cmbPurpose
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 186
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object txtTradeReffs: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trade Refference'
      Control = txtTradeReff
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 186
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object txtSettleReasons: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settle Reason'
      Control = cmbSettleReason
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 186
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object txtConfirmWiths: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Confirm With'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 186
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Remarks'
      Control = cxDBMemo2
      ControlOptions.OriginalHeight = 48
      ControlOptions.OriginalWidth = 186
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Saldo Type'
      Control = cxDBImageComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxDBCurrencyEdit2'
      CaptionOptions.Visible = False
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Original Amount'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 229
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Bank Custody '
      Control = cxDBLookupComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Qty'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group13
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Currency'
      Control = txtForeignCCY
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Exrate'
      Control = txtForeignExrate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Amount'
      Control = txtForeignAmount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = chkMultiCCY
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 194
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 516
    Width = 544
    ExplicitTop = 516
    ExplicitWidth = 544
    inherited dbNavLog: TDBNavigator
      Left = 430
      Hints.Strings = ()
      ExplicitLeft = 430
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 565
    Width = 544
    ExplicitTop = 565
    ExplicitWidth = 544
  end
  inherited tabEditorData: TTabSet
    Top = 495
    Width = 544
    ExplicitTop = 495
    ExplicitWidth = 544
  end
  inherited dsSubject: TDataSource
    DataSet = frmOTCInstruction.cdsSettleInstr
    Left = 478
    Top = 47
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
end
