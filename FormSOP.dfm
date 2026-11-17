inherited frmSOP: TfrmSOP
  Caption = 'Stock Option Program'
  ClientHeight = 438
  ClientWidth = 548
  ExplicitWidth = 554
  ExplicitHeight = 463
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 548
    Height = 348
    ExplicitHeight = 285
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 96
      Top = 67
      DataBinding.DataField = 'SOPCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBRadioGroup1: TcxDBRadioGroup [1]
      Left = 10
      Top = 10
      Caption = 'Type'
      DataBinding.DataField = 'SOPTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'MSOP'
          Value = 'M'
        end
        item
          Caption = 'ESOP'
          Value = 'E'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 0
      Height = 51
      Width = 497
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 96
      Top = 94
      DataBinding.DataField = 'SOPDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 421
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [3]
      Left = 96
      Top = 121
      RepositoryItem = dmGlobal.luInstrument
      DataBinding.DataField = 'STOCKID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 105
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 216
      Top = 121
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 301
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [5]
      Left = 96
      Top = 148
      RepositoryItem = dmGlobal.luAccount
      DataBinding.DataField = 'ACCID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 105
    end
    object cxDBTextEdit4: TcxDBTextEdit [6]
      Left = 216
      Top = 148
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 301
    end
    object cxDBDateEdit1: TcxDBDateEdit [7]
      Left = 96
      Top = 175
      DataBinding.DataField = 'REGDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [8]
      Left = 96
      Top = 202
      DataBinding.DataField = 'STARTDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 121
    end
    object cxDBDateEdit3: TcxDBDateEdit [9]
      Left = 303
      Top = 202
      DataBinding.DataField = 'ENDDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [10]
      Left = 96
      Top = 229
      Caption = 'Use Bank Payment'
      DataBinding.DataField = 'USE_BANKPAY'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 127
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [11]
      Left = 328
      Top = 229
      DataBinding.DataField = 'BANK_TRF_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Parent'
          ImageIndex = 0
          Value = 'P'
        end
        item
          Description = 'Member'
          Value = 'M'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 121
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [12]
      Left = 78
      Top = 274
      DataBinding.DataField = 'ACCBANKID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCBANKCODE'
        end
        item
          Caption = 'Bank Code'
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end>
      Properties.ListSource = dsLuBrokerBank
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 115
    end
    object cxDBTextEdit5: TcxDBTextEdit [13]
      Left = 257
      Top = 274
      DataBinding.DataField = 'BankName'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 266
    end
    object cxDBTextEdit6: TcxDBTextEdit [14]
      Left = 78
      Top = 301
      DataBinding.DataField = 'AccNo'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 151
    end
    object cxDBTextEdit7: TcxDBTextEdit [15]
      Left = 334
      Top = 301
      DataBinding.DataField = 'AccBankName'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 189
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxDBRadioGroup1'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      Control = cxDBRadioGroup1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Stock'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Account'
      Parent = dxLayoutControl1Group2
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Reg Date'
      Parent = dxLayoutGroup1
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Start Order Date'
      Parent = dxLayoutControl1Group3
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'End Order Date'
      Parent = dxLayoutControl1Group3
      Control = cxDBDateEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = ' '
      Parent = dxLayoutControl1Group4
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'Bank Transfer Type'
      Parent = dxLayoutControl1Group4
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 8
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Code'
      Parent = dxLayoutControl1Group7
      Control = cxDBLookupComboBox3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      CaptionOptions.Text = 'Bank Name'
      Parent = dxLayoutControl1Group7
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      CaptionOptions.Text = 'Acc Code'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      CaptionOptions.Text = 'Account Name'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 369
    Width = 548
    ExplicitTop = 306
    inherited dbNavLog: TDBNavigator
      Left = 434
      Hints.Strings = ()
      ExplicitLeft = 434
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
    Top = 418
    Width = 548
    ExplicitTop = 355
  end
  inherited tabEditorData: TTabSet
    Top = 348
    Width = 548
    ExplicitTop = 285
  end
  inherited dsSubject: TDataSource
    DataSet = frmSOPList.cdsSOP
    Left = 325
    Top = 176
  end
  object dsLuBrokerBank: TDataSource
    DataSet = frmSOPList.cdsLuBrokerBank
    Left = 406
    Top = 70
  end
end
