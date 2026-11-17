inherited frmSalesAgent: TfrmSalesAgent
  Caption = 'Sales Agent'
  ClientHeight = 339
  ClientWidth = 524
  ExplicitWidth = 530
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 524
    Height = 249
    ExplicitWidth = 524
    ExplicitHeight = 230
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 78
      Top = 10
      DataBinding.DataField = 'AGENTCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 261
      Top = 10
      DataBinding.DataField = 'AGENTNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 252
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 78
      Top = 37
      RepositoryItem = dmGlobal.luBranch
      DataBinding.DataField = 'BRANCHID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [3]
      Left = 78
      Top = 64
      DataBinding.DataField = 'ADDRESS1'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 435
    end
    object cxDBTextEdit4: TcxDBTextEdit [4]
      Left = 78
      Top = 91
      DataBinding.DataField = 'ADDRESS2'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 435
    end
    object cxDBTextEdit5: TcxDBTextEdit [5]
      Left = 78
      Top = 118
      DataBinding.DataField = 'ADDRESS3'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 435
    end
    object cxDBTextEdit6: TcxDBTextEdit [6]
      Left = 78
      Top = 145
      DataBinding.DataField = 'PHONE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit [7]
      Left = 261
      Top = 145
      DataBinding.DataField = 'FAX'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit [8]
      Left = 78
      Top = 172
      DataBinding.DataField = 'MOBILEPHONE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBTextEdit9: TcxDBTextEdit [9]
      Left = 78
      Top = 199
      DataBinding.DataField = 'IDNUMBER'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [10]
      Left = 261
      Top = 37
      RepositoryItem = dmGlobal.luCPCenter
      DataBinding.DataField = 'CPID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 145
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 252
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Branch'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Address'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 435
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = ' '
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 435
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = ' '
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 435
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Phone'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Fax'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Mobile Phone'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'ID Number'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 7
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
      Index = 5
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Cost Profit'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 270
    Width = 524
    ExplicitTop = 251
    ExplicitWidth = 524
    inherited dbNavLog: TDBNavigator
      Left = 410
      Hints.Strings = ()
      ExplicitLeft = 410
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 319
    Width = 524
    ExplicitTop = 300
    ExplicitWidth = 524
  end
  inherited tabEditorData: TTabSet
    Top = 249
    Width = 524
    ExplicitTop = 230
    ExplicitWidth = 524
  end
  inherited dsSubject: TDataSource
    DataSet = cdsSalesAgent
    Left = 448
  end
  object cdsSalesAgent: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'AGENTID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qrySalesAgent'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsSalesAgentBeforePost
    OnNewRecord = cdsSalesAgentNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 448
    Top = 64
    object cdsSalesAgentAGENTID: TLargeintField
      FieldName = 'AGENTID'
      Required = True
    end
    object cdsSalesAgentAGENTCODE: TStringField
      FieldName = 'AGENTCODE'
      Required = True
    end
    object cdsSalesAgentAGENTNAME: TStringField
      FieldName = 'AGENTNAME'
      Size = 50
    end
    object cdsSalesAgentBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsSalesAgentADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Size = 100
    end
    object cdsSalesAgentADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 100
    end
    object cdsSalesAgentADDRESS3: TStringField
      FieldName = 'ADDRESS3'
      Size = 100
    end
    object cdsSalesAgentPHONE: TStringField
      FieldName = 'PHONE'
      Size = 15
    end
    object cdsSalesAgentMOBILEPHONE: TStringField
      FieldName = 'MOBILEPHONE'
      Size = 15
    end
    object cdsSalesAgentFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsSalesAgentIDNUMBER: TStringField
      FieldName = 'IDNUMBER'
      Size = 50
    end
    object cdsSalesAgentMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSalesAgentMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSalesAgentAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSalesAgentAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSalesAgentUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsSalesAgentUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsSalesAgentNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsSalesAgentISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSalesAgentID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSalesAgentCPID: TLargeintField
      FieldName = 'CPID'
    end
  end
end
