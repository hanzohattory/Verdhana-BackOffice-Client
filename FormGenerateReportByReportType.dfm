object frmGenerateReportByRptType: TfrmGenerateReportByRptType
  Left = 0
  Top = 0
  Caption = 'NAWC - Daily Generate Process'
  ClientHeight = 50
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 282
    Height = 50
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 381
    ExplicitHeight = 101
    object GenerateReport: TcxButton
      Left = 194
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Generate'
      ModalResult = 5
      TabOrder = 1
    end
    object cxDBLabel1: TcxDBLabel
      Left = 67
      Top = 10
      DataBinding.DataField = 'ValueDate'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Height = 25
      Width = 121
      AnchorY = 23
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = GenerateReport
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'Value Date'
      Control = cxDBLabel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 16
    object ClientDataSet1ValueDate: TDateField
      FieldName = 'ValueDate'
      DisplayFormat = 'dd mmm yyyy'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 368
    Top = 16
  end
end
