inherited frmStockHaircut: TfrmStockHaircut
  Caption = 'Stock Haircut'
  ClientHeight = 191
  ClientWidth = 400
  ExplicitWidth = 406
  ExplicitHeight = 220
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 400
    Height = 101
    ExplicitWidth = 400
    ExplicitHeight = 101
    object cbMarket: TcxDBLookupComboBox [0]
      Left = 75
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
      Width = 121
    end
    object cbStock: TcxDBLookupComboBox [1]
      Left = 268
      Top = 10
      RepositoryItem = dmGlobal.luInstrument
      DataBinding.DataField = 'INSTRUMENT_ID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      OnEnter = cbStockEnter
      OnExit = cbStockExit
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit [2]
      Left = 75
      Top = 37
      DataBinding.DataField = 'HCUTDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [3]
      Left = 268
      Top = 37
      DataBinding.DataField = 'HCUTTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'KPEI'
          ImageIndex = 0
          Value = 'K'
        end
        item
          Description = 'MKBD'
          Value = 'M'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit [4]
      Left = 75
      Top = 64
      DataBinding.DataField = 'HCUTPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 314
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Market'
      Control = cbMarket
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Stock'
      Control = cbStock
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Haircut Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Haircut Type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Haircut (%)'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 122
    Width = 400
    ExplicitTop = 122
    ExplicitWidth = 400
    inherited dbNavLog: TDBNavigator
      Left = 286
      Hints.Strings = ()
      ExplicitLeft = 286
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 171
    Width = 400
    ExplicitTop = 171
    ExplicitWidth = 400
  end
  inherited tabEditorData: TTabSet
    Top = 101
    Width = 400
    ExplicitTop = 101
    ExplicitWidth = 400
  end
  inherited dsSubject: TDataSource
    DataSet = cdsHaircut
    Left = 280
    Top = 80
  end
  object cdsHaircut: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'HCUTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'INSTRUMENT_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryHaircut'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsHaircutNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 208
    Top = 80
    object cdsHaircutINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
      OnChange = cdsHaircutINSTRUMENT_IDChange
    end
    object cdsHaircutINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsHaircutLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsHaircutMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsHaircutINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsHaircutHCUTDATE: TDateTimeField
      FieldName = 'HCUTDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsHaircutHCUTTYPE: TStringField
      FieldName = 'HCUTTYPE'
    end
    object cdsHaircutHCUTPRICE: TFloatField
      FieldName = 'HCUTPRICE'
    end
    object cdsHaircutMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsHaircutMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsHaircutAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsHaircutAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsHaircutISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsHaircutID: TLargeintField
      FieldName = 'ID'
    end
  end
end
