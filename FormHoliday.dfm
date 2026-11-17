inherited frmHoliday: TfrmHoliday
  Caption = 'Holiday'
  ClientHeight = 164
  ExplicitWidth = 535
  ExplicitHeight = 193
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Height = 74
    ExplicitHeight = 72
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 222
      Top = 10
      DataBinding.DataField = 'HOLDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 120
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 68
      Top = 37
      DataBinding.DataField = 'HOLDESCRIPTION'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 445
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 68
      Top = 10
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
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
    Top = 95
    ExplicitTop = 93
    inherited dbNavLog: TDBNavigator
      Hints.Strings = ()
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
    Top = 144
    ExplicitTop = 142
  end
  inherited tabEditorData: TTabSet
    Top = 74
    ExplicitTop = 72
  end
  inherited dsSubject: TDataSource
    DataSet = cdsHoliday
    Left = 384
    Top = 8
  end
  object cdsHoliday: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'HOLID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryHoliday'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsHolidayBeforePost
    OnNewRecord = cdsHolidayNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 456
    Top = 8
    object cdsHolidayHOLID: TLargeintField
      FieldName = 'HOLID'
      Required = True
    end
    object cdsHolidayMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsHolidayHOLDATE: TDateField
      FieldName = 'HOLDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsHolidayHOLDESCRIPTION: TStringField
      FieldName = 'HOLDESCRIPTION'
      Size = 100
    end
    object cdsHolidayMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsHolidayMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsHolidayAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsHolidayAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsHolidayUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsHolidayUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsHolidayNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsHolidayISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsHolidayID: TLargeintField
      FieldName = 'ID'
    end
  end
end
