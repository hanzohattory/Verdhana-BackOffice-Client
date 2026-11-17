inherited frmBroker: TfrmBroker
  Caption = 'Broker'
  ClientHeight = 188
  ClientWidth = 491
  ExplicitWidth = 497
  ExplicitHeight = 216
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 491
    Height = 98
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 76
      Top = 10
      DataBinding.DataField = 'BROKERCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 76
      Top = 37
      DataBinding.DataField = 'BROKERNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 404
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 76
      Top = 64
      DataBinding.DataField = 'INTERFEE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Broker Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Broker Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Inter Fee'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 119
    Width = 491
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
  end
  inherited StatusBar: TdxStatusBar
    Top = 168
    Width = 491
  end
  inherited tabEditorData: TTabSet
    Top = 98
    Width = 491
  end
  inherited dsSubject: TDataSource
    DataSet = frmBrokers.cdsBroker
    Left = 216
    Top = 112
  end
end
