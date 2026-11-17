inherited frmSettlementParam: TfrmSettlementParam
  Caption = 'Settlement Parameter'
  ClientHeight = 183
  ClientWidth = 445
  ExplicitWidth = 451
  ExplicitHeight = 211
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 445
    Height = 134
    ExplicitWidth = 445
    ExplicitHeight = 134
    object cxDBLabel1: TcxDBLabel [0]
      Left = 176
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
      Width = 254
    end
    object cxLabel1: TcxLabel [1]
      Left = 10
      Top = 10
      Caption = 'Cusr Reg No.'
      Style.HotTrack = False
    end
    object cxLabel2: TcxLabel [2]
      Left = 84
      Top = 10
      Caption = 'cxLabel2'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold, fsUnderline]
      Style.HotTrack = False
      Style.IsFontAssigned = True
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [3]
      Left = 99
      Top = 55
      RepositoryItem = dmGlobal.luCashSettleBy
      DataBinding.DataField = 'C_SETTLE_BY'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 100
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [4]
      Left = 99
      Top = 82
      RepositoryItem = dmGlobal.luStockSettleBy
      DataBinding.DataField = 'S_SETTLE_BY'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 100
    end
    object cxDBImageComboBox3: TcxDBImageComboBox [5]
      Left = 316
      Top = 55
      DataBinding.DataField = 'CASHKEEP'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 100
    end
    object cxDBImageComboBox4: TcxDBImageComboBox [6]
      Left = 316
      Top = 82
      DataBinding.DataField = 'STOCKKEEP'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 100
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.Text = 'Name'
      Parent = LayoutControlGroup4
      Control = cxDBLabel1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup4
      Control = cxLabel1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem3: TdxLayoutItem
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup4
      Control = cxLabel2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup2: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Parameter'
      Parent = LayoutControlGroup1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LayoutControlGroup3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      Parent = LayoutControlGroup1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object LayoutControlGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlItem8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Cash Settle By'
      Parent = LayoutControlGroup2
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Stock Settle By'
      Parent = LayoutControlGroup2
      Control = cxDBImageComboBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Cash Keep Mode'
      Parent = LayoutControlGroup3
      Control = cxDBImageComboBox3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Stock Keep Mode'
      Parent = LayoutControlGroup3
      Control = cxDBImageComboBox4
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 134
    Width = 445
    ExplicitTop = 134
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
  end
end
