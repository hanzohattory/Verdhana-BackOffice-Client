inherited frmCompareRDNKSEI: TfrmCompareRDNKSEI
  Caption = 'Compare RDN - KSEI Account'
  ClientHeight = 260
  ClientWidth = 518
  ExplicitWidth = 524
  ExplicitHeight = 289
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 518
    Height = 211
    ExplicitWidth = 518
    ExplicitHeight = 211
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 75
      Top = 10
      DataBinding.DataField = 'CUST_REG_NO'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 100
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 243
      Top = 10
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 254
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 90
      Top = 55
      DataBinding.DataField = 'SID'
      DataBinding.DataSource = dsKSEI
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 150
    end
    object cxDBTextEdit4: TcxDBTextEdit [3]
      Left = 90
      Top = 82
      DataBinding.DataField = 'SUBREK01'
      DataBinding.DataSource = dsKSEI
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit [4]
      Left = 90
      Top = 109
      DataBinding.DataField = 'SUBREK04'
      DataBinding.DataSource = dsKSEI
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit [5]
      Left = 90
      Top = 136
      DataBinding.DataField = 'BANKNAME'
      DataBinding.DataSource = dsRDN
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit [6]
      Left = 90
      Top = 163
      DataBinding.DataField = 'RDNACCNO'
      DataBinding.DataSource = dsRDN
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit [7]
      Left = 338
      Top = 55
      DataBinding.DataField = 'SID'
      DataBinding.DataSource = dsKSEIUpload
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 150
    end
    object cxDBTextEdit9: TcxDBTextEdit [8]
      Left = 338
      Top = 82
      DataBinding.DataField = 'SUBREK01'
      DataBinding.DataSource = dsKSEIUpload
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit [9]
      Left = 338
      Top = 109
      DataBinding.DataField = 'SUBREK04'
      DataBinding.DataSource = dsKSEIUpload
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBTextEdit11: TcxDBTextEdit [10]
      Left = 338
      Top = 136
      DataBinding.DataField = 'BANK'
      DataBinding.DataSource = dsKSEIUpload
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBTextEdit12: TcxDBTextEdit [11]
      Left = 338
      Top = 163
      DataBinding.DataField = 'RDN'
      DataBinding.DataSource = dsKSEIUpload
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.Text = 'Request No.'
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'Client Name'
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem3: TdxLayoutItem
      CaptionOptions.Text = 'SID'
      Parent = LayoutControlGroup2
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem4: TdxLayoutItem
      CaptionOptions.Text = 'Sub Rek 001'
      Parent = LayoutControlGroup2
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem5: TdxLayoutItem
      CaptionOptions.Text = 'Sub Rek 004'
      Parent = LayoutControlGroup2
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem6: TdxLayoutItem
      CaptionOptions.Text = 'RDN Bank'
      Parent = LayoutControlGroup2
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlItem7: TdxLayoutItem
      CaptionOptions.Text = 'RDN Account'
      Parent = LayoutControlGroup2
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutControlItem8: TdxLayoutItem
      CaptionOptions.Text = 'SID'
      Parent = LayoutControlGroup3
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem9: TdxLayoutItem
      CaptionOptions.Text = 'Sub Rek 001'
      Parent = LayoutControlGroup3
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem10: TdxLayoutItem
      CaptionOptions.Text = 'Sub Rek 004'
      Parent = LayoutControlGroup3
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Index = 2
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
    object LayoutControlGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Internal Back Office Data'
      Parent = LayoutControlGroup4
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LayoutControlItem11: TdxLayoutItem
      CaptionOptions.Text = 'RDN Bank'
      Parent = LayoutControlGroup3
      Control = cxDBTextEdit11
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlItem12: TdxLayoutItem
      CaptionOptions.Text = 'RDN Account'
      Parent = LayoutControlGroup3
      Control = cxDBTextEdit12
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutControlGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'KSEI Upload Data'
      Parent = LayoutControlGroup4
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
      Index = 1
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 211
    Width = 518
    ExplicitTop = 211
    ExplicitWidth = 518
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
    DataSet = frmCOBList.cdsCOBDetails
    Left = 208
    Top = 196
  end
  object dsKSEI: TDataSource
    DataSet = frmCOBList.cdsViewKSEISubrek
    Left = 280
    Top = 200
  end
  object dsRDN: TDataSource
    DataSet = frmCOBList.cdsViewRDN
    Left = 344
    Top = 200
  end
  object dsKSEIUpload: TDataSource
    DataSet = frmCOBList.cdsKSEIRDNCompare
    Left = 416
    Top = 200
  end
end
