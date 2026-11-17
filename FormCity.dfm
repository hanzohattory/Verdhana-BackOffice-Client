inherited frmCity: TfrmCity
  Caption = 'City'
  ClientHeight = 187
  ClientWidth = 453
  ExplicitWidth = 459
  ExplicitHeight = 216
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 453
    Height = 97
    ExplicitWidth = 453
    ExplicitHeight = 97
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 56
      Top = 10
      DataBinding.DataField = 'CITYCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 56
      Top = 37
      DataBinding.DataField = 'CITYNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 385
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 56
      Top = 64
      RepositoryItem = dmGlobal.luProvince
      DataBinding.DataField = 'PROVCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 385
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
      CaptionOptions.Text = 'Province'
      Parent = dxLayoutGroup1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 118
    Width = 453
    ExplicitTop = 118
    ExplicitWidth = 453
    inherited dbNavLog: TDBNavigator
      Left = 339
      Hints.Strings = ()
      ExplicitLeft = 339
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
    Top = 167
    Width = 453
    ExplicitTop = 167
    ExplicitWidth = 453
  end
  inherited tabEditorData: TTabSet
    Top = 97
    Width = 453
    ExplicitTop = 97
    ExplicitWidth = 453
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCity
    Left = 264
  end
  object cdsCity: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CITYCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryCity'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 264
    Top = 64
    object cdsCityCITYCODE: TStringField
      FieldName = 'CITYCODE'
      Required = True
      Size = 10
    end
    object cdsCityCITYNAME: TStringField
      FieldName = 'CITYNAME'
      Size = 50
    end
    object cdsCityPROVCODE: TStringField
      FieldName = 'PROVCODE'
      Required = True
      Size = 10
    end
    object cdsCityMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCityMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCityAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCityAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCityUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCityUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCityNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCityISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCityID: TLargeintField
      FieldName = 'ID'
    end
  end
end
