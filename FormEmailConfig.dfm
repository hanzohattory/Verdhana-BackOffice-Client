inherited frmEmailConfig: TfrmEmailConfig
  Caption = 'Email Configuration'
  ClientHeight = 493
  ClientWidth = 820
  ExplicitWidth = 836
  ExplicitHeight = 532
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 820
    Height = 403
    ExplicitWidth = 820
    ExplicitHeight = 481
    object cxDBTextEdit5: TcxDBTextEdit [0]
      Left = 78
      Top = 37
      DataBinding.DataField = 'EMAILTO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 714
    end
    object cxDBTextEdit6: TcxDBTextEdit [1]
      Left = 78
      Top = 64
      DataBinding.DataField = 'EMAILCC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 714
    end
    object cxDBTextEdit7: TcxDBTextEdit [2]
      Left = 78
      Top = 91
      DataBinding.DataField = 'EMAILBCC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 714
    end
    object cxDBTextEdit8: TcxDBTextEdit [3]
      Left = 78
      Top = 118
      DataBinding.DataField = 'EMAILSUBJECT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 714
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [4]
      Left = 490
      Top = 10
      RepositoryItem = dmGlobal.luContactUsage
      DataBinding.DataField = 'CUSGID'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 145
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [5]
      Left = 78
      Top = 10
      RepositoryItem = dmGlobal.luEmailTypes
      DataBinding.DataField = 'EMAILTYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 265
    end
    object cxDBMemo1: TcxDBMemo [6]
      Left = 10
      Top = 163
      DataBinding.DataField = 'EMAILMESSAGE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Height = 230
      Width = 800
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Email To'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 714
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Email CC'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 714
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Email BCC'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 714
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Email Subject'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 714
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      Visible = False
      CaptionOptions.Text = 'Default Contact Usage Type'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Email Type'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 265
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Message'
      CaptionOptions.Layout = clTop
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 278
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 7
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 424
    Width = 820
    ExplicitTop = 502
    ExplicitWidth = 820
    inherited btnOK: TcxButton
      Caption = 'OK'
    end
    inherited btnCancel: TcxButton
      Caption = 'Cancel'
    end
    inherited dbNavLog: TDBNavigator
      Left = 706
      Hints.Strings = ()
      ExplicitLeft = 706
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 473
    Width = 820
    ExplicitTop = 551
    ExplicitWidth = 820
  end
  inherited tabEditorData: TTabSet
    Top = 403
    Width = 820
    ExplicitTop = 481
    ExplicitWidth = 820
  end
  inherited dsSubject: TDataSource
    DataSet = frmEmailConfigList.cdsEmailDraft
    Left = 590
    Top = 202
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 112
    Top = 288
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
end
