inherited frmBussType: TfrmBussType
  Caption = 'Bussiness Type'
  ClientHeight = 163
  ClientWidth = 494
  ExplicitWidth = 500
  ExplicitHeight = 192
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 494
    Height = 73
    ExplicitHeight = 96
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 92
      Top = 10
      DataBinding.DataField = 'BUS_CAT_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 92
      Top = 37
      DataBinding.DataField = 'BUS_CAT_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 390
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Buss Type Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 94
    Width = 494
    ExplicitTop = 117
    inherited dbNavLog: TDBNavigator
      Left = 380
      Hints.Strings = ()
      ExplicitLeft = 380
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
    Width = 494
    ExplicitTop = 166
  end
  inherited tabEditorData: TTabSet
    Top = 73
    Width = 494
    ExplicitTop = 96
  end
  inherited dsSubject: TDataSource
    DataSet = cdsBussCat
    Left = 440
    Top = 8
  end
  object cdsBussCat: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'BUS_CAT_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryBussCat'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsBussCatBeforePost
    OnNewRecord = cdsBussCatNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 376
    Top = 8
    object cdsBussCatBUS_CAT_ID: TLargeintField
      FieldName = 'BUS_CAT_ID'
      Required = True
    end
    object cdsBussCatBUS_CAT_CODE: TStringField
      FieldName = 'BUS_CAT_CODE'
    end
    object cdsBussCatBUS_CAT_DESC: TStringField
      FieldName = 'BUS_CAT_DESC'
      Size = 50
    end
    object cdsBussCatMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBussCatMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBussCatAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBussCatAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBussCatUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBussCatUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBussCatNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBussCatISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBussCatID: TLargeintField
      FieldName = 'ID'
    end
  end
end
