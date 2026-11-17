inherited frmReportGroupType: TfrmReportGroupType
  Caption = 'Report Group Type'
  ClientHeight = 190
  ClientWidth = 494
  ExplicitWidth = 500
  ExplicitHeight = 219
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 494
    Height = 100
    ExplicitLeft = 176
    ExplicitTop = 8
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 82
      Top = 10
      DataBinding.DataField = 'RPTTYPEGRP'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 241
      Top = 10
      DataBinding.DataField = 'RPTDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 240
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 82
      Top = 37
      DataBinding.DataField = 'FILENAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object edColumn: TcxDBSpinEdit [3]
      Left = 82
      Top = 64
      DataBinding.DataField = 'COUNTCOL'
      DataBinding.DataSource = dsSubject
      Properties.MaxValue = 11.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 60
    end
    object cxDBTextEdit4: TcxDBTextEdit [4]
      Left = 314
      Top = 64
      DataBinding.DataField = 'EXTFILE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [5]
      Left = 194
      Top = 64
      DataBinding.DataField = 'DELIMITER'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = '|'
          ImageIndex = 0
          Value = '|'
        end
        item
          Description = ','
          Value = ','
        end
        item
          Description = ';'
          Value = ';'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 40
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Report Group'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Name'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'File Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Count Column'
      Parent = dxLayoutControl1Group2
      Control = edColumn
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Ext. File Name'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Delimiter'
      Parent = dxLayoutControl1Group2
      Control = cxDBImageComboBox1
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
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 121
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
    Top = 170
    Width = 494
  end
  inherited tabEditorData: TTabSet
    Top = 100
    Width = 494
  end
  inherited dsSubject: TDataSource
    DataSet = cdsRptGrpType
    Left = 40
  end
  object cdsRptGrpType: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'RPTTYPEGRP'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryRptGrpType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 64
    object cdsRptGrpTypeRPTTYPEGRP: TStringField
      FieldName = 'RPTTYPEGRP'
      Required = True
      Size = 10
    end
    object cdsRptGrpTypeRPTDESC: TStringField
      FieldName = 'RPTDESC'
      Size = 50
    end
    object cdsRptGrpTypeCOUNTCOL: TIntegerField
      FieldName = 'COUNTCOL'
    end
    object cdsRptGrpTypeFILENAME: TStringField
      FieldName = 'FILENAME'
      Size = 50
    end
    object cdsRptGrpTypeEXTFILE: TStringField
      FieldName = 'EXTFILE'
      Size = 5
    end
    object cdsRptGrpTypeDELIMITER: TStringField
      FieldName = 'DELIMITER'
      Size = 1
    end
    object cdsRptGrpTypeDATEFORMAT: TStringField
      FieldName = 'DATEFORMAT'
    end
    object cdsRptGrpTypeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRptGrpTypeMODUI: TWideStringField
      FieldName = 'MODUI'
      FixedChar = True
      Size = 10
    end
    object cdsRptGrpTypeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRptGrpTypeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRptGrpTypeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRptGrpTypeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRptGrpTypeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRptGrpTypeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRptGrpTypeID: TLargeintField
      FieldName = 'ID'
    end
  end
end
