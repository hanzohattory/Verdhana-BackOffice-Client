inherited frmCPCenter: TfrmCPCenter
  Caption = 'Cost/Profit Center'
  ClientHeight = 165
  ClientWidth = 428
  ExplicitWidth = 434
  ExplicitHeight = 194
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 428
    Height = 75
    ExplicitWidth = 414
    ExplicitHeight = 88
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'CPCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 76
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 68
      Top = 37
      DataBinding.DataField = 'CPDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 350
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
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
    Top = 96
    Width = 428
    ExplicitTop = 109
    ExplicitWidth = 414
    inherited dbNavLog: TDBNavigator
      Left = 314
      Hints.Strings = ()
      ExplicitLeft = 314
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
    Top = 145
    Width = 428
    ExplicitTop = 158
    ExplicitWidth = 414
  end
  inherited tabEditorData: TTabSet
    Top = 75
    Width = 428
    ExplicitTop = 88
    ExplicitWidth = 414
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCPCenter
    Left = 208
  end
  object cdsCPCenter: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CPID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryCPCenter'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsCPCenterBeforePost
    OnNewRecord = cdsCPCenterNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 304
    Top = 104
    object cdsCPCenterCPID: TLargeintField
      FieldName = 'CPID'
    end
    object cdsCPCenterCPCODE: TStringField
      FieldName = 'CPCODE'
    end
    object cdsCPCenterCPDESC: TStringField
      FieldName = 'CPDESC'
      Size = 50
    end
    object cdsCPCenterMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCPCenterMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCPCenterAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCPCenterAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCPCenterUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCPCenterUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCPCenterNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCPCenterISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCPCenterID: TLargeintField
      FieldName = 'ID'
    end
  end
end
