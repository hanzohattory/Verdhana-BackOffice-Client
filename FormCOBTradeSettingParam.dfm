inherited frmCOBTradeSettingParam: TfrmCOBTradeSettingParam
  Caption = 'Trading Setting Parameter'
  ClientHeight = 383
  ClientWidth = 445
  ExplicitWidth = 451
  ExplicitHeight = 411
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 445
    Height = 334
    ExplicitWidth = 445
    ExplicitHeight = 334
    object cxDBLabel1: TcxDBLabel [0]
      Left = 204
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold, fsUnderline]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 21
      Width = 220
    end
    object cxLabel1: TcxLabel [1]
      Left = 10
      Top = 10
      Caption = 'Cust Reg No.'
      Style.HotTrack = False
    end
    object txtCustRegNo: TcxLabel [2]
      Left = 84
      Top = 10
      Caption = 'txtCustRegNo'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold, fsUnderline]
      Style.HotTrack = False
      Style.IsFontAssigned = True
    end
    object cxDBCheckBox1: TcxDBCheckBox [3]
      Left = 22
      Top = 55
      Caption = 'Block Account'
      DataBinding.DataField = 'OMNIBUSTRADE'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 390
    end
    object cxDBCheckBox2: TcxDBCheckBox [4]
      Left = 22
      Top = 82
      Caption = 'Trading Account'
      DataBinding.DataField = 'ISTRDACCOUNT'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 390
    end
    object cxDBCheckBox3: TcxDBCheckBox [5]
      Left = 22
      Top = 109
      Caption = 'Sub Account Allocation'
      DataBinding.DataField = 'ISSUBACCALLOC'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 390
    end
    object cxDBCheckBox4: TcxDBCheckBox [6]
      Left = 34
      Top = 154
      Caption = 'Cash Keep'
      DataBinding.DataField = 'CASHKEEP'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 366
    end
    object cxDBCheckBox5: TcxDBCheckBox [7]
      Left = 34
      Top = 181
      Caption = 'Stock Keep'
      DataBinding.DataField = 'STOCKKEEP'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 366
    end
    object chkConfMode: TcxDBCheckBox [8]
      Left = 22
      Top = 220
      Caption = 'Confirmation Model'
      DataBinding.DataField = 'ISCONFIRMATIONMODEL'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      OnClick = chkConfModeClick
      Width = 126
    end
    object ConfMode: TcxDBImageComboBox [9]
      Left = 154
      Top = 220
      DataBinding.DataField = 'CONFIRMATIONMODEL'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Buy Order'
          ImageIndex = 0
          Value = 'PO'
        end
        item
          Description = 'Sell Summary'
          Value = 'NS'
        end
        item
          Description = 'Buy Sell'
          Value = 'SS'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [10]
      Left = 173
      Top = 247
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 164
    end
    object chkConfSystem: TcxDBCheckBox [11]
      Left = 22
      Top = 274
      Caption = 'Ext Confirmation System'
      DataBinding.DataField = 'ISEXTCONFSYSTEM'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      OnClick = chkConfSystemClick
      Width = 144
    end
    object ConfSystem: TcxDBLookupComboBox [12]
      Left = 172
      Top = 274
      RepositoryItem = dmGlobal.luExtConfSystem
      DataBinding.DataField = 'EXTCONFCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 165
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.Text = 'Name'
      Parent = LayoutControlGroup1
      Control = cxDBLabel1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem3: TdxLayoutItem
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup1
      Control = cxLabel1
      ControlOptions.ShowBorder = False
      Index = 0
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
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup1
      Control = txtCustRegNo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup2: TdxLayoutGroup
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object LayoutControlItem4: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup2
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem5: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox2'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup2
      Control = cxDBCheckBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem6: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox3'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup2
      Control = cxDBCheckBox3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Save Keeping'
      Parent = LayoutControlGroup2
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object LayoutControlItem7: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox4'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup3
      Control = cxDBCheckBox4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem8: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox5'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup3
      Control = cxDBCheckBox5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem9: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox6'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup4
      Control = chkConfMode
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem10: TdxLayoutItem
      CaptionOptions.Text = 'cxDBImageComboBox1'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup4
      Control = ConfMode
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object LayoutControlItem11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Default Confirmation Currency'
      Parent = LayoutControlGroup2
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LayoutControlItem12: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox7'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup5
      Control = chkConfSystem
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem13: TdxLayoutItem
      CaptionOptions.Text = 'cxDBLookupComboBox2'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup5
      Control = ConfSystem
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 334
    Width = 445
    ExplicitTop = 334
    ExplicitWidth = 445
    inherited btnOK: TcxButton
      Width = 130
      ExplicitWidth = 130
    end
    inherited btnCancel: TcxButton
      Left = 146
      Width = 130
      ExplicitLeft = 146
      ExplicitWidth = 130
    end
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
    DataSet = frmClientOnBoardingList.cdsAccount
    Left = 412
    Top = 39
  end
end
