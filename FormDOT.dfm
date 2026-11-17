inherited frmDOT: TfrmDOT
  Caption = 'Blacklist People & Organization'
  ClientHeight = 471
  ClientWidth = 594
  ExplicitWidth = 600
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 594
    Height = 381
    ExplicitWidth = 594
    ExplicitHeight = 381
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 80
      Top = 10
      DataBinding.DataField = 'REAL_NAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 80
      Top = 37
      DataBinding.DataField = 'ALIAS_NAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 80
      Top = 64
      DataBinding.DataField = 'POB'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 329
    end
    object cxDBDateEdit1: TcxDBDateEdit [3]
      Left = 483
      Top = 64
      DataBinding.DataField = 'DOB'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 100
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [4]
      Left = 80
      Top = 91
      RepositoryItem = dmGlobal.luNationality
      DataBinding.DataField = 'NATIONALITY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 145
    end
    object cxDBMemo1: TcxDBMemo [5]
      Left = 80
      Top = 118
      DataBinding.DataField = 'ADDRESS'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Height = 60
      Width = 502
    end
    object cxDBTextEdit4: TcxDBTextEdit [6]
      Left = 80
      Top = 184
      DataBinding.DataField = 'IDCARD_NO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxDBMemo2: TcxDBMemo [7]
      Left = 80
      Top = 211
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Height = 120
      Width = 185
    end
    object cxDBDateEdit2: TcxDBDateEdit [8]
      Left = 80
      Top = 337
      DataBinding.DataField = 'VALID_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 100
    end
    object cxDBDateEdit3: TcxDBDateEdit [9]
      Left = 239
      Top = 337
      DataBinding.DataField = 'EXP_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 100
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Real Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Alias Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Place Of Birth'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Date Of Birth'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Nationality'
      Parent = dxLayoutGroup1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Address'
      Parent = dxLayoutGroup1
      Control = cxDBMemo1
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'ID Card No.'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 5
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
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBMemo2
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'Valid Date'
      Parent = dxLayoutControl1Group2
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'Exp. Date'
      Parent = dxLayoutControl1Group2
      Control = cxDBDateEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 402
    Width = 594
    ExplicitTop = 402
    ExplicitWidth = 594
    inherited dbNavLog: TDBNavigator
      Left = 480
      Hints.Strings = ()
      ExplicitLeft = 480
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
    Top = 451
    Width = 594
    ExplicitTop = 451
    ExplicitWidth = 594
  end
  inherited tabEditorData: TTabSet
    Top = 381
    Width = 594
    ExplicitTop = 381
    ExplicitWidth = 594
  end
  inherited dsSubject: TDataSource
    DataSet = cdsDOT
    Left = 352
    Top = 112
  end
  object cdsDOT: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'DOT_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryDOT'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 296
    Top = 112
    object cdsDOTDOT_ID: TIntegerField
      FieldName = 'DOT_ID'
    end
    object cdsDOTREAL_NAME: TStringField
      FieldName = 'REAL_NAME'
      Size = 100
    end
    object cdsDOTALIAS_NAME: TStringField
      FieldName = 'ALIAS_NAME'
      Size = 300
    end
    object cdsDOTPOB: TStringField
      FieldName = 'POB'
      Size = 100
    end
    object cdsDOTDOB: TDateField
      FieldName = 'DOB'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDOTNATIONALITY: TStringField
      FieldName = 'NATIONALITY'
      Size = 5
    end
    object cdsDOTADDRESS: TMemoField
      FieldName = 'ADDRESS'
      BlobType = ftMemo
    end
    object cdsDOTIDCARD_NO: TStringField
      FieldName = 'IDCARD_NO'
      Size = 30
    end
    object cdsDOTDESCRIPTION: TMemoField
      FieldName = 'DESCRIPTION'
      BlobType = ftMemo
    end
    object cdsDOTVALID_DATE: TDateField
      FieldName = 'VALID_DATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDOTEXP_DATE: TDateField
      FieldName = 'EXP_DATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDOTSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsDOTMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDOTMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDOTAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDOTAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDOTUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsDOTUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsDOTNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsDOTISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDOTID: TLargeintField
      FieldName = 'ID'
    end
  end
end
