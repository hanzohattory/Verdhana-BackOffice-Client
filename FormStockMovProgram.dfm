inherited frmStockMovementProgram: TfrmStockMovementProgram
  Caption = 'Stock Movement Program'
  ClientHeight = 169
  ClientWidth = 493
  ExplicitWidth = 499
  ExplicitHeight = 198
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 493
    Height = 79
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 85
      Top = 10
      DataBinding.DataField = 'progName'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 172
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 85
      Top = 37
      DataBinding.DataField = 'progDesc'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 396
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Program Name'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 172
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 396
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 100
    Width = 493
    inherited dbNavLog: TDBNavigator
      Left = 379
      Hints.Strings = ()
      ExplicitLeft = 379
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 149
    Width = 493
  end
  inherited tabEditorData: TTabSet
    Top = 79
    Width = 493
  end
  inherited dsSubject: TDataSource
    DataSet = cdsStockMovProgram
    Left = 424
    Top = 176
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 424
    Top = 224
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsStockMovProgram: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'prog_id'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryMovementProgram'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsStockMovProgramBeforePost
    OnNewRecord = cdsStockMovProgramNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 424
    Top = 120
    object cdsStockMovProgramprog_id: TLargeintField
      FieldName = 'prog_id'
      Required = True
    end
    object cdsStockMovProgramprogName: TStringField
      FieldName = 'progName'
      Required = True
      Size = 200
    end
    object cdsStockMovProgramprogDesc: TStringField
      FieldName = 'progDesc'
      Size = 250
    end
    object cdsStockMovProgramINSDA: TDateField
      FieldName = 'INSDA'
    end
    object cdsStockMovProgramINSUI: TStringField
      FieldName = 'INSUI'
    end
    object cdsStockMovProgramMODDA: TDateField
      FieldName = 'MODDA'
    end
    object cdsStockMovProgramMODUI: TStringField
      FieldName = 'MODUI'
    end
  end
end
