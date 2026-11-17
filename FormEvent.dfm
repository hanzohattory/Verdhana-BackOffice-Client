inherited frmEvent: TfrmEvent
  Caption = 'Event'
  ClientHeight = 270
  ClientWidth = 382
  ExplicitWidth = 388
  ExplicitHeight = 299
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 382
    Height = 180
    ExplicitWidth = 382
    ExplicitHeight = 180
    object cxDBTextEdit2: TcxDBTextEdit [0]
      Left = 73
      Top = 10
      DataBinding.DataField = 'EVNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 0
      Width = 237
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 73
      Top = 37
      DataBinding.DataField = 'EVSTARTDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 97
    end
    object cxDBDateEdit2: TcxDBDateEdit [2]
      Left = 225
      Top = 37
      DataBinding.DataField = 'EVENDDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 85
    end
    object cxDBTextEdit3: TcxDBTextEdit [3]
      Left = 73
      Top = 64
      DataBinding.DataField = 'PIC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 3
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo [4]
      Left = 73
      Top = 91
      DataBinding.DataField = 'EVDESCRIPTION'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 4
      Height = 48
      Width = 288
    end
    object luStatus: TcxDBImageComboBox [5]
      Left = 73
      Top = 145
      DataBinding.DataField = 'EVSTATUS'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Open'
          ImageIndex = 0
          Value = 'O'
        end
        item
          Description = 'Close'
          Value = 'C'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 114
    end
    object L2: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Event Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 237
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object L3: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Start Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object L4: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'End Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object L5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'PIC'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object L7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 48
      ControlOptions.OriginalWidth = 288
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object L9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Status'
      Control = luStatus
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 201
    Width = 382
    ExplicitTop = 201
    ExplicitWidth = 382
    inherited dbNavLog: TDBNavigator
      Left = 268
      Hints.Strings = ()
      ExplicitLeft = 268
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 250
    Width = 382
    ExplicitTop = 250
    ExplicitWidth = 382
  end
  inherited tabEditorData: TTabSet
    Top = 180
    Width = 382
    ExplicitTop = 180
    ExplicitWidth = 382
  end
  inherited dsSubject: TDataSource
    DataSet = cdsEvent
    Left = 232
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsEvent: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'EVID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryEvent'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsEventNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 312
    Top = 16
    object cdsEventEVID: TIntegerField
      FieldName = 'EVID'
      Required = True
    end
    object cdsEventEVNAME: TStringField
      FieldName = 'EVNAME'
      Size = 80
    end
    object cdsEventEVSTARTDATE: TDateField
      FieldName = 'EVSTARTDATE'
    end
    object cdsEventEVENDDATE: TDateField
      FieldName = 'EVENDDATE'
    end
    object cdsEventEVSTATUS: TStringField
      FieldName = 'EVSTATUS'
      Size = 5
    end
    object cdsEventPIC: TStringField
      FieldName = 'PIC'
      Size = 30
    end
    object cdsEventEVDESCRIPTION: TStringField
      FieldName = 'EVDESCRIPTION'
      Size = 50
    end
    object cdsEventMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEventMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEventAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEventAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEventUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEventUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEventNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEventISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEventID: TLargeintField
      FieldName = 'ID'
    end
  end
end
