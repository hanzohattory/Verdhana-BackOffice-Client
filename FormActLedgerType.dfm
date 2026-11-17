inherited frmActLedgerType: TfrmActLedgerType
  Caption = 'Account Ledger Type'
  ClientHeight = 327
  ClientWidth = 533
  ExplicitWidth = 539
  ExplicitHeight = 356
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 533
    Height = 237
    ExplicitWidth = 533
    ExplicitHeight = 237
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 108
      Top = 10
      DataBinding.DataField = 'ALTYPE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 108
      Top = 37
      DataBinding.DataField = 'ALDESCRIPTION'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 415
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [2]
      Left = 108
      Top = 64
      RepositoryItem = dmGlobal.luActLedgerTypeSystem
      DataBinding.DataField = 'ALSYSTEM'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 200
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [3]
      Left = 108
      Top = 91
      RepositoryItem = dmGlobal.luActLedgerTypeGL_SGL
      DataBinding.DataField = 'GL_SUBGL'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 200
    end
    object cxDBImageComboBox3: TcxDBImageComboBox [4]
      Left = 108
      Top = 118
      RepositoryItem = dmGlobal.luActLedgerTypeCashStock
      DataBinding.DataField = 'CASH_STOCK'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [5]
      Left = 108
      Top = 172
      Caption = 'Use for Settle'
      DataBinding.DataField = 'SETTLE'
      DataBinding.DataSource = dsSubject
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object luCategory: TcxDBImageComboBox [6]
      Left = 108
      Top = 145
      DataBinding.DataField = 'CATCODE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Balance'
          ImageIndex = 0
          Value = 'BA'
        end
        item
          Description = 'AR'
          Value = 'AR'
        end
        item
          Description = 'AP'
          Value = 'AP'
        end
        item
          Description = 'Interest'
          Value = 'IS'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 121
    end
    object cxDBCheckBox2: TcxDBCheckBox [7]
      Left = 235
      Top = 172
      Caption = 'Calc Interest'
      DataBinding.DataField = 'CALCINTEREST'
      DataBinding.DataSource = dsSubject
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object luInterest: TcxDBLookupComboBox [8]
      Left = 108
      Top = 199
      RepositoryItem = dmGlobal.luActLedgerType
      DataBinding.DataField = 'ALINSTBASKET'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 145
    end
    object cxDBImageComboBox4: TcxDBImageComboBox [9]
      Left = 272
      Top = 10
      RepositoryItem = dmGlobal.luActLedgerTypeOwner
      DataBinding.DataField = 'AL_OWNER'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 249
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Type'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Interface System'
      Parent = dxLayoutGroup1
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'GL / SubGL'
      Parent = dxLayoutGroup1
      Control = cxDBImageComboBox2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cash / Stock'
      Parent = dxLayoutGroup1
      Control = cxDBImageComboBox3
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = ' '
      Parent = dxLayoutControl1Group3
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Category'
      Parent = dxLayoutControl1Group2
      Control = luCategory
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group3
      Control = cxDBCheckBox2
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
      Index = 5
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Interest Result A/C'
      Parent = dxLayoutGroup1
      Control = luInterest
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'Owner'
      Parent = dxLayoutControl1Group4
      Control = cxDBImageComboBox4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 258
    Width = 533
    ExplicitTop = 258
    ExplicitWidth = 533
    inherited dbNavLog: TDBNavigator
      Left = 419
      Hints.Strings = ()
      ExplicitLeft = 419
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
    Top = 307
    Width = 533
    ExplicitTop = 307
    ExplicitWidth = 533
  end
  inherited tabEditorData: TTabSet
    Top = 237
    Width = 533
    ExplicitTop = 237
    ExplicitWidth = 533
  end
  inherited dsSubject: TDataSource
    DataSet = cdsActLedgerType
    Left = 376
    Top = 120
  end
  object cdsActLedgerType: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'ALTYPE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryActLedgerType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 376
    Top = 168
    object cdsActLedgerTypeALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsActLedgerTypeALDESCRIPTION: TStringField
      FieldName = 'ALDESCRIPTION'
      Size = 80
    end
    object cdsActLedgerTypeALSYSTEM: TStringField
      FieldName = 'ALSYSTEM'
      Size = 50
    end
    object cdsActLedgerTypeGL_SUBGL: TStringField
      FieldName = 'GL_SUBGL'
      Size = 1
    end
    object cdsActLedgerTypeCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Size = 1
    end
    object cdsActLedgerTypeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsActLedgerTypeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsActLedgerTypeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsActLedgerTypeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsActLedgerTypeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsActLedgerTypeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsActLedgerTypeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsActLedgerTypeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsActLedgerTypeID: TLargeintField
      FieldName = 'ID'
    end
    object cdsActLedgerTypeSETTLE: TStringField
      FieldName = 'SETTLE'
      Size = 1
    end
    object cdsActLedgerTypeBAL: TStringField
      FieldName = 'BAL'
      Size = 1
    end
    object cdsActLedgerTypeCATCODE: TStringField
      FieldName = 'CATCODE'
      Size = 10
    end
    object cdsActLedgerTypeCALCINTEREST: TStringField
      FieldName = 'CALCINTEREST'
      Size = 1
    end
    object cdsActLedgerTypeALINSTBASKET: TStringField
      FieldName = 'ALINSTBASKET'
      Size = 10
    end
    object cdsActLedgerTypeINITIAL_CODE: TStringField
      FieldName = 'INITIAL_CODE'
      Size = 5
    end
    object cdsActLedgerTypeCOMPANY_SETUP: TStringField
      FieldName = 'COMPANY_SETUP'
      Size = 1
    end
    object cdsActLedgerTypeCHANGES: TStringField
      FieldName = 'CHANGES'
      Size = 1
    end
    object cdsActLedgerTypeAL_OWNER: TStringField
      FieldName = 'AL_OWNER'
      Size = 1
    end
  end
end
