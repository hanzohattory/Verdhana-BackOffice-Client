inherited frmBusinessLine: TfrmBusinessLine
  Caption = 'Business Line'
  ClientHeight = 214
  ClientWidth = 388
  ExplicitWidth = 394
  ExplicitHeight = 243
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 388
    Height = 124
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 86
      Top = 10
      DataBinding.DataField = 'BUSSLINE_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 86
      Top = 37
      DataBinding.DataField = 'BUSSINESS_NAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 290
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [2]
      Left = 86
      Top = 64
      DataBinding.DataField = 'BTAX'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [3]
      Left = 255
      Top = 64
      DataBinding.DataField = 'STAX'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [4]
      Left = 86
      Top = 91
      RepositoryItem = dmGlobal.luRisk
      DataBinding.DataField = 'RISK'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Business Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Business Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Buy Tax'
      Parent = dxLayoutControl1Group1
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sell Tax'
      Parent = dxLayoutControl1Group1
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Business Risk'
      Parent = dxLayoutGroup1
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
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
    Top = 145
    Width = 388
    inherited dbNavLog: TDBNavigator
      Left = 274
      Hints.Strings = ()
      ExplicitLeft = 274
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
    Top = 194
    Width = 388
  end
  inherited tabEditorData: TTabSet
    Top = 124
    Width = 388
  end
  inherited dsSubject: TDataSource
    DataSet = cdsBusinessLine
  end
  object cdsBusinessLine: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'BUSSLINE_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryBusinessLine'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsBusinessLineBeforePost
    OnNewRecord = cdsBusinessLineNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 94
    Top = 18
    object cdsBusinessLineBUSSLINE_ID: TIntegerField
      FieldName = 'BUSSLINE_ID'
      Required = True
    end
    object cdsBusinessLineBUSSINESS_NAME: TStringField
      FieldName = 'BUSSINESS_NAME'
      Size = 50
    end
    object cdsBusinessLineBTAX: TFloatField
      FieldName = 'BTAX'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsBusinessLineSTAX: TFloatField
      FieldName = 'STAX'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsBusinessLineMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBusinessLineMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBusinessLineAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBusinessLineAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBusinessLineUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBusinessLineUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBusinessLineNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBusinessLineISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBusinessLineID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBusinessLineBUSSLINE_CODE: TStringField
      FieldName = 'BUSSLINE_CODE'
      Required = True
      Size = 10
    end
    object cdsBusinessLineRISK: TStringField
      FieldName = 'RISK'
      Size = 1
    end
  end
end
