inherited frmChannel: TfrmChannel
  Caption = 'Channel'
  ClientHeight = 158
  ClientWidth = 490
  ExplicitWidth = 496
  ExplicitHeight = 187
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 490
    Height = 68
    ExplicitWidth = 490
    ExplicitHeight = 68
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'CHANNELCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 68
      Top = 37
      DataBinding.DataField = 'CHANNELDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 412
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Channel ID'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 89
    Width = 490
    ExplicitTop = 89
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
    Top = 138
    Width = 490
    ExplicitTop = 138
    ExplicitWidth = 490
  end
  inherited tabEditorData: TTabSet
    Top = 68
    Width = 490
    ExplicitTop = 68
    ExplicitWidth = 490
  end
  inherited dsSubject: TDataSource
    DataSet = cdsChannel
    Left = 408
    Top = 8
  end
  object cdsChannel: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'CHANNELCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryChannel'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 408
    Top = 56
    object cdsChannelCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Required = True
      Size = 10
    end
    object cdsChannelCHANNELDESC: TStringField
      FieldName = 'CHANNELDESC'
      Size = 50
    end
    object cdsChannelMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsChannelMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsChannelAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsChannelAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsChannelISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsChannelID: TLargeintField
      FieldName = 'ID'
    end
  end
end
