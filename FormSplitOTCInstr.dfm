object frmSplitOTCInstr: TfrmSplitOTCInstr
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 333
  ClientWidth = 255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  DesignSize = (
    255
    333)
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 255
    Height = 290
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelKind = bkTile
    TabOrder = 0
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 96
      Top = 64
      DataBinding.DataField = 'QTY'
      DataBinding.DataSource = dsOTCSplit
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      OnExit = cxDBCurrencyEdit1Exit
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 96
      Top = 91
      DataBinding.DataField = 'SETTLE_AMOUNT'
      DataBinding.DataSource = dsOTCSplit
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      OnExit = cxDBCurrencyEdit2Exit
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 96
      Top = 10
      DataBinding.DataField = 'COUNTER_CODE'
      DataBinding.DataSource = dsOTCSplit
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CUSTODYCODE'
      Properties.ListColumns = <
        item
          FieldName = 'CUSTODYCODE'
        end
        item
          Width = 250
          FieldName = 'CUSTODYNAME'
        end>
      Properties.ListSource = dmLookup.dsLuCustody
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      OnExit = cxDBLookupComboBox1Exit
      Width = 145
    end
    object cmbInstructionType: TcxDBComboBox
      Left = 96
      Top = 37
      DataBinding.DataField = 'INSTRUCTION_TYPE'
      DataBinding.DataSource = dsOTCSplit
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      OnExit = cmbInstructionTypeExit
      Width = 121
    end
    object chkMultiCCY: TcxDBCheckBox
      Left = 10
      Top = 172
      Caption = 'Is Multi Currency'
      DataBinding.DataField = 'ISMULTICCY'
      DataBinding.DataSource = dsOTCSplit
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      OnClick = chkMultiCCYClick
    end
    object txtCCY: TcxDBLookupComboBox
      Left = 96
      Top = 199
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'FOREIGN_CCYCODE'
      DataBinding.DataSource = dsOTCSplit
      Properties.ListColumns = <>
      Properties.OnCloseUp = txtCCYPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 145
    end
    object txtExRate: TcxDBCurrencyEdit
      Left = 96
      Top = 226
      DataBinding.DataField = 'FOREIGN_EXRATE'
      DataBinding.DataSource = dsOTCSplit
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      OnExit = txtExRateExit
      Width = 121
    end
    object txtAmount: TcxDBCurrencyEdit
      Left = 96
      Top = 253
      DataBinding.DataField = 'FOREIGN_SETTTLEAMT'
      DataBinding.DataSource = dsOTCSplit
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit
      Left = 96
      Top = 118
      DataBinding.DataField = 'SALDO'
      DataBinding.DataSource = dsOTCSplit
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 96
      Top = 145
      DataBinding.DataField = 'SALDO_TYPE'
      DataBinding.DataSource = dsOTCSplit
      Properties.Items = <
        item
          Description = 'Rebate'
          ImageIndex = 0
          Value = 'R'
        end
        item
          Description = 'Price Different'
          Value = 'P'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
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
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Quantity'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Settle Amount'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Counter Account'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Instruction Type'
      Control = cmbInstructionType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = chkMultiCCY
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Currency'
      Control = txtCCY
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Exrate'
      Control = txtExRate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Amount'
      Control = txtAmount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Saldo'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Saldo type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  object btnOk: TButton
    Left = 85
    Top = 300
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 1
  end
  object Button2: TButton
    Left = 166
    Top = 300
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object dsOTCSplit: TDataSource
    DataSet = frmOTCInstructionSplit.cdsOTCSplit
    Left = 51
    Top = 132
  end
end
