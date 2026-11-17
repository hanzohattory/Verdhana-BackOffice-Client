inherited frmBranch: TfrmBranch
  Caption = 'Branch'
  ClientHeight = 294
  ClientWidth = 489
  ExplicitWidth = 495
  ExplicitHeight = 323
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 489
    Height = 204
    ExplicitWidth = 489
    ExplicitHeight = 204
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 65
      Top = 10
      DataBinding.DataField = 'BRANCHCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 224
      Top = 10
      DataBinding.DataField = 'BRANCHNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 252
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 65
      Top = 64
      DataBinding.DataField = 'ADDRESS1'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 411
    end
    object cxDBTextEdit4: TcxDBTextEdit [3]
      Left = 65
      Top = 91
      DataBinding.DataField = 'ADDRESS2'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 411
    end
    object cxDBTextEdit5: TcxDBTextEdit [4]
      Left = 65
      Top = 118
      DataBinding.DataField = 'ADDRESS3'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 411
    end
    object cxDBTextEdit6: TcxDBTextEdit [5]
      Left = 65
      Top = 145
      DataBinding.DataField = 'PHONE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 103
    end
    object cxDBTextEdit7: TcxDBTextEdit [6]
      Left = 228
      Top = 145
      DataBinding.DataField = 'FAX'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit [7]
      Left = 65
      Top = 37
      DataBinding.DataField = 'MANAGER'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 411
    end
    object cxDBTextEdit9: TcxDBTextEdit [8]
      Left = 65
      Top = 172
      DataBinding.DataField = 'REVSHARE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 103
    end
    object cxDBCheckBox1: TcxDBCheckBox [9]
      Left = 355
      Top = 172
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Sales Agent'
      DataBinding.DataField = 'SALESAGENT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [10]
      Left = 228
      Top = 172
      RepositoryItem = dmGlobal.luCPCenter
      DataBinding.DataField = 'CPID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 121
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
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Address'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 411
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = ' '
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 411
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = ' '
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 411
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Phone'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
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
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Manager'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 411
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Rev Share'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = ' '
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 81
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
      Index = 5
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'CP Center'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 225
    Width = 489
    ExplicitTop = 225
    ExplicitWidth = 489
    inherited dbNavLog: TDBNavigator
      Left = 375
      Hints.Strings = ()
      ExplicitLeft = 375
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 274
    Width = 489
    ExplicitTop = 274
    ExplicitWidth = 489
  end
  inherited tabEditorData: TTabSet
    Top = 204
    Width = 489
    ExplicitTop = 204
    ExplicitWidth = 489
  end
  inherited dsSubject: TDataSource
    DataSet = cdsBranch
    Left = 280
    Top = 224
  end
  object cdsBranch: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'BRANCHID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryBranch'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsBranchBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 216
    Top = 224
    object cdsBranchBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsBranchBRANCHCODE: TStringField
      FieldName = 'BRANCHCODE'
      Required = True
    end
    object cdsBranchBRANCHNAME: TStringField
      FieldName = 'BRANCHNAME'
      Size = 50
    end
    object cdsBranchADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Size = 100
    end
    object cdsBranchADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 100
    end
    object cdsBranchADDRESS3: TStringField
      FieldName = 'ADDRESS3'
      Size = 100
    end
    object cdsBranchPHONE: TStringField
      FieldName = 'PHONE'
      Size = 15
    end
    object cdsBranchFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsBranchMANAGER: TStringField
      FieldName = 'MANAGER'
      Size = 50
    end
    object cdsBranchSALESAGENT: TStringField
      FieldName = 'SALESAGENT'
      Size = 1
    end
    object cdsBranchREVSHARE: TFloatField
      FieldName = 'REVSHARE'
    end
    object cdsBranchCPCD: TStringField
      FieldName = 'CPCD'
    end
    object cdsBranchMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBranchMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBranchAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBranchAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBranchUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBranchUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBranchNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBranchISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBranchID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBranchCPID: TLargeintField
      FieldName = 'CPID'
    end
  end
end
