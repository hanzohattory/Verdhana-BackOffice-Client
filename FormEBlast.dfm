inherited frmEBlast: TfrmEBlast
  Caption = 'Email Blast Config'
  ClientHeight = 470
  ClientWidth = 812
  ExplicitWidth = 818
  ExplicitHeight = 499
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 812
    Height = 380
    ExplicitTop = -6
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 84
      Top = 37
      DataBinding.DataField = 'EMAILSUBJECT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 227
    end
    object cxDBMemo1: TcxDBMemo [1]
      Left = 84
      Top = 64
      DataBinding.DataField = 'EMAILMESSAGE'
      DataBinding.DataSource = dsSubject
      Properties.ScrollBars = ssBoth
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Height = 277
      Width = 717
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [2]
      Left = 84
      Top = 347
      DataBinding.DataField = 'EMAIL_OBJECT_FILENAME'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 227
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 84
      Top = 10
      DataBinding.DataField = 'EMAILTYPE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 227
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Email Subject'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 227
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Email Message'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 277
      ControlOptions.OriginalWidth = 717
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'File Name'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 227
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Email Type'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 227
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 401
    Width = 812
    inherited dbNavLog: TDBNavigator
      Left = 698
      Hints.Strings = ()
      ExplicitLeft = 698
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 450
    Width = 812
  end
  inherited tabEditorData: TTabSet
    Top = 380
    Width = 812
  end
  inherited dsSubject: TDataSource
    DataSet = cdsEBlast
    Left = 456
    Top = 200
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 456
    Top = 248
  end
  object cdsEBlast: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmReport_qryEBlast'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 384
    Top = 200
    object cdsEBlastEBLAST_ID: TLargeintField
      FieldName = 'EBLAST_ID'
      Required = True
    end
    object cdsEBlastEMAILTYPE: TStringField
      FieldName = 'EMAILTYPE'
      Size = 100
    end
    object cdsEBlastEMAILSUBJECT: TStringField
      FieldName = 'EMAILSUBJECT'
      Size = 500
    end
    object cdsEBlastEMAILMESSAGE: TMemoField
      FieldName = 'EMAILMESSAGE'
      BlobType = ftMemo
    end
    object cdsEBlastEMAIL_OBJECT_FILENAME: TStringField
      FieldName = 'EMAIL_OBJECT_FILENAME'
      Size = 100
    end
    object cdsEBlastEMAIL_OBJECT_FILE: TBlobField
      FieldName = 'EMAIL_OBJECT_FILE'
    end
    object cdsEBlastMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEBlastMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEBlastAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEBlastAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEBlastUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEBlastUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEBlastNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEBlastISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEBlastID: TLargeintField
      FieldName = 'ID'
    end
  end
  object odDocs: TOpenDialog
    Left = 453
    Top = 141
  end
end
