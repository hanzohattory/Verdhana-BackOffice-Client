inherited frmCharge: TfrmCharge
  Caption = 'Charge'
  ClientHeight = 542
  ClientWidth = 511
  ExplicitWidth = 517
  ExplicitHeight = 571
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 511
    Height = 249
    Align = alTop
    ExplicitWidth = 511
    ExplicitHeight = 249
    object cbMarket: TcxDBLookupComboBox [0]
      Left = 79
      Top = 10
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Properties.OnChange = cxDBLookupComboBox1PropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 99
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 368
      Top = 10
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 122
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 79
      Top = 37
      DataBinding.DataField = 'CHARGE_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 411
    end
    object rgBasis: TcxDBRadioGroup [3]
      Left = 79
      Top = 91
      RepositoryItem = dmGlobal.rgChargeBasis
      DataBinding.DataField = 'BASIS'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Properties.OnEditValueChanged = rgBasisPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 6
      Height = 38
      Width = 276
    end
    object edRate: TcxDBTextEdit [4]
      Left = 79
      Top = 135
      DataBinding.DataField = 'RATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 120
    end
    object edAmount: TcxDBTextEdit [5]
      Left = 79
      Top = 162
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object edTable: TcxDBButtonEdit [6]
      Left = 79
      Top = 189
      DataBinding.DataField = 'CHARGE_TABLE_CODE'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edTablePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 9
      Width = 121
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [7]
      Left = 79
      Top = 216
      RepositoryItem = dmGlobal.luAccount
      DataBinding.DataField = 'ACCID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 121
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [8]
      Left = 271
      Top = 216
      RepositoryItem = dmGlobal.luActLedgerType
      DataBinding.DataField = 'ALTYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [9]
      Left = 79
      Top = 64
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Valid Buy'
      DataBinding.DataField = 'VALIDBUY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBCheckBox2: TcxDBCheckBox [10]
      Left = 206
      Top = 64
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Valid Sell'
      DataBinding.DataField = 'VALIDSELL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cbChargeCode: TcxDBLookupComboBox [11]
      Left = 214
      Top = 10
      RepositoryItem = dmGlobal.luChargeConfig
      DataBinding.DataField = 'CHARGE_CODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      OnEnter = cbChargeCodeEnter
      OnExit = cbChargeCodeExit
      Width = 99
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market'
      Parent = dxLayoutControl1Group1
      Control = cbMarket
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Basis'
      Parent = dxLayoutGroup1
      Control = rgBasis
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Rate'
      Parent = dxLayoutGroup1
      Control = edRate
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Amount'
      Parent = dxLayoutGroup1
      Control = edAmount
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Charge Table'
      Parent = dxLayoutGroup1
      Control = edTable
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Parent = dxLayoutControl1Group3
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Ledger Type'
      Parent = dxLayoutControl1Group3
      Control = cxDBLookupComboBox3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = ' '
      Parent = dxLayoutControl1Group2
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      Control = cxDBCheckBox2
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
      Index = 2
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutControl1Group1
      Control = cbChargeCode
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 473
    Width = 511
    ExplicitTop = 473
    ExplicitWidth = 511
    inherited dbNavLog: TDBNavigator
      Left = 397
      Hints.Strings = ()
      ExplicitLeft = 397
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
    Top = 522
    Width = 511
    ExplicitTop = 522
    ExplicitWidth = 511
  end
  inherited tabEditorData: TTabSet
    Top = 452
    Width = 511
    ExplicitTop = 452
    ExplicitWidth = 511
  end
  object cxPageControl1: TcxPageControl [4]
    Left = 0
    Top = 249
    Width = 511
    Height = 203
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabBoard
    Properties.CustomButtons.Buttons = <>
    ExplicitTop = 281
    ExplicitHeight = 171
    ClientRectBottom = 199
    ClientRectLeft = 4
    ClientRectRight = 507
    ClientRectTop = 24
    object tabBoard: TcxTabSheet
      Caption = 'Valid Board'
      ImageIndex = 0
      ExplicitHeight = 143
      object grdSource: TcxGrid
        Left = 0
        Top = 0
        Width = 220
        Height = 175
        Align = alLeft
        TabOrder = 0
        ExplicitHeight = 143
        object gvwSourceBoard: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsSourceBoard
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          object gvwSourceBoardDESC: TcxGridDBColumn
            Caption = 'Board'
            DataBinding.FieldName = 'DESC'
            Width = 182
          end
        end
        object grdSourceLevel1: TcxGridLevel
          GridView = gvwSourceBoard
        end
      end
      object dxLayoutControl3: TdxLayoutControl
        Left = 220
        Top = 0
        Width = 63
        Height = 175
        Align = alLeft
        BevelKind = bkTile
        TabOrder = 1
        ExplicitHeight = 143
        object btnAddBoard: TcxButton
          Left = 10
          Top = 72
          Width = 39
          Height = 25
          Hint = 'Add'
          Caption = '>'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnAddBoardClick
        end
        object btnRemoveBoard: TcxButton
          Left = 10
          Top = 103
          Width = 15
          Height = 25
          Hint = 'Remove'
          Caption = '<'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnRemoveBoardClick
        end
        object btnRemoveAllBoard: TcxButton
          Left = 10
          Top = 41
          Width = 39
          Height = 25
          Hint = 'Remove All'
          Caption = '<<'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnRemoveAllBoardClick
        end
        object btnAddAllBoard: TcxButton
          Left = 10
          Top = 10
          Width = 39
          Height = 25
          Hint = 'Add All'
          Caption = '>>'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnAddAllBoardClick
        end
        object dxLayoutGroup4: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem2: TdxLayoutItem
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup4
          Control = btnAddBoard
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem3: TdxLayoutItem
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup4
          Control = btnRemoveBoard
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem4: TdxLayoutItem
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup4
          Control = btnRemoveAllBoard
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem5: TdxLayoutItem
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup4
          Control = btnAddAllBoard
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
      object grdTarget: TcxGrid
        Left = 283
        Top = 0
        Width = 220
        Height = 175
        Align = alClient
        TabOrder = 2
        ExplicitHeight = 143
        object gvwTargetBoard: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsValidBoard
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          object gvwTargetBoardBOARDDESC: TcxGridDBColumn
            Caption = 'Board Selected'
            DataBinding.FieldName = 'BOARDDESC'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
          end
        end
        object grdTargetLevel1: TcxGridLevel
          GridView = gvwTargetBoard
        end
      end
    end
    object tabInstrument: TcxTabSheet
      Caption = 'Valid Intrument'
      ImageIndex = 1
      ExplicitHeight = 143
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 220
        Height = 175
        Align = alLeft
        TabOrder = 0
        ExplicitHeight = 143
        object gvwSourceInstr: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsSourceInstr
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          object gvwSourceInstrINSTYPEDESC: TcxGridDBColumn
            Caption = 'Intrument Type'
            DataBinding.FieldName = 'INSTYPEDESC'
            Width = 182
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwSourceInstr
        end
      end
      object dxLayoutControl4: TdxLayoutControl
        Left = 220
        Top = 0
        Width = 63
        Height = 175
        Align = alLeft
        BevelKind = bkTile
        TabOrder = 1
        ExplicitHeight = 143
        object btnAddInstrument: TcxButton
          Left = 10
          Top = 72
          Width = 39
          Height = 25
          Hint = 'Add'
          Caption = '>'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnAddInstrumentClick
        end
        object btnRemoveInstrument: TcxButton
          Left = 10
          Top = 103
          Width = 15
          Height = 25
          Hint = 'Remove'
          Caption = '<'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnRemoveInstrumentClick
        end
        object btnRemoveAllInstrument: TcxButton
          Left = 10
          Top = 41
          Width = 39
          Height = 25
          Hint = 'Remove All'
          Caption = '<<'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnRemoveAllInstrumentClick
        end
        object btnAddAllInstrument: TcxButton
          Left = 10
          Top = 10
          Width = 39
          Height = 25
          Hint = 'Add All'
          Caption = '>>'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnAddAllInstrumentClick
        end
        object dxLayoutGroup5: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem6: TdxLayoutItem
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup5
          Control = btnAddInstrument
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem7: TdxLayoutItem
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup5
          Control = btnRemoveInstrument
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem8: TdxLayoutItem
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup5
          Control = btnRemoveAllInstrument
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem9: TdxLayoutItem
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup5
          Control = btnAddAllInstrument
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
      object cxGrid2: TcxGrid
        Left = 283
        Top = 0
        Width = 220
        Height = 175
        Align = alClient
        TabOrder = 2
        ExplicitHeight = 143
        object gvwTargetInstr: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsValidInstr
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          object gvwTargetInstrINSTRUMENT_TYPE_CODE: TcxGridDBColumn
            Caption = 'Instrument Type Selected'
            DataBinding.FieldName = 'INSTRUMENT_TYPE_CODE'
            RepositoryItem = dmGlobal.luInstrumentType
            Width = 179
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = gvwTargetInstr
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCharge
    Left = 448
    Top = 168
  end
  object dsValidBoard: TDataSource
    DataSet = cdsChargeBoard
    Left = 448
    Top = 264
  end
  object dsValidInstr: TDataSource
    DataSet = cdsChargeInstrument
    Left = 448
    Top = 216
  end
  object dsSourceBoard: TDataSource
    DataSet = cdsSourceBoard
    Left = 448
    Top = 72
  end
  object cdsSourceBoard: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 72
    object cdsSourceBoardBOARD: TLargeintField
      DisplayLabel = 'ID'
      FieldName = 'BOARD'
      Required = True
    end
    object cdsSourceBoardDESC: TStringField
      FieldName = 'DESC'
      Size = 30
    end
  end
  object cdsSourceInstr: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 120
    object cdsSourceInstrINSTYPECODE: TStringField
      FieldName = 'INSTYPECODE'
      Required = True
      Size = 10
    end
    object cdsSourceInstrINSTYPEDESC: TStringField
      FieldName = 'INSTYPEDESC'
      Size = 30
    end
  end
  object dsSourceInstr: TDataSource
    DataSet = cdsSourceInstr
    Left = 448
    Top = 120
  end
  object cdsCharge: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CHARGE_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryCharge'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsChargeNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 344
    Top = 168
    object cdsChargeCHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsChargeCHARGE_CODE: TStringField
      FieldName = 'CHARGE_CODE'
      Required = True
    end
    object cdsChargeMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsChargeCHARGE_TYPE: TStringField
      FieldName = 'CHARGE_TYPE'
    end
    object cdsChargeCHARGE_DESC: TStringField
      FieldName = 'CHARGE_DESC'
      Size = 50
    end
    object cdsChargeBASIS: TStringField
      FieldName = 'BASIS'
      Size = 1
    end
    object cdsChargeRATE: TFloatField
      FieldName = 'RATE'
      DisplayFormat = '#,##0.00000'
    end
    object cdsChargeRATE_SOURCE: TStringField
      FieldName = 'RATE_SOURCE'
      Size = 2
    end
    object cdsChargeAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'
    end
    object cdsChargeCHARGE_TABLE_ID: TLargeintField
      FieldName = 'CHARGE_TABLE_ID'
    end
    object cdsChargeVALIDBUY: TIntegerField
      FieldName = 'VALIDBUY'
    end
    object cdsChargeVALIDSELL: TIntegerField
      FieldName = 'VALIDSELL'
    end
    object cdsChargeDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsChargeGLCD: TStringField
      FieldName = 'GLCD'
      Size = 30
    end
    object cdsChargeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsChargeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsChargeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsChargeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsChargeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsChargeID: TLargeintField
      FieldName = 'ID'
    end
    object cdsChargeqryChargeIntrument: TDataSetField
      FieldName = 'qryChargeIntrument'
    end
    object cdsChargeqryChargeBoard: TDataSetField
      FieldName = 'qryChargeBoard'
    end
    object cdsChargeCCY: TStringField
      FieldKind = fkLookup
      FieldName = 'CCY'
      LookupDataSet = dmLookup.cdsLuMarket
      LookupKeyFields = 'MARKETCODE'
      LookupResultField = 'CCY'
      KeyFields = 'MARKETCODE'
      Size = 5
      Lookup = True
    end
    object cdsChargeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsChargeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsChargeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsChargeCHARGE_TABLE_CODE: TStringField
      FieldKind = fkLookup
      FieldName = 'CHARGE_TABLE_CODE'
      LookupDataSet = dmLookup.cdsLuChargeTableH
      LookupKeyFields = 'CHARGE_TABLE_ID'
      LookupResultField = 'CHARGE_TABLE_CODE'
      KeyFields = 'CHARGE_TABLE_ID'
      Size = 10
      Lookup = True
    end
    object cdsChargeACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsChargeALTYPE: TStringField
      FieldName = 'ALTYPE'
      Size = 10
    end
  end
  object cdsChargeBoard: TNClientDataset
    Aggregates = <>
    DataSetField = cdsChargeqryChargeBoard
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 344
    Top = 264
    object cdsChargeBoardCHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsChargeBoardBOARDID: TLargeintField
      FieldName = 'BOARDID'
      Required = True
    end
    object cdsChargeBoardMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsChargeBoardMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsChargeBoardAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsChargeBoardAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsChargeBoardISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsChargeBoardID: TLargeintField
      FieldName = 'ID'
    end
    object cdsChargeBoardBOARDDESC: TStringField
      FieldKind = fkLookup
      FieldName = 'BOARDDESC'
      LookupDataSet = dmLookup.cdsLuBoard
      LookupKeyFields = 'BOARDID'
      LookupResultField = 'BOARDDESC'
      KeyFields = 'BOARDID'
      Size = 30
      Lookup = True
    end
  end
  object cdsChargeInstrument: TNClientDataset
    Aggregates = <>
    DataSetField = cdsChargeqryChargeIntrument
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 344
    Top = 216
    object cdsChargeInstrumentCHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsChargeInstrumentINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsChargeInstrumentMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsChargeInstrumentMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsChargeInstrumentAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsChargeInstrumentAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsChargeInstrumentISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsChargeInstrumentID: TLargeintField
      FieldName = 'ID'
    end
  end
end
