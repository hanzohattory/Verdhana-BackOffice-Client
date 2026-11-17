inherited frmCOBDataOwner: TfrmCOBDataOwner
  Caption = 'Account Data Owner'
  ClientHeight = 339
  ClientWidth = 570
  ExplicitWidth = 576
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 570
    Height = 57
    Align = alTop
    ExplicitWidth = 570
    ExplicitHeight = 57
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 49
      Top = 10
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 88
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 196
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 333
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.Text = 'A/C No'
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'A/C Name'
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit2
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
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 290
    Width = 570
    ExplicitTop = 290
    ExplicitWidth = 570
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
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 57
    Width = 249
    Height = 233
    Align = alLeft
    TabOrder = 2
    object gvwAccDataOwnUnSelect: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAccDataOwnUnSelect
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gvwAccDataOwnUnSelectDATADESC: TcxGridDBColumn
        Caption = 'Unselected Data Owner'
        DataBinding.FieldName = 'DATADESC'
        Width = 221
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwAccDataOwnUnSelect
    end
  end
  object cxGrid2: TcxGrid [3]
    Left = 320
    Top = 57
    Width = 250
    Height = 233
    Align = alRight
    TabOrder = 3
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAccDataOwnSelect
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = 'Selected Data Owner'
        DataBinding.FieldName = 'DATADESC'
        Width = 221
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object dxLayoutControl1: TdxLayoutControl [4]
    Left = 249
    Top = 57
    Width = 71
    Height = 233
    Align = alClient
    BevelKind = bkTile
    TabOrder = 4
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 47
      Height = 25
      Caption = '>'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 10
      Top = 41
      Width = 45
      Height = 25
      Caption = '<'
      TabOrder = 1
      OnClick = cxButton2Click
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
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCOBList.cdsAccount
    Left = 416
  end
  object cdsAccDataOwnUnSelect: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccDataOwnUnSelect'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 416
    Top = 64
    object cdsAccDataOwnUnSelectDATAID: TIntegerField
      FieldName = 'DATAID'
      Required = True
    end
    object cdsAccDataOwnUnSelectDATACODE: TStringField
      FieldName = 'DATACODE'
    end
    object cdsAccDataOwnUnSelectDATADESC: TStringField
      FieldName = 'DATADESC'
      Size = 100
    end
  end
  object dsAccDataOwnUnSelect: TDataSource
    DataSet = cdsAccDataOwnUnSelect
    Left = 416
    Top = 112
  end
  object cdsAccDataOwnSelect: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccDataOwnSelect'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 416
    Top = 160
    object cdsAccDataOwnSelectDATAID: TIntegerField
      FieldName = 'DATAID'
      Required = True
    end
    object cdsAccDataOwnSelectACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccDataOwnSelectMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccDataOwnSelectMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccDataOwnSelectDATACODE: TStringField
      FieldName = 'DATACODE'
    end
    object cdsAccDataOwnSelectDATADESC: TStringField
      FieldName = 'DATADESC'
      Size = 100
    end
  end
  object dsAccDataOwnSelect: TDataSource
    DataSet = cdsAccDataOwnSelect
    Left = 416
    Top = 224
  end
end
