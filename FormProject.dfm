inherited frmProject: TfrmProject
  Caption = 'Project'
  ClientHeight = 211
  ClientWidth = 477
  ExplicitWidth = 483
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 477
    Height = 121
    ExplicitWidth = 477
    ExplicitHeight = 121
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 79
      Top = 10
      DataBinding.DataField = 'PROJECTCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 130
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 79
      Top = 37
      DataBinding.DataField = 'PROJECTNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 226
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 79
      Top = 64
      DataBinding.DataField = 'PROJECTDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 362
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Project Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Project Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 226
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 362
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 142
    Width = 477
    ExplicitTop = 142
    ExplicitWidth = 477
    inherited dbNavLog: TDBNavigator
      Left = 363
      Hints.Strings = ()
      ExplicitLeft = 363
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 191
    Width = 477
    ExplicitTop = 191
    ExplicitWidth = 477
  end
  inherited tabEditorData: TTabSet
    Top = 121
    Width = 477
    ExplicitTop = 121
    ExplicitWidth = 477
  end
  inherited dsSubject: TDataSource
    DataSet = cdsProject
    Left = 296
    Top = 112
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 248
    Top = 112
  end
  object cdsProject: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PROJECTID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryProject'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsProjectBeforePost
    OnNewRecord = cdsProjectNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 360
    Top = 112
    object cdsProjectPROJECTID: TIntegerField
      FieldName = 'PROJECTID'
    end
    object cdsProjectPROJECTCODE: TStringField
      FieldName = 'PROJECTCODE'
      Size = 50
    end
    object cdsProjectPROJECTNAME: TStringField
      FieldName = 'PROJECTNAME'
      Size = 100
    end
    object cdsProjectPROJECTDESC: TStringField
      FieldName = 'PROJECTDESC'
      Size = 300
    end
    object cdsProjectISDEL: TBooleanField
      FieldName = 'ISDEL'
    end
  end
end
