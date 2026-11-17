inherited frmProvince: TfrmProvince
  Caption = 'Province'
  ClientHeight = 163
  ClientWidth = 444
  ExplicitWidth = 450
  ExplicitHeight = 192
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 444
    Height = 73
    ExplicitWidth = 444
    ExplicitHeight = 73
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 42
      Top = 10
      DataBinding.DataField = 'PROVCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 42
      Top = 37
      DataBinding.DataField = 'PROVNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 391
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 213
      Top = 10
      RepositoryItem = dmGlobal.luCountry
      DataBinding.DataField = 'COUNTCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 219
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutControl1Group1
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
      CaptionOptions.Text = 'Country'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 94
    Width = 444
    ExplicitTop = 94
    ExplicitWidth = 444
    inherited dbNavLog: TDBNavigator
      Left = 330
      Hints.Strings = ()
      ExplicitLeft = 330
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
    Top = 143
    Width = 444
    ExplicitTop = 143
    ExplicitWidth = 444
  end
  inherited tabEditorData: TTabSet
    Top = 73
    Width = 444
    ExplicitTop = 73
    ExplicitWidth = 444
  end
  inherited dsSubject: TDataSource
    DataSet = cdsProvince
    Left = 280
    Top = 8
  end
  object cdsProvince: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PROVCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryProvince'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 280
    Top = 56
    object cdsProvincePROVCODE: TStringField
      FieldName = 'PROVCODE'
      Required = True
      Size = 10
    end
    object cdsProvincePROVNAME: TStringField
      FieldName = 'PROVNAME'
      Size = 50
    end
    object cdsProvinceCOUNTCODE: TStringField
      FieldName = 'COUNTCODE'
      Required = True
      Size = 5
    end
    object cdsProvinceMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsProvinceMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsProvinceAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsProvinceAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsProvinceUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsProvinceUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsProvinceNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsProvinceISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsProvinceID: TLargeintField
      FieldName = 'ID'
    end
  end
end
