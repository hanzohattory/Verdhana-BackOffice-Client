inherited frmActLedgerClass: TfrmActLedgerClass
  Caption = 'Account Ledger Class'
  ClientHeight = 315
  ClientWidth = 391
  ExplicitWidth = 397
  ExplicitHeight = 343
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 391
    Height = 73
    Align = alTop
    ExplicitHeight = 73
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'ALCLASSCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 68
      Top = 37
      DataBinding.DataField = 'ALCLASSDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 309
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
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 246
    Width = 391
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
    Top = 295
    Width = 391
  end
  inherited tabEditorData: TTabSet
    Top = 225
    Width = 391
  end
  object grdActLedgerClassDet: TcxGrid [4]
    Left = 0
    Top = 73
    Width = 391
    Height = 152
    Align = alClient
    TabOrder = 4
    ExplicitTop = 67
    object gvwActLedgerClassDet: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsActLedgerClassDet
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = frmInterestTables.BlueToggle
      object gvwActLedgerClassDetALTYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'ALTYPE'
        RepositoryItem = dmGlobal.luActLedgerType
        Width = 230
      end
      object gvwActLedgerClassDetCASH_STOCK: TcxGridDBColumn
        Caption = 'Cash / Stock'
        DataBinding.FieldName = 'CASH_STOCK'
        RepositoryItem = dmGlobal.luCashStock
        Width = 66
      end
    end
    object grdActLedgerClassDetLevel1: TcxGridLevel
      GridView = gvwActLedgerClassDet
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmActLedgerClassList.cdsActLedgerClass
    Left = 296
    Top = 248
  end
  object dsActLedgerClassDet: TDataSource
    DataSet = frmActLedgerClassList.cdsActLedgerClassDet
    Left = 376
    Top = 248
  end
end
