inherited frmOccupation: TfrmOccupation
  Caption = 'Occupation'
  ClientHeight = 185
  ClientWidth = 463
  ExplicitWidth = 469
  ExplicitHeight = 214
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 463
    Height = 95
    ExplicitWidth = 463
    ExplicitHeight = 95
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 69
      Top = 10
      DataBinding.DataField = 'OCCUPATION'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 147
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 69
      Top = 37
      DataBinding.DataField = 'OC_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 372
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [2]
      Left = 69
      Top = 64
      DataBinding.DataField = 'RISK'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'High'
          ImageIndex = 0
          Value = 'H'
        end
        item
          Description = 'Medium'
          Value = 'M'
        end
        item
          Description = 'Low'
          Value = 'L'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 107
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Occupation'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 147
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 372
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Risk'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 116
    Width = 463
    ExplicitTop = 116
    ExplicitWidth = 463
    inherited dbNavLog: TDBNavigator
      Left = 349
      Hints.Strings = ()
      ExplicitLeft = 349
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 165
    Width = 463
    ExplicitTop = 165
    ExplicitWidth = 463
  end
  inherited tabEditorData: TTabSet
    Top = 95
    Width = 463
    ExplicitTop = 95
    ExplicitWidth = 463
  end
  inherited dsSubject: TDataSource
    DataSet = cdsOccupation
    Left = 384
    Top = 136
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 216
    Top = 56
  end
  object cdsOccupation: TNClientDataset
    Aggregates = <>
    AutoCalcFields = False
    Params = <
      item
        DataType = ftInteger
        Name = 'OC_CODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryOccupation'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 384
    Top = 56
    object cdsOccupationOC_CODE: TLargeintField
      FieldName = 'OC_CODE'
      Required = True
    end
    object cdsOccupationOCCUPATION: TStringField
      FieldName = 'OCCUPATION'
      Size = 50
    end
    object cdsOccupationOC_DESC: TStringField
      FieldName = 'OC_DESC'
      Size = 200
    end
    object cdsOccupationMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOccupationMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOccupationAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOccupationAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOccupationUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOccupationUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOccupationNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOccupationISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOccupationID: TLargeintField
      FieldName = 'ID'
    end
    object cdsOccupationRISK: TStringField
      FieldName = 'RISK'
      Size = 1
    end
    object cdsOccupationOCCUPATION_EN: TStringField
      FieldName = 'OCCUPATION_EN'
      Size = 50
    end
    object cdsOccupationOCCUPATION_ID: TStringField
      FieldName = 'OCCUPATION_ID'
      Size = 50
    end
  end
end
