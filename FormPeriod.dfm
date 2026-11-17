inherited frmPeriod: TfrmPeriod
  Caption = 'Period'
  ClientHeight = 187
  ClientWidth = 524
  ExplicitWidth = 530
  ExplicitHeight = 216
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 524
    Height = 97
    ExplicitWidth = 524
    ExplicitHeight = 97
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 85
      Top = 10
      DataBinding.DataField = 'PERIODCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 100
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 260
      Top = 10
      DataBinding.DataField = 'PERIODNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 253
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 85
      Top = 37
      RepositoryItem = dmGlobal.luFiscalYear
      DataBinding.DataField = 'FISCALYEARID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 180
    end
    object cxDBDateEdit1: TcxDBDateEdit [3]
      Left = 85
      Top = 64
      DataBinding.DataField = 'STARTDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 100
    end
    object cxDBDateEdit2: TcxDBDateEdit [4]
      Left = 260
      Top = 64
      DataBinding.DataField = 'ENDDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 100
    end
    object cxDBCheckBox1: TcxDBCheckBox [5]
      Left = 387
      Top = 37
      RepositoryItem = dmGlobal.chkStandard
      DataBinding.DataField = 'SPECIAL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 29
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Period Name'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Fiscal Year'
      Parent = dxLayoutControl1Group2
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Start of Period'
      Parent = dxLayoutControl1Group3
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'End of Period'
      Parent = dxLayoutControl1Group3
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Opening/Closing Period'
      Parent = dxLayoutControl1Group2
      Control = cxDBCheckBox1
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
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
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
    Top = 118
    Width = 524
    ExplicitTop = 118
    ExplicitWidth = 524
    inherited dbNavLog: TDBNavigator
      Left = 410
      Hints.Strings = ()
      ExplicitLeft = 410
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
    Top = 167
    Width = 524
    ExplicitTop = 167
    ExplicitWidth = 524
  end
  inherited tabEditorData: TTabSet
    Top = 97
    Width = 524
    ExplicitTop = 97
    ExplicitWidth = 524
  end
  inherited dsSubject: TDataSource
    DataSet = cdsPeriod
    Left = 296
    Top = 104
  end
  object cdsPeriod: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'PERIODID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryPeriod'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsPeriodBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 368
    Top = 104
    object cdsPeriodPERIODID: TLargeintField
      FieldName = 'PERIODID'
      Required = True
    end
    object cdsPeriodPERIODCODE: TStringField
      FieldName = 'PERIODCODE'
      Required = True
      Size = 10
    end
    object cdsPeriodPERIODNAME: TStringField
      FieldName = 'PERIODNAME'
      Size = 80
    end
    object cdsPeriodSTARTDATE: TDateField
      FieldName = 'STARTDATE'
      Required = True
    end
    object cdsPeriodENDDATE: TDateField
      FieldName = 'ENDDATE'
      Required = True
    end
    object cdsPeriodFISCALYEARID: TLargeintField
      FieldName = 'FISCALYEARID'
      Required = True
    end
    object cdsPeriodSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsPeriodSPECIAL: TStringField
      FieldName = 'SPECIAL'
      Size = 1
    end
    object cdsPeriodMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsPeriodMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsPeriodAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsPeriodAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsPeriodUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsPeriodUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsPeriodNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsPeriodISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsPeriodID: TLargeintField
      FieldName = 'ID'
    end
  end
end
