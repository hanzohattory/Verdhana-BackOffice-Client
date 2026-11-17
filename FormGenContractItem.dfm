inherited frmGenContractItem: TfrmGenContractItem
  Caption = 'Generate Contract'
  ClientHeight = 447
  ExplicitHeight = 476
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Height = 121
    Align = alTop
    ExplicitHeight = 121
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 43
      Top = 10
      DataBinding.DataField = 'PROCESS_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo [1]
      Left = 43
      Top = 37
      DataBinding.DataField = 'NOTES'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Height = 68
      Width = 470
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
      CaptionOptions.Text = 'Notes'
      Parent = dxLayoutGroup1
      Control = cxDBMemo1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 378
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
  end
  inherited StatusBar: TdxStatusBar
    Top = 427
  end
  inherited tabEditorData: TTabSet
    Top = 357
  end
  object dxLayoutControl3: TdxLayoutControl [4]
    Left = 233
    Top = 121
    Width = 63
    Height = 236
    Align = alLeft
    BevelKind = bkTile
    TabOrder = 4
    ExplicitLeft = 220
    ExplicitTop = 0
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
  object grdSource: TcxGrid [5]
    Left = 0
    Top = 121
    Width = 233
    Height = 236
    Align = alLeft
    TabOrder = 5
    ExplicitLeft = 6
    ExplicitTop = 115
    object gvwSource: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSource
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
      object gvwSourceCONCODE: TcxGridDBColumn
        Caption = 'Contract Code'
        DataBinding.FieldName = 'CONCODE'
      end
    end
    object grdSourceLevel1: TcxGridLevel
      GridView = gvwSource
    end
  end
  object grdTarget: TcxGrid [6]
    Left = 296
    Top = 121
    Width = 233
    Height = 236
    Align = alClient
    TabOrder = 6
    ExplicitLeft = 283
    ExplicitTop = 0
    ExplicitWidth = 220
    ExplicitHeight = 143
    object gvwTarget: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsTarget
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
      object gvwTargetCONCODE: TcxGridDBColumn
        Caption = 'Contract Code'
        DataBinding.FieldName = 'CONCODE'
      end
    end
    object grdTargetLevel1: TcxGridLevel
      GridView = gvwTarget
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmContracts.cdsGenContract
    Left = 240
    Top = 368
  end
  object dsSource: TDataSource
    DataSet = frmContracts.cdsContractSource
    Left = 304
    Top = 368
  end
  object dsTarget: TDataSource
    DataSet = frmContracts.cdsGenContractItem
    Left = 376
    Top = 368
  end
end
