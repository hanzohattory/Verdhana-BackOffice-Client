inherited frmMonthlyXE13Report: TfrmMonthlyXE13Report
  Caption = 'Monthly XE13 Report'
  ClientHeight = 189
  ClientWidth = 609
  ExplicitWidth = 625
  ExplicitHeight = 228
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 609
    Height = 99
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 39
      Top = 10
      TabStop = False
      DataBinding.DataField = 'NO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 37
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 91
      Top = 10
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'COL1'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Height = 21
      Width = 505
    end
    object edCol2: TcxDBTextEdit [2]
      Left = 39
      Top = 37
      AutoSize = False
      DataBinding.DataField = 'COL2'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Height = 21
      Width = 121
    end
    object edCol3: TcxDBTextEdit [3]
      Left = 195
      Top = 37
      AutoSize = False
      DataBinding.DataField = 'COL3'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 21
      Width = 121
    end
    object edCol4: TcxDBTextEdit [4]
      Left = 351
      Top = 37
      AutoSize = False
      DataBinding.DataField = 'COL4'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Height = 21
      Width = 121
    end
    object edCol5: TcxDBTextEdit [5]
      Left = 39
      Top = 64
      AutoSize = False
      DataBinding.DataField = 'COL5'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Height = 21
      Width = 121
    end
    object edCol6: TcxDBTextEdit [6]
      Left = 195
      Top = 64
      AutoSize = False
      DataBinding.DataField = 'COL6'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Height = 21
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'No'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 37
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 505
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Col 2'
      Control = edCol2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Col 3'
      Control = edCol3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Col 4'
      Control = edCol4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Col 5'
      Control = edCol5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Col 6'
      Control = edCol6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 120
    Width = 609
    inherited dbNavLog: TDBNavigator
      Left = 495
      Hints.Strings = ()
      ExplicitLeft = 495
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 169
    Width = 609
  end
  inherited tabEditorData: TTabSet
    Top = 99
    Width = 609
  end
  inherited dsSubject: TDataSource
    DataSet = cdsSubject
    Left = 536
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 536
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsSubject: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'idNo'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmReport_qryVD55MonthlyEditor'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsSubjectAfterOpen
    BeforePost = cdsSubjectBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 496
    Top = 16
    object cdsSubjectID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object cdsSubjectPERIOD: TStringField
      FieldName = 'PERIOD'
      Required = True
      Size = 10
    end
    object cdsSubjectNO: TIntegerField
      FieldName = 'NO'
    end
    object cdsSubjectLNUM: TStringField
      FieldName = 'LNUM'
      Size = 10
    end
    object cdsSubjectCOL1: TStringField
      FieldName = 'COL1'
      Size = 1000
    end
    object cdsSubjectCOL2: TStringField
      FieldName = 'COL2'
      Size = 1000
    end
    object cdsSubjectCOL3: TStringField
      FieldName = 'COL3'
      Size = 1000
    end
    object cdsSubjectCOL4: TStringField
      FieldName = 'COL4'
      Size = 1000
    end
    object cdsSubjectCOL5: TStringField
      FieldName = 'COL5'
      Size = 1000
    end
    object cdsSubjectCOL6: TStringField
      FieldName = 'COL6'
      Size = 1000
    end
    object cdsSubjectENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsSubjectVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
  end
end
