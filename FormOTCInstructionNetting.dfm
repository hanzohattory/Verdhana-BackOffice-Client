object frmOTCInstructionNetting: TfrmOTCInstructionNetting
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Netting Custody Instruction'
  ClientHeight = 533
  ClientWidth = 536
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 536
    Height = 482
    Align = alClient
    TabOrder = 0
    object cxDBTextEdit1: TcxDBTextEdit
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
      Width = 183
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 88
      Top = 37
      DataBinding.DataField = 'TRDDATE'
      DataBinding.DataSource = dsSubject
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
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 296
      Top = 37
      DataBinding.DataField = 'SETTLEDATE'
      DataBinding.DataSource = dsSubject
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
    object cxDBImageComboBox1: TcxDBImageComboBox
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
    object cxDBTextEdit2: TcxDBTextEdit
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
    object cxDBTextEdit3: TcxDBTextEdit
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
    object cxDBTextEdit4: TcxDBTextEdit
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
    object cxDBMemo1: TcxDBMemo
      Left = 112
      Top = 163
      DataBinding.DataField = 'CUSTODY_DESC'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Height = 39
      Width = 263
    end
    object cbInstr: TcxDBImageComboBox
      Left = 112
      Top = 208
      DataBinding.DataField = 'INSTRUCTION_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'DFOP'
          ImageIndex = 0
          Value = 'DFOP'
        end
        item
          Description = 'DVP'
          Value = 'DVP'
        end
        item
          Description = 'RFOP'
          Value = 'RFOP'
        end
        item
          Description = 'RVP'
          Value = 'RVP'
        end>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 100
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 225
      Top = 262
      DataBinding.DataField = 'SETTLE_AMOUNT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 165
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 112
      Top = 262
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 65
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 112
      Top = 289
      DataBinding.DataField = 'PURPOSE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
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
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 263
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 112
      Top = 316
      DataBinding.DataField = 'TRADE_REF'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 263
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox
      Left = 112
      Top = 343
      DataBinding.DataField = 'SETTLE_REASON'
      DataBinding.DataSource = dsSubject
      ParentColor = True
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
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Width = 263
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 112
      Top = 370
      DataBinding.DataField = 'CONFIRM_BY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 263
    end
    object cxDBMemo2: TcxDBMemo
      Left = 112
      Top = 397
      DataBinding.DataField = 'REMARKS'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Height = 36
      Width = 263
    end
    object cxDBImageComboBox4: TcxDBImageComboBox
      Left = 112
      Top = 439
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
      TabOrder = 19
      Width = 100
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 218
      Top = 439
      DataBinding.DataField = 'SALDO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 157
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit
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
    object cxDBLookupComboBox4: TcxDBLookupComboBox
      Left = 292
      Top = 208
      RepositoryItem = dmGlobal.luCustody
      DataBinding.DataField = 'COUNTER_CODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 145
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit
      Left = 112
      Top = 235
      DataBinding.DataField = 'QTY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 100
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Custody Exreff'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trade Date'
      Parent = dxLayoutControl1Group4
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Due Date'
      Parent = dxLayoutControl1Group4
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settle Side'
      Parent = dxLayoutGroup1
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Code'
      Parent = dxLayoutGroup2
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'cxDBTextEdit3'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup2
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock Code'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 5
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutControl1Group2
      Control = cxDBMemo1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object cmbInstructionDeliver: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Instruction'
      Parent = dxLayoutControl1Group7
      Control = cbInstr
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Amount'
      Parent = dxLayoutControl1Group1
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Purpose'
      Parent = dxLayoutControl1Group2
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trade Refference'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settle Reason'
      Parent = dxLayoutControl1Group2
      Control = cxDBLookupComboBox3
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Confirm With'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      AlignHorz = ahCenter
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Remark'
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Remarks'
      Parent = dxLayoutControl1Group2
      Control = cxDBMemo2
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Saldo Type'
      Parent = dxLayoutControl1Group5
      Control = cxDBImageComboBox4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxDBCurrencyEdit2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group5
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      CaptionOptions.Text = 'Original Amount'
      Parent = dxLayoutControl1Group6
      Control = cxDBCurrencyEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      CaptionOptions.Text = 'Bank Custody '
      Parent = dxLayoutControl1Group3
      Control = cxDBLookupComboBox4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Qty'
      Parent = dxLayoutControl1Group7
      Control = cxDBCurrencyEdit4
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
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 482
    Width = 536
    Height = 51
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl2Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl2Group1
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl2Group1
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl2Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl2Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dsSubject: TDataSource
    DataSet = frmOTCInstruction.cdsTmpSettleInstr
    Left = 459
    Top = 165
  end
end
