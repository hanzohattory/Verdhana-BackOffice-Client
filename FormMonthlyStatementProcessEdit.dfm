inherited frmMonthlyStatementProcessEdit: TfrmMonthlyStatementProcessEdit
  Caption = 'Process Monthly Statement'
  ClientHeight = 255
  ClientWidth = 520
  ExplicitWidth = 526
  ExplicitHeight = 284
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 520
    Height = 165
    ExplicitWidth = 520
    ExplicitHeight = 165
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 80
      Top = 10
      DataBinding.DataField = 'PROCESS_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 80
      Top = 37
      DataBinding.DataField = 'START_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [2]
      Left = 256
      Top = 37
      DataBinding.DataField = 'END_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo [3]
      Left = 80
      Top = 64
      DataBinding.DataField = 'NOTES'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Height = 89
      Width = 427
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Process Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Start Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'End Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Notes'
      Parent = dxLayoutGroup1
      Control = cxDBMemo1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 186
    Width = 520
    ExplicitTop = 186
    ExplicitWidth = 520
    inherited dbNavLog: TDBNavigator
      Left = 406
      Hints.Strings = ()
      ExplicitLeft = 406
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
    Top = 235
    Width = 520
    ExplicitTop = 235
    ExplicitWidth = 520
  end
  inherited tabEditorData: TTabSet
    Top = 165
    Width = 520
    ExplicitTop = 165
    ExplicitWidth = 520
  end
  inherited dsSubject: TDataSource
    DataSet = cdsMonthlyStatementProcess
    Left = 408
    Top = 0
  end
  object cdsMonthlyStatementProcess: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'PROCESS_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryMonthlyStatementProcess'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsMonthlyStatementProcessNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = True
    Left = 408
    Top = 48
    object cdsMonthlyStatementProcessPROCESS_ID: TLargeintField
      FieldName = 'PROCESS_ID'
      Required = True
    end
    object cdsMonthlyStatementProcessPROCESS_CODE: TStringField
      FieldName = 'PROCESS_CODE'
      Required = True
    end
    object cdsMonthlyStatementProcessSTART_DATE: TDateField
      FieldName = 'START_DATE'
    end
    object cdsMonthlyStatementProcessEND_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object cdsMonthlyStatementProcessNOTES: TStringField
      FieldName = 'NOTES'
      Size = 150
    end
    object cdsMonthlyStatementProcessSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsMonthlyStatementProcessMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMonthlyStatementProcessMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMonthlyStatementProcessAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMonthlyStatementProcessAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMonthlyStatementProcessUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMonthlyStatementProcessUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMonthlyStatementProcessNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMonthlyStatementProcessISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMonthlyStatementProcessID: TLargeintField
      FieldName = 'ID'
    end
  end
end
