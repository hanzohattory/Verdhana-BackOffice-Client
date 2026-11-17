inherited frmCOBInsert: TfrmCOBInsert
  Caption = 'Insert'
  ClientHeight = 218
  ClientWidth = 548
  ExplicitWidth = 554
  ExplicitHeight = 246
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 548
    Height = 169
    ExplicitWidth = 548
    ExplicitHeight = 169
    object cxDBLabel1: TcxDBLabel [0]
      Left = 54
      Top = 10
      DataBinding.DataField = 'CUST_REG_NO'
      DataBinding.DataSource = dsSubject
      Style.HotTrack = False
      Style.TextStyle = [fsBold, fsUnderline]
      Height = 21
      Width = 121
    end
    object cxDBLabel2: TcxDBLabel [1]
      Left = 213
      Top = 10
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = dsSubject
      Style.HotTrack = False
      Style.TextStyle = [fsBold, fsUnderline]
      Height = 21
      Width = 308
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 96
      Top = 55
      RepositoryItem = dmGlobal.luBank
      DataBinding.DataField = 'BNINVCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 193
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 96
      Top = 109
      DataBinding.DataField = 'BNINVACCNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit [4]
      Left = 96
      Top = 166
      DataBinding.DataField = 'SUBREK001'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [5]
      Left = 96
      Top = 250
      DataBinding.DataField = 'SID'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [6]
      Left = 96
      Top = 307
      RepositoryItem = dmGlobal.luSales
      DataBinding.DataField = 'SALES'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 145
    end
    object cxDBTextEdit4: TcxDBTextEdit [7]
      Left = 96
      Top = 82
      DataBinding.DataField = 'BNINACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit [8]
      Left = 96
      Top = 193
      DataBinding.DataField = 'SUBREK004'
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
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.Text = 'Reg No.'
      Parent = LayoutControlGroup1
      Control = cxDBLabel1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'Name'
      Parent = LayoutControlGroup1
      Control = cxDBLabel2
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
      Index = 0
    end
    object lyRDN: TdxLayoutGroup
      CaptionOptions.Text = 'RDN'
      Parent = LayoutControlGroup_Root
      Visible = False
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object LayoutControlItem4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Name'
      Parent = lyRDN
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem5: TdxLayoutItem
      CaptionOptions.Text = 'Account No.'
      Parent = lyRDN
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lySubRek: TdxLayoutGroup
      CaptionOptions.Text = 'KSEI Sub Rek'
      Parent = LayoutControlGroup_Root
      Visible = False
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object lySID: TdxLayoutGroup
      CaptionOptions.Text = 'SID'
      Parent = LayoutControlGroup_Root
      Visible = False
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object LayoutControlItem3: TdxLayoutItem
      CaptionOptions.Text = 'Sub Rek 001'
      Parent = lySubRek
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem6: TdxLayoutItem
      CaptionOptions.Text = 'SID No.'
      Parent = lySID
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lySales: TdxLayoutGroup
      CaptionOptions.Text = 'Assign Sales'
      Parent = LayoutControlGroup_Root
      Visible = False
      ButtonOptions.Buttons = <>
      Index = 4
    end
    object LayoutControlItem7: TdxLayoutItem
      CaptionOptions.Text = 'Sales Name'
      Parent = lySales
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem8: TdxLayoutItem
      CaptionOptions.Text = 'Account Name'
      Parent = lyRDN
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem9: TdxLayoutItem
      CaptionOptions.Text = 'Sub Rek 004'
      Parent = lySubRek
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 169
    Width = 548
    ExplicitTop = 158
    ExplicitWidth = 539
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
    DataSet = frmClientOnBoardingList.cdsCOBDetails
    Left = 325
    Top = 150
  end
end
