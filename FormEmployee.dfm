inherited frmEmployee: TfrmEmployee
  Caption = 'Employee'
  ClientHeight = 170
  ClientWidth = 433
  ExplicitWidth = 439
  ExplicitHeight = 199
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 433
    Height = 80
    ExplicitWidth = 433
    ExplicitHeight = 80
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 91
      Top = 10
      DataBinding.DataField = 'EMPLOYEECODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 91
      Top = 37
      DataBinding.DataField = 'EMPLOYEENAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 254
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Employee Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Employee Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 254
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 101
    Width = 433
    ExplicitTop = 101
    ExplicitWidth = 433
    inherited dbNavLog: TDBNavigator
      Left = 319
      Hints.Strings = ()
      ExplicitLeft = 319
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 150
    Width = 433
    ExplicitTop = 150
    ExplicitWidth = 433
  end
  inherited tabEditorData: TTabSet
    Top = 80
    Width = 433
    ExplicitTop = 80
    ExplicitWidth = 433
  end
  inherited dsSubject: TDataSource
    DataSet = cdsEmployee
    Left = 368
    Top = 8
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 368
    Top = 56
  end
  object cdsEmployee: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPLOYEEID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryEmployee'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsEmployeeBeforePost
    OnNewRecord = cdsEmployeeNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 312
    Top = 56
    object cdsEmployeeEMPLOYEEID: TIntegerField
      FieldName = 'EMPLOYEEID'
    end
    object cdsEmployeeEMPLOYEECODE: TStringField
      FieldName = 'EMPLOYEECODE'
      Size = 50
    end
    object cdsEmployeeEMPLOYEENAME: TStringField
      FieldName = 'EMPLOYEENAME'
      Size = 100
    end
    object cdsEmployeeISDEL: TBooleanField
      FieldName = 'ISDEL'
    end
  end
end
