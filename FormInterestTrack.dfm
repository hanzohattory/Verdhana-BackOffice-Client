inherited frmInterestTrack: TfrmInterestTrack
  Caption = 'Interest Track'
  ClientHeight = 233
  ClientWidth = 547
  ExplicitWidth = 553
  ExplicitHeight = 262
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 547
    Height = 184
    ExplicitLeft = 120
    ExplicitTop = 59
    object cxDBTextEdit2: TcxDBTextEdit [0]
      Left = 70
      Top = 10
      TabStop = False
      DataBinding.DataField = 'INTEREST_NO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 70
      Top = 37
      TabStop = False
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 93
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 169
      Top = 37
      TabStop = False
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 363
    end
    object cxDBTextEdit4: TcxDBTextEdit [3]
      Left = 70
      Top = 64
      TabStop = False
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 93
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [4]
      Left = 253
      Top = 64
      TabStop = False
      DataBinding.DataField = 'INTEREST_AMT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.DisplayFormat = '#,##0;(#,##0);0'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 141
    end
    object cxDBDateEdit1: TcxDBDateEdit [5]
      Left = 108
      Top = 109
      DataBinding.DataField = 'DISCOUNT_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [6]
      Left = 108
      Top = 136
      DataBinding.DataField = 'DISCOUNT_AMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Interest No'
      Parent = LayoutControlGroup_Root
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account No'
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem3: TdxLayoutItem
      CaptionOptions.Text = 'cxDBTextEdit3'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
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
    object LayoutControlItem4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Parent = LayoutControlGroup2
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LayoutControlItem6: TdxLayoutItem
      CaptionOptions.Text = 'Interest Amount'
      Parent = LayoutControlGroup2
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Discount Date'
      Parent = LayoutControlGroup3
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Discount'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object LayoutControlItem7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Discount Amount'
      Parent = LayoutControlGroup3
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 184
    Width = 547
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
    DataSet = frmInterestTrackList.cdsInterestTrack
    Left = 571
    Top = 291
  end
end
