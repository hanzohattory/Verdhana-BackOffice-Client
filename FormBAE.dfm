inherited frmBAE: TfrmBAE
  Caption = 'Biro Administrasi Efek'
  ClientHeight = 253
  ClientWidth = 490
  ExplicitWidth = 496
  ExplicitHeight = 282
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 490
    Height = 163
    ExplicitWidth = 490
    ExplicitHeight = 163
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 54
      Top = 10
      DataBinding.DataField = 'BAECODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 54
      Top = 37
      DataBinding.DataField = 'BAENAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 420
    end
    object cxDBMemo1: TcxDBMemo [2]
      Left = 54
      Top = 64
      DataBinding.DataField = 'BAEADDRESS'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Height = 57
      Width = 420
    end
    object cxDBTextEdit3: TcxDBTextEdit [3]
      Left = 54
      Top = 127
      DataBinding.DataField = 'BAEPHONE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [4]
      Left = 204
      Top = 127
      DataBinding.DataField = 'BAEFAX'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Address'
      Parent = dxLayoutGroup1
      Control = cxDBMemo1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Phone'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Fax'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit4
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
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 184
    Width = 490
    ExplicitTop = 184
    ExplicitWidth = 490
    inherited dbNavLog: TDBNavigator
      Left = 376
      Hints.Strings = ()
      ExplicitLeft = 376
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
    Top = 233
    Width = 490
    ExplicitTop = 233
    ExplicitWidth = 490
  end
  inherited tabEditorData: TTabSet
    Top = 163
    Width = 490
    ExplicitTop = 163
    ExplicitWidth = 490
  end
  inherited dsSubject: TDataSource
    DataSet = cdsBAE
    Left = 432
    Top = 112
  end
  object cdsBAE: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'BAEID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryBAE'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsBAEBeforePost
    OnNewRecord = cdsBAENewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 368
    Top = 112
    object cdsBAEBAEID: TIntegerField
      FieldName = 'BAEID'
      Required = True
    end
    object cdsBAEBAECODE: TStringField
      FieldName = 'BAECODE'
      Required = True
      Size = 10
    end
    object cdsBAEBAENAME: TStringField
      FieldName = 'BAENAME'
      Size = 100
    end
    object cdsBAEBAEADDRESS: TStringField
      FieldName = 'BAEADDRESS'
      Size = 250
    end
    object cdsBAEBAEPHONE: TStringField
      FieldName = 'BAEPHONE'
    end
    object cdsBAEBAEFAX: TStringField
      FieldName = 'BAEFAX'
    end
    object cdsBAEMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBAEMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBAEAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBAEAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBAEUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBAEUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBAENOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBAEISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBAEID: TLargeintField
      FieldName = 'ID'
    end
  end
end
