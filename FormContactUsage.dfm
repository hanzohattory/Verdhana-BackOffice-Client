inherited frmContactUsage: TfrmContactUsage
  Caption = 'Contact Usage'
  ClientHeight = 148
  ClientWidth = 446
  ExplicitWidth = 452
  ExplicitHeight = 177
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 446
    Height = 58
    ExplicitWidth = 446
    ExplicitHeight = 58
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 86
      Top = 10
      DataBinding.DataField = 'CUSDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 227
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Contact Usage'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 79
    Width = 446
    ExplicitTop = 79
    ExplicitWidth = 446
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
    Top = 128
    Width = 446
    ExplicitTop = 128
    ExplicitWidth = 446
  end
  inherited tabEditorData: TTabSet
    Top = 58
    Width = 446
    ExplicitTop = 58
    ExplicitWidth = 446
  end
  inherited dsSubject: TDataSource
    DataSet = frmContactUsageList.cdsContactUsage
  end
end
