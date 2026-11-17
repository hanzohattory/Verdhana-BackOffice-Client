inherited frmGlobalParam: TfrmGlobalParam
  Caption = 'Global Parameter'
  ClientHeight = 153
  ClientWidth = 448
  ExplicitWidth = 454
  ExplicitHeight = 182
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 448
    Height = 63
    ExplicitWidth = 447
    ExplicitHeight = 68
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 95
      Top = 10
      DataBinding.DataField = 'PRMNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 335
    end
    object edDate: TcxDBDateEdit [1]
      Left = 95
      Top = 37
      DataBinding.DataField = 'DATEVAL'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 335
    end
    object cxDBTimeEdit1: TcxDBTimeEdit [2]
      Left = 95
      Top = 64
      DataBinding.DataField = 'DATEVAL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 335
    end
    object edInteger: TcxDBCurrencyEdit [3]
      Left = 95
      Top = 91
      DataBinding.DataField = 'INTVAL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 335
    end
    object edFloat: TcxDBCurrencyEdit [4]
      Left = 95
      Top = 118
      DataBinding.DataField = 'FLOATVAL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 335
    end
    object cxDBTextEdit2: TcxDBTextEdit [5]
      Left = 95
      Top = 145
      DataBinding.DataField = 'STRVAL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 335
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Parameter Name'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 335
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object edDates: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Value'
      Control = edDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object edTimes: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Value'
      Control = cxDBTimeEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object edIntegers: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Value'
      Control = edInteger
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object edFloats: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Value'
      Control = edFloat
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object edStrings: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Value'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 335
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 84
    Width = 448
    ExplicitTop = 89
    ExplicitWidth = 447
    inherited dbNavLog: TDBNavigator
      Left = 334
      Hints.Strings = ()
      ExplicitLeft = 334
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 133
    Width = 448
    ExplicitTop = 138
    ExplicitWidth = 447
  end
  inherited tabEditorData: TTabSet
    Top = 63
    Width = 448
    ExplicitTop = 68
    ExplicitWidth = 447
  end
  inherited dsSubject: TDataSource
    DataSet = cdsGlobalParam
    Left = 384
    Top = 168
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 384
    Top = 216
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsGlobalParam: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'PRMID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryGlobalParam'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsGlobalParamAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 328
    Top = 168
    object cdsGlobalParamPRMID: TStringField
      FieldName = 'PRMID'
      Required = True
    end
    object cdsGlobalParamPRMNAME: TStringField
      FieldName = 'PRMNAME'
      Size = 50
    end
    object cdsGlobalParamPRMTY: TStringField
      FieldName = 'PRMTY'
      Size = 1
    end
    object cdsGlobalParamAPPTYPE: TStringField
      FieldName = 'APPTYPE'
      Size = 1
    end
    object cdsGlobalParamINTVAL: TIntegerField
      FieldName = 'INTVAL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsGlobalParamFLOATVAL: TFloatField
      FieldName = 'FLOATVAL'
      DisplayFormat = '#,##0.##;(#,##0.##);0.##'
    end
    object cdsGlobalParamSTRVAL: TStringField
      FieldName = 'STRVAL'
      Size = 250
    end
    object cdsGlobalParamDATEVAL: TDateTimeField
      FieldName = 'DATEVAL'
    end
    object cdsGlobalParamMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsGlobalParamMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsGlobalParamINSDA: TDateTimeField
      FieldName = 'INSDA'
    end
    object cdsGlobalParamINSUI: TStringField
      FieldName = 'INSUI'
      Size = 30
    end
    object cdsGlobalParamSHOW: TStringField
      FieldName = 'SHOW'
      Size = 1
    end
    object cdsGlobalParamEDIT: TStringField
      FieldName = 'EDIT'
      Size = 1
    end
    object cdsGlobalParamAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsGlobalParamAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsGlobalParamUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsGlobalParamUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsGlobalParamNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsGlobalParamISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsGlobalParamID: TLargeintField
      FieldName = 'ID'
    end
  end
end
