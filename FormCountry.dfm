inherited frmCountry: TfrmCountry
  Caption = 'Country'
  ClientHeight = 218
  ClientWidth = 477
  ExplicitWidth = 483
  ExplicitHeight = 247
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 477
    Height = 128
    ExplicitWidth = 468
    ExplicitHeight = 98
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 76
      Top = 10
      DataBinding.DataField = 'CODE'
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
      DataBinding.DataField = 'COUNTNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 391
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 76
      Top = 64
      DataBinding.DataField = 'NATIONALITY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 391
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [3]
      Left = 76
      Top = 91
      DataBinding.DataField = 'RISK'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Low'
          ImageIndex = 0
          Value = 'L'
        end
        item
          Description = 'Medium'
          Value = 'M'
        end
        item
          Description = 'High'
          Value = 'H'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Nationality'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Country Risk'
      Parent = dxLayoutGroup1
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 149
    Width = 477
    ExplicitTop = 119
    ExplicitWidth = 468
    inherited dbNavLog: TDBNavigator
      Left = 363
      Hints.Strings = ()
      ExplicitLeft = 363
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
    Top = 198
    Width = 477
    ExplicitTop = 168
    ExplicitWidth = 468
  end
  inherited tabEditorData: TTabSet
    Top = 128
    Width = 477
    ExplicitTop = 98
    ExplicitWidth = 468
  end
  inherited dsSubject: TDataSource
    DataSet = frmCountryList.cdsCountry
    Left = 200
    Top = 8
  end
end
