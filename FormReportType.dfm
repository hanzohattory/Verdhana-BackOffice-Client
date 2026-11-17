inherited frmReportType: TfrmReportType
  Caption = 'Report Type'
  ClientHeight = 221
  ClientWidth = 494
  ExplicitWidth = 500
  ExplicitHeight = 250
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 494
    Height = 131
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 107
      Top = 10
      DataBinding.DataField = 'RPTTYPE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 107
      Top = 37
      DataBinding.DataField = 'RTPTYPEDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 375
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 107
      Top = 64
      RepositoryItem = dmGlobal.luRptGrpType
      DataBinding.DataField = 'RPTTYPEGRP'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 145
    end
    object cxDBTextEdit3: TcxDBTextEdit [3]
      Left = 107
      Top = 91
      DataBinding.DataField = 'GENERATE_ROWNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Report Type'
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
      CaptionOptions.Text = 'Report Group Type'
      Parent = dxLayoutGroup1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Generate Row.'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 152
    Width = 494
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
    Top = 201
    Width = 494
  end
  inherited tabEditorData: TTabSet
    Top = 131
    Width = 494
  end
  inherited dsSubject: TDataSource
    DataSet = cdsRptType
  end
  object cdsRptType: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'RPTTYPE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryRptType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 24
    Top = 64
    object cdsRptTypeRPTTYPE: TStringField
      FieldName = 'RPTTYPE'
      Required = True
      Size = 10
    end
    object cdsRptTypeRPTTYPEGRP: TStringField
      FieldName = 'RPTTYPEGRP'
      Required = True
      Size = 10
    end
    object cdsRptTypeRTPTYPEDESC: TStringField
      FieldName = 'RTPTYPEDESC'
      Size = 150
    end
    object cdsRptTypeUSECHECKVAL: TBooleanField
      FieldName = 'USECHECKVAL'
    end
    object cdsRptTypeREPORT_ROWNO: TIntegerField
      FieldName = 'REPORT_ROWNO'
    end
    object cdsRptTypeGENERATE_ROWNO: TIntegerField
      FieldName = 'GENERATE_ROWNO'
    end
    object cdsRptTypeDFLTCONT_FORMAT: TStringField
      FieldName = 'DFLTCONT_FORMAT'
      Size = 100
    end
    object cdsRptTypeSTART_COL: TIntegerField
      FieldName = 'START_COL'
    end
    object cdsRptTypeLNNUM: TIntegerField
      FieldName = 'LNNUM'
    end
    object cdsRptTypeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRptTypeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRptTypeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRptTypeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRptTypeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRptTypeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRptTypeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRptTypeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRptTypeID: TLargeintField
      FieldName = 'ID'
    end
  end
end
