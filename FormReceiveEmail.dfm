inherited frmReceiveEmail: TfrmReceiveEmail
  Caption = 'Receive Email'
  ClientHeight = 404
  ClientWidth = 803
  ExplicitWidth = 809
  ExplicitHeight = 433
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 803
    Height = 314
    ExplicitWidth = 476
    ExplicitHeight = 247
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 81
      Top = 10
      DataBinding.DataField = 'EDATETIME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 176
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 81
      Top = 37
      DataBinding.DataField = 'ESUBJECT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 710
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 81
      Top = 64
      DataBinding.DataField = 'EFROMADDRESS'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 710
    end
    object cxDBMemo1: TcxDBMemo [3]
      Left = 81
      Top = 91
      DataBinding.DataField = 'EBODY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Properties.ScrollBars = ssBoth
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Height = 182
      Width = 710
    end
    object cxDBDateEdit2: TcxDBDateEdit [4]
      Left = 81
      Top = 279
      DataBinding.DataField = 'EDATETIMEMAIL'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 176
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 176
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Subject'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 710
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'From Address'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Message'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 182
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Email Time'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 176
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 335
    Width = 803
    ExplicitTop = 268
    ExplicitWidth = 476
    inherited dbNavLog: TDBNavigator
      Left = 689
      Hints.Strings = ()
      ExplicitLeft = 689
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 384
    Width = 803
    ExplicitTop = 317
    ExplicitWidth = 476
  end
  inherited tabEditorData: TTabSet
    Top = 314
    Width = 803
    ExplicitTop = 247
    ExplicitWidth = 476
  end
  inherited dsSubject: TDataSource
    DataSet = cdsReceiveEmail
    Left = 344
    Top = 104
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 344
    Top = 152
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsReceiveEmail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'MSGID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryReceiveEmail'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 416
    Top = 104
    object cdsReceiveEmailEDATETIME: TDateTimeField
      FieldName = 'EDATETIME'
    end
    object cdsReceiveEmailESUBJECT: TStringField
      FieldName = 'ESUBJECT'
      Size = 255
    end
    object cdsReceiveEmailEFROMADDRESS: TStringField
      FieldName = 'EFROMADDRESS'
      Size = 255
    end
    object cdsReceiveEmailEBODY: TMemoField
      FieldName = 'EBODY'
      BlobType = ftMemo
    end
    object cdsReceiveEmailEMSGID: TStringField
      FieldName = 'EMSGID'
      Required = True
      Size = 255
    end
    object cdsReceiveEmailEDATETIMEMAIL: TDateTimeField
      FieldName = 'EDATETIMEMAIL'
    end
  end
end
