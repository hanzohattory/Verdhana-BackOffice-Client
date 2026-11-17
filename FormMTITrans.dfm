inherited frmMTITrans: TfrmMTITrans
  Caption = 'MTI Transaction'
  ClientHeight = 446
  ClientWidth = 594
  ExplicitWidth = 610
  ExplicitHeight = 485
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 594
    Height = 356
    ExplicitWidth = 594
    ExplicitHeight = 356
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 74
      Top = 10
      DataBinding.DataField = 'TRANSCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 293
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [1]
      Left = 402
      Top = 10
      RepositoryItem = dmGlobal.luMTITransType
      DataBinding.DataField = 'TRANSTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo [2]
      Left = 74
      Top = 143
      DataBinding.DataField = 'SOURCEDATA'
      DataBinding.DataSource = dsSubject
      Properties.ScrollBars = ssBoth
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Height = 200
      Width = 508
    end
    object cxDBMemo2: TcxDBMemo [3]
      Left = 74
      Top = 37
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = dsSubject
      Properties.ScrollBars = ssBoth
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Height = 100
      Width = 508
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 293
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Source Data'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 449
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Description'
      Control = cxDBMemo2
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 508
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 377
    Width = 594
    ExplicitTop = 377
    ExplicitWidth = 594
    inherited dbNavLog: TDBNavigator
      Left = 480
      Hints.Strings = ()
      ExplicitLeft = 480
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 426
    Width = 594
    ExplicitTop = 426
    ExplicitWidth = 594
  end
  inherited tabEditorData: TTabSet
    Top = 356
    Width = 594
    ExplicitTop = 356
    ExplicitWidth = 594
  end
  inherited dsSubject: TDataSource
    DataSet = cdsMTITrans
    Left = 288
    Top = 160
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsMTITrans: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TRANSID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmOmgeo_qryMTITrans'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsMTITransBeforePost
    OnNewRecord = cdsMTITransNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 224
    Top = 232
    object cdsMTITransTRANSID: TIntegerField
      FieldName = 'TRANSID'
    end
    object cdsMTITransTRANSCODE: TStringField
      FieldName = 'TRANSCODE'
      Size = 50
    end
    object cdsMTITransDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object cdsMTITransTRANSTYPE: TStringField
      FieldName = 'TRANSTYPE'
      Size = 1
    end
    object cdsMTITransSOURCEDATA: TMemoField
      FieldName = 'SOURCEDATA'
      BlobType = ftMemo
    end
    object cdsMTITransMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTITransMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTITransAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTITransAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTITransUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTITransUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTITransNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTITransISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTITransID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsMTITransRecord: TNClientDataset
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsMTITransRecordIndex1'
        Fields = 'SEQID'
        Source = 'SEQID'
      end>
    IndexName = 'cdsMTITransRecordIndex1'
    Params = <
      item
        DataType = ftInteger
        Name = 'TRANSID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmOmgeo_qryMTITransRecord'
    RemoteServer = dmGlobal.dspConnection
    StoreDefs = True
    BeforePost = cdsMTITransRecordBeforePost
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 360
    Top = 232
    object cdsMTITransRecordTRANS_RECORD_ID: TIntegerField
      FieldName = 'TRANS_RECORD_ID'
    end
    object cdsMTITransRecordTRANSID: TIntegerField
      FieldName = 'TRANSID'
    end
    object cdsMTITransRecordRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object cdsMTITransRecordSEQID: TIntegerField
      FieldName = 'SEQID'
    end
    object cdsMTITransRecordMINREC: TIntegerField
      FieldName = 'MINREC'
    end
    object cdsMTITransRecordMAXREC: TIntegerField
      FieldName = 'MAXREC'
    end
    object cdsMTITransRecordNUM_FIELDS: TIntegerField
      FieldName = 'NUM_FIELDS'
    end
    object cdsMTITransRecordREQ_FIELDS: TIntegerField
      FieldName = 'REQ_FIELDS'
    end
    object cdsMTITransRecordMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsMTITransRecordMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsMTITransRecordAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsMTITransRecordAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsMTITransRecordUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsMTITransRecordUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsMTITransRecordNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsMTITransRecordISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsMTITransRecordID: TLargeintField
      FieldName = 'ID'
    end
  end
end
