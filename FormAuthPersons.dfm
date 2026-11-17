inherited frmAuthPersons: TfrmAuthPersons
  Caption = 'Auth Person Editor'
  ClientHeight = 159
  ClientWidth = 368
  ExplicitWidth = 374
  ExplicitHeight = 188
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 368
    Height = 69
    ExplicitWidth = 368
    ExplicitHeight = 69
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'AUTH_NAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 281
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 68
      Top = 37
      DataBinding.DataField = 'JABATAN'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Auth Name'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Position'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
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
    Top = 90
    Width = 368
    ExplicitTop = 90
    ExplicitWidth = 368
    inherited dbNavLog: TDBNavigator
      Left = 254
      Hints.Strings = ()
      ExplicitLeft = 254
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
    Top = 139
    Width = 368
    ExplicitTop = 139
    ExplicitWidth = 368
  end
  inherited tabEditorData: TTabSet
    Top = 69
    Width = 368
    ExplicitTop = 69
    ExplicitWidth = 368
  end
  inherited dsSubject: TDataSource
    DataSet = cdsAuthPerson
    Left = 204
    Top = 94
  end
  object cdsAuthPerson: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'AUTH_ID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryAuthPerson'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsAuthPersonBeforePost
    OnNewRecord = cdsAuthPersonNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = True
    Left = 118
    Top = 93
    object cdsAuthPersonAUTH_ID: TLargeintField
      FieldName = 'AUTH_ID'
      Required = True
    end
    object cdsAuthPersonAUTH_NAME: TStringField
      FieldName = 'AUTH_NAME'
      Size = 100
    end
    object cdsAuthPersonJABATAN: TStringField
      FieldName = 'JABATAN'
      Size = 50
    end
    object cdsAuthPersonMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAuthPersonMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAuthPersonAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAuthPersonAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAuthPersonUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAuthPersonUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAuthPersonNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAuthPersonISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAuthPersonID: TLargeintField
      FieldName = 'ID'
    end
  end
end
