inherited frmBoard: TfrmBoard
  Caption = 'Board'
  ClientHeight = 242
  ClientWidth = 489
  ExplicitWidth = 495
  ExplicitHeight = 271
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 489
    Height = 152
    ExplicitWidth = 489
    ExplicitHeight = 176
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 119
      Top = 10
      DataBinding.DataField = 'BOARDCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [1]
      Left = 119
      Top = 37
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 119
      Top = 64
      DataBinding.DataField = 'BOARDDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 356
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [3]
      Left = 119
      Top = 91
      RepositoryItem = dmGlobal.luBoardCounterPartType
      DataBinding.DataField = 'CPTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [4]
      Left = 119
      Top = 118
      RepositoryItem = dmGlobal.luAccount
      DataBinding.DataField = 'CPVALUE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [5]
      Left = 246
      Top = 37
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Market Transaction'
      DataBinding.DataField = 'MARKET'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Counter Part type'
      Parent = dxLayoutGroup1
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Counter Part Account'
      Parent = dxLayoutGroup1
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 173
    Width = 489
    ExplicitTop = 197
    ExplicitWidth = 489
    inherited dbNavLog: TDBNavigator
      Left = 375
      Hints.Strings = ()
      ExplicitLeft = 375
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
    Top = 222
    Width = 489
    ExplicitTop = 246
    ExplicitWidth = 489
  end
  inherited tabEditorData: TTabSet
    Top = 152
    Width = 489
    ExplicitTop = 176
    ExplicitWidth = 489
  end
  inherited dsSubject: TDataSource
    DataSet = cdsBoard
    Left = 296
    Top = 104
  end
  object cdsBoard: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'BOARDID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryBoard'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsBoardBeforePost
    OnNewRecord = cdsBoardNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 368
    Top = 104
    object cdsBoardBOARDID: TLargeintField
      FieldName = 'BOARDID'
      Required = True
    end
    object cdsBoardBOARDCODE: TStringField
      FieldName = 'BOARDCODE'
      Required = True
      Size = 10
    end
    object cdsBoardMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsBoardBOARDDESC: TStringField
      FieldName = 'BOARDDESC'
      Size = 30
    end
    object cdsBoardGLCD: TStringField
      FieldName = 'GLCD'
      Size = 30
    end
    object cdsBoardMARKET: TStringField
      FieldName = 'MARKET'
      Size = 1
    end
    object cdsBoardDUEBUYSTOCK: TIntegerField
      FieldName = 'DUEBUYSTOCK'
    end
    object cdsBoardDUESELLSTOCK: TIntegerField
      FieldName = 'DUESELLSTOCK'
    end
    object cdsBoardDUEBUYCASH: TIntegerField
      FieldName = 'DUEBUYCASH'
    end
    object cdsBoardDUESELLCASH: TIntegerField
      FieldName = 'DUESELLCASH'
    end
    object cdsBoardMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBoardMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBoardAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBoardAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBoardISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBoardID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBoardCPTYPE: TStringField
      FieldName = 'CPTYPE'
      Size = 5
    end
    object cdsBoardCPVALUE: TIntegerField
      FieldName = 'CPVALUE'
    end
  end
end
