inherited frmCOAConfig: TfrmCOAConfig
  Caption = 'Char Of Account Configuration'
  ClientHeight = 190
  ClientWidth = 445
  ExplicitWidth = 451
  ExplicitHeight = 219
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 445
    Height = 100
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 75
      Top = 10
      TabStop = False
      DataBinding.DataField = 'paramID'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 93
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 75
      Top = 37
      TabStop = False
      DataBinding.DataField = 'paramName'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 190
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 75
      Top = 64
      RepositoryItem = dmGlobal.luGLAccountNo
      DataBinding.DataField = 'coa_id'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 86
    end
    object cxDBTextEdit3: TcxDBTextEdit [3]
      Left = 167
      Top = 64
      TabStop = False
      DataBinding.DataField = 'GLName'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 258
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Param ID'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Param Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 190
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'COA Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBTextEdit3'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 258
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 121
    Width = 445
    inherited dbNavLog: TDBNavigator
      Left = 331
      Hints.Strings = ()
      ExplicitLeft = 331
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 170
    Width = 445
  end
  inherited tabEditorData: TTabSet
    Top = 100
    Width = 445
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCOAConfig
    Left = 320
    Top = 8
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 360
    Top = 8
  end
  object cdsCOAConfig: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'paramID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAccounting_qryCOAConfig'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 280
    Top = 8
    object cdsCOAConfigparamID: TStringField
      FieldName = 'paramID'
      Required = True
      Size = 3
    end
    object cdsCOAConfigparamName: TStringField
      FieldName = 'paramName'
      Required = True
      Size = 60
    end
    object cdsCOAConfigcoa_id: TIntegerField
      FieldName = 'coa_id'
    end
    object cdsCOAConfigentrySystemDate: TDateField
      FieldName = 'entrySystemDate'
    end
    object cdsCOAConfigentryDate: TDateTimeField
      FieldName = 'entryDate'
    end
    object cdsCOAConfigentryUser: TStringField
      FieldName = 'entryUser'
      Size = 30
    end
    object cdsCOAConfigmodSystemDate: TDateField
      FieldName = 'modSystemDate'
    end
    object cdsCOAConfigmodDate: TDateTimeField
      FieldName = 'modDate'
    end
    object cdsCOAConfigmodUser: TStringField
      FieldName = 'modUser'
      Size = 30
    end
    object cdsCOAConfigGLCode: TStringField
      FieldKind = fkLookup
      FieldName = 'GLCode'
      LookupDataSet = dmLookup.cdsLuGLAccount
      LookupKeyFields = 'GLACCOUNTID'
      LookupResultField = 'GLACCOUNTCODE'
      KeyFields = 'coa_id'
      Lookup = True
    end
    object cdsCOAConfigGLName: TStringField
      FieldKind = fkLookup
      FieldName = 'GLName'
      LookupDataSet = dmLookup.cdsLuGLAccount
      LookupKeyFields = 'GLACCOUNTID'
      LookupResultField = 'GLACCOUNTNAME'
      KeyFields = 'coa_id'
      Size = 100
      Lookup = True
    end
  end
end
